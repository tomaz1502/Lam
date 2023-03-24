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

module MAlonzo.Code.Relation.Binary.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Binary.Structures.IsPartialEquivalence
d_IsPartialEquivalence_16 a0 a1 a2 a3 = ()
data T_IsPartialEquivalence_16
  = C_IsPartialEquivalence'46'constructor_169 (AgdaAny ->
                                               AgdaAny -> AgdaAny -> AgdaAny)
                                              (AgdaAny ->
                                               AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Structures.IsPartialEquivalence.sym
d_sym_22 ::
  T_IsPartialEquivalence_16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_22 v0
  = case coe v0 of
      C_IsPartialEquivalence'46'constructor_169 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPartialEquivalence.trans
d_trans_24 ::
  T_IsPartialEquivalence_16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_24 v0
  = case coe v0 of
      C_IsPartialEquivalence'46'constructor_169 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsEquivalence
d_IsEquivalence_26 a0 a1 a2 a3 = ()
data T_IsEquivalence_26
  = C_IsEquivalence'46'constructor_519 (AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny ->
                                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Structures.IsEquivalence.refl
d_refl_34 :: T_IsEquivalence_26 -> AgdaAny -> AgdaAny
d_refl_34 v0
  = case coe v0 of
      C_IsEquivalence'46'constructor_519 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsEquivalence.sym
d_sym_36 ::
  T_IsEquivalence_26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_36 v0
  = case coe v0 of
      C_IsEquivalence'46'constructor_519 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsEquivalence.trans
d_trans_38 ::
  T_IsEquivalence_26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_38 v0
  = case coe v0 of
      C_IsEquivalence'46'constructor_519 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsEquivalence.reflexive
d_reflexive_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsEquivalence_26 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_40 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7
  = du_reflexive_40 v4 v5
du_reflexive_40 :: T_IsEquivalence_26 -> AgdaAny -> AgdaAny
du_reflexive_40 v0 v1 = coe d_refl_34 v0 v1
-- Relation.Binary.Structures.IsEquivalence.isPartialEquivalence
d_isPartialEquivalence_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsEquivalence_26 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_42 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_42 v4
du_isPartialEquivalence_42 ::
  T_IsEquivalence_26 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_42 v0
  = coe
      C_IsPartialEquivalence'46'constructor_169 (coe d_sym_36 (coe v0))
      (coe d_trans_38 (coe v0))
-- Relation.Binary.Structures.IsDecEquivalence
d_IsDecEquivalence_44 a0 a1 a2 a3 = ()
data T_IsDecEquivalence_44
  = C_IsDecEquivalence'46'constructor_1689 T_IsEquivalence_26
                                           (AgdaAny ->
                                            AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32)
-- Relation.Binary.Structures.IsDecEquivalence.isEquivalence
d_isEquivalence_50 :: T_IsDecEquivalence_44 -> T_IsEquivalence_26
d_isEquivalence_50 v0
  = case coe v0 of
      C_IsDecEquivalence'46'constructor_1689 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecEquivalence._≟_
d__'8799'__52 ::
  T_IsDecEquivalence_44 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__52 v0
  = case coe v0 of
      C_IsDecEquivalence'46'constructor_1689 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecEquivalence._.isPartialEquivalence
d_isPartialEquivalence_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecEquivalence_44 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_56 ~v0 ~v1 ~v2 ~v3 v4
  = du_isPartialEquivalence_56 v4
du_isPartialEquivalence_56 ::
  T_IsDecEquivalence_44 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_56 v0
  = coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v0))
-- Relation.Binary.Structures.IsDecEquivalence._.refl
d_refl_58 :: T_IsDecEquivalence_44 -> AgdaAny -> AgdaAny
d_refl_58 v0 = coe d_refl_34 (coe d_isEquivalence_50 (coe v0))
-- Relation.Binary.Structures.IsDecEquivalence._.reflexive
d_reflexive_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecEquivalence_44 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_60 ~v0 ~v1 ~v2 ~v3 v4 = du_reflexive_60 v4
du_reflexive_60 ::
  T_IsDecEquivalence_44 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_60 v0 v1 v2 v3
  = coe du_reflexive_40 (coe d_isEquivalence_50 (coe v0)) v1
-- Relation.Binary.Structures.IsDecEquivalence._.sym
d_sym_62 ::
  T_IsDecEquivalence_44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_62 v0 = coe d_sym_36 (coe d_isEquivalence_50 (coe v0))
-- Relation.Binary.Structures.IsDecEquivalence._.trans
d_trans_64 ::
  T_IsDecEquivalence_44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_64 v0 = coe d_trans_38 (coe d_isEquivalence_50 (coe v0))
-- Relation.Binary.Structures.IsPreorder
d_IsPreorder_70 a0 a1 a2 a3 a4 a5 = ()
data T_IsPreorder_70
  = C_IsPreorder'46'constructor_2409 T_IsEquivalence_26
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny ->
                                      AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Structures.IsPreorder.isEquivalence
d_isEquivalence_80 :: T_IsPreorder_70 -> T_IsEquivalence_26
d_isEquivalence_80 v0
  = case coe v0 of
      C_IsPreorder'46'constructor_2409 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPreorder.reflexive
d_reflexive_82 ::
  T_IsPreorder_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_82 v0
  = case coe v0 of
      C_IsPreorder'46'constructor_2409 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPreorder.trans
d_trans_84 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_84 v0
  = case coe v0 of
      C_IsPreorder'46'constructor_2409 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPreorder.Eq.isPartialEquivalence
d_isPartialEquivalence_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_88 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_88 v6
du_isPartialEquivalence_88 ::
  T_IsPreorder_70 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_88 v0
  = coe du_isPartialEquivalence_42 (coe d_isEquivalence_80 (coe v0))
-- Relation.Binary.Structures.IsPreorder.Eq.refl
d_refl_90 :: T_IsPreorder_70 -> AgdaAny -> AgdaAny
d_refl_90 v0 = coe d_refl_34 (coe d_isEquivalence_80 (coe v0))
-- Relation.Binary.Structures.IsPreorder.Eq.reflexive
d_reflexive_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_92 v6
du_reflexive_92 ::
  T_IsPreorder_70 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_92 v0 v1 v2 v3
  = coe du_reflexive_40 (coe d_isEquivalence_80 (coe v0)) v1
-- Relation.Binary.Structures.IsPreorder.Eq.sym
d_sym_94 ::
  T_IsPreorder_70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_94 v0 = coe d_sym_36 (coe d_isEquivalence_80 (coe v0))
-- Relation.Binary.Structures.IsPreorder.Eq.trans
d_trans_96 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_96 v0 = coe d_trans_38 (coe d_isEquivalence_80 (coe v0))
-- Relation.Binary.Structures.IsPreorder.refl
d_refl_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) -> T_IsPreorder_70 -> AgdaAny -> AgdaAny
d_refl_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_refl_98 v6 v7
du_refl_98 :: T_IsPreorder_70 -> AgdaAny -> AgdaAny
du_refl_98 v0 v1
  = coe
      d_reflexive_82 v0 v1 v1
      (coe d_refl_34 (d_isEquivalence_80 (coe v0)) v1)
-- Relation.Binary.Structures.IsPreorder.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                    v8 v9 v10 v11
  = du_'8764''45'resp'737''45''8776'_100 v6 v7 v8 v9 v10 v11
du_'8764''45'resp'737''45''8776'_100 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_100 v0 v1 v2 v3 v4 v5
  = coe
      d_trans_84 v0 v3 v2 v1
      (coe
         d_reflexive_82 v0 v3 v2
         (coe d_sym_36 (d_isEquivalence_80 (coe v0)) v2 v3 v4))
      v5
-- Relation.Binary.Structures.IsPreorder.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                    v8 v9 v10 v11
  = du_'8764''45'resp'691''45''8776'_106 v6 v7 v8 v9 v10 v11
du_'8764''45'resp'691''45''8776'_106 ::
  T_IsPreorder_70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_106 v0 v1 v2 v3 v4 v5
  = coe d_trans_84 v0 v1 v2 v3 v5 (coe d_reflexive_82 v0 v2 v3 v4)
-- Relation.Binary.Structures.IsPreorder.∼-resp-≈
d_'8764''45'resp'45''8776'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPreorder_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_112 v6
du_'8764''45'resp'45''8776'_112 ::
  T_IsPreorder_70 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_112 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8764''45'resp'691''45''8776'_106 (coe v0))
      (coe du_'8764''45'resp'737''45''8776'_100 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder
d_IsTotalPreorder_118 a0 a1 a2 a3 a4 a5 = ()
data T_IsTotalPreorder_118
  = C_IsTotalPreorder'46'constructor_5447 T_IsPreorder_70
                                          (AgdaAny ->
                                           AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Relation.Binary.Structures.IsTotalPreorder.isPreorder
d_isPreorder_126 :: T_IsTotalPreorder_118 -> T_IsPreorder_70
d_isPreorder_126 v0
  = case coe v0 of
      C_IsTotalPreorder'46'constructor_5447 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsTotalPreorder.total
d_total_128 ::
  T_IsTotalPreorder_118 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_128 v0
  = case coe v0 of
      C_IsTotalPreorder'46'constructor_5447 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsTotalPreorder._.isEquivalence
d_isEquivalence_132 :: T_IsTotalPreorder_118 -> T_IsEquivalence_26
d_isEquivalence_132 v0
  = coe d_isEquivalence_80 (coe d_isPreorder_126 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.refl
d_refl_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_118 -> AgdaAny -> AgdaAny
d_refl_134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_134 v6
du_refl_134 :: T_IsTotalPreorder_118 -> AgdaAny -> AgdaAny
du_refl_134 v0 = coe du_refl_98 (coe d_isPreorder_126 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.reflexive
d_reflexive_136 ::
  T_IsTotalPreorder_118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_136 v0
  = coe d_reflexive_82 (coe d_isPreorder_126 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.trans
d_trans_138 ::
  T_IsTotalPreorder_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_138 v0 = coe d_trans_84 (coe d_isPreorder_126 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.∼-resp-≈
d_'8764''45'resp'45''8776'_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_118 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_140 v6
du_'8764''45'resp'45''8776'_140 ::
  T_IsTotalPreorder_118 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_140 v0
  = coe
      du_'8764''45'resp'45''8776'_112 (coe d_isPreorder_126 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_142 v6
du_'8764''45'resp'691''45''8776'_142 ::
  T_IsTotalPreorder_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_142 v0
  = coe
      du_'8764''45'resp'691''45''8776'_106
      (coe d_isPreorder_126 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_144 v6
du_'8764''45'resp'737''45''8776'_144 ::
  T_IsTotalPreorder_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_144 v0
  = coe
      du_'8764''45'resp'737''45''8776'_100
      (coe d_isPreorder_126 (coe v0))
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.isPartialEquivalence
d_isPartialEquivalence_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_118 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_148 v6
du_isPartialEquivalence_148 ::
  T_IsTotalPreorder_118 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_148 v0
  = let v1 = d_isPreorder_126 (coe v0) in
    coe du_isPartialEquivalence_42 (coe d_isEquivalence_80 (coe v1))
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.refl
d_refl_150 :: T_IsTotalPreorder_118 -> AgdaAny -> AgdaAny
d_refl_150 v0
  = coe
      d_refl_34 (coe d_isEquivalence_80 (coe d_isPreorder_126 (coe v0)))
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.reflexive
d_reflexive_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalPreorder_118 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_152 v6
du_reflexive_152 ::
  T_IsTotalPreorder_118 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_152 v0
  = let v1 = d_isPreorder_126 (coe v0) in
    \ v2 v3 v4 ->
      coe du_reflexive_40 (coe d_isEquivalence_80 (coe v1)) v2
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.sym
d_sym_154 ::
  T_IsTotalPreorder_118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_154 v0
  = coe
      d_sym_36 (coe d_isEquivalence_80 (coe d_isPreorder_126 (coe v0)))
-- Relation.Binary.Structures.IsTotalPreorder._.Eq.trans
d_trans_156 ::
  T_IsTotalPreorder_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_156 v0
  = coe
      d_trans_38 (coe d_isEquivalence_80 (coe d_isPreorder_126 (coe v0)))
-- Relation.Binary.Structures.IsPartialOrder
d_IsPartialOrder_162 a0 a1 a2 a3 a4 a5 = ()
data T_IsPartialOrder_162
  = C_IsPartialOrder'46'constructor_6659 T_IsPreorder_70
                                         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Structures.IsPartialOrder.isPreorder
d_isPreorder_170 :: T_IsPartialOrder_162 -> T_IsPreorder_70
d_isPreorder_170 v0
  = case coe v0 of
      C_IsPartialOrder'46'constructor_6659 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPartialOrder.antisym
d_antisym_172 ::
  T_IsPartialOrder_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_172 v0
  = case coe v0 of
      C_IsPartialOrder'46'constructor_6659 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsPartialOrder._.isEquivalence
d_isEquivalence_176 :: T_IsPartialOrder_162 -> T_IsEquivalence_26
d_isEquivalence_176 v0
  = coe d_isEquivalence_80 (coe d_isPreorder_170 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.refl
d_refl_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_162 -> AgdaAny -> AgdaAny
d_refl_178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_178 v6
du_refl_178 :: T_IsPartialOrder_162 -> AgdaAny -> AgdaAny
du_refl_178 v0 = coe du_refl_98 (coe d_isPreorder_170 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.reflexive
d_reflexive_180 ::
  T_IsPartialOrder_162 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_180 v0
  = coe d_reflexive_82 (coe d_isPreorder_170 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.trans
d_trans_182 ::
  T_IsPartialOrder_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_182 v0 = coe d_trans_84 (coe d_isPreorder_170 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_162 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_184 v6
du_'8764''45'resp'45''8776'_184 ::
  T_IsPartialOrder_162 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_184 v0
  = coe
      du_'8764''45'resp'45''8776'_112 (coe d_isPreorder_170 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_186 v6
du_'8764''45'resp'691''45''8776'_186 ::
  T_IsPartialOrder_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_186 v0
  = coe
      du_'8764''45'resp'691''45''8776'_106
      (coe d_isPreorder_170 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_188 v6
du_'8764''45'resp'737''45''8776'_188 ::
  T_IsPartialOrder_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_188 v0
  = coe
      du_'8764''45'resp'737''45''8776'_100
      (coe d_isPreorder_170 (coe v0))
-- Relation.Binary.Structures.IsPartialOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_162 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_192 v6
du_isPartialEquivalence_192 ::
  T_IsPartialOrder_162 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_192 v0
  = let v1 = d_isPreorder_170 (coe v0) in
    coe du_isPartialEquivalence_42 (coe d_isEquivalence_80 (coe v1))
-- Relation.Binary.Structures.IsPartialOrder._.Eq.refl
d_refl_194 :: T_IsPartialOrder_162 -> AgdaAny -> AgdaAny
d_refl_194 v0
  = coe
      d_refl_34 (coe d_isEquivalence_80 (coe d_isPreorder_170 (coe v0)))
-- Relation.Binary.Structures.IsPartialOrder._.Eq.reflexive
d_reflexive_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsPartialOrder_162 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_196 v6
du_reflexive_196 ::
  T_IsPartialOrder_162 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_196 v0
  = let v1 = d_isPreorder_170 (coe v0) in
    \ v2 v3 v4 ->
      coe du_reflexive_40 (coe d_isEquivalence_80 (coe v1)) v2
-- Relation.Binary.Structures.IsPartialOrder._.Eq.sym
d_sym_198 ::
  T_IsPartialOrder_162 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_198 v0
  = coe
      d_sym_36 (coe d_isEquivalence_80 (coe d_isPreorder_170 (coe v0)))
-- Relation.Binary.Structures.IsPartialOrder._.Eq.trans
d_trans_200 ::
  T_IsPartialOrder_162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_200 v0
  = coe
      d_trans_38 (coe d_isEquivalence_80 (coe d_isPreorder_170 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder
d_IsDecPartialOrder_206 a0 a1 a2 a3 a4 a5 = ()
data T_IsDecPartialOrder_206
  = C_IsDecPartialOrder'46'constructor_8061 T_IsPartialOrder_162
                                            (AgdaAny ->
                                             AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32)
                                            (AgdaAny ->
                                             AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32)
-- Relation.Binary.Structures.IsDecPartialOrder.isPartialOrder
d_isPartialOrder_216 ::
  T_IsDecPartialOrder_206 -> T_IsPartialOrder_162
d_isPartialOrder_216 v0
  = case coe v0 of
      C_IsDecPartialOrder'46'constructor_8061 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPartialOrder._≟_
d__'8799'__218 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__218 v0
  = case coe v0 of
      C_IsDecPartialOrder'46'constructor_8061 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPartialOrder._≤?_
d__'8804''63'__220 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''63'__220 v0
  = case coe v0 of
      C_IsDecPartialOrder'46'constructor_8061 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecPartialOrder._.antisym
d_antisym_224 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_224 v0
  = coe d_antisym_172 (coe d_isPartialOrder_216 (coe v0))
-- Relation.Binary.Structures.IsDecPartialOrder._.isEquivalence
d_isEquivalence_226 ::
  T_IsDecPartialOrder_206 -> T_IsEquivalence_26
d_isEquivalence_226 v0
  = coe
      d_isEquivalence_80
      (coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder._.isPreorder
d_isPreorder_228 :: T_IsDecPartialOrder_206 -> T_IsPreorder_70
d_isPreorder_228 v0
  = coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0))
-- Relation.Binary.Structures.IsDecPartialOrder._.refl
d_refl_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 -> AgdaAny -> AgdaAny
d_refl_230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_230 v6
du_refl_230 :: T_IsDecPartialOrder_206 -> AgdaAny -> AgdaAny
du_refl_230 v0
  = let v1 = d_isPartialOrder_216 (coe v0) in
    coe du_refl_98 (coe d_isPreorder_170 (coe v1))
-- Relation.Binary.Structures.IsDecPartialOrder._.reflexive
d_reflexive_232 ::
  T_IsDecPartialOrder_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_232 v0
  = coe
      d_reflexive_82
      (coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder._.trans
d_trans_234 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_234 v0
  = coe
      d_trans_84
      (coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_236 v6
du_'8764''45'resp'45''8776'_236 ::
  T_IsDecPartialOrder_206 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_236 v0
  = let v1 = d_isPartialOrder_216 (coe v0) in
    coe du_'8764''45'resp'45''8776'_112 (coe d_isPreorder_170 (coe v1))
-- Relation.Binary.Structures.IsDecPartialOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_238 v6
du_'8764''45'resp'691''45''8776'_238 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_238 v0
  = let v1 = d_isPartialOrder_216 (coe v0) in
    coe
      du_'8764''45'resp'691''45''8776'_106
      (coe d_isPreorder_170 (coe v1))
-- Relation.Binary.Structures.IsDecPartialOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_240 v6
du_'8764''45'resp'737''45''8776'_240 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_240 v0
  = let v1 = d_isPartialOrder_216 (coe v0) in
    coe
      du_'8764''45'resp'737''45''8776'_100
      (coe d_isPreorder_170 (coe v1))
-- Relation.Binary.Structures.IsDecPartialOrder.Eq.isDecEquivalence
d_isDecEquivalence_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 -> T_IsDecEquivalence_44
d_isDecEquivalence_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_244 v6
du_isDecEquivalence_244 ::
  T_IsDecPartialOrder_206 -> T_IsDecEquivalence_44
du_isDecEquivalence_244 v0
  = coe
      C_IsDecEquivalence'46'constructor_1689
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0))))
      (coe d__'8799'__218 (coe v0))
-- Relation.Binary.Structures.IsDecPartialOrder.Eq._._≟_
d__'8799'__248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__248 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__248 v6
du__'8799'__248 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8799'__248 v0 = coe d__'8799'__218 (coe v0)
-- Relation.Binary.Structures.IsDecPartialOrder.Eq._.isEquivalence
d_isEquivalence_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 -> T_IsEquivalence_26
d_isEquivalence_250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_250 v6
du_isEquivalence_250 ::
  T_IsDecPartialOrder_206 -> T_IsEquivalence_26
du_isEquivalence_250 v0
  = coe
      d_isEquivalence_80
      (coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0)))
-- Relation.Binary.Structures.IsDecPartialOrder.Eq._.isPartialEquivalence
d_isPartialEquivalence_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_252 v6
du_isPartialEquivalence_252 ::
  T_IsDecPartialOrder_206 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_252 v0
  = let v1 = coe du_isDecEquivalence_244 (coe v0) in
    coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v1))
-- Relation.Binary.Structures.IsDecPartialOrder.Eq._.refl
d_refl_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 -> AgdaAny -> AgdaAny
d_refl_254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_254 v6
du_refl_254 :: T_IsDecPartialOrder_206 -> AgdaAny -> AgdaAny
du_refl_254 v0
  = coe
      d_refl_34
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0))))
-- Relation.Binary.Structures.IsDecPartialOrder.Eq._.reflexive
d_reflexive_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_256 v6
du_reflexive_256 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_256 v0
  = let v1 = coe du_isDecEquivalence_244 (coe v0) in
    \ v2 v3 v4 ->
      coe du_reflexive_40 (coe d_isEquivalence_50 (coe v1)) v2
-- Relation.Binary.Structures.IsDecPartialOrder.Eq._.sym
d_sym_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_258 v6
du_sym_258 ::
  T_IsDecPartialOrder_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_258 v0
  = coe
      d_sym_36
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0))))
-- Relation.Binary.Structures.IsDecPartialOrder.Eq._.trans
d_trans_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_260 v6
du_trans_260 ::
  T_IsDecPartialOrder_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_260 v0
  = coe
      d_trans_38
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_170 (coe d_isPartialOrder_216 (coe v0))))
-- Relation.Binary.Structures.IsStrictPartialOrder
d_IsStrictPartialOrder_266 a0 a1 a2 a3 a4 a5 = ()
data T_IsStrictPartialOrder_266
  = C_IsStrictPartialOrder'46'constructor_9921 T_IsEquivalence_26
                                               (AgdaAny ->
                                                AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Relation.Binary.Structures.IsStrictPartialOrder.isEquivalence
d_isEquivalence_278 ::
  T_IsStrictPartialOrder_266 -> T_IsEquivalence_26
d_isEquivalence_278 v0
  = case coe v0 of
      C_IsStrictPartialOrder'46'constructor_9921 v1 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictPartialOrder.irrefl
d_irrefl_280 ::
  T_IsStrictPartialOrder_266 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_irrefl_280 = erased
-- Relation.Binary.Structures.IsStrictPartialOrder.trans
d_trans_282 ::
  T_IsStrictPartialOrder_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_282 v0
  = case coe v0 of
      C_IsStrictPartialOrder'46'constructor_9921 v1 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictPartialOrder.<-resp-≈
d_'60''45'resp'45''8776'_284 ::
  T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_284 v0
  = case coe v0 of
      C_IsStrictPartialOrder'46'constructor_9921 v1 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.isPartialEquivalence
d_isPartialEquivalence_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_266 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_288 v6
du_isPartialEquivalence_288 ::
  T_IsStrictPartialOrder_266 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_288 v0
  = coe du_isPartialEquivalence_42 (coe d_isEquivalence_278 (coe v0))
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.refl
d_refl_290 :: T_IsStrictPartialOrder_266 -> AgdaAny -> AgdaAny
d_refl_290 v0 = coe d_refl_34 (coe d_isEquivalence_278 (coe v0))
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.reflexive
d_reflexive_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_266 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_292 v6
du_reflexive_292 ::
  T_IsStrictPartialOrder_266 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_292 v0 v1 v2 v3
  = coe du_reflexive_40 (coe d_isEquivalence_278 (coe v0)) v1
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.sym
d_sym_294 ::
  T_IsStrictPartialOrder_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_294 v0 = coe d_sym_36 (coe d_isEquivalence_278 (coe v0))
-- Relation.Binary.Structures.IsStrictPartialOrder.Eq.trans
d_trans_296 ::
  T_IsStrictPartialOrder_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_296 v0 = coe d_trans_38 (coe d_isEquivalence_278 (coe v0))
-- Relation.Binary.Structures.IsStrictPartialOrder.asym
d_asym_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_266 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_asym_298 = erased
-- Relation.Binary.Structures.IsStrictPartialOrder.<-respʳ-≈
d_'60''45'resp'691''45''8776'_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9
  = du_'60''45'resp'691''45''8776'_304 v6 v7 v8 v9
du_'60''45'resp'691''45''8776'_304 ::
  T_IsStrictPartialOrder_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_304 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (d_'60''45'resp'45''8776'_284 (coe v0)) v1 v2 v3
-- Relation.Binary.Structures.IsStrictPartialOrder.<-respˡ-≈
d_'60''45'resp'737''45''8776'_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
                                  v9
  = du_'60''45'resp'737''45''8776'_306 v6 v7 v8 v9
du_'60''45'resp'737''45''8776'_306 ::
  T_IsStrictPartialOrder_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_306 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (d_'60''45'resp'45''8776'_284 (coe v0)) v1 v2 v3
-- Relation.Binary.Structures.IsStrictPartialOrder.asymmetric
d_asymmetric_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictPartialOrder_266 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_asymmetric_308 = erased
-- Relation.Binary.Structures.IsDecStrictPartialOrder
d_IsDecStrictPartialOrder_314 a0 a1 a2 a3 a4 a5 = ()
data T_IsDecStrictPartialOrder_314
  = C_IsDecStrictPartialOrder'46'constructor_13593 T_IsStrictPartialOrder_266
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    MAlonzo.Code.Relation.Nullary.T_Dec_32)
                                                   (AgdaAny ->
                                                    AgdaAny ->
                                                    MAlonzo.Code.Relation.Nullary.T_Dec_32)
-- Relation.Binary.Structures.IsDecStrictPartialOrder.isStrictPartialOrder
d_isStrictPartialOrder_324 ::
  T_IsDecStrictPartialOrder_314 -> T_IsStrictPartialOrder_266
d_isStrictPartialOrder_324 v0
  = case coe v0 of
      C_IsDecStrictPartialOrder'46'constructor_13593 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecStrictPartialOrder._≟_
d__'8799'__326 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__326 v0
  = case coe v0 of
      C_IsDecStrictPartialOrder'46'constructor_13593 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecStrictPartialOrder._<?_
d__'60''63'__328 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'60''63'__328 v0
  = case coe v0 of
      C_IsDecStrictPartialOrder'46'constructor_13593 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-resp-≈
d_'60''45'resp'45''8776'_332 ::
  T_IsDecStrictPartialOrder_314 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_332 v0
  = coe
      d_'60''45'resp'45''8776'_284
      (coe d_isStrictPartialOrder_324 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-respʳ-≈
d_'60''45'resp'691''45''8776'_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'691''45''8776'_334 v6
du_'60''45'resp'691''45''8776'_334 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_334 v0
  = coe
      du_'60''45'resp'691''45''8776'_304
      (coe d_isStrictPartialOrder_324 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-respˡ-≈
d_'60''45'resp'737''45''8776'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_336 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'737''45''8776'_336 v6
du_'60''45'resp'737''45''8776'_336 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_336 v0
  = coe
      du_'60''45'resp'737''45''8776'_306
      (coe d_isStrictPartialOrder_324 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.asym
d_asym_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_asym_338 = erased
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.asymmetric
d_asymmetric_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_asymmetric_340 = erased
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.irrefl
d_irrefl_342 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_irrefl_342 = erased
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.isEquivalence
d_isEquivalence_344 ::
  T_IsDecStrictPartialOrder_314 -> T_IsEquivalence_26
d_isEquivalence_344 v0
  = coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.trans
d_trans_346 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_346 v0
  = coe d_trans_282 (coe d_isStrictPartialOrder_324 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.isPartialEquivalence
d_isPartialEquivalence_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_350 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_350 v6
du_isPartialEquivalence_350 ::
  T_IsDecStrictPartialOrder_314 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_350 v0
  = let v1 = d_isStrictPartialOrder_324 (coe v0) in
    coe du_isPartialEquivalence_42 (coe d_isEquivalence_278 (coe v1))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.refl
d_refl_352 :: T_IsDecStrictPartialOrder_314 -> AgdaAny -> AgdaAny
d_refl_352 v0
  = coe
      d_refl_34
      (coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.reflexive
d_reflexive_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_354 v6
du_reflexive_354 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_354 v0
  = let v1 = d_isStrictPartialOrder_324 (coe v0) in
    \ v2 v3 v4 ->
      coe du_reflexive_40 (coe d_isEquivalence_278 (coe v1)) v2
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.sym
d_sym_356 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_356 v0
  = coe
      d_sym_36
      (coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.trans
d_trans_358 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_358 v0
  = coe
      d_trans_38
      (coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq.isDecEquivalence
d_isDecEquivalence_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 -> T_IsDecEquivalence_44
d_isDecEquivalence_362 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_362 v6
du_isDecEquivalence_362 ::
  T_IsDecStrictPartialOrder_314 -> T_IsDecEquivalence_44
du_isDecEquivalence_362 v0
  = coe
      C_IsDecEquivalence'46'constructor_1689
      (coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0)))
      (coe d__'8799'__326 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._._≟_
d__'8799'__366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__366 v6
du__'8799'__366 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8799'__366 v0 = coe d__'8799'__326 (coe v0)
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.isEquivalence
d_isEquivalence_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 -> T_IsEquivalence_26
d_isEquivalence_368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_368 v6
du_isEquivalence_368 ::
  T_IsDecStrictPartialOrder_314 -> T_IsEquivalence_26
du_isEquivalence_368 v0
  = coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.isPartialEquivalence
d_isPartialEquivalence_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_370 v6
du_isPartialEquivalence_370 ::
  T_IsDecStrictPartialOrder_314 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_370 v0
  = let v1 = coe du_isDecEquivalence_362 (coe v0) in
    coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v1))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.refl
d_refl_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 -> AgdaAny -> AgdaAny
d_refl_372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_372 v6
du_refl_372 :: T_IsDecStrictPartialOrder_314 -> AgdaAny -> AgdaAny
du_refl_372 v0
  = coe
      d_refl_34
      (coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.reflexive
d_reflexive_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_374 v6
du_reflexive_374 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_374 v0
  = let v1 = coe du_isDecEquivalence_362 (coe v0) in
    \ v2 v3 v4 ->
      coe du_reflexive_40 (coe d_isEquivalence_50 (coe v1)) v2
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.sym
d_sym_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_376 v6
du_sym_376 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_376 v0
  = coe
      d_sym_36
      (coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0)))
-- Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.trans
d_trans_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_378 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_378 v6
du_trans_378 ::
  T_IsDecStrictPartialOrder_314 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_378 v0
  = coe
      d_trans_38
      (coe d_isEquivalence_278 (coe d_isStrictPartialOrder_324 (coe v0)))
-- Relation.Binary.Structures.IsTotalOrder
d_IsTotalOrder_384 a0 a1 a2 a3 a4 a5 = ()
data T_IsTotalOrder_384
  = C_IsTotalOrder'46'constructor_15387 T_IsPartialOrder_162
                                        (AgdaAny ->
                                         AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Relation.Binary.Structures.IsTotalOrder.isPartialOrder
d_isPartialOrder_392 :: T_IsTotalOrder_384 -> T_IsPartialOrder_162
d_isPartialOrder_392 v0
  = case coe v0 of
      C_IsTotalOrder'46'constructor_15387 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsTotalOrder.total
d_total_394 ::
  T_IsTotalOrder_384 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_394 v0
  = case coe v0 of
      C_IsTotalOrder'46'constructor_15387 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsTotalOrder._.antisym
d_antisym_398 ::
  T_IsTotalOrder_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_398 v0
  = coe d_antisym_172 (coe d_isPartialOrder_392 (coe v0))
-- Relation.Binary.Structures.IsTotalOrder._.isEquivalence
d_isEquivalence_400 :: T_IsTotalOrder_384 -> T_IsEquivalence_26
d_isEquivalence_400 v0
  = coe
      d_isEquivalence_80
      (coe d_isPreorder_170 (coe d_isPartialOrder_392 (coe v0)))
-- Relation.Binary.Structures.IsTotalOrder._.isPreorder
d_isPreorder_402 :: T_IsTotalOrder_384 -> T_IsPreorder_70
d_isPreorder_402 v0
  = coe d_isPreorder_170 (coe d_isPartialOrder_392 (coe v0))
-- Relation.Binary.Structures.IsTotalOrder._.refl
d_refl_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_384 -> AgdaAny -> AgdaAny
d_refl_404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_404 v6
du_refl_404 :: T_IsTotalOrder_384 -> AgdaAny -> AgdaAny
du_refl_404 v0
  = let v1 = d_isPartialOrder_392 (coe v0) in
    coe du_refl_98 (coe d_isPreorder_170 (coe v1))
-- Relation.Binary.Structures.IsTotalOrder._.reflexive
d_reflexive_406 ::
  T_IsTotalOrder_384 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_406 v0
  = coe
      d_reflexive_82
      (coe d_isPreorder_170 (coe d_isPartialOrder_392 (coe v0)))
-- Relation.Binary.Structures.IsTotalOrder._.trans
d_trans_408 ::
  T_IsTotalOrder_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_408 v0
  = coe
      d_trans_84
      (coe d_isPreorder_170 (coe d_isPartialOrder_392 (coe v0)))
-- Relation.Binary.Structures.IsTotalOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_384 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_410 v6
du_'8764''45'resp'45''8776'_410 ::
  T_IsTotalOrder_384 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_410 v0
  = let v1 = d_isPartialOrder_392 (coe v0) in
    coe du_'8764''45'resp'45''8776'_112 (coe d_isPreorder_170 (coe v1))
-- Relation.Binary.Structures.IsTotalOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_412 v6
du_'8764''45'resp'691''45''8776'_412 ::
  T_IsTotalOrder_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_412 v0
  = let v1 = d_isPartialOrder_392 (coe v0) in
    coe
      du_'8764''45'resp'691''45''8776'_106
      (coe d_isPreorder_170 (coe v1))
-- Relation.Binary.Structures.IsTotalOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_414 v6
du_'8764''45'resp'737''45''8776'_414 ::
  T_IsTotalOrder_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_414 v0
  = let v1 = d_isPartialOrder_392 (coe v0) in
    coe
      du_'8764''45'resp'737''45''8776'_100
      (coe d_isPreorder_170 (coe v1))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_384 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_418 v6
du_isPartialEquivalence_418 ::
  T_IsTotalOrder_384 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_418 v0
  = let v1 = d_isPartialOrder_392 (coe v0) in
    let v2 = d_isPreorder_170 (coe v1) in
    coe du_isPartialEquivalence_42 (coe d_isEquivalence_80 (coe v2))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.refl
d_refl_420 :: T_IsTotalOrder_384 -> AgdaAny -> AgdaAny
d_refl_420 v0
  = coe
      d_refl_34
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_170 (coe d_isPartialOrder_392 (coe v0))))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.reflexive
d_reflexive_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_422 v6
du_reflexive_422 ::
  T_IsTotalOrder_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_422 v0
  = let v1 = d_isPartialOrder_392 (coe v0) in
    let v2 = d_isPreorder_170 (coe v1) in
    \ v3 v4 v5 ->
      coe du_reflexive_40 (coe d_isEquivalence_80 (coe v2)) v3
-- Relation.Binary.Structures.IsTotalOrder._.Eq.sym
d_sym_424 ::
  T_IsTotalOrder_384 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_424 v0
  = coe
      d_sym_36
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_170 (coe d_isPartialOrder_392 (coe v0))))
-- Relation.Binary.Structures.IsTotalOrder._.Eq.trans
d_trans_426 ::
  T_IsTotalOrder_384 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_426 v0
  = coe
      d_trans_38
      (coe
         d_isEquivalence_80
         (coe d_isPreorder_170 (coe d_isPartialOrder_392 (coe v0))))
-- Relation.Binary.Structures.IsTotalOrder.isTotalPreorder
d_isTotalPreorder_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsTotalOrder_384 -> T_IsTotalPreorder_118
d_isTotalPreorder_428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isTotalPreorder_428 v6
du_isTotalPreorder_428 ::
  T_IsTotalOrder_384 -> T_IsTotalPreorder_118
du_isTotalPreorder_428 v0
  = coe
      C_IsTotalPreorder'46'constructor_5447
      (coe d_isPreorder_170 (coe d_isPartialOrder_392 (coe v0)))
      (coe d_total_394 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder
d_IsDecTotalOrder_434 a0 a1 a2 a3 a4 a5 = ()
data T_IsDecTotalOrder_434
  = C_IsDecTotalOrder'46'constructor_17071 T_IsTotalOrder_384
                                           (AgdaAny ->
                                            AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32)
                                           (AgdaAny ->
                                            AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32)
-- Relation.Binary.Structures.IsDecTotalOrder.isTotalOrder
d_isTotalOrder_444 :: T_IsDecTotalOrder_434 -> T_IsTotalOrder_384
d_isTotalOrder_444 v0
  = case coe v0 of
      C_IsDecTotalOrder'46'constructor_17071 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecTotalOrder._≟_
d__'8799'__446 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__446 v0
  = case coe v0 of
      C_IsDecTotalOrder'46'constructor_17071 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecTotalOrder._≤?_
d__'8804''63'__448 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''63'__448 v0
  = case coe v0 of
      C_IsDecTotalOrder'46'constructor_17071 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsDecTotalOrder._.antisym
d_antisym_452 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_452 v0
  = coe
      d_antisym_172
      (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0)))
-- Relation.Binary.Structures.IsDecTotalOrder._.isEquivalence
d_isEquivalence_454 :: T_IsDecTotalOrder_434 -> T_IsEquivalence_26
d_isEquivalence_454 v0
  = coe
      d_isEquivalence_80
      (coe
         d_isPreorder_170
         (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0))))
-- Relation.Binary.Structures.IsDecTotalOrder._.isPartialOrder
d_isPartialOrder_456 ::
  T_IsDecTotalOrder_434 -> T_IsPartialOrder_162
d_isPartialOrder_456 v0
  = coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder._.isPreorder
d_isPreorder_458 :: T_IsDecTotalOrder_434 -> T_IsPreorder_70
d_isPreorder_458 v0
  = coe
      d_isPreorder_170
      (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0)))
-- Relation.Binary.Structures.IsDecTotalOrder._.isTotalPreorder
d_isTotalPreorder_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> T_IsTotalPreorder_118
d_isTotalPreorder_460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isTotalPreorder_460 v6
du_isTotalPreorder_460 ::
  T_IsDecTotalOrder_434 -> T_IsTotalPreorder_118
du_isTotalPreorder_460 v0
  = coe du_isTotalPreorder_428 (coe d_isTotalOrder_444 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder._.refl
d_refl_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> AgdaAny -> AgdaAny
d_refl_462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_462 v6
du_refl_462 :: T_IsDecTotalOrder_434 -> AgdaAny -> AgdaAny
du_refl_462 v0
  = let v1 = d_isTotalOrder_444 (coe v0) in
    let v2 = d_isPartialOrder_392 (coe v1) in
    coe du_refl_98 (coe d_isPreorder_170 (coe v2))
-- Relation.Binary.Structures.IsDecTotalOrder._.reflexive
d_reflexive_464 ::
  T_IsDecTotalOrder_434 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_464 v0
  = coe
      d_reflexive_82
      (coe
         d_isPreorder_170
         (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0))))
-- Relation.Binary.Structures.IsDecTotalOrder._.total
d_total_466 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_466 v0 = coe d_total_394 (coe d_isTotalOrder_444 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder._.trans
d_trans_468 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_468 v0
  = coe
      d_trans_84
      (coe
         d_isPreorder_170
         (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0))))
-- Relation.Binary.Structures.IsDecTotalOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'45''8776'_470 v6
du_'8764''45'resp'45''8776'_470 ::
  T_IsDecTotalOrder_434 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_470 v0
  = let v1 = d_isTotalOrder_444 (coe v0) in
    let v2 = d_isPartialOrder_392 (coe v1) in
    coe du_'8764''45'resp'45''8776'_112 (coe d_isPreorder_170 (coe v2))
-- Relation.Binary.Structures.IsDecTotalOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'691''45''8776'_472 v6
du_'8764''45'resp'691''45''8776'_472 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_472 v0
  = let v1 = d_isTotalOrder_444 (coe v0) in
    let v2 = d_isPartialOrder_392 (coe v1) in
    coe
      du_'8764''45'resp'691''45''8776'_106
      (coe d_isPreorder_170 (coe v2))
-- Relation.Binary.Structures.IsDecTotalOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_474 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8764''45'resp'737''45''8776'_474 v6
du_'8764''45'resp'737''45''8776'_474 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_474 v0
  = let v1 = d_isTotalOrder_444 (coe v0) in
    let v2 = d_isPartialOrder_392 (coe v1) in
    coe
      du_'8764''45'resp'737''45''8776'_100
      (coe d_isPreorder_170 (coe v2))
-- Relation.Binary.Structures.IsDecTotalOrder.isDecPartialOrder
d_isDecPartialOrder_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> T_IsDecPartialOrder_206
d_isDecPartialOrder_476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecPartialOrder_476 v6
du_isDecPartialOrder_476 ::
  T_IsDecTotalOrder_434 -> T_IsDecPartialOrder_206
du_isDecPartialOrder_476 v0
  = coe
      C_IsDecPartialOrder'46'constructor_8061
      (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0)))
      (coe d__'8799'__446 (coe v0)) (coe d__'8804''63'__448 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder.Eq.isDecEquivalence
d_isDecEquivalence_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> T_IsDecEquivalence_44
d_isDecEquivalence_480 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_480 v6
du_isDecEquivalence_480 ::
  T_IsDecTotalOrder_434 -> T_IsDecEquivalence_44
du_isDecEquivalence_480 v0
  = coe
      C_IsDecEquivalence'46'constructor_1689
      (coe
         d_isEquivalence_80
         (coe
            d_isPreorder_170
            (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0)))))
      (coe d__'8799'__446 (coe v0))
-- Relation.Binary.Structures.IsDecTotalOrder.Eq._._≟_
d__'8799'__484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__484 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__484 v6
du__'8799'__484 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8799'__484 v0 = coe d__'8799'__446 (coe v0)
-- Relation.Binary.Structures.IsDecTotalOrder.Eq._.isEquivalence
d_isEquivalence_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> T_IsEquivalence_26
d_isEquivalence_486 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_486 v6
du_isEquivalence_486 :: T_IsDecTotalOrder_434 -> T_IsEquivalence_26
du_isEquivalence_486 v0
  = coe
      d_isEquivalence_80
      (coe
         d_isPreorder_170
         (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0))))
-- Relation.Binary.Structures.IsDecTotalOrder.Eq._.isPartialEquivalence
d_isPartialEquivalence_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_488 v6
du_isPartialEquivalence_488 ::
  T_IsDecTotalOrder_434 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_488 v0
  = let v1 = coe du_isDecEquivalence_480 (coe v0) in
    coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v1))
-- Relation.Binary.Structures.IsDecTotalOrder.Eq._.refl
d_refl_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> AgdaAny -> AgdaAny
d_refl_490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_490 v6
du_refl_490 :: T_IsDecTotalOrder_434 -> AgdaAny -> AgdaAny
du_refl_490 v0
  = coe
      d_refl_34
      (coe
         d_isEquivalence_80
         (coe
            d_isPreorder_170
            (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0)))))
-- Relation.Binary.Structures.IsDecTotalOrder.Eq._.reflexive
d_reflexive_492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_492 v6
du_reflexive_492 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_492 v0
  = let v1 = coe du_isDecEquivalence_480 (coe v0) in
    \ v2 v3 v4 ->
      coe du_reflexive_40 (coe d_isEquivalence_50 (coe v1)) v2
-- Relation.Binary.Structures.IsDecTotalOrder.Eq._.sym
d_sym_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_494 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_494 v6
du_sym_494 ::
  T_IsDecTotalOrder_434 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_494 v0
  = coe
      d_sym_36
      (coe
         d_isEquivalence_80
         (coe
            d_isPreorder_170
            (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0)))))
-- Relation.Binary.Structures.IsDecTotalOrder.Eq._.trans
d_trans_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_496 v6
du_trans_496 ::
  T_IsDecTotalOrder_434 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_496 v0
  = coe
      d_trans_38
      (coe
         d_isEquivalence_80
         (coe
            d_isPreorder_170
            (coe d_isPartialOrder_392 (coe d_isTotalOrder_444 (coe v0)))))
-- Relation.Binary.Structures.IsStrictTotalOrder
d_IsStrictTotalOrder_502 a0 a1 a2 a3 a4 a5 = ()
data T_IsStrictTotalOrder_502
  = C_IsStrictTotalOrder'46'constructor_19043 T_IsEquivalence_26
                                              (AgdaAny ->
                                               AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136)
-- Relation.Binary.Structures.IsStrictTotalOrder.isEquivalence
d_isEquivalence_512 ::
  T_IsStrictTotalOrder_502 -> T_IsEquivalence_26
d_isEquivalence_512 v0
  = case coe v0 of
      C_IsStrictTotalOrder'46'constructor_19043 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictTotalOrder.trans
d_trans_514 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_514 v0
  = case coe v0 of
      C_IsStrictTotalOrder'46'constructor_19043 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictTotalOrder.compare
d_compare_516 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_compare_516 v0
  = case coe v0 of
      C_IsStrictTotalOrder'46'constructor_19043 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Structures.IsStrictTotalOrder._≟_
d__'8799'__518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__518 v6
du__'8799'__518 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8799'__518 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_tri'8658'dec'8776'_426
      (coe d_compare_516 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._<?_
d__'60''63'__520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'60''63'__520 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'60''63'__520 v6
du__'60''63'__520 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'60''63'__520 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_tri'8658'dec'60'_462
      (coe d_compare_516 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.isDecEquivalence
d_isDecEquivalence_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 -> T_IsDecEquivalence_44
d_isDecEquivalence_522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecEquivalence_522 v6
du_isDecEquivalence_522 ::
  T_IsStrictTotalOrder_502 -> T_IsDecEquivalence_44
du_isDecEquivalence_522 v0
  = coe
      C_IsDecEquivalence'46'constructor_1689
      (coe d_isEquivalence_512 (coe v0)) (coe du__'8799'__518 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq._≟_
d__'8799'__526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du__'8799'__526 v6
du__'8799'__526 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8799'__526 v0 = coe du__'8799'__518 (coe v0)
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq.isEquivalence
d_isEquivalence_528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 -> T_IsEquivalence_26
d_isEquivalence_528 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isEquivalence_528 v6
du_isEquivalence_528 ::
  T_IsStrictTotalOrder_502 -> T_IsEquivalence_26
du_isEquivalence_528 v0 = coe d_isEquivalence_512 (coe v0)
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq.isPartialEquivalence
d_isPartialEquivalence_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 -> T_IsPartialEquivalence_16
d_isPartialEquivalence_530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_530 v6
du_isPartialEquivalence_530 ::
  T_IsStrictTotalOrder_502 -> T_IsPartialEquivalence_16
du_isPartialEquivalence_530 v0
  = let v1 = coe du_isDecEquivalence_522 (coe v0) in
    coe du_isPartialEquivalence_42 (coe d_isEquivalence_50 (coe v1))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq.refl
d_refl_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 -> AgdaAny -> AgdaAny
d_refl_532 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_refl_532 v6
du_refl_532 :: T_IsStrictTotalOrder_502 -> AgdaAny -> AgdaAny
du_refl_532 v0 = coe d_refl_34 (coe d_isEquivalence_512 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq.reflexive
d_reflexive_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_534 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_534 v6
du_reflexive_534 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_534 v0
  = let v1 = coe du_isDecEquivalence_522 (coe v0) in
    \ v2 v3 v4 ->
      coe du_reflexive_40 (coe d_isEquivalence_50 (coe v1)) v2
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq.sym
d_sym_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_536 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_sym_536 v6
du_sym_536 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_536 v0 = coe d_sym_36 (coe d_isEquivalence_512 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.Eq.trans
d_trans_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_trans_538 v6
du_trans_538 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_538 v0 = coe d_trans_38 (coe d_isEquivalence_512 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder.isStrictPartialOrder
d_isStrictPartialOrder_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 -> T_IsStrictPartialOrder_266
d_isStrictPartialOrder_540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isStrictPartialOrder_540 v6
du_isStrictPartialOrder_540 ::
  T_IsStrictTotalOrder_502 -> T_IsStrictPartialOrder_266
du_isStrictPartialOrder_540 v0
  = coe
      C_IsStrictPartialOrder'46'constructor_9921
      (d_isEquivalence_512 (coe v0)) (d_trans_514 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du_trans'8743'tri'8658'resp_650
         (coe d_compare_516 (coe v0)))
-- Relation.Binary.Structures.IsStrictTotalOrder.isDecStrictPartialOrder
d_isDecStrictPartialOrder_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 -> T_IsDecStrictPartialOrder_314
d_isDecStrictPartialOrder_542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecStrictPartialOrder_542 v6
du_isDecStrictPartialOrder_542 ::
  T_IsStrictTotalOrder_502 -> T_IsDecStrictPartialOrder_314
du_isDecStrictPartialOrder_542 v0
  = coe
      C_IsDecStrictPartialOrder'46'constructor_13593
      (coe du_isStrictPartialOrder_540 (coe v0))
      (coe du__'8799'__518 (coe v0)) (coe du__'60''63'__520 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._.<-resp-≈
d_'60''45'resp'45''8776'_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'45''8776'_546 v6
du_'60''45'resp'45''8776'_546 ::
  T_IsStrictTotalOrder_502 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'45''8776'_546 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_trans'8743'tri'8658'resp_650
      (coe d_compare_516 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._.<-respʳ-≈
d_'60''45'resp'691''45''8776'_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'691''45''8776'_548 v6
du_'60''45'resp'691''45''8776'_548 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_548 v0
  = coe
      du_'60''45'resp'691''45''8776'_304
      (coe du_isStrictPartialOrder_540 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._.<-respˡ-≈
d_'60''45'resp'737''45''8776'_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'resp'737''45''8776'_550 v6
du_'60''45'resp'737''45''8776'_550 ::
  T_IsStrictTotalOrder_502 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_550 v0
  = coe
      du_'60''45'resp'737''45''8776'_306
      (coe du_isStrictPartialOrder_540 (coe v0))
-- Relation.Binary.Structures.IsStrictTotalOrder._.asym
d_asym_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_asym_552 = erased
-- Relation.Binary.Structures.IsStrictTotalOrder._.irrefl
d_irrefl_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_IsStrictTotalOrder_502 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_irrefl_554 = erased
