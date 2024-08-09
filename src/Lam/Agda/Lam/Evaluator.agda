module Lam.Evaluator where

open import Haskell.Prelude using (if_then_else_; Maybe; Just; Nothing; _>>=_)

open import Lam.Data
open import Lam.UtilsAgda

shiftUp' : Nat → Expr → Expr
shiftUp' c (App e1 e2) = App (shiftUp' c e1) (shiftUp' c e2)
shiftUp' c (Lam n t e)   = Lam n t (shiftUp' (S c) e)
shiftUp' c (Var x)     =
  if ltNat x c then Var x else Var (inc x)

{-# COMPILE AGDA2HS shiftUp' #-}

shiftUp : Expr → Expr
shiftUp = shiftUp' Z

{-# COMPILE AGDA2HS shiftUp #-}

shiftDown' : Nat → Expr → Expr
shiftDown' c (App e1 e2) = App (shiftDown' c e1) (shiftDown' c e2)
shiftDown' c (Lam n t e)   = Lam n t (shiftDown' (S c) e)
shiftDown' c (Var x)     =
  if ltNat x c then Var x else Var (dec x)

{-# COMPILE AGDA2HS shiftDown' #-}

shiftDown : Expr → Expr
shiftDown = shiftDown' Z

{-# COMPILE AGDA2HS shiftDown #-}

substitute : Nat → Expr → Expr → Expr
substitute i s (App e1 e2) = App (substitute i s e1) (substitute i s e2)
substitute i s (Lam n t e) = Lam n t (substitute (S i) (shiftUp s) e)
substitute i s (Var x) = if eqNat i x then s else Var x

{-# COMPILE AGDA2HS substitute #-}

smallStep : Expr → Maybe Expr
smallStep (Var x) = Nothing
smallStep (Lam n t e) = smallStep e >>= λ e' -> Just (Lam n t e')
smallStep (App e1 e2) =
  myCaseOf (smallStep e1)
    λ { (Just e1') -> Just (App e1' e2)
      ; Nothing ->
          myCaseOf (smallStep e2)
            λ { (Just e2') -> Just (App e1 e2')
              ; Nothing ->
                  myCaseOf e1
                    λ { (Lam s ty bd) -> Just (shiftDown (substitute Z (shiftUp e2) bd))
                      ; _ -> Nothing }}}

{-# COMPILE AGDA2HS smallStep #-}

{-# NON_TERMINATING #-}
eval : Expr → Expr
eval e =
  myCaseOf (smallStep e)
    λ { Nothing -> e ; (Just e') -> eval e' }

{-# COMPILE AGDA2HS eval #-}

evalWithGas : Nat → Expr → Expr
evalWithGas Z e = e
evalWithGas (S gas) e =
  myCaseOf (smallStep e) λ { Nothing -> e ; (Just e') -> evalWithGas gas e' }
