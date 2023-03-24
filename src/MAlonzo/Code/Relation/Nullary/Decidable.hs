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

module MAlonzo.Code.Relation.Nullary.Decidable where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Relation.Nullary.Decidable.map
d_map_14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Function.Equivalence.T_Equivalence_16 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_map_14 ~v0 ~v1 ~v2 ~v3 v4 = du_map_14 v4
du_map_14 ::
  MAlonzo.Code.Function.Equivalence.T_Equivalence_16 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du_map_14 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (coe
         MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
         (coe MAlonzo.Code.Function.Equivalence.d_to_34 (coe v0)))
-- Relation.Nullary.Decidable._._._≈_
d__'8776'__62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Injection.T_Injection_88 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__62 = erased
-- Relation.Nullary.Decidable._._._≈_
d__'8776'__66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Injection.T_Injection_88 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__66 = erased
-- Relation.Nullary.Decidable._.via-injection
d_via'45'injection_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Injection.T_Injection_88 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_via'45'injection_68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_via'45'injection_68 v6 v7 v8 v9
du_via'45'injection_68 ::
  MAlonzo.Code.Function.Injection.T_Injection_88 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_via'45'injection_68 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (coe MAlonzo.Code.Function.Injection.d_injective_108 v0 v2 v3)
      (coe
         v1
         (coe
            MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
            (MAlonzo.Code.Function.Injection.d_to_106 (coe v0)) v2)
         (coe
            MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
            (MAlonzo.Code.Function.Injection.d_to_106 (coe v0)) v3))
-- Relation.Nullary.Decidable.True-↔
d_True'45''8596'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1048
d_True'45''8596'_78 ~v0 ~v1 v2 ~v3 = du_True'45''8596'_78 v2
du_True'45''8596'_78 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1048
du_True'45''8596'_78 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Function.Bundles.du_mk'8596''8242'_1382
                    (coe
                       (\ v3 ->
                          coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v2)))
                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)) erased
                    erased
             else coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Function.Bundles.du_mk'8596''8242'_1382 erased
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20
                          (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26))
                       erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
