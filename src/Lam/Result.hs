{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE FlexibleContexts #-}

module Lam.Result where

import Lam.Context (GlobalContext)

import Control.Monad.RWS (MonadIO, MonadReader, MonadState, ask)
import Control.Monad.Except (MonadError)

data Flag = Untyped
  deriving Eq

type Result a =
  forall (m :: * -> *). ( MonadIO m
                        , MonadError String m
                        , MonadReader [Flag] m
                        , MonadState GlobalContext m
                        ) => m a

askUntyped :: Result Bool
askUntyped = elem Untyped <$> ask

