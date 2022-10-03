module Main (main) where

import System.Environment ( getArgs )
import System.Exit        ( exitFailure )

import Lam.Handler

main :: IO ()
main = do
  args <- getArgs
  case args of 
    []      -> repl emptyContext
    [fName] -> handleFile fName
    _       -> putStrLn wrongUsageMsg >> exitFailure
  where
    wrongUsageMsg :: String
    wrongUsageMsg =
      unlines [ "[Error]: Incorrect number of arguments."
              , "Usage: Lam <filename>?"
              ]

