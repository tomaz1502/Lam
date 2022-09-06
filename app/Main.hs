module Main (main) where

import System.Environment (getArgs)
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Wrapper (parse)
import Lam.Expr    (eval)
import Lam.Prog
import Lam.Repl

main :: IO ()
main = do
  args <- getArgs
  case args of 
    [] -> error "unimplemented"
    [fName] -> error "unimplemented"
    _ -> error "wrong usage"
  return ()

-- repl :: IO ()
-- repl =
--   do putStr "> "
--      hFlush stdout
--      command <- getLine
--      if command == ":q" then exitSuccess
--      else print (eval $ parse command) >> repl

-- main :: IO ()
-- main =
--   do args <- getArgs
--      case args of
--        [] -> error "unimplemented"
--        [fName] -> readFile fName >>= undefined -- sequence $ \ps -> map (\p ->
           -- case p of
           --   Eval e -> pure ()
           --   Define s e -> pure ()) (stms (parse ps))
       -- _ -> error "unimplemented"
    -- print args
--      case args of
--        []      -> repl
--        [fName] -> readFile fName >>= print . eval . parse
--        _       -> putStrLn wrongUsageMsg >> exitFailure
--   where
--     wrongUsageMsg :: String
--     wrongUsageMsg =
--       unlines [ "[Error]: Incorrect number of arguments."
--               , "Usage: Lam <filename>?"]

