module Main where

import Lam.Wrapper
import Lam.Expr

import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain $ testGroup "lam tests" [parserTest, evalTest]

parserTest :: TestTree
parserTest = testCase "parser test" $
  parse "(lam x -> lam y -> y . y) . (lam x -> x)"
   @?=
  App (Lam "x" (Lam "y" (App (Var 0) (Var 0)))) (Lam "x" (Var 0))

evalTest :: TestTree
evalTest = testCase "eval test" $
  eval (App (Lam "x" (Lam "y" (App (Var 0) (Var 0)))) (Lam "x" (Var 0)))
   @?=
  Lam "y" (App (Var 0) (Var 0))
