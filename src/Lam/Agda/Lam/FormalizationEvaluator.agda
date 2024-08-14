module Lam.FormalizationEvaluator where

open import Lam.Data
open import Lam.Evaluator
open import Lam.UtilsAgda

open import Haskell.Prelude                       using (Just; Nothing; Int; Bool; _+_; _-_; _*_; _&&_; _||_; not)

open import Data.Bool                             using (true; false)
open import Data.Empty                            using (⊥-elim; ⊥)
open import Data.Sum                              using (_⊎_; inj₁; inj₂)
open import Data.Product                          using (_×_; Σ; Σ-syntax; ∃; ∃-syntax) renaming (_,_ to ⟨_,_⟩)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym; trans; cong)
open import Relation.Nullary                      using (¬_)

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

    noe-num : ∀ {i : Int}
        → Neutral (NumVal i)

    noe-bool : ∀ {b : Bool}
        → Neutral (BoolVal b)

    noe-ite : ∀ {L M N : Expr}
        → Normal L
        → (∀ {b : Bool} → ¬ (L ≡ BoolVal b))
        -----------------------
        → Neutral (Ite L M N)

    noe-add : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Int} → ¬ (L ≡ NumVal i × M ≡ NumVal j))
        ---------------------
        → Neutral (Add L M)

    noe-sub : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Int} → ¬ (L ≡ NumVal i × M ≡ NumVal j))
        ---------------------
        → Neutral (Sub L M)

    noe-mul : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Int} → ¬ (L ≡ NumVal i × M ≡ NumVal j))
        ---------------------
        → Neutral (Mul L M)

    noe-and : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Bool} → ¬ (L ≡ BoolVal i × M ≡ BoolVal j))
        ---------------------
        → Neutral (And L M)

    noe-or : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Bool} → ¬ (L ≡ BoolVal i × M ≡ BoolVal j))
        ---------------------
        → Neutral (Or L M)

    noe-not : ∀ {L : Expr}
        → Normal L
        → (∀ {i : Bool} → ¬ (L ≡ BoolVal i))
        -------------------
        → Neutral (Not L)

data Normal where
    no-ne : ∀ {M : Expr}
        → Neutral M
        ----------
        → Normal M

    no-a : ∀ {s : Id} {ty : Type} {N : Expr}
        → Normal N
        ---------------------
        → Normal (Lam s ty N)

data ReducesTo : Expr → Expr → Set where
    r-a : ∀ {L L' M : Expr}
        → ReducesTo L L'
        ---------------------
        → ReducesTo (App L M) (App L' M)

    r-a' : ∀ {V M M' : Expr}
        → Normal V
        → ReducesTo M M'
        ---------------------
        → ReducesTo (App V M) (App V M')

    r-l : ∀ {s : Id} {ty : Type} {L V : Expr}
        → Normal V
        → Normal L
        ---------------------------
        → ReducesTo (App (Lam s ty L) V) (shiftDown (substitute Z (shiftUp V) L))

    r-l' : ∀ {s : Id} {ty : Type} {L L' : Expr}
        → ReducesTo L L'
        ---------------------------
        → ReducesTo (Lam s ty L) (Lam s ty L')

    r-plus1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (Add L M) (Add L' M)

    r-plus2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (Add L M) (Add L M')

    r-plus3 : ∀ {i1 i2 : Int}
        → ReducesTo (Add (NumVal i1) (NumVal i2)) (NumVal (i1 + i2))

    r-sub1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (Sub L M) (Sub L' M)

    r-sub2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (Sub L M) (Sub L M')

    r-sub3 : ∀ {i1 i2 : Int}
        → ReducesTo (Sub (NumVal i1) (NumVal i2)) (NumVal (i1 - i2))

    r-mul1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (Mul L M) (Mul L' M)

    r-mul2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (Mul L M) (Mul L M')

    r-mul3 : ∀ {i1 i2 : Int}
        → ReducesTo (Mul (NumVal i1) (NumVal i2)) (NumVal (i1 * i2))

    r-and1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (And L M) (And L' M)

    r-and2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (And L M) (And L M')

    r-and3 : ∀ {i1 i2 : Bool}
        → ReducesTo (And (BoolVal i1) (BoolVal i2)) (BoolVal (i1 && i2))

    r-or1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (Or L M) (Or L' M)

    r-or2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (Or L M) (Or L M')

    r-or3 : ∀ {i1 i2 : Bool}
        → ReducesTo (Or (BoolVal i1) (BoolVal i2)) (BoolVal (i1 || i2))

    r-not1 : ∀ {L L' : Expr}
        → ReducesTo L L'
        ----------------------------
        → ReducesTo (Not L) (Not L')

    r-not2 : ∀ {b : Bool}
        ----------------------------------------------
        → ReducesTo (Not (BoolVal b)) (BoolVal (not b))

    r-ite-true : ∀ {L M : Expr}
        --------------------------------------
        → ReducesTo (Ite (BoolVal true) L M) L

    r-ite-false : ∀ {L M : Expr}
        ---------------------------------------
        → ReducesTo (Ite (BoolVal false) L M) M

    r-ite : ∀ {L L' M N : Expr}
        → ReducesTo L L'
        ------------------------------------
        → ReducesTo (Ite L M N) (Ite L' M N)


data Irreducible : Expr → Set where
    i-e : ∀ {M : Expr}
        → (∀ {N : Expr} → ¬ (ReducesTo M N))
        ---------------
        → Irreducible M

neutralNeverReduces : ∀ {M : Expr} → Neutral M → (∀ {N : Expr} → ¬ (ReducesTo M N))
normalNeverReduces : ∀ {M : Expr} → Normal M → (∀ {N : Expr} → ¬ (ReducesTo M N))

neutralNeverReduces (ne-a n x) (r-a red) = neutralNeverReduces n red
neutralNeverReduces (ne-a n x) (r-a' x₁ red) = normalNeverReduces x red
neutralNeverReduces (noe-ite _ x) r-ite-true = x {true} refl
neutralNeverReduces (noe-ite _ x) r-ite-false = x {false} refl
neutralNeverReduces (noe-ite n x) (r-ite red) = normalNeverReduces n red
neutralNeverReduces (noe-add n1 n2 x) (r-plus1 red) = normalNeverReduces n1 red
neutralNeverReduces (noe-add n1 n2 x) (r-plus2 _ red) = normalNeverReduces n2 red
neutralNeverReduces (noe-add n1 n2 h) r-plus3 = h ⟨ refl , refl ⟩
neutralNeverReduces (noe-sub n1 n2 x) (r-sub1 red) = normalNeverReduces n1 red
neutralNeverReduces (noe-sub n1 n2 x) (r-sub2 _ red) = normalNeverReduces n2 red
neutralNeverReduces (noe-sub n1 n2 h) r-sub3 = h ⟨ refl , refl ⟩
neutralNeverReduces (noe-mul n1 n2 x) (r-mul1 red) = normalNeverReduces n1 red
neutralNeverReduces (noe-mul n1 n2 x) (r-mul2 _ red) = normalNeverReduces n2 red
neutralNeverReduces (noe-mul n1 n2 h) r-mul3 = h ⟨ refl , refl ⟩
neutralNeverReduces (noe-and n1 n2 x) (r-and1 red) = normalNeverReduces n1 red
neutralNeverReduces (noe-and n1 n2 x) (r-and2 _ red) = normalNeverReduces n2 red
neutralNeverReduces (noe-and n1 n2 h) r-and3 = h ⟨ refl , refl ⟩
neutralNeverReduces (noe-or n1 n2 x) (r-or1 red) = normalNeverReduces n1 red
neutralNeverReduces (noe-or n1 n2 x) (r-or2 _ red) = normalNeverReduces n2 red
neutralNeverReduces (noe-or n1 n2₁ h) r-or3 = h ⟨ refl , refl ⟩
neutralNeverReduces (noe-not n x) (r-not1 red) = normalNeverReduces n red
neutralNeverReduces (noe-not normalExtBi h) r-not2 = h refl

normalNeverReduces (no-ne x) red = neutralNeverReduces x red
normalNeverReduces (no-a n) (r-l' red) = normalNeverReduces n red

redIsDeterministic : ∀ {M N1 N2 : Expr} → ReducesTo M N1 → ReducesTo M N2 → N1 ≡ N2
redIsDeterministic (r-a red1) (r-a red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-a red1) (r-a' x red2) = ⊥-elim (normalNeverReduces x red1)
redIsDeterministic (r-a (r-l' red1)) (r-l x x₁) = ⊥-elim (normalNeverReduces x₁ red1)
redIsDeterministic (r-a' x red1) (r-a red2) = ⊥-elim (normalNeverReduces x red2)
redIsDeterministic (r-a' x red1) (r-a' x₁ red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-a' x red1) (r-l x₁ x₂) = ⊥-elim (normalNeverReduces x₁ red1)
redIsDeterministic (r-l x x₁) (r-a (r-l' red2)) = ⊥-elim (normalNeverReduces x₁ red2)
redIsDeterministic (r-l x x₁) (r-a' x₂ red2) = ⊥-elim (normalNeverReduces x red2)
redIsDeterministic (r-l x x₁) (r-l x₂ x₃) = refl
redIsDeterministic (r-l' red1) (r-l' red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-plus1 red1) (r-plus1 red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-plus1 red1) (r-plus2 n red2) = ⊥-elim (normalNeverReduces n red1)
redIsDeterministic (r-plus2 n red1) (r-plus1 red2) = ⊥-elim (normalNeverReduces n red2)
redIsDeterministic (r-plus2 _ red1) (r-plus2 x red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic r-plus3 r-plus3 = refl
redIsDeterministic (r-sub1 red1) (r-sub1 red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-sub1 red1) (r-sub2 n red2) = ⊥-elim (normalNeverReduces n red1)
redIsDeterministic (r-sub2 n red1) (r-sub1 red2) = ⊥-elim (normalNeverReduces n red2)
redIsDeterministic (r-sub2 _ red1) (r-sub2 x red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic r-sub3 r-sub3 = refl
redIsDeterministic (r-mul1 red1) (r-mul1 red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-mul1 red1) (r-mul2 n red2) = ⊥-elim (normalNeverReduces n red1)
redIsDeterministic (r-mul2 n red1) (r-mul1 red2) = ⊥-elim (normalNeverReduces n red2)
redIsDeterministic (r-mul2 _ red1) (r-mul2 x red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic r-mul3 r-mul3 = refl
redIsDeterministic (r-and1 red1) (r-and1 red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-and1 red1) (r-and2 n red2) = ⊥-elim (normalNeverReduces n red1)
redIsDeterministic (r-and2 n red1) (r-and1 red2) = ⊥-elim (normalNeverReduces n red2)
redIsDeterministic (r-and2 _ red1) (r-and2 x red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic r-and3 r-and3 = refl
redIsDeterministic (r-or1 red1) (r-or1 red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic (r-or1 red1) (r-or2 n red2) = ⊥-elim (normalNeverReduces n red1)
redIsDeterministic (r-or2 n red1) (r-or1 red2) = ⊥-elim (normalNeverReduces n red2)
redIsDeterministic (r-or2 _ red1) (r-or2 x red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic r-or3 r-or3 = refl
redIsDeterministic (r-not1 red1) (r-not1 red2) rewrite redIsDeterministic red1 red2 = refl
redIsDeterministic r-not2 r-not2 = refl
redIsDeterministic r-ite-true r-ite-true = refl
redIsDeterministic r-ite-false r-ite-false = refl
redIsDeterministic (r-ite red1) (r-ite red2) rewrite redIsDeterministic red1 red2 = refl

normalImpliesNeutralApp : ∀ {L M : Expr} → Normal (App L M) → Neutral (App L M)
normalImpliesNeutralApp (no-ne h) = h

normalImpliesNeutralAdd : ∀ {L M : Expr} → Normal (Add L M) → Neutral (Add L M)
normalImpliesNeutralAdd (no-ne h) = h

normalImpliesNeutralSub : ∀ {L M : Expr} → Normal (Sub L M) → Neutral (Sub L M)
normalImpliesNeutralSub (no-ne h) = h

normalImpliesNeutralMul : ∀ {L M : Expr} → Normal (Mul L M) → Neutral (Mul L M)
normalImpliesNeutralMul (no-ne h) = h

normalImpliesNeutralAnd : ∀ {L M : Expr} → Normal (And L M) → Neutral (And L M)
normalImpliesNeutralAnd (no-ne h) = h

normalImpliesNeutralOr : ∀ {L M : Expr} → Normal (Or L M) → Neutral (Or L M)
normalImpliesNeutralOr (no-ne h) = h

normalImpliesNeutralIte : ∀ {L M N : Expr} → Normal (Ite L M N) → Neutral (Ite L M N)
normalImpliesNeutralIte (no-ne h) = h

normalImpliesNeutralNot : ∀ {L : Expr} → Normal (Not L) → Neutral (Not L)
normalImpliesNeutralNot (no-ne h) = h

stepNothingNormal : ∀ {V : Expr} → smallStep V ≡ Nothing → Normal V
stepNothingNormal {Var x} eq = no-ne ne-v
stepNothingNormal {Lam x x₁ V} eq with smallStep V in eqV
... | Nothing = no-a (stepNothingNormal eqV)
stepNothingNormal {App V1 V2} eq with smallStep V1 in eqV1
... | Nothing with smallStep V2 in eqV2
...   | Nothing with V1
...     | Var x = no-ne (ne-a ne-v (stepNothingNormal eqV2))
...     | App a a₁ = no-ne (ne-a (normalImpliesNeutralApp (stepNothingNormal eqV1)) (stepNothingNormal eqV2))
...     | Ite a a₁ a₂ = no-ne (ne-a (normalImpliesNeutralIte (stepNothingNormal eqV1)) (stepNothingNormal eqV2))
...     | NumVal x = no-ne (ne-a (noe-num) (stepNothingNormal eqV2))
...     | BoolVal x = no-ne (ne-a (noe-bool) (stepNothingNormal eqV2))
...     | Add a a₁ = no-ne (ne-a (normalImpliesNeutralAdd (stepNothingNormal eqV1)) (stepNothingNormal eqV2))
...     | Sub a a₁ = no-ne (ne-a (normalImpliesNeutralSub (stepNothingNormal eqV1)) (stepNothingNormal eqV2))
...     | Mul a a₁ = no-ne (ne-a (normalImpliesNeutralMul (stepNothingNormal eqV1)) (stepNothingNormal eqV2))
...     | Not a = no-ne (ne-a (normalImpliesNeutralNot (stepNothingNormal eqV1)) (stepNothingNormal eqV2))
...     | And a a₁ = no-ne (ne-a (normalImpliesNeutralAnd (stepNothingNormal eqV1)) (stepNothingNormal eqV2))
...     | Or a a₁ = no-ne (ne-a (normalImpliesNeutralOr (stepNothingNormal eqV1)) (stepNothingNormal eqV2))
stepNothingNormal {Ite L M N} eq with smallStep L in eqL
... | Nothing = no-ne (noe-ite (stepNothingNormal eqL) (iteStepNothing eq))
  where
    iteStepNothing : ∀ {i} → smallStepIte L M N Nothing ≡ Nothing → ¬ (L ≡ BoolVal i)
    iteStepNothing () refl
stepNothingNormal {NumVal x} eq = no-ne noe-num
stepNothingNormal {BoolVal x} eq = no-ne noe-bool
stepNothingNormal {Add V1 V2} eq with smallStep V1 in eqV1
... | Nothing with smallStep V2 in eqV2
...   | Nothing = no-ne (noe-add (stepNothingNormal eqV1) (stepNothingNormal eqV2) (addStepNothing eq))
  where
    addStepNothing : ∀ {i j} → smallStepAdd V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ NumVal i) × (V2 ≡ NumVal j))
    addStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {Sub V1 V2} eq with smallStep V1 in eqV1
... | Nothing with smallStep V2 in eqV2
...   | Nothing = no-ne (noe-sub (stepNothingNormal eqV1) (stepNothingNormal eqV2) (subStepNothing eq))
  where
    subStepNothing : ∀ {i j} → smallStepSub V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ NumVal i) × (V2 ≡ NumVal j))
    subStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {Mul V1 V2} eq with smallStep V1 in eqV1
... | Nothing with smallStep V2 in eqV2
...   | Nothing = no-ne (noe-mul (stepNothingNormal eqV1) (stepNothingNormal eqV2) (mulStepNothing eq))
  where
    mulStepNothing : ∀ {i j} → smallStepMul V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ NumVal i) × (V2 ≡ NumVal j))
    mulStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {Not V} eq with smallStep V in eqV
... | Nothing = no-ne (noe-not (stepNothingNormal eqV) (notStepNothing eq))
  where
    notStepNothing : ∀ {i} → smallStepNot V Nothing ≡ Nothing → ¬ (V ≡ BoolVal i)
    notStepNothing () refl
stepNothingNormal {And V1 V2} eq with smallStep V1 in eqV1
... | Nothing with smallStep V2 in eqV2
...   | Nothing = no-ne (noe-and (stepNothingNormal eqV1) (stepNothingNormal eqV2) (andStepNothing eq))
  where
    andStepNothing : ∀ {i j} → smallStepAnd V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ BoolVal i) × (V2 ≡ BoolVal j))
    andStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {Or V1 V2} eq with smallStep V1 in eqV1
... | Nothing with smallStep V2 in eqV2
...   | Nothing = no-ne (noe-or (stepNothingNormal eqV1) (stepNothingNormal eqV2) (orStepNothing eq))
  where
    orStepNothing : ∀ {i j} → smallStepOr V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ BoolVal i) × (V2 ≡ BoolVal j))
    orStepNothing () ⟨ refl , refl ⟩

normalStepNothing : ∀ {V : Expr} → Normal V → smallStep V ≡ Nothing
neutralStepNothing : ∀ {V : Expr} → Neutral V → smallStep V ≡ Nothing

normalStepNothing {V} (no-ne h) = neutralStepNothing h
normalStepNothing {(Lam _ _ L)} (no-a h) rewrite normalStepNothing h = refl
neutralStepNothing ne-v = refl
neutralStepNothing {App (Var _) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (App L L₁) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Ite L L₁ L₂) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (NumVal x₁) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (BoolVal x₁) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Add L L₁) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Sub L L₁) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Mul L L₁) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Not L) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (And L L₁) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Or L L₁) M} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing noe-num = refl
neutralStepNothing noe-bool = refl
neutralStepNothing {Ite L M N} (noe-ite h1 h2) rewrite normalStepNothing h1 with smallStepIte L M N Nothing in eq
... | Nothing = refl
neutralStepNothing {Ite (BoolVal L') M N} (noe-ite h1 h2) | Just _ = ⊥-elim (h2 {L'} refl)
neutralStepNothing {Add L M} (noe-add h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepAdd L M Nothing Nothing in eq
neutralStepNothing {Add L M} (noe-add h1 h2 h3) | Nothing = refl
neutralStepNothing {Add (NumVal L') (NumVal M')} (noe-add h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {Sub L M} (noe-sub h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepSub L M Nothing Nothing in eq
neutralStepNothing {Sub L M} (noe-sub h1 h2 h3) | Nothing = refl
neutralStepNothing {Sub (NumVal L') (NumVal M')} (noe-sub h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {Mul L M} (noe-mul h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepMul L M Nothing Nothing in eq
neutralStepNothing {Mul L M} (noe-mul h1 h2 h3) | Nothing = refl
neutralStepNothing {Mul (NumVal L') (NumVal M')} (noe-mul h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {And L M} (noe-and h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepAnd L M Nothing Nothing in eq
neutralStepNothing {And L M} (noe-and h1 h2 h3) | Nothing = refl
neutralStepNothing {And (BoolVal L') (BoolVal M')} (noe-and h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {Or L M} (noe-or h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepOr L M Nothing Nothing in eq
neutralStepNothing {Or L M} (noe-or h1 h2 h3) | Nothing = refl
neutralStepNothing {Or (BoolVal L') (BoolVal M')} (noe-or h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {Not L} (noe-not x h) rewrite normalStepNothing x with smallStepNot L Nothing in eq
neutralStepNothing {Not L} (noe-not _ _)            | Nothing = refl
neutralStepNothing {Not (BoolVal L')} (noe-not _ h) | Just _ = ⊥-elim (h {L'} refl)


--   -- step→red : ∀ {M N : Expr} → smallStep M ≡ Just N → ReducesTo M N
--   -- step→red h = {!!}
--   -- -- step→red {Lam s ty M} {N} eq with smallStep M in eqM
--   -- -- ... | Just _ rewrite sym (Just-injective eq) = r-l (step→red eqM)
--   -- -- step→red {App L M} {N} eq with smallStep L in eqL
--   -- -- ... | Just L' rewrite sym (Just-injective eq) = r-a (step→red eqL)
--   -- -- ... | Nothing with smallStep M in eqM
--   -- -- ...   | Just M' rewrite sym (Just-injective eq) = r-a' (stepNothingNormal eqL) (step→red eqM)
--   -- -- ...   | Nothing with L
--   -- -- ...     | Lam _ _ L' with smallStep L' in eqL'
--   -- -- ...       | Nothing rewrite sym (Just-injective eq) = r-l' (stepNothingNormal eqM) (stepNothingNormal eqL')

--   -- red→step : ∀ {M N : Expr} → ReducesTo M N → smallStep M ≡ Just N
--   -- red→step {Lam x x₁ M} {N} h = {!!}
--   -- red→step {App M M₁} {N} h = {!!}
--   -- -- red→step (r-a red) rewrite red→step red = refl
--   -- -- red→step (r-l red) rewrite red→step red = refl
--   -- -- red→step (r-a' normalV red) rewrite normalStepNothing normalV | red→step red = refl
--   -- -- red→step (r-l' normalL normalV) rewrite normalStepNothing normalV | normalStepNothing normalL = refl
