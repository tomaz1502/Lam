module Main (main) where

import Lam.Wrapper (parse)
import Lam.Expr (eval)

main :: IO ()
main = readLn >>= \s -> print $ eval $ parse s
-- main = print $ eval $ parse "(lam x -> lam y -> y . y) . (lam x -> x)"
