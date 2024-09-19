module Lam.Nat where

open import Haskell.Prelude using (Eq; _==_; True; False; Bool; []; _∷_; List; Maybe; Nothing; Just)

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

lookupMaybe : {t : Set} → Nat → List t → Maybe t
lookupMaybe _ []           = Nothing
lookupMaybe Z (h ∷ _)      = Just h
lookupMaybe (S i) (_ ∷ t) = lookupMaybe i t

{-# COMPILE AGDA2HS lookupMaybe #-}

lookup : {A : Set} -> (l : List A) -> (i : Nat) -> (h : i < length l) -> A
lookup (x ∷ l) Z h = x
lookup (x ∷ l) (S i) (s≤s h) = lookup l i h
