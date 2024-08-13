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

  open import Data.Bool using (true; false)
  open import Data.Empty                            using (⊥-elim)
  open import Data.Sum                              using (_⊎_; inj₁; inj₂)
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

    noe-ite : ∀ {L M N : Expr}
      → NormalExt L
      → (∀ {b : Bool} → ¬ (L ≡ BoolVal b))
      -----------------------
      → NormalExt (Ite L M N)

    noe-add : ∀ {L M : Expr}
      → NormalExt L
      → NormalExt M
      → ((∀ {i : Int} → ¬ (L ≡ NumVal i)) ⊎ (∀ {j : Int} → ¬ (M ≡ NumVal j)))
      ---------------------
      → NormalExt (Add L M)

    noe-sub : ∀ {L M : Expr}
      → NormalExt L
      → NormalExt M
      → ((∀ {i : Int} → ¬ (L ≡ NumVal i)) ⊎ (∀ {j : Int} → ¬ (M ≡ NumVal j)))
      ---------------------
      → NormalExt (Sub L M)

    noe-mul : ∀ {L M : Expr}
      → NormalExt L
      → NormalExt M
      → ((∀ {i : Int} → ¬ (L ≡ NumVal i)) ⊎ (∀ {j : Int} → ¬ (M ≡ NumVal j)))
      ---------------------
      → NormalExt (Mul L M)

    noe-and : ∀ {L M : Expr}
      → NormalExt L
      → NormalExt M
      → ((∀ {i : Bool} → ¬ (L ≡ BoolVal i)) ⊎ (∀ {j : Bool} → ¬ (M ≡ BoolVal j)))
      ---------------------
      → NormalExt (And L M)

    noe-or : ∀ {L M : Expr}
      → NormalExt L
      → NormalExt M
      → ((∀ {i : Bool} → ¬ (L ≡ BoolVal i)) ⊎ (∀ {j : Bool} → ¬ (M ≡ BoolVal j)))
      ---------------------
      → NormalExt (Or L M)

    noe-not : ∀ {L : Expr}
      → NormalExt L
      → (∀ {i : Bool} → ¬ (L ≡ BoolVal i))
      -------------------
      → NormalExt (Not L)

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

    r-plus1 : ∀ {L L' M : Expr}
      → ReducesTo L L'
      --------------------------------
      → ReducesTo (Add L M) (Add L' M)

    r-plus2 : ∀ {L M M' : Expr}
      → NormalExt L
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
      → NormalExt L
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
      → NormalExt L
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
      → NormalExt L
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
      → NormalExt L
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

  normalNeverReduces : ∀ {M : Expr} → Normal M → (∀ {N : Expr} → ¬ (ReducesTo M N))
  normalNeverReduces (no-ne (ne-a neutralM x₁)) (r-a red) = normalNeverReduces (no-ne neutralM) red
  normalNeverReduces (no-ne (ne-a neutralM x₁)) (r-a' x red) = normalNeverReduces x₁ red
  normalNeverReduces (no-a normalM) (r-l' red) = normalNeverReduces normalM red

  normalExtNeverReduces : ∀ {M : Expr} → NormalExt M → (∀ {N : Expr} → ¬ (ReducesTo M N))
  normalExtNeverReduces (noe-no x) red = normalNeverReduces x red
  normalExtNeverReduces (noe-ite _ x) r-ite-true = x {true} refl
  normalExtNeverReduces (noe-ite _ x) r-ite-false = x {false} refl
  normalExtNeverReduces (noe-ite n x) (r-ite red) = normalExtNeverReduces n red
  normalExtNeverReduces (noe-add n1 n2 x) (r-plus1 red) = normalExtNeverReduces n1 red
  normalExtNeverReduces (noe-add n1 n2 x) (r-plus2 _ red) = normalExtNeverReduces n2 red
  normalExtNeverReduces {Add (NumVal i1) _} (noe-add n1 n2 (inj₁ x)) r-plus3 = x {i1} refl
  normalExtNeverReduces {Add _ (NumVal i2)} (noe-add n1 n2 (inj₂ y)) r-plus3 = y {i2} refl
  normalExtNeverReduces (noe-sub n1 n2 x) (r-sub1 red) = normalExtNeverReduces n1 red
  normalExtNeverReduces (noe-sub n1 n2 x) (r-sub2 _ red) = normalExtNeverReduces n2 red
  normalExtNeverReduces {Sub (NumVal i1) _} (noe-sub n1 n2 (inj₁ x)) r-sub3 = x {i1} refl
  normalExtNeverReduces {Sub _ (NumVal i2)} (noe-sub n1 n2 (inj₂ y)) r-sub3 = y {i2} refl
  normalExtNeverReduces (noe-mul n1 n2 x) (r-mul1 red) = normalExtNeverReduces n1 red
  normalExtNeverReduces (noe-mul n1 n2 x) (r-mul2 _ red) = normalExtNeverReduces n2 red
  normalExtNeverReduces {Mul (NumVal i1) _} (noe-mul n1 n2 (inj₁ x)) r-mul3 = x {i1} refl
  normalExtNeverReduces {Mul _ (NumVal i2)} (noe-mul n1 n2 (inj₂ y)) r-mul3 = y {i2} refl
  normalExtNeverReduces (noe-and n1 n2 x) (r-and1 red) = normalExtNeverReduces n1 red
  normalExtNeverReduces (noe-and n1 n2 x) (r-and2 _ red) = normalExtNeverReduces n2 red
  normalExtNeverReduces {And (BoolVal i1) _} (noe-and n1 n2 (inj₁ x)) r-and3 = x {i1} refl
  normalExtNeverReduces {And _ (BoolVal i2)} (noe-and n1 n2 (inj₂ y)) r-and3 = y {i2} refl
  normalExtNeverReduces (noe-or n1 n2 x) (r-or1 red) = normalExtNeverReduces n1 red
  normalExtNeverReduces (noe-or n1 n2 x) (r-or2 _ red) = normalExtNeverReduces n2 red
  normalExtNeverReduces {Or (BoolVal i1) _} (noe-or n1 n2₁ (inj₁ x)) r-or3 = x {i1} refl
  normalExtNeverReduces {Or _ (BoolVal i2)} (noe-or n1 n2 (inj₂ y)) r-or3 = y {i2} refl
  normalExtNeverReduces (noe-not n x) (r-not1 red) = normalExtNeverReduces n red
  normalExtNeverReduces {Not (BoolVal b)} (noe-not normalExtBi x) r-not2 = x {b} refl

  redIsDeterministic : ∀ {M N1 N2 : Expr} → ReducesTo M N1 → ReducesTo M N2 → N1 ≡ N2
  redIsDeterministic (r-a red1) (r-a red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-a red1) (r-a' x red2) = ⊥-elim (normalExtNeverReduces x red1)
  redIsDeterministic (r-a (r-l' red1)) (r-l x x₁) = ⊥-elim (normalExtNeverReduces x₁ red1)
  redIsDeterministic (r-a' x red1) (r-a red2) = ⊥-elim (normalExtNeverReduces x red2)
  redIsDeterministic (r-a' x red1) (r-a' x₁ red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-a' x red1) (r-l x₁ x₂) = ⊥-elim (normalExtNeverReduces x₁ red1)
  redIsDeterministic (r-l x x₁) (r-a (r-l' red2)) = ⊥-elim (normalExtNeverReduces x₁ red2)
  redIsDeterministic (r-l x x₁) (r-a' x₂ red2) = ⊥-elim (normalExtNeverReduces x red2)
  redIsDeterministic (r-l x x₁) (r-l x₂ x₃) = refl
  redIsDeterministic (r-l' red1) (r-l' red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-plus1 red1) (r-plus1 red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-plus1 red1) (r-plus2 n red2) = ⊥-elim (normalExtNeverReduces n red1)
  redIsDeterministic (r-plus2 n red1) (r-plus1 red2) = ⊥-elim (normalExtNeverReduces n red2)
  redIsDeterministic (r-plus2 _ red1) (r-plus2 x red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic r-plus3 r-plus3 = refl
  redIsDeterministic (r-sub1 red1) (r-sub1 red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-sub1 red1) (r-sub2 n red2) = ⊥-elim (normalExtNeverReduces n red1)
  redIsDeterministic (r-sub2 n red1) (r-sub1 red2) = ⊥-elim (normalExtNeverReduces n red2)
  redIsDeterministic (r-sub2 _ red1) (r-sub2 x red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic r-sub3 r-sub3 = refl
  redIsDeterministic (r-mul1 red1) (r-mul1 red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-mul1 red1) (r-mul2 n red2) = ⊥-elim (normalExtNeverReduces n red1)
  redIsDeterministic (r-mul2 n red1) (r-mul1 red2) = ⊥-elim (normalExtNeverReduces n red2)
  redIsDeterministic (r-mul2 _ red1) (r-mul2 x red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic r-mul3 r-mul3 = refl
  redIsDeterministic (r-and1 red1) (r-and1 red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-and1 red1) (r-and2 n red2) = ⊥-elim (normalExtNeverReduces n red1)
  redIsDeterministic (r-and2 n red1) (r-and1 red2) = ⊥-elim (normalExtNeverReduces n red2)
  redIsDeterministic (r-and2 _ red1) (r-and2 x red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic r-and3 r-and3 = refl
  redIsDeterministic (r-or1 red1) (r-or1 red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic (r-or1 red1) (r-or2 n red2) = ⊥-elim (normalExtNeverReduces n red1)
  redIsDeterministic (r-or2 n red1) (r-or1 red2) = ⊥-elim (normalExtNeverReduces n red2)
  redIsDeterministic (r-or2 _ red1) (r-or2 x red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic r-or3 r-or3 = refl
  redIsDeterministic (r-not1 red1) (r-not1 red2) rewrite redIsDeterministic red1 red2 = refl
  redIsDeterministic r-not2 r-not2 = refl
  redIsDeterministic r-ite-true r-ite-true = refl
  redIsDeterministic r-ite-false r-ite-false = refl
  redIsDeterministic (r-ite red1) (r-ite red2) rewrite redIsDeterministic red1 red2 = refl

  normalImpliesNeutral : ∀ {L M : Expr} → Normal (App L M) → Neutral (App L M)
  normalImpliesNeutral (no-ne h) = h

  stepNothingNormal : ∀ {V : Expr} → smallStep V ≡ Nothing → NormalExt V
  stepNothingNormal {Var x} eq = noe-no (no-ne ne-v)
  stepNothingNormal {Lam x x₁ (Var x₂)} eq = noe-no (no-a (no-ne ne-v))
  stepNothingNormal {Lam x x₁ (Lam x₂ x₃ V)} eq = {!!}
  stepNothingNormal {Lam x x₁ (App V V₁)} eq = {!!}
  stepNothingNormal {Lam x x₁ (Ite V V₁ V₂)} eq = {!!}
  stepNothingNormal {Lam x x₁ (NumVal x₂)} eq = {!!}
  stepNothingNormal {Lam x x₁ (BoolVal x₂)} eq = {!!}
  stepNothingNormal {Lam x x₁ (Add V V₁)} eq = {!!}
  stepNothingNormal {Lam x x₁ (Sub V V₁)} eq = {!!}
  stepNothingNormal {Lam x x₁ (Mul V V₁)} eq = {!!}
  stepNothingNormal {Lam x x₁ (Not V)} eq = {!!}
  stepNothingNormal {Lam x x₁ (And V V₁)} eq = {!!}
  stepNothingNormal {Lam x x₁ (Or V V₁)} eq = {!!}
  stepNothingNormal {App V V₁} eq = {!!}
  stepNothingNormal {Ite V V₁ V₂} eq = {!!}
  stepNothingNormal {NumVal x} eq = noe-num
  stepNothingNormal {BoolVal x} eq = noe-bool
  stepNothingNormal {Add V1 V2} eq = {!!}
  stepNothingNormal {Sub V V₁} eq = {!!}
  stepNothingNormal {Mul V V₁} eq = {!!}
  stepNothingNormal {Not V} eq = {!!}
  stepNothingNormal {And V V₁} eq = {!!}
  stepNothingNormal {Or V V₁} eq = {!!}

--   -- normalStepNothing : ∀ {V : Expr} → Normal V → smallStep V ≡ Nothing
--   -- neutralStepNothing : ∀ {V : Expr} → Neutral V → smallStep V ≡ Nothing

--   -- normalStepNothing (no-ne neutralV) = neutralStepNothing neutralV
--   -- normalStepNothing (no-a nv) rewrite normalStepNothing nv = refl

--   -- neutralStepNothing ne-v = refl
--   -- neutralStepNothing {App (Var _) M} (ne-a neutralL normalM) rewrite neutralStepNothing neutralL | normalStepNothing normalM = refl
--   -- neutralStepNothing {App (App (Var x) L2) M} (ne-a neutralL normalM) rewrite neutralStepNothing neutralL | normalStepNothing normalM = refl
--   -- neutralStepNothing {App (App (Lam x x₁ L1) L2) M} (ne-a (ne-a () x₂) normalM)
--   -- neutralStepNothing {App (App (App L1 L3) L2) M} (ne-a neutralL normalM) rewrite neutralStepNothing neutralL | normalStepNothing normalM = refl
--   -- neutralStepNothing {App (App (Ite L1 L3 L4) L2) M} (ne-a (ne-a () x) normalM)
--   -- neutralStepNothing {App (App (NumVal x) L2) M} (ne-a (ne-a () x₁) normalM)
--   -- neutralStepNothing {App (App (BoolVal x) L2) M} (ne-a (ne-a () x₁) normalM)
--   -- neutralStepNothing {App (App (PrimE x) L2) M} (ne-a (ne-a () x₁) normalM)

--   -- normalExtStepNothing : ∀ {V : Expr} → NormalExt V → smallStep V ≡ Nothing
--   -- normalExtStepNothing (noe-no h) = normalStepNothing h
--   -- normalExtStepNothing noe-num = refl
--   -- normalExtStepNothing noe-bool = refl

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
