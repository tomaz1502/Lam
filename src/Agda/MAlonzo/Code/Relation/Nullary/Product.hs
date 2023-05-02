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

module MAlonzo.Code.Relation.Nullary.Product where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Nullary.Product._×-reflects_
d__'215''45'reflects__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Bool ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14
d__'215''45'reflects__18 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'215''45'reflects__18 v6 v7
du__'215''45'reflects__18 ::
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14
du__'215''45'reflects__18 v0 v1
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C_of'696'_22 v2
        -> case coe v1 of
             MAlonzo.Code.Relation.Nullary.C_of'696'_22 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.C_of'696'_22
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
             MAlonzo.Code.Relation.Nullary.C_of'8319'_26
               -> coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Relation.Nullary.C_of'8319'_26
        -> coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Product._×-dec_
d__'215''45'dec__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'215''45'dec__30 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'215''45'dec__30 v4 v5
du__'215''45'dec__30 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'215''45'dec__30 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46
      (coe
         MAlonzo.Code.Data.Bool.Base.d__'8743'__24
         (coe MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0))
         (coe MAlonzo.Code.Relation.Nullary.d_does_42 (coe v1)))
      (coe
         du__'215''45'reflects__18
         (coe MAlonzo.Code.Relation.Nullary.d_proof_44 (coe v0))
         (coe MAlonzo.Code.Relation.Nullary.d_proof_44 (coe v1)))
