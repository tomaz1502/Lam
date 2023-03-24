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

module MAlonzo.Code.Relation.Nullary.Negation.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Nullary.Negation.Core.contradiction
d_contradiction_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) -> AgdaAny
d_contradiction_24 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_contradiction_24
du_contradiction_24 :: AgdaAny
du_contradiction_24
  = coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10
-- Relation.Nullary.Negation.Core.contradiction₂
d_contradiction'8322'_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) -> AgdaAny
d_contradiction'8322'_30 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
  = du_contradiction'8322'_30 v6
du_contradiction'8322'_30 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_contradiction'8322'_30 v0
  = coe seq (coe v0) (coe du_contradiction_24)
-- Relation.Nullary.Negation.Core.contraposition
d_contraposition_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_contraposition_44 = erased
-- Relation.Nullary.Negation.Core.¬-reflects
d_'172''45'reflects_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Bool ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14
d_'172''45'reflects_56 ~v0 ~v1 ~v2 v3 = du_'172''45'reflects_56 v3
du_'172''45'reflects_56 ::
  MAlonzo.Code.Relation.Nullary.T_Reflects_14 ->
  MAlonzo.Code.Relation.Nullary.T_Reflects_14
du_'172''45'reflects_56 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C_of'696'_22 v1
        -> coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26
      MAlonzo.Code.Relation.Nullary.C_of'8319'_26
        -> coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Negation.Core.¬?
d_'172''63'_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_'172''63'_64 ~v0 ~v1 v2 = du_'172''63'_64 v2
du_'172''63'_64 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du_'172''63'_64 v0
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46
      (coe
         MAlonzo.Code.Data.Bool.Base.d_not_22
         (coe MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0)))
      (coe
         du_'172''45'reflects_56
         (coe MAlonzo.Code.Relation.Nullary.d_proof_44 (coe v0)))
-- Relation.Nullary.Negation.Core._.∃⟶¬∀¬
d_'8707''10230''172''8704''172'_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8707''10230''172''8704''172'_82 = erased
-- Relation.Nullary.Negation.Core._.∀⟶¬∃¬
d_'8704''10230''172''8707''172'_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8704''10230''172''8707''172'_88 = erased
-- Relation.Nullary.Negation.Core._.¬∃⟶∀¬
d_'172''8707''10230''8704''172'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'172''8707''10230''8704''172'_100 = erased
-- Relation.Nullary.Negation.Core._.∀¬⟶¬∃
d_'8704''172''10230''172''8707'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8704''172''10230''172''8707'_106 = erased
-- Relation.Nullary.Negation.Core._.∃¬⟶¬∀
d_'8707''172''10230''172''8704'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8707''172''10230''172''8704'_112 = erased
-- Relation.Nullary.Negation.Core.¬¬-map
d_'172''172''45'map_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'172''172''45'map_114 = erased
-- Relation.Nullary.Negation.Core.Stable
d_Stable_118 :: MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()
d_Stable_118 = erased
-- Relation.Nullary.Negation.Core.stable
d_stable_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  ((((AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
     MAlonzo.Code.Data.Empty.T_'8869'_4) ->
    AgdaAny) ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_stable_122 = erased
-- Relation.Nullary.Negation.Core.negated-stable
d_negated'45'stable_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (((AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
    MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_negated'45'stable_128 = erased
