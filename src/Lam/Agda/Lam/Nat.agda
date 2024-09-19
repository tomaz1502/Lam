module Lam.Nat where

open import Haskell.Prelude using (Eq; _==_; True; False; Bool; []; _∷_; List; Maybe; Nothing; Just; _≡_)

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

s< : ∀ {i j : Nat} → i < j → S i < S j
s< {Z} {j} h = s≤s h
s< {S i} {S j} h = s≤s h

≤-trans : ∀ {i j k : Nat} → i ≤ j → j ≤ k → i ≤ k
≤-trans z≤ z≤ = z≤
≤-trans z≤ (s≤s h2) = z≤
≤-trans (s≤s h1) (s≤s h2) = s≤s (≤-trans h1 h2)

<-trans : ∀ {i j k : Nat} → i < j → j < k → i < k
<-trans {Z} {.(S _)} {.(S _)} (s≤s h1) (s≤s h2) = s≤s z≤
<-trans {S i} {.(S _)} {.(S _)} (s≤s h1) (s≤s h2) = s≤s (<-trans h1 h2)

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
