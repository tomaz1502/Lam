module Lam.FormalizationEvaluator where

open import Lam.Data
open import Lam.Evaluator
open import Lam.UtilsAgda

open import Haskell.Prelude                       using (Just; Nothing; Int; Bool; _+_; _-_; _*_; _&&_; _||_; not; _<_)

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

  noe-ltInt : ∀ {L M : Expr}
    → Normal L
    → Normal M
    → (∀ {i j : Int} → ¬ (L ≡ (Const (NumC i)) × M ≡ (Const (NumC j))))
    ---------------------
    → Neutral (BinOp LtInt L M)

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

  noe-mkPair : ∀ {L M : Expr}
    → Normal L
    → Normal M
    ----------------------------
    → Neutral (BinOp MkPair L M)

  noe-not : ∀ {L : Expr}
    → Normal L
    → (∀ {i : Bool} → ¬ (L ≡ (Const (BoolC i))))
    -------------------
    → Neutral (UnaryOp Not L)

  noe-proj1 : ∀ {L : Expr}
    → Normal L
    → (∀ {M N : Expr} → ¬ (L ≡ (BinOp MkPair M N)))
    --------------------------
    → Neutral (UnaryOp Proj1 L)

  noe-proj2 : ∀ {L : Expr}
    → Normal L
    → (∀ {M N : Expr} → ¬ (L ≡ (BinOp MkPair M N)))
    --------------------------
    → Neutral (UnaryOp Proj2 L)

  noe-inl : ∀ {L : Expr} {T : TypeL}
    → Normal L
    -------------------
    → Neutral (Inl L T)

  noe-inr : ∀ {L : Expr} {T : TypeL}
    → Normal L
    -------------------
    → Neutral (Inr L T)

  noe-case : ∀ {L M N : Expr} {id2 id3 : Id}
    → Normal L
    → (∀ {L' T} → ¬ (L ≡ Inl L' T))
    → (∀ {L' T} → ¬ (L ≡ Inr L' T))
    ----------------------
    → Neutral (Case L id2 M id3 N)

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
    → ReducesTo (App (Lam s ty V1) V2) (substitute V2 V1)
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

  r-ltInt : ∀ {i1 i2 : Int}
    → ReducesTo (BinOp LtInt (Const (NumC i1)) (Const (NumC i2))) (Const (BoolC (i1 < i2)))

  r-and : ∀ {i1 i2 : Bool}
    → ReducesTo (BinOp And (Const (BoolC i1)) (Const (BoolC i2))) (Const (BoolC (i1 && i2)))

  r-or : ∀ {i1 i2 : Bool}
    → ReducesTo (BinOp Or (Const (BoolC i1)) (Const (BoolC i2))) (Const (BoolC (i1 || i2)))

  r-unop : ∀ {L L' : Expr} {o : UnaryOpT}
    → ReducesTo L L'
    ----------------------------------------
    → ReducesTo (UnaryOp o L) (UnaryOp o L')

  r-not : ∀ {b : Bool}
    → ReducesTo (UnaryOp Not (Const (BoolC b))) (Const (BoolC (not b)))

  r-proj1 : ∀ {L M : Expr}
    → Normal L
    → Normal M
    ------------------------------------------------
    → ReducesTo (UnaryOp Proj1 (BinOp MkPair L M)) L

  r-proj2 : ∀ {L M : Expr}
    → Normal L
    → Normal M
    ------------------------------------------------
    → ReducesTo (UnaryOp Proj2 (BinOp MkPair L M)) M

  r-ite-true : ∀ {L M : Expr}
    → ReducesTo (Ite (Const (BoolC true)) L M) L

  r-ite-false : ∀ {L M : Expr}
    → ReducesTo (Ite (Const (BoolC false)) L M) M

  r-ite : ∀ {L L' M N : Expr}
    → ReducesTo L L'
    ------------------------------------
    → ReducesTo (Ite L M N) (Ite L' M N)

  r-inl : ∀ {L L' : Expr} {T : TypeL}
    → ReducesTo L L'
    -------------------------------
    → ReducesTo (Inl L T) (Inl L' T)

  r-inr : ∀ {L L' : Expr} {T : TypeL}
    → ReducesTo L L'
    -------------------------------
    → ReducesTo (Inr L T) (Inr L' T)

  r-case1 : ∀ {L L' M N : Expr} {id2 id3 : Id}
    → ReducesTo L L'
    -------------------------------------
    → ReducesTo (Case L id2 M id3 N) (Case L' id2 M id3 N)

  r-case2 : ∀ {L M N : Expr} {T : TypeL} {id2 id3 : Id}
    → Normal L
    -------------------------------------------------
    → ReducesTo (Case (Inl L T) id2 M id3 N) (substitute L M)

  r-case3 : ∀ {L M N : Expr} {T : TypeL} {id2 id3 : Id}
    → Normal L
    -------------------------------------------------
    → ReducesTo (Case (Inr L T) id2 M id3 N) (substitute L N)

normalImpliesNeutralIte : ∀ {L M N : Expr} → Normal (Ite L M N) → Neutral (Ite L M N)
normalImpliesNeutralIte (no-ne h) = h

normalImpliesNeutralApp : ∀ {L M : Expr} → Normal (App L M) → Neutral (App L M)
normalImpliesNeutralApp (no-ne h) = h

normalImpliesNeutralBinOp : ∀ {L M : Expr} {O : BinOpT} → Normal (BinOp O L M) → Neutral (BinOp O L M)
normalImpliesNeutralBinOp (no-ne h) = h

normalImpliesNeutralUnOp : ∀ {L : Expr} {O : UnaryOpT} → Normal (UnaryOp O L) → Neutral (UnaryOp O L)
normalImpliesNeutralUnOp (no-ne h) = h

normalImpliesNeutralInl : ∀ {L : Expr} {T : TypeL} → Normal (Inl L T) → Neutral (Inl L T)
normalImpliesNeutralInl (no-ne h) = h

normalImpliesNeutralInr : ∀ {L : Expr} {T : TypeL} → Normal (Inr L T) → Neutral (Inr L T)
normalImpliesNeutralInr (no-ne h) = h

normalImpliesNeutralCase : ∀ {L M N : Expr} {id2 id3 : Id} → Normal (Case L id2 M id3 N) → Neutral (Case L id2 M id3 N)
normalImpliesNeutralCase (no-ne h) = h

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
...     | Inl _ _ = no-ne (ne-a (normalImpliesNeutralInl (stepNothingNormal eqL)) (stepNothingNormal eqM))
...     | Inr _ _ = no-ne (ne-a (normalImpliesNeutralInr (stepNothingNormal eqL)) (stepNothingNormal eqM))
...     | Case _ _ _ _ _ = no-ne (ne-a (normalImpliesNeutralCase (stepNothingNormal eqL)) (stepNothingNormal eqM))
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
stepNothingNormal {BinOp LtInt L M} eq | Nothing | Nothing =
  no-ne (noe-ltInt (stepNothingNormal eqL) (stepNothingNormal eqM) (ltStepNothing eq))
  where
    ltStepNothing : ∀ {i j} → smallStepBinOp LtInt L M Nothing Nothing ≡ Nothing → ¬ ((L ≡ Const (NumC i)) × (M ≡ Const (NumC j)))
    ltStepNothing () ⟨ refl , refl ⟩
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
stepNothingNormal {BinOp MkPair L M} eq | Nothing | Nothing = no-ne (noe-mkPair (stepNothingNormal eqL) (stepNothingNormal eqM))
stepNothingNormal {UnaryOp Not V} eq with smallStep V in eqV
... | Nothing = no-ne (noe-not (stepNothingNormal eqV) (notStepNothing eq))
  where
    notStepNothing : ∀ {i} → smallStepUnOp Not V Nothing ≡ Nothing → ¬ (V ≡ Const (BoolC i))
    notStepNothing () refl
stepNothingNormal {UnaryOp Proj1 V} eq with smallStep V in eqV
... | Nothing = no-ne (noe-proj1 (stepNothingNormal eqV) (proj1StepNothing eq))
  where
    proj1StepNothing : ∀ {L M} → smallStepUnOp Proj1 V Nothing ≡ Nothing → ¬ (V ≡ BinOp MkPair L M)
    proj1StepNothing () refl
stepNothingNormal {UnaryOp Proj2 V} eq with smallStep V in eqV
... | Nothing = no-ne (noe-proj2 (stepNothingNormal eqV) (proj1StepNothing eq))
  where
    proj1StepNothing : ∀ {L M} → smallStepUnOp Proj2 V Nothing ≡ Nothing → ¬ (V ≡ BinOp MkPair L M)
    proj1StepNothing () refl
stepNothingNormal {Inl V _} eq with smallStep V in eqV
... | Nothing = no-ne (noe-inl (stepNothingNormal eqV))
stepNothingNormal {Inr V _} eq with smallStep V in eqV
... | Nothing = no-ne (noe-inr (stepNothingNormal eqV))
stepNothingNormal {Case L _ M _ N} eq with smallStep L in eqL
... | Nothing = no-ne (noe-case (stepNothingNormal eqL) (caseStepNothingL eq) (caseStepNothingR eq))
  where
    caseStepNothingL : ∀ {L M N x T id2 id3} → smallStepCase L id2 M id3 N Nothing ≡ Nothing → ¬ (L ≡ Inl x T)
    caseStepNothingL () refl
    caseStepNothingR : ∀ {L M N x T id2 id3} → smallStepCase L id2 M id3 N Nothing ≡ Nothing → ¬ (L ≡ Inr x T)
    caseStepNothingR () refl


caseStepNothing₂ : ∀ {L M N x id2 id3} → smallStepCase L id2 M id3 N Nothing ≡ Just x → (∃[ e1 ] ∃[ T1 ] (L ≡ Inl e1 T1)) ⊎ (∃[ e2 ] ∃[ T2 ] (L ≡ Inr e2 T2))
caseStepNothing₂ {Inl L x₁} {M} {N} {x} eq = inj₁ ⟨ L , ⟨ x₁ , refl ⟩ ⟩
caseStepNothing₂ {Inr L x₁} {M} {N} {x} eq = inj₂ ⟨ L , ⟨ x₁ , refl ⟩ ⟩

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
neutralStepNothing {App (Inl _ _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Inr _ _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing {App (Case _ _ _ _ _) _} (ne-a h x) rewrite neutralStepNothing h | normalStepNothing x = refl
neutralStepNothing noe-const = refl
neutralStepNothing {Ite L M N} (noe-ite h1 h2) rewrite normalStepNothing h1 with smallStepIte L M N Nothing in eq
neutralStepNothing {Ite L M N} (noe-ite h1 h2) | Nothing = refl
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
neutralStepNothing {BinOp LtInt L M} (noe-ltInt h1 h2 h3)
  rewrite normalStepNothing h1
       |  normalStepNothing h2 with smallStepBinOp LtInt L M Nothing Nothing in eq
neutralStepNothing {BinOp LtInt L M} (noe-ltInt h1 h2 h3) | Nothing = refl
neutralStepNothing {BinOp LtInt (Const (NumC L')) (Const (NumC M'))} (noe-ltInt h1 h2 h3) | Just V' = ⊥-elim (h3 {L'} {M'} ⟨ refl , refl ⟩)
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
neutralStepNothing {BinOp MkPair L M} (noe-mkPair h1 h2)
  rewrite normalStepNothing h1 | normalStepNothing h2 = refl
neutralStepNothing {UnaryOp Not L} (noe-not x h) rewrite normalStepNothing x with smallStepUnOp Not L Nothing in eq
neutralStepNothing {UnaryOp Not L}                  (noe-not _ _) | Nothing = refl
neutralStepNothing {UnaryOp Not (Const (BoolC L'))} (noe-not _ h) | Just _ = ⊥-elim (h {L'} refl)
neutralStepNothing {UnaryOp Proj1 L} (noe-proj1 x h) rewrite normalStepNothing x with smallStepUnOp Proj1 L Nothing in eq
neutralStepNothing {UnaryOp Proj1 L} (noe-proj1 x h) | Nothing = refl
neutralStepNothing {UnaryOp Proj1 (BinOp MkPair M N)} (noe-proj1 x h) | Just _ = ⊥-elim (h {M} {N} refl)
neutralStepNothing {UnaryOp Proj2 L} (noe-proj2 x h) rewrite normalStepNothing x with smallStepUnOp Proj2 L Nothing in eq
neutralStepNothing {UnaryOp Proj2 L} (noe-proj2 x h) | Nothing = refl
neutralStepNothing {UnaryOp Proj2 (BinOp MkPair M N)} (noe-proj2 x h) | Just _ = ⊥-elim (h {M} {N} refl)
neutralStepNothing {Inl _ _} (noe-inl h) rewrite normalStepNothing h = refl
neutralStepNothing {Inr _ _} (noe-inr h) rewrite normalStepNothing h = refl
neutralStepNothing {Case L id2 M id3 N} (noe-case h1 h2 h3) rewrite normalStepNothing h1 with smallStepCase L id2 M id3 N Nothing in eq
neutralStepNothing {Case L _ M _ N} (noe-case h1 h2 h3) | Nothing = refl
neutralStepNothing {Case L _ M _ N} (noe-case h1 h2 h3) | Just _ with caseStepNothing₂ eq
... | inj₁ ⟨ e , ⟨ T , h ⟩ ⟩ = ⊥-elim (h2 {e} {T} h)
... | inj₂ ⟨ e , ⟨ T , h ⟩ ⟩ = ⊥-elim (h3 {e} {T} h)

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
step→red {BinOp o L M} {N} h with smallStep L in eqL
step→red {BinOp o L M} {N} h | Just _ rewrite sym (Just-injective h) = r-binop1 (step→red eqL)
step→red {BinOp o L M} {N} h | Nothing with smallStep M in eqM
step→red {BinOp o L M} {N} h | Nothing | Just _ rewrite sym (Just-injective h) = r-binop2 (stepNothingNormal eqL) (step→red eqM)
step→red {BinOp Add (Const (NumC i)) M} {N} h | Nothing | Nothing with M
... | Const (NumC j) rewrite sym (Just-injective h) = r-add
step→red {BinOp Sub (Const (NumC i)) M} {N} h | Nothing | Nothing with M
... | Const (NumC j) rewrite sym (Just-injective h) = r-sub
step→red {BinOp Mul (Const (NumC i)) M} {N} h | Nothing | Nothing with M
... | Const (NumC j) rewrite sym (Just-injective h) = r-mul
step→red {BinOp LtInt (Const (NumC i)) M} {N} h | Nothing | Nothing with M
... | Const (NumC j) rewrite sym (Just-injective h) = r-ltInt
step→red {BinOp And (Const (BoolC i)) M} {N} h | Nothing | Nothing with M
... | Const (BoolC j) rewrite sym (Just-injective h) = r-and
step→red {BinOp Or (Const (BoolC i)) M}  {N} h | Nothing | Nothing with M
... | Const (BoolC j) rewrite sym (Just-injective h) = r-or
step→red {UnaryOp Not L} {M} h with smallStep L in eqL
step→red {UnaryOp Not L} {M} h | Just _ rewrite sym (Just-injective h) = r-unop (step→red eqL)
step→red {UnaryOp Not (Const (BoolC x))} {M} h | Nothing rewrite sym (Just-injective h) = r-not
step→red {UnaryOp Proj1 L} {M} h with smallStep L in eqL
step→red {UnaryOp Proj1 (BinOp MkPair E1 E2)} {E3} h | Nothing with smallStep E1 in eqE1 | smallStep E2 in eqE2
... | Nothing | Nothing rewrite sym (Just-injective h) = r-proj1 (stepNothingNormal eqE1) (stepNothingNormal eqE2)
step→red {UnaryOp Proj1 L} {M} h | Just L' rewrite sym (Just-injective h) = r-unop (step→red eqL)
step→red {UnaryOp Proj2 L} {M} h with smallStep L in eqL
step→red {UnaryOp Proj2 (BinOp MkPair E1 E2)} {E3} h | Nothing with smallStep E1 in eqE1 | smallStep E2 in eqE2
... | Nothing | Nothing rewrite sym (Just-injective h) = r-proj2 (stepNothingNormal eqE1) (stepNothingNormal eqE2)
step→red {UnaryOp Proj2 L} {M} h | Just L' rewrite sym (Just-injective h) = r-unop (step→red eqL)
step→red {Inl L T} {M} h with smallStep L in eqL
... | Just L' rewrite sym (Just-injective h) = r-inl (step→red eqL)
step→red {Inr L T} {M} h with smallStep L in eqL
... | Just L' rewrite sym (Just-injective h) = r-inr (step→red eqL)
step→red {Case L _ M _ N} {M'} h with smallStep L in eqL
step→red {Case (Inl L' x) _ M _ N} {M'} h | Nothing with smallStep L' in eqL'
... | Nothing rewrite sym (Just-injective h) = r-case2 (stepNothingNormal eqL')
step→red {Case (Inr L' x) _ M _ N} {M'} h | Nothing with smallStep L' in eqL'
... | Nothing rewrite sym (Just-injective h) = r-case3 (stepNothingNormal eqL')
step→red {Case L _ M _ N} {M'} h | Just L' rewrite sym (Just-injective h) = r-case1 (step→red eqL)

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
red→step r-ltInt = refl
red→step r-and = refl
red→step r-or = refl
red→step r-ite-true = refl
red→step r-ite-false = refl
red→step (r-ite h) rewrite red→step h = refl
red→step (r-unop h) rewrite red→step h = refl
red→step r-not = refl
red→step (r-proj1 h1 h2) rewrite normalStepNothing h1 | normalStepNothing h2 = refl
red→step (r-proj2 h1 h2) rewrite normalStepNothing h1 | normalStepNothing h2 = refl
red→step (r-inl h) rewrite red→step h = refl
red→step (r-inr h) rewrite red→step h = refl
red→step (r-case1 h) rewrite red→step h = refl
red→step (r-case2 h) rewrite normalStepNothing h = refl
red→step (r-case3 h) rewrite normalStepNothing h = refl

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
