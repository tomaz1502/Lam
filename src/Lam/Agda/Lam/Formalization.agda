module Lam.Formalization where

open import Data.Empty            using (⊥-elim)
open import Data.Fin.Base         using (fromℕ<)
open import Data.List
open import Data.Nat              using (ℕ; _<_)
open import Data.Product          using (_×_) renaming (_,_ to ⟨_,_⟩)
open import Function.Base         using (id)
open import Relation.Binary.PropositionalEquality using
  (_≡_; refl; sym; trans; cong; subst)
open Relation.Binary.PropositionalEquality.≡-Reasoning

open import Haskell.Prelude using
  (Maybe; Just; Nothing; _>>=_; case_of_; if_then_else_; injective; maybe)

open import Lam.Data
open import Lam.TypeChecker
open import Lam.UtilsAgda

data _⊢_∶_ : TypingContext → Expr → Type → Set where
  ⊢v : ∀ {Γ : TypingContext} {i : Nat} {h : (natToℕ i) < length Γ}
    → Γ ⊢ Var i ∶ (lookup Γ (fromℕ< h))

  ⊢l : ∀ {Γ : TypingContext} {name : Id} {body : Expr} {dom codom : Type}
    → (dom ∷ Γ) ⊢ body ∶ codom
    → Γ ⊢ (Lam name dom body) ∶ (Arrow dom codom)

  ⊢a : ∀ {Γ : TypingContext} {f x : Expr} {dom codom : Type}
    → Γ ⊢ f ∶ (Arrow dom codom)
    → Γ ⊢ x ∶ dom
    → Γ ⊢ App f x ∶ codom

to : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → Γ ⊢ e ∶ t → typeCheck Γ e ≡ Just t
to (⊢v {Γ} {i} {h}) = lookup≡ {Type} {i} {Γ}  h
to {Γ} {Lam name dom body} {Arrow dom codom}  (⊢l {Γ} {name} {body} {dom} {codom} wt) = begin
    typeCheck Γ (Lam name dom body)
  ≡⟨⟩
    (typeCheck (dom ∷ Γ) body >>= (λ t' → Just (Arrow dom t')))
  ≡⟨ cong (λ x → x >>= (λ t' → Just (Arrow dom t'))) (to {dom ∷ Γ} {body} {codom} wt) ⟩
    ((Just codom >>= (λ t' → Just (Arrow dom t'))))
  ≡⟨⟩
    Just (Arrow dom codom)
  ∎
to {Γ} {App f x} {codom} (⊢a {Γ} {f} {x} {dom} {codom} wt₁ wt₂)
  rewrite to {Γ} {f} {Arrow dom codom} wt₁ | to {Γ} {x} {dom} wt₂ | eqType-refl dom = refl

from : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → typeCheck Γ e ≡ Just t → Γ ⊢ e ∶ t
from {Γ} {App e₁ e₂} {t} eq with typeCheck Γ e₁ in te₁
... | Just U = ⊥-elim (injection-maybe eq)
... | Just (Arrow t₁ t₂) with typeCheck Γ e₂ in te₂
... | Just t₃ with iteAbs (λ()) eq
...   | ⟨ p1 , p2 ⟩ =
         let w = cong (λ x -> Γ ⊢ e₁ ∶ (Arrow t₁ x)) (injective p2)
             p = cong (λ x -> Γ ⊢ e₂ ∶ x) (sym (==ᵗto≡ p1))
             k = subst id w (from te₁)
             l = subst id p (from te₂)
          in ⊢a k l
from {Γ} {Lam x t' e₁} {t} eq with typeCheck (t' ∷ Γ) e₁ in te
... | Just t'' rewrite (sym (injective eq)) = ⊢l (from {t' ∷ Γ} {e₁} {t''} te)
... | Nothing = ⊥-elim (injection-maybe eq)
from {Γ} {Var x} {t} eq
  rewrite injective (trans (sym eq) (lookup≡ {Type} {x} {Γ} (lookup?< {Type} {Γ} {x} eq))) = ⊢v
