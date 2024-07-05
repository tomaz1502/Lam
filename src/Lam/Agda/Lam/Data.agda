module Lam.Data where

open import Data.String using (String)
open import Haskell.Prelude using (Int)

Id : Set
Id = String

{-# COMPILE AGDA2HS Id #-}

data Nat : Set where
  Z : Nat
  S : Nat → Nat

{-# COMPILE AGDA2HS Nat deriving (Eq, Show) #-}

data RawType : Set where
  RawNatT  : RawType
  RawU     : RawType
  RawArrow : RawType → RawType → RawType
  FreeType : Id → RawType

{-# COMPILE AGDA2HS RawType deriving Show #-}

data Type : Set where
  NatT  : Type
-- U is an opaque type
  U     : Type
  Arrow : Type → Type → Type

{-# COMPILE AGDA2HS Type #-}

data RawExpr : Set where
  RawVar    : Id → RawExpr
  RawLam    : Id → RawType → RawExpr → RawExpr
  RawApp    : RawExpr → RawExpr → RawExpr
  RawNumber : Int → RawExpr

{-# COMPILE AGDA2HS RawExpr deriving Show #-}

data Expr : Set where
  Var    : Nat → Expr
  Lam    : Id → Type → Expr → Expr
  App    : Expr → Expr → Expr
  Number : Int → Expr

{-# COMPILE AGDA2HS Expr #-}

