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

module MAlonzo.Code.Algebra.Construct.NaturalChoice.Max where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Min
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse

-- Algebra.Construct.NaturalChoice.Max._.totalPreorder
d_totalPreorder_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204
d_totalPreorder_46 ~v0 ~v1 ~v2 v3 = du_totalPreorder_46 v3
du_totalPreorder_46 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204
du_totalPreorder_46 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0)
-- Algebra.Construct.NaturalChoice.Max.Min.x≤y⇒x⊓y≈x
d_x'8804'y'8658'x'8851'y'8776'x_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'y'8776'x_88 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'x'8851'y'8776'x_88 v3
du_x'8804'y'8658'x'8851'y'8776'x_88 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'y'8776'x_88 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'x'8851'y'8776'x_106
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalOrder_842
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max.Min.x≤y⇒y⊓x≈x
d_x'8804'y'8658'y'8851'x'8776'x_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'y'8851'x'8776'x_92 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'y'8851'x'8776'x_92 v3
du_x'8804'y'8658'y'8851'x'8776'x_92 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'y'8851'x'8776'x_92 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'y'8851'x'8776'x_136
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalOrder_842
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max._⊔_
d__'8852'__174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8852'__174 ~v0 ~v1 ~v2 v3 = du__'8852'__174 v3
du__'8852'__174 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8852'__174 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du__'8851'__80
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalOrder_842
         (coe v0))
-- Algebra.Construct.NaturalChoice.Max.maxOperator
d_maxOperator_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114
d_maxOperator_176 ~v0 ~v1 ~v2 v3 = du_maxOperator_176 v3
du_maxOperator_176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114
du_maxOperator_176 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1087
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du__'8851'__80
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalOrder_842
            (coe v0)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'y'8851'x'8776'x_136
              (coe
                 MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalOrder_842
                 (coe v0))
              (coe v2) (coe v1)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_x'8804'y'8658'x'8851'y'8776'x_106
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalOrder_842
            (coe v0)))
-- Algebra.Construct.NaturalChoice.Max._.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8852'_180 ~v0 ~v1 ~v2 v3
  = du_mono'45''8804''45'distrib'45''8852'_180 v3
du_mono'45''8804''45'distrib'45''8852'_180 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8852'_180 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_172
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
      (coe du_maxOperator_176 (coe v0))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≤x
d_x'8851'y'8804'x_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_182 ~v0 ~v1 ~v2 v3 = du_x'8851'y'8804'x_182 v3
du_x'8851'y'8804'x_182 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_182 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_184 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'x'8851'z'8804'y_184 v3
du_x'8804'y'8658'x'8851'z'8804'y_184 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_184 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_1982
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_186 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8658'z'8851'x'8804'y_186 v3
du_x'8804'y'8658'z'8851'x'8804'y_186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_186 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_1994
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≤y
d_x'8851'y'8804'y_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_188 ~v0 ~v1 ~v2 v3 = du_x'8851'y'8804'y_188 v3
du_x'8851'y'8804'y_188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_188 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_190 ~v0 ~v1 ~v2 v3
  = du_x'8851'y'8776'x'8658'x'8804'y_190 v3
du_x'8851'y'8776'x'8658'x'8804'y_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_190 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_192 ~v0 ~v1 ~v2 v3
  = du_x'8851'y'8776'y'8658'y'8804'x_192 v3
du_x'8851'y'8776'y'8658'y'8804'x_192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_192 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_194 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8851'z'8658'x'8804'y_194 v3
du_x'8804'y'8851'z'8658'x'8804'y_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_194 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_2006
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_196 ~v0 ~v1 ~v2 v3
  = du_x'8804'y'8851'z'8658'x'8804'z_196 v3
du_x'8804'y'8851'z'8658'x'8804'z_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_196 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_2020
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-assoc
d_'8851''45'assoc_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_198 ~v0 ~v1 ~v2 v3 = du_'8851''45'assoc_198 v3
du_'8851''45'assoc_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_198 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_1762
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-band
d_'8851''45'band_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_266
d_'8851''45'band_200 ~v0 ~v1 ~v2 v3 = du_'8851''45'band_200 v3
du_'8851''45'band_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_266
du_'8851''45'band_200 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_1872
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-comm
d_'8851''45'comm_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_202 ~v0 ~v1 ~v2 v3 = du_'8851''45'comm_202 v3
du_'8851''45'comm_202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_202 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_'8851''45'commutativeSemigroup_204 ~v0 ~v1 ~v2 v3
  = du_'8851''45'commutativeSemigroup_204 v3
du_'8851''45'commutativeSemigroup_204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_'8851''45'commutativeSemigroup_204 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_1874
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-cong
d_'8851''45'cong_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_206 ~v0 ~v1 ~v2 v3 = du_'8851''45'cong_206 v3
du_'8851''45'cong_206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_206 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-congʳ
d_'8851''45'cong'691'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_208 ~v0 ~v1 ~v2 v3
  = du_'8851''45'cong'691'_208 v3
du_'8851''45'cong'691'_208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_208 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_1738
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-congˡ
d_'8851''45'cong'737'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_210 ~v0 ~v1 ~v2 v3
  = du_'8851''45'cong'737'_210 v3
du_'8851''45'cong'737'_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_210 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-idem
d_'8851''45'idem_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_212 ~v0 ~v1 ~v2 v3 = du_'8851''45'idem_212 v3
du_'8851''45'idem_212 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_212 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_1802
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identity
d_'8851''45'identity_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_214 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity_214 v3
du_'8851''45'identity_214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_214 v0
  = let v1 = coe du_maxOperator_176 (coe v0) in
    coe
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              (\ v4 ->
                 coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
                   v1 v2 v4 (coe v3 v4)))
           (coe
              (\ v4 ->
                 coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
                   v1 v4 v2 (coe v3 v4))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identityʳ
d_'8851''45'identity'691'_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_216 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity'691'_216 v3
du_'8851''45'identity'691'_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_216 v0
  = let v1 = coe du_maxOperator_176 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
           v1 v4 v2 (coe v3 v4))
-- Algebra.Construct.NaturalChoice.Max._.⊓-identityˡ
d_'8851''45'identity'737'_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_218 ~v0 ~v1 ~v2 v3
  = du_'8851''45'identity'737'_218 v3
du_'8851''45'identity'737'_218 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_218 v0
  = let v1 = coe du_maxOperator_176 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
           v1 v2 v4 (coe v3 v4))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isBand
d_'8851''45'isBand_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8851''45'isBand_220 ~v0 ~v1 ~v2 v3 = du_'8851''45'isBand_220 v3
du_'8851''45'isBand_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8851''45'isBand_220 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_1852
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'8851''45'isCommutativeSemigroup_222 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isCommutativeSemigroup_222 v3
du_'8851''45'isCommutativeSemigroup_222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'8851''45'isCommutativeSemigroup_222 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_1854
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isMagma
d_'8851''45'isMagma_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8851''45'isMagma_224 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isMagma_224 v3
du_'8851''45'isMagma_224 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8851''45'isMagma_224 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_1848
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isMonoid
d_'8851''45'isMonoid_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8851''45'isMonoid_226 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isMonoid_226 v3
du_'8851''45'isMonoid_226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'8851''45'isMonoid_226 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_1862
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
d_'8851''45'isSelectiveMagma_228 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSelectiveMagma_228 v3
du_'8851''45'isSelectiveMagma_228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
du_'8851''45'isSelectiveMagma_228 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isSemigroup
d_'8851''45'isSemigroup_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8851''45'isSemigroup_230 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSemigroup_230 v3
du_'8851''45'isSemigroup_230 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8851''45'isSemigroup_230 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_1850
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-isSemilattice
d_'8851''45'isSemilattice_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8851''45'isSemilattice_232 ~v0 ~v1 ~v2 v3
  = du_'8851''45'isSemilattice_232 v3
du_'8851''45'isSemilattice_232 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8851''45'isSemilattice_232 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_1856
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-glb
d_'8851''45'glb_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_234 ~v0 ~v1 ~v2 v3 = du_'8851''45'glb_234 v3
du_'8851''45'glb_234 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_234 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-magma
d_'8851''45'magma_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8851''45'magma_236 ~v0 ~v1 ~v2 v3 = du_'8851''45'magma_236 v3
du_'8851''45'magma_236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_'8851''45'magma_236 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_1868
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-mono-≤
d_'8851''45'mono'45''8804'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_238 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'45''8804'_238 v3
du_'8851''45'mono'45''8804'_238 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_238 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_2028
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoid
d_'8851''45'monoid_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'8851''45'monoid_240 ~v0 ~v1 ~v2 v3 = du_'8851''45'monoid_240 v3
du_'8851''45'monoid_240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'8851''45'monoid_240 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_1882
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_242 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'691''45''8804'_242 v3
du_'8851''45'mono'691''45''8804'_242 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_242 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_244 ~v0 ~v1 ~v2 v3
  = du_'8851''45'mono'737''45''8804'_244 v3
du_'8851''45'mono'737''45''8804'_244 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_244 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_2078
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-sel
d_'8851''45'sel_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_246 ~v0 ~v1 ~v2 v3 = du_'8851''45'sel_246 v3
du_'8851''45'sel_246 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_246 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
d_'8851''45'selectiveMagma_248 ~v0 ~v1 ~v2 v3
  = du_'8851''45'selectiveMagma_248 v3
du_'8851''45'selectiveMagma_248 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
du_'8851''45'selectiveMagma_248 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_1878
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-semigroup
d_'8851''45'semigroup_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'8851''45'semigroup_250 ~v0 ~v1 ~v2 v3
  = du_'8851''45'semigroup_250 v3
du_'8851''45'semigroup_250 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_'8851''45'semigroup_250 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_1870
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-semilattice
d_'8851''45'semilattice_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8851''45'semilattice_252 ~v0 ~v1 ~v2 v3
  = du_'8851''45'semilattice_252 v3
du_'8851''45'semilattice_252 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8851''45'semilattice_252 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_1876
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-triangulate
d_'8851''45'triangulate_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_254 ~v0 ~v1 ~v2 v3
  = du_'8851''45'triangulate_254 v3
du_'8851''45'triangulate_254 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_254 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
              (coe v0) in
    let v2 = coe du_maxOperator_176 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_2114
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v2))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zero
d_'8851''45'zero_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_256 ~v0 ~v1 ~v2 v3 = du_'8851''45'zero_256 v3
du_'8851''45'zero_256 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_256 v0
  = let v1 = coe du_maxOperator_176 (coe v0) in
    coe
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe
              (\ v4 ->
                 coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
                   v1 v2 v4 (coe v3 v4)))
           (coe
              (\ v4 ->
                 coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
                   v1 v4 v2 (coe v3 v4))))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zeroʳ
d_'8851''45'zero'691'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_258 ~v0 ~v1 ~v2 v3
  = du_'8851''45'zero'691'_258 v3
du_'8851''45'zero'691'_258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_258 v0
  = let v1 = coe du_maxOperator_176 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
           v1 v4 v2 (coe v3 v4))
-- Algebra.Construct.NaturalChoice.Max._.⊓-zeroˡ
d_'8851''45'zero'737'_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_260 ~v0 ~v1 ~v2 v3
  = du_'8851''45'zero'737'_260 v3
du_'8851''45'zero'737'_260 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_260 v0
  = let v1 = coe du_maxOperator_176 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
           v1 v2 v4 (coe v3 v4))
