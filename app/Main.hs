module Main (main) where

import Lam.Wrapper (parse)
import Lam.Expr (eval)

main :: IO ()
main = print $ parse "(lam s -> lam z -> s . s . z) . (lam x -> x)"
