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

module MAlonzo.Code.Relation.Nullary.Decidable.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Relation.Nullary.Decidable.Core.isYes
d_isYes_16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> Bool
d_isYes_16 ~v0 ~v1 v2 = du_isYes_16 v2
du_isYes_16 :: MAlonzo.Code.Relation.Nullary.T_Dec_32 -> Bool
du_isYes_16 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.isYes≗does
d_isYes'8791'does_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isYes'8791'does_20 = erased
-- Relation.Nullary.Decidable.Core.⌊_⌋
d_'8970'_'8971'_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> Bool
d_'8970'_'8971'_22 v0 v1 v2 = coe du_isYes_16 v2
-- Relation.Nullary.Decidable.Core.isNo
d_isNo_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> Bool
d_isNo_24 ~v0 ~v1 v2 = du_isNo_24 v2
du_isNo_24 :: MAlonzo.Code.Relation.Nullary.T_Dec_32 -> Bool
du_isNo_24 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.d_not_22 (coe du_isYes_16 (coe v0))
-- Relation.Nullary.Decidable.Core.True
d_True_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> ()
d_True_26 = erased
-- Relation.Nullary.Decidable.Core.False
d_False_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> ()
d_False_30 = erased
-- Relation.Nullary.Decidable.Core.toWitness
d_toWitness_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny -> AgdaAny
d_toWitness_36 ~v0 ~v1 v2 ~v3 = du_toWitness_36 v2
du_toWitness_36 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny
du_toWitness_36 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.fromWitness
d_fromWitness_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny -> AgdaAny
d_fromWitness_42 ~v0 ~v1 v2 = du_fromWitness_42 v2
du_fromWitness_42 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny -> AgdaAny
du_fromWitness_42 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> if coe v1
             then let v3 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                  coe (\ v4 -> v3)
             else coe
                    MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.toWitnessFalse
d_toWitnessFalse_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_toWitnessFalse_48 = erased
-- Relation.Nullary.Decidable.Core.fromWitnessFalse
d_fromWitnessFalse_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) -> AgdaAny
d_fromWitnessFalse_54 ~v0 ~v1 v2 = du_fromWitnessFalse_54 v2
du_fromWitnessFalse_54 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) -> AgdaAny
du_fromWitnessFalse_54 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> if coe v1
             then coe
                    (\ v3 ->
                       coe
                         v3
                         (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v2)))
             else (let v3 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                   coe (\ v4 -> v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core._.From-yes
d_From'45'yes_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> ()
d_From'45'yes_66 = erased
-- Relation.Nullary.Decidable.Core._.from-yes
d_from'45'yes_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny
d_from'45'yes_70 ~v0 ~v1 v2 = du_from'45'yes_70 v2
du_from'45'yes_70 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny
du_from'45'yes_70 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v2)
             else coe
                    MAlonzo.Code.Level.C_lift_20
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core._.From-no
d_From'45'no_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> ()
d_From'45'no_74 = erased
-- Relation.Nullary.Decidable.Core._.from-no
d_from'45'no_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny
d_from'45'no_78 ~v0 ~v1 v2 = du_from'45'no_78 v2
du_from'45'no_78 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny
du_from'45'no_78 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Level.C_lift_20
                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             else coe
                    MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.dec-true
d_dec'45'true_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dec'45'true_84 = erased
-- Relation.Nullary.Decidable.Core.dec-false
d_dec'45'false_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dec'45'false_94 = erased
-- Relation.Nullary.Decidable.Core.dec-yes
d_dec'45'yes_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dec'45'yes_106 ~v0 ~v1 v2 ~v3 = du_dec'45'yes_106 v2
du_dec'45'yes_106 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dec'45'yes_106 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                MAlonzo.Code.Relation.Nullary.C_of'696'_22 v3
                  -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.dec-no
d_dec'45'no_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dec'45'no_124 ~v0 ~v1 v2 ~v3 = du_dec'45'no_124 v2
du_dec'45'no_124 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dec'45'no_124 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> coe
             seq (coe v1)
             (coe
                seq (coe v2)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Decidable.Core.dec-yes-irr
d_dec'45'yes'45'irr_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dec'45'yes'45'irr_142 = erased
-- Relation.Nullary.Decidable.Core.map′
d_map'8242'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_map'8242'_168 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_map'8242'_168 v4 v6
du_map'8242'_168 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du_map'8242'_168 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46
      (coe MAlonzo.Code.Relation.Nullary.d_does_42 (coe v1))
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.C__because__46 v2 v3
           -> if coe v2
                then coe
                       MAlonzo.Code.Relation.Nullary.C_of'696'_22
                       (coe
                          v0
                          (coe MAlonzo.Code.Relation.Nullary.Reflects.du_invert_20 (coe v3)))
                else coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26
         _ -> MAlonzo.RTE.mazUnreachableError)
