{-# LANGUAGE LambdaCase #-}
module Lam.TypeChecker where

import Lam.Data (Expr(App, Lam, Number, Var), Type(Arrow, NatT))
import Lam.UtilsAgda (eqType, lookupMaybe)

type TypingContext = [Type]

emptyTypingContext :: TypingContext
emptyTypingContext = []

myCaseOf :: a -> (a -> b) -> b
myCaseOf x f = f x

typeCheck' :: TypingContext -> Expr -> Maybe Type
typeCheck' gam (Number i) = Just NatT
typeCheck' gam (Var i) = lookupMaybe i gam
typeCheck' gam (Lam _ t e)
  = do t' <- typeCheck' (t : gam) e
       Just (Arrow t t')
typeCheck' gam (App e1 e2)
  = myCaseOf (typeCheck' gam e1)
      (\case
           Just (Arrow t11 t12) -> do t2 <- typeCheck' gam e2
                                      if eqType t11 t2 then Just t12 else Nothing
           _ -> Nothing)

typeCheck :: Expr -> Maybe Type
typeCheck = typeCheck' []

