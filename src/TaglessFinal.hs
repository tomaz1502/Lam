{-# LANGUAGE InstanceSigs,
             TypeSynonymInstances,
             FlexibleInstances #-}

module TaglessFinal where

class ExpSYM repr where
  lit :: Int -> repr
  neg :: repr -> repr
  add :: repr -> repr -> repr

instance ExpSYM Int where
  lit :: Int -> Int
  lit i = i

  neg :: Int -> Int
  neg i = -i

  add :: Int -> Int -> Int
  add a b = a + b

instance ExpSYM String where
  lit :: Int -> String
  lit i = show i

  neg :: String -> String
  neg i = concat ["(-", i, ")"]

  add :: String -> String -> String
  add a b = concat ["(", a, " + ", b, ")"]

tf :: Int
tf = add (lit 1) (lit 2)

tfs :: String
tfs = add (lit 1) (lit 2)


class MulSYM repr where
  mul :: repr -> repr -> repr

instance MulSYM Int where
  mul :: Int -> Int -> Int
  mul a b = a * b

instance MulSYM String where
  mul :: String -> String -> String
  mul a b = concat ["(", a, " * ", b, ")"]

tfm :: Int
tfm = mul tf (lit 1)

tfm2 :: String
tfm2 = mul tfs (lit 1)
