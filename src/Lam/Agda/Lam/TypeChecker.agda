module Lam.TypeChecker where

open import Data.List using (List)

open import Haskell.Prelude

open import Lam.Data
open import Lam.UtilsAgda

TypingContext : Set
TypingContext = List TypeL

{-# COMPILE AGDA2HS TypingContext #-}

emptyTypingContext : TypingContext
emptyTypingContext = []

{-# COMPILE AGDA2HS emptyTypingContext #-}

typeCheck' : TypingContext → Expr → Maybe TypeL
typeCheck' gam (Ite b t e)       =
  typeCheck' gam b >>= λ
    { BoolT ->
        typeCheck' gam t >>= λ tt ->
          typeCheck' gam e >>= λ te ->
            if eqType tt te then (Just tt) else Nothing
    ; _ -> Nothing
    }
typeCheck' _ (Const (NumC _))  = Just IntT
typeCheck' _ (Const (BoolC _)) = Just BoolT
typeCheck' gam (Var i)           = lookupMaybe i gam
typeCheck' gam (Lam _ t e)       =
  typeCheck' (t ∷ gam) e >>= λ t' -> Just (Arrow t t')
typeCheck' gam (App e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just (Arrow t11 t12)) -> typeCheck' gam e2 >>= λ t2 -> if eqType t11 t2 then Just t12 else Nothing
      ; _ -> Nothing
      }
typeCheck' gam (BinOp Add e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just IntT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just IntT) -> Just IntT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (BinOp Sub e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just IntT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just IntT) -> Just IntT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (BinOp Mul e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just IntT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just IntT) -> Just IntT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (BinOp And e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just BoolT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just BoolT) -> Just BoolT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (BinOp Or e1 e2) =
  myCaseOf (typeCheck' gam e1)
    λ { (Just BoolT) ->
           myCaseOf (typeCheck' gam e2)
             λ { (Just BoolT) -> Just BoolT
               ; _ -> Nothing
               }
      ; _ -> Nothing
      }
typeCheck' gam (UnaryOp Not e) =
  myCaseOf (typeCheck' gam e) λ { (Just BoolT) -> Just BoolT ; _ -> Nothing }
typeCheck' gam (UnaryOp Proj1 e) =
  myCaseOf (typeCheck' gam e) λ
    { (Just (Prod t1 _)) -> Just t1
    ; _ -> Nothing
    }
typeCheck' gam (UnaryOp Proj2 e) =
  myCaseOf (typeCheck' gam e) λ
    { (Just (Prod _ t2)) -> Just t2
    ; _ -> Nothing
    }
typeCheck' gam (BinOp MkPair e1 e2) =
  typeCheck' gam e1 >>= λ t1 ->
  typeCheck' gam e2 >>= λ t2 ->
  Just (Prod t1 t2)
typeCheck' gam (Inl e t) =
  myCaseOf t λ
    { (Sum tl tr) -> typeCheck' gam e >>= λ te -> if eqType tl te then Just (Sum tl tr) else Nothing
    ; _ -> Nothing
    }
typeCheck' gam (Inr e t) =
  myCaseOf t λ
    { (Sum tl tr) -> typeCheck' gam e >>= λ te -> if eqType tr te then Just (Sum tl tr) else Nothing
    ; _ -> Nothing
    }
typeCheck' gam (Case e1 _ e2 _ e3) =
  myCaseOf (typeCheck' gam e1) λ
    { (Just (Sum tl tr)) ->
        typeCheck' (tl ∷ gam) e2 >>= λ t2 ->
        typeCheck' (tr ∷ gam) e3 >>= λ t3 ->
        if eqType t2 t3 then Just t2 else Nothing
    ; _ -> Nothing
    }

{-# COMPILE AGDA2HS typeCheck' #-}

typeCheck : Expr → Maybe TypeL
typeCheck = typeCheck' []

{-# COMPILE AGDA2HS typeCheck #-}
