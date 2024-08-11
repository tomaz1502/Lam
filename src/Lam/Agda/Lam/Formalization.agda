-- NOTE: Consider the type of subst as: {A : Set} {x y : A} (P : A -> Set) : x ≡ y → P x → P y

module Lam.Formalization where

module TypeChecker where
  open import Data.Fin.Base         using (fromℕ<)
  open import Data.List
  open import Data.Nat              using (ℕ; _<_)
  open import Data.Product          using (_×_) renaming (_,_ to ⟨_,_⟩)
  open import Function.Base         using (id)
  open import Relation.Binary.PropositionalEquality using
    (_≡_; refl; sym; trans; cong; subst)
  open Relation.Binary.PropositionalEquality.≡-Reasoning

  open import Data.Char using (Char)
  open import Haskell.Prelude using
    (Bool; Int; Maybe; Just; Nothing; _>>=_; case_of_; if_then_else_; maybe; _==_)

  open import Lam.Data
  open import Lam.TypeChecker
  open import Lam.UtilsAgda

  data _⊢_∶_ : TypingContext → Expr → Type → Set where

    ⊢b : ∀ {Γ : TypingContext} {b : Bool}
      → Γ ⊢ BoolVal b ∶ BoolT

    ⊢n : ∀ {Γ : TypingContext} {z : Int}
      → Γ ⊢ NumVal z ∶ IntT

    ⊢|| : ∀ {Γ : TypingContext}
      → Γ ⊢ PrimE OrPrim ∶ Arrow BoolT (Arrow BoolT BoolT)

    ⊢&& : ∀ {Γ : TypingContext}
      → Γ ⊢ PrimE AndPrim ∶ Arrow BoolT (Arrow BoolT BoolT)

    ⊢! : ∀ {Γ : TypingContext}
      → Γ ⊢ PrimE NotPrim ∶ Arrow BoolT BoolT

    ⊢+ : ∀ {Γ : TypingContext}
      → Γ ⊢ PrimE PlusPrim ∶ Arrow IntT (Arrow IntT IntT)

    ⊢- : ∀ {Γ : TypingContext}
      → Γ ⊢ PrimE MinusPrim ∶ Arrow IntT (Arrow IntT IntT)

    ⊢* : ∀ {Γ : TypingContext}
      → Γ ⊢ PrimE MultPrim ∶ Arrow IntT (Arrow IntT IntT)

    ⊢ite : ∀ {Γ : TypingContext} {b t e : Expr} {A : Type}
      → Γ ⊢ b ∶ BoolT
      → Γ ⊢ t ∶ A
      → Γ ⊢ e ∶ A
      ------------------
      → Γ ⊢ Ite b t e ∶ A

    ⊢v : ∀ {Γ : TypingContext} {i : Nat}
      → {h : natToℕ i < length Γ}
      --------------------------------
      → Γ ⊢ Var i ∶ lookup Γ (fromℕ< h)

    ⊢l : ∀ {Γ : TypingContext} {name : Id} {body : Expr} {dom codom : Type}
      → (dom ∷ Γ) ⊢ body ∶ codom
      ----------------------------------------
      → Γ ⊢ Lam name dom body ∶ Arrow dom codom

    ⊢a : ∀ {Γ : TypingContext} {f x : Expr} {dom codom : Type}
      → Γ ⊢ f ∶ Arrow dom codom
      → Γ ⊢ x ∶ dom
      --------------------
      → Γ ⊢ App f x ∶ codom

  ⊢→tc : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → Γ ⊢ e ∶ t → typeCheck' Γ e ≡ Just t
  ⊢→tc ⊢b  = refl
  ⊢→tc ⊢n  = refl
  ⊢→tc ⊢&& = refl
  ⊢→tc ⊢|| = refl
  ⊢→tc ⊢!  = refl
  ⊢→tc ⊢+  = refl
  ⊢→tc ⊢-  = refl
  ⊢→tc ⊢*  = refl
  ⊢→tc {Γ} {Ite b t e} {ty} (⊢ite tb tt te)
    rewrite
      ⊢→tc {Γ} {b} {BoolT} tb
    | ⊢→tc {Γ} {t} {ty} tt
    | ⊢→tc {Γ} {e} {ty} te
    | eqType-refl ty = refl
  ⊢→tc (⊢v {Γ} {i} {h}) = lookup≡ {Type} {Γ} {i} h
  ⊢→tc {Γ} {Lam name dom body} {Arrow dom codom} (⊢l {Γ} {name} {body} {dom} {codom} wt) =
    begin
      typeCheck' Γ (Lam name dom body)
    ≡⟨⟩
      (typeCheck' (dom ∷ Γ) body >>= (λ t' → Just (Arrow dom t')))
    ≡⟨ cong (λ x → x >>= (λ t' → Just (Arrow dom t'))) (⊢→tc {dom ∷ Γ} {body} {codom} wt) ⟩
      ((Just codom >>= (λ t' → Just (Arrow dom t'))))
    ≡⟨⟩
      Just (Arrow dom codom)
    ∎
  ⊢→tc {Γ} {App f x} {codom} (⊢a {Γ} {f} {x} {dom} {codom} wt₁ wt₂)
    rewrite ⊢→tc {Γ} {f} {Arrow dom codom} wt₁ | ⊢→tc {Γ} {x} {dom} wt₂ | eqType-refl dom = refl

  tc→⊢ : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → typeCheck' Γ e ≡ Just t → Γ ⊢ e ∶ t
  tc→⊢ {Γ} {App e₁ e₂} {t} eq with typeCheck' Γ e₁ in e₁Type
  ... | Just (Arrow t₁ t₂) with typeCheck' Γ e₂ in e₂Type
  ... | Just t₃ with iteAbs (λ()) eq
  ...   | ⟨ t₁Eqt₃ , tEqt₂ ⟩ =
              let e₁Typet₁Tot = subst (λ x -> Γ ⊢ e₁ ∶ (Arrow t₁ x)) (Just-injective tEqt₂) (tc→⊢ e₁Type)
                  e₂Typet₁ = subst (λ x -> Γ ⊢ e₂ ∶ x) (sym (eqType->≡ t₁Eqt₃)) (tc→⊢ e₂Type)
              in ⊢a e₁Typet₁Tot e₂Typet₁
  tc→⊢ {Γ} {Lam x t' e₁} {t} eq with typeCheck' (t' ∷ Γ) e₁ in te
  ... | Just t'' rewrite (sym (Just-injective eq)) = ⊢l (tc→⊢ {t' ∷ Γ} {e₁} {t''} te)
  tc→⊢ {Γ} {Var x} {t} eq =
    let x<lenΓ = lookup?< {Type} {Γ} {x} eq in
    let lookupMaybeEqLookup = lookup≡ {Type} {Γ} {x} x<lenΓ in
    let justTEqJustLookup = trans (sym eq) lookupMaybeEqLookup in
    let tEqLookup = Just-injective justTEqJustLookup in
    subst (λ t' -> Γ ⊢ Var x ∶ t') (sym tEqLookup) (⊢v {Γ} {x} {x<lenΓ})
  tc→⊢ {Γ} {BoolVal b} {t} eq rewrite sym (Just-injective eq) = ⊢b
  tc→⊢ {Γ} {NumVal z} {t} eq rewrite sym (Just-injective eq)  = ⊢n
  tc→⊢ {Γ} {PrimE PlusPrim} {t} eq rewrite sym (Just-injective eq) = ⊢+
  tc→⊢ {Γ} {PrimE MinusPrim} {t} eq rewrite sym (Just-injective eq) = ⊢-
  tc→⊢ {Γ} {PrimE MultPrim} {t} eq rewrite sym (Just-injective eq) = ⊢*
  tc→⊢ {Γ} {PrimE AndPrim} {t} eq rewrite sym (Just-injective eq) = ⊢&&
  tc→⊢ {Γ} {PrimE OrPrim} {t} eq rewrite sym (Just-injective eq) = ⊢||
  tc→⊢ {Γ} {PrimE NotPrim} {t} eq rewrite sym (Just-injective eq) = ⊢!
  -- Weirdly, doing parallel with clauses doesn't work here, we have to nest them
  tc→⊢ {Γ} {Ite b t e} {ty} eq with typeCheck' Γ b in bPf
  ... | Just BoolT with typeCheck' Γ t in tPf
  ...   | Just tt with typeCheck' Γ e in ePf
  ...     | Just te with iteAbs {b = eqType tt te} (λ()) eq
  ...       | ⟨ eqTypeTtTe , justTyEqTt ⟩
              rewrite
                sym (Just-injective justTyEqTt)
              | eqType->≡ {tt} {te} eqTypeTtTe = ⊢ite (tc→⊢ bPf) (tc→⊢ tPf) (tc→⊢ ePf)

  module Examples where

    open import Relation.Nullary using (¬_)
    open import Data.Bool using (true)

    ex1 : [] ⊢ BoolVal true ∶ BoolT
    ex1 = ⊢b

    ex2 : ¬ ([] ⊢ BoolVal true ∶ IntT)
    ex2 ()

    ex3 : ∀ (t : Type) → ¬ ([] ⊢ App (App (PrimE PlusPrim) (BoolVal true)) (BoolVal true) ∶ t)
    ex3 t (⊢a (⊢a () _) ⊢b)

    ex4 : ∀ (t : Type) → ¬ ([ IntT ] ⊢ Ite (Var Z) (BoolVal true) (BoolVal true) ∶ t)
    ex4 t (⊢ite () _ _)

module Evaluator where
  open import Lam.Data
  open import Lam.Evaluator
  open import Lam.UtilsAgda

  open import Haskell.Prelude                       using (Just; Nothing; Int; Bool; _+_; _-_; _*_; _&&_; _||_; not)

  open import Data.Bool using (true; false)
  open import Data.Empty                            using (⊥-elim)
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

  data Normal where
    no-ne : ∀ {M : Expr}
      → Neutral M
      ----------
      → Normal M

    no-a : ∀ {s : Id} {ty : Type} {N : Expr}
      → Normal N
      ---------------------
      → Normal (Lam s ty N)

  -- Normal is the terms of the original lambda calculus that can't reduce anymore
  -- We are extending this with the constants of our languages in NormalExt
  -- In the end, normalization will give a term that is NormalExt and well-typed
  data NormalExt : Expr → Set where
    noe-no : ∀ {M : Expr}
      → Normal M
      -------------
      → NormalExt M

    noe-num : ∀ {i : Int}
      → NormalExt (NumVal i)

    noe-bool : ∀ {b : Bool}
      → NormalExt (BoolVal b)

  data ReducesTo : Expr → Expr → Set where
    r-a : ∀ {L L' M : Expr}
      → ReducesTo L L'
      ---------------------
      → ReducesTo (App L M) (App L' M)

    r-a' : ∀ {V M M' : Expr}
      → NormalExt V
      → ReducesTo M M'
      ---------------------
      → ReducesTo (App V M) (App V M')

    r-l : ∀ {s : Id} {ty : Type} {L V : Expr}
      → NormalExt V
      → NormalExt L
      ---------------------------
      → ReducesTo (App (Lam s ty L) V) (shiftDown (substitute Z (shiftUp V) L))
      -- using a predicate to specify substitution here gets pretty ugly

    r-l' : ∀ {s : Id} {ty : Type} {L L' : Expr}
      → ReducesTo L L'
      ---------------------------
      → ReducesTo (Lam s ty L) (Lam s ty L')

    r-plus : ∀ {i1 i2 : Int}
      ------------------------------------------------------------------------------------
      → ReducesTo (App (App (PrimE PlusPrim) (NumVal i1)) (NumVal i2)) (NumVal (i1 + i2))

    r-minus : ∀ {i1 i2 : Int}
      ------------------------------------------------------------------------------------
      → ReducesTo (App (App (PrimE MinusPrim) (NumVal i1)) (NumVal i2)) (NumVal (i1 - i2))

    r-mult : ∀ {i1 i2 : Int}
      -----------------------------------------------------------------------------------
      → ReducesTo (App (App (PrimE MultPrim) (NumVal i1)) (NumVal i2)) (NumVal (i1 * i2))

    r-and : ∀ {b1 b2 : Bool}
      -------------------------------------------------------------------------------------
      → ReducesTo (App (App (PrimE AndPrim) (BoolVal b1)) (BoolVal b2)) (BoolVal (b1 && b2))

    r-or : ∀ {b1 b2 : Bool}
      -------------------------------------------------------------------------------------
      → ReducesTo (App (App (PrimE OrPrim) (BoolVal b1)) (BoolVal b2)) (BoolVal (b1 || b2))

    r-not : ∀ {b : Bool}
      ---------------------------------------------------------------
      → ReducesTo (App (PrimE NotPrim) (BoolVal b)) (BoolVal (not b))

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

  normalNeverReduces : ∀ {M : Expr} → Normal M → (∀ {N : Expr} → ¬ (ReducesTo M N))
  normalNeverReduces {Lam x x₁ M} (no-a normalM) (r-l' red) = normalNeverReduces normalM red
  normalNeverReduces {App M M₁} (no-ne (ne-a neutralM x₁)) (r-a red) = normalNeverReduces (no-ne neutralM) red
  normalNeverReduces {App M M₁} (no-ne (ne-a x x₁)) (r-a' x₂ red) = normalNeverReduces x₁ red
  normalNeverReduces {App .(App (PrimE PlusPrim) (NumVal _)) .(NumVal _)} (no-ne (ne-a (ne-a () x₂) x₁)) r-plus
  normalNeverReduces {App .(App (PrimE MinusPrim) (NumVal _)) .(NumVal _)} (no-ne (ne-a (ne-a () x₂) x₁)) r-minus
  normalNeverReduces {App .(App (PrimE MultPrim) (NumVal _)) .(NumVal _)} (no-ne (ne-a (ne-a () x₂) x₁)) r-mult
  normalNeverReduces {App .(App (PrimE AndPrim) (BoolVal _)) .(BoolVal _)} (no-ne (ne-a (ne-a () x₂) x₁)) r-and
  normalNeverReduces {App .(App (PrimE OrPrim) (BoolVal _)) .(BoolVal _)} (no-ne (ne-a (ne-a () x₂) x₁)) r-or
  normalNeverReduces {Ite M M₁ M₂} (no-ne ()) red

  normalExtNeverReduces : ∀ {M : Expr} → NormalExt M → (∀ {N : Expr} → ¬ (ReducesTo M N))
  normalExtNeverReduces (noe-no normalM) = normalNeverReduces normalM

  redIsDeterministic : ∀ {M N1 N2 : Expr} → ReducesTo M N1 → ReducesTo M N2 → N1 ≡ N2
  redIsDeterministic (r-a red1) (r-a red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-a red1) (r-a' normalExtM red2) = ⊥-elim (normalExtNeverReduces normalExtM red1)
  redIsDeterministic (r-a (r-l' red1)) (r-l x x₁) = ⊥-elim (normalExtNeverReduces x₁ red1)
  redIsDeterministic (r-a (r-a ())) r-plus
  redIsDeterministic (r-a (r-a' x ())) r-plus
  redIsDeterministic (r-a (r-a ())) r-minus
  redIsDeterministic (r-a (r-a' x ())) r-minus
  redIsDeterministic (r-a (r-a ())) r-mult
  redIsDeterministic (r-a (r-a' x ())) r-mult
  redIsDeterministic (r-a (r-a ())) r-and
  redIsDeterministic (r-a (r-a' x ())) r-and
  redIsDeterministic (r-a (r-a ())) r-or
  redIsDeterministic (r-a (r-a' x ())) r-or
  redIsDeterministic (r-a' x red1) (r-a red2) = ⊥-elim (normalExtNeverReduces x red2)
  redIsDeterministic (r-a' x red1) (r-a' x₁ red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-a' x red1) (r-l x₁ x₂) = ⊥-elim (normalExtNeverReduces x₁ red1)
  redIsDeterministic (r-l x x₁) (r-a (r-l' red2)) = ⊥-elim (normalExtNeverReduces x₁ red2)
  redIsDeterministic (r-l x x₁) (r-a' x₂ red2) = ⊥-elim (normalExtNeverReduces x red2)
  redIsDeterministic (r-l x x₁) (r-l x₂ x₃) = refl
  redIsDeterministic (r-l' red1) (r-l' red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic r-plus (r-a (r-a ()))
  redIsDeterministic r-plus (r-a (r-a' x ()))
  redIsDeterministic r-plus r-plus = refl
  redIsDeterministic r-minus (r-a (r-a ()))
  redIsDeterministic r-minus (r-a (r-a' x ()))
  redIsDeterministic r-minus r-minus = refl
  redIsDeterministic r-mult (r-a (r-a ()))
  redIsDeterministic r-mult (r-a (r-a' x ()))
  redIsDeterministic r-mult r-mult = refl
  redIsDeterministic r-and (r-a (r-a ()))
  redIsDeterministic r-and (r-a (r-a' x ()))
  redIsDeterministic r-and r-and = refl
  redIsDeterministic r-or (r-a (r-a ()))
  redIsDeterministic r-or (r-a (r-a' x ()))
  redIsDeterministic r-or r-or = refl
  redIsDeterministic r-not r-not = refl
  redIsDeterministic r-ite-true r-ite-true = refl
  redIsDeterministic r-ite-false r-ite-false = refl
  redIsDeterministic (r-ite red1) (r-ite red2) rewrite redIsDeterministic red1 red2 = refl

  normalImpliesNeutral : ∀ {L M : Expr} → Normal (App L M) → Neutral (App L M)
  normalImpliesNeutral (no-ne h) = h

  -- -- no longer holds
  -- -- stepNothingNormal : ∀ {V : Expr} → smallStep V ≡ Nothing → NormalExt V
  -- -- stepNothingNormal {Var _} h = noe-no (no-ne ne-v)
  -- -- stepNothingNormal {Lam x x₁ V} h = {!!}
  -- -- stepNothingNormal {App V V₁} h = {!!}
  -- -- stepNothingNormal {Ite V V₁ V₂} h = {!!}
  -- -- stepNothingNormal {NumVal x} h = noe-num
  -- -- stepNothingNormal {BoolVal x} h = noe-bool
  -- -- stepNothingNormal {PrimE x} h = {!!}

  -- normalStepNothing : ∀ {V : Expr} → Normal V → smallStep V ≡ Nothing
  -- neutralStepNothing : ∀ {V : Expr} → Neutral V → smallStep V ≡ Nothing

  -- normalStepNothing (no-ne neutralV) = neutralStepNothing neutralV
  -- normalStepNothing (no-a nv) rewrite normalStepNothing nv = refl

  -- neutralStepNothing ne-v = refl
  -- neutralStepNothing {App (Var _) M} (ne-a neutralL normalM) rewrite neutralStepNothing neutralL | normalStepNothing normalM = refl
  -- neutralStepNothing {App (App (Var x) L2) M} (ne-a neutralL normalM) rewrite neutralStepNothing neutralL | normalStepNothing normalM = refl
  -- neutralStepNothing {App (App (Lam x x₁ L1) L2) M} (ne-a (ne-a () x₂) normalM)
  -- neutralStepNothing {App (App (App L1 L3) L2) M} (ne-a neutralL normalM) rewrite neutralStepNothing neutralL | normalStepNothing normalM = refl
  -- neutralStepNothing {App (App (Ite L1 L3 L4) L2) M} (ne-a (ne-a () x) normalM)
  -- neutralStepNothing {App (App (NumVal x) L2) M} (ne-a (ne-a () x₁) normalM)
  -- neutralStepNothing {App (App (BoolVal x) L2) M} (ne-a (ne-a () x₁) normalM)
  -- neutralStepNothing {App (App (PrimE x) L2) M} (ne-a (ne-a () x₁) normalM)

  -- normalExtStepNothing : ∀ {V : Expr} → NormalExt V → smallStep V ≡ Nothing
  -- normalExtStepNothing (noe-no h) = normalStepNothing h
  -- normalExtStepNothing noe-num = refl
  -- normalExtStepNothing noe-bool = refl

  -- step→red : ∀ {M N : Expr} → smallStep M ≡ Just N → ReducesTo M N
  -- step→red h = {!!}
  -- -- step→red {Lam s ty M} {N} eq with smallStep M in eqM
  -- -- ... | Just _ rewrite sym (Just-injective eq) = r-l (step→red eqM)
  -- -- step→red {App L M} {N} eq with smallStep L in eqL
  -- -- ... | Just L' rewrite sym (Just-injective eq) = r-a (step→red eqL)
  -- -- ... | Nothing with smallStep M in eqM
  -- -- ...   | Just M' rewrite sym (Just-injective eq) = r-a' (stepNothingNormal eqL) (step→red eqM)
  -- -- ...   | Nothing with L
  -- -- ...     | Lam _ _ L' with smallStep L' in eqL'
  -- -- ...       | Nothing rewrite sym (Just-injective eq) = r-l' (stepNothingNormal eqM) (stepNothingNormal eqL')

  -- red→step : ∀ {M N : Expr} → ReducesTo M N → smallStep M ≡ Just N
  -- red→step {Lam x x₁ M} {N} h = {!!}
  -- red→step {App M M₁} {N} h = {!!}
  -- -- red→step (r-a red) rewrite red→step red = refl
  -- -- red→step (r-l red) rewrite red→step red = refl
  -- -- red→step (r-a' normalV red) rewrite normalStepNothing normalV | red→step red = refl
  -- -- red→step (r-l' normalL normalV) rewrite normalStepNothing normalV | normalStepNothing normalL = refl
