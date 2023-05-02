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

module MAlonzo.Code.Relation.Nullary.Sum where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Nullary.Sum._¬-⊎_
d__'172''45''8846'__14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d__'172''45''8846'__14 = erased
-- Relation.Nullary.Sum._⊎-reflects_
d__'8846''45'reflects__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Bool ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14
d__'8846''45'reflects__20 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'8846''45'reflects__20 v6 v7
du__'8846''45'reflects__20 ::
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14
du__'8846''45'reflects__20 v0 v1
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C_of'696'_22 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.C_of'696'_22
             (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v2))
      MAlonzo.Code.Relation.Nullary.C_of'8319'_26
        -> case coe v1 of
             MAlonzo.Code.Relation.Nullary.C_of'696'_22 v3
               -> coe
                    MAlonzo.Code.Relation.Nullary.C_of'696'_22
                    (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3))
             MAlonzo.Code.Relation.Nullary.C_of'8319'_26
               -> coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Sum._⊎-dec_
d__'8846''45'dec__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8846''45'dec__32 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8846''45'dec__32 v4 v5
du__'8846''45'dec__32 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8846''45'dec__32 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46
      (coe
         MAlonzo.Code.Data.Bool.Base.d__'8744'__30
         (coe MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0))
         (coe MAlonzo.Code.Relation.Nullary.d_does_42 (coe v1)))
      (coe
         du__'8846''45'reflects__20
         (coe MAlonzo.Code.Relation.Nullary.d_proof_44 (coe v0))
         (coe MAlonzo.Code.Relation.Nullary.d_proof_44 (coe v1)))
