module Main (main) where

import Control.Monad.Except ( runExceptT )
import System.Environment   ( getArgs )
import System.Exit          ( exitFailure )

import Lam.Handler ( emptyContext, repl, handleFile, Result )
import Data.List (isPrefixOf)

main :: IO ()
main = do
  args <- getArgs
  let (flags, nonFlags) = spanComplete (isPrefixOf "--") args
  -- for now is the only flag we have
  -- when we have more we gave them a better treatment
  let untyped = "--untyped" `elem` flags
  case nonFlags of
    []      -> run (repl emptyContext untyped)
    [fName] -> run (handleFile fName untyped)
    _       -> error wrongUsageMsg
  where
    wrongUsageMsg :: String
    wrongUsageMsg =
      unlines [ "[Error]: Incorrect number of arguments."
              , "Usage: Lam <filename>?"
              ]
    run :: Result a -> IO ()
    run f = do result <- runExceptT f
               case result of
                 Right _  -> return ()
                 Left err -> putStrLn err
    -- Dont assume f to be monotonic
    spanComplete :: (a -> Bool) -> [a] -> ([a], [a])
    spanComplete _ [] = ([], [])
    spanComplete f (a:as) =
        let (xs, ys) = spanComplete f as
         in if f a then (a:xs, ys)
            else (xs, a:ys)

