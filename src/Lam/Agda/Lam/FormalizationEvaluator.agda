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

    no-a : ∀ {s : Id} {ty : TypeL} {N : Expr}
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

    r-l : ∀ {s : Id} {ty : TypeL} {V1 V2 : Expr}
        → Normal V1
        → Normal V2
        ---------------------------
        → ReducesTo (App (Lam s ty V1) V2) (shiftDown (substitute Z (shiftUp V2) V1))
        -- using a predicate to specify substitution here gets pretty ugly

    r-l' : ∀ {s : Id} {ty : TypeL} {L L' : Expr}
        → ReducesTo L L'
        ---------------------------
        → ReducesTo (Lam s ty L) (Lam s ty L')

    r-binop1 : ∀ {L L' M : Expr} {o : BinOpT}
      → ReducesTo L L'
      ----------------------------------------
      → ReducesTo (BinOp o L M) (BinOp o L' M)

    r-binop2 : ∀ {L M M' : Expr} {o : BinOpT}
      → Normal L
      → ReducesTo M M'
      ----------------------------------------
      → ReducesTo (BinOp o L M) (BinOp o L M')

    r-add : ∀ {i1 i2 : Int}
        → ReducesTo (BinOp Add (Const (NumC i1)) (Const (NumC i2))) (Const (NumC (i1 + i2)))

    r-sub : ∀ {i1 i2 : Int}
        → ReducesTo (BinOp Sub (Const (NumC i1)) (Const (NumC i2))) (Const (NumC (i1 - i2)))

    r-mul : ∀ {i1 i2 : Int}
        → ReducesTo (BinOp Mul (Const (NumC i1)) (Const (NumC i2))) (Const (NumC (i1 * i2)))

    r-and : ∀ {i1 i2 : Bool}
        → ReducesTo (BinOp And (Const (BoolC i1)) (Const (BoolC i2))) (Const (BoolC (i1 && i2)))

    r-or : ∀ {i1 i2 : Bool}
        → ReducesTo (BinOp Or (Const (BoolC i1)) (Const (BoolC i2))) (Const (BoolC (i1 || i2)))

    r-unop : ∀ {L L' : Expr} {o : UnaryOpT}
      → ReducesTo L L'
      ----------------------------------------
      → ReducesTo (UnaryOp o L) (UnaryOp o L')

    r-not : ∀ {b : Bool}
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
step→red {Lam _ _ L} {N} h with smallStep L in eqL
... | Just _ rewrite sym (Just-injective h) = r-l' (step→red eqL)
step→red {App L M} {N} h with smallStep L in eqL
... | Just _ rewrite sym (Just-injective h) = r-a (step→red eqL)
... | Nothing with smallStep M in eqM
...   | Just _ rewrite sym (Just-injective h) = r-a' (stepNothingNormal eqL) (step→red eqM)
...   | Nothing with L
...      | Lam _ _ L' rewrite sym (Just-injective h) with smallStep L' in eqL'
...         | Nothing = r-l (stepNothingNormal eqL') (stepNothingNormal eqM)
step→red {Ite L M N} {E} h with smallStep L in eqL
step→red {Ite (Const (BoolC true))  M N} {E} h | Nothing rewrite sym (Just-injective h) = r-ite-true
step→red {Ite (Const (BoolC false)) M N} {E} h | Nothing rewrite sym (Just-injective h) = r-ite-false
step→red {Ite L M N} {E} h                     | Just _ rewrite sym (Just-injective h) = r-ite (step→red eqL)
step→red {BinOp Add L M} {N} h with smallStep L in eqL
step→red {BinOp Add L M} {N} h | Just _ rewrite sym (Just-injective h) = r-binop1 (step→red eqL)
step→red {BinOp Add L M} {N} h | Nothing with smallStep M in eqM
step→red {BinOp Add L M} {N} h | Nothing | Just _ rewrite sym (Just-injective h) = r-binop2 (stepNothingNormal eqL) (step→red eqM)
step→red {BinOp Add (Const (NumC i)) (Const (NumC j))} {N} h | Nothing | Nothing rewrite sym (Just-injective h) = r-add
step→red {BinOp Sub L M} {N} h with smallStep L in eqL
step→red {BinOp Sub L M} {N} h | Just _ rewrite sym (Just-injective h) = r-binop1 (step→red eqL)
step→red {BinOp Sub L M} {N} h | Nothing with smallStep M in eqM
step→red {BinOp Sub L M} {N} h | Nothing | Just _ rewrite sym (Just-injective h) = r-binop2 (stepNothingNormal eqL) (step→red eqM)
step→red {BinOp Sub (Const (NumC i)) (Const (NumC j))} {N} h | Nothing | Nothing rewrite sym (Just-injective h) = r-sub
step→red {BinOp Mul L M} {N} h with smallStep L in eqL
step→red {BinOp Mul L M} {N} h | Just _ rewrite sym (Just-injective h) = r-binop1 (step→red eqL)
step→red {BinOp Mul L M} {N} h | Nothing with smallStep M in eqM
step→red {BinOp Mul L M} {N} h | Nothing | Just _ rewrite sym (Just-injective h) = r-binop2 (stepNothingNormal eqL) (step→red eqM)
step→red {BinOp Mul (Const (NumC i)) (Const (NumC j))} {N} h | Nothing | Nothing rewrite sym (Just-injective h) = r-mul
step→red {BinOp And L M} {N} h with smallStep L in eqL
step→red {BinOp And L M} {N} h | Just _ rewrite sym (Just-injective h) = r-binop1 (step→red eqL)
step→red {BinOp And L M} {N} h | Nothing with smallStep M in eqM
step→red {BinOp And L M} {N} h | Nothing | Just _ rewrite sym (Just-injective h) = r-binop2 (stepNothingNormal eqL) (step→red eqM)
step→red {BinOp And (Const (BoolC i)) (Const (BoolC j))} {N} h | Nothing | Nothing rewrite sym (Just-injective h) = r-and
step→red {BinOp Or L M} {N} h with smallStep L in eqL
step→red {BinOp Or L M} {N} h | Just _ rewrite sym (Just-injective h) = r-binop1 (step→red eqL)
step→red {BinOp Or L M} {N} h | Nothing with smallStep M in eqM
step→red {BinOp Or L M} {N} h | Nothing | Just _ rewrite sym (Just-injective h) = r-binop2 (stepNothingNormal eqL) (step→red eqM)
step→red {BinOp Or (Const (BoolC i)) (Const (BoolC j))} {N} h | Nothing | Nothing rewrite sym (Just-injective h) = r-or
step→red {UnaryOp Not L} {M} h with smallStep L in eqL
step→red {UnaryOp Not L} {M} h | Just _ rewrite sym (Just-injective h) = r-unop (step→red eqL)
step→red {UnaryOp Not (Const (BoolC x))} {M} h | Nothing rewrite sym (Just-injective h) = r-not

red→step : ∀ {M N : Expr} → ReducesTo M N → smallStep M ≡ Just N
red→step (r-a h) rewrite red→step h = refl
red→step (r-a' x h) rewrite normalStepNothing x | red→step h = refl
red→step {App (Lam _ _ L) V} (r-l x h) rewrite normalStepNothing x | normalStepNothing h = refl
red→step (r-l' h) rewrite red→step h = refl
red→step r-add = refl
red→step (r-binop1 h) rewrite red→step h = refl
red→step (r-binop2 x h) rewrite normalStepNothing x | red→step h = refl
red→step r-sub = refl
red→step r-mul = refl
red→step r-and = refl
red→step r-or = refl
red→step r-ite-true = refl
red→step r-ite-false = refl
red→step (r-ite h) rewrite red→step h = refl
red→step (r-unop h) rewrite red→step h = refl
red→step r-not = refl

redIsDeterministic' : ∀ {M N1 N2 : Expr} → ReducesTo M N1 → ReducesTo M N2 → Just N1 ≡ Just N2
redIsDeterministic' h1 h2 rewrite sym (red→step h1) | sym (red→step h2) = refl

redIsDeterministic : ∀ {M N1 N2 : Expr} → ReducesTo M N1 → ReducesTo M N2 → N1 ≡ N2
redIsDeterministic h1 h2 = Just-injective (redIsDeterministic' h1 h2)

normalNeverReduces : ∀ {M : Expr} → Normal M → (∀ {N : Expr} → ¬ (ReducesTo M N))
normalNeverReduces {M} normalM red with smallStep M in eqM
... | Nothing = injection-maybe (trans (sym eqM) (red→step red))
... | Just _  = injection-maybe (trans (sym (normalStepNothing normalM)) eqM)

neutralNeverReduces : ∀ {M : Expr} → Neutral M → (∀ {N : Expr} → ¬ (ReducesTo M N))
neutralNeverReduces neutralM red = normalNeverReduces (no-ne neutralM) red

neverReducesNormal : ∀ {L : Expr} → (∀ {M : Expr} → ¬ ReducesTo L M) → Normal L
neverReducesNormal {L} h with smallStep L in eqL
... | Nothing = stepNothingNormal eqL
... | Just _  = ⊥-elim (h (step→red eqL))
