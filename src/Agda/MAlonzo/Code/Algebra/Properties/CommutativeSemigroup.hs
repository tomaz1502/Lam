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

module MAlonzo.Code.Algebra.Properties.CommutativeSemigroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.CommutativeSemigroup._.x∙yz≈xy∙z
d_x'8729'yz'8776'xy'8729'z_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'xy'8729'z_88 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'xy'8729'z_88 v2 v3 v4 v5
du_x'8729'yz'8776'xy'8729'z_88 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'xy'8729'z_88 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
               (coe v0)))
         v1 v2 v3)
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈y∙xz
d_x'8729'yz'8776'y'8729'xz_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'y'8729'xz_96 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'y'8729'xz_96 v2 v3 v4 v5
du_x'8729'yz'8776'y'8729'xz_96 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'y'8729'xz_96 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v4
                = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                    (coe v0) in
          let v5
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
          coe
            MAlonzo.Code.Algebra.Structures.du_setoid_110
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                       (coe v0) in
             let v5
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v4
                      = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                          (coe v0) in
                let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_110
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                                   (coe v0) in
                         let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_110
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_assoc_204
                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                        (coe v0)))
                  v2 v1 v3))
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                       (coe v0) in
             let v5
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
               (coe v3) (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_comm_280
                  (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0))
                  v1 v2)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_202
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                        (coe v0)))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_204
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))
               v1 v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈z∙yx
d_x'8729'yz'8776'z'8729'yx_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'z'8729'yx_110 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'z'8729'yx_110 v2 v3 v4 v5
du_x'8729'yz'8776'z'8729'yx_110 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'z'8729'yx_110 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v4
                = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                    (coe v0) in
          let v5
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
          coe
            MAlonzo.Code.Algebra.Structures.du_setoid_110
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                       (coe v0) in
             let v5
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v4
                      = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                          (coe v0) in
                let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_110
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                                   (coe v0) in
                         let v5
                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_setoid_110
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1)))
               (let v4
                      = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                          (coe v0) in
                let v5
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
                  (coe v3) (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_comm_280
                     (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                        (coe v0))
                     v1 v2)))
            (coe
               du_x'8729'yz'8776'y'8729'xz_96 (coe v0) (coe v1) (coe v3)
               (coe v2)))
         (let v4
                = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                    (coe v0) in
          let v5
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
            (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2)
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_280
               (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0))
               v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈x∙zy
d_x'8729'yz'8776'x'8729'zy_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'x'8729'zy_124 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'x'8729'zy_124 v2 v3 v4 v5
du_x'8729'yz'8776'x'8729'zy_124 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'x'8729'zy_124 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
              (coe v0) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
      (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3)
      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2)
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_280
         (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
            (coe v0))
         v2 v3)
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈y∙zx
d_x'8729'yz'8776'y'8729'zx_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'y'8729'zx_136 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'y'8729'zx_136 v2 v3 v4 v5
du_x'8729'yz'8776'y'8729'zx_136 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'y'8729'zx_136 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v4
                = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                    (coe v0) in
          let v5
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
          coe
            MAlonzo.Code.Algebra.Structures.du_setoid_110
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                       (coe v0) in
             let v5
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3) v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                                (coe v0) in
                      let v5
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_110
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_204
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))
               v2 v3 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_comm_280
            (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
               (coe v0))
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈z∙xy
d_x'8729'yz'8776'z'8729'xy_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'z'8729'xy_150 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'z'8729'xy_150 v2 v3 v4 v5
du_x'8729'yz'8776'z'8729'xy_150 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'z'8729'xy_150 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v4
                = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                    (coe v0) in
          let v5
                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
          coe
            MAlonzo.Code.Algebra.Structures.du_setoid_110
            (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                       (coe v0) in
             let v5
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                                (coe v0) in
                      let v5
                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v4) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_setoid_110
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_comm_280
               (MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMagma_202
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                        (coe v0)))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_assoc_204
               (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))
               v1 v2 v3)))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈yx∙z
d_x'8729'yz'8776'yx'8729'z_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'yx'8729'z_164 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'yx'8729'z_164 v2 v3 v4 v5
du_x'8729'yz'8776'yx'8729'z_164 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'yx'8729'z_164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1) v3)
      (coe
         du_x'8729'yz'8776'y'8729'xz_96 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v2 v1 v3))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈zy∙x
d_x'8729'yz'8776'zy'8729'x_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'zy'8729'x_178 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'zy'8729'x_178 v2 v3 v4 v5
du_x'8729'yz'8776'zy'8729'x_178 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'zy'8729'x_178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2) v1)
      (coe
         du_x'8729'yz'8776'z'8729'yx_110 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v3 v2 v1))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈xz∙y
d_x'8729'yz'8776'xz'8729'y_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'xz'8729'y_192 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'xz'8729'y_192 v2 v3 v4 v5
du_x'8729'yz'8776'xz'8729'y_192 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'xz'8729'y_192 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3) v2)
      (coe
         du_x'8729'yz'8776'x'8729'zy_124 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v1 v3 v2))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈yz∙x
d_x'8729'yz'8776'yz'8729'x_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'yz'8729'x_206 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'yz'8729'x_206 v2 v3 v4 v5
du_x'8729'yz'8776'yz'8729'x_206 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'yz'8729'x_206 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3) v1)
      (coe
         du_x'8729'yz'8776'y'8729'zx_136 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v2 v3 v1))
-- Algebra.Properties.CommutativeSemigroup.x∙yz≈zx∙y
d_x'8729'yz'8776'zx'8729'y_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'zx'8729'y_220 ~v0 ~v1 v2 v3 v4 v5
  = du_x'8729'yz'8776'zx'8729'y_220 v2 v3 v4 v5
du_x'8729'yz'8776'zx'8729'y_220 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8729'yz'8776'zx'8729'y_220 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1) v2)
      (coe
         du_x'8729'yz'8776'z'8729'xy_150 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v3 v1 v2))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈y∙xz
d_xy'8729'z'8776'y'8729'xz_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'y'8729'xz_234 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'y'8729'xz_234 v2 v3 v4 v5
du_xy'8729'z'8776'y'8729'xz_234 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'y'8729'xz_234 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'y'8729'xz_96 (coe v0) (coe v1) (coe v2) (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈z∙yx
d_xy'8729'z'8776'z'8729'yx_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'z'8729'yx_248 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'z'8729'yx_248 v2 v3 v4 v5
du_xy'8729'z'8776'z'8729'yx_248 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'z'8729'yx_248 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'z'8729'yx_110 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈x∙zy
d_xy'8729'z'8776'x'8729'zy_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'x'8729'zy_262 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'x'8729'zy_262 v2 v3 v4 v5
du_xy'8729'z'8776'x'8729'zy_262 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'x'8729'zy_262 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'x'8729'zy_124 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈y∙zx
d_xy'8729'z'8776'y'8729'zx_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'y'8729'zx_276 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'y'8729'zx_276 v2 v3 v4 v5
du_xy'8729'z'8776'y'8729'zx_276 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'y'8729'zx_276 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'y'8729'zx_136 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈z∙xy
d_xy'8729'z'8776'z'8729'xy_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'z'8729'xy_290 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'z'8729'xy_290 v2 v3 v4 v5
du_xy'8729'z'8776'z'8729'xy_290 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'z'8729'xy_290 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
            (coe
               MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
               (coe v0)))
         v1 v2 v3)
      (coe
         du_x'8729'yz'8776'z'8729'xy_150 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈yx∙z
d_xy'8729'z'8776'yx'8729'z_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'yx'8729'z_304 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'yx'8729'z_304 v2 v3 v4 v5
du_xy'8729'z'8776'yx'8729'z_304 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'yx'8729'z_304 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1) v3)
      (coe
         du_xy'8729'z'8776'y'8729'xz_234 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v2 v1 v3))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈zy∙x
d_xy'8729'z'8776'zy'8729'x_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'zy'8729'x_318 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'zy'8729'x_318 v2 v3 v4 v5
du_xy'8729'z'8776'zy'8729'x_318 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'zy'8729'x_318 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2) v1)
      (coe
         du_xy'8729'z'8776'z'8729'yx_248 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v3 v2 v1))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈xz∙y
d_xy'8729'z'8776'xz'8729'y_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'xz'8729'y_332 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'xz'8729'y_332 v2 v3 v4 v5
du_xy'8729'z'8776'xz'8729'y_332 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'xz'8729'y_332 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3) v2)
      (coe
         du_xy'8729'z'8776'x'8729'zy_262 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v3) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v1 v3 v2))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈yz∙x
d_xy'8729'z'8776'yz'8729'x_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'yz'8729'x_346 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'yz'8729'x_346 v2 v3 v4 v5
du_xy'8729'z'8776'yz'8729'x_346 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'yz'8729'x_346 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3) v1)
      (coe
         du_xy'8729'z'8776'y'8729'zx_276 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2 v3) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v2 v3 v1))
-- Algebra.Properties.CommutativeSemigroup.xy∙z≈zx∙y
d_xy'8729'z'8776'zx'8729'y_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_xy'8729'z'8776'zx'8729'y_360 ~v0 ~v1 v2 v3 v4 v5
  = du_xy'8729'z'8776'zx'8729'y_360 v2 v3 v4 v5
du_xy'8729'z'8776'zx'8729'y_360 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_xy'8729'z'8776'zx'8729'y_360 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1) v2)
      (coe
         du_xy'8729'z'8776'z'8729'xy_290 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMagma_202
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                     (coe v0)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3 v1) v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v3
            (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__350 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Structures.d_assoc_204
            (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeSemigroup_352
                  (coe v0)))
            v3 v1 v2))
