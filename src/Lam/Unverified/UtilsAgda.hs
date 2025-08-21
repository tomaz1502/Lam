module Lam.UtilsAgda where

myCaseOf :: a -> (a -> b) -> b
myCaseOf x f = f x

