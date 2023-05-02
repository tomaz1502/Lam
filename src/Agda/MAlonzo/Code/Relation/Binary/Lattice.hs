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

module MAlonzo.Code.Relation.Binary.Lattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Relation.Binary.Lattice.Supremum
d_Supremum_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Supremum_12 = erased
-- Relation.Binary.Lattice.Infimum
d_Infimum_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Infimum_30 = erased
-- Relation.Binary.Lattice.Exponential
d_Exponential_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Exponential_40 = erased
-- Relation.Binary.Lattice.IsJoinSemilattice
d_IsJoinSemilattice_68 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsJoinSemilattice_68
  = C_IsJoinSemilattice'46'constructor_1461 MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
                                            (AgdaAny ->
                                             AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Relation.Binary.Lattice.IsJoinSemilattice.isPartialOrder
d_isPartialOrder_88 ::
  T_IsJoinSemilattice_68 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_88 v0
  = case coe v0 of
      C_IsJoinSemilattice'46'constructor_1461 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsJoinSemilattice.supremum
d_supremum_90 ::
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_90 v0
  = case coe v0 of
      C_IsJoinSemilattice'46'constructor_1461 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsJoinSemilattice.x≤x∨y
d_x'8804'x'8744'y_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_x'8804'x'8744'y_96 v7 v8 v9
du_x'8804'x'8744'y_96 ::
  T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_96 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_supremum_90 v0 v1 v2)
-- Relation.Binary.Lattice.IsJoinSemilattice.y≤x∨y
d_y'8804'x'8744'y_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_y'8804'x'8744'y_108 v7 v8 v9
du_y'8804'x'8744'y_108 ::
  T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_108 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_supremum_90 v0 v1 v2))
-- Relation.Binary.Lattice.IsJoinSemilattice.∨-least
d_'8744''45'least_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_'8744''45'least_122 v7 v8 v9 v10
du_'8744''45'least_122 ::
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_122 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_supremum_90 v0 v1 v2))
      v3
-- Relation.Binary.Lattice.IsJoinSemilattice._.antisym
d_antisym_134 ::
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_134 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_88 (coe v0))
-- Relation.Binary.Lattice.IsJoinSemilattice._.isEquivalence
d_isEquivalence_136 ::
  T_IsJoinSemilattice_68 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_136 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe v0)))
-- Relation.Binary.Lattice.IsJoinSemilattice._.isPreorder
d_isPreorder_138 ::
  T_IsJoinSemilattice_68 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_138 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_88 (coe v0))
-- Relation.Binary.Lattice.IsJoinSemilattice._.refl
d_refl_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny
d_refl_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_140 v7
du_refl_140 :: T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny
du_refl_140 v0
  = let v1 = d_isPartialOrder_88 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsJoinSemilattice._.reflexive
d_reflexive_142 ::
  T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe v0)))
-- Relation.Binary.Lattice.IsJoinSemilattice._.trans
d_trans_144 ::
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_144 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe v0)))
-- Relation.Binary.Lattice.IsJoinSemilattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8764''45'resp'45''8776'_146 v7
du_'8764''45'resp'45''8776'_146 ::
  T_IsJoinSemilattice_68 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_146 v0
  = let v1 = d_isPartialOrder_88 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsJoinSemilattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8764''45'resp'691''45''8776'_148 v7
du_'8764''45'resp'691''45''8776'_148 ::
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_148 v0
  = let v1 = d_isPartialOrder_88 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsJoinSemilattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8764''45'resp'737''45''8776'_150 v7
du_'8764''45'resp'737''45''8776'_150 ::
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_150 v0
  = let v1 = d_isPartialOrder_88 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsJoinSemilattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_154 v7
du_isPartialEquivalence_154 ::
  T_IsJoinSemilattice_68 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_154 v0
  = let v1 = d_isPartialOrder_88 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v2))
-- Relation.Binary.Lattice.IsJoinSemilattice._.Eq.refl
d_refl_156 :: T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny
d_refl_156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe v0))))
-- Relation.Binary.Lattice.IsJoinSemilattice._.Eq.reflexive
d_reflexive_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsJoinSemilattice_68 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_158 v7
du_reflexive_158 ::
  T_IsJoinSemilattice_68 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_158 v0
  = let v1 = d_isPartialOrder_88 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v2))
        v3
-- Relation.Binary.Lattice.IsJoinSemilattice._.Eq.sym
d_sym_160 ::
  T_IsJoinSemilattice_68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_160 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe v0))))
-- Relation.Binary.Lattice.IsJoinSemilattice._.Eq.trans
d_trans_162 ::
  T_IsJoinSemilattice_68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe v0))))
-- Relation.Binary.Lattice.JoinSemilattice
d_JoinSemilattice_170 a0 a1 a2 = ()
data T_JoinSemilattice_170
  = C_JoinSemilattice'46'constructor_5257 (AgdaAny ->
                                           AgdaAny -> AgdaAny)
                                          T_IsJoinSemilattice_68
-- Relation.Binary.Lattice.JoinSemilattice.Carrier
d_Carrier_188 :: T_JoinSemilattice_170 -> ()
d_Carrier_188 = erased
-- Relation.Binary.Lattice.JoinSemilattice._≈_
d__'8776'__190 :: T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> ()
d__'8776'__190 = erased
-- Relation.Binary.Lattice.JoinSemilattice._≤_
d__'8804'__192 :: T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> ()
d__'8804'__192 = erased
-- Relation.Binary.Lattice.JoinSemilattice._∨_
d__'8744'__194 ::
  T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__194 v0
  = case coe v0 of
      C_JoinSemilattice'46'constructor_5257 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.JoinSemilattice.isJoinSemilattice
d_isJoinSemilattice_196 ::
  T_JoinSemilattice_170 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_196 v0
  = case coe v0 of
      C_JoinSemilattice'46'constructor_5257 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.JoinSemilattice._.antisym
d_antisym_200 ::
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0)))
-- Relation.Binary.Lattice.JoinSemilattice._.isEquivalence
d_isEquivalence_202 ::
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0))))
-- Relation.Binary.Lattice.JoinSemilattice._.isPartialOrder
d_isPartialOrder_204 ::
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_204 v0
  = coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0))
-- Relation.Binary.Lattice.JoinSemilattice._.isPreorder
d_isPreorder_206 ::
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0)))
-- Relation.Binary.Lattice.JoinSemilattice._.refl
d_refl_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 -> AgdaAny -> AgdaAny
d_refl_208 ~v0 ~v1 ~v2 v3 = du_refl_208 v3
du_refl_208 :: T_JoinSemilattice_170 -> AgdaAny -> AgdaAny
du_refl_208 v0
  = let v1 = d_isJoinSemilattice_196 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.JoinSemilattice._.reflexive
d_reflexive_210 ::
  T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0))))
-- Relation.Binary.Lattice.JoinSemilattice._.supremum
d_supremum_212 ::
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_212 v0
  = coe d_supremum_90 (coe d_isJoinSemilattice_196 (coe v0))
-- Relation.Binary.Lattice.JoinSemilattice._.trans
d_trans_214 ::
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0))))
-- Relation.Binary.Lattice.JoinSemilattice._.x≤x∨y
d_x'8804'x'8744'y_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_216 ~v0 ~v1 ~v2 v3 = du_x'8804'x'8744'y_216 v3
du_x'8804'x'8744'y_216 ::
  T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_216 v0
  = coe du_x'8804'x'8744'y_96 (coe d_isJoinSemilattice_196 (coe v0))
-- Relation.Binary.Lattice.JoinSemilattice._.y≤x∨y
d_y'8804'x'8744'y_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_218 ~v0 ~v1 ~v2 v3 = du_y'8804'x'8744'y_218 v3
du_y'8804'x'8744'y_218 ::
  T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_218 v0
  = coe du_y'8804'x'8744'y_108 (coe d_isJoinSemilattice_196 (coe v0))
-- Relation.Binary.Lattice.JoinSemilattice._.∨-least
d_'8744''45'least_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_220 ~v0 ~v1 ~v2 v3 = du_'8744''45'least_220 v3
du_'8744''45'least_220 ::
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_220 v0
  = coe du_'8744''45'least_122 (coe d_isJoinSemilattice_196 (coe v0))
-- Relation.Binary.Lattice.JoinSemilattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_222 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_222 v3
du_'8764''45'resp'45''8776'_222 ::
  T_JoinSemilattice_170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_222 v0
  = let v1 = d_isJoinSemilattice_196 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.JoinSemilattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_224 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_224 v3
du_'8764''45'resp'691''45''8776'_224 ::
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_224 v0
  = let v1 = d_isJoinSemilattice_196 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.JoinSemilattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_226 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_226 v3
du_'8764''45'resp'737''45''8776'_226 ::
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_226 v0
  = let v1 = d_isJoinSemilattice_196 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.JoinSemilattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_230 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_230 v3
du_isPartialEquivalence_230 ::
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_230 v0
  = let v1 = d_isJoinSemilattice_196 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v3))
-- Relation.Binary.Lattice.JoinSemilattice._.Eq.refl
d_refl_232 :: T_JoinSemilattice_170 -> AgdaAny -> AgdaAny
d_refl_232 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0)))))
-- Relation.Binary.Lattice.JoinSemilattice._.Eq.reflexive
d_reflexive_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_234 ~v0 ~v1 ~v2 v3 = du_reflexive_234 v3
du_reflexive_234 ::
  T_JoinSemilattice_170 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_234 v0
  = let v1 = d_isJoinSemilattice_196 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v3))
        v4
-- Relation.Binary.Lattice.JoinSemilattice._.Eq.sym
d_sym_236 ::
  T_JoinSemilattice_170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_236 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0)))))
-- Relation.Binary.Lattice.JoinSemilattice._.Eq.trans
d_trans_238 ::
  T_JoinSemilattice_170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0)))))
-- Relation.Binary.Lattice.JoinSemilattice.poset
d_poset_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_240 ~v0 ~v1 ~v2 v3 = du_poset_240 v3
du_poset_240 ::
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_240 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      (d_isPartialOrder_88 (coe d_isJoinSemilattice_196 (coe v0)))
-- Relation.Binary.Lattice.JoinSemilattice._.preorder
d_preorder_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_244 ~v0 ~v1 ~v2 v3 = du_preorder_244 v3
du_preorder_244 ::
  T_JoinSemilattice_170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_240 (coe v0))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice
d_IsBoundedJoinSemilattice_262 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsBoundedJoinSemilattice_262
  = C_IsBoundedJoinSemilattice'46'constructor_6997 T_IsJoinSemilattice_68
                                                   (AgdaAny -> AgdaAny)
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice.isJoinSemilattice
d_isJoinSemilattice_284 ::
  T_IsBoundedJoinSemilattice_262 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_284 v0
  = case coe v0 of
      C_IsBoundedJoinSemilattice'46'constructor_6997 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice.minimum
d_minimum_286 ::
  T_IsBoundedJoinSemilattice_262 -> AgdaAny -> AgdaAny
d_minimum_286 v0
  = case coe v0 of
      C_IsBoundedJoinSemilattice'46'constructor_6997 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.antisym
d_antisym_290 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_290 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0)))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isEquivalence
d_isEquivalence_292 ::
  T_IsBoundedJoinSemilattice_262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isPartialOrder
d_isPartialOrder_294 ::
  T_IsBoundedJoinSemilattice_262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_294 v0
  = coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isPreorder
d_isPreorder_296 ::
  T_IsBoundedJoinSemilattice_262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_296 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0)))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.refl
d_refl_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBoundedJoinSemilattice_262 -> AgdaAny -> AgdaAny
d_refl_298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_298 v8
du_refl_298 :: T_IsBoundedJoinSemilattice_262 -> AgdaAny -> AgdaAny
du_refl_298 v0
  = let v1 = d_isJoinSemilattice_284 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.reflexive
d_reflexive_300 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.supremum
d_supremum_302 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_302 v0
  = coe d_supremum_90 (coe d_isJoinSemilattice_284 (coe v0))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.trans
d_trans_304 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_304 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.x≤x∨y
d_x'8804'x'8744'y_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedJoinSemilattice_262 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8804'x'8744'y_306 v8
du_x'8804'x'8744'y_306 ::
  T_IsBoundedJoinSemilattice_262 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_306 v0
  = coe du_x'8804'x'8744'y_96 (coe d_isJoinSemilattice_284 (coe v0))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.y≤x∨y
d_y'8804'x'8744'y_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedJoinSemilattice_262 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_y'8804'x'8744'y_308 v8
du_y'8804'x'8744'y_308 ::
  T_IsBoundedJoinSemilattice_262 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_308 v0
  = coe du_y'8804'x'8744'y_108 (coe d_isJoinSemilattice_284 (coe v0))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∨-least
d_'8744''45'least_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8744''45'least_310 v8
du_'8744''45'least_310 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_310 v0
  = coe du_'8744''45'least_122 (coe d_isJoinSemilattice_284 (coe v0))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedJoinSemilattice_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8764''45'resp'45''8776'_312 v8
du_'8764''45'resp'45''8776'_312 ::
  T_IsBoundedJoinSemilattice_262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_312 v0
  = let v1 = d_isJoinSemilattice_284 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    v8
  = du_'8764''45'resp'691''45''8776'_314 v8
du_'8764''45'resp'691''45''8776'_314 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_314 v0
  = let v1 = d_isJoinSemilattice_284 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    v8
  = du_'8764''45'resp'737''45''8776'_316 v8
du_'8764''45'resp'737''45''8776'_316 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_316 v0
  = let v1 = d_isJoinSemilattice_284 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedJoinSemilattice_262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_320 v8
du_isPartialEquivalence_320 ::
  T_IsBoundedJoinSemilattice_262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_320 v0
  = let v1 = d_isJoinSemilattice_284 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v3))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.refl
d_refl_322 :: T_IsBoundedJoinSemilattice_262 -> AgdaAny -> AgdaAny
d_refl_322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0)))))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.reflexive
d_reflexive_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_324 v8
du_reflexive_324 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_324 v0
  = let v1 = d_isJoinSemilattice_284 (coe v0) in
    let v2 = d_isPartialOrder_88 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v3))
        v4
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.sym
d_sym_326 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_326 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0)))))
-- Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.trans
d_trans_328 ::
  T_IsBoundedJoinSemilattice_262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_328 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_88 (coe d_isJoinSemilattice_284 (coe v0)))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice
d_BoundedJoinSemilattice_336 a0 a1 a2 = ()
data T_BoundedJoinSemilattice_336
  = C_BoundedJoinSemilattice'46'constructor_9245 (AgdaAny ->
                                                  AgdaAny -> AgdaAny)
                                                 AgdaAny T_IsBoundedJoinSemilattice_262
-- Relation.Binary.Lattice.BoundedJoinSemilattice.Carrier
d_Carrier_356 :: T_BoundedJoinSemilattice_336 -> ()
d_Carrier_356 = erased
-- Relation.Binary.Lattice.BoundedJoinSemilattice._≈_
d__'8776'__358 ::
  T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny -> ()
d__'8776'__358 = erased
-- Relation.Binary.Lattice.BoundedJoinSemilattice._≤_
d__'8804'__360 ::
  T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny -> ()
d__'8804'__360 = erased
-- Relation.Binary.Lattice.BoundedJoinSemilattice._∨_
d__'8744'__362 ::
  T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__362 v0
  = case coe v0 of
      C_BoundedJoinSemilattice'46'constructor_9245 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedJoinSemilattice.⊥
d_'8869'_364 :: T_BoundedJoinSemilattice_336 -> AgdaAny
d_'8869'_364 v0
  = case coe v0 of
      C_BoundedJoinSemilattice'46'constructor_9245 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedJoinSemilattice.isBoundedJoinSemilattice
d_isBoundedJoinSemilattice_366 ::
  T_BoundedJoinSemilattice_336 -> T_IsBoundedJoinSemilattice_262
d_isBoundedJoinSemilattice_366 v0
  = case coe v0 of
      C_BoundedJoinSemilattice'46'constructor_9245 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.antisym
d_antisym_370 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe
         d_isPartialOrder_88
         (coe
            d_isJoinSemilattice_284
            (coe d_isBoundedJoinSemilattice_366 (coe v0))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.isEquivalence
d_isEquivalence_372 ::
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_372 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_88
            (coe
               d_isJoinSemilattice_284
               (coe d_isBoundedJoinSemilattice_366 (coe v0)))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.isJoinSemilattice
d_isJoinSemilattice_374 ::
  T_BoundedJoinSemilattice_336 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_374 v0
  = coe
      d_isJoinSemilattice_284
      (coe d_isBoundedJoinSemilattice_366 (coe v0))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.isPartialOrder
d_isPartialOrder_376 ::
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_376 v0
  = coe
      d_isPartialOrder_88
      (coe
         d_isJoinSemilattice_284
         (coe d_isBoundedJoinSemilattice_366 (coe v0)))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.isPreorder
d_isPreorder_378 ::
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_378 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe
         d_isPartialOrder_88
         (coe
            d_isJoinSemilattice_284
            (coe d_isBoundedJoinSemilattice_366 (coe v0))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.minimum
d_minimum_380 :: T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny
d_minimum_380 v0
  = coe d_minimum_286 (coe d_isBoundedJoinSemilattice_366 (coe v0))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.refl
d_refl_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny
d_refl_382 ~v0 ~v1 ~v2 v3 = du_refl_382 v3
du_refl_382 :: T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny
du_refl_382 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    let v2 = d_isJoinSemilattice_284 (coe v1) in
    let v3 = d_isPartialOrder_88 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.reflexive
d_reflexive_384 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_88
            (coe
               d_isJoinSemilattice_284
               (coe d_isBoundedJoinSemilattice_366 (coe v0)))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.supremum
d_supremum_386 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_386 v0
  = coe
      d_supremum_90
      (coe
         d_isJoinSemilattice_284
         (coe d_isBoundedJoinSemilattice_366 (coe v0)))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.trans
d_trans_388 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_388 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_88
            (coe
               d_isJoinSemilattice_284
               (coe d_isBoundedJoinSemilattice_366 (coe v0)))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.x≤x∨y
d_x'8804'x'8744'y_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_390 ~v0 ~v1 ~v2 v3 = du_x'8804'x'8744'y_390 v3
du_x'8804'x'8744'y_390 ::
  T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_390 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    coe du_x'8804'x'8744'y_96 (coe d_isJoinSemilattice_284 (coe v1))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.y≤x∨y
d_y'8804'x'8744'y_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_392 ~v0 ~v1 ~v2 v3 = du_y'8804'x'8744'y_392 v3
du_y'8804'x'8744'y_392 ::
  T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_392 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    coe du_y'8804'x'8744'y_108 (coe d_isJoinSemilattice_284 (coe v1))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.∨-least
d_'8744''45'least_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_394 ~v0 ~v1 ~v2 v3 = du_'8744''45'least_394 v3
du_'8744''45'least_394 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_394 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    coe du_'8744''45'least_122 (coe d_isJoinSemilattice_284 (coe v1))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_396 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_396 v3
du_'8764''45'resp'45''8776'_396 ::
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_396 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    let v2 = d_isJoinSemilattice_284 (coe v1) in
    let v3 = d_isPartialOrder_88 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_398 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_398 v3
du_'8764''45'resp'691''45''8776'_398 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_398 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    let v2 = d_isJoinSemilattice_284 (coe v1) in
    let v3 = d_isPartialOrder_88 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_400 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_400 v3
du_'8764''45'resp'737''45''8776'_400 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_400 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    let v2 = d_isJoinSemilattice_284 (coe v1) in
    let v3 = d_isPartialOrder_88 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_404 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_404 v3
du_isPartialEquivalence_404 ::
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_404 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    let v2 = d_isJoinSemilattice_284 (coe v1) in
    let v3 = d_isPartialOrder_88 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v4))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.refl
d_refl_406 :: T_BoundedJoinSemilattice_336 -> AgdaAny -> AgdaAny
d_refl_406 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_88
               (coe
                  d_isJoinSemilattice_284
                  (coe d_isBoundedJoinSemilattice_366 (coe v0))))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.reflexive
d_reflexive_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_408 ~v0 ~v1 ~v2 v3 = du_reflexive_408 v3
du_reflexive_408 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_408 v0
  = let v1 = d_isBoundedJoinSemilattice_366 (coe v0) in
    let v2 = d_isJoinSemilattice_284 (coe v1) in
    let v3 = d_isPartialOrder_88 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v4))
        v5
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.sym
d_sym_410 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_410 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_88
               (coe
                  d_isJoinSemilattice_284
                  (coe d_isBoundedJoinSemilattice_366 (coe v0))))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.trans
d_trans_412 ::
  T_BoundedJoinSemilattice_336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_412 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_88
               (coe
                  d_isJoinSemilattice_284
                  (coe d_isBoundedJoinSemilattice_366 (coe v0))))))
-- Relation.Binary.Lattice.BoundedJoinSemilattice.joinSemilattice
d_joinSemilattice_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 -> T_JoinSemilattice_170
d_joinSemilattice_414 ~v0 ~v1 ~v2 v3 = du_joinSemilattice_414 v3
du_joinSemilattice_414 ::
  T_BoundedJoinSemilattice_336 -> T_JoinSemilattice_170
du_joinSemilattice_414 v0
  = coe
      C_JoinSemilattice'46'constructor_5257 (d__'8744'__362 (coe v0))
      (d_isJoinSemilattice_284
         (coe d_isBoundedJoinSemilattice_366 (coe v0)))
-- Relation.Binary.Lattice.BoundedJoinSemilattice.joinSemiLattice
d_joinSemiLattice_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 -> T_JoinSemilattice_170
d_joinSemiLattice_416 ~v0 ~v1 ~v2 v3 = du_joinSemiLattice_416 v3
du_joinSemiLattice_416 ::
  T_BoundedJoinSemilattice_336 -> T_JoinSemilattice_170
du_joinSemiLattice_416 v0 = coe du_joinSemilattice_414 (coe v0)
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.poset
d_poset_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_420 ~v0 ~v1 ~v2 v3 = du_poset_420 v3
du_poset_420 ::
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_420 v0
  = coe du_poset_240 (coe du_joinSemilattice_414 (coe v0))
-- Relation.Binary.Lattice.BoundedJoinSemilattice._.preorder
d_preorder_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_422 ~v0 ~v1 ~v2 v3 = du_preorder_422 v3
du_preorder_422 ::
  T_BoundedJoinSemilattice_336 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_422 v0
  = let v1 = coe du_joinSemilattice_414 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_240 (coe v1))
-- Relation.Binary.Lattice.IsMeetSemilattice
d_IsMeetSemilattice_438 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMeetSemilattice_438
  = C_IsMeetSemilattice'46'constructor_11215 MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
                                             (AgdaAny ->
                                              AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Relation.Binary.Lattice.IsMeetSemilattice.isPartialOrder
d_isPartialOrder_458 ::
  T_IsMeetSemilattice_438 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_458 v0
  = case coe v0 of
      C_IsMeetSemilattice'46'constructor_11215 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsMeetSemilattice.infimum
d_infimum_460 ::
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_460 v0
  = case coe v0 of
      C_IsMeetSemilattice'46'constructor_11215 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsMeetSemilattice.x∧y≤x
d_x'8743'y'8804'x_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_x'8743'y'8804'x_466 v7 v8 v9
du_x'8743'y'8804'x_466 ::
  T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_466 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_infimum_460 v0 v1 v2)
-- Relation.Binary.Lattice.IsMeetSemilattice.x∧y≤y
d_x'8743'y'8804'y_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_x'8743'y'8804'y_478 v7 v8 v9
du_x'8743'y'8804'y_478 ::
  T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_478 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_infimum_460 v0 v1 v2))
-- Relation.Binary.Lattice.IsMeetSemilattice.∧-greatest
d_'8743''45'greatest_492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_'8743''45'greatest_492 v7 v8 v9 v10
du_'8743''45'greatest_492 ::
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_492 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_infimum_460 v0 v2 v3))
      v1
-- Relation.Binary.Lattice.IsMeetSemilattice._.antisym
d_antisym_504 ::
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_504 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_458 (coe v0))
-- Relation.Binary.Lattice.IsMeetSemilattice._.isEquivalence
d_isEquivalence_506 ::
  T_IsMeetSemilattice_438 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe v0)))
-- Relation.Binary.Lattice.IsMeetSemilattice._.isPreorder
d_isPreorder_508 ::
  T_IsMeetSemilattice_438 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_508 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_458 (coe v0))
-- Relation.Binary.Lattice.IsMeetSemilattice._.refl
d_refl_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny
d_refl_510 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_510 v7
du_refl_510 :: T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny
du_refl_510 v0
  = let v1 = d_isPartialOrder_458 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsMeetSemilattice._.reflexive
d_reflexive_512 ::
  T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_512 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe v0)))
-- Relation.Binary.Lattice.IsMeetSemilattice._.trans
d_trans_514 ::
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_514 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe v0)))
-- Relation.Binary.Lattice.IsMeetSemilattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8764''45'resp'45''8776'_516 v7
du_'8764''45'resp'45''8776'_516 ::
  T_IsMeetSemilattice_438 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_516 v0
  = let v1 = d_isPartialOrder_458 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsMeetSemilattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8764''45'resp'691''45''8776'_518 v7
du_'8764''45'resp'691''45''8776'_518 ::
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_518 v0
  = let v1 = d_isPartialOrder_458 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsMeetSemilattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_520 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8764''45'resp'737''45''8776'_520 v7
du_'8764''45'resp'737''45''8776'_520 ::
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_520 v0
  = let v1 = d_isPartialOrder_458 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsMeetSemilattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_524 v7
du_isPartialEquivalence_524 ::
  T_IsMeetSemilattice_438 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_524 v0
  = let v1 = d_isPartialOrder_458 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v2))
-- Relation.Binary.Lattice.IsMeetSemilattice._.Eq.refl
d_refl_526 :: T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny
d_refl_526 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe v0))))
-- Relation.Binary.Lattice.IsMeetSemilattice._.Eq.reflexive
d_reflexive_528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMeetSemilattice_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_528 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_528 v7
du_reflexive_528 ::
  T_IsMeetSemilattice_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_528 v0
  = let v1 = d_isPartialOrder_458 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v2))
        v3
-- Relation.Binary.Lattice.IsMeetSemilattice._.Eq.sym
d_sym_530 ::
  T_IsMeetSemilattice_438 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_530 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe v0))))
-- Relation.Binary.Lattice.IsMeetSemilattice._.Eq.trans
d_trans_532 ::
  T_IsMeetSemilattice_438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_532 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe v0))))
-- Relation.Binary.Lattice.MeetSemilattice
d_MeetSemilattice_540 a0 a1 a2 = ()
data T_MeetSemilattice_540
  = C_MeetSemilattice'46'constructor_15011 (AgdaAny ->
                                            AgdaAny -> AgdaAny)
                                           T_IsMeetSemilattice_438
-- Relation.Binary.Lattice.MeetSemilattice.Carrier
d_Carrier_558 :: T_MeetSemilattice_540 -> ()
d_Carrier_558 = erased
-- Relation.Binary.Lattice.MeetSemilattice._≈_
d__'8776'__560 :: T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> ()
d__'8776'__560 = erased
-- Relation.Binary.Lattice.MeetSemilattice._≤_
d__'8804'__562 :: T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> ()
d__'8804'__562 = erased
-- Relation.Binary.Lattice.MeetSemilattice._∧_
d__'8743'__564 ::
  T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__564 v0
  = case coe v0 of
      C_MeetSemilattice'46'constructor_15011 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.MeetSemilattice.isMeetSemilattice
d_isMeetSemilattice_566 ::
  T_MeetSemilattice_540 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_566 v0
  = case coe v0 of
      C_MeetSemilattice'46'constructor_15011 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.MeetSemilattice._.antisym
d_antisym_570 ::
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_570 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0)))
-- Relation.Binary.Lattice.MeetSemilattice._.infimum
d_infimum_572 ::
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_572 v0
  = coe d_infimum_460 (coe d_isMeetSemilattice_566 (coe v0))
-- Relation.Binary.Lattice.MeetSemilattice._.isEquivalence
d_isEquivalence_574 ::
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_574 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0))))
-- Relation.Binary.Lattice.MeetSemilattice._.isPartialOrder
d_isPartialOrder_576 ::
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_576 v0
  = coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0))
-- Relation.Binary.Lattice.MeetSemilattice._.isPreorder
d_isPreorder_578 ::
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_578 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0)))
-- Relation.Binary.Lattice.MeetSemilattice._.refl
d_refl_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 -> AgdaAny -> AgdaAny
d_refl_580 ~v0 ~v1 ~v2 v3 = du_refl_580 v3
du_refl_580 :: T_MeetSemilattice_540 -> AgdaAny -> AgdaAny
du_refl_580 v0
  = let v1 = d_isMeetSemilattice_566 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.MeetSemilattice._.reflexive
d_reflexive_582 ::
  T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_582 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0))))
-- Relation.Binary.Lattice.MeetSemilattice._.trans
d_trans_584 ::
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_584 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0))))
-- Relation.Binary.Lattice.MeetSemilattice._.x∧y≤x
d_x'8743'y'8804'x_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_586 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'x_586 v3
du_x'8743'y'8804'x_586 ::
  T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_586 v0
  = coe du_x'8743'y'8804'x_466 (coe d_isMeetSemilattice_566 (coe v0))
-- Relation.Binary.Lattice.MeetSemilattice._.x∧y≤y
d_x'8743'y'8804'y_588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_588 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'y_588 v3
du_x'8743'y'8804'y_588 ::
  T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_588 v0
  = coe du_x'8743'y'8804'y_478 (coe d_isMeetSemilattice_566 (coe v0))
-- Relation.Binary.Lattice.MeetSemilattice._.∧-greatest
d_'8743''45'greatest_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_590 ~v0 ~v1 ~v2 v3
  = du_'8743''45'greatest_590 v3
du_'8743''45'greatest_590 ::
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_590 v0
  = coe
      du_'8743''45'greatest_492 (coe d_isMeetSemilattice_566 (coe v0))
-- Relation.Binary.Lattice.MeetSemilattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_592 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_592 v3
du_'8764''45'resp'45''8776'_592 ::
  T_MeetSemilattice_540 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_592 v0
  = let v1 = d_isMeetSemilattice_566 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.MeetSemilattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_594 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_594 v3
du_'8764''45'resp'691''45''8776'_594 ::
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_594 v0
  = let v1 = d_isMeetSemilattice_566 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.MeetSemilattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_596 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_596 v3
du_'8764''45'resp'737''45''8776'_596 ::
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_596 v0
  = let v1 = d_isMeetSemilattice_566 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.MeetSemilattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_600 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_600 v3
du_isPartialEquivalence_600 ::
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_600 v0
  = let v1 = d_isMeetSemilattice_566 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v3))
-- Relation.Binary.Lattice.MeetSemilattice._.Eq.refl
d_refl_602 :: T_MeetSemilattice_540 -> AgdaAny -> AgdaAny
d_refl_602 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0)))))
-- Relation.Binary.Lattice.MeetSemilattice._.Eq.reflexive
d_reflexive_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_604 ~v0 ~v1 ~v2 v3 = du_reflexive_604 v3
du_reflexive_604 ::
  T_MeetSemilattice_540 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_604 v0
  = let v1 = d_isMeetSemilattice_566 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v3))
        v4
-- Relation.Binary.Lattice.MeetSemilattice._.Eq.sym
d_sym_606 ::
  T_MeetSemilattice_540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0)))))
-- Relation.Binary.Lattice.MeetSemilattice._.Eq.trans
d_trans_608 ::
  T_MeetSemilattice_540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_608 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0)))))
-- Relation.Binary.Lattice.MeetSemilattice.poset
d_poset_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_610 ~v0 ~v1 ~v2 v3 = du_poset_610 v3
du_poset_610 ::
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_610 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      (d_isPartialOrder_458 (coe d_isMeetSemilattice_566 (coe v0)))
-- Relation.Binary.Lattice.MeetSemilattice._.preorder
d_preorder_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_614 ~v0 ~v1 ~v2 v3 = du_preorder_614 v3
du_preorder_614 ::
  T_MeetSemilattice_540 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_614 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_610 (coe v0))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice
d_IsBoundedMeetSemilattice_632 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsBoundedMeetSemilattice_632
  = C_IsBoundedMeetSemilattice'46'constructor_16751 T_IsMeetSemilattice_438
                                                    (AgdaAny -> AgdaAny)
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice.isMeetSemilattice
d_isMeetSemilattice_654 ::
  T_IsBoundedMeetSemilattice_632 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_654 v0
  = case coe v0 of
      C_IsBoundedMeetSemilattice'46'constructor_16751 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice.maximum
d_maximum_656 ::
  T_IsBoundedMeetSemilattice_632 -> AgdaAny -> AgdaAny
d_maximum_656 v0
  = case coe v0 of
      C_IsBoundedMeetSemilattice'46'constructor_16751 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.antisym
d_antisym_660 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_660 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0)))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.infimum
d_infimum_662 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_662 v0
  = coe d_infimum_460 (coe d_isMeetSemilattice_654 (coe v0))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isEquivalence
d_isEquivalence_664 ::
  T_IsBoundedMeetSemilattice_632 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_664 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isPartialOrder
d_isPartialOrder_666 ::
  T_IsBoundedMeetSemilattice_632 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_666 v0
  = coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isPreorder
d_isPreorder_668 ::
  T_IsBoundedMeetSemilattice_632 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_668 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0)))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.refl
d_refl_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBoundedMeetSemilattice_632 -> AgdaAny -> AgdaAny
d_refl_670 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_670 v8
du_refl_670 :: T_IsBoundedMeetSemilattice_632 -> AgdaAny -> AgdaAny
du_refl_670 v0
  = let v1 = d_isMeetSemilattice_654 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.reflexive
d_reflexive_672 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_672 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.trans
d_trans_674 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_674 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.x∧y≤x
d_x'8743'y'8804'x_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedMeetSemilattice_632 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8743'y'8804'x_676 v8
du_x'8743'y'8804'x_676 ::
  T_IsBoundedMeetSemilattice_632 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_676 v0
  = coe du_x'8743'y'8804'x_466 (coe d_isMeetSemilattice_654 (coe v0))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.x∧y≤y
d_x'8743'y'8804'y_678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedMeetSemilattice_632 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8743'y'8804'y_678 v8
du_x'8743'y'8804'y_678 ::
  T_IsBoundedMeetSemilattice_632 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_678 v0
  = coe du_x'8743'y'8804'y_478 (coe d_isMeetSemilattice_654 (coe v0))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∧-greatest
d_'8743''45'greatest_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8743''45'greatest_680 v8
du_'8743''45'greatest_680 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_680 v0
  = coe
      du_'8743''45'greatest_492 (coe d_isMeetSemilattice_654 (coe v0))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedMeetSemilattice_632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8764''45'resp'45''8776'_682 v8
du_'8764''45'resp'45''8776'_682 ::
  T_IsBoundedMeetSemilattice_632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_682 v0
  = let v1 = d_isMeetSemilattice_654 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_684 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    v8
  = du_'8764''45'resp'691''45''8776'_684 v8
du_'8764''45'resp'691''45''8776'_684 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_684 v0
  = let v1 = d_isMeetSemilattice_654 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    v8
  = du_'8764''45'resp'737''45''8776'_686 v8
du_'8764''45'resp'737''45''8776'_686 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_686 v0
  = let v1 = d_isMeetSemilattice_654 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedMeetSemilattice_632 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_690 v8
du_isPartialEquivalence_690 ::
  T_IsBoundedMeetSemilattice_632 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_690 v0
  = let v1 = d_isMeetSemilattice_654 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v3))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.refl
d_refl_692 :: T_IsBoundedMeetSemilattice_632 -> AgdaAny -> AgdaAny
d_refl_692 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0)))))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.reflexive
d_reflexive_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_694 v8
du_reflexive_694 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_694 v0
  = let v1 = d_isMeetSemilattice_654 (coe v0) in
    let v2 = d_isPartialOrder_458 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v3))
        v4
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.sym
d_sym_696 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_696 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0)))))
-- Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.trans
d_trans_698 ::
  T_IsBoundedMeetSemilattice_632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_698 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_458 (coe d_isMeetSemilattice_654 (coe v0)))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice
d_BoundedMeetSemilattice_706 a0 a1 a2 = ()
data T_BoundedMeetSemilattice_706
  = C_BoundedMeetSemilattice'46'constructor_18999 (AgdaAny ->
                                                   AgdaAny -> AgdaAny)
                                                  AgdaAny T_IsBoundedMeetSemilattice_632
-- Relation.Binary.Lattice.BoundedMeetSemilattice.Carrier
d_Carrier_726 :: T_BoundedMeetSemilattice_706 -> ()
d_Carrier_726 = erased
-- Relation.Binary.Lattice.BoundedMeetSemilattice._≈_
d__'8776'__728 ::
  T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny -> ()
d__'8776'__728 = erased
-- Relation.Binary.Lattice.BoundedMeetSemilattice._≤_
d__'8804'__730 ::
  T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny -> ()
d__'8804'__730 = erased
-- Relation.Binary.Lattice.BoundedMeetSemilattice._∧_
d__'8743'__732 ::
  T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__732 v0
  = case coe v0 of
      C_BoundedMeetSemilattice'46'constructor_18999 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedMeetSemilattice.⊤
d_'8868'_734 :: T_BoundedMeetSemilattice_706 -> AgdaAny
d_'8868'_734 v0
  = case coe v0 of
      C_BoundedMeetSemilattice'46'constructor_18999 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedMeetSemilattice.isBoundedMeetSemilattice
d_isBoundedMeetSemilattice_736 ::
  T_BoundedMeetSemilattice_706 -> T_IsBoundedMeetSemilattice_632
d_isBoundedMeetSemilattice_736 v0
  = case coe v0 of
      C_BoundedMeetSemilattice'46'constructor_18999 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.antisym
d_antisym_740 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_740 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe
         d_isPartialOrder_458
         (coe
            d_isMeetSemilattice_654
            (coe d_isBoundedMeetSemilattice_736 (coe v0))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.infimum
d_infimum_742 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_742 v0
  = coe
      d_infimum_460
      (coe
         d_isMeetSemilattice_654
         (coe d_isBoundedMeetSemilattice_736 (coe v0)))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.isEquivalence
d_isEquivalence_744 ::
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_744 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_458
            (coe
               d_isMeetSemilattice_654
               (coe d_isBoundedMeetSemilattice_736 (coe v0)))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.isMeetSemilattice
d_isMeetSemilattice_746 ::
  T_BoundedMeetSemilattice_706 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_746 v0
  = coe
      d_isMeetSemilattice_654
      (coe d_isBoundedMeetSemilattice_736 (coe v0))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.isPartialOrder
d_isPartialOrder_748 ::
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_748 v0
  = coe
      d_isPartialOrder_458
      (coe
         d_isMeetSemilattice_654
         (coe d_isBoundedMeetSemilattice_736 (coe v0)))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.isPreorder
d_isPreorder_750 ::
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_750 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe
         d_isPartialOrder_458
         (coe
            d_isMeetSemilattice_654
            (coe d_isBoundedMeetSemilattice_736 (coe v0))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.maximum
d_maximum_752 :: T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny
d_maximum_752 v0
  = coe d_maximum_656 (coe d_isBoundedMeetSemilattice_736 (coe v0))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.refl
d_refl_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny
d_refl_754 ~v0 ~v1 ~v2 v3 = du_refl_754 v3
du_refl_754 :: T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny
du_refl_754 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    let v2 = d_isMeetSemilattice_654 (coe v1) in
    let v3 = d_isPartialOrder_458 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.reflexive
d_reflexive_756 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_756 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_458
            (coe
               d_isMeetSemilattice_654
               (coe d_isBoundedMeetSemilattice_736 (coe v0)))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.trans
d_trans_758 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_758 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_458
            (coe
               d_isMeetSemilattice_654
               (coe d_isBoundedMeetSemilattice_736 (coe v0)))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.x∧y≤x
d_x'8743'y'8804'x_760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_760 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'x_760 v3
du_x'8743'y'8804'x_760 ::
  T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_760 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    coe du_x'8743'y'8804'x_466 (coe d_isMeetSemilattice_654 (coe v1))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.x∧y≤y
d_x'8743'y'8804'y_762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_762 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'y_762 v3
du_x'8743'y'8804'y_762 ::
  T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_762 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    coe du_x'8743'y'8804'y_478 (coe d_isMeetSemilattice_654 (coe v1))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.∧-greatest
d_'8743''45'greatest_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_764 ~v0 ~v1 ~v2 v3
  = du_'8743''45'greatest_764 v3
du_'8743''45'greatest_764 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_764 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    coe
      du_'8743''45'greatest_492 (coe d_isMeetSemilattice_654 (coe v1))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_766 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_766 v3
du_'8764''45'resp'45''8776'_766 ::
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_766 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    let v2 = d_isMeetSemilattice_654 (coe v1) in
    let v3 = d_isPartialOrder_458 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_768 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_768 v3
du_'8764''45'resp'691''45''8776'_768 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_768 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    let v2 = d_isMeetSemilattice_654 (coe v1) in
    let v3 = d_isPartialOrder_458 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_770 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_770 v3
du_'8764''45'resp'737''45''8776'_770 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_770 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    let v2 = d_isMeetSemilattice_654 (coe v1) in
    let v3 = d_isPartialOrder_458 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_774 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_774 v3
du_isPartialEquivalence_774 ::
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_774 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    let v2 = d_isMeetSemilattice_654 (coe v1) in
    let v3 = d_isPartialOrder_458 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v4))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.refl
d_refl_776 :: T_BoundedMeetSemilattice_706 -> AgdaAny -> AgdaAny
d_refl_776 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_458
               (coe
                  d_isMeetSemilattice_654
                  (coe d_isBoundedMeetSemilattice_736 (coe v0))))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.reflexive
d_reflexive_778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_778 ~v0 ~v1 ~v2 v3 = du_reflexive_778 v3
du_reflexive_778 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_778 v0
  = let v1 = d_isBoundedMeetSemilattice_736 (coe v0) in
    let v2 = d_isMeetSemilattice_654 (coe v1) in
    let v3 = d_isPartialOrder_458 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v4))
        v5
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.sym
d_sym_780 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_780 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_458
               (coe
                  d_isMeetSemilattice_654
                  (coe d_isBoundedMeetSemilattice_736 (coe v0))))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.trans
d_trans_782 ::
  T_BoundedMeetSemilattice_706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_782 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_458
               (coe
                  d_isMeetSemilattice_654
                  (coe d_isBoundedMeetSemilattice_736 (coe v0))))))
-- Relation.Binary.Lattice.BoundedMeetSemilattice.meetSemilattice
d_meetSemilattice_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 -> T_MeetSemilattice_540
d_meetSemilattice_784 ~v0 ~v1 ~v2 v3 = du_meetSemilattice_784 v3
du_meetSemilattice_784 ::
  T_BoundedMeetSemilattice_706 -> T_MeetSemilattice_540
du_meetSemilattice_784 v0
  = coe
      C_MeetSemilattice'46'constructor_15011 (d__'8743'__732 (coe v0))
      (d_isMeetSemilattice_654
         (coe d_isBoundedMeetSemilattice_736 (coe v0)))
-- Relation.Binary.Lattice.BoundedMeetSemilattice.meetSemiLattice
d_meetSemiLattice_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 -> T_MeetSemilattice_540
d_meetSemiLattice_786 ~v0 ~v1 ~v2 v3 = du_meetSemiLattice_786 v3
du_meetSemiLattice_786 ::
  T_BoundedMeetSemilattice_706 -> T_MeetSemilattice_540
du_meetSemiLattice_786 v0 = coe du_meetSemilattice_784 (coe v0)
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.poset
d_poset_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_790 ~v0 ~v1 ~v2 v3 = du_poset_790 v3
du_poset_790 ::
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_790 v0
  = coe du_poset_610 (coe du_meetSemilattice_784 (coe v0))
-- Relation.Binary.Lattice.BoundedMeetSemilattice._.preorder
d_preorder_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_792 ~v0 ~v1 ~v2 v3 = du_preorder_792 v3
du_preorder_792 ::
  T_BoundedMeetSemilattice_706 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_792 v0
  = let v1 = coe du_meetSemilattice_784 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_610 (coe v1))
-- Relation.Binary.Lattice.IsLattice
d_IsLattice_810 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsLattice_810
  = C_IsLattice'46'constructor_21159 MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
                                     (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                     (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Relation.Binary.Lattice.IsLattice.isPartialOrder
d_isPartialOrder_834 ::
  T_IsLattice_810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_834 v0
  = case coe v0 of
      C_IsLattice'46'constructor_21159 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsLattice.supremum
d_supremum_836 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_836 v0
  = case coe v0 of
      C_IsLattice'46'constructor_21159 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsLattice.infimum
d_infimum_838 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_838 v0
  = case coe v0 of
      C_IsLattice'46'constructor_21159 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsLattice.isJoinSemilattice
d_isJoinSemilattice_840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isJoinSemilattice_840 v8
du_isJoinSemilattice_840 ::
  T_IsLattice_810 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_840 v0
  = coe
      C_IsJoinSemilattice'46'constructor_1461
      (coe d_isPartialOrder_834 (coe v0)) (coe d_supremum_836 (coe v0))
-- Relation.Binary.Lattice.IsLattice.isMeetSemilattice
d_isMeetSemilattice_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_842 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isMeetSemilattice_842 v8
du_isMeetSemilattice_842 ::
  T_IsLattice_810 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_842 v0
  = coe
      C_IsMeetSemilattice'46'constructor_11215
      (coe d_isPartialOrder_834 (coe v0)) (coe d_infimum_838 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.x≤x∨y
d_x'8804'x'8744'y_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_846 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8804'x'8744'y_846 v8
du_x'8804'x'8744'y_846 ::
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_846 v0
  = coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.y≤x∨y
d_y'8804'x'8744'y_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_y'8804'x'8744'y_848 v8
du_y'8804'x'8744'y_848 ::
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_848 v0
  = coe
      du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.∨-least
d_'8744''45'least_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_850 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8744''45'least_850 v8
du_'8744''45'least_850 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_850 v0
  = coe
      du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.x∧y≤x
d_x'8743'y'8804'x_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8743'y'8804'x_854 v8
du_x'8743'y'8804'x_854 ::
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_854 v0
  = coe
      du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.x∧y≤y
d_x'8743'y'8804'y_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8743'y'8804'y_856 v8
du_x'8743'y'8804'y_856 ::
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_856 v0
  = coe
      du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.∧-greatest
d_'8743''45'greatest_858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_858 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8743''45'greatest_858 v8
du_'8743''45'greatest_858 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_858 v0
  = coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.antisym
d_antisym_862 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_862 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_834 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.isEquivalence
d_isEquivalence_864 ::
  T_IsLattice_810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe v0)))
-- Relation.Binary.Lattice.IsLattice._.isPreorder
d_isPreorder_866 ::
  T_IsLattice_810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_866 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_834 (coe v0))
-- Relation.Binary.Lattice.IsLattice._.refl
d_refl_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 -> AgdaAny -> AgdaAny
d_refl_868 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_868 v8
du_refl_868 :: T_IsLattice_810 -> AgdaAny -> AgdaAny
du_refl_868 v0
  = let v1 = d_isPartialOrder_834 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsLattice._.reflexive
d_reflexive_870 ::
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe v0)))
-- Relation.Binary.Lattice.IsLattice._.trans
d_trans_872 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_872 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe v0)))
-- Relation.Binary.Lattice.IsLattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_874 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8764''45'resp'45''8776'_874 v8
du_'8764''45'resp'45''8776'_874 ::
  T_IsLattice_810 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_874 v0
  = let v1 = d_isPartialOrder_834 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsLattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_876 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    v8
  = du_'8764''45'resp'691''45''8776'_876 v8
du_'8764''45'resp'691''45''8776'_876 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_876 v0
  = let v1 = d_isPartialOrder_834 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsLattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_878 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                    v8
  = du_'8764''45'resp'737''45''8776'_878 v8
du_'8764''45'resp'737''45''8776'_878 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_878 v0
  = let v1 = d_isPartialOrder_834 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1))
-- Relation.Binary.Lattice.IsLattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_882 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_882 v8
du_isPartialEquivalence_882 ::
  T_IsLattice_810 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_882 v0
  = let v1 = d_isPartialOrder_834 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v2))
-- Relation.Binary.Lattice.IsLattice._.Eq.refl
d_refl_884 :: T_IsLattice_810 -> AgdaAny -> AgdaAny
d_refl_884 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe v0))))
-- Relation.Binary.Lattice.IsLattice._.Eq.reflexive
d_reflexive_886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_810 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_886 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_886 v8
du_reflexive_886 ::
  T_IsLattice_810 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_886 v0
  = let v1 = d_isPartialOrder_834 (coe v0) in
    let v2
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v2))
        v3
-- Relation.Binary.Lattice.IsLattice._.Eq.sym
d_sym_888 ::
  T_IsLattice_810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_888 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe v0))))
-- Relation.Binary.Lattice.IsLattice._.Eq.trans
d_trans_890 ::
  T_IsLattice_810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_890 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe v0))))
-- Relation.Binary.Lattice.Lattice
d_Lattice_898 a0 a1 a2 = ()
data T_Lattice_898
  = C_Lattice'46'constructor_24851 (AgdaAny -> AgdaAny -> AgdaAny)
                                   (AgdaAny -> AgdaAny -> AgdaAny) T_IsLattice_810
-- Relation.Binary.Lattice.Lattice.Carrier
d_Carrier_918 :: T_Lattice_898 -> ()
d_Carrier_918 = erased
-- Relation.Binary.Lattice.Lattice._≈_
d__'8776'__920 :: T_Lattice_898 -> AgdaAny -> AgdaAny -> ()
d__'8776'__920 = erased
-- Relation.Binary.Lattice.Lattice._≤_
d__'8804'__922 :: T_Lattice_898 -> AgdaAny -> AgdaAny -> ()
d__'8804'__922 = erased
-- Relation.Binary.Lattice.Lattice._∨_
d__'8744'__924 :: T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__924 v0
  = case coe v0 of
      C_Lattice'46'constructor_24851 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.Lattice._∧_
d__'8743'__926 :: T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__926 v0
  = case coe v0 of
      C_Lattice'46'constructor_24851 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.Lattice.isLattice
d_isLattice_928 :: T_Lattice_898 -> T_IsLattice_810
d_isLattice_928 v0
  = case coe v0 of
      C_Lattice'46'constructor_24851 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.Lattice._.antisym
d_antisym_932 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_932 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0)))
-- Relation.Binary.Lattice.Lattice._.infimum
d_infimum_934 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_934 v0 = coe d_infimum_838 (coe d_isLattice_928 (coe v0))
-- Relation.Binary.Lattice.Lattice._.isEquivalence
d_isEquivalence_936 ::
  T_Lattice_898 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_936 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0))))
-- Relation.Binary.Lattice.Lattice._.isJoinSemilattice
d_isJoinSemilattice_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_938 ~v0 ~v1 ~v2 v3
  = du_isJoinSemilattice_938 v3
du_isJoinSemilattice_938 :: T_Lattice_898 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_938 v0
  = coe du_isJoinSemilattice_840 (coe d_isLattice_928 (coe v0))
-- Relation.Binary.Lattice.Lattice._.isMeetSemilattice
d_isMeetSemilattice_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_940 ~v0 ~v1 ~v2 v3
  = du_isMeetSemilattice_940 v3
du_isMeetSemilattice_940 ::
  T_Lattice_898 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_940 v0
  = coe du_isMeetSemilattice_842 (coe d_isLattice_928 (coe v0))
-- Relation.Binary.Lattice.Lattice._.isPartialOrder
d_isPartialOrder_942 ::
  T_Lattice_898 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_942 v0
  = coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0))
-- Relation.Binary.Lattice.Lattice._.isPreorder
d_isPreorder_944 ::
  T_Lattice_898 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_944 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0)))
-- Relation.Binary.Lattice.Lattice._.refl
d_refl_946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> AgdaAny -> AgdaAny
d_refl_946 ~v0 ~v1 ~v2 v3 = du_refl_946 v3
du_refl_946 :: T_Lattice_898 -> AgdaAny -> AgdaAny
du_refl_946 v0
  = let v1 = d_isLattice_928 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.Lattice._.reflexive
d_reflexive_948 ::
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_948 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0))))
-- Relation.Binary.Lattice.Lattice._.supremum
d_supremum_950 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_950 v0
  = coe d_supremum_836 (coe d_isLattice_928 (coe v0))
-- Relation.Binary.Lattice.Lattice._.trans
d_trans_952 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_952 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0))))
-- Relation.Binary.Lattice.Lattice._.x∧y≤x
d_x'8743'y'8804'x_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_954 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'x_954 v3
du_x'8743'y'8804'x_954 ::
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_954 v0
  = let v1 = d_isLattice_928 (coe v0) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.Lattice._.x∧y≤y
d_x'8743'y'8804'y_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_956 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'y_956 v3
du_x'8743'y'8804'y_956 ::
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_956 v0
  = let v1 = d_isLattice_928 (coe v0) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.Lattice._.x≤x∨y
d_x'8804'x'8744'y_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_958 ~v0 ~v1 ~v2 v3 = du_x'8804'x'8744'y_958 v3
du_x'8804'x'8744'y_958 ::
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_958 v0
  = let v1 = d_isLattice_928 (coe v0) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.Lattice._.y≤x∨y
d_y'8804'x'8744'y_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_960 ~v0 ~v1 ~v2 v3 = du_y'8804'x'8744'y_960 v3
du_y'8804'x'8744'y_960 ::
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_960 v0
  = let v1 = d_isLattice_928 (coe v0) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.Lattice._.∧-greatest
d_'8743''45'greatest_962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_962 ~v0 ~v1 ~v2 v3
  = du_'8743''45'greatest_962 v3
du_'8743''45'greatest_962 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_962 v0
  = let v1 = d_isLattice_928 (coe v0) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.Lattice._.∨-least
d_'8744''45'least_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_964 ~v0 ~v1 ~v2 v3 = du_'8744''45'least_964 v3
du_'8744''45'least_964 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_964 v0
  = let v1 = d_isLattice_928 (coe v0) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.Lattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_966 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_966 v3
du_'8764''45'resp'45''8776'_966 ::
  T_Lattice_898 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_966 v0
  = let v1 = d_isLattice_928 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.Lattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_968 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_968 v3
du_'8764''45'resp'691''45''8776'_968 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_968 v0
  = let v1 = d_isLattice_928 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.Lattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_970 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_970 v3
du_'8764''45'resp'737''45''8776'_970 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_970 v0
  = let v1 = d_isLattice_928 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.Lattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_974 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_974 v3
du_isPartialEquivalence_974 ::
  T_Lattice_898 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_974 v0
  = let v1 = d_isLattice_928 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v3))
-- Relation.Binary.Lattice.Lattice._.Eq.refl
d_refl_976 :: T_Lattice_898 -> AgdaAny -> AgdaAny
d_refl_976 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0)))))
-- Relation.Binary.Lattice.Lattice._.Eq.reflexive
d_reflexive_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_978 ~v0 ~v1 ~v2 v3 = du_reflexive_978 v3
du_reflexive_978 ::
  T_Lattice_898 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_978 v0
  = let v1 = d_isLattice_928 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v3))
        v4
-- Relation.Binary.Lattice.Lattice._.Eq.sym
d_sym_980 ::
  T_Lattice_898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_980 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0)))))
-- Relation.Binary.Lattice.Lattice._.Eq.trans
d_trans_982 ::
  T_Lattice_898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_982 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0)))))
-- Relation.Binary.Lattice.Lattice.setoid
d_setoid_984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_984 ~v0 ~v1 ~v2 v3 = du_setoid_984 v3
du_setoid_984 ::
  T_Lattice_898 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_984 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_928 (coe v0)))))
-- Relation.Binary.Lattice.Lattice.joinSemilattice
d_joinSemilattice_986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> T_JoinSemilattice_170
d_joinSemilattice_986 ~v0 ~v1 ~v2 v3 = du_joinSemilattice_986 v3
du_joinSemilattice_986 :: T_Lattice_898 -> T_JoinSemilattice_170
du_joinSemilattice_986 v0
  = coe
      C_JoinSemilattice'46'constructor_5257 (d__'8744'__924 (coe v0))
      (coe du_isJoinSemilattice_840 (coe d_isLattice_928 (coe v0)))
-- Relation.Binary.Lattice.Lattice.meetSemilattice
d_meetSemilattice_988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> T_MeetSemilattice_540
d_meetSemilattice_988 ~v0 ~v1 ~v2 v3 = du_meetSemilattice_988 v3
du_meetSemilattice_988 :: T_Lattice_898 -> T_MeetSemilattice_540
du_meetSemilattice_988 v0
  = coe
      C_MeetSemilattice'46'constructor_15011 (d__'8743'__926 (coe v0))
      (coe du_isMeetSemilattice_842 (coe d_isLattice_928 (coe v0)))
-- Relation.Binary.Lattice.Lattice._.poset
d_poset_992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 -> MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_992 ~v0 ~v1 ~v2 v3 = du_poset_992 v3
du_poset_992 ::
  T_Lattice_898 -> MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_992 v0
  = coe du_poset_240 (coe du_joinSemilattice_986 (coe v0))
-- Relation.Binary.Lattice.Lattice._.preorder
d_preorder_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_898 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_994 ~v0 ~v1 ~v2 v3 = du_preorder_994 v3
du_preorder_994 ::
  T_Lattice_898 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_994 v0
  = let v1 = coe du_joinSemilattice_986 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_240 (coe v1))
-- Relation.Binary.Lattice.IsDistributiveLattice
d_IsDistributiveLattice_1012 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsDistributiveLattice_1012
  = C_IsDistributiveLattice'46'constructor_27373 T_IsLattice_810
                                                 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Relation.Binary.Lattice.IsDistributiveLattice.isLattice
d_isLattice_1034 :: T_IsDistributiveLattice_1012 -> T_IsLattice_810
d_isLattice_1034 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_27373 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsDistributiveLattice.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_1036 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_1036 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_27373 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsDistributiveLattice._.antisym
d_antisym_1040 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1040 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0)))
-- Relation.Binary.Lattice.IsDistributiveLattice._.infimum
d_infimum_1042 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_1042 v0
  = coe d_infimum_838 (coe d_isLattice_1034 (coe v0))
-- Relation.Binary.Lattice.IsDistributiveLattice._.isEquivalence
d_isEquivalence_1044 ::
  T_IsDistributiveLattice_1012 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1044 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0))))
-- Relation.Binary.Lattice.IsDistributiveLattice._.isJoinSemilattice
d_isJoinSemilattice_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_1046 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isJoinSemilattice_1046 v8
du_isJoinSemilattice_1046 ::
  T_IsDistributiveLattice_1012 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_1046 v0
  = coe du_isJoinSemilattice_840 (coe d_isLattice_1034 (coe v0))
-- Relation.Binary.Lattice.IsDistributiveLattice._.isMeetSemilattice
d_isMeetSemilattice_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_1048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isMeetSemilattice_1048 v8
du_isMeetSemilattice_1048 ::
  T_IsDistributiveLattice_1012 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_1048 v0
  = coe du_isMeetSemilattice_842 (coe d_isLattice_1034 (coe v0))
-- Relation.Binary.Lattice.IsDistributiveLattice._.isPartialOrder
d_isPartialOrder_1050 ::
  T_IsDistributiveLattice_1012 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_1050 v0
  = coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0))
-- Relation.Binary.Lattice.IsDistributiveLattice._.isPreorder
d_isPreorder_1052 ::
  T_IsDistributiveLattice_1012 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1052 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0)))
-- Relation.Binary.Lattice.IsDistributiveLattice._.refl
d_refl_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny
d_refl_1054 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_refl_1054 v8
du_refl_1054 :: T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny
du_refl_1054 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsDistributiveLattice._.reflexive
d_reflexive_1056 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1056 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0))))
-- Relation.Binary.Lattice.IsDistributiveLattice._.supremum
d_supremum_1058 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1058 v0
  = coe d_supremum_836 (coe d_isLattice_1034 (coe v0))
-- Relation.Binary.Lattice.IsDistributiveLattice._.trans
d_trans_1060 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1060 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0))))
-- Relation.Binary.Lattice.IsDistributiveLattice._.x∧y≤x
d_x'8743'y'8804'x_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_1062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8743'y'8804'x_1062 v8
du_x'8743'y'8804'x_1062 ::
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_1062 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.IsDistributiveLattice._.x∧y≤y
d_x'8743'y'8804'y_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_1064 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8743'y'8804'y_1064 v8
du_x'8743'y'8804'y_1064 ::
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_1064 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.IsDistributiveLattice._.x≤x∨y
d_x'8804'x'8744'y_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_1066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_x'8804'x'8744'y_1066 v8
du_x'8804'x'8744'y_1066 ::
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_1066 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.IsDistributiveLattice._.y≤x∨y
d_y'8804'x'8744'y_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_1068 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_y'8804'x'8744'y_1068 v8
du_y'8804'x'8744'y_1068 ::
  T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_1068 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.IsDistributiveLattice._.∧-greatest
d_'8743''45'greatest_1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_1070 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8743''45'greatest_1070 v8
du_'8743''45'greatest_1070 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_1070 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.IsDistributiveLattice._.∨-least
d_'8744''45'least_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_1072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8744''45'least_1072 v8
du_'8744''45'least_1072 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_1072 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.IsDistributiveLattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_1074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1074 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8764''45'resp'45''8776'_1074 v8
du_'8764''45'resp'45''8776'_1074 ::
  T_IsDistributiveLattice_1012 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1074 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsDistributiveLattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1076 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 v8
  = du_'8764''45'resp'691''45''8776'_1076 v8
du_'8764''45'resp'691''45''8776'_1076 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1076 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsDistributiveLattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 v8
  = du_'8764''45'resp'737''45''8776'_1078 v8
du_'8764''45'resp'737''45''8776'_1078 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1078 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsDistributiveLattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_1082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1082 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1082 v8
du_isPartialEquivalence_1082 ::
  T_IsDistributiveLattice_1012 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1082 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v3))
-- Relation.Binary.Lattice.IsDistributiveLattice._.Eq.refl
d_refl_1084 :: T_IsDistributiveLattice_1012 -> AgdaAny -> AgdaAny
d_refl_1084 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0)))))
-- Relation.Binary.Lattice.IsDistributiveLattice._.Eq.reflexive
d_reflexive_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_1012 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1086 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1086 v8
du_reflexive_1086 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1086 v0
  = let v1 = d_isLattice_1034 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v3))
        v4
-- Relation.Binary.Lattice.IsDistributiveLattice._.Eq.sym
d_sym_1088 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1088 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0)))))
-- Relation.Binary.Lattice.IsDistributiveLattice._.Eq.trans
d_trans_1090 ::
  T_IsDistributiveLattice_1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1090 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_1034 (coe v0)))))
-- Relation.Binary.Lattice.DistributiveLattice
d_DistributiveLattice_1098 a0 a1 a2 = ()
data T_DistributiveLattice_1098
  = C_DistributiveLattice'46'constructor_30211 (AgdaAny ->
                                                AgdaAny -> AgdaAny)
                                               (AgdaAny -> AgdaAny -> AgdaAny)
                                               T_IsDistributiveLattice_1012
-- Relation.Binary.Lattice.DistributiveLattice.Carrier
d_Carrier_1118 :: T_DistributiveLattice_1098 -> ()
d_Carrier_1118 = erased
-- Relation.Binary.Lattice.DistributiveLattice._≈_
d__'8776'__1120 ::
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1120 = erased
-- Relation.Binary.Lattice.DistributiveLattice._≤_
d__'8804'__1122 ::
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> ()
d__'8804'__1122 = erased
-- Relation.Binary.Lattice.DistributiveLattice._∨_
d__'8744'__1124 ::
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__1124 v0
  = case coe v0 of
      C_DistributiveLattice'46'constructor_30211 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.DistributiveLattice._∧_
d__'8743'__1126 ::
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__1126 v0
  = case coe v0 of
      C_DistributiveLattice'46'constructor_30211 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.DistributiveLattice.isDistributiveLattice
d_isDistributiveLattice_1128 ::
  T_DistributiveLattice_1098 -> T_IsDistributiveLattice_1012
d_isDistributiveLattice_1128 v0
  = case coe v0 of
      C_DistributiveLattice'46'constructor_30211 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.DistributiveLattice._.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_1132 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_1132 v0
  = coe
      d_'8743''45'distrib'737''45''8744'_1036
      (coe d_isDistributiveLattice_1128 (coe v0))
-- Relation.Binary.Lattice.DistributiveLattice._.isLattice
d_isLattice_1136 :: T_DistributiveLattice_1098 -> T_IsLattice_810
d_isLattice_1136 v0
  = coe d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0))
-- Relation.Binary.Lattice.DistributiveLattice.lattice
d_lattice_1138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> T_Lattice_898
d_lattice_1138 ~v0 ~v1 ~v2 v3 = du_lattice_1138 v3
du_lattice_1138 :: T_DistributiveLattice_1098 -> T_Lattice_898
du_lattice_1138 v0
  = coe
      C_Lattice'46'constructor_24851 (d__'8744'__1124 (coe v0))
      (d__'8743'__1126 (coe v0))
      (d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0)))
-- Relation.Binary.Lattice.DistributiveLattice._.antisym
d_antisym_1142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1142 ~v0 ~v1 ~v2 v3 = du_antisym_1142 v3
du_antisym_1142 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_1142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe
         d_isPartialOrder_834
         (coe d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0))))
-- Relation.Binary.Lattice.DistributiveLattice._.infimum
d_infimum_1144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_1144 ~v0 ~v1 ~v2 v3 = du_infimum_1144 v3
du_infimum_1144 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_infimum_1144 v0
  = coe
      d_infimum_838
      (coe d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0)))
-- Relation.Binary.Lattice.DistributiveLattice._.isEquivalence
d_isEquivalence_1146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1146 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1146 v3
du_isEquivalence_1146 ::
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1146 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0)))))
-- Relation.Binary.Lattice.DistributiveLattice._.isJoinSemilattice
d_isJoinSemilattice_1148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_1148 ~v0 ~v1 ~v2 v3
  = du_isJoinSemilattice_1148 v3
du_isJoinSemilattice_1148 ::
  T_DistributiveLattice_1098 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_1148 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    coe du_isJoinSemilattice_840 (coe d_isLattice_928 (coe v1))
-- Relation.Binary.Lattice.DistributiveLattice._.isLattice
d_isLattice_1150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> T_IsLattice_810
d_isLattice_1150 ~v0 ~v1 ~v2 v3 = du_isLattice_1150 v3
du_isLattice_1150 :: T_DistributiveLattice_1098 -> T_IsLattice_810
du_isLattice_1150 v0
  = coe d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0))
-- Relation.Binary.Lattice.DistributiveLattice._.isMeetSemilattice
d_isMeetSemilattice_1152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_1152 ~v0 ~v1 ~v2 v3
  = du_isMeetSemilattice_1152 v3
du_isMeetSemilattice_1152 ::
  T_DistributiveLattice_1098 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_1152 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    coe du_isMeetSemilattice_842 (coe d_isLattice_928 (coe v1))
-- Relation.Binary.Lattice.DistributiveLattice._.isPartialOrder
d_isPartialOrder_1154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_1154 ~v0 ~v1 ~v2 v3 = du_isPartialOrder_1154 v3
du_isPartialOrder_1154 ::
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_isPartialOrder_1154 v0
  = coe
      d_isPartialOrder_834
      (coe d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0)))
-- Relation.Binary.Lattice.DistributiveLattice._.isPreorder
d_isPreorder_1156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1156 ~v0 ~v1 ~v2 v3 = du_isPreorder_1156 v3
du_isPreorder_1156 ::
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_1156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe
         d_isPartialOrder_834
         (coe d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0))))
-- Relation.Binary.Lattice.DistributiveLattice._.joinSemilattice
d_joinSemilattice_1158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> T_JoinSemilattice_170
d_joinSemilattice_1158 ~v0 ~v1 ~v2 v3 = du_joinSemilattice_1158 v3
du_joinSemilattice_1158 ::
  T_DistributiveLattice_1098 -> T_JoinSemilattice_170
du_joinSemilattice_1158 v0
  = coe du_joinSemilattice_986 (coe du_lattice_1138 (coe v0))
-- Relation.Binary.Lattice.DistributiveLattice._.meetSemilattice
d_meetSemilattice_1160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> T_MeetSemilattice_540
d_meetSemilattice_1160 ~v0 ~v1 ~v2 v3 = du_meetSemilattice_1160 v3
du_meetSemilattice_1160 ::
  T_DistributiveLattice_1098 -> T_MeetSemilattice_540
du_meetSemilattice_1160 v0
  = coe du_meetSemilattice_988 (coe du_lattice_1138 (coe v0))
-- Relation.Binary.Lattice.DistributiveLattice._.poset
d_poset_1162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_1162 ~v0 ~v1 ~v2 v3 = du_poset_1162 v3
du_poset_1162 ::
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_1162 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    coe du_poset_240 (coe du_joinSemilattice_986 (coe v1))
-- Relation.Binary.Lattice.DistributiveLattice._.preorder
d_preorder_1164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_1164 ~v0 ~v1 ~v2 v3 = du_preorder_1164 v3
du_preorder_1164 ::
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_1164 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = coe du_joinSemilattice_986 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_240 (coe v2))
-- Relation.Binary.Lattice.DistributiveLattice._.refl
d_refl_1166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny
d_refl_1166 ~v0 ~v1 ~v2 v3 = du_refl_1166 v3
du_refl_1166 :: T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny
du_refl_1166 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.DistributiveLattice._.reflexive
d_reflexive_1168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1168 ~v0 ~v1 ~v2 v3 = du_reflexive_1168 v3
du_reflexive_1168 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_1168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0)))))
-- Relation.Binary.Lattice.DistributiveLattice._.setoid
d_setoid_1170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1170 ~v0 ~v1 ~v2 v3 = du_setoid_1170 v3
du_setoid_1170 ::
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1170 v0
  = coe du_setoid_984 (coe du_lattice_1138 (coe v0))
-- Relation.Binary.Lattice.DistributiveLattice._.supremum
d_supremum_1172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1172 ~v0 ~v1 ~v2 v3 = du_supremum_1172 v3
du_supremum_1172 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_supremum_1172 v0
  = coe
      d_supremum_836
      (coe d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0)))
-- Relation.Binary.Lattice.DistributiveLattice._.trans
d_trans_1174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1174 ~v0 ~v1 ~v2 v3 = du_trans_1174 v3
du_trans_1174 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0)))))
-- Relation.Binary.Lattice.DistributiveLattice._.x∧y≤x
d_x'8743'y'8804'x_1176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_1176 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'x_1176 v3
du_x'8743'y'8804'x_1176 ::
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_1176 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.DistributiveLattice._.x∧y≤y
d_x'8743'y'8804'y_1178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_1178 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'y_1178 v3
du_x'8743'y'8804'y_1178 ::
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_1178 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.DistributiveLattice._.x≤x∨y
d_x'8804'x'8744'y_1180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_1180 ~v0 ~v1 ~v2 v3 = du_x'8804'x'8744'y_1180 v3
du_x'8804'x'8744'y_1180 ::
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_1180 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.DistributiveLattice._.y≤x∨y
d_y'8804'x'8744'y_1182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_1182 ~v0 ~v1 ~v2 v3 = du_y'8804'x'8744'y_1182 v3
du_y'8804'x'8744'y_1182 ::
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_1182 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.DistributiveLattice._.∧-greatest
d_'8743''45'greatest_1184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_1184 ~v0 ~v1 ~v2 v3
  = du_'8743''45'greatest_1184 v3
du_'8743''45'greatest_1184 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_1184 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.DistributiveLattice._.∨-least
d_'8744''45'least_1186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_1186 ~v0 ~v1 ~v2 v3 = du_'8744''45'least_1186 v3
du_'8744''45'least_1186 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_1186 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.DistributiveLattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_1188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1188 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_1188 v3
du_'8764''45'resp'45''8776'_1188 ::
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1188 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.DistributiveLattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1190 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_1190 v3
du_'8764''45'resp'691''45''8776'_1190 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1190 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.DistributiveLattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1192 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_1192 v3
du_'8764''45'resp'737''45''8776'_1192 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1192 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.DistributiveLattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1196 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1196 v3
du_isPartialEquivalence_1196 ::
  T_DistributiveLattice_1098 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1196 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v4))
-- Relation.Binary.Lattice.DistributiveLattice._.Eq.refl
d_refl_1198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny
d_refl_1198 ~v0 ~v1 ~v2 v3 = du_refl_1198 v3
du_refl_1198 :: T_DistributiveLattice_1098 -> AgdaAny -> AgdaAny
du_refl_1198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0))))))
-- Relation.Binary.Lattice.DistributiveLattice._.Eq.reflexive
d_reflexive_1200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1200 ~v0 ~v1 ~v2 v3 = du_reflexive_1200 v3
du_reflexive_1200 ::
  T_DistributiveLattice_1098 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1200 v0
  = let v1 = coe du_lattice_1138 (coe v0) in
    let v2 = d_isLattice_928 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v4))
        v5
-- Relation.Binary.Lattice.DistributiveLattice._.Eq.sym
d_sym_1202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1202 ~v0 ~v1 ~v2 v3 = du_sym_1202 v3
du_sym_1202 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0))))))
-- Relation.Binary.Lattice.DistributiveLattice._.Eq.trans
d_trans_1204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1204 ~v0 ~v1 ~v2 v3 = du_trans_1204 v3
du_trans_1204 ::
  T_DistributiveLattice_1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1204 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1034 (coe d_isDistributiveLattice_1128 (coe v0))))))
-- Relation.Binary.Lattice.IsBoundedLattice
d_IsBoundedLattice_1226 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_IsBoundedLattice_1226
  = C_IsBoundedLattice'46'constructor_32977 T_IsLattice_810
                                            (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
-- Relation.Binary.Lattice.IsBoundedLattice.isLattice
d_isLattice_1254 :: T_IsBoundedLattice_1226 -> T_IsLattice_810
d_isLattice_1254 v0
  = case coe v0 of
      C_IsBoundedLattice'46'constructor_32977 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsBoundedLattice.maximum
d_maximum_1256 :: T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny
d_maximum_1256 v0
  = case coe v0 of
      C_IsBoundedLattice'46'constructor_32977 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsBoundedLattice.minimum
d_minimum_1258 :: T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny
d_minimum_1258 v0
  = case coe v0 of
      C_IsBoundedLattice'46'constructor_32977 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsBoundedLattice._.antisym
d_antisym_1262 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1262 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0)))
-- Relation.Binary.Lattice.IsBoundedLattice._.infimum
d_infimum_1264 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_1264 v0
  = coe d_infimum_838 (coe d_isLattice_1254 (coe v0))
-- Relation.Binary.Lattice.IsBoundedLattice._.isEquivalence
d_isEquivalence_1266 ::
  T_IsBoundedLattice_1226 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1266 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedLattice._.isJoinSemilattice
d_isJoinSemilattice_1268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBoundedLattice_1226 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_1268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         v10
  = du_isJoinSemilattice_1268 v10
du_isJoinSemilattice_1268 ::
  T_IsBoundedLattice_1226 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_1268 v0
  = coe du_isJoinSemilattice_840 (coe d_isLattice_1254 (coe v0))
-- Relation.Binary.Lattice.IsBoundedLattice._.isMeetSemilattice
d_isMeetSemilattice_1270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBoundedLattice_1226 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_1270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         v10
  = du_isMeetSemilattice_1270 v10
du_isMeetSemilattice_1270 ::
  T_IsBoundedLattice_1226 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_1270 v0
  = coe du_isMeetSemilattice_842 (coe d_isLattice_1254 (coe v0))
-- Relation.Binary.Lattice.IsBoundedLattice._.isPartialOrder
d_isPartialOrder_1272 ::
  T_IsBoundedLattice_1226 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_1272 v0
  = coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0))
-- Relation.Binary.Lattice.IsBoundedLattice._.isPreorder
d_isPreorder_1274 ::
  T_IsBoundedLattice_1226 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1274 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0)))
-- Relation.Binary.Lattice.IsBoundedLattice._.refl
d_refl_1276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny
d_refl_1276 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_refl_1276 v10
du_refl_1276 :: T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny
du_refl_1276 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedLattice._.reflexive
d_reflexive_1278 ::
  T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1278 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedLattice._.supremum
d_supremum_1280 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1280 v0
  = coe d_supremum_836 (coe d_isLattice_1254 (coe v0))
-- Relation.Binary.Lattice.IsBoundedLattice._.trans
d_trans_1282 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1282 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0))))
-- Relation.Binary.Lattice.IsBoundedLattice._.x∧y≤x
d_x'8743'y'8804'x_1284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_1284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_x'8743'y'8804'x_1284 v10
du_x'8743'y'8804'x_1284 ::
  T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_1284 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.IsBoundedLattice._.x∧y≤y
d_x'8743'y'8804'y_1286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_1286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_x'8743'y'8804'y_1286 v10
du_x'8743'y'8804'y_1286 ::
  T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_1286 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.IsBoundedLattice._.x≤x∨y
d_x'8804'x'8744'y_1288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_1288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_x'8804'x'8744'y_1288 v10
du_x'8804'x'8744'y_1288 ::
  T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_1288 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.IsBoundedLattice._.y≤x∨y
d_y'8804'x'8744'y_1290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_1290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_y'8804'x'8744'y_1290 v10
du_y'8804'x'8744'y_1290 ::
  T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_1290 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.IsBoundedLattice._.∧-greatest
d_'8743''45'greatest_1292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_1292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          v10
  = du_'8743''45'greatest_1292 v10
du_'8743''45'greatest_1292 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_1292 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v1))
-- Relation.Binary.Lattice.IsBoundedLattice._.∨-least
d_'8744''45'least_1294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_1294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_'8744''45'least_1294 v10
du_'8744''45'least_1294 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_1294 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v1))
-- Relation.Binary.Lattice.IsBoundedLattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_1296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10
  = du_'8764''45'resp'45''8776'_1296 v10
du_'8764''45'resp'45''8776'_1296 ::
  T_IsBoundedLattice_1226 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1296 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedLattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 v10
  = du_'8764''45'resp'691''45''8776'_1298 v10
du_'8764''45'resp'691''45''8776'_1298 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1298 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedLattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 v10
  = du_'8764''45'resp'737''45''8776'_1300 v10
du_'8764''45'resp'737''45''8776'_1300 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1300 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v2))
-- Relation.Binary.Lattice.IsBoundedLattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_1304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            v10
  = du_isPartialEquivalence_1304 v10
du_isPartialEquivalence_1304 ::
  T_IsBoundedLattice_1226 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1304 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v3))
-- Relation.Binary.Lattice.IsBoundedLattice._.Eq.refl
d_refl_1306 :: T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny
d_refl_1306 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0)))))
-- Relation.Binary.Lattice.IsBoundedLattice._.Eq.reflexive
d_reflexive_1308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_reflexive_1308 v10
du_reflexive_1308 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1308 v0
  = let v1 = d_isLattice_1254 (coe v0) in
    let v2 = d_isPartialOrder_834 (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v3))
        v4
-- Relation.Binary.Lattice.IsBoundedLattice._.Eq.sym
d_sym_1310 ::
  T_IsBoundedLattice_1226 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0)))))
-- Relation.Binary.Lattice.IsBoundedLattice._.Eq.trans
d_trans_1312 ::
  T_IsBoundedLattice_1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1312 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe d_isPartialOrder_834 (coe d_isLattice_1254 (coe v0)))))
-- Relation.Binary.Lattice.IsBoundedLattice.isBoundedJoinSemilattice
d_isBoundedJoinSemilattice_1314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 -> T_IsBoundedJoinSemilattice_262
d_isBoundedJoinSemilattice_1314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10
  = du_isBoundedJoinSemilattice_1314 v10
du_isBoundedJoinSemilattice_1314 ::
  T_IsBoundedLattice_1226 -> T_IsBoundedJoinSemilattice_262
du_isBoundedJoinSemilattice_1314 v0
  = coe
      C_IsBoundedJoinSemilattice'46'constructor_6997
      (coe du_isJoinSemilattice_840 (coe d_isLattice_1254 (coe v0)))
      (coe d_minimum_1258 (coe v0))
-- Relation.Binary.Lattice.IsBoundedLattice.isBoundedMeetSemilattice
d_isBoundedMeetSemilattice_1316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBoundedLattice_1226 -> T_IsBoundedMeetSemilattice_632
d_isBoundedMeetSemilattice_1316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10
  = du_isBoundedMeetSemilattice_1316 v10
du_isBoundedMeetSemilattice_1316 ::
  T_IsBoundedLattice_1226 -> T_IsBoundedMeetSemilattice_632
du_isBoundedMeetSemilattice_1316 v0
  = coe
      C_IsBoundedMeetSemilattice'46'constructor_16751
      (coe du_isMeetSemilattice_842 (coe d_isLattice_1254 (coe v0)))
      (coe d_maximum_1256 (coe v0))
-- Relation.Binary.Lattice.BoundedLattice
d_BoundedLattice_1324 a0 a1 a2 = ()
data T_BoundedLattice_1324
  = C_BoundedLattice'46'constructor_37245 (AgdaAny ->
                                           AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
                                          T_IsBoundedLattice_1226
-- Relation.Binary.Lattice.BoundedLattice.Carrier
d_Carrier_1348 :: T_BoundedLattice_1324 -> ()
d_Carrier_1348 = erased
-- Relation.Binary.Lattice.BoundedLattice._≈_
d__'8776'__1350 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1350 = erased
-- Relation.Binary.Lattice.BoundedLattice._≤_
d__'8804'__1352 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> ()
d__'8804'__1352 = erased
-- Relation.Binary.Lattice.BoundedLattice._∨_
d__'8744'__1354 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__1354 v0
  = case coe v0 of
      C_BoundedLattice'46'constructor_37245 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedLattice._∧_
d__'8743'__1356 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__1356 v0
  = case coe v0 of
      C_BoundedLattice'46'constructor_37245 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedLattice.⊤
d_'8868'_1358 :: T_BoundedLattice_1324 -> AgdaAny
d_'8868'_1358 v0
  = case coe v0 of
      C_BoundedLattice'46'constructor_37245 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedLattice.⊥
d_'8869'_1360 :: T_BoundedLattice_1324 -> AgdaAny
d_'8869'_1360 v0
  = case coe v0 of
      C_BoundedLattice'46'constructor_37245 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedLattice.isBoundedLattice
d_isBoundedLattice_1362 ::
  T_BoundedLattice_1324 -> T_IsBoundedLattice_1226
d_isBoundedLattice_1362 v0
  = case coe v0 of
      C_BoundedLattice'46'constructor_37245 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BoundedLattice._.antisym
d_antisym_1366 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1366 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe
         d_isPartialOrder_834
         (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0))))
-- Relation.Binary.Lattice.BoundedLattice._.infimum
d_infimum_1368 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_1368 v0
  = coe
      d_infimum_838
      (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0)))
-- Relation.Binary.Lattice.BoundedLattice._.isBoundedJoinSemilattice
d_isBoundedJoinSemilattice_1370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_IsBoundedJoinSemilattice_262
d_isBoundedJoinSemilattice_1370 ~v0 ~v1 ~v2 v3
  = du_isBoundedJoinSemilattice_1370 v3
du_isBoundedJoinSemilattice_1370 ::
  T_BoundedLattice_1324 -> T_IsBoundedJoinSemilattice_262
du_isBoundedJoinSemilattice_1370 v0
  = coe
      du_isBoundedJoinSemilattice_1314
      (coe d_isBoundedLattice_1362 (coe v0))
-- Relation.Binary.Lattice.BoundedLattice._.isBoundedMeetSemilattice
d_isBoundedMeetSemilattice_1372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_IsBoundedMeetSemilattice_632
d_isBoundedMeetSemilattice_1372 ~v0 ~v1 ~v2 v3
  = du_isBoundedMeetSemilattice_1372 v3
du_isBoundedMeetSemilattice_1372 ::
  T_BoundedLattice_1324 -> T_IsBoundedMeetSemilattice_632
du_isBoundedMeetSemilattice_1372 v0
  = coe
      du_isBoundedMeetSemilattice_1316
      (coe d_isBoundedLattice_1362 (coe v0))
-- Relation.Binary.Lattice.BoundedLattice._.isEquivalence
d_isEquivalence_1374 ::
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1374 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0)))))
-- Relation.Binary.Lattice.BoundedLattice._.isJoinSemilattice
d_isJoinSemilattice_1376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_1376 ~v0 ~v1 ~v2 v3
  = du_isJoinSemilattice_1376 v3
du_isJoinSemilattice_1376 ::
  T_BoundedLattice_1324 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_1376 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    coe du_isJoinSemilattice_840 (coe d_isLattice_1254 (coe v1))
-- Relation.Binary.Lattice.BoundedLattice._.isLattice
d_isLattice_1378 :: T_BoundedLattice_1324 -> T_IsLattice_810
d_isLattice_1378 v0
  = coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0))
-- Relation.Binary.Lattice.BoundedLattice._.isMeetSemilattice
d_isMeetSemilattice_1380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_1380 ~v0 ~v1 ~v2 v3
  = du_isMeetSemilattice_1380 v3
du_isMeetSemilattice_1380 ::
  T_BoundedLattice_1324 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_1380 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    coe du_isMeetSemilattice_842 (coe d_isLattice_1254 (coe v1))
-- Relation.Binary.Lattice.BoundedLattice._.isPartialOrder
d_isPartialOrder_1382 ::
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_1382 v0
  = coe
      d_isPartialOrder_834
      (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0)))
-- Relation.Binary.Lattice.BoundedLattice._.isPreorder
d_isPreorder_1384 ::
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe
         d_isPartialOrder_834
         (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0))))
-- Relation.Binary.Lattice.BoundedLattice._.maximum
d_maximum_1386 :: T_BoundedLattice_1324 -> AgdaAny -> AgdaAny
d_maximum_1386 v0
  = coe d_maximum_1256 (coe d_isBoundedLattice_1362 (coe v0))
-- Relation.Binary.Lattice.BoundedLattice._.minimum
d_minimum_1388 :: T_BoundedLattice_1324 -> AgdaAny -> AgdaAny
d_minimum_1388 v0
  = coe d_minimum_1258 (coe d_isBoundedLattice_1362 (coe v0))
-- Relation.Binary.Lattice.BoundedLattice._.refl
d_refl_1390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny
d_refl_1390 ~v0 ~v1 ~v2 v3 = du_refl_1390 v3
du_refl_1390 :: T_BoundedLattice_1324 -> AgdaAny -> AgdaAny
du_refl_1390 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedLattice._.reflexive
d_reflexive_1392 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1392 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0)))))
-- Relation.Binary.Lattice.BoundedLattice._.supremum
d_supremum_1394 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1394 v0
  = coe
      d_supremum_836
      (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0)))
-- Relation.Binary.Lattice.BoundedLattice._.trans
d_trans_1396 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0)))))
-- Relation.Binary.Lattice.BoundedLattice._.x∧y≤x
d_x'8743'y'8804'x_1398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_1398 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'x_1398 v3
du_x'8743'y'8804'x_1398 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_1398 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.BoundedLattice._.x∧y≤y
d_x'8743'y'8804'y_1400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_1400 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'y_1400 v3
du_x'8743'y'8804'y_1400 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_1400 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.BoundedLattice._.x≤x∨y
d_x'8804'x'8744'y_1402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_1402 ~v0 ~v1 ~v2 v3 = du_x'8804'x'8744'y_1402 v3
du_x'8804'x'8744'y_1402 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_1402 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.BoundedLattice._.y≤x∨y
d_y'8804'x'8744'y_1404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_1404 ~v0 ~v1 ~v2 v3 = du_y'8804'x'8744'y_1404 v3
du_y'8804'x'8744'y_1404 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_1404 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.BoundedLattice._.∧-greatest
d_'8743''45'greatest_1406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_1406 ~v0 ~v1 ~v2 v3
  = du_'8743''45'greatest_1406 v3
du_'8743''45'greatest_1406 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_1406 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.BoundedLattice._.∨-least
d_'8744''45'least_1408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_1408 ~v0 ~v1 ~v2 v3 = du_'8744''45'least_1408 v3
du_'8744''45'least_1408 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_1408 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.BoundedLattice._.∼-resp-≈
d_'8764''45'resp'45''8776'_1410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1410 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_1410 v3
du_'8764''45'resp'45''8776'_1410 ::
  T_BoundedLattice_1324 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1410 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedLattice._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1412 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_1412 v3
du_'8764''45'resp'691''45''8776'_1412 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1412 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedLattice._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1414 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_1414 v3
du_'8764''45'resp'737''45''8776'_1414 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1414 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.BoundedLattice._.Eq.isPartialEquivalence
d_isPartialEquivalence_1418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1418 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1418 v3
du_isPartialEquivalence_1418 ::
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1418 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v4))
-- Relation.Binary.Lattice.BoundedLattice._.Eq.refl
d_refl_1420 :: T_BoundedLattice_1324 -> AgdaAny -> AgdaAny
d_refl_1420 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0))))))
-- Relation.Binary.Lattice.BoundedLattice._.Eq.reflexive
d_reflexive_1422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1422 ~v0 ~v1 ~v2 v3 = du_reflexive_1422 v3
du_reflexive_1422 ::
  T_BoundedLattice_1324 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1422 v0
  = let v1 = d_isBoundedLattice_1362 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v4))
        v5
-- Relation.Binary.Lattice.BoundedLattice._.Eq.sym
d_sym_1424 ::
  T_BoundedLattice_1324 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1424 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0))))))
-- Relation.Binary.Lattice.BoundedLattice._.Eq.trans
d_trans_1426 ::
  T_BoundedLattice_1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1426 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0))))))
-- Relation.Binary.Lattice.BoundedLattice.boundedJoinSemilattice
d_boundedJoinSemilattice_1428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_BoundedJoinSemilattice_336
d_boundedJoinSemilattice_1428 ~v0 ~v1 ~v2 v3
  = du_boundedJoinSemilattice_1428 v3
du_boundedJoinSemilattice_1428 ::
  T_BoundedLattice_1324 -> T_BoundedJoinSemilattice_336
du_boundedJoinSemilattice_1428 v0
  = coe
      C_BoundedJoinSemilattice'46'constructor_9245
      (d__'8744'__1354 (coe v0)) (d_'8869'_1360 (coe v0))
      (coe
         du_isBoundedJoinSemilattice_1314
         (coe d_isBoundedLattice_1362 (coe v0)))
-- Relation.Binary.Lattice.BoundedLattice.boundedMeetSemilattice
d_boundedMeetSemilattice_1430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_BoundedMeetSemilattice_706
d_boundedMeetSemilattice_1430 ~v0 ~v1 ~v2 v3
  = du_boundedMeetSemilattice_1430 v3
du_boundedMeetSemilattice_1430 ::
  T_BoundedLattice_1324 -> T_BoundedMeetSemilattice_706
du_boundedMeetSemilattice_1430 v0
  = coe
      C_BoundedMeetSemilattice'46'constructor_18999
      (d__'8743'__1356 (coe v0)) (d_'8868'_1358 (coe v0))
      (coe
         du_isBoundedMeetSemilattice_1316
         (coe d_isBoundedLattice_1362 (coe v0)))
-- Relation.Binary.Lattice.BoundedLattice.lattice
d_lattice_1432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_Lattice_898
d_lattice_1432 ~v0 ~v1 ~v2 v3 = du_lattice_1432 v3
du_lattice_1432 :: T_BoundedLattice_1324 -> T_Lattice_898
du_lattice_1432 v0
  = coe
      C_Lattice'46'constructor_24851 (d__'8744'__1354 (coe v0))
      (d__'8743'__1356 (coe v0))
      (d_isLattice_1254 (coe d_isBoundedLattice_1362 (coe v0)))
-- Relation.Binary.Lattice.BoundedLattice._.joinSemilattice
d_joinSemilattice_1436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_JoinSemilattice_170
d_joinSemilattice_1436 ~v0 ~v1 ~v2 v3 = du_joinSemilattice_1436 v3
du_joinSemilattice_1436 ::
  T_BoundedLattice_1324 -> T_JoinSemilattice_170
du_joinSemilattice_1436 v0
  = coe du_joinSemilattice_986 (coe du_lattice_1432 (coe v0))
-- Relation.Binary.Lattice.BoundedLattice._.meetSemilattice
d_meetSemilattice_1438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 -> T_MeetSemilattice_540
d_meetSemilattice_1438 ~v0 ~v1 ~v2 v3 = du_meetSemilattice_1438 v3
du_meetSemilattice_1438 ::
  T_BoundedLattice_1324 -> T_MeetSemilattice_540
du_meetSemilattice_1438 v0
  = coe du_meetSemilattice_988 (coe du_lattice_1432 (coe v0))
-- Relation.Binary.Lattice.BoundedLattice._.poset
d_poset_1440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_1440 ~v0 ~v1 ~v2 v3 = du_poset_1440 v3
du_poset_1440 ::
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_1440 v0
  = let v1 = coe du_lattice_1432 (coe v0) in
    coe du_poset_240 (coe du_joinSemilattice_986 (coe v1))
-- Relation.Binary.Lattice.BoundedLattice._.preorder
d_preorder_1442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_1442 ~v0 ~v1 ~v2 v3 = du_preorder_1442 v3
du_preorder_1442 ::
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_1442 v0
  = let v1 = coe du_lattice_1432 (coe v0) in
    let v2 = coe du_joinSemilattice_986 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_240 (coe v2))
-- Relation.Binary.Lattice.BoundedLattice._.setoid
d_setoid_1444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1444 ~v0 ~v1 ~v2 v3 = du_setoid_1444 v3
du_setoid_1444 ::
  T_BoundedLattice_1324 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1444 v0
  = coe du_setoid_984 (coe du_lattice_1432 (coe v0))
-- Relation.Binary.Lattice.IsHeytingAlgebra
d_IsHeytingAlgebra_1468 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T_IsHeytingAlgebra_1468
  = C_IsHeytingAlgebra'46'constructor_40487 T_IsBoundedLattice_1226
                                            (AgdaAny ->
                                             AgdaAny ->
                                             AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Relation.Binary.Lattice.IsHeytingAlgebra.isBoundedLattice
d_isBoundedLattice_1496 ::
  T_IsHeytingAlgebra_1468 -> T_IsBoundedLattice_1226
d_isBoundedLattice_1496 v0
  = case coe v0 of
      C_IsHeytingAlgebra'46'constructor_40487 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsHeytingAlgebra.exponential
d_exponential_1498 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_exponential_1498 v0
  = case coe v0 of
      C_IsHeytingAlgebra'46'constructor_40487 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsHeytingAlgebra.transpose-⇨
d_transpose'45''8680'_1506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transpose'45''8680'_1506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11 v12 v13 v14
  = du_transpose'45''8680'_1506 v11 v12 v13 v14
du_transpose'45''8680'_1506 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transpose'45''8680'_1506 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_exponential_1498 v0 v1 v2 v3)
-- Relation.Binary.Lattice.IsHeytingAlgebra.transpose-∧
d_transpose'45''8743'_1522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transpose'45''8743'_1522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11 v12 v13 v14
  = du_transpose'45''8743'_1522 v11 v12 v13 v14
du_transpose'45''8743'_1522 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transpose'45''8743'_1522 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_exponential_1498 v0 v1 v2 v3)
-- Relation.Binary.Lattice.IsHeytingAlgebra._.antisym
d_antisym_1534 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1534 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe
         d_isPartialOrder_834
         (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0))))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.infimum
d_infimum_1536 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_1536 v0
  = coe
      d_infimum_838
      (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0)))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.isBoundedJoinSemilattice
d_isBoundedJoinSemilattice_1538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 -> T_IsBoundedJoinSemilattice_262
d_isBoundedJoinSemilattice_1538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 ~v10 v11
  = du_isBoundedJoinSemilattice_1538 v11
du_isBoundedJoinSemilattice_1538 ::
  T_IsHeytingAlgebra_1468 -> T_IsBoundedJoinSemilattice_262
du_isBoundedJoinSemilattice_1538 v0
  = coe
      du_isBoundedJoinSemilattice_1314
      (coe d_isBoundedLattice_1496 (coe v0))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.isBoundedMeetSemilattice
d_isBoundedMeetSemilattice_1540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 -> T_IsBoundedMeetSemilattice_632
d_isBoundedMeetSemilattice_1540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 ~v10 v11
  = du_isBoundedMeetSemilattice_1540 v11
du_isBoundedMeetSemilattice_1540 ::
  T_IsHeytingAlgebra_1468 -> T_IsBoundedMeetSemilattice_632
du_isBoundedMeetSemilattice_1540 v0
  = coe
      du_isBoundedMeetSemilattice_1316
      (coe d_isBoundedLattice_1496 (coe v0))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.isEquivalence
d_isEquivalence_1542 ::
  T_IsHeytingAlgebra_1468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1542 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0)))))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.isJoinSemilattice
d_isJoinSemilattice_1544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingAlgebra_1468 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_1544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isJoinSemilattice_1544 v11
du_isJoinSemilattice_1544 ::
  T_IsHeytingAlgebra_1468 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_1544 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    coe du_isJoinSemilattice_840 (coe d_isLattice_1254 (coe v1))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.isLattice
d_isLattice_1546 :: T_IsHeytingAlgebra_1468 -> T_IsLattice_810
d_isLattice_1546 v0
  = coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.isMeetSemilattice
d_isMeetSemilattice_1548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingAlgebra_1468 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_1548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isMeetSemilattice_1548 v11
du_isMeetSemilattice_1548 ::
  T_IsHeytingAlgebra_1468 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_1548 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    coe du_isMeetSemilattice_842 (coe d_isLattice_1254 (coe v1))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.isPartialOrder
d_isPartialOrder_1550 ::
  T_IsHeytingAlgebra_1468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_1550 v0
  = coe
      d_isPartialOrder_834
      (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0)))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.isPreorder
d_isPreorder_1552 ::
  T_IsHeytingAlgebra_1468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1552 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe
         d_isPartialOrder_834
         (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0))))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.maximum
d_maximum_1554 :: T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny
d_maximum_1554 v0
  = coe d_maximum_1256 (coe d_isBoundedLattice_1496 (coe v0))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.minimum
d_minimum_1556 :: T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny
d_minimum_1556 v0
  = coe d_minimum_1258 (coe d_isBoundedLattice_1496 (coe v0))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.refl
d_refl_1558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny
d_refl_1558 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_refl_1558 v11
du_refl_1558 :: T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny
du_refl_1558 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.reflexive
d_reflexive_1560 ::
  T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1560 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0)))))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.supremum
d_supremum_1562 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1562 v0
  = coe
      d_supremum_836
      (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0)))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.trans
d_trans_1564 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0)))))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.x∧y≤x
d_x'8743'y'8804'x_1566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_1566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_x'8743'y'8804'x_1566 v11
du_x'8743'y'8804'x_1566 ::
  T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_1566 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.x∧y≤y
d_x'8743'y'8804'y_1568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_1568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_x'8743'y'8804'y_1568 v11
du_x'8743'y'8804'y_1568 ::
  T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_1568 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.x≤x∨y
d_x'8804'x'8744'y_1570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_1570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_x'8804'x'8744'y_1570 v11
du_x'8804'x'8744'y_1570 ::
  T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_1570 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.y≤x∨y
d_y'8804'x'8744'y_1572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_1572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_y'8804'x'8744'y_1572 v11
du_y'8804'x'8744'y_1572 ::
  T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_1572 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.∧-greatest
d_'8743''45'greatest_1574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_1574 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8743''45'greatest_1574 v11
du_'8743''45'greatest_1574 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_1574 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v2))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.∨-least
d_'8744''45'least_1576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_1576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_'8744''45'least_1576 v11
du_'8744''45'least_1576 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_1576 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v2))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.∼-resp-≈
d_'8764''45'resp'45''8776'_1578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1578 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 ~v10 v11
  = du_'8764''45'resp'45''8776'_1578 v11
du_'8764''45'resp'45''8776'_1578 ::
  T_IsHeytingAlgebra_1468 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1578 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 v11
  = du_'8764''45'resp'691''45''8776'_1580 v11
du_'8764''45'resp'691''45''8776'_1580 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1580 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 v11
  = du_'8764''45'resp'737''45''8776'_1582 v11
du_'8764''45'resp'737''45''8776'_1582 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1582 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.isPartialEquivalence
d_isPartialEquivalence_1586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 v11
  = du_isPartialEquivalence_1586 v11
du_isPartialEquivalence_1586 ::
  T_IsHeytingAlgebra_1468 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1586 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v4))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.refl
d_refl_1588 :: T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny
d_refl_1588 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0))))))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.reflexive
d_reflexive_1590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsHeytingAlgebra_1468 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_1590 v11
du_reflexive_1590 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1590 v0
  = let v1 = d_isBoundedLattice_1496 (coe v0) in
    let v2 = d_isLattice_1254 (coe v1) in
    let v3 = d_isPartialOrder_834 (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v4))
        v5
-- Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.sym
d_sym_1592 ::
  T_IsHeytingAlgebra_1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1592 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0))))))
-- Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.trans
d_trans_1594 ::
  T_IsHeytingAlgebra_1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1594 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe d_isLattice_1254 (coe d_isBoundedLattice_1496 (coe v0))))))
-- Relation.Binary.Lattice.HeytingAlgebra
d_HeytingAlgebra_1602 a0 a1 a2 = ()
data T_HeytingAlgebra_1602
  = C_HeytingAlgebra'46'constructor_46509 (AgdaAny ->
                                           AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
                                          T_IsHeytingAlgebra_1468
-- Relation.Binary.Lattice.HeytingAlgebra.Carrier
d_Carrier_1628 :: T_HeytingAlgebra_1602 -> ()
d_Carrier_1628 = erased
-- Relation.Binary.Lattice.HeytingAlgebra._≈_
d__'8776'__1630 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1630 = erased
-- Relation.Binary.Lattice.HeytingAlgebra._≤_
d__'8804'__1632 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> ()
d__'8804'__1632 = erased
-- Relation.Binary.Lattice.HeytingAlgebra._∨_
d__'8744'__1634 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__1634 v0
  = case coe v0 of
      C_HeytingAlgebra'46'constructor_46509 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.HeytingAlgebra._∧_
d__'8743'__1636 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__1636 v0
  = case coe v0 of
      C_HeytingAlgebra'46'constructor_46509 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.HeytingAlgebra._⇨_
d__'8680'__1638 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8680'__1638 v0
  = case coe v0 of
      C_HeytingAlgebra'46'constructor_46509 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.HeytingAlgebra.⊤
d_'8868'_1640 :: T_HeytingAlgebra_1602 -> AgdaAny
d_'8868'_1640 v0
  = case coe v0 of
      C_HeytingAlgebra'46'constructor_46509 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.HeytingAlgebra.⊥
d_'8869'_1642 :: T_HeytingAlgebra_1602 -> AgdaAny
d_'8869'_1642 v0
  = case coe v0 of
      C_HeytingAlgebra'46'constructor_46509 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.HeytingAlgebra.isHeytingAlgebra
d_isHeytingAlgebra_1644 ::
  T_HeytingAlgebra_1602 -> T_IsHeytingAlgebra_1468
d_isHeytingAlgebra_1644 v0
  = case coe v0 of
      C_HeytingAlgebra'46'constructor_46509 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.HeytingAlgebra.boundedLattice
d_boundedLattice_1646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_BoundedLattice_1324
d_boundedLattice_1646 ~v0 ~v1 ~v2 v3 = du_boundedLattice_1646 v3
du_boundedLattice_1646 ::
  T_HeytingAlgebra_1602 -> T_BoundedLattice_1324
du_boundedLattice_1646 v0
  = coe
      C_BoundedLattice'46'constructor_37245 (d__'8744'__1634 (coe v0))
      (d__'8743'__1636 (coe v0)) (d_'8868'_1640 (coe v0))
      (d_'8869'_1642 (coe v0))
      (d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))
-- Relation.Binary.Lattice.HeytingAlgebra._.exponential
d_exponential_1650 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_exponential_1650 v0
  = coe d_exponential_1498 (coe d_isHeytingAlgebra_1644 (coe v0))
-- Relation.Binary.Lattice.HeytingAlgebra._.transpose-⇨
d_transpose'45''8680'_1652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transpose'45''8680'_1652 ~v0 ~v1 ~v2 v3
  = du_transpose'45''8680'_1652 v3
du_transpose'45''8680'_1652 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transpose'45''8680'_1652 v0
  = coe
      du_transpose'45''8680'_1506 (coe d_isHeytingAlgebra_1644 (coe v0))
-- Relation.Binary.Lattice.HeytingAlgebra._.transpose-∧
d_transpose'45''8743'_1654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transpose'45''8743'_1654 ~v0 ~v1 ~v2 v3
  = du_transpose'45''8743'_1654 v3
du_transpose'45''8743'_1654 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transpose'45''8743'_1654 v0
  = coe
      du_transpose'45''8743'_1522 (coe d_isHeytingAlgebra_1644 (coe v0))
-- Relation.Binary.Lattice.HeytingAlgebra._.antisym
d_antisym_1658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1658 ~v0 ~v1 ~v2 v3 = du_antisym_1658 v3
du_antisym_1658 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_1658 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe
         d_isPartialOrder_834
         (coe
            d_isLattice_1254
            (coe
               d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))))
-- Relation.Binary.Lattice.HeytingAlgebra._.boundedJoinSemilattice
d_boundedJoinSemilattice_1660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_BoundedJoinSemilattice_336
d_boundedJoinSemilattice_1660 ~v0 ~v1 ~v2 v3
  = du_boundedJoinSemilattice_1660 v3
du_boundedJoinSemilattice_1660 ::
  T_HeytingAlgebra_1602 -> T_BoundedJoinSemilattice_336
du_boundedJoinSemilattice_1660 v0
  = coe
      du_boundedJoinSemilattice_1428
      (coe du_boundedLattice_1646 (coe v0))
-- Relation.Binary.Lattice.HeytingAlgebra._.boundedMeetSemilattice
d_boundedMeetSemilattice_1662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_BoundedMeetSemilattice_706
d_boundedMeetSemilattice_1662 ~v0 ~v1 ~v2 v3
  = du_boundedMeetSemilattice_1662 v3
du_boundedMeetSemilattice_1662 ::
  T_HeytingAlgebra_1602 -> T_BoundedMeetSemilattice_706
du_boundedMeetSemilattice_1662 v0
  = coe
      du_boundedMeetSemilattice_1430
      (coe du_boundedLattice_1646 (coe v0))
-- Relation.Binary.Lattice.HeytingAlgebra._.infimum
d_infimum_1664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_1664 ~v0 ~v1 ~v2 v3 = du_infimum_1664 v3
du_infimum_1664 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_infimum_1664 v0
  = coe
      d_infimum_838
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0))))
-- Relation.Binary.Lattice.HeytingAlgebra._.isBoundedJoinSemilattice
d_isBoundedJoinSemilattice_1666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_IsBoundedJoinSemilattice_262
d_isBoundedJoinSemilattice_1666 ~v0 ~v1 ~v2 v3
  = du_isBoundedJoinSemilattice_1666 v3
du_isBoundedJoinSemilattice_1666 ::
  T_HeytingAlgebra_1602 -> T_IsBoundedJoinSemilattice_262
du_isBoundedJoinSemilattice_1666 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    coe
      du_isBoundedJoinSemilattice_1314
      (coe d_isBoundedLattice_1362 (coe v1))
-- Relation.Binary.Lattice.HeytingAlgebra._.isBoundedLattice
d_isBoundedLattice_1668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_IsBoundedLattice_1226
d_isBoundedLattice_1668 ~v0 ~v1 ~v2 v3
  = du_isBoundedLattice_1668 v3
du_isBoundedLattice_1668 ::
  T_HeytingAlgebra_1602 -> T_IsBoundedLattice_1226
du_isBoundedLattice_1668 v0
  = coe
      d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0))
-- Relation.Binary.Lattice.HeytingAlgebra._.isBoundedMeetSemilattice
d_isBoundedMeetSemilattice_1670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_IsBoundedMeetSemilattice_632
d_isBoundedMeetSemilattice_1670 ~v0 ~v1 ~v2 v3
  = du_isBoundedMeetSemilattice_1670 v3
du_isBoundedMeetSemilattice_1670 ::
  T_HeytingAlgebra_1602 -> T_IsBoundedMeetSemilattice_632
du_isBoundedMeetSemilattice_1670 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    coe
      du_isBoundedMeetSemilattice_1316
      (coe d_isBoundedLattice_1362 (coe v1))
-- Relation.Binary.Lattice.HeytingAlgebra._.isEquivalence
d_isEquivalence_1672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1672 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1672 v3
du_isEquivalence_1672 ::
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1672 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0))))))
-- Relation.Binary.Lattice.HeytingAlgebra._.isJoinSemilattice
d_isJoinSemilattice_1674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_1674 ~v0 ~v1 ~v2 v3
  = du_isJoinSemilattice_1674 v3
du_isJoinSemilattice_1674 ::
  T_HeytingAlgebra_1602 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_1674 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    coe du_isJoinSemilattice_840 (coe d_isLattice_1254 (coe v2))
-- Relation.Binary.Lattice.HeytingAlgebra._.isLattice
d_isLattice_1676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_IsLattice_810
d_isLattice_1676 ~v0 ~v1 ~v2 v3 = du_isLattice_1676 v3
du_isLattice_1676 :: T_HeytingAlgebra_1602 -> T_IsLattice_810
du_isLattice_1676 v0
  = coe
      d_isLattice_1254
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))
-- Relation.Binary.Lattice.HeytingAlgebra._.isMeetSemilattice
d_isMeetSemilattice_1678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_1678 ~v0 ~v1 ~v2 v3
  = du_isMeetSemilattice_1678 v3
du_isMeetSemilattice_1678 ::
  T_HeytingAlgebra_1602 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_1678 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    coe du_isMeetSemilattice_842 (coe d_isLattice_1254 (coe v2))
-- Relation.Binary.Lattice.HeytingAlgebra._.isPartialOrder
d_isPartialOrder_1680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_1680 ~v0 ~v1 ~v2 v3 = du_isPartialOrder_1680 v3
du_isPartialOrder_1680 ::
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_isPartialOrder_1680 v0
  = coe
      d_isPartialOrder_834
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0))))
-- Relation.Binary.Lattice.HeytingAlgebra._.isPreorder
d_isPreorder_1682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1682 ~v0 ~v1 ~v2 v3 = du_isPreorder_1682 v3
du_isPreorder_1682 ::
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_1682 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe
         d_isPartialOrder_834
         (coe
            d_isLattice_1254
            (coe
               d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))))
-- Relation.Binary.Lattice.HeytingAlgebra._.joinSemilattice
d_joinSemilattice_1684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_JoinSemilattice_170
d_joinSemilattice_1684 ~v0 ~v1 ~v2 v3 = du_joinSemilattice_1684 v3
du_joinSemilattice_1684 ::
  T_HeytingAlgebra_1602 -> T_JoinSemilattice_170
du_joinSemilattice_1684 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    coe du_joinSemilattice_986 (coe du_lattice_1432 (coe v1))
-- Relation.Binary.Lattice.HeytingAlgebra._.lattice
d_lattice_1686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_Lattice_898
d_lattice_1686 ~v0 ~v1 ~v2 v3 = du_lattice_1686 v3
du_lattice_1686 :: T_HeytingAlgebra_1602 -> T_Lattice_898
du_lattice_1686 v0
  = coe du_lattice_1432 (coe du_boundedLattice_1646 (coe v0))
-- Relation.Binary.Lattice.HeytingAlgebra._.maximum
d_maximum_1688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny
d_maximum_1688 ~v0 ~v1 ~v2 v3 = du_maximum_1688 v3
du_maximum_1688 :: T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny
du_maximum_1688 v0
  = coe
      d_maximum_1256
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))
-- Relation.Binary.Lattice.HeytingAlgebra._.meetSemilattice
d_meetSemilattice_1690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> T_MeetSemilattice_540
d_meetSemilattice_1690 ~v0 ~v1 ~v2 v3 = du_meetSemilattice_1690 v3
du_meetSemilattice_1690 ::
  T_HeytingAlgebra_1602 -> T_MeetSemilattice_540
du_meetSemilattice_1690 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    coe du_meetSemilattice_988 (coe du_lattice_1432 (coe v1))
-- Relation.Binary.Lattice.HeytingAlgebra._.minimum
d_minimum_1692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny
d_minimum_1692 ~v0 ~v1 ~v2 v3 = du_minimum_1692 v3
du_minimum_1692 :: T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny
du_minimum_1692 v0
  = coe
      d_minimum_1258
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))
-- Relation.Binary.Lattice.HeytingAlgebra._.poset
d_poset_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_1694 ~v0 ~v1 ~v2 v3 = du_poset_1694 v3
du_poset_1694 ::
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_1694 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = coe du_lattice_1432 (coe v1) in
    coe du_poset_240 (coe du_joinSemilattice_986 (coe v2))
-- Relation.Binary.Lattice.HeytingAlgebra._.preorder
d_preorder_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_1696 ~v0 ~v1 ~v2 v3 = du_preorder_1696 v3
du_preorder_1696 ::
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_1696 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = coe du_lattice_1432 (coe v1) in
    let v3 = coe du_joinSemilattice_986 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_240 (coe v3))
-- Relation.Binary.Lattice.HeytingAlgebra._.refl
d_refl_1698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny
d_refl_1698 ~v0 ~v1 ~v2 v3 = du_refl_1698 v3
du_refl_1698 :: T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny
du_refl_1698 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Lattice.HeytingAlgebra._.reflexive
d_reflexive_1700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1700 ~v0 ~v1 ~v2 v3 = du_reflexive_1700 v3
du_reflexive_1700 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_1700 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0))))))
-- Relation.Binary.Lattice.HeytingAlgebra._.setoid
d_setoid_1702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1702 ~v0 ~v1 ~v2 v3 = du_setoid_1702 v3
du_setoid_1702 ::
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1702 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    coe du_setoid_984 (coe du_lattice_1432 (coe v1))
-- Relation.Binary.Lattice.HeytingAlgebra._.supremum
d_supremum_1704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1704 ~v0 ~v1 ~v2 v3 = du_supremum_1704 v3
du_supremum_1704 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_supremum_1704 v0
  = coe
      d_supremum_836
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0))))
-- Relation.Binary.Lattice.HeytingAlgebra._.trans
d_trans_1706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1706 ~v0 ~v1 ~v2 v3 = du_trans_1706 v3
du_trans_1706 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0))))))
-- Relation.Binary.Lattice.HeytingAlgebra._.x∧y≤x
d_x'8743'y'8804'x_1708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_1708 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'x_1708 v3
du_x'8743'y'8804'x_1708 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_1708 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v3))
-- Relation.Binary.Lattice.HeytingAlgebra._.x∧y≤y
d_x'8743'y'8804'y_1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_1710 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'y_1710 v3
du_x'8743'y'8804'y_1710 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_1710 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v3))
-- Relation.Binary.Lattice.HeytingAlgebra._.x≤x∨y
d_x'8804'x'8744'y_1712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_1712 ~v0 ~v1 ~v2 v3 = du_x'8804'x'8744'y_1712 v3
du_x'8804'x'8744'y_1712 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_1712 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v3))
-- Relation.Binary.Lattice.HeytingAlgebra._.y≤x∨y
d_y'8804'x'8744'y_1714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_1714 ~v0 ~v1 ~v2 v3 = du_y'8804'x'8744'y_1714 v3
du_y'8804'x'8744'y_1714 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_1714 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v3))
-- Relation.Binary.Lattice.HeytingAlgebra._.∧-greatest
d_'8743''45'greatest_1716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_1716 ~v0 ~v1 ~v2 v3
  = du_'8743''45'greatest_1716 v3
du_'8743''45'greatest_1716 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_1716 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v3))
-- Relation.Binary.Lattice.HeytingAlgebra._.∨-least
d_'8744''45'least_1718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_1718 ~v0 ~v1 ~v2 v3 = du_'8744''45'least_1718 v3
du_'8744''45'least_1718 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_1718 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v3))
-- Relation.Binary.Lattice.HeytingAlgebra._.∼-resp-≈
d_'8764''45'resp'45''8776'_1720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1720 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_1720 v3
du_'8764''45'resp'45''8776'_1720 ::
  T_HeytingAlgebra_1602 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1720 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Lattice.HeytingAlgebra._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1722 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_1722 v3
du_'8764''45'resp'691''45''8776'_1722 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1722 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Lattice.HeytingAlgebra._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1724 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_1724 v3
du_'8764''45'resp'737''45''8776'_1724 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1724 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Lattice.HeytingAlgebra._.Eq.isPartialEquivalence
d_isPartialEquivalence_1728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1728 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1728 v3
du_isPartialEquivalence_1728 ::
  T_HeytingAlgebra_1602 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1728 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    let v5
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v5))
-- Relation.Binary.Lattice.HeytingAlgebra._.Eq.refl
d_refl_1730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny
d_refl_1730 ~v0 ~v1 ~v2 v3 = du_refl_1730 v3
du_refl_1730 :: T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny
du_refl_1730 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))))))
-- Relation.Binary.Lattice.HeytingAlgebra._.Eq.reflexive
d_reflexive_1732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1732 ~v0 ~v1 ~v2 v3 = du_reflexive_1732 v3
du_reflexive_1732 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1732 v0
  = let v1 = coe du_boundedLattice_1646 (coe v0) in
    let v2 = d_isBoundedLattice_1362 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    let v5
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v5))
        v6
-- Relation.Binary.Lattice.HeytingAlgebra._.Eq.sym
d_sym_1734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1734 ~v0 ~v1 ~v2 v3 = du_sym_1734 v3
du_sym_1734 ::
  T_HeytingAlgebra_1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1734 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))))))
-- Relation.Binary.Lattice.HeytingAlgebra._.Eq.trans
d_trans_1736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1736 ~v0 ~v1 ~v2 v3 = du_trans_1736 v3
du_trans_1736 ::
  T_HeytingAlgebra_1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1736 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v0)))))))
-- Relation.Binary.Lattice.IsBooleanAlgebra
d_IsBooleanAlgebra_1760 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
newtype T_IsBooleanAlgebra_1760
  = C_IsBooleanAlgebra'46'constructor_49901 T_IsHeytingAlgebra_1468
-- Relation.Binary.Lattice.IsBooleanAlgebra._⇨_
d__'8680'__1792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8680'__1792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 ~v9 ~v10 ~v11 v12
                v13
  = du__'8680'__1792 v6 v8 v12 v13
du__'8680'__1792 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8680'__1792 v0 v1 v2 v3 = coe v0 (coe v1 v2) v3
-- Relation.Binary.Lattice.IsBooleanAlgebra.isHeytingAlgebra
d_isHeytingAlgebra_1798 ::
  T_IsBooleanAlgebra_1760 -> T_IsHeytingAlgebra_1468
d_isHeytingAlgebra_1798 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_49901 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.IsBooleanAlgebra._.antisym
d_antisym_1802 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1802 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe
         d_isPartialOrder_834
         (coe
            d_isLattice_1254
            (coe
               d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0)))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.exponential
d_exponential_1804 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_exponential_1804 v0
  = coe d_exponential_1498 (coe d_isHeytingAlgebra_1798 (coe v0))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.infimum
d_infimum_1806 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_1806 v0
  = coe
      d_infimum_838
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedJoinSemilattice
d_isBoundedJoinSemilattice_1808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 -> T_IsBoundedJoinSemilattice_262
d_isBoundedJoinSemilattice_1808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 ~v10 v11
  = du_isBoundedJoinSemilattice_1808 v11
du_isBoundedJoinSemilattice_1808 ::
  T_IsBooleanAlgebra_1760 -> T_IsBoundedJoinSemilattice_262
du_isBoundedJoinSemilattice_1808 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    coe
      du_isBoundedJoinSemilattice_1314
      (coe d_isBoundedLattice_1496 (coe v1))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedLattice
d_isBoundedLattice_1810 ::
  T_IsBooleanAlgebra_1760 -> T_IsBoundedLattice_1226
d_isBoundedLattice_1810 v0
  = coe
      d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedMeetSemilattice
d_isBoundedMeetSemilattice_1812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 -> T_IsBoundedMeetSemilattice_632
d_isBoundedMeetSemilattice_1812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 ~v10 v11
  = du_isBoundedMeetSemilattice_1812 v11
du_isBoundedMeetSemilattice_1812 ::
  T_IsBooleanAlgebra_1760 -> T_IsBoundedMeetSemilattice_632
du_isBoundedMeetSemilattice_1812 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    coe
      du_isBoundedMeetSemilattice_1316
      (coe d_isBoundedLattice_1496 (coe v1))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isEquivalence
d_isEquivalence_1814 ::
  T_IsBooleanAlgebra_1760 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1814 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0))))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isJoinSemilattice
d_isJoinSemilattice_1816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1760 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_1816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isJoinSemilattice_1816 v11
du_isJoinSemilattice_1816 ::
  T_IsBooleanAlgebra_1760 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_1816 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    coe du_isJoinSemilattice_840 (coe d_isLattice_1254 (coe v2))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isLattice
d_isLattice_1818 :: T_IsBooleanAlgebra_1760 -> T_IsLattice_810
d_isLattice_1818 v0
  = coe
      d_isLattice_1254
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0)))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isMeetSemilattice
d_isMeetSemilattice_1820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1760 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_1820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                         ~v10 v11
  = du_isMeetSemilattice_1820 v11
du_isMeetSemilattice_1820 ::
  T_IsBooleanAlgebra_1760 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_1820 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    coe du_isMeetSemilattice_842 (coe d_isLattice_1254 (coe v2))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isPartialOrder
d_isPartialOrder_1822 ::
  T_IsBooleanAlgebra_1760 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_1822 v0
  = coe
      d_isPartialOrder_834
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.isPreorder
d_isPreorder_1824 ::
  T_IsBooleanAlgebra_1760 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1824 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe
         d_isPartialOrder_834
         (coe
            d_isLattice_1254
            (coe
               d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0)))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.maximum
d_maximum_1826 :: T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny
d_maximum_1826 v0
  = coe
      d_maximum_1256
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0)))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.minimum
d_minimum_1828 :: T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny
d_minimum_1828 v0
  = coe
      d_minimum_1258
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0)))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.refl
d_refl_1830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny
d_refl_1830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_refl_1830 v11
du_refl_1830 :: T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny
du_refl_1830 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.reflexive
d_reflexive_1832 ::
  T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1832 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0))))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.supremum
d_supremum_1834 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1834 v0
  = coe
      d_supremum_836
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.trans
d_trans_1836 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0))))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.transpose-⇨
d_transpose'45''8680'_1838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transpose'45''8680'_1838 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_transpose'45''8680'_1838 v11
du_transpose'45''8680'_1838 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transpose'45''8680'_1838 v0
  = coe
      du_transpose'45''8680'_1506 (coe d_isHeytingAlgebra_1798 (coe v0))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.transpose-∧
d_transpose'45''8743'_1840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transpose'45''8743'_1840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                           ~v10 v11
  = du_transpose'45''8743'_1840 v11
du_transpose'45''8743'_1840 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transpose'45''8743'_1840 v0
  = coe
      du_transpose'45''8743'_1522 (coe d_isHeytingAlgebra_1798 (coe v0))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.x∧y≤x
d_x'8743'y'8804'x_1842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_1842 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_x'8743'y'8804'x_1842 v11
du_x'8743'y'8804'x_1842 ::
  T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_1842 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v3))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.x∧y≤y
d_x'8743'y'8804'y_1844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_1844 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_x'8743'y'8804'y_1844 v11
du_x'8743'y'8804'y_1844 ::
  T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_1844 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v3))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.x≤x∨y
d_x'8804'x'8744'y_1846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_1846 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_x'8804'x'8744'y_1846 v11
du_x'8804'x'8744'y_1846 ::
  T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_1846 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v3))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.y≤x∨y
d_y'8804'x'8744'y_1848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_1848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_y'8804'x'8744'y_1848 v11
du_y'8804'x'8744'y_1848 ::
  T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_1848 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v3))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.∧-greatest
d_'8743''45'greatest_1850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_1850 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                          ~v10 v11
  = du_'8743''45'greatest_1850 v11
du_'8743''45'greatest_1850 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_1850 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v3))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.∨-least
d_'8744''45'least_1852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_1852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                       v11
  = du_'8744''45'least_1852 v11
du_'8744''45'least_1852 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_1852 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v3))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.∼-resp-≈
d_'8764''45'resp'45''8776'_1854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 ~v10 v11
  = du_'8764''45'resp'45''8776'_1854 v11
du_'8764''45'resp'45''8776'_1854 ::
  T_IsBooleanAlgebra_1760 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1854 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 v11
  = du_'8764''45'resp'691''45''8776'_1856 v11
du_'8764''45'resp'691''45''8776'_1856 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1856 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1858 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                     ~v7 ~v8 ~v9 ~v10 v11
  = du_'8764''45'resp'737''45''8776'_1858 v11
du_'8764''45'resp'737''45''8776'_1858 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1858 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.isPartialEquivalence
d_isPartialEquivalence_1862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1862 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9
                            ~v10 v11
  = du_isPartialEquivalence_1862 v11
du_isPartialEquivalence_1862 ::
  T_IsBooleanAlgebra_1760 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1862 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    let v5
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v5))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.refl
d_refl_1864 :: T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny
d_refl_1864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0)))))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.reflexive
d_reflexive_1866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1760 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11
  = du_reflexive_1866 v11
du_reflexive_1866 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1866 v0
  = let v1 = d_isHeytingAlgebra_1798 (coe v0) in
    let v2 = d_isBoundedLattice_1496 (coe v1) in
    let v3 = d_isLattice_1254 (coe v2) in
    let v4 = d_isPartialOrder_834 (coe v3) in
    let v5
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v5))
        v6
-- Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.sym
d_sym_1868 ::
  T_IsBooleanAlgebra_1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1868 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0)))))))
-- Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.trans
d_trans_1870 ::
  T_IsBooleanAlgebra_1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1798 (coe v0)))))))
-- Relation.Binary.Lattice.BooleanAlgebra
d_BooleanAlgebra_1878 a0 a1 a2 = ()
data T_BooleanAlgebra_1878
  = C_BooleanAlgebra'46'constructor_55007 (AgdaAny ->
                                           AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                          AgdaAny AgdaAny T_IsBooleanAlgebra_1760
-- Relation.Binary.Lattice.BooleanAlgebra.Carrier
d_Carrier_1904 :: T_BooleanAlgebra_1878 -> ()
d_Carrier_1904 = erased
-- Relation.Binary.Lattice.BooleanAlgebra._≈_
d__'8776'__1906 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1906 = erased
-- Relation.Binary.Lattice.BooleanAlgebra._≤_
d__'8804'__1908 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> ()
d__'8804'__1908 = erased
-- Relation.Binary.Lattice.BooleanAlgebra._∨_
d__'8744'__1910 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__1910 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_55007 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BooleanAlgebra._∧_
d__'8743'__1912 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__1912 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_55007 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BooleanAlgebra.¬_
d_'172'__1914 :: T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
d_'172'__1914 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_55007 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BooleanAlgebra.⊤
d_'8868'_1916 :: T_BooleanAlgebra_1878 -> AgdaAny
d_'8868'_1916 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_55007 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BooleanAlgebra.⊥
d_'8869'_1918 :: T_BooleanAlgebra_1878 -> AgdaAny
d_'8869'_1918 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_55007 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BooleanAlgebra.isBooleanAlgebra
d_isBooleanAlgebra_1920 ::
  T_BooleanAlgebra_1878 -> T_IsBooleanAlgebra_1760
d_isBooleanAlgebra_1920 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_55007 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Lattice.BooleanAlgebra._.isHeytingAlgebra
d_isHeytingAlgebra_1924 ::
  T_BooleanAlgebra_1878 -> T_IsHeytingAlgebra_1468
d_isHeytingAlgebra_1924 v0
  = coe
      d_isHeytingAlgebra_1798 (coe d_isBooleanAlgebra_1920 (coe v0))
-- Relation.Binary.Lattice.BooleanAlgebra.heytingAlgebra
d_heytingAlgebra_1926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_HeytingAlgebra_1602
d_heytingAlgebra_1926 ~v0 ~v1 ~v2 v3 = du_heytingAlgebra_1926 v3
du_heytingAlgebra_1926 ::
  T_BooleanAlgebra_1878 -> T_HeytingAlgebra_1602
du_heytingAlgebra_1926 v0
  = coe
      C_HeytingAlgebra'46'constructor_46509 (d__'8744'__1910 (coe v0))
      (d__'8743'__1912 (coe v0))
      (\ v1 -> coe d__'8744'__1910 v0 (coe d_'172'__1914 v0 v1))
      (d_'8868'_1916 (coe v0)) (d_'8869'_1918 (coe v0))
      (d_isHeytingAlgebra_1798 (coe d_isBooleanAlgebra_1920 (coe v0)))
-- Relation.Binary.Lattice.BooleanAlgebra._._⇨_
d__'8680'__1930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8680'__1930 ~v0 ~v1 ~v2 v3 v4 = du__'8680'__1930 v3 v4
du__'8680'__1930 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8680'__1930 v0 v1
  = coe d__'8744'__1910 v0 (coe d_'172'__1914 v0 v1)
-- Relation.Binary.Lattice.BooleanAlgebra._.antisym
d_antisym_1932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1932 ~v0 ~v1 ~v2 v3 = du_antisym_1932 v3
du_antisym_1932 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_1932 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
      (coe
         d_isPartialOrder_834
         (coe
            d_isLattice_1254
            (coe
               d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1)))))
-- Relation.Binary.Lattice.BooleanAlgebra._.boundedJoinSemilattice
d_boundedJoinSemilattice_1934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_BoundedJoinSemilattice_336
d_boundedJoinSemilattice_1934 ~v0 ~v1 ~v2 v3
  = du_boundedJoinSemilattice_1934 v3
du_boundedJoinSemilattice_1934 ::
  T_BooleanAlgebra_1878 -> T_BoundedJoinSemilattice_336
du_boundedJoinSemilattice_1934 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      du_boundedJoinSemilattice_1428
      (coe du_boundedLattice_1646 (coe v1))
-- Relation.Binary.Lattice.BooleanAlgebra._.boundedLattice
d_boundedLattice_1936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_BoundedLattice_1324
d_boundedLattice_1936 ~v0 ~v1 ~v2 v3 = du_boundedLattice_1936 v3
du_boundedLattice_1936 ::
  T_BooleanAlgebra_1878 -> T_BoundedLattice_1324
du_boundedLattice_1936 v0
  = coe du_boundedLattice_1646 (coe du_heytingAlgebra_1926 (coe v0))
-- Relation.Binary.Lattice.BooleanAlgebra._.boundedMeetSemilattice
d_boundedMeetSemilattice_1938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_BoundedMeetSemilattice_706
d_boundedMeetSemilattice_1938 ~v0 ~v1 ~v2 v3
  = du_boundedMeetSemilattice_1938 v3
du_boundedMeetSemilattice_1938 ::
  T_BooleanAlgebra_1878 -> T_BoundedMeetSemilattice_706
du_boundedMeetSemilattice_1938 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      du_boundedMeetSemilattice_1430
      (coe du_boundedLattice_1646 (coe v1))
-- Relation.Binary.Lattice.BooleanAlgebra._.exponential
d_exponential_1940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_exponential_1940 ~v0 ~v1 ~v2 v3 = du_exponential_1940 v3
du_exponential_1940 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_exponential_1940 v0
  = coe
      d_exponential_1498
      (coe
         d_isHeytingAlgebra_1798 (coe d_isBooleanAlgebra_1920 (coe v0)))
-- Relation.Binary.Lattice.BooleanAlgebra._.infimum
d_infimum_1942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_infimum_1942 ~v0 ~v1 ~v2 v3 = du_infimum_1942 v3
du_infimum_1942 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_infimum_1942 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      d_infimum_838
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1))))
-- Relation.Binary.Lattice.BooleanAlgebra._.isBoundedJoinSemilattice
d_isBoundedJoinSemilattice_1944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_IsBoundedJoinSemilattice_262
d_isBoundedJoinSemilattice_1944 ~v0 ~v1 ~v2 v3
  = du_isBoundedJoinSemilattice_1944 v3
du_isBoundedJoinSemilattice_1944 ::
  T_BooleanAlgebra_1878 -> T_IsBoundedJoinSemilattice_262
du_isBoundedJoinSemilattice_1944 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    coe
      du_isBoundedJoinSemilattice_1314
      (coe d_isBoundedLattice_1362 (coe v2))
-- Relation.Binary.Lattice.BooleanAlgebra._.isBoundedLattice
d_isBoundedLattice_1946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_IsBoundedLattice_1226
d_isBoundedLattice_1946 ~v0 ~v1 ~v2 v3
  = du_isBoundedLattice_1946 v3
du_isBoundedLattice_1946 ::
  T_BooleanAlgebra_1878 -> T_IsBoundedLattice_1226
du_isBoundedLattice_1946 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1))
-- Relation.Binary.Lattice.BooleanAlgebra._.isBoundedMeetSemilattice
d_isBoundedMeetSemilattice_1948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_IsBoundedMeetSemilattice_632
d_isBoundedMeetSemilattice_1948 ~v0 ~v1 ~v2 v3
  = du_isBoundedMeetSemilattice_1948 v3
du_isBoundedMeetSemilattice_1948 ::
  T_BooleanAlgebra_1878 -> T_IsBoundedMeetSemilattice_632
du_isBoundedMeetSemilattice_1948 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    coe
      du_isBoundedMeetSemilattice_1316
      (coe d_isBoundedLattice_1362 (coe v2))
-- Relation.Binary.Lattice.BooleanAlgebra._.isEquivalence
d_isEquivalence_1950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1950 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1950 v3
du_isEquivalence_1950 ::
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1950 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1))))))
-- Relation.Binary.Lattice.BooleanAlgebra._.isHeytingAlgebra
d_isHeytingAlgebra_1952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_IsHeytingAlgebra_1468
d_isHeytingAlgebra_1952 ~v0 ~v1 ~v2 v3
  = du_isHeytingAlgebra_1952 v3
du_isHeytingAlgebra_1952 ::
  T_BooleanAlgebra_1878 -> T_IsHeytingAlgebra_1468
du_isHeytingAlgebra_1952 v0
  = coe
      d_isHeytingAlgebra_1798 (coe d_isBooleanAlgebra_1920 (coe v0))
-- Relation.Binary.Lattice.BooleanAlgebra._.isJoinSemilattice
d_isJoinSemilattice_1954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_IsJoinSemilattice_68
d_isJoinSemilattice_1954 ~v0 ~v1 ~v2 v3
  = du_isJoinSemilattice_1954 v3
du_isJoinSemilattice_1954 ::
  T_BooleanAlgebra_1878 -> T_IsJoinSemilattice_68
du_isJoinSemilattice_1954 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    coe du_isJoinSemilattice_840 (coe d_isLattice_1254 (coe v3))
-- Relation.Binary.Lattice.BooleanAlgebra._.isLattice
d_isLattice_1956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_IsLattice_810
d_isLattice_1956 ~v0 ~v1 ~v2 v3 = du_isLattice_1956 v3
du_isLattice_1956 :: T_BooleanAlgebra_1878 -> T_IsLattice_810
du_isLattice_1956 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      d_isLattice_1254
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1)))
-- Relation.Binary.Lattice.BooleanAlgebra._.isMeetSemilattice
d_isMeetSemilattice_1958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_IsMeetSemilattice_438
d_isMeetSemilattice_1958 ~v0 ~v1 ~v2 v3
  = du_isMeetSemilattice_1958 v3
du_isMeetSemilattice_1958 ::
  T_BooleanAlgebra_1878 -> T_IsMeetSemilattice_438
du_isMeetSemilattice_1958 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    coe du_isMeetSemilattice_842 (coe d_isLattice_1254 (coe v3))
-- Relation.Binary.Lattice.BooleanAlgebra._.isPartialOrder
d_isPartialOrder_1960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_1960 ~v0 ~v1 ~v2 v3 = du_isPartialOrder_1960 v3
du_isPartialOrder_1960 ::
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_isPartialOrder_1960 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      d_isPartialOrder_834
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1))))
-- Relation.Binary.Lattice.BooleanAlgebra._.isPreorder
d_isPreorder_1962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1962 ~v0 ~v1 ~v2 v3 = du_isPreorder_1962 v3
du_isPreorder_1962 ::
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_1962 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
      (coe
         d_isPartialOrder_834
         (coe
            d_isLattice_1254
            (coe
               d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1)))))
-- Relation.Binary.Lattice.BooleanAlgebra._.joinSemilattice
d_joinSemilattice_1964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_JoinSemilattice_170
d_joinSemilattice_1964 ~v0 ~v1 ~v2 v3 = du_joinSemilattice_1964 v3
du_joinSemilattice_1964 ::
  T_BooleanAlgebra_1878 -> T_JoinSemilattice_170
du_joinSemilattice_1964 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    coe du_joinSemilattice_986 (coe du_lattice_1432 (coe v2))
-- Relation.Binary.Lattice.BooleanAlgebra._.lattice
d_lattice_1966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_Lattice_898
d_lattice_1966 ~v0 ~v1 ~v2 v3 = du_lattice_1966 v3
du_lattice_1966 :: T_BooleanAlgebra_1878 -> T_Lattice_898
du_lattice_1966 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe du_lattice_1432 (coe du_boundedLattice_1646 (coe v1))
-- Relation.Binary.Lattice.BooleanAlgebra._.maximum
d_maximum_1968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
d_maximum_1968 ~v0 ~v1 ~v2 v3 = du_maximum_1968 v3
du_maximum_1968 :: T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
du_maximum_1968 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      d_maximum_1256
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1)))
-- Relation.Binary.Lattice.BooleanAlgebra._.meetSemilattice
d_meetSemilattice_1970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> T_MeetSemilattice_540
d_meetSemilattice_1970 ~v0 ~v1 ~v2 v3 = du_meetSemilattice_1970 v3
du_meetSemilattice_1970 ::
  T_BooleanAlgebra_1878 -> T_MeetSemilattice_540
du_meetSemilattice_1970 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    coe du_meetSemilattice_988 (coe du_lattice_1432 (coe v2))
-- Relation.Binary.Lattice.BooleanAlgebra._.minimum
d_minimum_1972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
d_minimum_1972 ~v0 ~v1 ~v2 v3 = du_minimum_1972 v3
du_minimum_1972 :: T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
du_minimum_1972 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      d_minimum_1258
      (coe
         d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1)))
-- Relation.Binary.Lattice.BooleanAlgebra._.poset
d_poset_1974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_1974 ~v0 ~v1 ~v2 v3 = du_poset_1974 v3
du_poset_1974 ::
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_1974 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = coe du_lattice_1432 (coe v2) in
    coe du_poset_240 (coe du_joinSemilattice_986 (coe v3))
-- Relation.Binary.Lattice.BooleanAlgebra._.preorder
d_preorder_1976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_1976 ~v0 ~v1 ~v2 v3 = du_preorder_1976 v3
du_preorder_1976 ::
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_1976 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = coe du_lattice_1432 (coe v2) in
    let v4 = coe du_joinSemilattice_986 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326
      (coe du_poset_240 (coe v4))
-- Relation.Binary.Lattice.BooleanAlgebra._.refl
d_refl_1978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
d_refl_1978 ~v0 ~v1 ~v2 v3 = du_refl_1978 v3
du_refl_1978 :: T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
du_refl_1978 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    let v5 = d_isPartialOrder_834 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v5))
-- Relation.Binary.Lattice.BooleanAlgebra._.reflexive
d_reflexive_1980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1980 ~v0 ~v1 ~v2 v3 = du_reflexive_1980 v3
du_reflexive_1980 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_1980 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1))))))
-- Relation.Binary.Lattice.BooleanAlgebra._.setoid
d_setoid_1982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1982 ~v0 ~v1 ~v2 v3 = du_setoid_1982 v3
du_setoid_1982 ::
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1982 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    coe du_setoid_984 (coe du_lattice_1432 (coe v2))
-- Relation.Binary.Lattice.BooleanAlgebra._.supremum
d_supremum_1984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1984 ~v0 ~v1 ~v2 v3 = du_supremum_1984 v3
du_supremum_1984 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_supremum_1984 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      d_supremum_836
      (coe
         d_isLattice_1254
         (coe
            d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1))))
-- Relation.Binary.Lattice.BooleanAlgebra._.trans
d_trans_1986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1986 ~v0 ~v1 ~v2 v3 = du_trans_1986 v3
du_trans_1986 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1986 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            d_isPartialOrder_834
            (coe
               d_isLattice_1254
               (coe
                  d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1))))))
-- Relation.Binary.Lattice.BooleanAlgebra._.transpose-⇨
d_transpose'45''8680'_1988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transpose'45''8680'_1988 ~v0 ~v1 ~v2 v3
  = du_transpose'45''8680'_1988 v3
du_transpose'45''8680'_1988 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transpose'45''8680'_1988 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      du_transpose'45''8680'_1506 (coe d_isHeytingAlgebra_1644 (coe v1))
-- Relation.Binary.Lattice.BooleanAlgebra._.transpose-∧
d_transpose'45''8743'_1990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transpose'45''8743'_1990 ~v0 ~v1 ~v2 v3
  = du_transpose'45''8743'_1990 v3
du_transpose'45''8743'_1990 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transpose'45''8743'_1990 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      du_transpose'45''8743'_1522 (coe d_isHeytingAlgebra_1644 (coe v1))
-- Relation.Binary.Lattice.BooleanAlgebra._.x∧y≤x
d_x'8743'y'8804'x_1992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'x_1992 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'x_1992 v3
du_x'8743'y'8804'x_1992 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'x_1992 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    coe du_x'8743'y'8804'x_466 (coe du_isMeetSemilattice_842 (coe v4))
-- Relation.Binary.Lattice.BooleanAlgebra._.x∧y≤y
d_x'8743'y'8804'y_1994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8743'y'8804'y_1994 ~v0 ~v1 ~v2 v3 = du_x'8743'y'8804'y_1994 v3
du_x'8743'y'8804'y_1994 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8743'y'8804'y_1994 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    coe du_x'8743'y'8804'y_478 (coe du_isMeetSemilattice_842 (coe v4))
-- Relation.Binary.Lattice.BooleanAlgebra._.x≤x∨y
d_x'8804'x'8744'y_1996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'x'8744'y_1996 ~v0 ~v1 ~v2 v3 = du_x'8804'x'8744'y_1996 v3
du_x'8804'x'8744'y_1996 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'x'8744'y_1996 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    coe du_x'8804'x'8744'y_96 (coe du_isJoinSemilattice_840 (coe v4))
-- Relation.Binary.Lattice.BooleanAlgebra._.y≤x∨y
d_y'8804'x'8744'y_1998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
d_y'8804'x'8744'y_1998 ~v0 ~v1 ~v2 v3 = du_y'8804'x'8744'y_1998 v3
du_y'8804'x'8744'y_1998 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny
du_y'8804'x'8744'y_1998 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    coe du_y'8804'x'8744'y_108 (coe du_isJoinSemilattice_840 (coe v4))
-- Relation.Binary.Lattice.BooleanAlgebra._.∧-greatest
d_'8743''45'greatest_2000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'greatest_2000 ~v0 ~v1 ~v2 v3
  = du_'8743''45'greatest_2000 v3
du_'8743''45'greatest_2000 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'greatest_2000 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    coe
      du_'8743''45'greatest_492 (coe du_isMeetSemilattice_842 (coe v4))
-- Relation.Binary.Lattice.BooleanAlgebra._.∨-least
d_'8744''45'least_2002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'least_2002 ~v0 ~v1 ~v2 v3 = du_'8744''45'least_2002 v3
du_'8744''45'least_2002 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'least_2002 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    coe du_'8744''45'least_122 (coe du_isJoinSemilattice_840 (coe v4))
-- Relation.Binary.Lattice.BooleanAlgebra._.∼-resp-≈
d_'8764''45'resp'45''8776'_2004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_2004 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_2004 v3
du_'8764''45'resp'45''8776'_2004 ::
  T_BooleanAlgebra_1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_2004 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    let v5 = d_isPartialOrder_834 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v5))
-- Relation.Binary.Lattice.BooleanAlgebra._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_2006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_2006 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_2006 v3
du_'8764''45'resp'691''45''8776'_2006 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_2006 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    let v5 = d_isPartialOrder_834 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v5))
-- Relation.Binary.Lattice.BooleanAlgebra._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_2008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_2008 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_2008 v3
du_'8764''45'resp'737''45''8776'_2008 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_2008 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    let v5 = d_isPartialOrder_834 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v5))
-- Relation.Binary.Lattice.BooleanAlgebra._.Eq.isPartialEquivalence
d_isPartialEquivalence_2012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2012 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_2012 v3
du_isPartialEquivalence_2012 ::
  T_BooleanAlgebra_1878 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2012 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    let v5 = d_isPartialOrder_834 (coe v4) in
    let v6
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v6))
-- Relation.Binary.Lattice.BooleanAlgebra._.Eq.refl
d_refl_2014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
d_refl_2014 ~v0 ~v1 ~v2 v3 = du_refl_2014 v3
du_refl_2014 :: T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny
du_refl_2014 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1)))))))
-- Relation.Binary.Lattice.BooleanAlgebra._.Eq.reflexive
d_reflexive_2016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2016 ~v0 ~v1 ~v2 v3 = du_reflexive_2016 v3
du_reflexive_2016 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2016 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    let v2 = coe du_boundedLattice_1646 (coe v1) in
    let v3 = d_isBoundedLattice_1362 (coe v2) in
    let v4 = d_isLattice_1254 (coe v3) in
    let v5 = d_isPartialOrder_834 (coe v4) in
    let v6
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe
           MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
           (coe v6))
        v7
-- Relation.Binary.Lattice.BooleanAlgebra._.Eq.sym
d_sym_2018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2018 ~v0 ~v1 ~v2 v3 = du_sym_2018 v3
du_sym_2018 ::
  T_BooleanAlgebra_1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2018 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1)))))))
-- Relation.Binary.Lattice.BooleanAlgebra._.Eq.trans
d_trans_2020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2020 ~v0 ~v1 ~v2 v3 = du_trans_2020 v3
du_trans_2020 ::
  T_BooleanAlgebra_1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2020 v0
  = let v1 = coe du_heytingAlgebra_1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               d_isPartialOrder_834
               (coe
                  d_isLattice_1254
                  (coe
                     d_isBoundedLattice_1496 (coe d_isHeytingAlgebra_1644 (coe v1)))))))
