module Main (main) where

import Lam.Wrapper (parse)

main :: IO ()
main = print $ parse "lam s -> lam z -> s . s . z"
