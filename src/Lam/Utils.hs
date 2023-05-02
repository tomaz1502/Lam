{-# LANGUAGE InstanceSigs #-}
{-# LANGUAGE OverloadedStrings #-}

module Lam.Utils where

import Lam.Context
import Lam.Expr
import Lam.Parser (parseRawExpr)

import Data.List (elemIndex)
import Data.Map qualified as M
import Data.Text qualified as T

instance Show Type where
    show U = "U"
    show (Arrow t1 t2) = concat [ "("
                                , show t1
                                , ")"
                                , " => "
                                , show t2
                                ]

expandType :: GlobalContext -> RawType -> Either T.Text Type
expandType _ RawU = Right U
expandType gctx (RawArrow t1 t2) =
    expandType gctx t1 >>= \t1' ->
    expandType gctx t2 >>= \t2' ->
    Right (Arrow t1' t2')
expandType gctx (FreeType s) =
    case M.lookup s (boundTypes gctx) of
      Just t  -> Right t
      Nothing -> Left $ T.append "free type: " s

instance Eq Expr where -- if we derive we don't get alpha equivalence
  (==) :: Expr -> Expr -> Bool
  (==) (Var i) (Var j) = i == j
  (==) (Lam _ _ e1') (Lam _ _ e2') = e1' == e2'
  (==) (App e11 e12) (App e21 e22) = e11 == e21 && e12 == e22
  (==) _ _ = False

instance Show Expr where
    show = T.unpack . typedPrettyPrint

-- print respecting Lam's syntax
prettyPrint :: Bool -> Expr -> T.Text
prettyPrint = go []
  where go :: LocalContext -> Bool -> Expr -> T.Text
        go ctx _ (Var i) = ctx !! (fromInteger i)
        go ctx untyped (Lam n ty e) =
            let freshName = pickFresh ctx n
             in T.unwords $ [ "lam"
                            , freshName
                            ] ++
                            -- show types depending on the parameter
                            [T.append ":: " (T.pack (show ty)) | not untyped] ++
                            [ "->"
                            , go (freshName : ctx) untyped e
                            ]
        go ctx untyped (App e1 e2) =
          let f e@(Var _) = go ctx untyped e
              f e         = T.concat ["(", go ctx untyped e, ")"]
           in T.unwords [f e1, ".", f e2]

untypedPrettyPrint, typedPrettyPrint :: Expr -> T.Text
untypedPrettyPrint = prettyPrint True
typedPrettyPrint   = prettyPrint False

eraseNames :: GlobalContext -> RawExpr -> Either T.Text Expr
eraseNames = go []
  where
    go lctx gctx (RawVar s) =
      case elemIndex s lctx of
        Just i  -> Right $ Var (toInteger i)
        Nothing -> case M.lookup s (boundExprs gctx) of
                     Just e  -> Right e
                     Nothing -> Left $ "free variable: " <> s
    go lctx gctx (RawApp e1 e2) =
        go lctx gctx e1 >>= \e1' ->
        go lctx gctx e2 >>= \e2' ->
        Right $ App e1' e2'
    go lctx gctx (RawLam s ty e) =
        go (s : lctx) gctx e >>= \e' ->
        expandType gctx ty >>= \ty' ->
        Right $ Lam s ty' e'

parseUntypedExpr :: String -> Either T.Text Expr
parseUntypedExpr = eraseNames emptyContext . parseRawExpr True

parseTypedExpr :: String -> Either T.Text Expr
parseTypedExpr = eraseNames emptyContext . parseRawExpr False
