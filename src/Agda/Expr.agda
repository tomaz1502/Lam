module Expr where

open import Data.Bool using (if_then_else_; Bool; true; false; _∧_)
open import Data.List
open import Data.Maybe
open import Data.Nat using (ℕ; zero; suc; _<ᵇ_; _+_; _∸_; _≡ᵇ_)
open import Data.String using (String)
open import Data.Empty

Id : Set
Id = String

data Type : Set where
  U : Type
  _=>_ : Type → Type → Type

_==ᵗ_ : Type → Type → Bool
_==ᵗ_ U            U            = true
_==ᵗ_ (t₁₁ => t₁₂) (t₂₁ => t₂₂) = t₁₁ ==ᵗ t₂₁ ∧ t₁₂ ==ᵗ t₂₂
_==ᵗ_ _            _            = false

data Expr : Set where
  App : Expr → Expr → Expr
  Lam : Id → Type → Expr → Expr
  Var : ℕ → Expr

_==_ : Expr → Expr → Bool
_==_ (Var i) (Var j) = i ≡ᵇ j
_==_ (Lam _ _ e₁) (Lam _ _ e₂) = e₁ == e₂
_==_ (App e₁₁ e₁₂) (App e₂₁ e₂₂) = (e₁₁ == e₁₂) ∧ (e₂₁ == e₂₂)
_==_ _ _ = false

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

{-# TERMINATING #-}
eval : Expr → Expr
eval e =
  let e' = smallStep e
   in if e' == e then e' else eval e'

evalWithGas : ℕ → Expr → Expr
evalWithGas zero e = e
evalWithGas (suc gas) e =
  let e' = smallStep e
   in if e' == e then e' else evalWithGas gas e'

TypingContext : Set
TypingContext = List Type

emptyTypingContext : TypingContext
emptyTypingContext = []

lookup? : {A : Set} → ℕ → List A → Maybe A
lookup? zero (a ∷ _)     = just a
lookup? (suc i) (_ ∷ as) = lookup? i as
lookup? _ []             = nothing

typeCheck' : ℕ → TypingContext → Expr → Maybe Type
typeCheck' d ctx (Var i)      = lookup? i ctx
typeCheck' d ctx (Lam _ t e) =
  typeCheck' (d + 1) (t ∷ ctx) e >>= λ t' -> just (t => t')
typeCheck' d ctx (App e₁ e₂) with typeCheck' d ctx e₁
... | just (t₁₁ => t₁₂) =
  typeCheck' d ctx e₂ >>= λ t₂ -> if t₁₁ ==ᵗ t₂ then just t₁₂ else nothing
... | _ = nothing


typeCheck : Expr → Maybe Type
typeCheck = typeCheck' zero emptyTypingContext