module Lam.Evaluator where

import Lam.Data (Expr(App, Lam, Var), Nat(S, Z))
import Lam.UtilsAgda (dec, eqExpr, eqNat, inc, ltNat)

shiftUp' :: Nat -> Expr -> Expr
shiftUp' c (App e1 e2) = App (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (Lam n t e) = Lam n t (shiftUp' (S c) e)
shiftUp' c (Var x) = if ltNat x c then Var x else Var (inc x)

shiftUp :: Expr -> Expr
shiftUp = shiftUp' Z

shiftDown' :: Nat -> Expr -> Expr
shiftDown' c (App e1 e2) = App (shiftDown' c e1) (shiftDown' c e2)
shiftDown' c (Lam n t e) = Lam n t (shiftDown' (S c) e)
shiftDown' c (Var x) = if ltNat x c then Var x else Var (dec x)

shiftDown :: Expr -> Expr
shiftDown = shiftDown' Z

substitute :: Nat -> Expr -> Expr -> Expr
substitute i s (App e1 e2)
  = App (substitute i s e1) (substitute i s e2)
substitute i s (Lam n t e)
  = Lam n t (substitute (S i) (shiftUp s) e)
substitute i s (Var x) = if eqNat i x then s else Var x

smallStep :: Expr -> Expr
smallStep (Var x) = Var x
smallStep (Lam n t e) = Lam n t (smallStep e)
smallStep (App (Lam _ _ e) e₂)
  = shiftDown (substitute Z (shiftUp e₂) e)
smallStep (App e1 e2)
  = if eqExpr e1' e1 then App e1 (smallStep e2) else App e1' e2
  where
    e1' :: Expr
    e1' = smallStep e1

eval :: Expr -> Expr
eval e = if eqExpr e' e then e' else eval e'
  where
    e' :: Expr
    e' = smallStep e

