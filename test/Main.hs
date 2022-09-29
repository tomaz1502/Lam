{-# OPTIONS_GHC -Wno-typed-holes #-}
{-# LANGUAGE RecordWildCards #-}

module Main where

import Lam.Handler
import Lam.Expr ( Expr(..), eval )

import Fixtures

import Test.Tasty ( defaultMain, testGroup, TestTree )
import Test.Tasty.HUnit ( testCase, (@?=) )

parserTest :: SourceCode -> Expr -> TestTree
parserTest prog e = testCase "parser test" $
  parseEval prog emptyContext @?= e

evalTest :: Expr -> Expr -> TestTree
evalTest inp out = testCase "eval test" $
  eval inp @?= out

testParseChurch :: Int -> TestTree
testParseChurch n = testCase ("parse church " <> show n) $
  parseEval (encodeChurchP n) emptyContext @?= encodeChurchE n

testSumChurch :: Int -> Int -> TestTree
testSumChurch n m = testCase (unwords ["sum church", show n, show m]) $
    encodeChurchE (n + m) @?=
        eval (Lam "f" (Lam "x" (App (App (encodeChurchE n) (Var 1)) (App (App (encodeChurchE m) (Var 1)) (Var 0)))))

testMulChurch :: Int -> Int -> TestTree
testMulChurch n m = testCase (unwords ["mul church", show n, show m]) $
    encodeChurchE (n * m) @?=
        eval (Lam "f" (Lam "x" (App (App (encodeChurchE n) (App (encodeChurchE m) (Var 1))) (Var 0))))

main :: IO ()
main = defaultMain $ testGroup "lam tests"
    [ testGroup "parser tests" $ map (\TC{..} -> parserTest prog eInp) miscTestCases
    , testGroup "eval tests"   $ map (\TC{..} -> evalTest eInp eOut) miscTestCases
    , testGroup "church tests" $ 
        concat [ [testParseChurch i | i <- [0 .. 10]]
               , [testSumChurch i j | i <- [0 .. 5] , j <- [0 .. 5]]
               , [testMulChurch i j | i <- [0 .. 5] , j <- [0 .. 5]]
               ]
    ]

