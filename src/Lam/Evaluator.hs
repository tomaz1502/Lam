module Lam.Evaluator where

import Lam.Data (Expr(App, Lam, Var), Nat(S, Z))
import Lam.UtilsAgda (dec, eqExpr, eqNat, inc, ltNat)

shiftUp' :: Nat -> Expr -> Expr
shiftUp' c (App e₁ e₂) = App (shiftUp' c e₁) (shiftUp' c e₂)
shiftUp' c (Lam n t e) = Lam n t (shiftUp' (S c) e)
shiftUp' c (Var x) = if ltNat x c then Var x else Var (inc x)

shiftUp :: Expr -> Expr
shiftUp = shiftUp' Z

shiftDown' :: Nat -> Expr -> Expr
shiftDown' c (App e₁ e₂) = App (shiftDown' c e₁) (shiftDown' c e₂)
shiftDown' c (Lam n t e) = Lam n t (shiftDown' (S c) e)
shiftDown' c (Var x) = if ltNat x c then Var x else Var (dec x)

shiftDown :: Expr -> Expr
shiftDown = shiftDown' Z

substitute :: Nat -> Expr -> Expr -> Expr
substitute i s (App e₁ e₂)
  = App (substitute i s e₁) (substitute i s e₂)
substitute i s (Lam n t e)
  = Lam n t (substitute (S i) (shiftUp s) e)
substitute i s (Var x) = if eqNat i x then s else Var x

smallStep :: Expr -> Expr
smallStep (Var x) = Var x
smallStep (Lam n t e) = Lam n t (smallStep e)
smallStep (App (Lam _ _ e) e₂)
  = shiftDown (substitute Z (shiftUp e₂) e)
smallStep (App e₁ e₂)
  = if eqExpr (smallStep e₁) e₁ then App e₁ (smallStep e₂) else
      App (smallStep e₁) e₂

eval :: Expr -> Expr
eval e
  = if eqExpr (smallStep e) e then smallStep e else
      eval (smallStep e)

