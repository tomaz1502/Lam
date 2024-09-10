-- NOTE: Consider the type of subst as: {A : Set} {x y : A} (P : A -> Set) : x ≡ y → P x → P y

module Lam.FormalizationTypeChecker where

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

data _⊢_∶_ : TypingContext → Expr → TypeL → Set where

  ⊢b : ∀ {Γ : TypingContext} {b : Bool}
    → Γ ⊢ Const (BoolC b) ∶ BoolT

  ⊢n : ∀ {Γ : TypingContext} {z : Int}
    → Γ ⊢ Const (NumC z) ∶ IntT

  ⊢|| : ∀ {L M : Expr} {Γ : TypingContext}
    → Γ ⊢ L ∶ BoolT
    → Γ ⊢ M ∶ BoolT
    → Γ ⊢ BinOp Or L M ∶ BoolT

  ⊢&& : ∀ {L M : Expr} {Γ : TypingContext}
    → Γ ⊢ L ∶ BoolT
    → Γ ⊢ M ∶ BoolT
    → Γ ⊢ BinOp And L M ∶ BoolT

  ⊢! : ∀ {L : Expr} {Γ : TypingContext}
    → Γ ⊢ L ∶ BoolT
    → Γ ⊢ UnaryOp Not L ∶ BoolT

  ⊢+ : ∀ {L M : Expr} {Γ : TypingContext}
    → Γ ⊢ L ∶ IntT
    → Γ ⊢ M ∶ IntT
    → Γ ⊢ BinOp Add L M ∶ IntT

  ⊢- : ∀ {L M : Expr} {Γ : TypingContext}
    → Γ ⊢ L ∶ IntT
    → Γ ⊢ M ∶ IntT
    → Γ ⊢ BinOp Sub L M ∶ IntT

  ⊢* : ∀ {L M : Expr} {Γ : TypingContext}
    → Γ ⊢ L ∶ IntT
    → Γ ⊢ M ∶ IntT
    → Γ ⊢ BinOp Mul L M ∶ IntT

  ⊢< : ∀ {L M : Expr} {Γ : TypingContext}
    → Γ ⊢ L ∶ IntT
    → Γ ⊢ M ∶ IntT
    → Γ ⊢ BinOp LtInt L M ∶ BoolT

  ⊢ite : ∀ {Γ : TypingContext} {b t e : Expr} {A : TypeL}
    → Γ ⊢ b ∶ BoolT
    → Γ ⊢ t ∶ A
    → Γ ⊢ e ∶ A
    ------------------
    → Γ ⊢ Ite b t e ∶ A

  ⊢v : ∀ {Γ : TypingContext} {i : Nat}
    → {h : natToℕ i < length Γ}
    --------------------------------
    → Γ ⊢ Var i ∶ lookup Γ (fromℕ< h)

  ⊢l : ∀ {Γ : TypingContext} {name : Id} {body : Expr} {dom codom : TypeL}
    → (dom ∷ Γ) ⊢ body ∶ codom
    ----------------------------------------
    → Γ ⊢ Lam name dom body ∶ Arrow dom codom

  ⊢a : ∀ {Γ : TypingContext} {f x : Expr} {dom codom : TypeL}
    → Γ ⊢ f ∶ Arrow dom codom
    → Γ ⊢ x ∶ dom
    --------------------
    → Γ ⊢ App f x ∶ codom

  ⊢proj1 : ∀ {Γ : TypingContext} {p : Expr} {t1 t2 : TypeL}
    → Γ ⊢ p ∶ Prod t1 t2
    -------------------------
    → Γ ⊢ UnaryOp Proj1 p ∶ t1

  ⊢proj2 : ∀ {Γ : TypingContext} {p : Expr} {t1 t2 : TypeL}
    → Γ ⊢ p ∶ Prod t1 t2
    -------------------------
    → Γ ⊢ UnaryOp Proj2 p ∶ t2

  ⊢mkPair : ∀ {Γ : TypingContext} {e1 e2 : Expr} {t1 t2 : TypeL}
    → Γ ⊢ e1 ∶ t1
    → Γ ⊢ e2 ∶ t2
    -------------------------------------
    → Γ ⊢ BinOp MkPair e1 e2 ∶ Prod t1 t2

  ⊢inl : ∀ {Γ : TypingContext} {e : Expr} {t te : TypeL}
    → Γ ⊢ e ∶ te
    ------------------------
    → Γ ⊢ Inl e (Sum te t) ∶ Sum te t

  ⊢inr : ∀ {Γ : TypingContext} {e : Expr} {t te : TypeL}
    → Γ ⊢ e ∶ te
    ------------------------
    → Γ ⊢ Inr e (Sum t te) ∶ Sum t te

  ⊢case : ∀ {Γ : TypingContext} {e1 e2 e3 : Expr} {t tl tr : TypeL} {id2 id3 : Id}
    → Γ ⊢ e1 ∶ Sum tl tr
    → (tl ∷ Γ) ⊢ e2 ∶ t
    → (tr ∷ Γ) ⊢ e3 ∶ t
    -----------------------
    → Γ ⊢ Case e1 id2 e2 id3 e3 ∶ t

⊢→tc : ∀ {Γ : TypingContext} {e : Expr} {t : TypeL} → Γ ⊢ e ∶ t → typeCheck' Γ e ≡ Just t
⊢→tc ⊢b  = refl
⊢→tc ⊢n  = refl
⊢→tc (⊢&& h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
⊢→tc (⊢|| h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
⊢→tc (⊢!  h)     rewrite ⊢→tc h = refl
⊢→tc (⊢+  h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
⊢→tc (⊢-  h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
⊢→tc (⊢*  h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
⊢→tc (⊢<  h1 h2) rewrite ⊢→tc h1 | ⊢→tc h2 = refl
⊢→tc {Γ} {Ite b t e} {ty} (⊢ite tb tt te)
  rewrite
    ⊢→tc {Γ} {b} {BoolT} tb
  | ⊢→tc {Γ} {t} {ty} tt
  | ⊢→tc {Γ} {e} {ty} te
  | eqType-refl ty = refl
⊢→tc (⊢v {Γ} {i} {h}) = lookup≡ {TypeL} {Γ} {i} h
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
⊢→tc (⊢mkPair ht1 ht2) rewrite ⊢→tc ht1 | ⊢→tc ht2 = refl
⊢→tc (⊢proj1 h) rewrite ⊢→tc h = refl
⊢→tc (⊢proj2 h) rewrite ⊢→tc h = refl
⊢→tc {Γ} {Inl e te} (⊢inl {te = te'} h) rewrite ⊢→tc h | eqType-refl te' = refl
⊢→tc {Γ} {Inr e te} (⊢inr {te = te'} h) rewrite ⊢→tc h | eqType-refl te' = refl
⊢→tc (⊢case {t = t} h1 h2 h3) rewrite ⊢→tc h1 | ⊢→tc h2 | ⊢→tc h3 | eqType-refl t = refl

tc→⊢ : ∀ {Γ : TypingContext} {e : Expr} {t : TypeL} → typeCheck' Γ e ≡ Just t → Γ ⊢ e ∶ t
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
  let x<lenΓ = lookup?< {TypeL} {Γ} {x} eq in
  let lookupMaybeEqLookup = lookup≡ {TypeL} {Γ} {x} x<lenΓ in
  let justTEqJustLookup = trans (sym eq) lookupMaybeEqLookup in
  let tEqLookup = Just-injective justTEqJustLookup in
  subst (λ t' -> Γ ⊢ Var x ∶ t') (sym tEqLookup) (⊢v {Γ} {x} {x<lenΓ})
tc→⊢ {Γ} {Const (BoolC _)} {t} eq rewrite sym (Just-injective eq) = ⊢b
tc→⊢ {Γ} {Const (NumC _)} {t} eq rewrite sym (Just-injective eq)  = ⊢n
-- Weirdly, doing parallel with clauses doesn't work here, we have to nest them
tc→⊢ {Γ} {Ite b t e} {ty} eq with typeCheck' Γ b in bPf
... | Just BoolT with typeCheck' Γ t in tPf
...   | Just tt with typeCheck' Γ e in ePf
...     | Just te with iteAbs {b = eqType tt te} (λ()) eq
...       | ⟨ eqTypeTtTe , justTyEqTt ⟩
            rewrite
              sym (Just-injective justTyEqTt)
            | eqType->≡ {tt} {te} eqTypeTtTe = ⊢ite (tc→⊢ bPf) (tc→⊢ tPf) (tc→⊢ ePf)
tc→⊢ {Γ} {BinOp Add e1 e2} eq with typeCheck' Γ e1 in eqE1
... | Just IntT with typeCheck' Γ e2 in eqE2
...   | Just IntT rewrite sym (Just-injective eq) = ⊢+ (tc→⊢ eqE1) (tc→⊢ eqE2)
tc→⊢ {Γ} {BinOp Mul e1 e2} eq with typeCheck' Γ e1 in eqE1
... | Just IntT with typeCheck' Γ e2 in eqE2
...   | Just IntT rewrite sym (Just-injective eq) = ⊢* (tc→⊢ eqE1) (tc→⊢ eqE2)
tc→⊢ {Γ} {BinOp Sub e1 e2} eq with typeCheck' Γ e1 in eqE1
... | Just IntT with typeCheck' Γ e2 in eqE2
...   | Just IntT rewrite sym (Just-injective eq) = ⊢- (tc→⊢ eqE1) (tc→⊢ eqE2)
tc→⊢ {Γ} {BinOp LtInt e1 e2} eq with typeCheck' Γ e1 in eqE1
... | Just IntT with typeCheck' Γ e2 in eqE2
...   | Just IntT rewrite sym (Just-injective eq) = ⊢< (tc→⊢ eqE1) (tc→⊢ eqE2)
tc→⊢ {Γ} {BinOp And e1 e2} eq with typeCheck' Γ e1 in eqE1
... | Just BoolT with typeCheck' Γ e2 in eqE2
...   | Just BoolT rewrite sym (Just-injective eq) = ⊢&& (tc→⊢ eqE1) (tc→⊢ eqE2)
tc→⊢ {Γ} {BinOp Or e1 e2}  eq with typeCheck' Γ e1 in eqE1
... | Just BoolT with typeCheck' Γ e2 in eqE2
...   | Just BoolT rewrite sym (Just-injective eq) = ⊢|| (tc→⊢ eqE1) (tc→⊢ eqE2)
tc→⊢ {Γ} {BinOp MkPair e1 e2} eq with typeCheck' Γ e1 in eqE1
... | Just t1 with typeCheck' Γ e2 in eqE2
...   | Just t2 rewrite sym (Just-injective eq) = ⊢mkPair (tc→⊢ eqE1) (tc→⊢ eqE2)
tc→⊢ {Γ} {UnaryOp Not e} eq with typeCheck' Γ e in eqE
... | Just BoolT rewrite sym (Just-injective eq) = ⊢! (tc→⊢ eqE)
tc→⊢ {Γ} {UnaryOp Proj1 e} eq with typeCheck' Γ e in eqE
... | Just (Prod t1 t2) rewrite sym (Just-injective eq) = ⊢proj1 (tc→⊢ eqE)
tc→⊢ {Γ} {UnaryOp Proj2 e} eq with typeCheck' Γ e in eqE
... | Just (Prod t1 t2) rewrite sym (Just-injective eq) = ⊢proj2 (tc→⊢ eqE)
tc→⊢ {Γ} {Inl e (Sum tl' tr)} eq with typeCheck' Γ e in eqE
tc→⊢ {Γ} {Inl e (Sum tl' tr)} eq | Just tl with iteAbs {b = eqType tl' tl} (λ ()) eq
... | ⟨ a , b ⟩ rewrite sym (Just-injective b) | eqType->≡ {tl'} {tl} a = ⊢inl (tc→⊢ eqE)
tc→⊢ {Γ} {Inr e (Sum tl tr')} eq with typeCheck' Γ e in eqE
tc→⊢ {Γ} {Inr e (Sum tl tr')} eq | Just tr with iteAbs {b = eqType tr' tr} (λ ()) eq
... | ⟨ a , b ⟩ rewrite sym (Just-injective b) | eqType->≡ {tr'} {tr} a = ⊢inr (tc→⊢ eqE)
tc→⊢ {Γ} {Case e1 _ e2 _ e3} eq with typeCheck' Γ e1 in eqE1
... | Just (Sum tl tr) with typeCheck' (tl ∷ Γ) e2 in eqE2 | typeCheck' (tr ∷ Γ) e3 in eqE3
...   | Just t2 | Just t3 with iteAbs {b = eqType t2 t3} (λ()) eq
...      | ⟨ x , y ⟩ rewrite eqType->≡ {t2} {t3} x | Just-injective y = ⊢case (tc→⊢ eqE1) (tc→⊢ eqE2) (tc→⊢ eqE3)

module Examples where

  open import Data.Bool using (true)
  open import Relation.Nullary using (¬_)

  ex1 : [] ⊢ Const (BoolC true) ∶ BoolT
  ex1 = ⊢b

  ex2 : ¬ ([] ⊢ Const (BoolC true) ∶ IntT)
  ex2 ()

  -- ex3 : ∀ (t : Type) → ¬ ([] ⊢ App (App (PrimE PlusPrim) (BoolVal true)) (BoolVal true) ∶ t)
  -- ex3 t (⊢a (⊢a () _) ⊢b)

  ex4 : ∀ (t : TypeL) → ¬ ([ IntT ] ⊢ Ite (Var Z) (Const (BoolC true)) (Const (BoolC true)) ∶ t)
  ex4 t (⊢ite () _ _)
