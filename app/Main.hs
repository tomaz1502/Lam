module Main (main) where

import System.Environment (getArgs)
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Wrapper (parse)
import Lam.Expr    (eval)

repl :: IO ()
repl =
  do putStr "> "
     hFlush stdout
     command <- getLine
     if command == ":q" then exitSuccess
     else print (eval $ parse command) >> repl

main :: IO ()
main =
  do args <- getArgs
    -- print args
     case args of
       []      -> repl
       [fName] -> readFile fName >>= print . eval . parse
       _       -> putStrLn wrongUsageMsg >> exitFailure
  where
    wrongUsageMsg :: String
    wrongUsageMsg =
      unlines [ "[Error]: Incorrect number of arguments."
              , "Usage: Lam <filename>?"]

