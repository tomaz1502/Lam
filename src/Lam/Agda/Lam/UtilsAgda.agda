module Lam.UtilsAgda where

import Agda.Builtin.Nat
open import Data.Empty       using (⊥-elim)
open import Data.Fin.Base    using (fromℕ<)
open import Data.List
open import Data.Nat         using (ℕ; zero; suc; _<_)
open import Data.Product     using (_×_) renaming (_,_ to ⟨_,_⟩)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂)
open import Relation.Nullary using (¬_)

open import Haskell.Prelude hiding (_<_; length; lookup; _×_; Nat; cong; cong₂; case_of_)

open import Lam.Data

-- removing the equality proof of case_of_
myCaseOf : {a b : Set} → a → (a → b) → b
myCaseOf x f = f x

{-# COMPILE AGDA2HS myCaseOf #-}

-- Operations defined over our naturals

natToℕ : Nat → ℕ
natToℕ Z = zero
natToℕ (S x) = suc (natToℕ x)

eqNat : Nat → Nat → Bool
eqNat Z Z         = True
eqNat (S x) (S y) = eqNat x y
eqNat _ _         = False

{-# COMPILE AGDA2HS eqNat #-}

ltNat : Nat → Nat → Bool
ltNat (S x) (S y) = ltNat x y
ltNat Z _         = True
ltNat (S _) Z     = False

{-# COMPILE AGDA2HS ltNat #-}

inc : Nat → Nat
inc = S

{-# COMPILE AGDA2HS inc #-}

dec : Nat → Nat
dec Z = Z
dec (S x) = x

{-# COMPILE AGDA2HS dec #-}

eqType : TypeL → TypeL → Bool
eqType BoolT        BoolT       = True
eqType IntT         IntT        = True
eqType U            U           = True
eqType (Arrow t11 t12)  (Arrow t21 t22) = (eqType t11 t21) && (eqType t12 t22)
eqType _            _           = False

{-# COMPILE AGDA2HS eqType #-}

lookupMaybe : {t : Set} → Nat → List t → Maybe t
lookupMaybe _ []           = Nothing
lookupMaybe Z (h ∷ _)      = Just h
lookupMaybe (S i) (_ ∷ t) = lookupMaybe i t

{-# COMPILE AGDA2HS lookupMaybe #-}

lookup≡ : {t : Set} {l : List t} {i : Nat} → (h : (natToℕ i) < length l) → (lookupMaybe i l) ≡ Just (lookup l (fromℕ< h))
lookup≡ {t} {x ∷ l} {Z} h  = _≡_.refl
lookup≡ {t} {x ∷ l} {S i} h = lookup≡ {t} {l} {i} (Data.Nat.≤-pred h)

&&to× : {a b : Bool} → (a && b) ≡ True → a ≡ True × b ≡ True
&&to× {True} {True} h = ⟨ refl , refl ⟩

eqType->≡ : {t₁ t₂ : TypeL} → eqType t₁ t₂ ≡ True → t₁ ≡ t₂
eqType->≡ {BoolT} {BoolT} _ = refl
eqType->≡ {IntT} {IntT} _ = refl
eqType->≡ {U} {U} _ = refl
eqType->≡ {Arrow t t₁} {Arrow t' t''} h with &&to× h
... | ⟨ t==t' , t₁==t'' ⟩ = cong₂ Arrow (eqType->≡ t==t') (eqType->≡ t₁==t'')

eqType-refl : (t : TypeL) → eqType t t ≡ True
eqType-refl BoolT = refl
eqType-refl IntT = refl
eqType-refl U = refl
eqType-refl (Arrow dom codom) =
  trans (cong (λ x → x && eqType codom codom) (eqType-refl dom)) (cong (λ x → True && x) (eqType-refl codom))

injection-maybe : ∀ {t : Set} {a : t} → ¬ (Nothing ≡ Just a)
injection-maybe = λ ()

lookup?< : {t : Set} {l : List t} {i : Nat} {a : t} → lookupMaybe i l ≡ Just a → (natToℕ i) < length l
lookup?< {_} {[]} {_} {_} eq    = ⊥-elim (injection-maybe eq)
lookup?< {t} {x ∷ l} {Z} eq  = Data.Nat.s≤s Data.Nat.z≤n
lookup?< {t} {x ∷ l} {S i} eq = Data.Nat.s≤s (lookup?< {t} {l} {i} eq)

iteAbs : {t : Set} {x y z : t} {b : Bool} →
        ¬ y ≡ z → (if b then x else y) ≡ z → b ≡ True × x ≡ z
iteAbs {t} {x} {y} {z} {False} h₁ h₂ = ⊥-elim (h₁ h₂)
iteAbs {t} {x} {y} {z} {True} h₁ h₂ = ⟨ refl , h₂ ⟩

liftEqNat : {n1 n2 : ℕ} → Agda.Builtin.Nat._==_ n1 n2 ≡ Bool.true → n1 ≡ n2
liftEqNat {zero} {zero} h = refl
liftEqNat {suc n1} {suc n2} h = cong suc (liftEqNat {n1} {n2} h)

Just-injective : ∀ {A : Set} {a b : A} → (Just a) ≡ (Just b) → _≡_ a b
Just-injective refl = refl
