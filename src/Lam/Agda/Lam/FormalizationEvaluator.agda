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

    noe-const : ∀ {c : ConstT}
        → Neutral (Const c)

    noe-ite : ∀ {L M N : Expr}
        → Normal L
        → (∀ {b : Bool} → ¬ (L ≡ (Const (BoolC b))))
        -----------------------
        → Neutral (Ite L M N)

    noe-add : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Int} → ¬ (L ≡ (Const (NumC i)) × M ≡ (Const (NumC j))))
        ---------------------
        → Neutral (BinOp Add L M)

    noe-sub : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Int} → ¬ (L ≡ (Const (NumC i)) × M ≡ (Const (NumC j))))
        ---------------------
        → Neutral (BinOp Sub L M)

    noe-mul : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Int} → ¬ (L ≡ (Const (NumC i)) × M ≡ (Const (NumC j))))
        ---------------------
        → Neutral (BinOp Mul L M)

    noe-and : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Bool} → ¬ (L ≡ (Const (BoolC i)) × M ≡ (Const (BoolC j))))
        ---------------------
        → Neutral (BinOp And L M)

    noe-or : ∀ {L M : Expr}
        → Normal L
        → Normal M
        → (∀ {i j : Bool} → ¬ (L ≡ (Const (BoolC i)) × M ≡ Const (BoolC j)))
        ---------------------
        → Neutral (BinOp Or L M)

    noe-not : ∀ {L : Expr}
        → Normal L
        → (∀ {i : Bool} → ¬ (L ≡ (Const (BoolC i))))
        -------------------
        → Neutral (UnaryOp Not L)

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
        -- using a predicate to specify substitution here gets pretty ugly

    r-l' : ∀ {s : Id} {ty : Type} {L L' : Expr}
        → ReducesTo L L'
        ---------------------------
        → ReducesTo (Lam s ty L) (Lam s ty L')

    r-plus1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (BinOp Add L M) (BinOp Add L' M)

    r-plus2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (BinOp Add L M) (BinOp Add L M')

    r-plus3 : ∀ {i1 i2 : Int}
        → ReducesTo (BinOp Add (Const (NumC i1)) (Const (NumC i2))) (Const (NumC (i1 + i2)))

    r-sub1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (BinOp Sub L M) (BinOp Sub L' M)

    r-sub2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (BinOp Sub L M) (BinOp Sub L M')

    r-sub3 : ∀ {i1 i2 : Int}
        → ReducesTo (BinOp Sub (Const (NumC i1)) (Const (NumC i2))) (Const (NumC (i1 - i2)))

    r-mul1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (BinOp Mul L M) (BinOp Mul L' M)

    r-mul2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (BinOp Mul L M) (BinOp Mul L M')

    r-mul3 : ∀ {i1 i2 : Int}
        → ReducesTo (BinOp Mul (Const (NumC i1)) (Const (NumC i2))) (Const (NumC (i1 * i2)))

    r-and1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (BinOp And L M) (BinOp And L' M)

    r-and2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (BinOp And L M) (BinOp And L M')

    r-and3 : ∀ {i1 i2 : Bool}
        → ReducesTo (BinOp And (Const (BoolC i1)) (Const (BoolC i2))) (Const (BoolC (i1 && i2)))

    r-or1 : ∀ {L L' M : Expr}
        → ReducesTo L L'
        --------------------------------
        → ReducesTo (BinOp Or L M) (BinOp Or L' M)

    r-or2 : ∀ {L M M' : Expr}
        → Normal L
        → ReducesTo M M'
        --------------------------------
        → ReducesTo (BinOp Or L M) (BinOp Or L M')

    r-or3 : ∀ {i1 i2 : Bool}
        → ReducesTo (BinOp Or (Const (BoolC i1)) (Const (BoolC i2))) (Const (BoolC (i1 || i2)))

    r-not1 : ∀ {L L' : Expr}
        → ReducesTo L L'
        ----------------------------
        → ReducesTo (UnaryOp Not L) (UnaryOp Not L')

    r-not2 : ∀ {b : Bool}
        ----------------------------------------------
        → ReducesTo (UnaryOp Not (Const (BoolC b))) (Const (BoolC (not b)))

    r-ite-true : ∀ {L M : Expr}
        --------------------------------------
        → ReducesTo (Ite (Const (BoolC true)) L M) L

    r-ite-false : ∀ {L M : Expr}
        ---------------------------------------
        → ReducesTo (Ite (Const (BoolC false)) L M) M

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
neutralNeverReduces (noe-or n1 n2 h) r-or3 = h ⟨ refl , refl ⟩
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

normalImpliesNeutralIte : ∀ {L M N : Expr} → Normal (Ite L M N) → Neutral (Ite L M N)
normalImpliesNeutralIte (no-ne h) = h

normalImpliesNeutralApp : ∀ {L M : Expr} → Normal (App L M) → Neutral (App L M)
normalImpliesNeutralApp (no-ne h) = h

normalImpliesNeutralBinOp : ∀ {L M : Expr} {O : BinOpT} → Normal (BinOp O L M) → Neutral (BinOp O L M)
normalImpliesNeutralBinOp (no-ne h) = h

normalImpliesNeutralUnOp : ∀ {L : Expr} {O : UnaryOpT} → Normal (UnaryOp O L) → Neutral (UnaryOp O L)
normalImpliesNeutralUnOp (no-ne h) = h

stepNothingNormal : ∀ {V : Expr} → smallStep V ≡ Nothing → Normal V
stepNothingNormal {Var x} eq = no-ne ne-v
stepNothingNormal {Lam x x₁ V} eq with smallStep V in eqV
... | Nothing = no-a (stepNothingNormal eqV)
stepNothingNormal {App L M} eq with smallStep L in eqL
... | Nothing with smallStep M in eqM
...   | Nothing with L
...     | Var _ = no-ne (ne-a ne-v (stepNothingNormal eqM))
...     | App _ _ = no-ne (ne-a (normalImpliesNeutralApp (stepNothingNormal eqL)) (stepNothingNormal eqM))
...     | Ite _ _ _ = no-ne (ne-a (normalImpliesNeutralIte (stepNothingNormal eqL)) (stepNothingNormal eqM))
...     | Const _ = no-ne (ne-a noe-const (stepNothingNormal eqM))
...     | BinOp _ _ _ = no-ne (ne-a (normalImpliesNeutralBinOp (stepNothingNormal eqL)) (stepNothingNormal eqM))
...     | UnaryOp _ _ = no-ne (ne-a (normalImpliesNeutralUnOp (stepNothingNormal eqL)) (stepNothingNormal eqM))
stepNothingNormal {Ite L M N} eq with smallStep L in eqL
... | Nothing = no-ne (noe-ite (stepNothingNormal eqL) (iteStepNothing eq))
  where
    iteStepNothing : ∀ {i} → smallStepIte L M N Nothing ≡ Nothing → ¬ (L ≡ (Const (BoolC i)))
    iteStepNothing () refl
stepNothingNormal {Const x} eq = no-ne noe-const
stepNothingNormal {BinOp o L M} eq with smallStep L in eqL
... | Nothing with smallStep M in eqM
stepNothingNormal {BinOp Add L M} eq | Nothing | Nothing =
  no-ne (noe-add (stepNothingNormal eqL) (stepNothingNormal eqM) (addStepNothing eq))
  where
    addStepNothing : ∀ {i j} → smallStepBinOp Add L M Nothing Nothing ≡ Nothing → ¬ ((L ≡ Const (NumC i)) × (M ≡ Const (NumC j)))
    addStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {BinOp Sub L M} eq | Nothing | Nothing =
  no-ne (noe-sub (stepNothingNormal eqL) (stepNothingNormal eqM) (subStepNothing eq))
  where
    subStepNothing : ∀ {i j} → smallStepBinOp Sub L M Nothing Nothing ≡ Nothing → ¬ ((L ≡ Const (NumC i)) × (M ≡ Const (NumC j)))
    subStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {BinOp Mul L M} eq | Nothing | Nothing =
  no-ne (noe-mul (stepNothingNormal eqL) (stepNothingNormal eqM) (mulStepNothing eq))
  where
    mulStepNothing : ∀ {i j} → smallStepBinOp Mul L M Nothing Nothing ≡ Nothing → ¬ ((L ≡ Const (NumC i)) × (M ≡ Const (NumC j)))
    mulStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {BinOp And L M} eq | Nothing | Nothing =
  no-ne (noe-and (stepNothingNormal eqL) (stepNothingNormal eqM) (andStepNothing eq))
  where
    andStepNothing : ∀ {i j} → smallStepBinOp And L M Nothing Nothing ≡ Nothing → ¬ ((L ≡ Const (BoolC i)) × (M ≡ Const (BoolC j)))
    andStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {BinOp Or L M} eq | Nothing | Nothing =
  no-ne (noe-or (stepNothingNormal eqL) (stepNothingNormal eqM) (orStepNothing eq))
  where
    orStepNothing : ∀ {i j} → smallStepBinOp Or L M Nothing Nothing ≡ Nothing → ¬ ((L ≡ Const (BoolC i)) × (M ≡ Const (BoolC j)))
    orStepNothing () ⟨ refl , refl ⟩
stepNothingNormal {UnaryOp Not V} eq with smallStep V in eqV
... | Nothing = no-ne (noe-not (stepNothingNormal eqV) (notStepNothing eq))
  where
    notStepNothing : ∀ {i} → smallStepUnOp Not V Nothing ≡ Nothing → ¬ (V ≡ Const (BoolC i))
    notStepNothing () refl

normalStepNothing : ∀ {V : Expr} → Normal V → smallStep V ≡ Nothing
neutralStepNothing : ∀ {V : Expr} → Neutral V → smallStep V ≡ Nothing

normalStepNothing {V} (no-ne h) = neutralStepNothing h
normalStepNothing {(Lam _ _ L)} (no-a h) rewrite normalStepNothing h = refl

neutralStepNothing ne-v = refl
neutralStepNothing {App (Var _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (App _ _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Ite _ _ _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Const _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (BinOp _ _ _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (UnaryOp _ _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing noe-const = refl
neutralStepNothing {Ite L M N} (noe-ite h1 h2) rewrite normalStepNothing h1 with smallStepIte L M N Nothing in eq
... | Nothing = refl
neutralStepNothing {Ite (Const (BoolC L')) M N} (noe-ite h1 h2) | Just _ = ⊥-elim (h2 {L'} refl)
neutralStepNothing {BinOp Add L M} (noe-add h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepBinOp Add L M Nothing Nothing in eq
neutralStepNothing {BinOp Add L M} (noe-add h1 h2 h3) | Nothing = refl
neutralStepNothing {BinOp Add (Const (NumC L')) (Const (NumC M'))} (noe-add h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {BinOp Sub L M} (noe-sub h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepBinOp Sub L M Nothing Nothing in eq
neutralStepNothing {BinOp Sub L M} (noe-sub h1 h2 h3) | Nothing = refl
neutralStepNothing {BinOp Sub (Const (NumC L')) (Const (NumC M'))} (noe-sub h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {BinOp Mul L M} (noe-mul h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepBinOp Mul L M Nothing Nothing in eq
neutralStepNothing {BinOp Mul L M} (noe-mul h1 h2 h3) | Nothing = refl
neutralStepNothing {BinOp Mul (Const (NumC L')) (Const (NumC M'))} (noe-mul h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {BinOp And L M} (noe-and h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepBinOp And L M Nothing Nothing in eq
neutralStepNothing {BinOp And L M} (noe-and h1 h2 h3) | Nothing = refl
neutralStepNothing {BinOp And (Const (BoolC L')) (Const (BoolC M'))} (noe-and h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {BinOp Or L M} (noe-or h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepBinOp Or L M Nothing Nothing in eq
neutralStepNothing {BinOp Or L M} (noe-or h1 h2 h3) | Nothing = refl
neutralStepNothing {BinOp Or (Const (BoolC L')) (Const (BoolC M'))} (noe-or h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
neutralStepNothing {UnaryOp Not L} (noe-not x h) rewrite normalStepNothing x with smallStepUnOp Not L Nothing in eq
neutralStepNothing {UnaryOp Not L}                  (noe-not _ _) | Nothing = refl
neutralStepNothing {UnaryOp Not (Const (BoolC L'))} (noe-not _ h) | Just _ = ⊥-elim (h {L'} refl)

step→red : ∀ {M N : Expr} → smallStep M ≡ Just N → ReducesTo M N
step→red {Lam x x₁ M} {N} h = {!!}
step→red {App M M₁} {N} h = {!!}
step→red {Ite M M₁ M₂} {N} h = {!!}
step→red {BinOp x M M₁} {N} h = {!!}
step→red {UnaryOp Not (Const (BoolC x))} {N} h  = {!r-not2!}
step→red {UnaryOp Not (Lam x x₁ M)} {N} h = {!!}
step→red {UnaryOp Not (App M M₁)} {N} h = {!!}
step→red {UnaryOp Not (Ite M M₁ M₂)} {N} h = {!!}
step→red {UnaryOp Not (BinOp x M M₁)} {N} h = {!!}
step→red {UnaryOp Not (UnaryOp x M)} {N} h = {!!}

red→step : ∀ {M N : Expr} → ReducesTo M N → smallStep M ≡ Just N
red→step (r-a h) rewrite red→step h = refl
red→step (r-a' x h) rewrite normalStepNothing x | red→step h = refl
red→step {App (Lam _ _ L) V} (r-l x h) rewrite normalStepNothing h | normalStepNothing x = refl
red→step (r-l' h) rewrite red→step h = refl
red→step (r-plus1 h) rewrite red→step h = refl
red→step (r-plus2 x h) rewrite normalStepNothing x | red→step h = refl
red→step r-plus3 = refl
red→step (r-sub1 h) rewrite red→step h = refl
red→step (r-sub2 x h) rewrite normalStepNothing x | red→step h = refl
red→step r-sub3 = refl
red→step (r-mul1 h) rewrite red→step h = refl
red→step (r-mul2 x h) rewrite normalStepNothing x | red→step h = refl
red→step r-mul3 = refl
red→step (r-and1 h) rewrite red→step h = refl
red→step (r-and2 x h) rewrite normalStepNothing x | red→step h = refl
red→step r-and3 = refl
red→step (r-or1 h) rewrite red→step h = refl
red→step (r-or2 x h) rewrite normalStepNothing x | red→step h = refl
red→step r-or3 = refl
red→step (r-not1 h) rewrite red→step h = refl
red→step r-not2 = refl
red→step r-ite-true = refl
red→step r-ite-false = refl
red→step (r-ite h) rewrite red→step h = refl
