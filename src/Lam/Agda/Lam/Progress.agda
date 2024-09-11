module Lam.Progress where

import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; _≢_; refl)
open import Data.Empty using (⊥-elim)
open import Data.Product using (_×_; Σ; Σ-syntax; ∃; ∃-syntax; proj₁; proj₂) renaming (_,_ to ⟨_,_⟩)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Relation.Nullary using (¬_)

open import Haskell.Prelude using ([])

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
progress (⊢ite wt wt₁ wt₂) with progress wt
... | step r = step (r-ite r)
... | done n = {!!}
progress (⊢l wt) with progress wt
... | step r = step (r-l' r)
... | done n = done (no-a n)
progress {App L M} (⊢a wtl wtr) with progress wtl
... | step r = step (r-a r)
... | done n1 with progress wtr
...   | done n2 = {!!}
...   | step r = step (r-a' n1 r)
progress (⊢proj1 wt) = {!!}
progress (⊢proj2 wt) = {!!}
progress (⊢mkPair wt wt₁) = {!!}
progress (⊢inl wt) = {!!}
progress (⊢inr wt) = {!!}
progress (⊢case wt wt₁ wt₂) = {!!}
