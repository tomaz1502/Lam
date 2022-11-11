{-# OPTIONS_GHC -Wno-typed-holes #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Lam.Handler ( emptyContext )
import Lam.Expr ( Expr(..)
                , Type(..)
                , parseUntypedExpr
                , parseTypedExpr
                , typedPrettyPrint
                , eval)

import Fixtures.ChurchNum ( encodeChurchE
                          , encodeChurchP
                          , addChurch
                          , mulChurch )
import Fixtures.Common ( SourceCode )
import Fixtures.Misc
    ( miscTestCases, MiscTest(TC, eOut, eInp, prog) )

import Test.Tasty ( defaultMain, testGroup, TestTree )
import Test.Tasty.HUnit ( testCase, (@=?), assertFailure )
import Test.QuickCheck
import Test.Tasty.QuickCheck

genLetter :: Gen Char
genLetter = choose ('a', 'z')

genIdentifier :: Gen String
genIdentifier = listOf1 genLetter

instance Arbitrary Type where
  arbitrary = frequency
    [ (3, pure U)
    , (1, Arrow <$> arbitrary <*> arbitrary)
    ]

-- here we use frequency to avoid very long expressions
instance Arbitrary Expr where
  arbitrary = go 0
    where go i = frequency $
           [ (5, (\j -> Var (j `mod` i)) <$> arbitrary) | i > 0 ] ++
           [ (1, App <$> arbitrary <*> arbitrary)
           , (3, Lam <$> genIdentifier <*> arbitrary <*> go (i + 1))
           ]

checkParsing :: Expr -> Bool
checkParsing e =
  case parseTypedExpr (typedPrettyPrint e) of
    Right e' -> e == e'
    Left _   -> False

checkChurchMul :: Int -> Int -> Bool
checkChurchMul n m =
    let n' = abs n `mod` 100
        m' = abs m `mod` 100
     in encodeChurchE (n' * m') ==
            eval (mulChurch (encodeChurchE n') (encodeChurchE m'))

checkChurchAdd :: Int -> Int -> Bool
checkChurchAdd n m =
    let n' = abs n `mod` 1000
        m' = abs m `mod` 1000
     in encodeChurchE (n' + m') ==
            eval (addChurch (encodeChurchE n') (encodeChurchE m'))

parserTest :: SourceCode -> Expr -> TestTree
parserTest prog e = testCase "parser test" $
  case parseUntypedExpr prog of
    Right e' -> e @=? e'
    Left  _  -> assertFailure $ "error on parsing" <> prog

evalTest :: Expr -> Expr -> TestTree
evalTest inp out = testCase "eval test" $
  out @=? eval inp

testParseChurch :: Int -> TestTree
testParseChurch n = testCase ("parse church " <> show n) $
  case parseUntypedExpr (encodeChurchP n) of
    Right e' -> encodeChurchE n @=? e'
    Left  _  -> assertFailure $ "error on parsing" <> encodeChurchP n

testSumChurch :: Int -> Int -> TestTree
testSumChurch n m = testCase (unwords ["sum church", show n, show m]) $
    encodeChurchE (n + m) @=?
        eval (addChurch (encodeChurchE n) (encodeChurchE m))

testMulChurch :: Int -> Int -> TestTree
testMulChurch n m = testCase (unwords ["mul church", show n, show m]) $
    encodeChurchE (n * m) @=?
        eval (mulChurch (encodeChurchE n) (encodeChurchE m))

main :: IO ()
main = defaultMain $ testGroup "tests"
  [ testGroup "parser tests" $ map (\TC{..} -> parserTest prog eInp) miscTestCases
  , testGroup "eval tests"   $ map (\TC{..} -> evalTest eInp eOut) miscTestCases
  , testGroup "church tests" $
      concat [ [testParseChurch i | i <- [0 .. 10]]
             , [testSumChurch i j | i <- [0 .. 5] , j <- [0 .. 5]]
             , [testMulChurch i j | i <- [0 .. 5] , j <- [0 .. 5]]
             ]
  , testProperty "random parsing tests" $ withMaxSuccess 1000 checkParsing
  , testProperty "random test church add" $ withMaxSuccess 1000 checkChurchAdd
  , testProperty "random test church mul" $ withMaxSuccess 1000 checkChurchMul
  ]

