{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Data.Empty where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Data.Empty.⊥
d_'8869'_4 = ()
data T_'8869'_4
-- Data.Empty.⊥-elim
d_'8869''45'elim_10 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_'8869'_4 -> AgdaAny
d_'8869''45'elim_10 ~v0 ~v1 ~v2 = du_'8869''45'elim_10
du_'8869''45'elim_10 :: AgdaAny
du_'8869''45'elim_10 = MAlonzo.RTE.mazUnreachableError
