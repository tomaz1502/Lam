module Main (main) where

import Lam.Wrapper (parse)
import Lam.Expr (eval, debugDeBruijn)

prog2 :: String
prog2 = "lam y -> ((lam x -> x . x) . (lam f -> f . f . y) . (lam x -> x))"

-- let D =  λx(x x); F= λf.(f (f y)); and I= λx.x in
--     (D  (F I))

prog :: String
prog = "(lam T -> (lam f -> lam x -> (T . f) . x)) . (lam f -> lam x -> f . f . x)"

main :: IO ()
main = do
    print $ show $ eval $ parse prog2
    print $ show $ parse prog2

