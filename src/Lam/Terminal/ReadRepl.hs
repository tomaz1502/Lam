module Lam.Terminal.ReadRepl where

import System.Console.ANSI

import GHC.IO.Handle
import GHC.IO.StdHandles
import System.IO (hReady)
import System.Posix.Terminal
import System.Posix (stdInput)

type CmdHistory = [String]

getKey :: IO [Char]
getKey = reverse <$> getKey' ""
  where getKey' chars = do
          char <- getChar
          more <- hReady stdin
          (if more then getKey' else return) (char:chars)

update :: [a] -> Int -> a -> [a]
update [] _ _ = []
update (_ : tl) 0 a = a : tl
update (hd : tl) i a = hd : update tl (i - 1) a

readRepl :: CmdHistory -> IO String
readRepl originalHistory =
  loop 0 0 ("" : originalHistory)
  where
    loop pos hisPos history = do
      let cmd = history !! hisPos
      setCursorColumn 0
      clearLine
      putStr ("> " ++ cmd)
      setCursorColumn (pos + 2)
      hFlush stdout
      k <- getKey
      case k of
        "\n" ->
            putStr "\n" >> return cmd
        "\ESC[A" -> -- up
            let hisPos' = min (hisPos + 1) (length history - 1) in
            let pos' = length (history !! hisPos') in
            loop pos' hisPos' history
        "\ESC[B" -> -- down
            let hisPos' = max (hisPos - 1) 0 in
            let pos' = length (history !! hisPos') in
            loop pos' hisPos' history
        "\ESC[C" -> -- right
            loop (min (pos + 1) (length cmd)) hisPos history
        "\ESC[D" -> -- left
            loop (max (pos - 1) 0) hisPos history
        "\DEL"   ->
            let cmd' = take (pos - 1) cmd ++ drop pos cmd in
            let history' = update history hisPos cmd' in
            loop (max (pos - 1) 0) hisPos history'
        _ ->
            let cmd' = take pos cmd ++ k ++ drop pos cmd in
            let history' = update history hisPos cmd' in
            loop (min (pos + 1) (length cmd')) hisPos history'

setRawMode :: TerminalAttributes -> IO ()
setRawMode attrs = do
  let rawAttrs = withRawMode attrs
  setTerminalAttributes stdInput rawAttrs Immediately

withRawMode :: TerminalAttributes -> TerminalAttributes
withRawMode attrs =
  let withoutMode' = flip withoutMode in
      foldl (\a f -> f a) attrs
        [ withoutMode' EnableEcho
        , withoutMode' ProcessInput
        , withoutMode' ExtendedFunctions
        ]
