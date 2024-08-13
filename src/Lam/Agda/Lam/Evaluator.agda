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
shiftUp' c (Add e1 e2) = Add (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (Sub e1 e2) = Sub (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (Mul e1 e2) = Mul (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (And e1 e2) = And (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (Or e1 e2) = Or (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (Not e) = Not (shiftUp' c e)
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
shiftDown' c (Add e1 e2) = Add (shiftDown' c e1) (shiftDown' c e2)
shiftDown' c (Sub e1 e2) = Sub (shiftDown' c e1) (shiftDown' c e2)
shiftDown' c (Mul e1 e2) = Mul (shiftDown' c e1) (shiftDown' c e2)
shiftDown' c (And e1 e2) = And (shiftDown' c e1) (shiftDown' c e2)
shiftDown' c (Or e1 e2) = Or (shiftDown' c e1) (shiftDown' c e2)
shiftDown' c (Not e) = Not (shiftDown' c e)
shiftDown' _ e = e

{-# COMPILE AGDA2HS shiftDown' #-}

shiftDown : Expr → Expr
shiftDown = shiftDown' Z

{-# COMPILE AGDA2HS shiftDown #-}

substitute : Nat → Expr → Expr → Expr
substitute i s (App e1 e2) = App (substitute i s e1) (substitute i s e2)
substitute i s (Lam n t e) = Lam n t (substitute (S i) (shiftUp s) e)
substitute i s (Var x)     = if eqNat i x then s else Var x
substitute i s (Ite b t e) = Ite b' t' e'
  where b' = substitute i s b
        t' = substitute i s t
        e' = substitute i s e
substitute i s (Add e1 e2) = Add (substitute i s e1) (substitute i s e2)
substitute i s (Sub e1 e2) = Sub (substitute i s e1) (substitute i s e2)
substitute i s (Mul e1 e2) = Mul (substitute i s e1) (substitute i s e2)
substitute i s (And e1 e2) = And (substitute i s e1) (substitute i s e2)
substitute i s (Or e1 e2) = Or (substitute i s e1) (substitute i s e2)
substitute i s (Not e) = Not (substitute i s e)
substitute _ _ e = e

{-# COMPILE AGDA2HS substitute #-}


-- Lambda Lifting so the proofs work

smallStepIte : Expr → Expr → Expr → Maybe Expr → Maybe Expr
smallStepIte b t e (Just b') = Just (Ite b' t e)
smallStepIte (BoolVal b) t e _ = Just (if b then t else e)
smallStepIte _ _ _ _ = Nothing

smallStepNot : Expr → Maybe Expr → Maybe Expr
smallStepNot _ (Just e') = Just (Not e')
smallStepNot (BoolVal b) Nothing = Just (BoolVal (not b))
smallStepNot _ _ = Nothing

smallStepOr : Expr → Expr → Maybe Expr → Maybe Expr → Maybe Expr
smallStepOr _ e2 (Just e1') _ = Just (Or e1' e2)
smallStepOr e1 _ _ (Just e2') = Just (Or e1 e2')
smallStepOr (BoolVal b1) (BoolVal b2) Nothing Nothing = Just (BoolVal (b1 || b2))
smallStepOr _ _ Nothing Nothing = Nothing

smallStepAnd : Expr → Expr → Maybe Expr → Maybe Expr → Maybe Expr
smallStepAnd _ e2 (Just e1') _ = Just (And e1' e2)
smallStepAnd e1 _ _ (Just e2') = Just (And e1 e2')
smallStepAnd (BoolVal b1) (BoolVal b2) Nothing Nothing = Just (BoolVal (b1 && b2))
smallStepAnd _ _ Nothing Nothing = Nothing

smallStepAdd : Expr → Expr → Maybe Expr → Maybe Expr → Maybe Expr
smallStepAdd _ e2 (Just e1') _ = Just (Add e1' e2)
smallStepAdd e1 _ _ (Just e2') = Just (Add e1 e2')
smallStepAdd (NumVal i1) (NumVal i2) Nothing Nothing = Just (NumVal (i1 + i2))
smallStepAdd _ _ Nothing Nothing = Nothing

smallStepSub : Expr → Expr → Maybe Expr → Maybe Expr → Maybe Expr
smallStepSub _ e2 (Just e1') _ = Just (Sub e1' e2)
smallStepSub e1 _ _ (Just e2') = Just (Sub e1 e2')
smallStepSub (NumVal i1) (NumVal i2) Nothing Nothing = Just (NumVal (i1 - i2))
smallStepSub _ _ Nothing Nothing = Nothing

smallStepMul : Expr → Expr → Maybe Expr → Maybe Expr → Maybe Expr
smallStepMul _ e2 (Just e1') _ = Just (Mul e1' e2)
smallStepMul e1 _ _ (Just e2') = Just (Mul e1 e2')
smallStepMul (NumVal i1) (NumVal i2) Nothing Nothing = Just (NumVal (i1 * i2))
smallStepMul _ _ Nothing Nothing = Nothing

smallStep : Expr → Maybe Expr
smallStep (Var x) = Nothing
smallStep (Lam n t e) = smallStep e >>= λ e' -> Just (Lam n t e')
smallStep (App e1 e2) =
  myCaseOf (smallStep e1) λ
    { (Just e1') -> Just (App e1' e2)
    ; Nothing ->
        myCaseOf (smallStep e2) λ
          { (Just e2') -> Just (App e1 e2')
          ; Nothing ->
              myCaseOf e1 λ
                { (Lam _ _ e) -> Just (shiftDown (substitute Z (shiftUp e2) e))
                ; _ -> Nothing }}}
smallStep (Ite b t e) = smallStepIte b t e (smallStep b)
smallStep (Add e1 e2) = smallStepAdd e1 e2 (smallStep e1) (smallStep e2)
smallStep (Sub e1 e2) = smallStepSub e1 e2 (smallStep e1) (smallStep e2)
smallStep (Mul e1 e2) = smallStepMul e1 e2 (smallStep e1) (smallStep e2)
smallStep (And e1 e2) = smallStepAnd e1 e2 (smallStep e1) (smallStep e2)
smallStep (Or e1 e2) = smallStepOr e1 e2 (smallStep e1) (smallStep e2)
smallStep (Not e) = smallStepNot e (smallStep e)
smallStep (NumVal _) = Nothing
smallStep (BoolVal _) = Nothing

{-# COMPILE AGDA2HS smallStep #-}

{-# NON_TERMINATING #-}
eval : Expr → Expr
eval e = myCaseOf (smallStep e) λ { (Just e') -> eval e' ; Nothing -> e }

{-# COMPILE AGDA2HS eval #-}

evalWithGas : Nat → Expr → Expr
evalWithGas Z e = e
evalWithGas (S gas) e =
  myCaseOf (smallStep e) λ { (Just e') -> evalWithGas gas e' ; Nothing -> e }




ff : Expr → Expr
ff e = case e of λ where
        (Var i) -> Var (S i)
        e     -> e

{-# COMPILE AGDA2HS ff #-}
