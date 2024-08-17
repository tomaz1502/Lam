{-# LANGUAGE OverloadedStrings #-}

module Lam.Utils where

import Lam.Context
import Lam.Data
import Lam.Parser (parseRawExpr)
import Lam.UtilsAgda

import Data.List (elemIndex)
import Data.Map qualified as M
import Data.Maybe (fromJust)

import System.IO (hFlush, stdout)

-- this must be here since we don't have access to Int in Agda
toNat :: Int -> Nat
toNat i =
  case compare i 0 of
    GT -> S (toNat (i - 1))
    EQ -> Z
    LT -> error "[toNat]: negative input"


prettyPrintType :: TypeL -> String
prettyPrintType BoolT = "Bool"
prettyPrintType IntT = "Int"
prettyPrintType U = "U"
prettyPrintType (Arrow t1 t2) = concat [ "("
                            , prettyPrintType t1
                            , ")"
                            , " => "
                            , prettyPrintType t2
                            ]

expandType :: GlobalContext -> RawTypeL -> Either String TypeL
expandType _ RawBoolT = Right BoolT
expandType _ RawIntT = Right IntT
expandType _ RawU = Right U
expandType gctx (RawArrow t1 t2) =
    expandType gctx t1 >>= \t1' ->
    expandType gctx t2 >>= \t2' ->
    Right (Arrow t1' t2')
expandType gctx (FreeType s) =
    case M.lookup s (boundTypes gctx) of
      Just t  -> Right t
      Nothing -> Left $ "free type: " <> s

-- print respecting Lam's syntax
prettyPrint :: Bool -> Expr -> String
prettyPrint = go []
  where ppBinOp Add = "+"
        ppBinOp Sub = "-"
        ppBinOp Mul = "*"
        ppBinOp And = "&&"
        ppBinOp Or = "||"
        ppUnOp Not = "!"
        go :: LocalContext -> Bool -> Expr -> String
        go ctx isUntyped (Ite b t e) = unwords
          ["(", "if", go ctx isUntyped b, "then", go ctx isUntyped t, "else", go ctx isUntyped e, ")"]
        go ctx isUntyped (BinOp op e1 e2)     = unwords
          ["(", go ctx isUntyped e1, ppBinOp op, go ctx isUntyped e2, ")"]
        go ctx isUntyped (UnaryOp op e)   = unwords
          ["(", ppUnOp op, go ctx isUntyped e, ")"]
        go _ _ (Const (NumC z))      = show z
        go _ _ (Const (BoolC True))  = "true"
        go _ _ (Const (BoolC False)) = "false"
        go ctx _ (Var i) = fromJust $ lookupMaybe i ctx
        go ctx isUntyped (Lam n ty e) =
            let freshName = pickFresh ctx n
             in unwords $ [ "("
                          , "lam"
                          , freshName
                          ] ++
                          -- show types depending on the parameter
                          [":: " <> prettyPrintType ty | not isUntyped] ++
                          [ "->"
                          , go (freshName : ctx) isUntyped e
                          , ")"
                          ]
        go ctx isUntyped (App e1 e2) =
           let f = go ctx isUntyped
           in unwords ["(", f e1, ".", f e2, ")"]

untypedPrettyPrint, typedPrettyPrint :: Expr -> String
untypedPrettyPrint = prettyPrint True
typedPrettyPrint   = prettyPrint False

eraseNames :: GlobalContext -> RawExpr -> Either String Expr
eraseNames = go []
  where
    go lctx gctx (RawIte b t e) =
      go lctx gctx b >>= \b' ->
      go lctx gctx t >>= \t' ->
      go lctx gctx e >>= \e' ->
      Right (Ite b' t' e')
    go lctx gctx (RawBinOp o e1 e2) =
      go lctx gctx e1 >>= \e1' ->
      go lctx gctx e2 >>= \e2' ->
      Right (BinOp o e1' e2')
    go lctx gctx (RawUnOp o e) =
      go lctx gctx e >>= \e' ->
      Right (UnaryOp o e')
    go lctx gctx (RawVar s) =
      case elemIndex s lctx of
        Just i  -> Right $ Var (toNat i)
        Nothing -> case M.lookup s (boundExprs gctx) of
                     Just e  -> Right e
                     Nothing -> Left $ "Free variable: " <> s <> "."
    go lctx gctx (RawApp e1 e2) =
        go lctx gctx e1 >>= \e1' ->
        go lctx gctx e2 >>= \e2' ->
        Right $ App e1' e2'
    go lctx gctx (RawLam s ty e) =
        go (s : lctx) gctx e >>= \e' ->
        expandType gctx ty >>= \ty' ->
        Right $ Lam s ty' e'
    go _ _ (RawConst c) = Right (Const c)

parseUntypedExpr :: String -> Either String Expr
parseUntypedExpr str =
    parseRawExpr True str >>= eraseNames emptyContext

parseTypedExpr :: String -> Either String Expr
parseTypedExpr str =
    parseRawExpr False str >>= eraseNames emptyContext

putStrLnFlush :: String -> IO ()
putStrLnFlush str =
    putStrLn str >> hFlush stdout

putStrFlush :: String -> IO ()
putStrFlush str =
    putStr str >> hFlush stdout
