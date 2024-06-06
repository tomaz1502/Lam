module Lam.Parser.Base where

import Lam.Command
import Lam.Data (RawExpr(..), RawType(..), Id)
import Lam.Parser.Parser

parseCommand :: Bool -> String -> Either String Command
parseCommand untyped =
  if untyped then
    getParser hParseUntypedCommand
  else getParser hParseCommand

parseProg :: Bool -> String -> Either String [Command]
parseProg untyped =
  if untyped then
    getParser hParseUntypedProg
  else getParser hParseProg

parseRawExpr :: Bool -> String -> Either String RawExpr
parseRawExpr untyped =
  if untyped then
    getParser hParseUntypedExpr
  else getParser hParseExpr
