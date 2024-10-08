module Lam.Nat where

open import Haskell.Prelude hiding (Nat; iEqNat; length; _<_; lookup; _+_; drop)
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

eq->≡ : ∀ {i j : Nat} → ((i == j) ≡ True) → i ≡ j
eq->≡ {Z} {Z} h = refl
eq->≡ {S i} {S j} h = cong S (eq->≡ {i} {j} h)

eq->not≡ : ∀ (i j : Nat) → ((i == j) ≡ False) → ¬ (i ≡ j)
eq->not≡ (S i) .(S i) h refl = eq->not≡ i i h refl

{-# COMPILE AGDA2HS Nat deriving (Eq, Show) #-}

ltNat : Nat → Nat → Bool
ltNat Z (S _) = True
ltNat (S x) (S y) = ltNat x y
ltNat _ _     = False

ltSuc : ∀ (x y : Nat) → ltNat x y ≡ False → ltNat (S x) y ≡ False
ltSuc Z Z h = refl
ltSuc (S x) Z h = refl
ltSuc (S x) (S y) h = ltSuc x y h

ltZ : ∀ {i} → ltNat i Z ≡ False
ltZ {Z} = refl
ltZ {S i} = refl

{-# COMPILE AGDA2HS ltNat #-}

inc : Nat → Nat
inc = S

{-# COMPILE AGDA2HS inc #-}

dec : Nat → Nat
dec Z = Z
dec (S x) = x

{-# COMPILE AGDA2HS dec #-}

add : Nat → Nat → Nat
add Z j = j
add (S i) j = inc (add i j)

addZero : ∀ (i : Nat) → add i Z ≡ i
addZero Z = refl
addZero (S i) = cong S (addZero i)

addSuc : ∀ (i j : Nat) → add i (S j) ≡ S (add i j)
addSuc Z j = refl
addSuc (S i) j = cong S (addSuc i j)

length : {A : Set} → List A -> Nat
length [] = Z
length (_ ∷ xs) = S (length xs)

eqSuc : ∀ {i j : Nat} → S i ≡ S j → i ≡ j
eqSuc {i} {.i} refl = refl

data _≤_ : Nat → Nat → Set where
  z≤ : ∀ {i} → Z ≤ i
  s≤s : ∀ {i j} → i ≤ j → (S i) ≤ (S j)

sucLE : ∀ {i j : Nat} → S i ≤ S j → i ≤ j
sucLE (s≤s h) = h

decideLE : ∀ (i j : Nat) → (i ≤ j) ⊎ (¬ (i ≤ j))
decideLE Z Z = inj₁ z≤
decideLE Z (S j) = inj₁ z≤
decideLE (S i) Z = inj₂ (λ ())
decideLE (S i) (S j) with decideLE i j
... | inj₁ h = inj₁ (s≤s h)
... | inj₂ h = inj₂ (λ abs -> h (sucLE abs))

_<_ : Nat -> Nat -> Set
i < j = S i ≤ j

<-rewrite : ∀ {i j k : Nat} → i < j → j ≡ k → i < k
<-rewrite h refl = h

not<Self : ∀ (i : Nat) → ¬ (i < i)
not<Self (S i) (s≤s h) = not<Self i h

<s : ∀ {i j : Nat} → i < S j → i ≤ j
<s (s≤s h) = h

s< : ∀ {i j : Nat} → i < j → S i < S j
s< {Z} {j} h = s≤s h
s< {S i} {S j} h = s≤s h

s≤Self : ∀ (i : Nat) → i ≤ S i
s≤Self Z = z≤
s≤Self (S i) = s≤s (s≤Self i)


s<Self : ∀ (i : Nat) → i < S i
s<Self Z = s≤s z≤
s<Self (S i) = s≤s (s<Self i)

≤-trans : ∀ {i j k : Nat} → i ≤ j → j ≤ k → i ≤ k
≤-trans z≤ z≤ = z≤
≤-trans z≤ (s≤s h2) = z≤
≤-trans (s≤s h1) (s≤s h2) = s≤s (≤-trans h1 h2)

addInc : ∀ (i j : Nat) → j ≤ add i j
addInc Z Z = z≤
addInc Z (S j) = s≤s (addInc Z j)
addInc (S i) Z = z≤
addInc (S i) (S j) = s≤s (≤-trans (s≤Self j) (addInc i (S j)))

<-trans : ∀ {i j k : Nat} → i < j → j < k → i < k
<-trans {Z} {.(S _)} {.(S _)} (s≤s h1) (s≤s h2) = s≤s z≤
<-trans {S i} {.(S _)} {.(S _)} (s≤s h1) (s≤s h2) = s≤s (<-trans h1 h2)

<≤-trans : ∀ {i j k : Nat} → i < j → j ≤ k → i < k
<≤-trans (s≤s h1) (s≤s h2) = s≤s (≤-trans h1 h2)

≤<-trans : ∀ {i j k : Nat} → i ≤ j → j < k → i < k
≤<-trans z≤ (s≤s h2) = s≤s z≤
≤<-trans (s≤s h1) (s≤s h2) = s≤s (≤<-trans h1 h2)

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

piLookup : ∀ {A : Set} (Γ : List A) (i : Nat) (h1 : i < length Γ) (h2 : i < length Γ) → lookup Γ i h1 ≡ lookup Γ i h2
piLookup (x ∷ g) Z h1 h2 = refl
piLookup (x ∷ g) (S i) (s≤s h1) (s≤s h2) = piLookup g i h1 h2

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

sucLT : ∀ {i j : Nat} → S i < S j → i < j
sucLT (s≤s h) = h

sucLT2 : ∀ {i j : Nat} → S i < j → i < j
sucLT2 {Z} {.(S _)} (s≤s h) = s≤s z≤
sucLT2 {S i} {.(S _)} (s≤s h) = s≤s (sucLT2 h)

sucLT3 : ∀ {i : Nat} → i < S i
sucLT3 {Z} = s≤s z≤
sucLT3 {S i} = s≤s sucLT3

sucEQ : ∀ {i j : Nat} → S i ≡ S j → i ≡ j
sucEQ refl = refl

sucNeq : ∀ {i j : Nat} → ¬ (S i ≡ S j) → ¬ (i ≡ j)
sucNeq h1 refl = ⊥-elim (h1 refl)

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

lengthRemove : ∀ {A : Set} {L : List A} {i j : Nat} → i < length L → i < j → i < length (remove j L)
lengthRemove {_} {L} {i} {j} h1 h2 with decideLE (length L) j
... | (inj₁ jBig) rewrite removeLargeId j L jBig = h1
... | (inj₂ jSmall) = <≤-trans h2 (<s (<≤-trans (notLE->LT jSmall) (removeLength j L)))

almostTrichotomy : ∀ (i j : Nat) → i ≤ j → (¬ (i ≡ j)) → i < j
almostTrichotomy Z Z z≤ h2 = ⊥-elim (h2 refl)
almostTrichotomy Z (S j) z≤ h2 = s≤s z≤
almostTrichotomy (S i) (S j) (s≤s h1) h2 = s≤s (almostTrichotomy i j h1 λ eq -> h2 (cong S eq))

drop : {A : Set} → Nat → List A → List A
drop Z l = l
drop (S i) [] = []
drop (S i) (x ∷ l) = drop i l
