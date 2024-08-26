{-# LANGUAGE OverloadedStrings #-}

module Lam.Context where

import Lam.Data
import Lam.Parser (parseRawExpr)
import Lam.Utils (toNat)

import Data.List (elemIndex)
import Data.Map qualified as M

data GlobalContext = GlobalContext
    { boundTypes :: M.Map String TypeL
    , boundExprs :: M.Map String Expr
    }

emptyContext :: GlobalContext
emptyContext = GlobalContext M.empty M.empty

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
