module Main (main) where

import Control.Monad.Except ( runExceptT )
import System.Environment   ( getArgs )
import System.Exit          ( exitFailure )

import Lam.Handler ( handleFile, emptyContext, repl, Command )

main :: IO ()
main = do
  args <- getArgs
  case args of 
    []      -> run (repl emptyContext)
    [fName] -> run (handleFile fName)
    _       -> error wrongUsageMsg
  where
    wrongUsageMsg :: String
    wrongUsageMsg =
      unlines [ "[Error]: Incorrect number of arguments."
              , "Usage: Lam <filename>?"
              ]
    run :: Command a -> IO ()
    run f = do result <- runExceptT f
               case result of
                 Right _  -> return ()
                 Left err -> putStrLn err

