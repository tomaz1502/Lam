-- NOTE: Consider the type of subst as: {A : Set} {x y : A} (P : A -> Set) : x ≡ y → P x → P y

module Lam.Formalization where

open import Data.Fin.Base         using (fromℕ<)
open import Data.List
open import Data.Nat              using (ℕ; _<_)
open import Data.Product          using (_×_) renaming (_,_ to ⟨_,_⟩)
open import Function.Base         using (id)
open import Relation.Binary.PropositionalEquality using
  (_≡_; refl; sym; trans; cong; subst)
open Relation.Binary.PropositionalEquality.≡-Reasoning

open import Data.Char using (Char)
open import Haskell.Prelude using
  (Bool; Int; Maybe; Just; Nothing; _>>=_; case_of_; if_then_else_; maybe; _==_)

open import Lam.Data
open import Lam.TypeChecker
open import Lam.UtilsAgda

data _⊢_∶_ : TypingContext → Expr → Type → Set where

  ⊢b : ∀ {Γ : TypingContext} {b : Bool}
    → Γ ⊢ BoolVal b ∶ BoolT

  ⊢n : ∀ {Γ : TypingContext} {z : Int}
    → Γ ⊢ NumVal z ∶ IntT

  ⊢|| : ∀ {Γ : TypingContext}
    → Γ ⊢ PrimE OrPrim ∶ Arrow BoolT (Arrow BoolT BoolT)

  ⊢&& : ∀ {Γ : TypingContext}
    → Γ ⊢ PrimE AndPrim ∶ Arrow BoolT (Arrow BoolT BoolT)

  ⊢! : ∀ {Γ : TypingContext}
    → Γ ⊢ PrimE NotPrim ∶ Arrow BoolT BoolT

  ⊢+ : ∀ {Γ : TypingContext}
    → Γ ⊢ PrimE PlusPrim ∶ Arrow IntT (Arrow IntT IntT)

  ⊢- : ∀ {Γ : TypingContext}
    → Γ ⊢ PrimE MinusPrim ∶ Arrow IntT (Arrow IntT IntT)

  ⊢* : ∀ {Γ : TypingContext}
    → Γ ⊢ PrimE MultPrim ∶ Arrow IntT (Arrow IntT IntT)

  ⊢ite : ∀ {Γ : TypingContext} {b t e : Expr} {A : Type}
    → Γ ⊢ b ∶ BoolT
    → Γ ⊢ t ∶ A
    → Γ ⊢ e ∶ A
    ------------------
    → Γ ⊢ Ite b t e ∶ A

  ⊢v : ∀ {Γ : TypingContext} {i : Nat}
    → {h : natToℕ i < length Γ}
    --------------------------------
    → Γ ⊢ Var i ∶ lookup Γ (fromℕ< h)

  ⊢l : ∀ {Γ : TypingContext} {name : Id} {body : Expr} {dom codom : Type}
    → (dom ∷ Γ) ⊢ body ∶ codom
    ----------------------------------------
    → Γ ⊢ Lam name dom body ∶ Arrow dom codom

  ⊢a : ∀ {Γ : TypingContext} {f x : Expr} {dom codom : Type}
    → Γ ⊢ f ∶ Arrow dom codom
    → Γ ⊢ x ∶ dom
    --------------------
    → Γ ⊢ App f x ∶ codom

to : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → Γ ⊢ e ∶ t → typeCheck' Γ e ≡ Just t
to ⊢b  = refl
to ⊢n  = refl
to ⊢&& = refl
to ⊢|| = refl
to ⊢!  = refl
to ⊢+  = refl
to ⊢-  = refl
to ⊢*  = refl
to {Γ} {Ite b t e} {ty} (⊢ite tb tt te)
  rewrite
    to {Γ} {b} {BoolT} tb
  | to {Γ} {t} {ty} tt
  | to {Γ} {e} {ty} te
  | eqType-refl ty = refl
to (⊢v {Γ} {i} {h}) = lookup≡ {Type} {Γ} {i} h
to {Γ} {Lam name dom body} {Arrow dom codom} (⊢l {Γ} {name} {body} {dom} {codom} wt) =
  begin
    typeCheck' Γ (Lam name dom body)
  ≡⟨⟩
    (typeCheck' (dom ∷ Γ) body >>= (λ t' → Just (Arrow dom t')))
  ≡⟨ cong (λ x → x >>= (λ t' → Just (Arrow dom t'))) (to {dom ∷ Γ} {body} {codom} wt) ⟩
    ((Just codom >>= (λ t' → Just (Arrow dom t'))))
  ≡⟨⟩
    Just (Arrow dom codom)
  ∎
to {Γ} {App f x} {codom} (⊢a {Γ} {f} {x} {dom} {codom} wt₁ wt₂)
  rewrite to {Γ} {f} {Arrow dom codom} wt₁ | to {Γ} {x} {dom} wt₂ | eqType-refl dom = refl

from : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → typeCheck' Γ e ≡ Just t → Γ ⊢ e ∶ t
from {Γ} {App e₁ e₂} {t} eq with typeCheck' Γ e₁ in e₁Type
... | Just (Arrow t₁ t₂) with typeCheck' Γ e₂ in e₂Type
... | Just t₃ with iteAbs (λ()) eq
...   | ⟨ t₁Eqt₃ , tEqt₂ ⟩ =
            let e₁Typet₁Tot = subst (λ x -> Γ ⊢ e₁ ∶ (Arrow t₁ x)) (Just-injective tEqt₂) (from e₁Type)
                e₂Typet₁ = subst (λ x -> Γ ⊢ e₂ ∶ x) (sym (eqType->≡ t₁Eqt₃)) (from e₂Type)
            in ⊢a e₁Typet₁Tot e₂Typet₁
from {Γ} {Lam x t' e₁} {t} eq with typeCheck' (t' ∷ Γ) e₁ in te
... | Just t'' rewrite (sym (Just-injective eq)) = ⊢l (from {t' ∷ Γ} {e₁} {t''} te)
from {Γ} {Var x} {t} eq =
  let x<lenΓ = lookup?< {Type} {Γ} {x} eq in
  let lookupMaybeEqLookup = lookup≡ {Type} {Γ} {x} x<lenΓ in
  let justTEqJustLookup = trans (sym eq) lookupMaybeEqLookup in
  let tEqLookup = Just-injective justTEqJustLookup in
  subst (λ t' -> Γ ⊢ Var x ∶ t') (sym tEqLookup) (⊢v {Γ} {x} {x<lenΓ})
from {Γ} {BoolVal b} {t} eq rewrite sym (Just-injective eq) = ⊢b
from {Γ} {NumVal z} {t} eq rewrite sym (Just-injective eq)  = ⊢n
from {Γ} {PrimE PlusPrim} {t} eq rewrite sym (Just-injective eq) = ⊢+
from {Γ} {PrimE MinusPrim} {t} eq rewrite sym (Just-injective eq) = ⊢-
from {Γ} {PrimE MultPrim} {t} eq rewrite sym (Just-injective eq) = ⊢*
from {Γ} {PrimE AndPrim} {t} eq rewrite sym (Just-injective eq) = ⊢&&
from {Γ} {PrimE OrPrim} {t} eq rewrite sym (Just-injective eq) = ⊢||
from {Γ} {PrimE NotPrim} {t} eq rewrite sym (Just-injective eq) = ⊢!
-- Weirdly, doing parallel with clauses doesn't work here, we have to nest them
from {Γ} {Ite b t e} {ty} eq with typeCheck' Γ b in bPf
... | Just BoolT with typeCheck' Γ t in tPf
...   | Just tt with typeCheck' Γ e in ePf
...     | Just te with iteAbs {b = eqType tt te} (λ()) eq
...       | ⟨ eqTypeTtTe , justTyEqTt ⟩
            rewrite
              sym (Just-injective justTyEqTt)
            | eqType->≡ {tt} {te} eqTypeTtTe = ⊢ite (from bPf) (from tPf) (from ePf)

module Examples where

  open import Relation.Nullary using (¬_)
  open import Data.Bool using (true)

  ex1 : [] ⊢ BoolVal true ∶ BoolT
  ex1 = ⊢b

  ex2 : ¬ ([] ⊢ BoolVal true ∶ IntT)
  ex2 ()

  ex3 : ∀ (t : Type) → ¬ ([] ⊢ App (App (PrimE PlusPrim) (BoolVal true)) (BoolVal true) ∶ t)
  ex3 t (⊢a (⊢a () _) ⊢b)

  ex4 : ∀ (t : Type) → ¬ ([ IntT ] ⊢ Ite (Var Z) (BoolVal true) (BoolVal true) ∶ t)
  ex4 t (⊢ite () _ _)

