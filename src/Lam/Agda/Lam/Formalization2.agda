-- NOTE: Consider the type of subst as: {A : Set} {x y : A} (P : A -> Set) : x ≡ y → P x → P y

module Lam.Formalization2 where

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

    ⊢|| : ∀ {L M : Expr} {Γ : TypingContext}
      → Γ ⊢ L ∶ BoolT
      → Γ ⊢ M ∶ BoolT
      → Γ ⊢ Or L M ∶ BoolT

    ⊢&& : ∀ {L M : Expr} {Γ : TypingContext}
      → Γ ⊢ L ∶ BoolT
      → Γ ⊢ M ∶ BoolT
      → Γ ⊢ And L M ∶ BoolT

    ⊢! : ∀ {L : Expr} {Γ : TypingContext}
      → Γ ⊢ L ∶ BoolT
      → Γ ⊢ Not L ∶ BoolT

    ⊢+ : ∀ {L M : Expr} {Γ : TypingContext}
      → Γ ⊢ L ∶ IntT
      → Γ ⊢ M ∶ IntT
      → Γ ⊢ Add L M ∶ IntT

    ⊢- : ∀ {L M : Expr} {Γ : TypingContext}
      → Γ ⊢ L ∶ IntT
      → Γ ⊢ M ∶ IntT
      → Γ ⊢ Sub L M ∶ IntT

    ⊢* : ∀ {L M : Expr} {Γ : TypingContext}
      → Γ ⊢ L ∶ IntT
      → Γ ⊢ M ∶ IntT
      → Γ ⊢ Mul L M ∶ IntT


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
  ⊢→tc (⊢&& h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
  ⊢→tc (⊢|| h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
  ⊢→tc (⊢!  h)     rewrite ⊢→tc h = refl
  ⊢→tc (⊢+  h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
  ⊢→tc (⊢-  h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
  ⊢→tc (⊢*  h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
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
  -- Weirdly, doing parallel with clauses doesn't work here, we have to nest them
  tc→⊢ {Γ} {Ite b t e} {ty} eq with typeCheck' Γ b in bPf
  ... | Just BoolT with typeCheck' Γ t in tPf
  ...   | Just tt with typeCheck' Γ e in ePf
  ...     | Just te with iteAbs {b = eqType tt te} (λ()) eq
  ...       | ⟨ eqTypeTtTe , justTyEqTt ⟩
              rewrite
                sym (Just-injective justTyEqTt)
              | eqType->≡ {tt} {te} eqTypeTtTe = ⊢ite (tc→⊢ bPf) (tc→⊢ tPf) (tc→⊢ ePf)
  tc→⊢ {Γ} {Add e1 e2} eq with typeCheck' Γ e1 in eqE1
  ... | Just IntT with typeCheck' Γ e2 in eqE2
  ...   | Just IntT rewrite sym (Just-injective eq) = ⊢+ (tc→⊢ eqE1) (tc→⊢ eqE2)
  tc→⊢ {Γ} {Mul e1 e2} eq with typeCheck' Γ e1 in eqE1
  ... | Just IntT with typeCheck' Γ e2 in eqE2
  ...   | Just IntT rewrite sym (Just-injective eq) = ⊢* (tc→⊢ eqE1) (tc→⊢ eqE2)
  tc→⊢ {Γ} {Sub e1 e2} eq with typeCheck' Γ e1 in eqE1
  ... | Just IntT with typeCheck' Γ e2 in eqE2
  ...   | Just IntT rewrite sym (Just-injective eq) = ⊢- (tc→⊢ eqE1) (tc→⊢ eqE2)
  tc→⊢ {Γ} {And e1 e2} eq with typeCheck' Γ e1 in eqE1
  ... | Just BoolT with typeCheck' Γ e2 in eqE2
  ...   | Just BoolT rewrite sym (Just-injective eq) = ⊢&& (tc→⊢ eqE1) (tc→⊢ eqE2)
  tc→⊢ {Γ} {Or e1 e2}  eq with typeCheck' Γ e1 in eqE1
  ... | Just BoolT with typeCheck' Γ e2 in eqE2
  ...   | Just BoolT rewrite sym (Just-injective eq) = ⊢|| (tc→⊢ eqE1) (tc→⊢ eqE2)
  tc→⊢ {Γ} {Not e} eq with typeCheck' Γ e in eqE
  ... | Just BoolT rewrite sym (Just-injective eq) = ⊢! (tc→⊢ eqE)

  module Examples where

    open import Data.Bool using (true)
    open import Relation.Nullary using (¬_)

    ex1 : [] ⊢ BoolVal true ∶ BoolT
    ex1 = ⊢b

    ex2 : ¬ ([] ⊢ BoolVal true ∶ IntT)
    ex2 ()

    -- ex3 : ∀ (t : Type) → ¬ ([] ⊢ App (App (PrimE PlusPrim) (BoolVal true)) (BoolVal true) ∶ t)
    -- ex3 t (⊢a (⊢a () _) ⊢b)

    ex4 : ∀ (t : Type) → ¬ ([ IntT ] ⊢ Ite (Var Z) (BoolVal true) (BoolVal true) ∶ t)
    ex4 t (⊢ite () _ _)

module Evaluator where
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
      -- using a predicate to specify substitution here gets pretty ugly

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


  notStepNothing : ∀ {V : Expr} {i : Bool} → smallStepNot V Nothing ≡ Nothing → ¬ (V ≡ BoolVal i)
  notStepNothing () refl

  orStepNothing : ∀ {i j : Bool} {V1 V2 : Expr} → smallStepOr V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ BoolVal i) × (V2 ≡ BoolVal j))
  orStepNothing () ⟨ refl , refl ⟩

  andStepNothing : ∀ {i j : Bool} {V1 V2 : Expr} → smallStepAnd V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ BoolVal i) × (V2 ≡ BoolVal j))
  andStepNothing () ⟨ refl , refl ⟩

  addStepNothing : ∀ {i j : Int} {V1 V2 : Expr} → smallStepAdd V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ NumVal i) × (V2 ≡ NumVal j))
  addStepNothing () ⟨ refl , refl ⟩

  subStepNothing : ∀ {i j : Int} {V1 V2 : Expr} → smallStepSub V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ NumVal i) × (V2 ≡ NumVal j))
  subStepNothing () ⟨ refl , refl ⟩

  mulStepNothing : ∀ {i j : Int} {V1 V2 : Expr} → smallStepMul V1 V2 Nothing Nothing ≡ Nothing → ¬ ((V1 ≡ NumVal i) × (V2 ≡ NumVal j))
  mulStepNothing () ⟨ refl , refl ⟩

  iteStepNothing : ∀ {b : Bool} {L M N : Expr} → smallStepIte L M N Nothing ≡ Nothing → ¬ (L ≡ BoolVal b)
  iteStepNothing () refl

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
  stepNothingNormal {NumVal x} eq = no-ne noe-num
  stepNothingNormal {BoolVal x} eq = no-ne noe-bool
  stepNothingNormal {Add V1 V2} eq with smallStep V1 in eqV1
  ... | Nothing with smallStep V2 in eqV2
  ...   | Nothing = no-ne (noe-add (stepNothingNormal eqV1) (stepNothingNormal eqV2) (addStepNothing eq))
  stepNothingNormal {Sub V1 V2} eq with smallStep V1 in eqV1
  ... | Nothing with smallStep V2 in eqV2
  ...   | Nothing = no-ne (noe-sub (stepNothingNormal eqV1) (stepNothingNormal eqV2) (subStepNothing eq))
  stepNothingNormal {Mul V1 V2} eq with smallStep V1 in eqV1
  ... | Nothing with smallStep V2 in eqV2
  ...   | Nothing = no-ne (noe-mul (stepNothingNormal eqV1) (stepNothingNormal eqV2) (mulStepNothing eq))
  stepNothingNormal {Not V} eq with smallStep V in eqV
  ... | Nothing = no-ne (noe-not (stepNothingNormal eqV) (notStepNothing eq))
  stepNothingNormal {And V1 V2} eq with smallStep V1 in eqV1
  ... | Nothing with smallStep V2 in eqV2
  ...   | Nothing = no-ne (noe-and (stepNothingNormal eqV1) (stepNothingNormal eqV2) (andStepNothing eq))
  stepNothingNormal {Or V1 V2} eq with smallStep V1 in eqV1
  ... | Nothing with smallStep V2 in eqV2
  ...   | Nothing = no-ne (noe-or (stepNothingNormal eqV1) (stepNothingNormal eqV2) (orStepNothing eq))

  stepNothingNot2 : ∀ {b V : Expr} → (smallStepNot b Nothing ≡ Just V) → ( ∃[ x ]  ( _≡_ b (BoolVal x)) )
  stepNothingNot2 {BoolVal x} {V} h = ⟨ x , refl ⟩

  stepNothingNot : ∀ {V V2 : Expr} → (∀ {i : Bool} → ¬ (V ≡ BoolVal i)) → ¬ (smallStepNot V Nothing ≡ (Just V2))
  stepNothingNot {BoolVal x} h = ⊥-elim (h {x} refl)
  stepNothingNot {V'} h h2 with stepNothingNot2 h2
  ... | ⟨ a , b ⟩ = h {a} b

  normalStepNothing : ∀ {V : Expr} → Normal V → smallStep V ≡ Nothing
  neutralStepNothing : ∀ {V : Expr} → Neutral V → smallStep V ≡ Nothing

  normalStepNothing {V} (no-ne h) = neutralStepNothing h
  normalStepNothing {(Lam _ _ L)} (no-a h) rewrite normalStepNothing h = refl
  neutralStepNothing ne-v = refl
  neutralStepNothing (ne-a h x) = {!!}
  neutralStepNothing noe-num = refl
  neutralStepNothing noe-bool = refl
  neutralStepNothing (noe-ite x x₁) = {!!}
  neutralStepNothing (noe-add x x₁ x₂) = {!!}
  neutralStepNothing (noe-sub x x₁ x₂) = {!!}
  neutralStepNothing (noe-mul x x₁ x₂) = {!!}
  neutralStepNothing (noe-and x x₁ x₂) = {!!}
  neutralStepNothing (noe-or x x₁ x₂) = {!!}
  neutralStepNothing {Not L} (noe-not x h) rewrite normalStepNothing x = {!!}


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
