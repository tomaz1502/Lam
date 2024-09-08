module Lam.Evaluator where

open import Haskell.Prelude hiding (Nat)

open import Data.Bool using (Bool; true; false)

open import Lam.Data
open import Lam.UtilsAgda

shiftUp' : Nat → Expr → Expr
shiftUp' c (App e1 e2) = App (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (Lam n t e) = Lam n t (shiftUp' (S c) e)
shiftUp' c (Var x)     =
  if ltNat x c then Var x else Var (inc x)
shiftUp' c (Ite b t e) = Ite b' t' e'
  where b' = shiftUp' c b
        t' = shiftUp' c t
        e' = shiftUp' c e
shiftUp' c (BinOp o e1 e2) = BinOp o (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (UnaryOp o e) = UnaryOp o (shiftUp' c e)
shiftUp' _ e = e

{-# COMPILE AGDA2HS shiftUp' #-}

shiftUp : Expr → Expr
shiftUp = shiftUp' Z

{-# COMPILE AGDA2HS shiftUp #-}

shiftDown' : Nat → Expr → Expr
shiftDown' c (App e1 e2) = App (shiftDown' c e1) (shiftDown' c e2)
shiftDown' c (Lam n t e) = Lam n t (shiftDown' (S c) e)
shiftDown' c (Var x)     =
  if ltNat x c then Var x else Var (dec x)
shiftDown' c (Ite b t e) = Ite b' t' e'
  where b' = shiftDown' c b
        t' = shiftDown' c t
        e' = shiftDown' c e

shiftDown' c (BinOp o e1 e2) = BinOp o (shiftDown' c e1) (shiftDown' c e2)

shiftDown' c (UnaryOp o e) = UnaryOp o (shiftDown' c e)
shiftDown' _ e = e

{-# COMPILE AGDA2HS shiftDown' #-}

shiftDown : Expr → Expr
shiftDown = shiftDown' Z

{-# COMPILE AGDA2HS shiftDown #-}

substitute' : Nat → Expr → Expr → Expr
substitute' i s (App e1 e2) = App (substitute' i s e1) (substitute' i s e2)
substitute' i s (Lam n t e) = Lam n t (substitute' (S i) (shiftUp s) e)
substitute' i s (Var x)     = if eqNat i x then s else Var x
substitute' i s (Ite b t e) = Ite b' t' e'
  where b' = substitute' i s b
        t' = substitute' i s t
        e' = substitute' i s e
substitute' i s (BinOp o e1 e2) = BinOp o (substitute' i s e1) (substitute' i s e2)
substitute' i s (UnaryOp o e) = UnaryOp o (substitute' i s e)
substitute' _ _ e = e

{-# COMPILE AGDA2HS substitute' #-}

-- Changes `Var 0` by e2 in e1, also decrease all other variables
substitute : Expr → Expr → Expr
substitute e1 e2 = shiftDown (substitute' Z (shiftUp e2) e1)

{-# COMPILE AGDA2HS substitute #-}

smallStepCase : Expr → Expr → Expr → Maybe Expr → Maybe Expr
smallStepCase e1        e2 e3 (Just e1') = Just (Case e1' e2 e3)
smallStepCase (Inl x _) e2 e3 Nothing    = Just (substitute x e2)
smallStepCase (Inr x _) e2 e3 Nothing    = Just (substitute x e3)
smallStepCase _         e2 e3 Nothing    = Nothing

{-# COMPILE AGDA2HS smallStepCase #-}

smallStepInl : Expr → TypeL → Maybe Expr → Maybe Expr
smallStepInl e t Nothing = Nothing
smallStepInl e t (Just e') = Just (Inl e' t)

{-# COMPILE AGDA2HS smallStepInl #-}

smallStepInr : Expr → TypeL → Maybe Expr → Maybe Expr
smallStepInr e t Nothing = Nothing
smallStepInr e t (Just e') = Just (Inr e' t)

{-# COMPILE AGDA2HS smallStepInr #-}

-- Lambda Lifting so the proofs work

smallStepIte : Expr → Expr → Expr → Maybe Expr → Maybe Expr
smallStepIte _ t e (Just b') = Just (Ite b' t e)
smallStepIte (Const (BoolC b)) t e Nothing = Just (if b then t else e)
smallStepIte _ _ _ _ = Nothing

{-# COMPILE AGDA2HS smallStepIte #-}

smallStepBinOp : BinOpT → Expr → Expr → Maybe Expr → Maybe Expr → Maybe Expr
smallStepBinOp o _ e2 (Just e1') _ = Just (BinOp o e1' e2)
smallStepBinOp o e1 _ Nothing (Just e2') = Just (BinOp o e1 e2')
smallStepBinOp Add (Const (NumC i1)) (Const (NumC i2)) Nothing Nothing = Just (Const (NumC (i1 + i2)))
smallStepBinOp Sub (Const (NumC i1)) (Const (NumC i2)) Nothing Nothing = Just (Const (NumC (i1 - i2)))
smallStepBinOp Mul (Const (NumC i1)) (Const (NumC i2)) Nothing Nothing = Just (Const (NumC (i1 * i2)))
smallStepBinOp And (Const (BoolC i1)) (Const (BoolC i2)) Nothing Nothing = Just (Const (BoolC (i1 && i2)))
smallStepBinOp Or  (Const (BoolC i1)) (Const (BoolC i2)) Nothing Nothing = Just (Const (BoolC (i1 || i2)))
-- MkPair does not take step (maybe operation is a confusing name in this case - should be constructor)
smallStepBinOp MkPair _ _ _ _ = Nothing
smallStepBinOp _ _ _ _ _ = Nothing

{-# COMPILE AGDA2HS smallStepBinOp #-}

smallStepUnOp : UnaryOpT → Expr → Maybe Expr → Maybe Expr
smallStepUnOp o _ (Just e') = Just (UnaryOp o e')
smallStepUnOp Not (Const (BoolC i)) Nothing = Just (Const (BoolC (not i)))
smallStepUnOp Proj1 (BinOp MkPair e1 _) Nothing = Just e1
smallStepUnOp Proj2 (BinOp MkPair _ e2) Nothing = Just e2
smallStepUnOp _ _ _ = Nothing

{-# COMPILE AGDA2HS smallStepUnOp #-}

smallStepApp : Expr → Expr → Maybe Expr → Maybe Expr → Maybe Expr
smallStepApp e1 e2 (Just e1') _          = Just (App e1' e2)
smallStepApp e1 _  Nothing    (Just e2') = Just (App e1 e2')
smallStepApp (Lam _ _ e) e2 Nothing Nothing = Just (substitute e e2)
smallStepApp _ _ Nothing Nothing = Nothing

smallStep : Expr → Maybe Expr
smallStep (Var _) = Nothing
smallStep (Lam n t e) = smallStep e >>= λ e' -> Just (Lam n t e')
smallStep (App e1 e2) = smallStepApp e1 e2 (smallStep e1) (smallStep e2)
smallStep (BinOp o e1 e2) = smallStepBinOp o e1 e2 (smallStep e1) (smallStep e2)
smallStep (UnaryOp o e) = smallStepUnOp o e (smallStep e)
smallStep (Ite b t e) = smallStepIte b t e (smallStep b)
smallStep (Inl e t) = smallStepInl e t  (smallStep e)
smallStep (Inr e t) = smallStepInr e t  (smallStep e)
smallStep (Case e1 e2 e3) = smallStepCase e1 e2 e3 (smallStep e1)
smallStep (Const _) = Nothing

{-# COMPILE AGDA2HS smallStep #-}

{-# NON_TERMINATING #-}
eval : Expr → Expr
eval e = myCaseOf (smallStep e) λ { (Just e') -> eval e' ; Nothing -> e }

{-# COMPILE AGDA2HS eval #-}

evalWithGas : Nat → Expr → Expr
evalWithGas Z e = e
evalWithGas (S gas) e =
  myCaseOf (smallStep e) λ { (Just e') -> evalWithGas gas e' ; Nothing -> e }
