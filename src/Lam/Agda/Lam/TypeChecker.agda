module Lam.TypeChecker where

open import Data.List
open import Haskell.Prelude using (case_of_; Maybe; Just; Nothing; _>>=_;
                                   if_then_else_; maybe)

open import Lam.Data
open import Lam.UtilsAgda

TypingContext : Set
TypingContext = List Type

{-# COMPILE AGDA2HS TypingContext #-}

emptyTypingContext : TypingContext
emptyTypingContext = []

{-# COMPILE AGDA2HS emptyTypingContext #-}

-- removing the equality proof of case_of_
myCaseOf : {a b : Set} → a → (a → b) → b
myCaseOf x f = f x

{-# COMPILE AGDA2HS myCaseOf #-}

typeCheck' : TypingContext → Expr → Maybe Type
typeCheck' gam (Var i)      = lookupMaybe i gam
typeCheck' gam (Lam _ t e) =
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
