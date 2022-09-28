{-# LANGUAGE ImportQualifiedPost #-}

module Main (main) where

import Data.Maybe         (catMaybes)
import System.Environment (getArgs)
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Wrapper (parse, unsafeGetExprDef)
import Lam.Expr    (eval)
import Lam.Program

repl :: GlobalContext -> IO ()
repl globalCtx = do
  putStr "> "
  hFlush stdout
  command <- getLine
  if command == ":q" then exitSuccess
  else
    -- TODO: is it possible to have a parsing function that
    -- starts in a different entry point? like here would
    -- be better to start at EvalCommand or DefineCommand
    case parse command globalCtx of
      ([Just e], globalCtx')  -> putStr "result: " >>
                                 print (eval e) >>
                                 repl globalCtx'
      ([Nothing], globalCtx') -> repl globalCtx'
      _ -> error "unreachable"

handleFile :: String -> IO ()
handleFile fName = readFile fName >>= \sc ->
                     case parse sc emptyContext of
                       (xs, _) -> let xs' = catMaybes xs
                                   in mapM_ (print . eval) xs'

main :: IO ()
main = do
  args <- getArgs
  case args of 
    []      -> repl emptyContext
    [fName] -> handleFile fName
    _       -> error wrongUsageMsg
  where
    wrongUsageMsg :: String
    wrongUsageMsg =
      unlines [ "[Error]: Incorrect number of arguments."
              , "Usage: Lam <filename>?"
              ]

