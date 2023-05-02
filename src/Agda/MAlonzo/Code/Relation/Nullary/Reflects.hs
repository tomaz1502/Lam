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

module MAlonzo.Code.Relation.Nullary.Reflects where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Nullary.Reflects.of
d_of_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Bool -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Reflects_14
d_of_12 ~v0 ~v1 v2 v3 = du_of_12 v2 v3
du_of_12 ::
  Bool -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Reflects_14
du_of_12 v0 v1
  = if coe v0
      then coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 (coe v1)
      else coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26
-- Relation.Nullary.Reflects.invert
d_invert_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Bool -> MAlonzo.Code.Relation.Nullary.T_Reflects_14 -> AgdaAny
d_invert_20 ~v0 ~v1 ~v2 v3 = du_invert_20 v3
du_invert_20 ::
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 -> AgdaAny
du_invert_20 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C_of'696'_22 v1 -> coe v1
      MAlonzo.Code.Relation.Nullary.C_of'8319'_26 -> erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Reflects.fromEquivalence
d_fromEquivalence_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Bool ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Nullary.T_Reflects_14
d_fromEquivalence_28 ~v0 ~v1 v2 v3 ~v4
  = du_fromEquivalence_28 v2 v3
du_fromEquivalence_28 ::
  Bool ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Relation.Nullary.T_Reflects_14
du_fromEquivalence_28 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Relation.Nullary.C_of'696'_22
             (coe v1 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      else coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26
-- Relation.Nullary.Reflects.det
d_det_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Bool ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_det_42 = erased
