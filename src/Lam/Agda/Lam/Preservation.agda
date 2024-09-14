module Lam.Preservation where

-- open import Haskell.Prelude
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; _≢_; refl)
open import Data.List
open import Data.Nat
open import Data.Nat.Properties

open import Data.Fin.Base hiding (_≤_; _<_)

open import Lam.Data
open import Lam.Evaluator
open import Lam.TypeChecker
open import Lam.FormalizationTypeChecker
open import Lam.UtilsAgda

data Prefix {T : Set} : List T → List T → Set where
  nil : ∀ {xs} → Prefix [] xs
  cons : ∀ {xs ys} (x : T) → Prefix xs ys → Prefix (x ∷ xs) (x ∷ ys)

prefIncsLength : ∀ {A : Set} {xs ys : List A} → Prefix xs ys → (length xs) ≤ (length ys)
prefIncsLength nil = z≤n
prefIncsLength (cons _ p) = s≤s (prefIncsLength p)

<≤-trans : ∀ {n m o} → n < m → m ≤ o → n < o
<≤-trans (s≤s h1) (s≤s h2) = s≤s (≤-trans h1 h2)

lookupPref : ∀ {A : Set} {Γ Δ : List A} {i : Nat}
  → (h : natToℕ i < length Γ)
  → (p : Prefix Γ Δ)
  -------------------------------------------------------
  → lookup Γ (fromℕ< h) ≡ lookup Δ (fromℕ< (<≤-trans h (prefIncsLength p)))
lookupPref {i = Z} (s≤s h) (cons x p) = refl
lookupPref {i = S i} (s≤s h) (cons x p) = lookupPref h p

weaken : ∀ {Γ Δ M T}
  → Prefix Γ Δ
  → Γ ⊢ M ∶ T
  -----------
  → Δ ⊢ M ∶ T
weaken p ⊢b = ⊢b
weaken p ⊢n = ⊢n
weaken p (⊢v {h = h}) rewrite lookupPref h p = ⊢v {h = <≤-trans h (prefIncsLength p)}
weaken p (⊢|| h1 h2) = ⊢|| (weaken p h1) (weaken p h2)
weaken p (⊢&& h1 h2) = ⊢&& (weaken p h1) (weaken p h2)
weaken p (⊢! h) = ⊢! (weaken p h)
weaken p (⊢+ h1 h2) = ⊢+ (weaken p h1) (weaken p h2)
weaken p (⊢- h1 h2) = ⊢- (weaken p h1) (weaken p h2)
weaken p (⊢* h1 h2) = ⊢* (weaken p h1) (weaken p h2)
weaken p (⊢< h1 h2) = ⊢< (weaken p h1) (weaken p h2)
weaken p (⊢ite h1 h2 h3) = ⊢ite (weaken p h1) (weaken p h2) (weaken p h3)
weaken p (⊢l h) = ⊢l (weaken (cons _ p) h)
weaken p (⊢a h1 h2) = ⊢a (weaken p h1) (weaken p h2)
weaken p (⊢proj1 h) = ⊢proj1 (weaken p h)
weaken p (⊢proj2 h) = ⊢proj2 (weaken p h)
weaken p (⊢mkPair h1 h2) = ⊢mkPair (weaken p h1) (weaken p h2)
weaken p (⊢inl h) = ⊢inl (weaken p h)
weaken p (⊢inr h) = ⊢inr (weaken p h)
weaken p (⊢case h1 h2 h3) = ⊢case (weaken p h1) ((weaken (cons _ p) h2)) (weaken (cons _ p) h3)

weaken' : ∀ {Γ M T}
  → [] ⊢ M ∶ T
  → Γ ⊢ M ∶ T
weaken' wt = weaken nil wt

p' : ∀ {E : Expr} → substitute E (Var Z) ≡ shiftDown (substitute' Z (shiftUp E) (Var Z))
p' {E} = refl

p'' : ∀ {E : Expr} → shiftDown' Z (shiftUp' Z E) ≡ E
p'' {Var x} = {!refl!}
p'' {Lam x x₁ E} = {!!}
p'' {App E E₁} = {!!}
p'' {Ite E E₁ E₂} = {!!}
p'' {Inl E x} = {!!}
p'' {Inr E x} = {!!}
p'' {Case E x E₁ x₁ E₂} = {!!}
p'' {Const x} = {!!}
p'' {BinOp x E E₁} = {!!}
p'' {UnaryOp x E} = {!!}

p : ∀ {E : Expr} → substitute E (Var Z) ≡ E
p {E} rewrite p' {E} = {!!}

substPreserve : ∀ {Γ : TypingContext} {N V : Expr} {A B : TypeL}
  → [] ⊢ V ∶ A
  → (A ∷ Γ) ⊢ N ∶ B
  -----------------------
  → Γ ⊢ substitute V N ∶ B
substPreserve wt1 ⊢b = ⊢b
substPreserve wt1 ⊢n = ⊢n
substPreserve wt1 (⊢|| wt2 wt3) = ⊢|| (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢&& wt2 wt3) = ⊢&& (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢! wt2) = ⊢! (substPreserve wt1 wt2)
substPreserve wt1 (⊢+ wt2 wt3) = ⊢+ (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢- wt2 wt3) = ⊢- (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢* wt2 wt3) = ⊢* (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢< wt2 wt3) = ⊢< (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢ite wt2 wt3 wt4) = ⊢ite (substPreserve wt1 wt2) (substPreserve wt1 wt3) (substPreserve wt1 wt4)
substPreserve {Γ} {Var Z} {V} wt1 ⊢v rewrite p {V} = {!weaken' wt1!}
substPreserve {Γ} {Var (S i)} {V} wt1 ⊢v = {!!}
substPreserve wt1 (⊢l wt2) = {!!}
substPreserve wt1 (⊢a wt2 wt3) = ⊢a (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢proj1 wt2) = ⊢proj1 (substPreserve wt1 wt2)
substPreserve wt1 (⊢proj2 wt2) = ⊢proj2 (substPreserve wt1 wt2)
substPreserve wt1 (⊢mkPair wt2 wt3) = ⊢mkPair (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢inl wt2) = ⊢inl (substPreserve wt1 wt2)
substPreserve wt1 (⊢inr wt2) = ⊢inr (substPreserve wt1 wt2)
substPreserve wt1 (⊢case wt2 wt3 wt4) = {!!}
