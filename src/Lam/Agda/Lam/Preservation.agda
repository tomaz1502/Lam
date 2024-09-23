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

removeEq2 : ∀ (Γ : TypingContext) (i j : Nat) (h1 : S i < length Γ) (h2 : i < length (remove j Γ)) → (j ≤ i) → lookup Γ (S i) h1 ≡ lookup (remove j Γ) i h2
removeEq2 (x ∷ []) Z Z (s≤s ()) h2 j≤i
removeEq2 (x ∷ y ∷ g) Z Z (s≤s h1) h2 j≤i = refl
removeEq2 (x ∷ g) (S i) Z (s≤s h1) h2 z≤ = piLookup g (S i) h1 h2
removeEq2 (x ∷ g) (S i) (S j) (s≤s h1) (s≤s h2) (s≤s h3) = removeEq2 g i j h1 h2 h3

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


t : ∀ {i j k : Nat} → i < j → j ≡ k → i < k
t h refl = h

varNotContainedShiftUp : ∀ (E : Expr) (j : Nat) → VarNotContained j (shiftUp' j E)
varNotContainedShiftUp (Var x) j with ltNat x j in r
... | True rewrite r = vn-var λ z -> not<Self x (t (lt->< r) z)
... | False rewrite r = vn-var λ z -> not<Self j (t (≤<-trans (lt->≤ r) sucLT3) (sym z))
varNotContainedShiftUp (Lam x x₁ E) j = vn-lam (varNotContainedShiftUp E (S j))
varNotContainedShiftUp (App E E₁) j = vn-app (varNotContainedShiftUp E j) (varNotContainedShiftUp E₁ j)
varNotContainedShiftUp (Ite E E₁ E₂) j = vn-ite (varNotContainedShiftUp E j) (varNotContainedShiftUp E₁ j)
                                          (varNotContainedShiftUp E₂ j)
varNotContainedShiftUp (Inl E x) j = vn-inl (varNotContainedShiftUp E j)
varNotContainedShiftUp (Inr E x) j = vn-inr (varNotContainedShiftUp E j)
varNotContainedShiftUp (Case E x E₁ x₁ E₂) j = vn-case (varNotContainedShiftUp E j)
                                                (varNotContainedShiftUp E₁ (S j)) (varNotContainedShiftUp E₂ (S j))
varNotContainedShiftUp (Const x) j = vn-v
varNotContainedShiftUp (BinOp x E E₁) j = vn-binop (varNotContainedShiftUp E j) (varNotContainedShiftUp E₁ j)
varNotContainedShiftUp (UnaryOp x E) j = vn-unop (varNotContainedShiftUp E j)

varNotContainedImplies : ∀ (E : Expr) (i : Nat) → VarNotContained i E → (VarNotContained (S i) (shiftUp' i E))
varNotContainedImplies (Var x) i (vn-var h) with ltNat x i in r
... | True rewrite r = vn-var λ z -> not<Self x (<-trans (lt->< r) (t sucLT3 z))
... | False rewrite r = vn-var λ z -> h (eqSuc z)
varNotContainedImplies (Lam x x₁ E) i (vn-lam h) = vn-lam (varNotContainedImplies E (S i) h)
varNotContainedImplies (App E E₁) i (vn-app h h₁) = vn-app (varNotContainedImplies E i h)
                                                     (varNotContainedImplies E₁ i h₁)
varNotContainedImplies (Ite E E₁ E₂) i (vn-ite h h₁ h₂) = vn-ite (varNotContainedImplies E i h)
                                                           (varNotContainedImplies E₁ i h₁) (varNotContainedImplies E₂ i h₂)
varNotContainedImplies (Inl E x) i (vn-inl h) = vn-inl (varNotContainedImplies E i h)
varNotContainedImplies (Inr E x) i (vn-inr h) = vn-inr (varNotContainedImplies E i h)
varNotContainedImplies (Case E x E₁ x₁ E₂) i (vn-case h h₁ h₂) = vn-case (varNotContainedImplies E i h)
                                                                  (varNotContainedImplies E₁ (S i) h₁)
                                                                  (varNotContainedImplies E₂ (S i) h₂)
varNotContainedImplies (Const x) i h = vn-v
varNotContainedImplies (BinOp x E E₁) i (vn-binop h h₁) = vn-binop (varNotContainedImplies E i h)
                                                           (varNotContainedImplies E₁ i h₁)
varNotContainedImplies (UnaryOp x E) i (vn-unop h) = vn-unop (varNotContainedImplies E i h)

varNotContainedImplies2 : ∀ (E : Expr) (i j : Nat) → j ≤ S i → VarNotContained i E → (VarNotContained (S i) (shiftUp' j E))
varNotContainedImplies2 (Const _) i j h1 vn-v = vn-v
varNotContainedImplies2 (BinOp _ e1 e2) i j h1 (vn-binop h2 h3) = vn-binop (varNotContainedImplies2 e1 i j h1 h2)
                                                                  (varNotContainedImplies2 e2 i j h1 h3)
varNotContainedImplies2 (UnaryOp o e) i j h1 (vn-unop h2) = vn-unop (varNotContainedImplies2 e i j h1 h2)
varNotContainedImplies2 (App e1 e2) i j h1 (vn-app h2 h3) = vn-app (varNotContainedImplies2 e1 i j h1 h2)
                                                             (varNotContainedImplies2 e2 i j h1 h3)
varNotContainedImplies2 (Ite b t e) i j h1 (vn-ite h2 h3 h4) = vn-ite (varNotContainedImplies2 b i j h1 h2)
                                                                (varNotContainedImplies2 t i j h1 h3)
                                                                (varNotContainedImplies2 e i j h1 h4)
varNotContainedImplies2 (Inl e t) i j h1 (vn-inl h2) = vn-inl (varNotContainedImplies2 e i j h1 h2)
varNotContainedImplies2 (Inr e t) i j h1 (vn-inr h2) = vn-inr (varNotContainedImplies2 e i j h1 h2)
varNotContainedImplies2 (Lam _ _ E) i j h1 (vn-lam h2) = vn-lam (varNotContainedImplies2 E (S i) (S j) (s≤s h1) h2)
varNotContainedImplies2 (Case e1 _ e2 _ e3) i j h1 (vn-case h2 h3 h4) = vn-case (varNotContainedImplies2 e1 i j h1 h2)
                                                                         (varNotContainedImplies2 e2 (S i) (S j) (s≤s h1) h3)
                                                                         (varNotContainedImplies2 e3 (S i) (S j) (s≤s h1) h4)
varNotContainedImplies2 (Var k) i j h1 (vn-var x) with ltNat k j in r
... | True rewrite r = vn-var (λ z -> not<Self k (t (<≤-trans (lt->< r) h1) z))
... | False rewrite r = vn-var (λ z -> ⊥-elim (x (eqSuc z)))

iterShiftUp : Nat → Nat → Expr → Expr
iterShiftUp j Z e = e
iterShiftUp j (S i) e = iterShiftUp j i (shiftUp' j e)

iterShiftUpSuc : ∀ {V : Expr} {j : Nat} → shiftUp (iterShiftUp Z j (V)) ≡ iterShiftUp Z (S j) V
iterShiftUpSuc {V} {Z} = refl
iterShiftUpSuc {V} {S j} rewrite iterShiftUpSuc {shiftUp V} {j} = refl

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

drop : {A : Set} → Nat → List A → List A
drop Z l = l
drop (S i) [] = []
drop (S i) (x ∷ l) = drop i l

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

iterShiftUpLam : ∀ {i j : Nat} {e : Expr} {T : TypeL} {n : Id} → iterShiftUp j i (Lam n T e) ≡ Lam n T (iterShiftUp (S j) i e)
iterShiftUpLam {i = Z} = refl
iterShiftUpLam {i = S i} {j} {e} {T} {n} rewrite iterShiftUpLam {i} {j} {shiftUp' (S j) e} {T} {n} = refl

iterShiftUpCase : ∀ {i j : Nat} {e1 e2 e3 : Expr} {n2 n3 : Id} → iterShiftUp j i (Case e1 n2 e2 n3 e3) ≡ Case (iterShiftUp j i e1) n2 (iterShiftUp (S j) i e2) n3 (iterShiftUp (S j) i e3)
iterShiftUpCase {i = Z} = refl
iterShiftUpCase {i = S i} {j} {e1} {e2} {e3} {n2} {n3} rewrite iterShiftUpCase {i} {j} {shiftUp' j e1} {shiftUp' (S j) e2} {shiftUp' (S j) e3} {n2} {n3} = refl

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

o : {A : Set} (L1 L2 : List A) (x : A) → S (length (L1 ++ L2)) ≡ length (L1 ++ x ∷ L2)
o [] L2 x = refl
o (x₁ ∷ L1) L2 x rewrite o L1 L2 x = refl

q : ∀ {A : Set} (x : A) (L1 L2 : List A) → length (L1 ++ x ∷ L2) ≡ S (length (L1 ++ L2))
q x [] L2 = refl
q x (x₁ ∷ L1) L2 rewrite q x L1 L2 = refl

concat-[] : ∀ {A : Set} (L : List A) → L ++ [] ≡ L
concat-[] [] = refl
concat-[] (x ∷ L) = Eq.cong (λ z -> x ∷ z) (concat-[] L)

u : ∀ {A : Set} (x : A) (i k : Nat) (L1 L2 : List A) → i < length L2 → k ≤ length (L1 ++ drop i L2) → k < length (L1 ++ drop i (x ∷ L2))
u x Z k L1 (x₁ ∷ L2) h1 h2 rewrite q x L1 (x₁ ∷ L2) = s≤s h2
u x (S i) k L1 (x₁ ∷ L2) (s≤s h1) h2 = u x₁ i k L1 L2 h1 h2

lengthConcatDrop : ∀ {A : Set} (i k : Nat) (L1 L2 : List A) → add i k < length (L1 ++ L2) → k < length (L1 ++ (drop i L2))
lengthConcatDrop Z Z [] (x ∷ L2) (s≤s h) = s≤s h
lengthConcatDrop Z (S k) [] (x ∷ L2) (s≤s h) = s≤s h
lengthConcatDrop Z k (x ∷ L1) L2 (s≤s h) = s≤s h
lengthConcatDrop (S i) k (x ∷ L1) [] (s≤s h) rewrite concat-[] (x ∷ L1) | concat-[] L1 = s≤s (≤-trans (≤-trans (addInc i k) (s≤Self (add i k))) h)
lengthConcatDrop (S i) k L1 (x₁ ∷ L2) h = lengthConcatDrop i k L1 L2 (sucLT (t h (q x₁ L1 L2)))

lengthConcatDrop2 : ∀ {A : Set} (i k : Nat) (L1 L2 : List A) → i < length L2 → k < length (L1 ++ (drop i L2)) → add i k < length (L1 ++ L2)
lengthConcatDrop2 Z k L1 L2 _ h = h
lengthConcatDrop2 (S i) k [] L2 _ h = dropLength (S i) k L2 h
lengthConcatDrop2 (S i) k (x ∷ L1) (x₁ ∷ L2) (s≤s h) (s≤s h2) =
  (s≤s (lengthConcatDrop2 i k L1 (x₁ ∷ L2) (<-trans h (s<Self (length L2))) (u x₁ i k L1 L2 h h2)))

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

v2 : ∀ {A : Set} (i k : Nat) (L1 L2 : List A) → length L1 ≤ k → S k ≤ length (L1 ++ drop i L2) → ¬ (drop i L2 ≡ [])
v2 Z k L1 [] h1 h2 refl rewrite concat-[] L1 = not<Self (length L1) (<≤-trans (≤<-trans h1 (s<Self k)) h2)
v2 (S i) k L1 [] h1 h2 h3 rewrite concat-[] L1 = not<Self (length L1) (<≤-trans (≤<-trans h1 (s<Self k)) h2)
v2 (S i) k L1 (x ∷ L2) h1 h2 h3 rewrite h3 | concat-[] L1 = not<Self (length L1) (<≤-trans (≤<-trans h1 (s<Self k)) h2)

v3 : ∀ {A : Set} (i : Nat) (L : List A) → ¬ (drop i L ≡ []) → i < length L
v3 Z [] h = ⊥-elim (h refl)
v3 Z (x ∷ L) h = s≤s z≤
v3 (S i) [] h = ⊥-elim (h refl)
v3 (S i) (x ∷ L) h = s≤s (v3 i L h)

v : ∀ {A : Set} (i k : Nat) (L1 L2 : List A) → length L1 ≤ k → S k ≤ length (L1 ++ drop i L2) → i < length L2
v i k L1 L2 h1 h2 =
  let z = v2 i k L1 L2 h1 h2 in
  v3 i L2 z

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
... | False rewrite iterShiftUpVar2 {i} {j} {k} r rewrite h | sym (lookupConcat2 Δ Γ i k (lt->≤ r) (lengthConcatDrop2 i k Δ Γ (v i k Δ Γ (lt->≤ r) h2) h2) h2) = ⊢v
dropIterWt {i = i} {j = j} {h = h} (⊢l {_} {n} {e} {dom} {codom} wt) rewrite iterShiftUpLam {i} {j} {e} {dom} {n} = ⊢l (dropIterWt {i = i} {j = (S j)} {h = Eq.cong S h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢a {f = f} {x = x} wt1 wt2) rewrite iterShiftUpApp {f} {x} {i} {j} = ⊢a (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢proj1 {p = p} wt) rewrite iterShiftUpUnaryOp {Proj1} {p} {i} {j} = ⊢proj1 (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢proj2 {p = p} wt) rewrite iterShiftUpUnaryOp {Proj2} {p} {i} {j} = ⊢proj2 (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢mkPair {e1 = e1} {e2 = e2} wt1 wt2) rewrite iterShiftUpBinOp {MkPair} {e1} {e2} {i} {j} = ⊢mkPair (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = j} {h = h} wt2)
dropIterWt {i = i} {j = j} {h = h} (⊢inl {_} {e} {t} {te} wt) rewrite iterShiftUpInl {e} {i} {j} {Sum te t} = ⊢inl (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢inr {_} {e} {t} {te} wt) rewrite iterShiftUpInr {e} {i} {j} {Sum t te} = ⊢inr (dropIterWt {i = i} {j = j} {h = h} wt)
dropIterWt {i = i} {j = j} {h = h} (⊢case {_} {e1} {e2} {e3} {t} {tl} {tr} {id2} {id3} wt1 wt2 wt3)
  rewrite iterShiftUpCase {i} {j} {e1} {e2} {e3} {id2} {id3} = ⊢case (dropIterWt {i = i} {j = j} {h = h} wt1) (dropIterWt {i = i} {j = (S j)} {h = Eq.cong S h} wt2) (dropIterWt {i = i} {j = (S j)} {h = Eq.cong S h} wt3)

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
... | True rewrite r | eq->≡ {i} {k} r | piLookup Γ k h hk | ih = dropIterWt {i = j} {h = refl} wtv
... | False rewrite r = ⊢v
substPreserve' {Γ} {V} {N} {A} {B} {i} {j} {h} wtv ih (⊢l {Γ} {n} {body} {dom} {codom} wtn) rewrite iterShiftUpSuc {V} {j} =
  ⊢l (substPreserve' {dom ∷ Γ} {V} {body} {A} {codom} {S i} {S j} {s≤s h} wtv ih wtn)
substPreserve' {j = j} wtv ih (⊢a wtn wtn₁) = ⊢a (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢proj1 wtn) = ⊢proj1 (substPreserve' {j = j} wtv ih wtn)
substPreserve' {j = j} wtv ih (⊢proj2 wtn) = ⊢proj2 (substPreserve' {j = j} wtv ih wtn)
substPreserve' {j = j} wtv ih (⊢mkPair wtn wtn₁) = ⊢mkPair (substPreserve' {j = j} wtv ih wtn) (substPreserve' {j = j} wtv ih wtn₁)
substPreserve' {j = j} wtv ih (⊢inl wtn) = ⊢inl (substPreserve' {j = j} wtv ih wtn)
substPreserve' {j = j} wtv ih (⊢inr wtn) = ⊢inr (substPreserve' {j = j} wtv ih wtn)
substPreserve' {Γ} {V} {N} {A} {B} {i} {j} {h} wtv ih (⊢case {Γ} {e1} {e2} {e3} {t} {tl} {tr} wt1 wt2 wt3) rewrite iterShiftUpSuc {V} {j} =
  ⊢case (substPreserve' {j = j} wtv ih wt1) (substPreserve' {tl ∷ Γ} {V} {e2} {A} {t} {S i} {S j} {s≤s h} wtv ih wt2) (substPreserve' {tr ∷ Γ} {V} {e3} {A} {t} {S i} {S j} {s≤s h} wtv ih wt3)

le : ∀ (V : Expr) → VarNotContained (S Z) (iterShiftUp Z (S (S Z)) V)
le V rewrite iterShiftUpSuc {V} {S Z} = varNotContainedImplies (shiftUp V) Z (varNotContainedShiftUp V Z)

eqSelf : ∀ (i : Nat) → (i == i) ≡ True
eqSelf Z = refl
eqSelf (S i) = eqSelf i

abs : ¬ (True ≡ False)
abs ()

eq->not≡ : ∀ (i j : Nat) → ((i == j) ≡ False) → ¬ (i ≡ j)
eq->not≡ i .i h refl = abs (Eq.trans (sym (eqSelf i)) h)

le2 : ∀ (V N : Expr) (i : Nat) → VarNotContained i V → VarNotContained i (substitute' i V N)
le2 V (Var x) i h with (i == x) in r
... | True rewrite r = h
... | False rewrite r = vn-var λ z -> eq->not≡ i x r z
le2 (Var y) (Lam x x₁ N) i (vn-var x₂) rewrite ltZ {y} = vn-lam (le2 (Var (S y)) N (S i) (vn-var λ z -> x₂ (eqSuc z)))
le2 (Lam x₂ x₃ V) (Lam x x₁ N) i (vn-lam h) = vn-lam (le2 (shiftUp (Lam x₂ x₃ V)) N (S i) (vn-lam (varNotContainedImplies2 V (S i) (S Z) (s≤s z≤) h)))
le2 (App V V₁) (Lam x x₁ N) i h = vn-lam (le2 (shiftUp (App V V₁)) N (S i) (varNotContainedImplies2 (App V V₁) i Z z≤ h))
le2 (Ite V V₁ V₂) (Lam x x₁ N) i h = vn-lam (le2 (shiftUp (Ite V V₁ V₂)) N (S i) (varNotContainedImplies2 (Ite V V₁ V₂) i Z z≤ h))
le2 (Inl V x₂) (Lam x x₁ N) i h = vn-lam (le2 (shiftUp (Inl V x₂)) N (S i) (varNotContainedImplies2 (Inl V x₂) i Z z≤ h))
le2 (Inr V x₂) (Lam x x₁ N) i h = vn-lam (le2 (shiftUp (Inr V x₂)) N (S i) (varNotContainedImplies2 (Inr V x₂) i Z z≤ h))
le2 (Case V x₂ V₁ x₃ V₂) (Lam x x₁ N) i (vn-case h1 h2 h3) = vn-lam (le2 (shiftUp (Case V x₂ V₁ x₃ V₂)) N (S i) (vn-case (varNotContainedImplies2 V i Z z≤ h1) (varNotContainedImplies2 V₁ (S i) (S Z) (s≤s z≤) h2) (varNotContainedImplies2 V₂ (S i) (S Z) (s≤s z≤) h3)))
le2 (Const x₂) (Lam x x₁ N) i vn-v = vn-lam (le2 (Const x₂) N (S i) vn-v)
le2 (BinOp x₂ V V₁) (Lam x x₁ N) i h = vn-lam (le2 (shiftUp (BinOp x₂ V V₁)) N (S i) (varNotContainedImplies2 (BinOp x₂ V V₁) i Z z≤ h))
le2 (UnaryOp x₂ V) (Lam x x₁ N) i (vn-unop h) = vn-lam (le2 (shiftUp (UnaryOp x₂ V)) N (S i) (varNotContainedImplies2 (UnaryOp x₂ V) i Z z≤ (vn-unop h)))
le2 V (App N N₁) i h = vn-app (le2 V N i h) (le2 V N₁ i h)
le2 V (Ite N N₁ N₂) i h = vn-ite (le2 V N i h) (le2 V N₁ i h) (le2 V N₂ i h)
le2 V (Inl N x) i h = vn-inl (le2 V N i h)
le2 V (Inr N x) i h = vn-inr (le2 V N i h)
le2 (Const x₂) (Case N x N₁ x₁ N₂) i vn-v = vn-case (le2 (Const x₂) N i vn-v) (le2 (shiftUp (Const x₂)) N₁ (S i) vn-v) ((le2 (shiftUp (Const x₂)) N₂ (S i) vn-v))
le2 (BinOp o e1 e2) (Case N x N₁ x₁ N₂) i h = vn-case (le2 (BinOp o e1 e2) N i h) (le2 (shiftUp (BinOp o e1 e2)) N₁ (S i) (varNotContainedImplies2 (BinOp o e1 e2) i Z z≤ h)) ((le2 (shiftUp (BinOp o e1 e2)) N₂ (S i) (varNotContainedImplies2 (BinOp o e1 e2) i Z z≤ h)))
le2 (UnaryOp o e) (Case N x N₁ x₁ N₂) i (vn-unop h) = vn-case (le2 (UnaryOp o e) N i (vn-unop h)) (le2 (shiftUp (UnaryOp o e)) N₁ (S i) (varNotContainedImplies2 (UnaryOp o e) i Z z≤ (vn-unop h))) ((le2 (shiftUp (UnaryOp o e)) N₂ (S i) (varNotContainedImplies2 (UnaryOp o e) i Z z≤ (vn-unop h))))
le2 (App e1 e2) (Case N x N₁ x₁ N₂) i h = vn-case (le2 (App e1 e2) N i h) (le2 (shiftUp (App e1 e2)) N₁ (S i) (varNotContainedImplies2 (App e1 e2) i Z z≤ h)) ((le2 (shiftUp (App e1 e2)) N₂ (S i) (varNotContainedImplies2 (App e1 e2) i Z z≤ h)))
le2 (Ite e1 e2 e3) (Case N x N₁ x₁ N₂) i h = vn-case (le2 (Ite e1 e2 e3) N i h) (le2 (shiftUp (Ite e1 e2 e3)) N₁ (S i) (varNotContainedImplies2 (Ite e1 e2 e3) i Z z≤ h)) ((le2 (shiftUp (Ite e1 e2 e3)) N₂ (S i) (varNotContainedImplies2 (Ite e1 e2 e3) i Z z≤ h)))
le2 (Inl e t) (Case N x N₁ x₁ N₂) i h = vn-case (le2 (Inl e t) N i h) (le2 (shiftUp (Inl e t)) N₁ (S i) (varNotContainedImplies2 (Inl e t) i Z z≤ h)) ((le2 (shiftUp (Inl e t)) N₂ (S i) (varNotContainedImplies2 (Inl e t) i Z z≤ h)))
le2 (Inr e t) (Case N x N₁ x₁ N₂) i h = vn-case (le2 (Inr e t) N i h) (le2 (shiftUp (Inr e t)) N₁ (S i) (varNotContainedImplies2 (Inr e t) i Z z≤ h)) ((le2 (shiftUp (Inr e t)) N₂ (S i) (varNotContainedImplies2 (Inr e t) i Z z≤ h)))
le2 (Lam n ty b) (Case N x N₁ x₁ N₂) i h = vn-case (le2 (Lam n ty b) N i h) (le2 (shiftUp (Lam n ty b)) N₁ (S i) (varNotContainedImplies2 (Lam n ty b) i Z z≤ h)) ((le2 (shiftUp (Lam n ty b)) N₂ (S i) (varNotContainedImplies2 (Lam n ty b) i Z z≤ h)))
le2 (Case E1 id2 E2 id3 E3) (Case N x N₁ x₁ N₂) i h = vn-case (le2 (Case E1 id2 E2 id3 E3) N i h) (le2 (shiftUp (Case E1 id2 E2 id3 E3)) N₁ (S i) (varNotContainedImplies2 (Case E1 id2 E2 id3 E3) i Z z≤ h)) ((le2 (shiftUp (Case E1 id2 E2 id3 E3)) N₂ (S i) (varNotContainedImplies2 (Case E1 id2 E2 id3 E3) i Z z≤ h)))
le2 (Var z) (Case N x N₁ x₁ N₂) i (vn-var x₂) with (i == z) in r
... | True rewrite r | ltZ {z} = ⊥-elim (x₂ (eq->≡ r))
... | False rewrite ltZ {z} = vn-case (le2 (Var z) N i (vn-var x₂)) (le2 (Var (S z)) N₁ (S i) (vn-var λ z -> x₂ (eqSuc z))) ((le2 (Var (S z)) N₂ (S i) (vn-var λ z -> x₂ (eqSuc z))))
le2 V (Const x) i h = vn-v
le2 V (BinOp x N N₁) i h = vn-binop (le2 V N i h) (le2 V N₁ i h)
le2 V (UnaryOp x N) i h = vn-unop (le2 V N i h)

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
substPreserve {g} {V} {Lam n dom body} {A} {Arrow dom codom} wt1 (⊢l wt2) =
  let key = substPreserve' {dom ∷ A ∷ g} {V} {body} {A} {codom} {S Z} {S (S Z)} {s≤s (s≤s z≤)} wt1 refl wt2 in
  ⊢l (shiftDownPreserve {i = Z} key (le2 (iterShiftUp Z (S (S Z)) V) body (S Z) (le V)))
substPreserve wt1 (⊢a wt2 wt3) = ⊢a (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢proj1 wt2) = ⊢proj1 (substPreserve wt1 wt2)
substPreserve wt1 (⊢proj2 wt2) = ⊢proj2 (substPreserve wt1 wt2)
substPreserve wt1 (⊢mkPair wt2 wt3) = ⊢mkPair (substPreserve wt1 wt2) (substPreserve wt1 wt3)
substPreserve wt1 (⊢inl wt2) = ⊢inl (substPreserve wt1 wt2)
substPreserve wt1 (⊢inr wt2) = ⊢inr (substPreserve wt1 wt2)
substPreserve {g} {V} {Case e1 id2 e2 id3 e3} {A} {B} wt1 (⊢case {tl = tl} {tr = tr} wt2 wt3 wt4) =
  let keyL = substPreserve' {tl ∷ A ∷ g} {V} {e2} {A} {B} {S Z} {S (S Z)} {s≤s (s≤s z≤)} wt1 refl wt3 in
  let keyR = substPreserve' {tr ∷ A ∷ g} {V} {e3} {A} {B} {S Z} {S (S Z)} {s≤s (s≤s z≤)} wt1 refl wt4 in
  ⊢case {tl = tl} {tr = tr} (substPreserve wt1 wt2) (shiftDownPreserve {i = Z} keyL (le2 (iterShiftUp Z (S (S Z)) V) e2 (S Z) (le V))) ((shiftDownPreserve {i = Z} keyR (le2 (iterShiftUp Z (S (S Z)) V) e3 (S Z) (le V))))


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
preservation {Γ} {Case (Inl x (Sum tl tr)) id2 e2 id3 e3} {.(substitute x e2)} {T1} (⊢case (⊢inl wt1) wt2 wt3) (r-case2 red) = substPreserve {V = x} {N = e2} {A = tl} wt1 wt2
preservation {Γ} {Case (Inr x (Sum tl tr)) id2 e2 id3 e3} {.(substitute x e3)} {T1} (⊢case (⊢inr wt1) wt2 wt3) (r-case3 red) = substPreserve {V = x} {N = e3} {A = tr} wt1 wt3
preservation (⊢l wt) (r-l' red) = ⊢l (preservation wt red)
