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

module MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse

-- Algebra.Construct.NaturalChoice.MaxOp._._≈_
d__'8776'__20 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__20 = erased
-- Algebra.Construct.NaturalChoice.MaxOp._._≲_
d__'8818'__22 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8818'__22 = erased
-- Algebra.Construct.NaturalChoice.MaxOp.Min.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_84 ~v0 ~v1 ~v2 v3 v4
  = du_x'8804'y'8658'x'8851'z'8804'y_84 v3 v4
du_x'8804'y'8658'x'8851'z'8804'y_84 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_84 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_1982
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_86 ~v0 ~v1 ~v2 v3 v4
  = du_x'8804'y'8658'z'8851'x'8804'y_86 v3 v4
du_x'8804'y'8658'z'8851'x'8804'y_86 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_86 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_1994
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_88 ~v0 ~v1 ~v2 v3 v4
  = du_x'8804'y'8851'z'8658'x'8804'y_88 v3 v4
du_x'8804'y'8851'z'8658'x'8804'y_88 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_88 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_2006
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_90 ~v0 ~v1 ~v2 v3 v4
  = du_x'8804'y'8851'z'8658'x'8804'z_90 v3 v4
du_x'8804'y'8851'z'8658'x'8804'z_90 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_90 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_2020
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_92 ~v0 ~v1 ~v2 v3 v4
  = du_x'8851'y'8776'x'8658'x'8804'y_92 v3 v4
du_x'8851'y'8776'x'8658'x'8804'y_92 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_92 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_94 ~v0 ~v1 ~v2 v3 v4
  = du_x'8851'y'8776'y'8658'y'8804'x_94 v3 v4
du_x'8851'y'8776'y'8658'y'8804'x_94 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_94 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.x⊓y≤x
d_x'8851'y'8804'x_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_96 ~v0 ~v1 ~v2 v3 v4
  = du_x'8851'y'8804'x_96 v3 v4
du_x'8851'y'8804'x_96 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_96 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.x⊓y≤y
d_x'8851'y'8804'y_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_98 ~v0 ~v1 ~v2 v3 v4
  = du_x'8851'y'8804'y_98 v3 v4
du_x'8851'y'8804'y_98 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_98 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-assoc
d_'8851''45'assoc_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_100 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'assoc_100 v3 v4
du_'8851''45'assoc_100 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_100 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_1762
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-band
d_'8851''45'band_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_266
d_'8851''45'band_102 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'band_102 v3 v4
du_'8851''45'band_102 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_266
du_'8851''45'band_102 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_1872
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-comm
d_'8851''45'comm_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_104 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'comm_104 v3 v4
du_'8851''45'comm_104 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_104 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_'8851''45'commutativeSemigroup_106 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'commutativeSemigroup_106 v3 v4
du_'8851''45'commutativeSemigroup_106 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_'8851''45'commutativeSemigroup_106 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_1874
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-cong
d_'8851''45'cong_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_108 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'cong_108 v3 v4
du_'8851''45'cong_108 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_108 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-congʳ
d_'8851''45'cong'691'_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_110 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'cong'691'_110 v3 v4
du_'8851''45'cong'691'_110 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_110 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_1738
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-congˡ
d_'8851''45'cong'737'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_112 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'cong'737'_112 v3 v4
du_'8851''45'cong'737'_112 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_112 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-glb
d_'8851''45'glb_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_114 ~v0 ~v1 ~v2 v3 v4 = du_'8851''45'glb_114 v3 v4
du_'8851''45'glb_114 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_114 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-idem
d_'8851''45'idem_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_116 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'idem_116 v3 v4
du_'8851''45'idem_116 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_116 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_1802
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-identity
d_'8851''45'identity_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_118 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8851''45'identity_118 v4 v5 v6
du_'8851''45'identity_118 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_118 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-identityʳ
d_'8851''45'identity'691'_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_120 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8851''45'identity'691'_120 v4 v5 v6 v7
du_'8851''45'identity'691'_120 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_120 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-identityˡ
d_'8851''45'identity'737'_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_122 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8851''45'identity'737'_122 v4 v5 v6 v7
du_'8851''45'identity'737'_122 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_122 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-isBand
d_'8851''45'isBand_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8851''45'isBand_124 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isBand_124 v3 v4
du_'8851''45'isBand_124 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8851''45'isBand_124 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_1852
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'8851''45'isCommutativeSemigroup_126 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isCommutativeSemigroup_126 v3 v4
du_'8851''45'isCommutativeSemigroup_126 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'8851''45'isCommutativeSemigroup_126 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_1854
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-isMagma
d_'8851''45'isMagma_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8851''45'isMagma_128 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isMagma_128 v3 v4
du_'8851''45'isMagma_128 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8851''45'isMagma_128 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_1848
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-isMonoid
d_'8851''45'isMonoid_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8851''45'isMonoid_130 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isMonoid_130 v3 v4
du_'8851''45'isMonoid_130 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'8851''45'isMonoid_130 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_1862
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
d_'8851''45'isSelectiveMagma_132 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSelectiveMagma_132 v3 v4
du_'8851''45'isSelectiveMagma_132 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
du_'8851''45'isSelectiveMagma_132 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-isSemigroup
d_'8851''45'isSemigroup_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8851''45'isSemigroup_134 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSemigroup_134 v3 v4
du_'8851''45'isSemigroup_134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8851''45'isSemigroup_134 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_1850
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-isSemilattice
d_'8851''45'isSemilattice_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8851''45'isSemilattice_136 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'isSemilattice_136 v3 v4
du_'8851''45'isSemilattice_136 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8851''45'isSemilattice_136 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_1856
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-magma
d_'8851''45'magma_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8851''45'magma_138 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'magma_138 v3 v4
du_'8851''45'magma_138 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_'8851''45'magma_138 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_1868
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-mono-≤
d_'8851''45'mono'45''8804'_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_140 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'mono'45''8804'_140 v3 v4
du_'8851''45'mono'45''8804'_140 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_140 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_2028
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-monoid
d_'8851''45'monoid_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'8851''45'monoid_142 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'monoid_142 v3 v4
du_'8851''45'monoid_142 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'8851''45'monoid_142 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_1882
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_144 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'mono'691''45''8804'_144 v3 v4
du_'8851''45'mono'691''45''8804'_144 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_144 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_146 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'mono'737''45''8804'_146 v3 v4
du_'8851''45'mono'737''45''8804'_146 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_146 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_2078
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-sel
d_'8851''45'sel_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_150 ~v0 ~v1 ~v2 v3 v4 = du_'8851''45'sel_150 v3 v4
du_'8851''45'sel_150 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_150 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-selectiveMagma
d_'8851''45'selectiveMagma_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
d_'8851''45'selectiveMagma_152 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'selectiveMagma_152 v3 v4
du_'8851''45'selectiveMagma_152 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
du_'8851''45'selectiveMagma_152 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_1878
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-semigroup
d_'8851''45'semigroup_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'8851''45'semigroup_154 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'semigroup_154 v3 v4
du_'8851''45'semigroup_154 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_'8851''45'semigroup_154 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_1870
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-semilattice
d_'8851''45'semilattice_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8851''45'semilattice_156 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'semilattice_156 v3 v4
du_'8851''45'semilattice_156 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8851''45'semilattice_156 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_1876
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-triangulate
d_'8851''45'triangulate_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_158 ~v0 ~v1 ~v2 v3 v4
  = du_'8851''45'triangulate_158 v3 v4
du_'8851''45'triangulate_158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_158 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_2114
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-zero
d_'8851''45'zero_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_160 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8851''45'zero_160 v4 v5 v6
du_'8851''45'zero_160 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_160 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-zeroʳ
d_'8851''45'zero'691'_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_162 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8851''45'zero'691'_162 v4 v5 v6 v7
du_'8851''45'zero'691'_162 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MaxOp.Min.⊓-zeroˡ
d_'8851''45'zero'737'_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_164 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8851''45'zero'737'_164 v4 v5 v6 v7
du_'8851''45'zero'737'_164 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MaxOp.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8852'_172 ~v0 ~v1 ~v2 v3 v4 v5 v6
                                          v7
  = du_mono'45''8804''45'distrib'45''8852'_172 v3 v4 v5 v6 v7
du_mono'45''8804''45'distrib'45''8852'_172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8852'_172 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_1936
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
      (coe v2) (coe v3) (coe (\ v5 v6 -> coe v4 v6 v5))
