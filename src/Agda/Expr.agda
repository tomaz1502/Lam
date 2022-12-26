module Expr where

open import Data.Bool using (if_then_else_; Bool; true; false; _∧_)
open import Data.List
open import Data.Maybe
open import Data.Nat using (ℕ; zero; suc; _<ᵇ_; _<_; _+_; _∸_; _≡ᵇ_)
open import Data.String using (String)
open import Data.Empty
open import Data.Fin.Base using (Fin; toℕ; fromℕ<)
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; sym; trans; refl)
open Eq.≡-Reasoning
open import Data.Maybe.Properties using (just-injective)

open import Relation.Nullary using (¬_)

Id : Set
Id = String

data Type : Set where
  U : Type
  _⇒_ : Type → Type → Type

_==ᵗ_ : Type → Type → Bool
_==ᵗ_ U            U            = true
_==ᵗ_ (t₁₁ ⇒ t₁₂) (t₂₁ ⇒ t₂₂) = t₁₁ ==ᵗ t₂₁ ∧ t₁₂ ==ᵗ t₂₂
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
lookup? _ []             = nothing
lookup? zero (a ∷ _)     = just a
lookup? (suc i) (_ ∷ as) = lookup? i as

lookup≡ : {A : Set} {i : ℕ} {l : List A} → (h : i < length l) → (lookup? i l) ≡ just (lookup l (fromℕ< h))
lookup≡ {A} {zero}  {x ∷ l} h = _≡_.refl
lookup≡ {A} {suc i} {x ∷ l} h = lookup≡ {A} {i} {l} (Data.Nat.≤-pred h)

typeCheck : TypingContext → Expr → Maybe Type
typeCheck Γ (Var i)      = lookup? i Γ
typeCheck Γ (Lam _ t e) =
  typeCheck (t ∷ Γ) e >>= λ t' -> just (t ⇒ t')
typeCheck Γ (App e₁ e₂) with typeCheck Γ e₁
... | just (t₁₁ ⇒ t₁₂) =
  typeCheck Γ e₂ >>= λ t₂ -> if t₁₁ ==ᵗ t₂ then just t₁₂ else nothing
... | _ = nothing

data _⊢_∶_ : TypingContext → Expr → Type → Set where
  ⊢v : ∀ {Γ : TypingContext} {i : ℕ} {h : i < length Γ}
    → Γ ⊢ Var i ∶ (lookup Γ (fromℕ< h))

  ⊢l : ∀ {Γ : TypingContext} {name : Id} {body : Expr} {dom codom : Type}
    → (dom ∷ Γ) ⊢ body ∶ codom
    → Γ ⊢ (Lam name dom body) ∶ (dom ⇒ codom)

  ⊢a : ∀ {Γ : TypingContext} {f x : Expr} {dom codom : Type}
    → Γ ⊢ f ∶ (dom ⇒ codom)
    → Γ ⊢ x ∶ dom
    → Γ ⊢ App f x ∶ codom

==ᵗ-refl : (t : Type) → t ==ᵗ t ≡ true
==ᵗ-refl U = refl
==ᵗ-refl (dom ⇒ codom) = begin
    (dom ⇒ codom) ==ᵗ (dom ⇒ codom)
  ≡⟨⟩
    dom ==ᵗ dom ∧ codom ==ᵗ codom
  ≡⟨ Eq.cong (λ x → x ∧ codom ==ᵗ codom) (==ᵗ-refl dom) ⟩
    true ∧ codom ==ᵗ codom
  ≡⟨ Eq.cong (λ x → true ∧ x) (==ᵗ-refl codom) ⟩
    true ∧ true
  ≡⟨⟩
    true
  ∎

to : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → Γ ⊢ e ∶ t → typeCheck Γ e ≡ just t
to (⊢v {Γ} {i} {h}) = lookup≡ {Type} {i} {Γ}  h
to {Γ} {Lam name dom body} {dom ⇒ codom}  (⊢l {Γ} {name} {body} {dom} {codom} wt) = begin
    typeCheck Γ (Lam name dom body)
  ≡⟨⟩
    (typeCheck (dom ∷ Γ) body >>= (λ t' → just (dom ⇒ t')))
  ≡⟨ Eq.cong (λ x → x >>= (λ t' → just (dom ⇒ t'))) (to {dom ∷ Γ} {body} {codom} wt) ⟩
    ((just codom >>= (λ t' → just (dom ⇒ t'))))
  ≡⟨⟩
    just (dom ⇒ codom)
  ∎
to {Γ} {App f x} {codom} (⊢a {Γ} {f} {x} {dom} {codom} wt₁ wt₂)
  rewrite to {Γ} {f} {dom ⇒ codom} wt₁ | to {Γ} {x} {dom} wt₂ | ==ᵗ-refl dom = refl

lookup?< : {A : Set} {l : List A} {i : ℕ} {a : A} → lookup? i l ≡ just a → i < length l
lookup?< {A} {[]} {i} {a} eq    =
 let f : ¬ (nothing ≡ just a)
     f = λ ()
  in ⊥-elim (f eq)
lookup?< {A} {x ∷ l} {zero} eq  = Data.Nat.s≤s Data.Nat.z≤n
lookup?< {A} {x ∷ l} {suc i} eq = Data.Nat.s≤s (lookup?< {A} {l} {i} eq)

from : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → typeCheck Γ e ≡ just t → Γ ⊢ e ∶ t
from {Γ} {App e e₁} {t} eq   = {!!}
from {Γ} {Lam x x₁ e} {t} eq = {!!}
from {Γ} {Var x} {t} eq
  rewrite just-injective (trans (sym eq) (lookup≡ {Type} {x} {Γ} (lookup?< {Type} {Γ} {x} eq))) = ⊢v
