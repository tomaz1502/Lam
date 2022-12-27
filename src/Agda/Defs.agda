module Defs where

open import Data.Nat    using (ℕ)
open import Data.String using (String)

Id : Set
Id = String

data Type : Set where
  U : Type
  _⇒_ : Type → Type → Type

data Expr : Set where
  App : Expr → Expr → Expr
  Lam : Id → Type → Expr → Expr
  Var : ℕ → Expr
