{-# LANGUAGE ImportQualifiedPost #-}

module Lam.Handler ( repl
                   , handleFile
                   , GlobalContext
                   , emptyContext
                   , parseDefine
                   , parseEval
                   ) where

import Data.Map qualified as M
import System.Exit        (exitSuccess, exitFailure)
import System.IO          (hFlush, stdout)

import Lam.Expr ( eval, Expr )
import Lam.Parser
    ( emptyContext, hParseDefine, hParseEval, GlobalContext )
import Lam.Lexer ( runAlex, Alex )

-- TODO: report cyclic dependencies
loadFile :: String -> IO GlobalContext
loadFile fName = do
    sc <- readFile fName
    f (lines sc) emptyContext
    where
      -- TODO: abstract pattern here and in handleFile
      f :: [String] -> GlobalContext -> IO GlobalContext
      f [] ctx = return ctx
      f (c:cs) ctx = case take 2 c of
                       "de" -> f cs (parseDefine c ctx)
                       "lo" -> let target = parseLoad c
                               in loadFile target >>= \ctx' ->
                                -- use ctx' on the left because
                                -- it was defined later, so should
                                -- have priority in the context
                                  f cs (M.union ctx' ctx)
                       _    -> f cs ctx

handleCommand :: String -> GlobalContext -> IO GlobalContext
handleCommand command ctx = do
  case take 2 command of
    ":q" -> exitSuccess
    "ev" -> print (eval $ parseEval command ctx) >> return ctx
    "de" -> return (parseDefine command ctx)
    "lo" -> let target = parseLoad command
            in loadFile target >>= \ctx' -> return (M.union ctx' ctx)
    _    -> print "Unknown command!" >> return ctx

repl :: GlobalContext -> IO ()
repl ctx = do
  putStr "> "
  hFlush stdout
  command <- getLine
  ctx' <- handleCommand command ctx
  repl ctx'

handleFile :: String -> IO ()
handleFile fName = do
  sc <- readFile fName
  f (lines sc) emptyContext
  where
    f :: [String] -> GlobalContext -> IO ()
    f [] _ = return ()
    f (c:cs) ctx = handleCommand c ctx >>= f cs

getParser :: Alex a -> String -> a
getParser f s =
    case runAlex s f of
      Left err -> error "parsing error"
      Right p  -> p

parseEval :: String -> GlobalContext -> Expr
parseEval = getParser hParseEval

parseDefine :: String -> GlobalContext -> GlobalContext
parseDefine = getParser hParseDefine

parseLoad :: String -> String
parseLoad s = let s1 = dropWhile (/= ':') s -- remove load command
                  s2 = drop 1 s1 -- remove colon
                  s3 = dropWhile (== ' ') s2 -- remove trailing spaces
                  s4 = init s3 -- remove trailing semicolon
                  s5 = tail (init s4) -- remove quotes
              in s5

