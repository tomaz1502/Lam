module Main where

import Lam.Wrapper
import Lam.Expr

import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain simpleTest

simpleTest :: TestTree
simpleTest = testCase " first test" $
  parse "(lam x -> lam y -> y . y) . (lam x -> x)"
   @?=
  App (Lam "x" (Lam "y" (App (Var 0) (Var 0)))) (Lam "x" (Var 0))
