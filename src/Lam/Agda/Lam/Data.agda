module Lam.Data where

open import Data.String using (String)

Id : Set
Id = String

{-# COMPILE AGDA2HS Id #-}

data Nat : Set where
  Z : Nat
  S : Nat → Nat

{-# COMPILE AGDA2HS Nat deriving Eq #-}

data RawType : Set where
  RawU     : RawType
  RawArrow : RawType → RawType → RawType
  FreeType : Id → RawType

{-# COMPILE AGDA2HS RawType deriving Show #-}

data Type : Set where
  U     : Type
  Arrow : Type → Type → Type

{-# COMPILE AGDA2HS Type #-}

data RawExpr : Set where
  RawVar : Id → RawExpr
  RawLam : Id → RawType → RawExpr → RawExpr
  RawApp : RawExpr → RawExpr → RawExpr

{-# COMPILE AGDA2HS RawExpr deriving Show #-}

data Expr : Set where
  Var : Nat → Expr
  Lam : Id → Type → Expr → Expr
  App : Expr → Expr → Expr

{-# COMPILE AGDA2HS Expr #-}

