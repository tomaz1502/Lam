module Main where

import Lam.Wrapper
import Lam.Expr

import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain $ testGroup "lam tests" [parserTest, evalTest]

exampleExpr :: Expr
exampleExpr = App (Lam "x" (Lam "y" (App (Var 0) (Var 0)))) (Lam "x" (Var 0))

parserTest :: TestTree
parserTest = testCase "parser test" $
  parse "(lam x -> lam y -> y . y) . (lam x -> x)"
   @?=
  exampleExpr

evalTest :: TestTree
evalTest = testCase "eval test" $
  eval exampleExpr
   @?=
  Lam "y" (App (Var 0) (Var 0))
