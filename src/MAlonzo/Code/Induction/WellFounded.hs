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

module MAlonzo.Code.Induction.WellFounded where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Induction

-- Induction.WellFounded.WfRec
d_WfRec_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_WfRec_22 = erased
-- Induction.WellFounded.Acc
d_Acc_42 a0 a1 a2 a3 a4 = ()
data T_Acc_42 = C_acc_52
-- Induction.WellFounded.WellFounded
d_WellFounded_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) -> ()
d_WellFounded_54 = erased
-- Induction.WellFounded.Well-founded
d_Well'45'founded_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) -> ()
d_Well'45'founded_60 = erased
-- Induction.WellFounded.acc-inverse
d_acc'45'inverse_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> T_Acc_42 -> AgdaAny -> AgdaAny -> T_Acc_42
d_acc'45'inverse_70 = erased
-- Induction.WellFounded.Acc-resp-≈
d_Acc'45'resp'45''8776'_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_Acc_42 -> T_Acc_42
d_Acc'45'resp'45''8776'_82 = erased
-- Induction.WellFounded.Some.wfRecBuilder
d_wfRecBuilder_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T_Acc_42 -> AgdaAny -> AgdaAny -> AgdaAny
d_wfRecBuilder_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9 ~v10
  = du_wfRecBuilder_106 v6 v9
du_wfRecBuilder_106 ::
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
du_wfRecBuilder_106 v0 v1
  = coe v0 v1 (\ v2 v3 -> coe du_wfRecBuilder_106 (coe v0) v2)
-- Induction.WellFounded.Some.wfRec
d_wfRec_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T_Acc_42 -> AgdaAny
d_wfRec_120 ~v0 ~v1 ~v2 ~v3 ~v4 = du_wfRec_120
du_wfRec_120 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T_Acc_42 -> AgdaAny
du_wfRec_120
  = coe
      MAlonzo.Code.Induction.du_subsetBuild_114
      (\ v0 v1 v2 v3 v4 v5 -> coe du_wfRecBuilder_106 v1 v4)
-- Induction.WellFounded.Some.unfold-wfRec
d_unfold'45'wfRec_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny ->
  T_Acc_42 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unfold'45'wfRec_134 = erased
-- Induction.WellFounded.Some.wfRec-builder
d_wfRec'45'builder_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T_Acc_42 -> AgdaAny -> AgdaAny -> AgdaAny
d_wfRec'45'builder_142 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_wfRec'45'builder_142
du_wfRec'45'builder_142 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T_Acc_42 -> AgdaAny -> AgdaAny -> AgdaAny
du_wfRec'45'builder_142 v0 v1 v2 v3 v4 v5
  = coe du_wfRecBuilder_106 v1 v4
-- Induction.WellFounded.All.wfRecBuilder
d_wfRecBuilder_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_wfRecBuilder_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 ~v8
  = du_wfRecBuilder_156 v7
du_wfRecBuilder_156 ::
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_wfRecBuilder_156 v0 v1 v2 = coe du_wfRecBuilder_106 (coe v0) v1
-- Induction.WellFounded.All.wfRec
d_wfRec_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
d_wfRec_164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_wfRec_164
du_wfRec_164 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
du_wfRec_164
  = coe
      MAlonzo.Code.Induction.du_build_54
      (\ v0 v1 v2 -> coe du_wfRecBuilder_156 v1)
-- Induction.WellFounded.All.wfRec-builder
d_wfRec'45'builder_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_wfRec'45'builder_166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_wfRec'45'builder_166
du_wfRec'45'builder_166 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_wfRec'45'builder_166 v0 v1 v2 = coe du_wfRecBuilder_156 v1
-- Induction.WellFounded.FixPoint.some-wfRec-irrelevant
d_some'45'wfRec'45'irrelevant_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny ->
    AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  T_Acc_42 ->
  T_Acc_42 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_some'45'wfRec'45'irrelevant_202 = erased
-- Induction.WellFounded.FixPoint._.wfRec
d_wfRec_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny ->
    AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
d_wfRec_224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_wfRec_224
du_wfRec_224 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
du_wfRec_224 = coe du_wfRec_164
-- Induction.WellFounded.FixPoint._.wfRec-builder
d_wfRec'45'builder_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny ->
    AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_wfRec'45'builder_226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_wfRec'45'builder_226
du_wfRec'45'builder_226 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_wfRec'45'builder_226 = coe du_wfRec'45'builder_166
-- Induction.WellFounded.FixPoint._.wfRecBuilder
d_wfRecBuilder_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny ->
    AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_wfRecBuilder_228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
  = du_wfRecBuilder_228
du_wfRecBuilder_228 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_wfRecBuilder_228 v0 v1 v2 = coe du_wfRecBuilder_156 v1
-- Induction.WellFounded.FixPoint.wfRecBuilder-wfRec
d_wfRecBuilder'45'wfRec_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny ->
    AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_wfRecBuilder'45'wfRec_236 = erased
-- Induction.WellFounded.FixPoint.unfold-wfRec
d_unfold'45'wfRec_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny ->
    AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unfold'45'wfRec_262 = erased
-- Induction.WellFounded.Subrelation.accessible
d_accessible_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_Acc_42 -> T_Acc_42
d_accessible_284 = erased
-- Induction.WellFounded.Subrelation.wellFounded
d_wellFounded_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_wellFounded_292 = erased
-- Induction.WellFounded.Subrelation.well-founded
d_well'45'founded_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_well'45'founded_298 = erased
-- Induction.WellFounded.InverseImage.accessible
d_accessible_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T_Acc_42 -> T_Acc_42
d_accessible_314 = erased
-- Induction.WellFounded.InverseImage.wellFounded
d_wellFounded_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_wellFounded_322 = erased
-- Induction.WellFounded.InverseImage.well-founded
d_well'45'founded_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_well'45'founded_328 = erased
-- Induction.WellFounded.TransitiveClosure._<⁺_
d__'60''8314'__340 a0 a1 a2 a3 a4 a5 = ()
data T__'60''8314'__340
  = C_'91'_'93'_348 AgdaAny |
    C_trans_360 AgdaAny T__'60''8314'__340 T__'60''8314'__340
-- Induction.WellFounded.TransitiveClosure.downwardsClosed
d_downwardsClosed_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_Acc_42 -> T__'60''8314'__340 -> T_Acc_42
d_downwardsClosed_366 = erased
-- Induction.WellFounded.TransitiveClosure.accessible
d_accessible_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> T_Acc_42 -> T_Acc_42
d_accessible_378 = erased
-- Induction.WellFounded.TransitiveClosure.accessible′
d_accessible'8242'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> T_Acc_42 -> AgdaAny -> T__'60''8314'__340 -> T_Acc_42
d_accessible'8242'_382 = erased
-- Induction.WellFounded.TransitiveClosure.wellFounded
d_wellFounded_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_wellFounded_400 = erased
-- Induction.WellFounded.TransitiveClosure.downwards-closed
d_downwards'45'closed_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_Acc_42 -> T__'60''8314'__340 -> T_Acc_42
d_downwards'45'closed_406 = erased
-- Induction.WellFounded.TransitiveClosure.well-founded
d_well'45'founded_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_well'45'founded_408 = erased
-- Induction.WellFounded.Lexicographic._<_
d__'60'__430 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T__'60'__430 = C_left_442 AgdaAny | C_right_452 AgdaAny
-- Induction.WellFounded.Lexicographic.accessible
d_accessible_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> T_Acc_42 -> (AgdaAny -> AgdaAny -> T_Acc_42) -> T_Acc_42
d_accessible_460 = erased
-- Induction.WellFounded.Lexicographic.accessible′
d_accessible'8242'_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  T_Acc_42 ->
  T_Acc_42 ->
  (AgdaAny -> AgdaAny -> T_Acc_42) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T__'60'__430 -> T_Acc_42
d_accessible'8242'_468 = erased
-- Induction.WellFounded.Lexicographic.wellFounded
d_wellFounded_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  (AgdaAny -> AgdaAny -> T_Acc_42) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Acc_42
d_wellFounded_490 = erased
-- Induction.WellFounded.Lexicographic.well-founded
d_well'45'founded_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) ->
  (AgdaAny -> AgdaAny -> T_Acc_42) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Acc_42
d_well'45'founded_498 = erased
-- Induction.WellFounded.Inverse-image.accessible
d_accessible_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T_Acc_42 -> T_Acc_42
d_accessible_502 = erased
-- Induction.WellFounded.Inverse-image.well-founded
d_well'45'founded_504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_well'45'founded_504 = erased
-- Induction.WellFounded.Inverse-image.wellFounded
d_wellFounded_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_wellFounded_506 = erased
-- Induction.WellFounded.Transitive-closure._<⁺_
d__'60''8314'__510 a0 a1 a2 a3 a4 a5 = ()
-- Induction.WellFounded.Transitive-closure.accessible
d_accessible_514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> T_Acc_42 -> T_Acc_42
d_accessible_514 = erased
-- Induction.WellFounded.Transitive-closure.accessible′
d_accessible'8242'_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> T_Acc_42 -> AgdaAny -> T__'60''8314'__340 -> T_Acc_42
d_accessible'8242'_516 = erased
-- Induction.WellFounded.Transitive-closure.downwards-closed
d_downwards'45'closed_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_Acc_42 -> T__'60''8314'__340 -> T_Acc_42
d_downwards'45'closed_518 = erased
-- Induction.WellFounded.Transitive-closure.downwardsClosed
d_downwardsClosed_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_Acc_42 -> T__'60''8314'__340 -> T_Acc_42
d_downwardsClosed_520 = erased
-- Induction.WellFounded.Transitive-closure.well-founded
d_well'45'founded_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_well'45'founded_524 = erased
-- Induction.WellFounded.Transitive-closure.wellFounded
d_wellFounded_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T_Acc_42) -> AgdaAny -> T_Acc_42
d_wellFounded_526 = erased
