module Main (main) where

import Lam.Wrapper (parse)

main :: IO ()
main = print $ show $ parse "lam f -> lam x -> f . (f . x)"
