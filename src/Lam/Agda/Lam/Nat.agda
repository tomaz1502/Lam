module Lam.Nat where

open import Haskell.Prelude hiding (Nat; iEqNat; length; _<_; lookup)
open import Relation.Nullary using (¬_)
open import Data.Empty                            using (⊥-elim; ⊥)
open import Data.Sum using (_⊎_; inj₁; inj₂)

data Nat : Set where
  Z : Nat
  S : Nat → Nat

instance
  iEqNat : Eq Nat
  iEqNat ._==_ Z Z = True
  iEqNat ._==_ (S x) (S y) = x == y
  iEqNat ._==_ _ _ = False

{-# COMPILE AGDA2HS Nat deriving (Eq, Show) #-}

ltNat : Nat → Nat → Bool
ltNat Z (S _) = True
ltNat (S x) (S y) = ltNat x y
ltNat _ _     = False

{-# COMPILE AGDA2HS ltNat #-}

inc : Nat → Nat
inc = S

{-# COMPILE AGDA2HS inc #-}

dec : Nat → Nat
dec Z = Z
dec (S x) = x

{-# COMPILE AGDA2HS dec #-}

length : {A : Set} → List A -> Nat
length [] = Z
length (_ ∷ xs) = S (length xs)

data _≤_ : Nat → Nat → Set where
  z≤ : ∀ {i} → Z ≤ i
  s≤s : ∀ {i j} → i ≤ j → (S i) ≤ (S j)

_<_ : Nat -> Nat -> Set
i < j = S i ≤ j

<s : ∀ {i j : Nat} → i < S j → i ≤ j
<s (s≤s h) = h

s< : ∀ {i j : Nat} → i < j → S i < S j
s< {Z} {j} h = s≤s h
s< {S i} {S j} h = s≤s h

s≤Self : ∀ (i : Nat) → i ≤ S i
s≤Self Z = z≤
s≤Self (S i) = s≤s (s≤Self i)

≤-trans : ∀ {i j k : Nat} → i ≤ j → j ≤ k → i ≤ k
≤-trans z≤ z≤ = z≤
≤-trans z≤ (s≤s h2) = z≤
≤-trans (s≤s h1) (s≤s h2) = s≤s (≤-trans h1 h2)

<-trans : ∀ {i j k : Nat} → i < j → j < k → i < k
<-trans {Z} {.(S _)} {.(S _)} (s≤s h1) (s≤s h2) = s≤s z≤
<-trans {S i} {.(S _)} {.(S _)} (s≤s h1) (s≤s h2) = s≤s (<-trans h1 h2)

<≤-trans : ∀ {i j k : Nat} → i < j → j ≤ k → i < k
<≤-trans (s≤s h1) (s≤s h2) = s≤s (≤-trans h1 h2)

lt->< : ∀ {i j : Nat} → ltNat i j ≡ True → i < j
lt->< {Z} {S j} h = s≤s z≤
lt->< {S i} {S j} h = s≤s (lt->< h)

lt->≤ : ∀ {i j : Nat} → ltNat i j ≡ False → j ≤ i
lt->≤ {Z} {Z} h = z≤
lt->≤ {S i} {Z} h = z≤
lt->≤ {S i} {S j} h = s≤s (lt->≤ h)

lookupMaybe : {t : Set} → Nat → List t → Maybe t
lookupMaybe _ []           = Nothing
lookupMaybe Z (h ∷ _)      = Just h
lookupMaybe (S i) (_ ∷ t) = lookupMaybe i t

{-# COMPILE AGDA2HS lookupMaybe #-}

lookup : {A : Set} -> (l : List A) -> (i : Nat) -> (h : i < length l) -> A
lookup (x ∷ l) Z h = x
lookup (x ∷ l) (S i) (s≤s h) = lookup l i h

insert : {A : Set} → Nat → A → List A → List A
insert Z t g = t ∷ g
insert (S i) t [] = t ∷ []
insert (S i) t (x ∷ g) = x ∷ insert i t g

≤-refl : ∀ {i : Nat} → i ≤ i
≤-refl {Z} = z≤
≤-refl {S i} = s≤s (≤-refl {i})

insertIncLength : ∀ {A : Set} {L : List A} {x : A} {i : Nat} → length L < length (insert i x L)
insertIncLength {L = []} {i = Z} = s≤s z≤
insertIncLength {L = []} {i = S i} = s≤s z≤
insertIncLength {L = _ ∷ _} {i = Z} = s≤s ≤-refl
insertIncLength {L = x ∷ L} {i = S i} = s≤s insertIncLength

remove : ∀ {A : Set} (i : Nat) (L : List A) → List A
remove _ [] = []
remove Z (x ∷ L) = L
remove (S i) (x ∷ L) = x ∷ remove i L

removeLargeId : ∀ {A : Set} (i : Nat) (L : List A) → length L ≤ i → remove i L ≡ L
removeLargeId Z [] h = refl
removeLargeId (S i) [] h = refl
removeLargeId (S i) (x ∷ L) (s≤s h) = cong (λ y -> x ∷ y) (removeLargeId i L h)

sucLE : ∀ {i j : Nat} → S i ≤ S j → i ≤ j
sucLE (s≤s h) = h

sucLT : ∀ {i j : Nat} → S i < S j → i < j
sucLT (s≤s h) = h

decideLE : ∀ (i j : Nat) → (i ≤ j) ⊎ (¬ (i ≤ j))
decideLE Z Z = inj₁ z≤
decideLE Z (S j) = inj₁ z≤
decideLE (S i) Z = inj₂ (λ ())
decideLE (S i) (S j) with decideLE i j
... | inj₁ h = inj₁ (s≤s h)
... | inj₂ h = inj₂ (λ abs -> h (sucLE abs))

notLE->LT : ∀ {i j : Nat} → ¬ (i ≤ j) → j < i
notLE->LT {Z} {Z} h = ⊥-elim (h ≤-refl)
notLE->LT {Z} {S j} h = ⊥-elim (h z≤)
notLE->LT {S i} {Z} h = s≤s z≤
notLE->LT {S i} {S j} h = s< (notLE->LT {i} {j} λ abs -> h (s≤s abs))

removeLength : ∀ {A : Set} (i : Nat) (L : List A) → length L ≤ S (length (remove i L))
removeLength Z [] = z≤
removeLength Z (x ∷ L) = s≤s ≤-refl
removeLength (S i) [] = z≤
removeLength (S i) (x ∷ L) = s≤s (removeLength i L)

removeLength2 : ∀ {A : Set} (i : Nat) (L : List A) → (length (remove i L)) ≤ length L
removeLength2 Z [] = z≤
removeLength2 Z (x ∷ L) = s≤Self (length L)
removeLength2 (S i) [] = z≤
removeLength2 (S i) (x ∷ L) = s≤s (removeLength2 i L)

-- I know h: i < length L
-- I want to conclude i < S length (remove L)
-- ≤<-trans h removeLength
