{-# LANGUAGE LambdaCase #-}
module Lam.TypeChecker where

import Lam.Data (Expr(App, BoolVal, Lam, NumVal, PrimE, Var), Prim(AndPrim, MinusPrim, MultPrim, OrPrim, PlusPrim), Type(Arrow, BoolT, IntT))
import Lam.UtilsAgda (eqType, lookupMaybe)

type TypingContext = [Type]

emptyTypingContext :: TypingContext
emptyTypingContext = []

myCaseOf :: a -> (a -> b) -> b
myCaseOf x f = f x

typeCheck' :: TypingContext -> Expr -> Maybe Type
typeCheck' gam (PrimE PlusPrim)
  = Just (Arrow IntT (Arrow IntT IntT))
typeCheck' gam (PrimE MinusPrim)
  = Just (Arrow IntT (Arrow IntT IntT))
typeCheck' gam (PrimE MultPrim)
  = Just (Arrow IntT (Arrow IntT IntT))
typeCheck' gam (PrimE AndPrim)
  = Just (Arrow BoolT (Arrow BoolT BoolT))
typeCheck' gam (PrimE OrPrim)
  = Just (Arrow BoolT (Arrow BoolT BoolT))
typeCheck' gam (NumVal _) = Just IntT
typeCheck' gam (BoolVal _) = Just BoolT
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

