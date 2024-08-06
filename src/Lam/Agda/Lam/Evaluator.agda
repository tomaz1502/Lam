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
shiftDown' _ e = e

{-# COMPILE AGDA2HS shiftDown' #-}

shiftDown : Expr → Expr
shiftDown = shiftDown' Z

{-# COMPILE AGDA2HS shiftDown #-}

substitute : Nat → Expr → Expr → Expr
substitute i s (App e1 e2) = App (substitute i s e1) (substitute i s e2)
substitute i s (Lam n t e) = Lam n t (substitute (S i) (shiftUp s) e)
substitute i s (Var x)     = if eqNat i x then s else Var x
substitute _ _ e = e

{-# COMPILE AGDA2HS substitute #-}

smallStep : Expr → Maybe Expr
smallStep (Var x) = Nothing
smallStep (Lam n t e) = smallStep e >>= λ e' -> Just (Lam n t e')
smallStep (Ite b t e) =
  myCaseOf (smallStep b) λ
  { (Just b') -> Just (Ite b' t e)
  ; Nothing -> myCaseOf (smallStep t) λ
               { (Just t') -> Just (Ite b t' e)
               ; Nothing -> smallStep e >>= λ e' -> Just (Ite b t e')
               }
  }
smallStep (App (App (PrimE PlusPrim) (NumVal n1)) (NumVal n2)) = Just (NumVal (n1 + n2))
smallStep (App (App (PrimE MinusPrim) (NumVal n1)) (NumVal n2)) = Just (NumVal (n1 - n2))
smallStep (App (App (PrimE MultPrim) (NumVal n1)) (NumVal n2)) = Just (NumVal (n1 * n2))
smallStep (App (App (PrimE AndPrim) (BoolVal b1)) (BoolVal b2)) = Just (BoolVal (b1 && b2))
smallStep (App (App (PrimE OrPrim) (BoolVal b1)) (BoolVal b2)) = Just (BoolVal (b1 || b2))
smallStep (App (PrimE NotPrim) (BoolVal b)) = Just (BoolVal (not b))
smallStep (App (Lam _ _ e) e₂) = Just (shiftDown (substitute Z (shiftUp e₂) e))
smallStep (App e1 e2) =
  myCaseOf (smallStep e1) λ
    { (Just e1') -> Just (App e1' e2)
    ; Nothing -> smallStep e2 >>= λ e2' -> Just (App e1 e2')
    }
smallStep e = Nothing

{-# COMPILE AGDA2HS smallStep #-}

{-# NON_TERMINATING #-}
eval : Expr → Expr
eval e = myCaseOf (smallStep e) λ { (Just e') -> eval e' ; Nothing -> e }

{-# COMPILE AGDA2HS eval #-}

evalWithGas : Nat → Expr → Expr
evalWithGas Z e = e
evalWithGas (S gas) e =
  myCaseOf (smallStep e) λ { (Just e') -> evalWithGas gas e' ; Nothing -> e }
