module Lam.UtilsAgda where

import Agda.Builtin.Nat
open import Data.Empty       using (⊥-elim)
open import Data.Fin.Base    using (fromℕ<)
open import Data.List hiding (length; lookup)
open import Data.Product     using (_×_) renaming (_,_ to ⟨_,_⟩)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂)
open import Relation.Nullary using (¬_)

open import Haskell.Prelude hiding (_<_; length; lookup; _×_; Nat; cong; cong₂; case_of_)

open import Lam.Data
open import Lam.Nat

-- removing the equality proof of case_of_
myCaseOf : {a b : Set} → a → (a → b) → b
myCaseOf x f = f x

{-# COMPILE AGDA2HS myCaseOf #-}

eqType : TypeL → TypeL → Bool
eqType BoolT        BoolT       = True
eqType IntT         IntT        = True
eqType U            U           = True
eqType (Arrow t11 t12)  (Arrow t21 t22) = (eqType t11 t21) && (eqType t12 t22)
eqType (Prod t11 t12)  (Prod t21 t22) = (eqType t11 t21) && (eqType t12 t22)
eqType (Sum t11 t12)  (Sum t21 t22) = (eqType t11 t21) && (eqType t12 t22)
eqType _            _           = False

{-# COMPILE AGDA2HS eqType #-}

lookup≡ : {t : Set} {l : List t} {i : Nat} → (h : i < length l) → (lookupMaybe i l) ≡ Just (lookup l i h)
lookup≡ {t} {x ∷ l} {Z} h = refl
lookup≡ {t} {x ∷ l} {S i} (s≤s h) = lookup≡ h 

&&to× : {a b : Bool} → (a && b) ≡ True → a ≡ True × b ≡ True
&&to× {True} {True} h = ⟨ refl , refl ⟩

eqType->≡ : {t₁ t₂ : TypeL} → eqType t₁ t₂ ≡ True → t₁ ≡ t₂
eqType->≡ {BoolT} {BoolT} _ = refl
eqType->≡ {IntT} {IntT} _ = refl
eqType->≡ {U} {U} _ = refl
eqType->≡ {Arrow t t₁} {Arrow t' t''} h with &&to× h
... | ⟨ t==t' , t₁==t'' ⟩ = cong₂ Arrow (eqType->≡ t==t') (eqType->≡ t₁==t'')
eqType->≡ {Prod t t₁} {Prod t' t''} h with &&to× h
... | ⟨ t==t' , t₁==t'' ⟩ = cong₂ Prod (eqType->≡ t==t') (eqType->≡ t₁==t'')
eqType->≡ {Sum t t₁} {Sum t' t''} h with &&to× h
... | ⟨ t==t' , t₁==t'' ⟩ = cong₂ Sum (eqType->≡ t==t') (eqType->≡ t₁==t'')

eqType-refl : (t : TypeL) → eqType t t ≡ True
eqType-refl BoolT = refl
eqType-refl IntT = refl
eqType-refl U = refl
eqType-refl (Arrow dom codom) =
  trans (cong (λ x → x && eqType codom codom) (eqType-refl dom)) (cong (λ x → True && x) (eqType-refl codom))
eqType-refl (Prod t1 t2) =
  trans (cong (λ x → x && eqType t2 t2) (eqType-refl t1)) (cong (λ x → True && x) (eqType-refl t2))
eqType-refl (Sum t1 t2) =
  trans (cong (λ x → x && eqType t2 t2) (eqType-refl t1)) (cong (λ x → True && x) (eqType-refl t2))

injection-maybe : ∀ {t : Set} {a : t} → ¬ (Nothing ≡ Just a)
injection-maybe = λ ()

lookup?< : {t : Set} {l : List t} {i : Nat} {a : t} → lookupMaybe i l ≡ Just a → i < length l
lookup?< {_} {[]} {_} {_} eq    = ⊥-elim (injection-maybe eq)
lookup?< {t} {x ∷ l} {Z} eq  = s≤s z≤
lookup?< {t} {x ∷ l} {S i} eq = s≤s (lookup?< eq)

iteAbs : {t : Set} {x y z : t} {b : Bool} →
        ¬ y ≡ z → (if b then x else y) ≡ z → b ≡ True × x ≡ z
iteAbs {t} {x} {y} {z} {False} h₁ h₂ = ⊥-elim (h₁ h₂)
iteAbs {t} {x} {y} {z} {True} h₁ h₂ = ⟨ refl , h₂ ⟩

Just-injective : ∀ {A : Set} {a b : A} → (Just a) ≡ (Just b) → _≡_ a b
Just-injective refl = refl
