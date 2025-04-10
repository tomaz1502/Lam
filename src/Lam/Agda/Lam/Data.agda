module Lam.Data where

open import Lam.Nat

open import Data.Bool using (true; false)

open import Haskell.Prelude using (Int; Bool; String; _×_; Eq; _==_; _&&_)

Id : Set
Id = String

{-# COMPILE AGDA2HS Id #-}

data RawTypeL : Set where
  RawBoolT : RawTypeL
  RawIntT  : RawTypeL
  RawProd  : RawTypeL → RawTypeL → RawTypeL
  RawSum   : RawTypeL → RawTypeL → RawTypeL
  RawArrow : RawTypeL → RawTypeL → RawTypeL
  FreeType : Id → RawTypeL

{-# COMPILE AGDA2HS RawTypeL deriving (Eq, Show) #-}

data TypeL : Set where
  BoolT : TypeL
  IntT  : TypeL
  Arrow : TypeL → TypeL → TypeL
  Prod  : TypeL → TypeL → TypeL
  Sum   : TypeL → TypeL → TypeL

{-# COMPILE AGDA2HS TypeL deriving Show #-}

instance
  iEqType : Eq TypeL
  iEqType ._==_ BoolT BoolT = true
  iEqType ._==_ IntT IntT = true
  iEqType ._==_ (Arrow t11 t12) (Arrow t21 t22) = t11 == t21 && t12 == t22
  iEqType ._==_ (Prod t11 t12) (Prod t21 t22) = t11 == t21 && t12 == t22
  iEqType ._==_ (Sum t11 t12) (Sum t21 t22) = t11 == t21 && t12 == t22
  iEqType ._==_ _ _ = false

{-# COMPILE AGDA2HS iEqType #-}

data ConstT : Set where
  NumC : Int → ConstT
  BoolC : Bool → ConstT

{-# COMPILE AGDA2HS ConstT deriving (Eq, Show) #-}

instance
  iEqConst : Eq ConstT
  iEqConst ._==_ (NumC i) (NumC j) = i == j
  iEqConst ._==_ (BoolC i) (BoolC j) = i == j
  iEqConst ._==_ _ _ = false

data BinOpT : Set where
  Add    : BinOpT
  Sub    : BinOpT
  Mul    : BinOpT
  And    : BinOpT
  Or     : BinOpT
  LtInt  : BinOpT
  MkPair : BinOpT

{-# COMPILE AGDA2HS BinOpT deriving (Eq, Show) #-}

instance
  iEqBinOp : Eq BinOpT
  iEqBinOp ._==_ Add Add = true
  iEqBinOp ._==_ Sub Sub = true
  iEqBinOp ._==_ Mul Mul = true
  iEqBinOp ._==_ And And = true
  iEqBinOp ._==_ Or Or = true
  iEqBinOp ._==_ LtInt LtInt = true
  iEqBinOp ._==_ MkPair MkPair = true
  iEqBinOp ._==_ _ _ = false

data UnaryOpT : Set where
  Not : UnaryOpT
  Proj1 : UnaryOpT
  Proj2 : UnaryOpT

{-# COMPILE AGDA2HS UnaryOpT deriving (Eq, Show) #-}

instance
  iEqUnaryOp : Eq UnaryOpT
  iEqUnaryOp ._==_ Not Not = true
  iEqUnaryOp ._==_ Proj1 Proj1 = true
  iEqUnaryOp ._==_ Proj2 Proj2 = true
  iEqUnaryOp ._==_ _ _ = false

data RawExpr : Set where
  RawVar       : Id → RawExpr
  RawLam       : Id → RawTypeL → RawExpr → RawExpr
  RawApp       : RawExpr → RawExpr → RawExpr
  RawFix       : RawExpr → RawExpr
  RawIte       : RawExpr → RawExpr → RawExpr → RawExpr
  RawInl       : RawExpr → RawTypeL → RawExpr
  RawInr       : RawExpr → RawTypeL → RawExpr
  RawCase      : RawExpr → Id → RawExpr → Id → RawExpr → RawExpr
  RawConst     : ConstT → RawExpr
  RawBinOp     : BinOpT → RawExpr → RawExpr → RawExpr
  RawUnOp      : UnaryOpT → RawExpr → RawExpr

{-# COMPILE AGDA2HS RawExpr deriving Show #-}

data Expr : Set where
  Var     : Nat → Expr
  Lam     : Id → TypeL → Expr → Expr
  App     : Expr → Expr → Expr
  Fix     : Expr → Expr
  Ite     : Expr → Expr → Expr → Expr
  Inl     : Expr → TypeL → Expr
  Inr     : Expr → TypeL → Expr
  Case    : Expr → Id → Expr → Id → Expr → Expr
  Const   : ConstT → Expr
  BinOp   : BinOpT → Expr → Expr → Expr
  UnaryOp : UnaryOpT → Expr → Expr

{-# COMPILE AGDA2HS Expr deriving Show #-}

instance
  iExprEq : Eq Expr
  iExprEq ._==_ (Var i) (Var j) = i == j
  iExprEq ._==_ (Lam _ _ e1) (Lam _ _ e2) = e1 == e2
  iExprEq ._==_ (App e11 e12) (App e21 e22) = e11 == e21 && e12 == e22
  iExprEq ._==_ (Const c1) (Const c2) = c1 == c2
  iExprEq ._==_ (BinOp o1 e11 e12) (BinOp o2 e21 e22) =
    o1 == o2 && e11 == e21 && e12 == e22
  iExprEq ._==_ (UnaryOp o1 e1) (UnaryOp o2 e2) =
    o1 == o2 && e1 == e2
  iExprEq ._==_ (Ite b1 t1 e1) (Ite b2 t2 e2) =
    b1 == b2 && t1 == t2 && e1 == e2
  iExprEq ._==_ (Inl e1 t1) (Inl e2 t2) = e1 == e2 && t1 == t2
  iExprEq ._==_ (Inr e1 t1) (Inr e2 t2) = e1 == e2 && t1 == t2
  iExprEq ._==_ _ _ = false

{-# COMPILE AGDA2HS iExprEq #-}

data Command : Set where
    TypedefC : Id × RawTypeL → Command
    DefineC  : Id × RawExpr → Command
    EvalC    : RawExpr → Command
    CheckC   : RawExpr → Command
    LoadC    : Id → Command
    ReadC    : Id → Command
    ExitC    : Command

{-# COMPILE AGDA2HS Command #-}
