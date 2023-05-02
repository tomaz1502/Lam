module TypeChecker where

open import Data.Bool using (if_then_else_)
open import Data.List
open import Data.Maybe

open import Defs
open import Utils

TypingContext : Set
TypingContext = List Type

emptyTypingContext : TypingContext
emptyTypingContext = []

typeCheck : TypingContext → Expr → Maybe Type
typeCheck Γ (Var i)      = lookup? i Γ
typeCheck Γ (Lam _ t e) =
  typeCheck (t ∷ Γ) e >>= λ t' -> just (t ⇒ t')
typeCheck Γ (App e₁ e₂) with typeCheck Γ e₁
... | just (t₁₁ ⇒ t₁₂) =
  typeCheck Γ e₂ >>= λ t₂ -> if t₁₁ ==ᵗ t₂ then just t₁₂ else nothing
... | _ = nothing

