{-# LANGUAGE InstanceSigs #-}
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

instance Show Type where
    show BoolT = "Bool"
    show IntT = "Int"
    show U = "U"
    show (Arrow t1 t2) = concat [ "("
                                , show t1
                                , ")"
                                , " => "
                                , show t2
                                ]

expandType :: GlobalContext -> RawType -> Either String Type
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

instance Eq Expr where -- if we derive we don't get alpha equivalence
  (==) :: Expr -> Expr -> Bool
  (==) (Var i) (Var j) = i == j
  (==) (Lam _ _ e1') (Lam _ _ e2') = e1' == e2'
  (==) (App e11 e12) (App e21 e22) = e11 == e21 && e12 == e22
  (==) _ _ = False

instance Show Expr where
    show = typedPrettyPrint

-- print respecting Lam's syntax
prettyPrint :: Bool -> Expr -> String
prettyPrint = go []
  where go :: LocalContext -> Bool -> Expr -> String
        go ctx _ (Prim Z) = "Plus"
        go ctx _ (Prim (S Z)) = "Minus"
        go ctx _ (Prim (S (S Z))) = "Mult"
        go ctx _ (Prim _) = error "[prettyPrint]: Primitive not implemented"
        go ctx _ (NumVal z) = show z
        go ctx _ (BoolVal True) = "true"
        go ctx _ (BoolVal False) = "false"
        go ctx _ (Var i) = fromJust $ lookupMaybe i ctx
        go ctx isUntyped (Lam n ty e) =
            let freshName = pickFresh ctx n
             in unwords $ [ "lam"
                          , freshName
                          ] ++
                          -- show types depending on the parameter
                          [":: " <> show ty | not isUntyped] ++
                          [ "->"
                          , go (freshName : ctx) isUntyped e
                          ]
        go ctx isUntyped (App e1 e2) =
          let f e@(Var _) = go ctx isUntyped e
              f e         = concat ["(", go ctx isUntyped e, ")"]
           in unwords [f e1, ".", f e2]

untypedPrettyPrint, typedPrettyPrint :: Expr -> String
untypedPrettyPrint = prettyPrint True
typedPrettyPrint   = prettyPrint False

eraseNames :: GlobalContext -> RawExpr -> Either String Expr
eraseNames = go []
  where
    go lctx gctx (RawPrim s) = Right (Prim s)
    go lctx gctx (RawNumVal z) = Right (NumVal z)
    go lctx gctx (RawBoolVal b) = Right (BoolVal b)
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

printAST :: Expr -> String
printAST (App e1 e2)     = "App (" ++ printAST e1 ++ ") (" ++ printAST e2 ++ ")"
printAST (Lam s t e)     = "Lam " ++ s ++ "(" ++ printAST e ++ ")"
printAST (Var i)         = "Var " ++ show i
printAST (NumVal n)      = "NumVal " ++ show n
printAST (BoolVal True)  = "BoolVal true"
printAST (BoolVal False) = "BoolVal false"
printAST (Prim p)        = "Prim " ++ show p

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
