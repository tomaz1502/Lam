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

module MAlonzo.Code.Strict where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Strict
import qualified MAlonzo.Code.Agda.Primitive

-- Strict._.force′
d_force'8242'_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_force'8242'_14 v0 v1 ~v2 ~v3 = du_force'8242'_14 v0 v1
du_force'8242'_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_force'8242'_14 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Strict.d_primForce_18 v0 v1 erased erased
-- Strict._.force′-≡
d_force'8242''45''8801'_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_force'8242''45''8801'_20 = erased
-- Strict._.seq
d_seq_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_seq_22 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_seq_22 v4 v5
du_seq_22 :: AgdaAny -> AgdaAny -> AgdaAny
du_seq_22 v0 v1 = coe seq (coe v0) (coe v1)
-- Strict._.seq-≡
d_seq'45''8801'_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_seq'45''8801'_34 = erased
