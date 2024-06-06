module Lam.UtilsAgda where

open import Data.Bool        using (Bool; true; false)
open import Data.Empty       using (⊥-elim)
open import Data.Fin.Base    using (fromℕ<)
open import Data.List
open import Data.Nat         using (ℕ; zero; suc; _<_)
open import Data.Product     using (_×_) renaming (_,_ to ⟨_,_⟩)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong; cong₂)
open Relation.Binary.PropositionalEquality.≡-Reasoning
open import Relation.Nullary using (¬_)

open import Haskell.Prelude using (Maybe; Nothing; Just; _&&_; if_then_else_)

open import Lam.Data

-- Operations defined over our naturals

natToℕ : Nat → ℕ
natToℕ Z = zero
natToℕ (S x) = suc (natToℕ x)

natFromℕ : ℕ → Nat
natFromℕ zero = Z
natFromℕ (suc x) = S (natFromℕ x)

eqNat : Nat → Nat → Bool
eqNat Z Z         = true
eqNat (S x) (S y) = eqNat x y
eqNat _ _         = false

{-# COMPILE AGDA2HS eqNat #-}

ltNat : Nat → Nat → Bool
ltNat (S x) (S y) = ltNat x y
ltNat Z _         = true
ltNat (S _) Z     = false

{-# COMPILE AGDA2HS ltNat #-}

inc : Nat → Nat
inc = S

{-# COMPILE AGDA2HS inc #-}

dec : Nat → Nat
dec Z = Z
dec (S x) = x

{-# COMPILE AGDA2HS dec #-}

eqType : Type → Type → Bool
eqType U            U           = true
eqType (Arrow t11 t12)  (Arrow t21 t22) = (eqType t11 t21) && (eqType t12 t22)
eqType _            _           = false

{-# COMPILE AGDA2HS eqType #-}

eqExpr : Expr → Expr → Bool
eqExpr (Var i)       (Var j)       = eqNat i j
eqExpr (Lam _ _ e1)  (Lam _ _ e2)  = eqExpr e1 e2
eqExpr (App e11 e12) (App e21 e22) = (eqExpr e11 e21) && (eqExpr e12 e22)
eqExpr _             _             = false

{-# COMPILE AGDA2HS eqExpr #-}

lookupMaybe : {t : Set} → Nat → List t → Maybe t
lookupMaybe _ []           = Nothing
lookupMaybe Z (h ∷ _)      = Just h
lookupMaybe (S i) (_ ∷ t) = lookupMaybe i t

{-# COMPILE AGDA2HS lookupMaybe #-}

lookup≡ : {t : Set} {l : List t} {i : Nat} → (h : (natToℕ i) < length l) → (lookupMaybe i l) ≡ Just (lookup l (fromℕ< h))
lookup≡ {t} {x ∷ l} {Z} h  = _≡_.refl
lookup≡ {t} {x ∷ l} {S i} h = lookup≡ {t} {l} {i} (Data.Nat.≤-pred h)

eqType-refl : (t : Type) → eqType t t ≡ true
eqType-refl U = refl
eqType-refl (Arrow dom codom) = begin
    eqType (Arrow dom codom) (Arrow dom codom)
  ≡⟨⟩
    eqType dom dom && eqType codom codom
  ≡⟨ cong (λ x → x && eqType codom codom) (eqType-refl dom) ⟩
    true && eqType codom codom
  ≡⟨ cong (λ x → true && x) (eqType-refl codom) ⟩
    true && true
  ≡⟨⟩
    true
  ∎

injection-maybe : ∀ {t : Set} {a : t} → ¬ (Nothing ≡ Just a)
injection-maybe = λ ()

lookup?< : {t : Set} {l : List t} {i : Nat} {a : t} → lookupMaybe i l ≡ Just a → (natToℕ i) < length l
lookup?< {_} {[]} {_} {_} eq    = ⊥-elim (injection-maybe eq)
lookup?< {t} {x ∷ l} {Z} eq  = Data.Nat.s≤s Data.Nat.z≤n
lookup?< {t} {x ∷ l} {S i} eq = Data.Nat.s≤s (lookup?< {t} {l} {i} eq)

iteAbs : {t : Set} {x y z : t} {b : Bool} →
        ¬ y ≡ z → (if b then x else y) ≡ z → b ≡ true × x ≡ z
iteAbs {t} {x} {y} {z} {false} h₁ h₂ = ⊥-elim (h₁ h₂)
iteAbs {t} {x} {y} {z} {true} h₁ h₂ = ⟨ refl , h₂ ⟩

&&to× : {a b : Bool} → (a && b) ≡ true → a ≡ true × b ≡ true
&&to× {true} {true} h = ⟨ refl , refl ⟩

==ᵗto≡ : {t₁ t₂ : Type} → eqType t₁ t₂ ≡ true → t₁ ≡ t₂
==ᵗto≡ {U} {U} h = refl
==ᵗto≡ {Arrow t t₁} {Arrow t' t''} h with &&to× h
... | ⟨ t==t' , t₁==t'' ⟩ = cong₂ Arrow (==ᵗto≡ t==t') (==ᵗto≡ t₁==t'')
