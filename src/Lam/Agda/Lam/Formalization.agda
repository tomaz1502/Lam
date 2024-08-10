-- NOTE: Consider the type of subst as: {A : Set} {x y : A} (P : A -> Set) : x ≡ y → P x → P y

module Lam.Formalization where

open import Data.Empty            using (⊥-elim)
open import Data.Fin.Base         using (fromℕ<)
open import Data.List
open import Data.Nat              using (ℕ; _<_)
open import Data.Product          using (_×_) renaming (_,_ to ⟨_,_⟩)
open import Relation.Binary.PropositionalEquality using
  (_≡_; _≢_; refl; sym; trans; cong; subst)
open Relation.Binary.PropositionalEquality.≡-Reasoning
open import Relation.Nullary using (¬_)

open import Haskell.Prelude using
  (Maybe; Just; Nothing; _>>=_; case_of_; if_then_else_; maybe)

open import Lam.Data
open import Lam.Evaluator
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

to : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → Γ ⊢ e ∶ t → typeCheck' Γ e ≡ Just t
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
                e₂Typet₁ = subst (λ x -> Γ ⊢ e₂ ∶ x) (sym (==ᵗto≡ t₁Eqt₃)) (from e₂Type)
            in ⊢a e₁Typet₁Tot e₂Typet₁
from {Γ} {Lam x t' e₁} {t} eq with typeCheck' (t' ∷ Γ) e₁ in te
... | Just t'' rewrite (sym (Just-injective eq)) = ⊢l (from {t' ∷ Γ} {e₁} {t''} te)
from {Γ} {Var x} {t} eq =
  let x<lenΓ = lookup?< {Type} {Γ} {x} eq in
  let lookupMaybeEqLookup = lookup≡ {Type} {Γ} {x} x<lenΓ in
  let justTEqJustLookup = trans (sym eq) lookupMaybeEqLookup in
  let tEqLookup = Just-injective justTEqJustLookup in
  subst (λ t' -> Γ ⊢ Var x ∶ t') (sym tEqLookup) (⊢v {Γ} {x} {x<lenΓ})

-- Reference: https://plfa.github.io/Untyped/
-- But we don't guarantee well-scopedness

data Neutral : Expr → Set
data Normal  : Expr → Set

data Neutral where
  ne-v : ∀ {k : Nat}
    → Neutral (Var k)
  ne-a : ∀ {L M : Expr}
    → Neutral L
    → Normal M
    -------------------
    → Neutral (App L M)

data Normal where
  no-ne : ∀ {M : Expr}
    → Neutral M
    ----------
    → Normal M

  no-a : ∀ {s : Id} {ty : Type} {N : Expr}
    → Normal N
    ---------------------
    → Normal (Lam s ty N)

data _—→_ : Expr → Expr → Set where
  r-a : ∀ {L L' M : Expr}
    → L —→ L'
    ---------------------
    → App L M —→ App L' M

  r-a' : ∀ {V M M' : Expr}
    → Normal V
    → M —→ M'
    ---------------------
    → App V M —→ App V M'

  r-l : ∀ {s : Id} {ty : Type} {L L' : Expr}
    → L —→ L'
    ---------------------------
    → Lam s ty L —→ Lam s ty L'

  r-l' : ∀ {s : Id} {ty : Type} {L V : Expr}
    → Normal V
    → Normal L
    ---------------------------
    → App (Lam s ty L) V —→ shiftDown (substitute Z (shiftUp V) L)
    -- using a predicate to specify substitution here gets pretty ugly


data _—↠_ : Expr → Expr → Set where
  done : ∀ {M : Expr}
    → M —↠ M

  step : ∀ {L M N : Expr}
    → L —→ M
    → M —↠ N
    --------
    → L —↠ N

data Irreducible : Expr → Set where
  i-e : ∀ {M : Expr}
    → (∀ {N : Expr} → ¬ (M —→ N))
    ---------------
    → Irreducible M

normalDontReduce : ∀ {M N : Expr} → Normal M → ¬ (M —→ N)
normalDontReduce (no-ne (ne-a neutralL _)) (r-a lReduce) =
  normalDontReduce (no-ne neutralL) lReduce
normalDontReduce (no-ne (ne-a neutralL normalM)) (r-a' normalL mReduce) =
  normalDontReduce normalM mReduce
normalDontReduce (no-a normalN) (r-l nReduce) =
  normalDontReduce normalN nReduce

normalImpliesIrreducible : ∀ {M : Expr} → Normal M → Irreducible M
normalImpliesIrreducible {M} normalM = i-e λ h -> normalDontReduce normalM h

redIsDeterministic : ∀ {M N1 N2 : Expr} → M —→ N1 → M —→ N2 → N1 ≡ N2
redIsDeterministic (r-a red1) (r-a red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-a red1) (r-a' normalL red2) = ⊥-elim (normalDontReduce normalL red1)
redIsDeterministic (r-a (r-l red1)) (r-l' normalM normalL) = ⊥-elim (normalDontReduce normalL red1)
redIsDeterministic (r-a' normalV red1) (r-a red2) = ⊥-elim (normalDontReduce normalV red2)
redIsDeterministic (r-a' _ red1) (r-a' _ red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-a' _ red1) (r-l' normalM _) = ⊥-elim (normalDontReduce normalM red1)
redIsDeterministic (r-l red1) (r-l red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-l' _ normalL) (r-a (r-l red2)) = ⊥-elim (normalDontReduce normalL red2)
redIsDeterministic (r-l' normalL _) (r-a' _ red2) = ⊥-elim (normalDontReduce normalL red2)
redIsDeterministic (r-l' _ _) (r-l' _ _) = refl

x : ∀ {L M : Expr} → Normal (App L M) → Neutral (App L M)
x (no-ne h) = h

k3 : ∀ {V : Expr} → smallStep V ≡ Nothing → Normal V
k3 {Var _} h = no-ne ne-v
k3 {Lam _ _ V} h with smallStep V in eq
...               | Nothing = no-a (k3 eq)
k3 {App V1 V2} h with smallStep V1 in eqV1
...              | Nothing with smallStep V2 in eqV2
...                        | Nothing with V1
...                                  | Var k = no-ne (ne-a ne-v (k3 eqV2))
...                                  | App V11 V12 = no-ne (ne-a (x (k3 eqV1)) (k3 eqV2))

k1 : ∀ {V : Expr} → Normal V → smallStep V ≡ Nothing
k2 : ∀ {V : Expr} → Neutral V → smallStep V ≡ Nothing

k1 (no-ne neutralV) = k2 neutralV
k1 (no-a nv) rewrite k1 nv = refl

k2 ne-v = refl
k2 {App (Var x) M} (ne-a neutralL normalM) rewrite k2 neutralL | k1 normalM = refl
k2 {App (App L L₁) M} (ne-a neutralL normalM) rewrite k2 neutralL | k1 normalM = refl

f : ∀ {M N : Expr} → smallStep M ≡ Just N → M —→ N
f {Lam s ty M} {N} eq with smallStep M in eqM
... | Just _ rewrite sym (Just-injective eq) = r-l (f eqM)
f {App L M} {N} eq with smallStep L in eqL
... | Just L' rewrite sym (Just-injective eq) = r-a (f eqL)
... | Nothing with smallStep M in eqM
...                | Just M' rewrite sym (Just-injective eq) = r-a' (k3 eqL) (f eqM)
...                | Nothing with L
...                          | Lam _ _ L' with smallStep L' in eqL'
...                                       | Nothing rewrite sym (Just-injective eq) = r-l' (k3 eqM) (k3 eqL')

g : ∀ {M N : Expr} → M —→ N → smallStep M ≡ Just N
g (r-a red) rewrite g red = refl
g (r-l red) rewrite g red = refl
g (r-a' normalV red) rewrite k1 normalV | g red = refl
g (r-l' normalL normalV) rewrite k1 normalV | k1 normalL = refl


-- TODO: This is necessary since we marked `eval` as `NON_TERMINATING`
-- This stops the typechecker from reducing this definition
-- Ideally we would also do a formalization of `evalWithGas`,
-- which would not require new axioms, but I need to think more
-- about how this should be done
postulate eval_def : ∀ {M : Expr} → eval M ≡ myCaseOf (smallStep M) λ { Nothing -> M ; (Just M') -> eval M' }

g2 : ∀ {M N : Expr} → M —↠ N → Irreducible N → eval M ≡ N
g2 {M} {M} done (i-e irreducibleM) with smallStep M in eqM
...                     | Nothing rewrite eval_def {M} | eqM = refl
...                     | Just M' = ⊥-elim (irreducibleM (f eqM))
g2 {L} {N} (step {L} {M} {N} LtoM MtoN) irreducibleN with smallStep L in eqL
... | Just L' rewrite eval_def {L} | g LtoM = g2 MtoN irreducibleN
... | Nothing = ⊥-elim (normalDontReduce (k3 eqL) LtoM)

-- f2 : ∀ {M N : Expr} → eval M ≡ N → ( (M —↠ N) × Irreducible N )
-- f2 {M} {N} h rewrite eval_def {M} with smallStep M in eqM
-- ... | Nothing rewrite h = ⟨ done , normalImpliesIrreducible (k3 eqM) ⟩
-- -- here we are stuck because we can't use induction without breaking the termination checker
-- ... | Just M' = {!!}

-- MultiReduces n M N: I can go from M to N with gas n
data MultiReduces : Nat → Expr → Expr → Set where
  done : ∀ {n : Nat} {M : Expr}
    → MultiReduces n M M

  step : ∀ {n : Nat} {L M N : Expr}
    → L —→ M
    → MultiReduces n M N
    --------
    → MultiReduces (S n) L N

f3 : ∀ {n : Nat} {M N : Expr} → MultiReduces n M N → Irreducible N → evalWithGas n M ≡ N
f3 {Z} done (i-e irreducibleN) = refl
f3 {S n} {M} {N} done (i-e irreducibleN) with smallStep N in eqN
... | Nothing = refl
... | Just _ = ⊥-elim (irreducibleN (f eqN))
f3 {S n} {M} {N} (step red reds) (i-e irreducibleN) with smallStep M in eqM
... | Nothing = ⊥-elim (normalDontReduce (k3 eqM) red)
... | Just M' rewrite redIsDeterministic red (f eqM) = f3 {n} reds (i-e irreducibleN)

g3 : ∀ {n M N} → evalWithGas n M ≡ N → Irreducible N → MultiReduces n M N
g3 {Z} {M} {N} h _ rewrite h = done
g3 {S n} {M} {N} h irreducibleN with smallStep M in eqM
... | Nothing rewrite h = done
... | Just M' = step (f eqM) (g3 h irreducibleN)
