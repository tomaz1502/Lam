module Lam.UtilsAgda where

import Lam.Data (Expr(App, Lam, Number, Prim, Var), Nat(S, Z), Type(Arrow, NatT, U))

eqNat :: Nat -> Nat -> Bool
eqNat Z Z = True
eqNat (S x) (S y) = eqNat x y
eqNat _ _ = False

ltNat :: Nat -> Nat -> Bool
ltNat (S x) (S y) = ltNat x y
ltNat Z _ = True
ltNat (S _) Z = False

inc :: Nat -> Nat
inc = S

dec :: Nat -> Nat
dec Z = Z
dec (S x) = x

eqType :: Type -> Type -> Bool
eqType NatT NatT = True
eqType U U = True
eqType (Arrow t11 t12) (Arrow t21 t22)
  = eqType t11 t21 && eqType t12 t22
eqType _ _ = False

eqExpr :: Expr -> Expr -> Bool
eqExpr (Prim p1) (Prim p2) = eqNat p1 p2
eqExpr (Number z1) (Number z2) = z1 == z2
eqExpr (Var i) (Var j) = eqNat i j
eqExpr (Lam _ _ e1) (Lam _ _ e2) = eqExpr e1 e2
eqExpr (App e11 e12) (App e21 e22)
  = eqExpr e11 e21 && eqExpr e12 e22
eqExpr _ _ = False

lookupMaybe :: Nat -> [t] -> Maybe t
lookupMaybe _ [] = Nothing
lookupMaybe Z (h : _) = Just h
lookupMaybe (S i) (_ : t) = lookupMaybe i t

