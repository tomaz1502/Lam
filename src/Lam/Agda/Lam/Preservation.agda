module Lam.Preservation where

open import Haskell.Prelude using (True; False; if_then_else_; _==_)
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; _≢_; refl; sym)
open import Data.Empty using (⊥-elim; ⊥)
open import Data.List hiding (length; lookup; drop)
open import Data.Sum using (inj₁; inj₂)
open import Relation.Nullary using (¬_)

open import Data.Fin.Base hiding (_≤_; _<_; _+_)

open import Lam.Data
open import Lam.Nat
open import Lam.Evaluator
open import Lam.TypeChecker
open import Lam.FormalizationEvaluator
open import Lam.FormalizationTypeChecker
open import Lam.UtilsAgda

data Prefix {T : Set} : List T → List T → Set where
  nil : ∀ {xs} → Prefix [] xs
  cons : ∀ {xs ys} (x : T) → Prefix xs ys → Prefix (x ∷ xs) (x ∷ ys)

prefIncsLength : ∀ {A : Set} {xs ys : List A} → Prefix xs ys → (length xs) ≤ (length ys)
prefIncsLength nil = z≤
prefIncsLength (cons _ p) = s≤s (prefIncsLength p)

lookupPref : ∀ {A : Set} {Γ Δ : List A} {i : Nat}
  → (h1 : i < length Γ)
  → (h2 : i < length Δ)
  → (p : Prefix Γ Δ)
  -------------------------------------------------------
  → lookup Γ i h1 ≡ lookup Δ i h2
lookupPref {i = Z} h1 h2 (cons x p) = refl
lookupPref {i = S i} (s≤s h1) (s≤s h2) (cons x p) = lookupPref h1 h2 p

weaken : ∀ {Γ Δ M T}
  → Prefix Γ Δ
  → Γ ⊢ M ∶ T
  -----------
  → Δ ⊢ M ∶ T
weaken p ⊢b = ⊢b
weaken p ⊢n = ⊢n
weaken p (⊢v {h = h}) rewrite lookupPref h (<≤-trans h (prefIncsLength p)) p = ⊢v {h = <≤-trans h (prefIncsLength p)}
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

ltSuc : ∀ (x y : Nat) → ltNat x y ≡ False → ltNat (S x) y ≡ False
ltSuc Z Z h = refl
ltSuc (S x) Z h = refl
ltSuc (S x) (S y) h = ltSuc x y h

ltZ : ∀ {i} → ltNat i Z ≡ False
ltZ {Z} = refl
ltZ {S i} = refl

p : ∀ (i : Nat) (E : Expr) → shiftDown' i (shiftUp' i E) ≡ E
p i (Var x) with ltNat x i in r
... | False rewrite ltSuc x i r = refl
... | True rewrite r = refl
p i (Lam _ _ E) rewrite p (S i) E = refl
p i (App L M) rewrite p i L | p i M = refl
p i (Ite L M N) rewrite p i L | p i M | p i N = refl
p i (Inl E _) rewrite p i E = refl
p i (Inr E _) rewrite p i E = refl
p i (Case L _ M _ N) rewrite p i L | p (S i) M | p (S i) N = refl
p i (Const x) = refl
p i (BinOp x L M) rewrite p i L | p i M = refl
p i (UnaryOp x E) rewrite p i E = refl

p' : ∀ {V : Expr} → substitute V (Var Z) ≡ V
p' {V} rewrite p Z V = refl

shiftUpClose : ∀ {Γ} {V : Expr} {T : TypeL} {i : Nat}
  → Γ ⊢ V ∶ T
  → length Γ ≤ i
  ------------------
  → shiftUp' i V ≡ V
shiftUpClose ⊢b _ = refl
shiftUpClose ⊢n _ = refl
shiftUpClose {i = i} (⊢|| wt1 wt2) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h = refl
shiftUpClose {i = i} (⊢&& wt1 wt2) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h = refl
shiftUpClose {i = i} (⊢+ wt1 wt2) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h = refl
shiftUpClose {i = i} (⊢- wt1 wt2) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h = refl
shiftUpClose {i = i} (⊢* wt1 wt2) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h = refl
shiftUpClose {i = i} (⊢< wt1 wt2) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h = refl
shiftUpClose {i = i} (⊢! wt) h rewrite shiftUpClose {i = i} wt h = refl
shiftUpClose {i = i} (⊢ite wt1 wt2 wt3) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h | shiftUpClose {i = i} wt3 h = refl
shiftUpClose {i = i} (⊢l wt) h rewrite shiftUpClose {i = S i} wt (s≤s h) = refl
shiftUpClose {i = i} (⊢a wt1 wt2) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h = refl
shiftUpClose {i = i} (⊢proj1 wt) h rewrite shiftUpClose {i = i} wt h = refl
shiftUpClose {i = i} (⊢proj2 wt) h rewrite shiftUpClose {i = i} wt h = refl
shiftUpClose {i = i} (⊢mkPair wt1 wt2) h rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = i} wt2 h = refl
shiftUpClose {i = i} (⊢inl wt) h rewrite shiftUpClose {i = i} wt h = refl
shiftUpClose {i = i} (⊢inr wt) h rewrite shiftUpClose {i = i} wt h = refl
shiftUpClose {i = i} (⊢case wt1 wt2 wt3) h
  rewrite shiftUpClose {i = i} wt1 h | shiftUpClose {i = S i} wt2 (s≤s h) | shiftUpClose {i = S i} wt3 (s≤s h) = refl
shiftUpClose {Γ} {i = i} (⊢v {Γ} {j} {h'}) h with ltNat j i in r
... | True rewrite r = refl
... | False =
  let h1 = ≤-trans h' h in
  let h2 = lt->≤ {j} {i} r in
  let h3 = ≤<-trans h2 (s<Self j) in
  let h4 = <≤-trans h3 h1 in
  ⊥-elim (not<Self i h4)

insertEq1 : ∀ {A : TypeL} {Γ : TypingContext} {i j : Nat} {h1 : i < length Γ} {h2 : i < length (insert j A Γ)} → i < j → lookup Γ i h1 ≡ lookup (insert j A Γ) i h2
insertEq1 {A} {x ∷ Γ} {Z} {S j} {h1} {h2} i<j = refl
insertEq1 {A} {x ∷ Γ} {S i} {S j} {s≤s h1} {s≤s h2} (s≤s i<j) = insertEq1 i<j

insertEq2 : ∀ {A : TypeL} (Γ : TypingContext) (i j : Nat) (h1 : i < length Γ) (h2 : S i < length (insert j A Γ)) → j ≤ i → lookup Γ i h1 ≡ lookup (insert j A Γ) (S i) h2
insertEq2 (x ∷ Γ) Z (.Z) (s≤s h1) (s≤s h2) z≤ = refl
insertEq2 (x ∷ Γ) (S i) (.Z) (s≤s h1) (s≤s h2) z≤ = insertEq2 Γ i Z h1 h2 z≤
insertEq2 (x ∷ Γ) (S i) (S j) (s≤s h1) (s≤s h2) (s≤s j≤i) = insertEq2 Γ i j h1 h2 j≤i

isIt? : ∀ {Γ : TypingContext} {i j : Nat} → i < length Γ → i < j → i < length (remove j Γ)
isIt? {Γ} {i} {j} h1 h2 with decideLE (length Γ) j
... | (inj₁ jBig) rewrite removeLargeId j Γ jBig = h1
... | (inj₂ jSmall) = <≤-trans h2 (<s (<≤-trans (notLE->LT jSmall) (removeLength j Γ)))

removeEq1 : ∀ (Γ : TypingContext) (i j : Nat) (h1 : i < length Γ) (h2 : i < length (remove j Γ)) → i < j → lookup Γ i h1 ≡ lookup (remove j Γ) i h2
removeEq1 (x ∷ Γ) Z (S j) (s≤s h1) (s≤s h2) h = refl
removeEq1 (x ∷ Γ) (S i) (S j) (s≤s h1) (s≤s h2) (s≤s i<j) = removeEq1 Γ i j h1 h2 i<j

piLookup : ∀ {A : Set} (Γ : List A) (i : Nat) (h1 : i < length Γ) (h2 : i < length Γ) → lookup Γ i h1 ≡ lookup Γ i h2
piLookup (x ∷ g) Z h1 h2 = refl
piLookup (x ∷ g) (S i) (s≤s h1) (s≤s h2) = piLookup g i h1 h2


-- g = [0; 1; 2; 3; 4]
-- i = 3
-- j = 3
-- lookup (S i) = 3
-- lookup i (remove j) = 3

-- g = [0; 1; 2; 3; 4]
-- i = 3
-- j = 4
-- lookup (S i) = 3
-- lookup i (remove j) = 2

removeEq2 : ∀ (Γ : TypingContext) (i j : Nat) (h1 : S i < length Γ) (h2 : i < length (remove j Γ)) → (j ≤ i) → lookup Γ (S i) h1 ≡ lookup (remove j Γ) i h2
removeEq2 (x ∷ []) Z Z (s≤s ()) h2 j≤i
removeEq2 (x ∷ y ∷ g) Z Z (s≤s h1) h2 j≤i = refl
removeEq2 (x ∷ g) (S i) Z (s≤s h1) h2 z≤ = piLookup g (S i) h1 h2
removeEq2 (x ∷ g) (S i) (S j) (s≤s h1) (s≤s h2) (s≤s h3) = removeEq2 g i j h1 h2 h3

-- I know h : S i < length L
-- I know h2 : length L ≤ S (length (remove L))
-- by transitivity: S i < S (length (remove L))
-- I wanna conclude i < length (remove L)

shiftUpPreserve : ∀ {Γ : TypingContext} {V : Expr} {A T : TypeL} {i : Nat}
  → Γ ⊢ V ∶ T
  ----------------------------------
  → (insert i A Γ) ⊢ shiftUp' i V ∶ T
shiftUpPreserve ⊢b = ⊢b
shiftUpPreserve ⊢n = ⊢n
shiftUpPreserve (⊢|| wt2 wt3) = ⊢|| (shiftUpPreserve wt2) (shiftUpPreserve wt3)
shiftUpPreserve (⊢&& wt2 wt3) = ⊢&& (shiftUpPreserve wt2) (shiftUpPreserve wt3)
shiftUpPreserve (⊢! wt2) = ⊢! (shiftUpPreserve wt2)
shiftUpPreserve (⊢+ wt2 wt3) = ⊢+ (shiftUpPreserve wt2) (shiftUpPreserve wt3)
shiftUpPreserve (⊢- wt2 wt3) = ⊢- (shiftUpPreserve wt2) (shiftUpPreserve wt3)
shiftUpPreserve (⊢* wt2 wt3) = ⊢* (shiftUpPreserve wt2) (shiftUpPreserve wt3)
shiftUpPreserve (⊢< wt2 wt3) = ⊢< (shiftUpPreserve wt2) (shiftUpPreserve wt3)
shiftUpPreserve (⊢ite wt2 wt3 wt4) = ⊢ite (shiftUpPreserve wt2) (shiftUpPreserve wt3) (shiftUpPreserve wt4)
shiftUpPreserve {Γ} {V} {A} {T} {i} (⊢v {Γ} {j} {h}) with ltNat j i in r
... | True rewrite r | insertEq1 {A} {Γ} {j} {i} {h} {<-trans h insertIncLength} (lt->< r) = ⊢v
... | False rewrite r | insertEq2 {A} Γ j i h (<≤-trans (s< h) insertIncLength) (lt->≤ r) = ⊢v
shiftUpPreserve (⊢l wt) = ⊢l (shiftUpPreserve wt)
shiftUpPreserve (⊢a wt2 wt3) = ⊢a (shiftUpPreserve wt2) (shiftUpPreserve wt3)
shiftUpPreserve (⊢proj1 wt2) = ⊢proj1 (shiftUpPreserve wt2)
shiftUpPreserve (⊢proj2 wt2) = ⊢proj2 (shiftUpPreserve wt2)
shiftUpPreserve (⊢mkPair wt2 wt3) = ⊢mkPair (shiftUpPreserve wt2) (shiftUpPreserve wt3)
shiftUpPreserve (⊢inl wt2) = ⊢inl (shiftUpPreserve wt2)
shiftUpPreserve (⊢inr wt2) = ⊢inr (shiftUpPreserve wt2)
shiftUpPreserve (⊢case wt2 wt3 wt4) = ⊢case (shiftUpPreserve wt2) (shiftUpPreserve wt3) (shiftUpPreserve wt4)

data VarNotContained : Nat → Expr → Set where
  vn-v : ∀ {i c} → VarNotContained i (Const c)
  vn-binop : ∀ {i o e1 e2} → VarNotContained i e1 → VarNotContained i e2 → VarNotContained i (BinOp o e1 e2)
  vn-unop : ∀ {i o e} → VarNotContained i e → VarNotContained i (UnaryOp o e)
  vn-app : ∀ {i e1 e2} → VarNotContained i e1 → VarNotContained i e2 → VarNotContained i (App e1 e2)
  vn-ite : ∀ {i e1 e2 e3} → VarNotContained i e1 → VarNotContained i e2 → VarNotContained i e3 → VarNotContained i (Ite e1 e2 e3)
  vn-inl : ∀ {i e T} → VarNotContained i e → VarNotContained i (Inl e T)
  vn-inr : ∀ {i e T} → VarNotContained i e → VarNotContained i (Inr e T)
  vn-lam : ∀ {n ty body i} → VarNotContained (S i) body → VarNotContained i (Lam n ty body)
  vn-case : ∀ {n2 n3 e1 e2 e3 i} → VarNotContained i e1 → VarNotContained (S i) e2 → VarNotContained (S i) e3 → VarNotContained i (Case e1 n2 e2 n3 e3)
  vn-var : ∀ {i j} → (¬ (i ≡ j)) → VarNotContained i (Var j)

sucNeq : ∀ {i j : Nat} → ¬ (S i ≡ S j) → ¬ (i ≡ j)
sucNeq h1 refl = ⊥-elim (h1 refl)

shiftDownPreserve : ∀ {Γ : TypingContext} {V : Expr} {T : TypeL} {i : Nat}
  → Γ ⊢ V ∶ T
  → VarNotContained (S i) V
  ----------------------------------
  → (remove (S i) Γ) ⊢ shiftDown' (S i) V ∶ T
shiftDownPreserve ⊢b h = ⊢b
shiftDownPreserve ⊢n h = ⊢n
shiftDownPreserve (⊢|| wt2 wt3) (vn-binop vn1 vn2) = ⊢|| (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2)
shiftDownPreserve (⊢&& wt2 wt3) (vn-binop vn1 vn2) = ⊢&& (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2)
shiftDownPreserve (⊢! wt2) (vn-unop vn) = ⊢! (shiftDownPreserve wt2 vn)
shiftDownPreserve (⊢+ wt2 wt3) (vn-binop vn1 vn2) = ⊢+ (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2)
shiftDownPreserve (⊢- wt2 wt3) (vn-binop vn1 vn2) = ⊢- (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2)
shiftDownPreserve (⊢* wt2 wt3) (vn-binop vn1 vn2) = ⊢* (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2)
shiftDownPreserve (⊢< wt2 wt3) (vn-binop vn1 vn2) = ⊢< (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2)
shiftDownPreserve (⊢ite wt2 wt3 wt4) (vn-ite vn1 vn2 vn3) = ⊢ite (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2) (shiftDownPreserve wt4 vn3)
shiftDownPreserve {Γ} {V} {T} {i} (⊢v {Γ} {j} {h}) (vn-var vn) with ltNat j (S i) in r
shiftDownPreserve {Γ} {.(Var (S j'))} {.(lookup Γ (S j') h)} {i} (⊢v {Γ} {S j'} {h}) (vn-var vn) | False
  rewrite r | removeEq2 Γ j' (S i) h (sucLT (<≤-trans h (removeLength (S i) Γ))) (almostTrichotomy i j' (lt->≤ r) (sucNeq vn)) = ⊢v
... | True rewrite removeEq1 Γ j (S i) h (isIt? h (lt->< r)) (lt->< r) = ⊢v
shiftDownPreserve (⊢l wt) (vn-lam vn) = ⊢l (shiftDownPreserve wt vn)
shiftDownPreserve (⊢a wt2 wt3) (vn-app vn1 vn2) = ⊢a (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2)
shiftDownPreserve (⊢proj1 wt2) (vn-unop vn) = ⊢proj1 (shiftDownPreserve wt2 vn)
shiftDownPreserve (⊢proj2 wt2) (vn-unop vn) = ⊢proj2 (shiftDownPreserve wt2 vn)
shiftDownPreserve (⊢mkPair wt2 wt3) (vn-binop vn1 vn2) = ⊢mkPair (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2)
shiftDownPreserve (⊢inl wt2) (vn-inl vn) = ⊢inl (shiftDownPreserve wt2 vn)
shiftDownPreserve (⊢inr wt2) (vn-inr vn) = ⊢inr (shiftDownPreserve wt2 vn)
shiftDownPreserve (⊢case wt2 wt3 wt4) (vn-case vn1 vn2 vn3) = ⊢case (shiftDownPreserve wt2 vn1) (shiftDownPreserve wt3 vn2) (shiftDownPreserve wt4 vn3)

pr : ∀ {V body : Expr} {dom : TypeL} {n : Id} → substitute V (Lam n dom body) ≡ Lam n dom (shiftDown' (S Z) (substitute' (S Z) (shiftUp (shiftUp V)) body))
pr = refl

drop : {A : Set} → Nat → List A → List A
drop Z l = l
drop (S i) [] = []
drop (S i) (x ∷ l) = drop i l

iterShiftUp : Nat → Nat → Expr → Expr
iterShiftUp j Z e = e
iterShiftUp j (S i) e = iterShiftUp j i (shiftUp' j e)

iterShiftUpConst : ∀ {c : ConstT} {i j : Nat} → iterShiftUp j i (Const c) ≡ (Const c)
iterShiftUpConst {i = Z} = refl
iterShiftUpConst {i = S i} = iterShiftUpConst {i = i}

iterShiftUpBinOp : ∀ {o : BinOpT} {e1 e2 : Expr} {i j : Nat} → iterShiftUp j i (BinOp o e1 e2) ≡ (BinOp o (iterShiftUp j i e1) (iterShiftUp j i e2))
iterShiftUpBinOp {i = Z} = refl
iterShiftUpBinOp {o} {e1} {e2} {S i} {j} rewrite iterShiftUpBinOp {o} {shiftUp' j e1} {shiftUp' j e2} {i} {j} = refl

iterShiftUpUnaryOp : ∀ {o : UnaryOpT} {e : Expr} {i j : Nat} → iterShiftUp j i (UnaryOp o e) ≡ (UnaryOp o (iterShiftUp j i e))
iterShiftUpUnaryOp {i = Z} = refl
iterShiftUpUnaryOp {o} {e} {S i} {j} rewrite iterShiftUpUnaryOp {o} {shiftUp' j e} {i} {j} = refl

iterShiftUpApp : ∀ {e1 e2 : Expr} {i j : Nat} → iterShiftUp j i (App e1 e2) ≡ (App (iterShiftUp j i e1) (iterShiftUp j i e2))
iterShiftUpApp {i = Z} = refl
iterShiftUpApp {e1} {e2} {S i} {j} rewrite iterShiftUpApp {shiftUp' j e1} {shiftUp' j e2} {i} {j} = refl

iterShiftUpIte : ∀ {e1 e2 e3 : Expr} {i j : Nat} → iterShiftUp j i (Ite e1 e2 e3) ≡ (Ite (iterShiftUp j i e1) (iterShiftUp j i e2) (iterShiftUp j i e3))
iterShiftUpIte {i = Z} = refl
iterShiftUpIte {e1} {e2} {e3} {S i} {j} rewrite iterShiftUpIte {shiftUp' j e1} {shiftUp' j e2} {shiftUp' j e3} {i} {j} = refl

iterShiftUpInl : ∀ {e : Expr} {i j : Nat} {T : TypeL} → iterShiftUp j i (Inl e T) ≡ (Inl (iterShiftUp j i e) T)
iterShiftUpInl {i = Z} = refl
iterShiftUpInl {e} {S i} {j} {T} rewrite iterShiftUpInl {shiftUp' j e} {i} {j} {T} = refl

iterShiftUpInr : ∀ {e : Expr} {i j : Nat} {T : TypeL} → iterShiftUp j i (Inr e T) ≡ (Inr (iterShiftUp j i e) T)
iterShiftUpInr {i = Z} = refl
iterShiftUpInr {e} {S i} {j} {T} rewrite iterShiftUpInr {shiftUp' j e} {i} {j} {T} = refl

iterShiftUpVar1 : ∀ {i j k : Nat} → ltNat k j ≡ True →  iterShiftUp j i (Var k) ≡ Var k
iterShiftUpVar1 {Z} h = refl
iterShiftUpVar1 {S i} {j} {k} h rewrite h | iterShiftUpVar1 {i} {j} {k} h = refl

iterShiftUpVar2 : ∀ {i j k : Nat} → ltNat k j ≡ False →  iterShiftUp j i (Var k) ≡ Var (add i k)
iterShiftUpVar2 {Z} h = refl
iterShiftUpVar2 {S i} {j} {k} h rewrite h | iterShiftUpVar2 {i} {j} {k} h | sym (addSuc i k) = iterShiftUpVar2 {i} {j} {S k} (ltNatSuc k j h)

dropLookup : ∀ {A : Set} (L : List A) (i j : Nat) (h1 : j < length (drop i L)) (h2 : add i j < length L) → lookup (drop i L) j h1 ≡ lookup L (add i j) h2
dropLookup (x ∷ L) Z Z _ _ = refl
dropLookup (x ∷ L) Z (S j) h1 h2 = piLookup (x ∷ L) (S j) h1 h2
dropLookup (x ∷ L) (S i) Z h1 (s≤s h2) = dropLookup L i Z h1 h2
dropLookup (x ∷ L) (S i) (S j) h1 (s≤s h2) = dropLookup L i (S j) h1 h2

dropLength : ∀ {A : Set} (i j : Nat) (L : List A) → j < length (drop i L) → add i j < length L
dropLength Z Z (x ∷ L) h = h
dropLength Z (S j) (x ∷ L) (s≤s h) = s≤s h
dropLength (S i) j (x ∷ L) h = s≤s (dropLength i j L h)

lookupConcat : {A : Set} (L1 L2 L3 : List A) (i : Nat) (h1 : i < length L1) (h2 : i < length (L1 ++ L2)) (h3 : i < length (L1 ++ L3)) → lookup (L1 ++ L2) i h2 ≡ lookup (L1 ++ L3) i h3
lookupConcat (x ∷ L1) L2 L3 Z h1 h2 h3 = refl
lookupConcat (x ∷ L1) L2 L3 (S i) (s≤s h1) (s≤s h2) (s≤s h3) = lookupConcat L1 L2 L3 i h1 h2 h3

lookupDrop : ∀ {A : Set} (L : List A) (i : Nat) (h1 : i < length L) (h2 : Z < length (drop i L)) → lookup L i h1 ≡ lookup (drop i L) Z h2
lookupDrop (x ∷ L) Z (s≤s h1) h2 = refl
lookupDrop (x ∷ L) (S i) (s≤s h1) h2 = lookupDrop L i h1 h2

concat-[] : ∀ {A : Set} (L : List A) → L ++ [] ≡ L
concat-[] [] = refl
concat-[] (x ∷ L) = Eq.cong (λ z -> x ∷ z) (concat-[] L)

o : {A : Set} (L1 L2 : List A) (x : A) → S (length (L1 ++ L2)) ≡ length (L1 ++ x ∷ L2)
o [] L2 x = refl
o (x₁ ∷ L1) L2 x rewrite o L1 L2 x = refl

t : ∀ {i j k : Nat} → i < j → j ≡ k → i < k
t h refl = h

l : {A : Set} (x : A) (L1 L2 : List A) (i : Nat) (h1 : length L1 ≤ i) (h2 : S i < length (L1 ++ x ∷ L2)) (h3 : i < length (L1 ++ L2)) → lookup (L1 ++ x ∷ L2) (S i) h2 ≡ lookup (L1 ++ L2) i h3
l x [] [] Z h1 h2 ()
l x (x₁ ∷ L1) [] Z () h2 h3
l x L1 [] (S i) h1 h2 h3 rewrite concat-[] L1 = ⊥-elim (not<Self (length L1) (<≤-trans (≤<-trans h1 (s<Self (S i))) h3))
l x [] (x₁ ∷ L2) Z h1 (s≤s h2) h3 = refl
l x [] (x₁ ∷ L2) (S i) h1 (s≤s (s≤s h2)) (s≤s h3) = piLookup L2 i h2 h3
l x (x₂ ∷ L1) (x₁ ∷ L2) (S i) (s≤s h1) (s≤s h2) (s≤s h3) = l x L1 (x₁ ∷ L2) i h1 h2 h3

lookupConcat2 : {A : Set} (L1 L2 : List A) (i k : Nat) (h1 : length L1 ≤ k) (h2 : (add i k) < length (L1 ++ L2)) (h3 : k < length (L1 ++ (drop i L2)))
  → lookup (L1 ++ L2) (add i k) h2 ≡ lookup (L1 ++ (drop i L2)) k h3
lookupConcat2 [] [] Z Z h1 () h3
lookupConcat2 (x ∷ L1) [] Z Z () h2 h3
lookupConcat2 L1 [] Z (S k) h1 h2 h3 rewrite concat-[] L1 = piLookup L1 (S k) h2 h3
lookupConcat2 L1 [] (S i) k h1 h2 h3 rewrite concat-[] L1 = ⊥-elim (not<Self (length L1) (<≤-trans (≤<-trans h1 (s<Self k)) h3))
lookupConcat2 L1 (x ∷ L2) Z k h1 h2 h3 = piLookup (L1 ++ x ∷ L2) k h2 h3
lookupConcat2 [] (x ∷ L2) (S i) Z h1 h2 h3 rewrite addZero (S i) = lookupDrop (x ∷ L2) (S i) h2 h3
lookupConcat2 L1 (x ∷ L2) (S i) (S k) h1 h2 h3 rewrite l x L1 L2 (add i (S k)) (≤-trans h1 (addInc i (S k))) h2 (sucLT (t h2 (sym (o L1 L2 x)))) =
  lookupConcat2 L1 L2 i (S k) h1 (sucLT (t h2 (sym (o L1 L2 x)))) h3

++-length : ∀ {A : Set} (L1 L2 : List A) → length L1 ≤ length (L1 ++ L2)
++-length [] L2 = z≤
++-length (x ∷ L1) L2 = s≤s (++-length L1 L2)

dropIterWt : ∀ {Γ Δ : TypingContext} {i j : Nat} {E : Expr} {T : TypeL} {h : j ≡ length Δ} →
  (Δ ++ (drop i Γ)) ⊢ E ∶ T → (Δ ++ Γ) ⊢ iterShiftUp j i E ∶ T
dropIterWt {i = i} {j = j} (⊢b {b = b}) rewrite iterShiftUpConst {BoolC b} {i} {j} = ⊢b
dropIterWt {i = i} {j = j} (⊢n {z = z}) rewrite iterShiftUpConst {NumC z} {i} {j} = ⊢n
dropIterWt {i = i} {j = j} {h = h} (⊢|| {L = L} {M = M} wt1 wt2) rewrite iterShiftUpBinOp {Or} {L} {M} {i} {j} = ⊢|| (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢&& {L = L} {M = M} wt1 wt2) rewrite iterShiftUpBinOp {And} {L} {M} {i} {j} = ⊢&& (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢! {L = L} wt) rewrite iterShiftUpUnaryOp {Not} {L} {i} {j} = ⊢! (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢+ {L = L} {M = M} wt1 wt2) rewrite iterShiftUpBinOp {Add} {L} {M} {i} {j} = ⊢+ (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢- {L = L} {M = M} wt1 wt2) rewrite iterShiftUpBinOp {Sub} {L} {M} {i} {j} = ⊢- (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢* {L = L} {M = M} wt1 wt2) rewrite iterShiftUpBinOp {Mul} {L} {M} {i} {j} = ⊢* (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢< {L = L} {M = M} wt1 wt2) rewrite iterShiftUpBinOp {LtInt} {L} {M} {i} {j} = ⊢< (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢ite {b = b} {t = t} {e = e} wt1 wt2 wt3) rewrite iterShiftUpIte {b} {t} {e} {i} {j} =
  ⊢ite (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2) (dropIterWt {i = i} {j = j} {h = h} wt3)
dropIterWt {Γ} {Δ} {i} {j} {Var k} {T} {h} (⊢v {.(Δ ++ drop i Γ)} {k} {h2}) with ltNat k j in r
... | True rewrite iterShiftUpVar1 {i} {j} {k} r | h | piLookup (Δ ++ drop i Γ) k h2 (<≤-trans (lt->< r) (++-length Δ (drop i Γ))) | sym (lookupConcat Δ Γ (drop i Γ) k (lt->< r) (<≤-trans (lt->< r) (++-length Δ Γ)) (<≤-trans (lt->< r) (++-length Δ (drop i Γ)))) = ⊢v
... | False rewrite iterShiftUpVar2 {i} {j} {k} r rewrite h = {!lookupConcat2 Δ Γ i k (lt->≤ r)!}
dropIterWt (⊢l wt) = {!!}
dropIterWt {i = i} {j = j} {h = h} (⊢a {f = f} {x = x} wt1 wt2) rewrite iterShiftUpApp {f} {x} {i} {j} = ⊢a (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢proj1 {p = p} wt) rewrite iterShiftUpUnaryOp {Proj1} {p} {i} {j} = ⊢proj1 (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢proj2 {p = p} wt) rewrite iterShiftUpUnaryOp {Proj2} {p} {i} {j} = ⊢proj2 (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢mkPair {e1 = e1} {e2 = e2} wt1 wt2) rewrite iterShiftUpBinOp {MkPair} {e1} {e2} {i} {j} = ⊢mkPair (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢inl {_} {e} {t} {te} wt) rewrite iterShiftUpInl {e} {i} {j} {Sum te t} = ⊢inl (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢inr {_} {e} {t} {te} wt) rewrite iterShiftUpInr {e} {i} {j} {Sum t te} = ⊢inr (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt (⊢case wt wt₁ wt₂) = {!!}

substPreserve' : ∀ {Γ : TypingContext} {V N : Expr} {A B : TypeL} {i j : Nat} {h : i < length Γ}
  → (drop j Γ) ⊢ V ∶ A
  → lookup Γ i h ≡ A
  → Γ ⊢ N ∶ B
  --------------------------
  → Γ ⊢ substitute' i (iterShiftUp Z j V) N ∶ B
substPreserve' wtv ih ⊢b = ⊢b
substPreserve' wtv ih ⊢n = ⊢n
substPreserve' {j = j} wtv ih (⊢|| wtn wtn₁) = ⊢|| (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢&& wtn wtn₁) = ⊢&& (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢! wtn) = ⊢! (substPreserve' {j = j} wtv ih wtn)
substPreserve' {j = j} wtv ih (⊢+ wtn wtn₁) = ⊢+ (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢- wtn wtn₁) = ⊢- (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢* wtn wtn₁) = ⊢* (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢< wtn wtn₁) = ⊢< (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢ite wtn wtn₁ wtn₂) =
  ⊢ite (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁) (substPreserve' {j = j} wtv ih wtn₂)
substPreserve' {Γ} {V} {Var k} {A} {B} {i} {j} {h} wtv ih (⊢v {Γ} {k} {hk}) with (i == k) in r
... | True rewrite r | eq->≡ {i} {k} r | piLookup Γ k h hk | ih = {!!} -- dropIterWt {i = j} wtv
... | False rewrite r = ⊢v
substPreserve' {Γ} {V} {N} {A} {B} {i} {j} {h} wtv ih (⊢l {Γ} {n} {body} {dom} {codom} wtn) = {!!}
--  ⊢l (substPreserve' {dom ∷ Γ} {shiftUp V} {body} {A} {codom} {S i} {s≤s h} (shiftUpPreserve wtv) ih wtn)
substPreserve' {j = j} wtv ih (⊢a wtn wtn₁) = ⊢a (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢proj1 wtn) = ⊢proj1 (substPreserve' {j = j} wtv ih wtn)
substPreserve' {j = j} wtv ih (⊢proj2 wtn) = ⊢proj2 (substPreserve' {j = j} wtv ih wtn)
substPreserve' {j = j} wtv ih (⊢mkPair wtn wtn₁) = ⊢mkPair (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢inl wtn) = ⊢inl (substPreserve' {j = j} wtv ih wtn)
substPreserve' {j = j} wtv ih (⊢inr wtn) = ⊢inr (substPreserve' {j = j} wtv ih wtn)
substPreserve' {Γ} {V} {N} {A} {B} {i} {j} {h} wtv ih (⊢case {Γ} {e1} {e2} {e3} {t} {tl} {tr} wt1 wt2 wt3) = {!!}
--  ⊢case (substPreserve' wtv ih wt1) (substPreserve' {tl ∷ Γ} {shiftUp V} {e2} {A} {B} {S i} {s≤s h} (shiftUpPreserve wtv) ih wt2)
--    (substPreserve' {tr ∷ Γ} {shiftUp V} {e3} {A} {B} {S i} {s≤s h} (shiftUpPreserve wtv) ih wt3)

substPreserve : ∀ {Γ : TypingContext} {V N : Expr} {A B : TypeL}
  → Γ ⊢ V ∶ A
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
substPreserve {V = V} {Var Z} wt1 ⊢v rewrite p' {V} = wt1
substPreserve {V = V} {Var (S i')} _ (⊢v {_ ∷ Γ} {.(S i')} {h = s≤s h}) = ⊢v {Γ} {i'} {h}
substPreserve {g} {V} {Lam n dom body} {A} {Arrow dom codom} wt1 (⊢l wt2) = ⊢l {!!}
-- substPreserve {[]} {V} {Lam n dom body} {A} {Arrow dom codom} wt1 (⊢l wt2) rewrite shiftUpClose {i = Z} wt1 z≤ | shiftUpClose {i = Z} wt1 z≤  = ⊢l {!!}
-- substPreserve {x ∷ g} {V} {Lam n dom body} {A} {Arrow dom codom} wt1 (⊢l wt2) = ⊢l {!!}
substPreserve wt1 (⊢a wt2 wt3) = ⊢a (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢proj1 wt2) = ⊢proj1 (substPreserve wt1 wt2)
substPreserve wt1 (⊢proj2 wt2) = ⊢proj2 (substPreserve wt1 wt2)
substPreserve wt1 (⊢mkPair wt2 wt3) = ⊢mkPair (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢inl wt2) = ⊢inl (substPreserve wt1 wt2)
substPreserve wt1 (⊢inr wt2) = ⊢inr (substPreserve wt1 wt2)
substPreserve wt1 (⊢case wt2 wt3 wt4) = {!!}

preservation : ∀ {Γ : TypingContext} {L M : Expr} {T : TypeL}
  → Γ ⊢ L ∶ T
  → ReducesTo L M
  ----------
  → Γ ⊢ M ∶ T
preservation (⊢|| wt1 wt2) (r-binop1 red) = ⊢|| (preservation wt1 red) wt2
preservation (⊢|| wt1 wt2) (r-binop2 _ red) = ⊢|| wt1 (preservation wt2 red)
preservation (⊢|| wt wt₁) r-or = ⊢b
preservation (⊢&& wt1 wt2) (r-binop1 red) = ⊢&& (preservation wt1 red) wt2
preservation (⊢&& wt1 wt2) (r-binop2 _ red) = ⊢&& wt1 (preservation wt2 red)
preservation (⊢&& wt1 wt2) r-and = ⊢b
preservation (⊢! wt) (r-unop red) = ⊢! (preservation wt red)
preservation (⊢! wt) r-not = ⊢b
preservation (⊢+ wt1 wt2) (r-binop1 red) = ⊢+ (preservation wt1 red) wt2
preservation (⊢+ wt1 wt2) (r-binop2 _ red) = ⊢+ wt1 (preservation wt2 red)
preservation (⊢+ wt1 wt2) r-add = ⊢n
preservation (⊢- wt1 wt2) (r-binop1 red) = ⊢- (preservation wt1 red) wt2
preservation (⊢- wt1 wt2) (r-binop2 _ red) = ⊢- wt1 (preservation wt2 red)
preservation (⊢- wt1 wt2) r-sub = ⊢n
preservation (⊢* wt1 wt2) (r-binop1 red) = ⊢* (preservation wt1 red) wt2
preservation (⊢* wt1 wt2) (r-binop2 _ red) = ⊢* wt1 (preservation wt2 red)
preservation (⊢* wt1 wt2) r-mul = ⊢n
preservation (⊢< wt1 wt2) (r-binop1 red) = ⊢< (preservation wt1 red) wt2
preservation (⊢< wt1 wt2) (r-binop2 _ red) = ⊢< wt1 (preservation wt2 red)
preservation (⊢< wt1 wt2) r-ltInt = ⊢b
preservation (⊢ite wt1 wt2 wt3) r-ite-true = wt2
preservation (⊢ite wt1 wt2 wt3) r-ite-false = wt3
preservation (⊢ite wt1 wt2 wt3) (r-ite red) = ⊢ite (preservation wt1 red) wt2 wt3
preservation (⊢a wt1 wt2) (r-a red) = ⊢a (preservation wt1 red) wt2
preservation (⊢a wt1 wt2) (r-a' _ red) = ⊢a wt1 (preservation wt2 red)
preservation {Γ} {App (Lam nm dom body) L} {.(substitute L body)} {T} (⊢a (⊢l {dom = dom} wt1) wt2) (r-l nBody nL) = substPreserve {Γ} {L} {body} {dom} {T} wt2 wt1
preservation (⊢proj1 wt) (r-unop red) = ⊢proj1 (preservation wt red)
preservation (⊢proj1 (⊢mkPair wt _)) (r-proj1 _ _) = wt
preservation (⊢proj2 wt) (r-unop red) = ⊢proj2 (preservation wt red)
preservation (⊢proj2 (⊢mkPair _ wt2)) (r-proj2 _ _) = wt2
preservation (⊢mkPair wt1 wt2) (r-binop1 red) = ⊢mkPair (preservation wt1 red) wt2
preservation (⊢mkPair wt1 wt2) (r-binop2 _ red) = ⊢mkPair wt1 (preservation wt2 red)
preservation (⊢inl wt) (r-inl red) = ⊢inl (preservation wt red)
preservation (⊢inr wt) (r-inr red) = ⊢inr (preservation wt red)
preservation (⊢case wt1 wt2 wt3) (r-case1 red) = ⊢case (preservation wt1 red) wt2 wt3
preservation (⊢case wt1 wt2 wt3) (r-case2 x) = {!!}
preservation (⊢case wt1 wt2 wt3) (r-case3 x) = {!!}
preservation (⊢l wt) (r-l' red) = ⊢l (preservation wt red)


-- p : ∀ (i : Nat) (E : Expr) → shiftDown' i (shiftUp' i E) ≡ E
-- p i (Var x) with ltNat x i in r
-- ... | False rewrite ltSuc x i r = refl
-- ... | True rewrite r = refl
-- p i (Lam _ _ E) rewrite p (S i) E = refl
-- p i (App L M) rewrite p i L | p i M = refl
-- p i (Ite L M N) rewrite p i L | p i M | p i N = refl
-- p i (Inl E _) rewrite p i E = refl
-- p i (Inr E _) rewrite p i E = refl
-- p i (Case L _ M _ N) rewrite p i L | p (S i) M | p (S i) N = refl
-- p i (Const x) = refl
-- p i (BinOp x L M) rewrite p i L | p i M = refl
-- p i (UnaryOp x E) rewrite p i E = refl

-- ff : ∀ {Γ : TypingContext} {i : Nat} → 2 + (natToℕ i) ≤ suc (length Γ) → 1 + (natToℕ i) ≤ length Γ
-- ff (s≤s h) = h

-- pp : ∀ {V n ty body} → substitute V (Lam n ty body) ≡ shiftDown (substitute' Z (shiftUp V) (Lam n ty body))
-- pp = refl

-- ppp : ∀ {V n ty body} → substitute V (Lam n ty body) ≡ shiftDown (Lam n ty (substitute' (S Z) (shiftUp (shiftUp V)) body))
-- ppp = refl

-- data LT : Nat → Nat → Set where
--   z< : ∀ {i} → LT Z (S i)
--   s< : ∀ {i j} → LT i j → LT (S i) (S j)

-- data FV : Expr → Nat → Set where
--   m-a : ∀ {L M n} → FV L n → FV M n → FV (App L M) n
--   m-unop : ∀ {M n o} → FV M n → FV (UnaryOp o M) n
--   m-binop : ∀ {L M n o} → FV L n → FV M n → FV (BinOp o L M) n
--   m-inl : ∀ {ty M n} → FV M n → FV (Inl M ty) n
--   m-inr : ∀ {ty M n} → FV M n → FV (Inr M ty) n
--   m-const : ∀ {c i} → FV (Const c) i
--   m-ite : ∀ {L M N n} → FV L n → FV M n → FV N n → FV (Ite L M N) n
--   m-v : ∀ {i j} → LT i j → FV (Var i) j
--   m-l : ∀ {L i n ty} → FV L (S i) → FV (Lam n ty L) i
--   m-case : ∀ {id1 id2 L M N n} → FV L n → FV M (S n) → FV N (S n) → FV (Case L id1 M id2 N) n


-- gz : ∀ {i j} → ltNat i (ℕToNat j) ≡ False → suc (natToℕ i) ≤ j → ⊥
-- gz {Z} {zero} h1 ()
-- gz {Z} {suc j} () (s≤s h2)
-- gz {S i} {suc j} h1 (s≤s h2) = gz h1 h2

-- g3 : ∀ {i} → shiftUp (Var i) ≡ Var (S i)
-- g3 {i} rewrite gg {i} = refl

-- g2 : ∀ {i j} → LT i j → LT i (S j)
-- g2 z< = z<
-- g2 (s< h) = s< (g2 h)

-- g : ∀ {M i j} → FV M i → FV (shiftUp' j M) (S i)
-- g (m-a m m₁) = m-a (g m) (g m₁)
-- g (m-unop m) = m-unop (g m)
-- g (m-binop m m₁) = m-binop (g m) (g m₁)
-- g (m-inl m) = m-inl (g m)
-- g (m-inr m) = m-inr (g m)
-- g m-const = m-const
-- g (m-ite m m₁ m₂) = m-ite (g m) (g m₁) (g m₂)
-- g {Var i} {j} {k} (m-v x) rewrite g3 {i} with ltNat i k
-- ... | True = m-v (g2 x)
-- ... | False = m-v (s< x)
-- g (m-l m) = m-l (g m)
-- g (m-case h1 h2 h3) = m-case (g h1) (g h2) (g h3)

-- eqNotLT : ∀ {i j} → LT i j → eqNat j i ≢ True
-- eqNotLT {.Z} {.(S _)} z< = λ ()
-- eqNotLT {.(S _)} {.(S _)} (s< h) = eqNotLT h

-- fff : ∀ {Γ : TypingContext} {L M : Expr} {A B : TypeL} {i : Nat}
--   → [] ⊢ L ∶ A
--   → (A ∷ Γ) ⊢ M ∶ B
--   → FV M i
--   --------------------------
--   → Γ ⊢ substitute' i L M ∶ B
-- fff wt1 ⊢b m-const = ⊢b
-- fff wt1 ⊢n m-const = ⊢n
-- fff wt1 (⊢|| wt2 wt3) (m-binop h2 h3) = ⊢|| (fff wt1 wt2 h2) (fff wt1 wt3 h3)
-- fff wt1 (⊢&& wt2 wt3) (m-binop h2 h3) = ⊢&& (fff wt1 wt2 h2) (fff wt1 wt3 h3)
-- fff wt1 (⊢! wt2) (m-unop h) = ⊢! (fff wt1 wt2 h)
-- fff wt1 (⊢+ wt2 wt3) (m-binop h2 h3) = ⊢+ (fff wt1 wt2 h2) (fff wt1 wt3 h3)
-- fff wt1 (⊢- wt2 wt3) (m-binop h2 h3) = ⊢- (fff wt1 wt2 h2) (fff wt1 wt3 h3)
-- fff wt1 (⊢* wt2 wt3) (m-binop h2 h3) = ⊢* (fff wt1 wt2 h2) (fff wt1 wt3 h3)
-- fff wt1 (⊢< wt2 wt3) (m-binop h2 h3) = ⊢< (fff wt1 wt2 h2) (fff wt1 wt3 h3)
-- fff wt1 (⊢ite wt2 wt3 wt4) (m-ite h2 h3 h4) = ⊢ite (fff wt1 wt2 h2) (fff wt1 wt3 h3) (fff wt1 wt4 h4)
-- fff {Γ} {L} {Var i} {_} {_} {i'} wt1 (⊢v {A ∷ Γ} {i} {s≤s h}) (m-v {i} {i'} x) with eqNat i' i in r
-- ... | True = ⊥-elim (eqNotLT x r)
-- ... | False rewrite r = {!⊢v {Γ} {i} {h}!}
-- fff wt1 (⊢l wt2) (m-l h) = {!fff wt1 ? h!}
-- fff wt1 (⊢a wt2 wt3) (m-a h2 h3) = ⊢a (fff wt1 wt2 h2) (fff wt1 wt3 h3)
-- fff wt1 (⊢proj1 wt2) (m-unop h) = ⊢proj1 (fff wt1 wt2 h)
-- fff wt1 (⊢proj2 wt2) (m-unop h) = ⊢proj2 (fff wt1 wt2 h)
-- fff wt1 (⊢mkPair wt2 wt3) (m-binop h1 h2) = ⊢mkPair (fff wt1 wt2 h1) (fff wt1 wt3 h2)
-- fff wt1 (⊢inl wt2) (m-inl h) = ⊢inl (fff wt1 wt2 h)
-- fff wt1 (⊢inr wt2) (m-inr h) = ⊢inr (fff wt1 wt2 h)
-- fff wt1 (⊢case wt2 wt3 wt4) h = {!!}

-- wtShiftUp : ∀ {Γ : TypingContext} {V : Expr} {T : TypeL}
--   → Γ ⊢ V ∶ T
--   ------------------
--   → shiftUp' (ℕToNat (length Γ)) V ≡ V
-- wtShiftUp {Γ} {.(Const (BoolC _))} ⊢b = refl
-- wtShiftUp {Γ} {.(Const (NumC _))} ⊢n = refl
-- wtShiftUp {Γ} {.(BinOp Or _ _)} (⊢|| wt1 wt2) rewrite wtShiftUp wt1 | wtShiftUp wt2 = refl
-- wtShiftUp {Γ} {.(BinOp And _ _)} (⊢&& wt1 wt2) rewrite wtShiftUp wt1 | wtShiftUp wt2 = refl
-- wtShiftUp {Γ} {.(UnaryOp Not _)} (⊢! wt) rewrite wtShiftUp wt = refl
-- wtShiftUp {Γ} {.(BinOp Add _ _)} (⊢+ wt1 wt2) rewrite wtShiftUp wt1 | wtShiftUp wt2 = refl
-- wtShiftUp {Γ} {.(BinOp Sub _ _)} (⊢- wt1 wt2) rewrite wtShiftUp wt1 | wtShiftUp wt2 = refl
-- wtShiftUp {Γ} {.(BinOp Mul _ _)} (⊢* wt1 wt2) rewrite wtShiftUp wt1 | wtShiftUp wt2 = refl
-- wtShiftUp {Γ} {.(BinOp LtInt _ _)} (⊢< wt1 wt2) rewrite wtShiftUp wt1 | wtShiftUp wt2 = refl
-- wtShiftUp {Γ} {.(Ite _ _ _)} (⊢ite wt1 wt2 wt3) rewrite wtShiftUp wt1 | wtShiftUp wt2 | wtShiftUp wt3 = refl
-- wtShiftUp {Γ} {.(Lam _ _ _)} (⊢l wt) rewrite wtShiftUp wt = refl
-- wtShiftUp {Γ} {.(App _ _)} (⊢a wt1 wt2) rewrite wtShiftUp wt1 | wtShiftUp wt2 = refl
-- wtShiftUp {Γ} {.(UnaryOp Proj1 _)} (⊢proj1 wt) rewrite wtShiftUp wt = refl
-- wtShiftUp {Γ} {.(UnaryOp Proj2 _)} (⊢proj2 wt) rewrite wtShiftUp wt = refl
-- wtShiftUp {Γ} {.(BinOp MkPair _ _)} (⊢mkPair wt1 wt2) rewrite wtShiftUp wt1 | wtShiftUp wt2 = refl
-- wtShiftUp {Γ} {.(Inl _ (Sum _ _))} (⊢inl wt) rewrite wtShiftUp wt = refl
-- wtShiftUp {Γ} {.(Inr _ (Sum _ _))} (⊢inr wt) rewrite wtShiftUp wt = refl
-- wtShiftUp {Γ} {.(Case _ _ _ _ _)} (⊢case wt1 wt2 wt3) rewrite wtShiftUp wt1 | wtShiftUp wt2 | wtShiftUp wt3 = refl
-- wtShiftUp {Γ} {Var i} (⊢v {h = h}) with ltNat i (ℕToNat (length Γ)) in r
-- ... | True rewrite r = refl
-- ... | False = ⊥-elim (gz r h)


-- -- actually I think we need to consider an arbitrary context for V since we are reducing under lambdas
-- substPreserve : ∀ {Γ : TypingContext} {N V : Expr} {A B : TypeL}
--   → [] ⊢ V ∶ A
--   → (A ∷ Γ) ⊢ N ∶ B
--   -----------------------
--   → Γ ⊢ substitute V N ∶ B
-- substPreserve wt1 ⊢b = ⊢b
-- substPreserve wt1 ⊢n = ⊢n
-- substPreserve wt1 (⊢|| wt2 wt3) = ⊢|| (substPreserve wt1 wt2) (substPreserve wt1 wt3)
-- substPreserve wt1 (⊢&& wt2 wt3) = ⊢&& (substPreserve wt1 wt2) (substPreserve wt1 wt3)
-- substPreserve wt1 (⊢! wt2) = ⊢! (substPreserve wt1 wt2)
-- substPreserve wt1 (⊢+ wt2 wt3) = ⊢+ (substPreserve wt1 wt2) (substPreserve wt1 wt3)
-- substPreserve wt1 (⊢- wt2 wt3) = ⊢- (substPreserve wt1 wt2) (substPreserve wt1 wt3)
-- substPreserve wt1 (⊢* wt2 wt3) = ⊢* (substPreserve wt1 wt2) (substPreserve wt1 wt3)
-- substPreserve wt1 (⊢< wt2 wt3) = ⊢< (substPreserve wt1 wt2) (substPreserve wt1 wt3)
-- substPreserve wt1 (⊢ite wt2 wt3 wt4) = ⊢ite (substPreserve wt1 wt2) (substPreserve wt1 wt3) (substPreserve wt1 wt4)
-- substPreserve {Γ} {Var Z} {V} wt1 ⊢v rewrite p Z V = weaken' wt1
-- -- This is a pathological case that does not happen in practice, but the theorem holds anyway
-- substPreserve {Γ} {Var (S i)} {V} wt1 (⊢v {h = h}) = ⊢v {h = ff {Γ} {i} h}
-- substPreserve {Γ} {Lam n dom body} {V} {A} {Arrow dom codom} wt1 (⊢l {A ∷ Γ} {n} {body} {dom} {codom} wt2)
--   rewrite ppp {V} {n} {dom} {body} | wtShiftUp wt1 | wtShiftUp wt1 = ⊢l {!!}
-- substPreserve wt1 (⊢a wt2 wt3) = ⊢a (substPreserve wt1 wt2) (substPreserve wt1 wt3)
-- substPreserve wt1 (⊢proj1 wt2) = ⊢proj1 (substPreserve wt1 wt2)
-- substPreserve wt1 (⊢proj2 wt2) = ⊢proj2 (substPreserve wt1 wt2)
-- substPreserve wt1 (⊢mkPair wt2 wt3) = ⊢mkPair (substPreserve wt1 wt2) (substPreserve wt1 wt3)
-- substPreserve wt1 (⊢inl wt2) = ⊢inl (substPreserve wt1 wt2)
-- substPreserve wt1 (⊢inr wt2) = ⊢inr (substPreserve wt1 wt2)
-- substPreserve wt1 (⊢case wt2 wt3 wt4) = {!!}
