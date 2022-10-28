{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE ImportQualifiedPost #-}

module Main (main) where

import Control.Monad.Except ( runExceptT )
import Control.Monad.Reader (runReaderT)
import Data.List (isPrefixOf)
import System.Environment   ( getArgs )
import System.Exit          ( exitFailure )

import Lam.Handler ( emptyContext, repl, handleFile, Result, Flag(..) )

main :: IO ()
main = do
  args <- getArgs
  let (flags, nonFlags) = spanComplete (isPrefixOf "--") args
  let flagSet =
        -- could be just map read?
        if ("--untyped" `elem` flags) then [Untyped] else []
  case nonFlags of
    []      -> run (repl emptyContext) flagSet
    [fName] -> run (handleFile fName) flagSet
    _       -> error wrongUsageMsg
  where
    wrongUsageMsg :: String
    wrongUsageMsg =
      unlines [ "[Error]: Incorrect number of arguments."
              , "Usage: Lam <filename>?"
              ]
    run :: Result a -> [Flag] -> IO ()
    run f flags =
        do result <- runExceptT (runReaderT f flags)
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

