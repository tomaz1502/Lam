{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE FlexibleContexts #-}

module Main (main) where

import Control.Monad.Except ( runExceptT )
import Control.Monad.Reader ( runReaderT )
import Control.Monad.State  ( runStateT )
import Data.List            ( isPrefixOf )
import System.Environment   ( getArgs )

import Lam.Context ( emptyContext )
import Lam.Handler ( repl, handleFile )
import Lam.Result

main :: IO ()
main = do
  args <- getArgs
  let (flags, nonFlags) = spanComplete (isPrefixOf "--") args
  -- could be just map read
  let flagSet = [Untyped | "--untyped" `elem` flags]
  case nonFlags of
    []      -> run repl flagSet
    [fName] -> run (handleFile fName) flagSet
    _       -> error wrongUsageMsg
  where
    wrongUsageMsg :: String
    wrongUsageMsg =
      unlines [ "[Error]: Incorrect number of arguments."
              , "Usage: Lam <filename>?"
              ]
    run :: Result () -> [Flag] -> IO ()
    run f flags =
        do result <- runExceptT (runStateT (runReaderT f flags) emptyContext)
           case result of
             Right _  -> return ()
             Left err -> putStrLn err
    -- not monotonic
    spanComplete :: (a -> Bool) -> [a] -> ([a], [a])
    spanComplete _ [] = ([], [])
    spanComplete f (a:as) =
        let (xs, ys) = spanComplete f as
         in if f a then (a:xs, ys)
            else (xs, a:ys)

