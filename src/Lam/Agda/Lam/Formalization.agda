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

module TypeChecker where

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

  ⊢→tc : ∀ {Γ : TypingContext} {e : Expr} {t : Type} → Γ ⊢ e ∶ t → typeCheck' Γ e ≡ Just t
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
              e₂Typet₁ = subst (λ x -> Γ ⊢ e₂ ∶ x) (sym (==ᵗto≡ t₁Eqt₃)) (tc→⊢ e₂Type)
          in ⊢a e₁Typet₁Tot e₂Typet₁
  tc→⊢ {Γ} {Lam x t' e₁} {t} eq with typeCheck' (t' ∷ Γ) e₁ in te
  ... | Just t'' rewrite (sym (Just-injective eq)) = ⊢l (tc→⊢ {t' ∷ Γ} {e₁} {t''} te)
  tc→⊢ {Γ} {Var x} {t} eq =
    let x<lenΓ = lookup?< {Type} {Γ} {x} eq in
    let lookupMaybeEqLookup = lookup≡ {Type} {Γ} {x} x<lenΓ in
    let justTEqJustLookup = trans (sym eq) lookupMaybeEqLookup in
    let tEqLookup = Just-injective justTEqJustLookup in
    subst (λ t' -> Γ ⊢ Var x ∶ t') (sym tEqLookup) (⊢v {Γ} {x} {x<lenΓ})

module Evaluator where

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


  data MultiReduces : Expr → Expr → Set where
    done : ∀ {M : Expr}
      → MultiReduces M M

    step : ∀ {L M N : Expr}
      → L —→ M
      → MultiReduces M N
      --------
      → MultiReduces L N

  data Irreducible : Expr → Set where
    i-e : ∀ {M : Expr}
      → (∀ {N : Expr} → ¬ (M —→ N))
      ---------------
      → Irreducible M

  normalDontReduce : ∀ {M N : Expr} → Normal M → ¬ (M —→ N)
  normalDontReduce (no-ne (ne-a neutralL _)) (r-a lReduce) = normalDontReduce (no-ne neutralL) lReduce
  normalDontReduce (no-ne (ne-a neutralL normalM)) (r-a' normalL mReduce) =
    normalDontReduce normalM mReduce
  normalDontReduce (no-a normalN) (r-l nReduce) = normalDontReduce normalN nReduce

  normalImpliesIrreducible : ∀ {M : Expr} → Normal M → Irreducible M
  normalImpliesIrreducible normalM = i-e λ h -> normalDontReduce normalM h

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

  normalImpliesNeutral : ∀ {L M : Expr} → Normal (App L M) → Neutral (App L M)
  normalImpliesNeutral (no-ne h) = h

  stepNothingNormal : ∀ {V : Expr} → smallStep V ≡ Nothing → Normal V
  stepNothingNormal {Var _} h = no-ne ne-v
  stepNothingNormal {Lam _ _ V} h with smallStep V in eq
  ... | Nothing = no-a (stepNothingNormal eq)
  stepNothingNormal {App V1 V2} h with smallStep V1 in eqV1
  ... | Nothing with smallStep V2 in eqV2
  ...   | Nothing with V1
  ...     | Var k = no-ne (ne-a ne-v (stepNothingNormal eqV2))
  ...     | App V11 V12 = no-ne (ne-a (normalImpliesNeutral (stepNothingNormal eqV1)) (stepNothingNormal eqV2))

  normalStepNothing : ∀ {V : Expr} → Normal V → smallStep V ≡ Nothing
  neutralStepNothing : ∀ {V : Expr} → Neutral V → smallStep V ≡ Nothing

  normalStepNothing (no-ne neutralV) = neutralStepNothing neutralV
  normalStepNothing (no-a nv) rewrite normalStepNothing nv = refl

  neutralStepNothing ne-v = refl
  neutralStepNothing {App (Var _) M} (ne-a neutralL normalM) rewrite neutralStepNothing neutralL | normalStepNothing normalM = refl
  neutralStepNothing {App (App _ _) M} (ne-a neutralL normalM) rewrite neutralStepNothing neutralL | normalStepNothing normalM = refl

  step→red : ∀ {M N : Expr} → smallStep M ≡ Just N → M —→ N
  step→red {Lam s ty M} {N} eq with smallStep M in eqM
  ... | Just _ rewrite sym (Just-injective eq) = r-l (step→red eqM)
  step→red {App L M} {N} eq with smallStep L in eqL
  ... | Just L' rewrite sym (Just-injective eq) = r-a (step→red eqL)
  ... | Nothing with smallStep M in eqM
  ...   | Just M' rewrite sym (Just-injective eq) = r-a' (stepNothingNormal eqL) (step→red eqM)
  ...   | Nothing with L
  ...     | Lam _ _ L' with smallStep L' in eqL'
  ...       | Nothing rewrite sym (Just-injective eq) = r-l' (stepNothingNormal eqM) (stepNothingNormal eqL')

  red→step : ∀ {M N : Expr} → M —→ N → smallStep M ≡ Just N
  red→step (r-a red) rewrite red→step red = refl
  red→step (r-l red) rewrite red→step red = refl
  red→step (r-a' normalV red) rewrite normalStepNothing normalV | red→step red = refl
  red→step (r-l' normalL normalV) rewrite normalStepNothing normalV | normalStepNothing normalL = refl


  -- TODO: This is necessary since we marked `eval` as `NON_TERMINATING`
  -- This stops the typechecker from reducing this definition
  -- Ideally we would also do a formalization of `evalWithGas`,
  -- which would not require new axioms, but I need to think more
  -- about how this should be done
  postulate eval_def : ∀ {M : Expr} → eval M ≡ myCaseOf (smallStep M) λ { Nothing -> M ; (Just M') -> eval M' }

  mr→e : ∀ {M N : Expr} → MultiReduces M N → Irreducible N → eval M ≡ N
  mr→e {M} {M} done (i-e irreducibleM) with smallStep M in eqM
  ... | Nothing rewrite eval_def {M} | eqM = refl
  ... | Just M' = ⊥-elim (irreducibleM (step→red eqM))
  mr→e {L} {N} (step {L} {M} {N} LtoM MtoN) irreducibleN with smallStep L in eqL
  ... | Just L' rewrite eval_def {L} | red→step LtoM = mr→e MtoN irreducibleN
  ... | Nothing = ⊥-elim (normalDontReduce (stepNothingNormal eqL) LtoM)

  -- _ : ∀ {M N : Expr} → eval M ≡ N → ( (M —↠ N) × Irreducible N )
  -- _ {M} {N} h rewrite eval_def {M} with smallStep M in eqM
  -- ... | Nothing rewrite h = ⟨ done , normalImpliesIrreducible (stepNothingNormal eqM) ⟩
  -- -- here we are stuck because we can't use induction without breaking the termination checker
  -- ... | Just M' = {!!}

  -- MultiReduces n M N: I can go from M to N with gas n (or more)
  data MultiReducesGas : Nat → Expr → Expr → Set where
    done : ∀ {n : Nat} {M : Expr}
      → MultiReducesGas n M M

    step : ∀ {n : Nat} {L M N : Expr}
      → L —→ M
      → MultiReducesGas n M N
      --------
      → MultiReducesGas (S n) L N

  mrg→eg : ∀ {n : Nat} {M N : Expr} → MultiReducesGas n M N → Irreducible N → evalWithGas n M ≡ N
  mrg→eg {Z} done (i-e irreducibleN) = refl
  mrg→eg {S n} {M} {N} done (i-e irreducibleN) with smallStep N in eqN
  ... | Nothing = refl
  ... | Just _ = ⊥-elim (irreducibleN (step→red eqN))
  mrg→eg {S n} {M} {N} (step red reds) (i-e irreducibleN) with smallStep M in eqM
  ... | Nothing = ⊥-elim (normalDontReduce (stepNothingNormal eqM) red)
  ... | Just _ rewrite redIsDeterministic red (step→red eqM) = mrg→eg reds (i-e irreducibleN)

  eg→mrg : ∀ {n M N} → evalWithGas n M ≡ N → MultiReducesGas n M N
  eg→mrg {Z} {M} {N} h rewrite h = done
  eg→mrg {S n} {M} {N} h with smallStep M in eqM
  ... | Nothing rewrite h = done
  ... | Just M' = step (step→red eqM) (eg→mrg h)
