module Utils where

open import Data.Bool        using (if_then_else_; Bool; true; false; _∧_)
open import Data.Empty       using (⊥-elim)
open import Data.Fin.Base    using (fromℕ<)
open import Data.List
open import Data.Maybe
open import Data.Nat         using (_≡ᵇ_; _<_; ℕ; zero; suc)
open import Data.Product     using (_×_) renaming (_,_ to ⟨_,_⟩)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂)
open Relation.Binary.PropositionalEquality.≡-Reasoning
open import Relation.Nullary using (¬_)

open import Defs

_==ᵗ_ : Type → Type → Bool
_==ᵗ_ U            U           = true
_==ᵗ_ (t₁₁ ⇒ t₁₂)  (t₂₁ ⇒ t₂₂) = t₁₁ ==ᵗ t₂₁ ∧ t₁₂ ==ᵗ t₂₂
_==ᵗ_ _            _           = false

_==_ : Expr → Expr → Bool
_==_ (Var i)       (Var j)       = i ≡ᵇ j
_==_ (Lam _ _ e₁)  (Lam _ _ e₂)  = e₁ == e₂
_==_ (App e₁₁ e₁₂) (App e₂₁ e₂₂) = (e₁₁ == e₁₂) ∧ (e₂₁ == e₂₂)
_==_ _             _             = false

lookup? : {A : Set} → ℕ → List A → Maybe A
lookup? _ []             = nothing
lookup? zero (a ∷ _)     = just a
lookup? (suc i) (_ ∷ as) = lookup? i as

lookup≡ : {A : Set} {i : ℕ} {l : List A} → (h : i < length l) → (lookup? i l) ≡ just (lookup l (fromℕ< h))
lookup≡ {A} {zero}  {x ∷ l} h = _≡_.refl
lookup≡ {A} {suc i} {x ∷ l} h = lookup≡ {A} {i} {l} (Data.Nat.≤-pred h)

==ᵗ-refl : (t : Type) → t ==ᵗ t ≡ true
==ᵗ-refl U = refl
==ᵗ-refl (dom ⇒ codom) = begin
    (dom ⇒ codom) ==ᵗ (dom ⇒ codom)
  ≡⟨⟩
    dom ==ᵗ dom ∧ codom ==ᵗ codom
  ≡⟨ cong (λ x → x ∧ codom ==ᵗ codom) (==ᵗ-refl dom) ⟩
    true ∧ codom ==ᵗ codom
  ≡⟨ cong (λ x → true ∧ x) (==ᵗ-refl codom) ⟩
    true ∧ true
  ≡⟨⟩
    true
  ∎

injection-maybe : ∀ {A : Set} {a : A} → ¬ (nothing ≡ just a)
injection-maybe = λ ()

lookup?< : {A : Set} {l : List A} {i : ℕ} {a : A} → lookup? i l ≡ just a → i < length l
lookup?< {_} {[]} {_} {_} eq    = ⊥-elim (injection-maybe eq)
lookup?< {A} {x ∷ l} {zero} eq  = Data.Nat.s≤s Data.Nat.z≤n
lookup?< {A} {x ∷ l} {suc i} eq = Data.Nat.s≤s (lookup?< {A} {l} {i} eq)

iteAbs : {A : Set} {x y z : A} {b : Bool} →
        ¬ y ≡ z → (if b then x else y) ≡ z → b ≡ true × x ≡ z
iteAbs {A} {x} {y} {z} {false} h₁ h₂ = ⊥-elim (h₁ h₂)
iteAbs {A} {x} {y} {z} {true} h₁ h₂ = ⟨ refl , h₂ ⟩

∧to× : {a b : Bool} → a ∧ b ≡ true → a ≡ true × b ≡ true
∧to× {true} {true} h = ⟨ refl , refl ⟩

==ᵗto≡ : {t₁ t₂ : Type} → t₁ ==ᵗ t₂ ≡ true → t₁ ≡ t₂
==ᵗto≡ {U} {U} h = refl
==ᵗto≡ {t ⇒ t₁} {t' ⇒ t''} h with ∧to× h
... | ⟨ t==t' , t₁==t'' ⟩ = cong₂ (_⇒_) (==ᵗto≡ t==t') (==ᵗto≡ t₁==t'')
