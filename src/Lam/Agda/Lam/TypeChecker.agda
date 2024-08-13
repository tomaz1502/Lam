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
typeCheck' gam (Add e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just IntT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just IntT) -> Just IntT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (Sub e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just IntT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just IntT) -> Just IntT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (Mul e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just IntT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just IntT) -> Just IntT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (And e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just BoolT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just BoolT) -> Just BoolT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (Or e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just BoolT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just BoolT) -> Just BoolT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (Not e) =
  myCaseOf (typeCheck' gam e) λ { (Just BoolT) -> Just BoolT ; _ -> Nothing }

{-# COMPILE AGDA2HS typeCheck' #-}

typeCheck : Expr → Maybe Type
typeCheck = typeCheck' []

{-# COMPILE AGDA2HS typeCheck #-}
