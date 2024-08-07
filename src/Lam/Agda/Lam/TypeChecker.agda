module Lam.TypeChecker where

open import Data.List using (List)

open import Haskell.Prelude

open import Lam.Data
open import Lam.UtilsAgda

TypingContext : Set
TypingContext = List Type

{-# COMPILE AGDA2HS TypingContext #-}

emptyTypingContext : TypingContext
emptyTypingContext = []

{-# COMPILE AGDA2HS emptyTypingContext #-}

typeCheck' : TypingContext → Expr → Maybe Type
typeCheck' gam (PrimE PlusPrim)  = Just (Arrow IntT (Arrow IntT IntT))
typeCheck' gam (PrimE MinusPrim) = Just (Arrow IntT (Arrow IntT IntT))
typeCheck' gam (PrimE MultPrim)  = Just (Arrow IntT (Arrow IntT IntT))
typeCheck' gam (PrimE AndPrim)   = Just (Arrow BoolT (Arrow BoolT BoolT))
typeCheck' gam (PrimE OrPrim)    = Just (Arrow BoolT (Arrow BoolT BoolT))
typeCheck' gam (PrimE NotPrim)   = Just (Arrow BoolT BoolT)
typeCheck' gam (Ite b t e)       =
  typeCheck' gam b >>= λ
    { BoolT ->
        typeCheck' gam t >>= λ tt ->
          typeCheck' gam e >>= λ te ->
            if eqType tt te then (Just tt) else Nothing
    ; _ -> Nothing
    }
typeCheck' gam (NumVal _)        = Just IntT
typeCheck' gam (BoolVal _)       = Just BoolT
typeCheck' gam (Var i)           = lookupMaybe i gam
typeCheck' gam (Lam _ t e)       =
  typeCheck' (t ∷ gam) e >>= λ t' -> Just (Arrow t t')
typeCheck' gam (App e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just (Arrow t11 t12)) -> typeCheck' gam e2 >>= λ t2 -> if eqType t11 t2 then Just t12 else Nothing
      ; _ -> Nothing
      }

{-# COMPILE AGDA2HS typeCheck' #-}

typeCheck : Expr → Maybe Type
typeCheck = typeCheck' []

{-# COMPILE AGDA2HS typeCheck #-}
