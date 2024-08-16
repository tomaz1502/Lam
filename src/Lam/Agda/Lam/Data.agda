module Lam.Data where

open import Data.Bool using (true; false)

open import Haskell.Prelude using (Int; Bool; String; _×_)

Id : Set
Id = String

{-# COMPILE AGDA2HS Id #-}

data Nat : Set where
  Z : Nat
  S : Nat → Nat

{-# COMPILE AGDA2HS Nat deriving (Eq, Show) #-}

data RawTypeL : Set where
  RawBoolT : RawTypeL
  RawIntT  : RawTypeL
  RawU     : RawTypeL
  RawArrow : RawTypeL → RawTypeL → RawTypeL
  FreeType : Id → RawTypeL

{-# COMPILE AGDA2HS RawTypeL deriving Show #-}

data TypeL : Set where
  BoolT : TypeL
  IntT  : TypeL
-- U is an opaque type
  U     : TypeL
  Arrow : TypeL → TypeL → TypeL

{-# COMPILE AGDA2HS TypeL deriving Show #-}

data ConstT : Set where
  NumC : Int → ConstT
  BoolC : Bool → ConstT

{-# COMPILE AGDA2HS ConstT deriving Show #-}

data BinOpT : Set where
  Add : BinOpT
  Sub : BinOpT
  Mul : BinOpT
  And : BinOpT
  Or  : BinOpT

{-# COMPILE AGDA2HS BinOpT deriving Show #-}

data UnaryOpT : Set where
  Not : UnaryOpT

{-# COMPILE AGDA2HS UnaryOpT deriving Show #-}

data RawExpr : Set where
  RawVar       : Id → RawExpr
  RawLam       : Id → RawTypeL → RawExpr → RawExpr
  RawApp       : RawExpr → RawExpr → RawExpr
  RawIte       : RawExpr → RawExpr → RawExpr → RawExpr
  RawConst     : ConstT → RawExpr
  RawBinOp     : BinOpT → RawExpr → RawExpr → RawExpr
  RawUnOp      : UnaryOpT → RawExpr → RawExpr

{-# COMPILE AGDA2HS RawExpr deriving Show #-}

data Expr : Set where
  Var     : Nat → Expr
  Lam     : Id → TypeL → Expr → Expr
  App     : Expr → Expr → Expr
  Ite     : Expr → Expr → Expr → Expr
  Const   : ConstT → Expr
  BinOp   : BinOpT → Expr → Expr → Expr
  UnaryOp : UnaryOpT → Expr → Expr

{-# COMPILE AGDA2HS Expr deriving Show #-}

data Command : Set where
    TypedefC : Id × RawTypeL → Command
    DefineC  : Id × RawExpr → Command
    EvalC    : RawExpr → Command
    LoadC    : Id → Command
    ReadC    : Id → Command

{-# COMPILE AGDA2HS Command #-}
