module Main (main) where

import Lam.Wrapper (parse)

main :: IO ()
main = print $ parse "lam x -> x"
