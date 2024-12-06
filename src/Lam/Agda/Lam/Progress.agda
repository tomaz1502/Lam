module Lam.Progress where

open import Haskell.Prelude using (Nothing; False; True)

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; _≢_; refl)
open import Data.Empty using (⊥-elim)
open import Data.Product using (_×_; Σ; Σ-syntax; ∃; ∃-syntax; proj₁; proj₂) renaming (_,_ to ⟨_,_⟩)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Relation.Nullary using (¬_)

open import Lam.Data
open import Lam.FormalizationEvaluator
open import Lam.FormalizationTypeChecker
open import Lam.View

data Progress (M : Expr) : Set where
  step : ∀ {N : Expr}
    → ReducesTo M N
    ------------
    → Progress M

  done :
    Normal M
    ------------
    → Progress M

progress : ∀ {M T Γ} → Γ ⊢ M ∶ T → Progress M
progress ⊢v = done (no-ne ne-v)
progress ⊢b = done (no-ne noe-const)
progress ⊢n = done (no-ne noe-const)
progress {BinOp Or L M} (⊢|| wtl wtm) with progress wtl | progress wtm
... | step r1 | _ = step (r-binop1 r1)
... | done n  | step r2 = step (r-binop2 n r2)
... | done n1 | done n2 with viewBool L | viewBool M
...   | inj₁ ⟨ fst , refl ⟩ | inj₁ ⟨ fst₁ , refl ⟩ = step r-or
...   | inj₂ x | _ = done (no-ne (noe-or n1 n2 λ {i} e -> x (⟨ i , (proj₁ e)⟩)))
...   | _ | inj₂ x = done (no-ne (noe-or n1 n2 λ {_} {j} e -> x (⟨ j , proj₂ e  ⟩) ))
progress {BinOp And L M} (⊢&& wtl wtm) with progress wtl | progress wtm
... | step r1 | _ = step (r-binop1 r1)
... | done n  | step r2 = step (r-binop2 n r2)
... | done n1 | done n2 with viewBool L | viewBool M
...   | inj₁ ⟨ fst , refl ⟩ | inj₁ ⟨ fst₁ , refl ⟩ = step r-and
...   | inj₂ x | _ = done (no-ne (noe-and n1 n2 λ {i} e -> x (⟨ i , (proj₁ e)⟩)))
...   | _ | inj₂ x = done (no-ne (noe-and n1 n2 λ {_} {j} e -> x (⟨ j , proj₂ e  ⟩) ))
progress {UnaryOp Not L} (⊢! wt) with progress wt
progress {UnaryOp Not L} (⊢! wt) | done n with viewBool L
... | inj₁ ⟨ b , refl ⟩ = step r-not
... | inj₂ neq = done (no-ne (noe-not n (λ {i} x -> neq ⟨ i , x ⟩)))
progress {UnaryOp Not L} (⊢! wt) | step r = step (r-unop r)
progress {BinOp Add L M} (⊢+ wtl wtm) with progress wtl | progress wtm
... | step r1 | _ = step (r-binop1 r1)
... | done n  | step r2 = step (r-binop2 n r2)
... | done n1 | done n2 with viewNum L | viewNum M
...   | inj₁ ⟨ fst , refl ⟩ | inj₁ ⟨ fst₁ , refl ⟩ = step r-add
...   | inj₂ x | _ = done (no-ne (noe-add n1 n2 λ {i} e -> x (⟨ i , (proj₁ e)⟩)))
...   | _ | inj₂ x = done (no-ne (noe-add n1 n2 λ {_} {j} e -> x (⟨ j , proj₂ e  ⟩) ))
progress {BinOp Sub L M} (⊢- wtl wtm) with progress wtl | progress wtm
... | step r1 | _ = step (r-binop1 r1)
... | done n  | step r2 = step (r-binop2 n r2)
... | done n1 | done n2 with viewNum L | viewNum M
...   | inj₁ ⟨ fst , refl ⟩ | inj₁ ⟨ fst₁ , refl ⟩ = step r-sub
...   | inj₂ x | _ = done (no-ne (noe-sub n1 n2 λ {i} e -> x (⟨ i , (proj₁ e)⟩)))
...   | _ | inj₂ x = done (no-ne (noe-sub n1 n2 λ {_} {j} e -> x (⟨ j , proj₂ e  ⟩) ))
progress {BinOp Mul L M} (⊢* wtl wtm) with progress wtl | progress wtm
... | step r1 | _ = step (r-binop1 r1)
... | done n  | step r2 = step (r-binop2 n r2)
... | done n1 | done n2 with viewNum L | viewNum M
...   | inj₁ ⟨ fst , refl ⟩ | inj₁ ⟨ fst₁ , refl ⟩ = step r-mul
...   | inj₂ x | _ = done (no-ne (noe-mul n1 n2 λ {i} e -> x (⟨ i , (proj₁ e)⟩)))
...   | _ | inj₂ x = done (no-ne (noe-mul n1 n2 λ {_} {j} e -> x (⟨ j , proj₂ e  ⟩) ))
progress {BinOp LtInt L M} (⊢< wtl wtm) with progress wtl | progress wtm
... | step r1 | _ = step (r-binop1 r1)
... | done n  | step r2 = step (r-binop2 n r2)
... | done n1 | done n2 with viewNum L | viewNum M
...   | inj₁ ⟨ fst , refl ⟩ | inj₁ ⟨ fst₁ , refl ⟩ = step r-ltInt
...   | inj₂ x | _ = done (no-ne (noe-ltInt n1 n2 λ {i} e -> x (⟨ i , (proj₁ e)⟩)))
...   | _ | inj₂ x = done (no-ne (noe-ltInt n1 n2 λ {_} {j} e -> x (⟨ j , proj₂ e  ⟩) ))
progress {Ite L M N} (⊢ite wt wtl wtm) with progress wt
progress {Ite L M N} (⊢ite wt wtl wtm) | step r = step (r-ite r)
progress {Ite L M N} (⊢ite wt wtl wtm) | done n with viewBool L
progress {Ite .(Const (BoolC False)) M N} (⊢ite wt wtl wtm) | done n | inj₁ ⟨ False , refl ⟩ = step r-ite-false
progress {Ite .(Const (BoolC True))  M N} (⊢ite wt wtl wtm) | done n | inj₁ ⟨ True , refl ⟩  = step r-ite-true
progress {Ite L M N} (⊢ite wt wtl wtm) | done n | inj₂ neq = done (no-ne (noe-ite n λ {b} z -> neq ⟨ b , z ⟩))
progress (⊢l wt) with progress wt
... | step r = step (r-l' r)
... | done n = done (no-a n)
progress {App L M} (⊢a wtl wtr) with progress wtl
progress {App L M} (⊢a wtl wtr) | step r = step (r-a r)
progress {App L M} (⊢a wtl wtr) | done n1 with progress wtr
progress {App L M} (⊢a wtl wtr) | done n1 | step r = step (r-a' n1 r)
progress {App L M} (⊢a wtl wtr) | done (no-ne x) | done n2 = done (no-ne (ne-a x n2))
progress {App L M} (⊢a wtl wtr) | done (no-a n1) | done n2 = step (r-l n1 n2)
progress {UnaryOp Proj1 L} (⊢proj1 wt) with progress wt
progress {UnaryOp Proj1 L} (⊢proj1 wt) | step r = step (r-unop r)
progress {UnaryOp Proj1 L} (⊢proj1 wt) | done n with viewMkPair L
progress {UnaryOp Proj1 L} (⊢proj1 wt) | done (no-ne (noe-mkPair nex ney)) | inj₁ ⟨ x , ⟨ y , refl ⟩ ⟩ = step (r-proj1 nex ney)
progress {UnaryOp Proj1 L} (⊢proj1 wt) | done n | inj₂ neq =
  done (no-ne (noe-proj1 n λ {M} {N} z -> neq ⟨ M , ⟨ N , z ⟩ ⟩ ))
progress {UnaryOp Proj2 L} (⊢proj2 wt) with progress wt
progress {UnaryOp Proj2 L} (⊢proj2 wt) | step r = step (r-unop r)
progress {UnaryOp Proj2 L} (⊢proj2 wt) | done n with viewMkPair L
progress {UnaryOp Proj2 L} (⊢proj2 wt) | done (no-ne (noe-mkPair nex ney)) | inj₁ ⟨ x , ⟨ y , refl ⟩ ⟩ = step (r-proj2 nex ney)
progress {UnaryOp Proj2 L} (⊢proj2 wt) | done n | inj₂ neq =
  done (no-ne (noe-proj2 n λ {M} {N} z -> neq ⟨ M , ⟨ N , z ⟩ ⟩ ))
progress (⊢mkPair wtl wtm) with progress wtl | progress wtm
... | done n1 | done n2 = done (no-ne (noe-mkPair n1 n2))
... | step r1 | _ = step (r-binop1 r1)
... | done n1 | step r2 = step (r-binop2 n1 r2)
progress (⊢inl wt) with progress wt
... | done n = done (no-ne (noe-inl n))
... | step r = step (r-inl r)
progress (⊢inr wt) with progress wt
... | done n = done (no-ne (noe-inr n))
... | step r = step (r-inr r)
progress {Case L _ M _ N} (⊢case wt wtl wtm) with progress wt
progress {Case L _ M _ N} (⊢case wt wtl wtm) | step r = step (r-case1 r)
progress {Case L _ M _ N} (⊢case wt wtl wtm) | done n with viewInl L
progress {Case L _ M _ N} (⊢case wt wtl wtm) | done (no-ne (noe-inl x)) | inj₁ ⟨ _ , ⟨ _ , refl ⟩ ⟩ = step (r-case2 x)
progress {Case L _ M _ N} (⊢case wt wtl wtm) | done n | inj₂ a with viewInr L
progress {Case L _ M _ N} (⊢case wt wtl wtm) | done (no-ne (noe-inr x)) | inj₂ a | inj₁ ⟨ _ , ⟨ _ , refl ⟩ ⟩ = step (r-case3 x)
progress {Case L _ M _ N} (⊢case wt wtl wtm) | done n | inj₂ a | inj₂ b =
  done (no-ne (noe-case n (λ {L'} {T} z -> a ⟨ L' , ⟨ T , z ⟩ ⟩) (λ {L'} {T} z -> b ⟨ L' , ⟨ T , z ⟩ ⟩)))
progress {Fix e} (⊢fix wt) with progress wt
progress {Fix e} (⊢fix wt) | step r = step (r-fix1 r)
progress {Fix e} (⊢fix wt) | done n with viewLam e
progress {Fix .(Lam _ _ _)} (⊢fix wt) | done (no-a n) | inj₁ ⟨ _ , ⟨ _ , ⟨ _ , refl ⟩ ⟩ ⟩ = step (r-fix2 n)
progress {Fix e}            (⊢fix wt) | done n | inj₂ hneq =
  done (no-ne (noe-fix (stepNothingNeutral e hneq (normalStepNothing n))))
