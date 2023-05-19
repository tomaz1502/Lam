module Lam.Evaluator where

open import Haskell.Prelude using (if_then_else_)

open import Lam.Data
open import Lam.UtilsAgda

shiftUp' : Nat → Expr → Expr
shiftUp' c (App e₁ e₂) = App (shiftUp' c e₁) (shiftUp' c e₂)
shiftUp' c (Lam n t e)   = Lam n t (shiftUp' (S c) e)
shiftUp' c (Var x)     =
  if ltNat x c then Var x else Var (inc x)

{-# COMPILE AGDA2HS shiftUp' #-}

shiftUp : Expr → Expr
shiftUp = shiftUp' Z

{-# COMPILE AGDA2HS shiftUp #-}

shiftDown' : Nat → Expr → Expr
shiftDown' c (App e₁ e₂) = App (shiftDown' c e₁) (shiftDown' c e₂)
shiftDown' c (Lam n t e)   = Lam n t (shiftDown' (S c) e)
shiftDown' c (Var x)     =
  if ltNat x c then Var x else Var (dec x)

{-# COMPILE AGDA2HS shiftDown' #-}

shiftDown : Expr → Expr
shiftDown = shiftDown' Z

{-# COMPILE AGDA2HS shiftDown #-}

substitute : Nat → Expr → Expr → Expr
substitute i s (App e₁ e₂) = App (substitute i s e₁) (substitute i s e₂)
substitute i s (Lam n t e) = Lam n t (substitute (S i) (shiftUp s) e)
substitute i s (Var x) = if eqNat i x then s else Var x

{-# COMPILE AGDA2HS substitute #-}

smallStep : Expr → Expr
smallStep (Var x) = Var x
smallStep (Lam n t e) = Lam n t (smallStep e)
smallStep (App (Lam _ _ e) e₂) = shiftDown (substitute Z (shiftUp e₂) e)
smallStep (App e₁ e₂) =
  let e₁' = smallStep e₁
   in if eqExpr e₁' e₁ then App e₁ (smallStep e₂)
      else App e₁' e₂

{-# COMPILE AGDA2HS smallStep #-}

{-# NON_TERMINATING #-}
eval : Expr → Expr
eval e =
  let e' = smallStep e
   in if eqExpr e' e then e' else eval e'

{-# COMPILE AGDA2HS eval #-}

evalWithGas : Nat → Expr → Expr
evalWithGas Z e = e
evalWithGas (S gas) e =
  let e' = smallStep e
   in if eqExpr e' e then e' else evalWithGas gas e'
