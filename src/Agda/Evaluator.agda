module Evaluator where

open import Data.Bool using (if_then_else_)
open import Data.Nat  using (ℕ; suc; zero; _<ᵇ_; _≡ᵇ_; _+_; _∸_)

open import Defs
open import Utils

shiftUp' : ℕ → Expr → Expr
shiftUp' c (App e₁ e₂) = App (shiftUp' c e₁) (shiftUp' c e₂)
shiftUp' c (Lam n t e)   = Lam n t (shiftUp' (suc c) e)
shiftUp' c (Var x)     =
  if x <ᵇ c then Var x else Var (x + 1)

shiftUp : Expr → Expr
shiftUp = shiftUp' zero

shiftDown' : ℕ → Expr → Expr
shiftDown' c (App e₁ e₂) = App (shiftDown' c e₁) (shiftDown' c e₂)
shiftDown' c (Lam n t e)   = Lam n t (shiftDown' (suc c) e)
shiftDown' c (Var x)     =
  if x <ᵇ c then Var x else Var (x ∸ 1)

shiftDown : Expr → Expr
shiftDown = shiftDown' zero

substitute : ℕ → Expr → Expr → Expr
substitute i s (App e₁ e₂) = App (substitute i s e₁) (substitute i s e₂)
substitute i s (Lam n t e) = Lam n t (substitute (i + 1) (shiftUp s) e)
substitute i s (Var x) = if i ≡ᵇ x then s else Var x

smallStep : Expr → Expr
smallStep e@(Var _) = e
smallStep (Lam n t e) = Lam n t (smallStep e)
smallStep (App (Lam _ _ e) e₂) = shiftDown (substitute zero (shiftUp e₂) e)
smallStep (App e₁ e₂) =
  let e₁' = smallStep e₁
   in if e₁' == e₁ then App e₁ (smallStep e₂)
      else App e₁' e₂

{-# NON_TERMINATING #-}
eval : Expr → Expr
eval e =
  let e' = smallStep e
   in if e' == e then e' else eval e'

evalWithGas : ℕ → Expr → Expr
evalWithGas zero e = e
evalWithGas (suc gas) e =
  let e' = smallStep e
   in if e' == e then e' else evalWithGas gas e'
