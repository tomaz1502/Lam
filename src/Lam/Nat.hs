module Lam.Nat where

data Nat = Z
         | S Nat
             deriving (Eq, Show)

ltNat :: Nat -> Nat -> Bool
ltNat Z (S _) = True
ltNat (S x) (S y) = ltNat x y
ltNat _ _ = False

inc :: Nat -> Nat
inc = S

dec :: Nat -> Nat
dec Z = Z
dec (S x) = x

lookupMaybe :: Nat -> [t] -> Maybe t
lookupMaybe _ [] = Nothing
lookupMaybe Z (h : _) = Just h
lookupMaybe (S i) (_ : t) = lookupMaybe i t

