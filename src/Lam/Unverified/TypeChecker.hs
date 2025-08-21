{-# LANGUAGE LambdaCase #-}
module Lam.TypeChecker where

import Lam.Data (BinOpT(Add, And, LtInt, MkPair, Mul, Or, Sub), ConstT(BoolC, NumC), Expr(App, BinOp, Case, Const, Fix, Inl, Inr, Ite, Lam, UnaryOp, Var), TypeL(Arrow, BoolT, IntT, Prod, Sum), UnaryOpT(Not, Proj1, Proj2))
import Lam.Nat (lookupMaybe)
import Lam.UtilsAgda (myCaseOf)

type TypingContext = [TypeL]

emptyTypingContext :: TypingContext
emptyTypingContext = []

typeCheck' :: TypingContext -> Expr -> Maybe TypeL
typeCheck' gam (Ite b t e)
  = typeCheck' gam b >>=
      \case
          BoolT -> do tt <- typeCheck' gam t
                      te <- typeCheck' gam e
                      if tt == te then Just tt else Nothing
          _ -> Nothing
typeCheck' _ (Const (NumC _)) = Just IntT
typeCheck' _ (Const (BoolC _)) = Just BoolT
typeCheck' gam (Var i) = lookupMaybe i gam
typeCheck' gam (Lam _ t e)
  = do t' <- typeCheck' (t : gam) e
       Just (Arrow t t')
typeCheck' gam (App e1 e2)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just (Arrow t11 t12) -> do t2 <- typeCheck' gam e2
                                      if t11 == t2 then Just t12 else Nothing
           _ -> Nothing)
typeCheck' gam (BinOp Add e1 e2)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just IntT -> myCaseOf (typeCheck' gam e2)
                          (\case
                               Just IntT -> Just IntT
                               _ -> Nothing)
           _ -> Nothing)
typeCheck' gam (BinOp Sub e1 e2)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just IntT -> myCaseOf (typeCheck' gam e2)
                          (\case
                               Just IntT -> Just IntT
                               _ -> Nothing)
           _ -> Nothing)
typeCheck' gam (BinOp Mul e1 e2)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just IntT -> myCaseOf (typeCheck' gam e2)
                          (\case
                               Just IntT -> Just IntT
                               _ -> Nothing)
           _ -> Nothing)
typeCheck' gam (BinOp LtInt e1 e2)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just IntT -> myCaseOf (typeCheck' gam e2)
                          (\case
                               Just IntT -> Just BoolT
                               _ -> Nothing)
           _ -> Nothing)
typeCheck' gam (BinOp And e1 e2)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just BoolT -> myCaseOf (typeCheck' gam e2)
                           (\case
                                Just BoolT -> Just BoolT
                                _ -> Nothing)
           _ -> Nothing)
typeCheck' gam (BinOp Or e1 e2)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just BoolT -> myCaseOf (typeCheck' gam e2)
                           (\case
                                Just BoolT -> Just BoolT
                                _ -> Nothing)
           _ -> Nothing)
typeCheck' gam (UnaryOp Not e)
  = myCaseOf (typeCheck' gam e)
      (\case
           Just BoolT -> Just BoolT
           _ -> Nothing)
typeCheck' gam (UnaryOp Proj1 e)
  = myCaseOf (typeCheck' gam e)
      (\case
           Just (Prod t1 _) -> Just t1
           _ -> Nothing)
typeCheck' gam (UnaryOp Proj2 e)
  = myCaseOf (typeCheck' gam e)
      (\case
           Just (Prod _ t2) -> Just t2
           _ -> Nothing)
typeCheck' gam (BinOp MkPair e1 e2)
  = do t1 <- typeCheck' gam e1
       t2 <- typeCheck' gam e2
       Just (Prod t1 t2)
typeCheck' gam (Inl e t)
  = myCaseOf t
      (\case
           Sum tl tr -> do te <- typeCheck' gam e
                           if tl == te then Just (Sum tl tr) else Nothing
           _ -> Nothing)
typeCheck' gam (Inr e t)
  = myCaseOf t
      (\case
           Sum tl tr -> do te <- typeCheck' gam e
                           if tr == te then Just (Sum tl tr) else Nothing
           _ -> Nothing)
typeCheck' gam (Case e1 _ e2 _ e3)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just (Sum tl tr) -> do t2 <- typeCheck' (tl : gam) e2
                                  t3 <- typeCheck' (tr : gam) e3
                                  if t2 == t3 then Just t2 else Nothing
           _ -> Nothing)
typeCheck' gam (Fix e)
  = myCaseOf (typeCheck' gam e)
      (\case
           Just (Arrow te1 te2) -> if te1 == te2 then Just te1 else Nothing
           _ -> Nothing)

typeCheck :: Expr -> Maybe TypeL
typeCheck = typeCheck' []

