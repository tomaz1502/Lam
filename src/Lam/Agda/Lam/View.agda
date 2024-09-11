module Lam.View where

open import Data.Sum using (_⊎_; inj₁; inj₂)

open import Lam.Data
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; _≢_; refl)

open import Data.Empty using (⊥-elim)
open import Data.Product using (_×_; Σ; Σ-syntax; ∃; ∃-syntax) renaming (_,_ to ⟨_,_⟩)
open import Relation.Nullary using (¬_)

viewBool : ∀ (L : Expr) → ∃[ b ] (L ≡ Const (BoolC b)) ⊎ (¬ (∃[ b ] L ≡ Const (BoolC b)))
viewBool (Var x) = inj₂ λ ()
viewBool (Lam x x₁ L) = inj₂ λ ()
viewBool (App L L₁) = inj₂ λ ()
viewBool (Ite L L₁ L₂) = inj₂ λ ()
viewBool (Inl L x) = inj₂ λ ()
viewBool (Inr L x) = inj₂ λ ()
viewBool (Case L x L₁ x₁ L₂) = inj₂ λ ()
viewBool (Const (NumC x)) = inj₂ λ ()
viewBool (Const (BoolC x)) = inj₁ ⟨ x , refl ⟩
viewBool (BinOp x L L₁) = inj₂ λ ()
viewBool (UnaryOp x L) = inj₂ λ ()

viewNum : ∀ (L : Expr) → ∃[ b ] (L ≡ Const (NumC b)) ⊎ (¬ (∃[ b ] L ≡ Const (NumC b)))
viewNum (Var x) = inj₂ λ ()
viewNum (Lam x x₁ L) = inj₂ λ ()
viewNum (App L L₁) = inj₂ λ ()
viewNum (Ite L L₁ L₂) = inj₂ λ ()
viewNum (Inl L x) = inj₂ λ ()
viewNum (Inr L x) = inj₂ λ ()
viewNum (Case L x L₁ x₁ L₂) = inj₂ λ ()
viewNum (Const (BoolC x)) = inj₂ λ ()
viewNum (Const (NumC x)) = inj₁ ⟨ x , refl ⟩
viewNum (BinOp x L L₁) = inj₂ λ ()
viewNum (UnaryOp x L) = inj₂ λ ()
