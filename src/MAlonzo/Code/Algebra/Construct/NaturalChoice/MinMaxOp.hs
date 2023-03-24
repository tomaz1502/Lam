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

module MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Construct.NaturalChoice.MinMaxOp._._≈_
d__'8776'__22 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__22 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._≲_
d__'8818'__24 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8818'__24 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._⊓_
d__'8851'__76 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8851'__76 ~v0 v1 ~v2 = du__'8851'__76 v1
du__'8851'__76 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8851'__76 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100
      (coe v0)
-- Algebra.Construct.NaturalChoice.MinMaxOp._._Absorbs_
d__Absorbs__92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__92 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOver_
d__DistributesOver__94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__94 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOverʳ_
d__DistributesOver'691'__96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__96 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._._DistributesOverˡ_
d__DistributesOver'737'__98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__98 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._.Absorptive
d_Absorptive_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_102 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp._.IsDistributiveLattice
d_IsDistributiveLattice_186 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Construct.NaturalChoice.MinMaxOp._.IsLattice
d_IsLattice_192 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Construct.NaturalChoice.MinMaxOp._.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_1678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8851'_1678 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_mono'45''8804''45'distrib'45''8851'_1678 v3 v4
du_mono'45''8804''45'distrib'45''8851'_1678 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8851'_1678 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_mono'45''8804''45'distrib'45''8851'_1936
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_1680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_1680 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8658'x'8851'z'8804'y_1680 v3 v4
du_x'8804'y'8658'x'8851'z'8804'y_1680 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_1680 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_1982
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_1682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_1682 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8658'z'8851'x'8804'y_1682 v3 v4
du_x'8804'y'8658'z'8851'x'8804'y_1682 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_1682 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_1994
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_1684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_1684 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8851'z'8658'x'8804'y_1684 v3 v4
du_x'8804'y'8851'z'8658'x'8804'y_1684 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_1684 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_2006
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_1686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_1686 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8804'y'8851'z'8658'x'8804'z_1686 v3 v4
du_x'8804'y'8851'z'8658'x'8804'z_1686 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_1686 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_2020
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_1688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_1688 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8776'x'8658'x'8804'y_1688 v3 v4
du_x'8851'y'8776'x'8658'x'8804'y_1688 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_1688 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_1690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_1690 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8776'y'8658'y'8804'x_1690 v3 v4
du_x'8851'y'8776'y'8658'y'8804'x_1690 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_1690 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤x
d_x'8851'y'8804'x_1692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_1692 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8804'x_1692 v3 v4
du_x'8851'y'8804'x_1692 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_1692 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤y
d_x'8851'y'8804'y_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_1694 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_x'8851'y'8804'y_1694 v3 v4
du_x'8851'y'8804'y_1694 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_1694 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-assoc
d_'8851''45'assoc_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_1696 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'assoc_1696 v3 v4
du_'8851''45'assoc_1696 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_1696 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_1762
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-band
d_'8851''45'band_1698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_266
d_'8851''45'band_1698 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'band_1698 v3 v4
du_'8851''45'band_1698 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_266
du_'8851''45'band_1698 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_1872
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-comm
d_'8851''45'comm_1700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_1700 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'comm_1700 v3 v4
du_'8851''45'comm_1700 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_1700 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_1702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_'8851''45'commutativeSemigroup_1702 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'commutativeSemigroup_1702 v3 v4
du_'8851''45'commutativeSemigroup_1702 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_'8851''45'commutativeSemigroup_1702 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_1874
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-cong
d_'8851''45'cong_1704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_1704 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong_1704 v3 v4
du_'8851''45'cong_1704 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_1704 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congʳ
d_'8851''45'cong'691'_1706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_1706 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong'691'_1706 v3 v4
du_'8851''45'cong'691'_1706 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_1706 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_1738
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congˡ
d_'8851''45'cong'737'_1708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_1708 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'cong'737'_1708 v3 v4
du_'8851''45'cong'737'_1708 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_1708 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-glb
d_'8851''45'glb_1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_1710 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'glb_1710 v3 v4
du_'8851''45'glb_1710 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_1710 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-idem
d_'8851''45'idem_1712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_1712 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'idem_1712 v3 v4
du_'8851''45'idem_1712 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_1712 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_1802
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identity
d_'8851''45'identity_1714 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_1714 ~v0 v1 ~v2 v3 v4
  = du_'8851''45'identity_1714 v1 v3 v4
du_'8851''45'identity_1714 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_1714 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityʳ
d_'8851''45'identity'691'_1716 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_1716 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'identity'691'_1716 v1 v3 v4 v5
du_'8851''45'identity'691'_1716 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_1716 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityˡ
d_'8851''45'identity'737'_1718 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_1718 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'identity'737'_1718 v1 v3 v4 v5
du_'8851''45'identity'737'_1718 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_1718 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isBand
d_'8851''45'isBand_1720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8851''45'isBand_1720 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isBand_1720 v3 v4
du_'8851''45'isBand_1720 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8851''45'isBand_1720 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_1852
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_1722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'8851''45'isCommutativeSemigroup_1722 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isCommutativeSemigroup_1722 v3 v4
du_'8851''45'isCommutativeSemigroup_1722 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'8851''45'isCommutativeSemigroup_1722 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_1854
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMagma
d_'8851''45'isMagma_1724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8851''45'isMagma_1724 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isMagma_1724 v3 v4
du_'8851''45'isMagma_1724 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8851''45'isMagma_1724 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_1848
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMonoid
d_'8851''45'isMonoid_1726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8851''45'isMonoid_1726 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isMonoid_1726 v3 v4
du_'8851''45'isMonoid_1726 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'8851''45'isMonoid_1726 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_1862
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_1728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
d_'8851''45'isSelectiveMagma_1728 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isSelectiveMagma_1728 v3 v4
du_'8851''45'isSelectiveMagma_1728 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
du_'8851''45'isSelectiveMagma_1728 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSemigroup
d_'8851''45'isSemigroup_1730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8851''45'isSemigroup_1730 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isSemigroup_1730 v3 v4
du_'8851''45'isSemigroup_1730 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8851''45'isSemigroup_1730 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_1850
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSemilattice
d_'8851''45'isSemilattice_1732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8851''45'isSemilattice_1732 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'isSemilattice_1732 v3 v4
du_'8851''45'isSemilattice_1732 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8851''45'isSemilattice_1732 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_1856
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-magma
d_'8851''45'magma_1734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8851''45'magma_1734 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'magma_1734 v3 v4
du_'8851''45'magma_1734 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_'8851''45'magma_1734 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_1868
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-mono-≤
d_'8851''45'mono'45''8804'_1736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_1736 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'45''8804'_1736 v3 v4
du_'8851''45'mono'45''8804'_1736 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_1736 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_2028
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoid
d_'8851''45'monoid_1738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'8851''45'monoid_1738 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'monoid_1738 v3 v4
du_'8851''45'monoid_1738 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'8851''45'monoid_1738 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_1882
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_1740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_1740 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'691''45''8804'_1740 v3 v4
du_'8851''45'mono'691''45''8804'_1740 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_1740 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_1742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_1742 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'mono'737''45''8804'_1742 v3 v4
du_'8851''45'mono'737''45''8804'_1742 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_1742 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_2078
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-rawMagma
d_'8851''45'rawMagma_1744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8
d_'8851''45'rawMagma_1744 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8851''45'rawMagma_1744 v4
du_'8851''45'rawMagma_1744 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8
du_'8851''45'rawMagma_1744 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'rawMagma_1866
      (coe v0)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-sel
d_'8851''45'sel_1746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_1746 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'sel_1746 v3 v4
du_'8851''45'sel_1746 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_1746 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_1748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
d_'8851''45'selectiveMagma_1748 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'selectiveMagma_1748 v3 v4
du_'8851''45'selectiveMagma_1748 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
du_'8851''45'selectiveMagma_1748 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_1878
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-semigroup
d_'8851''45'semigroup_1750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'8851''45'semigroup_1750 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'semigroup_1750 v3 v4
du_'8851''45'semigroup_1750 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_'8851''45'semigroup_1750 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_1870
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-semilattice
d_'8851''45'semilattice_1752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8851''45'semilattice_1752 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'semilattice_1752 v3 v4
du_'8851''45'semilattice_1752 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8851''45'semilattice_1752 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_1876
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-triangulate
d_'8851''45'triangulate_1754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_1754 ~v0 ~v1 ~v2 v3 v4 ~v5
  = du_'8851''45'triangulate_1754 v3 v4
du_'8851''45'triangulate_1754 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_1754 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_2114
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zero
d_'8851''45'zero_1756 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_1756 ~v0 v1 ~v2 v3 v4
  = du_'8851''45'zero_1756 v1 v3 v4
du_'8851''45'zero_1756 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_1756 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
              v0 v1 v3 (coe v2 v3)))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
              v0 v3 v1 (coe v2 v3)))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroʳ
d_'8851''45'zero'691'_1758 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_1758 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'zero'691'_1758 v1 v3 v4 v5
du_'8851''45'zero'691'_1758 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_1758 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroˡ
d_'8851''45'zero'737'_1760 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_1760 ~v0 v1 ~v2 v3 v4 v5
  = du_'8851''45'zero'737'_1760 v1 v3 v4 v5
du_'8851''45'zero'737'_1760 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_1760 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_1764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_mono'45''8804''45'distrib'45''8852'_1764 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_mono'45''8804''45'distrib'45''8852'_1764 v3 v5
du_mono'45''8804''45'distrib'45''8852'_1764 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_mono'45''8804''45'distrib'45''8852'_1764 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MaxOp.du_mono'45''8804''45'distrib'45''8852'_172
      (coe v0) (coe v1)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤x
d_x'8851'y'8804'x_1766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x_1766 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8804'x_1766 v3 v5
du_x'8851'y'8804'x_1766 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x_1766 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_1768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'x'8851'z'8804'y_1768 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8658'x'8851'z'8804'y_1768 v3 v5
du_x'8804'y'8658'x'8851'z'8804'y_1768 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'x'8851'z'8804'y_1768 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_1982
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_1770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8658'z'8851'x'8804'y_1770 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8658'z'8851'x'8804'y_1770 v3 v5
du_x'8804'y'8658'z'8851'x'8804'y_1770 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8658'z'8851'x'8804'y_1770 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_1994
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≤y
d_x'8851'y'8804'y_1772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'y_1772 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8804'y_1772 v3 v5
du_x'8851'y'8804'y_1772 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'y_1772 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_1774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'x'8658'x'8804'y_1774 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8776'x'8658'x'8804'y_1774 v3 v5
du_x'8851'y'8776'x'8658'x'8804'y_1774 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'x'8658'x'8804'y_1774 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_1776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8776'y'8658'y'8804'x_1776 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8851'y'8776'y'8658'y'8804'x_1776 v3 v5
du_x'8851'y'8776'y'8658'y'8804'x_1776 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8776'y'8658'y'8804'x_1776 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_1778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'y_1778 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8851'z'8658'x'8804'y_1778 v3 v5
du_x'8804'y'8851'z'8658'x'8804'y_1778 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'y_1778 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_2006
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_1780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8804'y'8851'z'8658'x'8804'z_1780 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_x'8804'y'8851'z'8658'x'8804'z_1780 v3 v5
du_x'8804'y'8851'z'8658'x'8804'z_1780 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_x'8804'y'8851'z'8658'x'8804'z_1780 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_2020
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-assoc
d_'8851''45'assoc_1782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'assoc_1782 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'assoc_1782 v3 v5
du_'8851''45'assoc_1782 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'assoc_1782 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_1762
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-band
d_'8851''45'band_1784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_266
d_'8851''45'band_1784 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'band_1784 v3 v5
du_'8851''45'band_1784 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Band_266
du_'8851''45'band_1784 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_1872
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-comm
d_'8851''45'comm_1786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'comm_1786 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'comm_1786 v3 v5
du_'8851''45'comm_1786 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'comm_1786 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_1788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_'8851''45'commutativeSemigroup_1788 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'commutativeSemigroup_1788 v3 v5
du_'8851''45'commutativeSemigroup_1788 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
du_'8851''45'commutativeSemigroup_1788 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_1874
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-cong
d_'8851''45'cong_1790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong_1790 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong_1790 v3 v5
du_'8851''45'cong_1790 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong_1790 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congʳ
d_'8851''45'cong'691'_1792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'691'_1792 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong'691'_1792 v3 v5
du_'8851''45'cong'691'_1792 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'691'_1792 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'691'_1738
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-congˡ
d_'8851''45'cong'737'_1794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'cong'737'_1794 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'cong'737'_1794 v3 v5
du_'8851''45'cong'737'_1794 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'cong'737'_1794 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-idem
d_'8851''45'idem_1796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny
d_'8851''45'idem_1796 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'idem_1796 v3 v5
du_'8851''45'idem_1796 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny
du_'8851''45'idem_1796 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_1802
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identity
d_'8851''45'identity_1798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'identity_1798 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8851''45'identity_1798 v5 v6 v7
du_'8851''45'identity_1798 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'identity_1798 v0 v1 v2
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
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityʳ
d_'8851''45'identity'691'_1800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'691'_1800 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'identity'691'_1800 v5 v6 v7 v8
du_'8851''45'identity'691'_1800 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'691'_1800 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-identityˡ
d_'8851''45'identity'737'_1802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'identity'737'_1802 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'identity'737'_1802 v5 v6 v7 v8
du_'8851''45'identity'737'_1802 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'identity'737'_1802 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isBand
d_'8851''45'isBand_1804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8851''45'isBand_1804 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isBand_1804 v3 v5
du_'8851''45'isBand_1804 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8851''45'isBand_1804 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_1852
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_1806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'8851''45'isCommutativeSemigroup_1806 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isCommutativeSemigroup_1806 v3 v5
du_'8851''45'isCommutativeSemigroup_1806 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'8851''45'isCommutativeSemigroup_1806 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_1854
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMagma
d_'8851''45'isMagma_1808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8851''45'isMagma_1808 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isMagma_1808 v3 v5
du_'8851''45'isMagma_1808 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8851''45'isMagma_1808 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_1848
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isMonoid
d_'8851''45'isMonoid_1810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8851''45'isMonoid_1810 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isMonoid_1810 v3 v5
du_'8851''45'isMonoid_1810 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'8851''45'isMonoid_1810 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMonoid_1862
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_1812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
d_'8851''45'isSelectiveMagma_1812 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isSelectiveMagma_1812 v3 v5
du_'8851''45'isSelectiveMagma_1812 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
du_'8851''45'isSelectiveMagma_1812 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSemigroup
d_'8851''45'isSemigroup_1814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8851''45'isSemigroup_1814 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isSemigroup_1814 v3 v5
du_'8851''45'isSemigroup_1814 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8851''45'isSemigroup_1814 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_1850
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-isSemilattice
d_'8851''45'isSemilattice_1816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8851''45'isSemilattice_1816 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'isSemilattice_1816 v3 v5
du_'8851''45'isSemilattice_1816 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8851''45'isSemilattice_1816 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_1856
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-glb
d_'8851''45'glb_1818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'glb_1818 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'glb_1818 v3 v5
du_'8851''45'glb_1818 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'glb_1818 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-magma
d_'8851''45'magma_1820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8851''45'magma_1820 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'magma_1820 v3 v5
du_'8851''45'magma_1820 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Magma_36
du_'8851''45'magma_1820 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_1868
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-mono-≤
d_'8851''45'mono'45''8804'_1822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'45''8804'_1822 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'45''8804'_1822 v3 v5
du_'8851''45'mono'45''8804'_1822 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'45''8804'_1822 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_2028
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoid
d_'8851''45'monoid_1824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'8851''45'monoid_1824 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'monoid_1824 v3 v5
du_'8851''45'monoid_1824 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'8851''45'monoid_1824 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'monoid_1882
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_1826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'691''45''8804'_1826 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'691''45''8804'_1826 v3 v5
du_'8851''45'mono'691''45''8804'_1826 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'691''45''8804'_1826 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_1828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'mono'737''45''8804'_1828 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'mono'737''45''8804'_1828 v3 v5
du_'8851''45'mono'737''45''8804'_1828 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'mono'737''45''8804'_1828 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_2078
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-sel
d_'8851''45'sel_1830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_1830 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'sel_1830 v3 v5
du_'8851''45'sel_1830 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''45'sel_1830 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-selectiveMagma
d_'8851''45'selectiveMagma_1832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
d_'8851''45'selectiveMagma_1832 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'selectiveMagma_1832 v3 v5
du_'8851''45'selectiveMagma_1832 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
du_'8851''45'selectiveMagma_1832 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_1878
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-semigroup
d_'8851''45'semigroup_1834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'8851''45'semigroup_1834 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'semigroup_1834 v3 v5
du_'8851''45'semigroup_1834 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_'8851''45'semigroup_1834 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_1870
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-semilattice
d_'8851''45'semilattice_1836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8851''45'semilattice_1836 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'semilattice_1836 v3 v5
du_'8851''45'semilattice_1836 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8851''45'semilattice_1836 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_1876
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-triangulate
d_'8851''45'triangulate_1838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'triangulate_1838 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8851''45'triangulate_1838 v3 v5
du_'8851''45'triangulate_1838 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'triangulate_1838 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'triangulate_2114
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zero
d_'8851''45'zero_1840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_1840 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_'8851''45'zero_1840 v5 v6 v7
du_'8851''45'zero_1840 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'zero_1840 v0 v1 v2
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
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroʳ
d_'8851''45'zero'691'_1842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'691'_1842 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'zero'691'_1842 v5 v6 v7 v8
du_'8851''45'zero'691'_1842 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'691'_1842 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
      v0 v3 v1 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp._.⊓-zeroˡ
d_'8851''45'zero'737'_1844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8851''45'zero'737'_1844 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8851''45'zero'737'_1844 v5 v6 v7 v8
du_'8851''45'zero'737'_1844 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8851''45'zero'737'_1844 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
      v0 v1 v3 (coe v2 v3)
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_1846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'distrib'737''45''8852'_1846 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
                                        v8
  = du_'8851''45'distrib'737''45''8852'_1846 v3 v4 v5 v6 v7 v8
du_'8851''45'distrib'737''45''8852'_1846 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'distrib'737''45''8852'_1846 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_128
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                 (coe v0))
              v4 v5 in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v4 v5))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   v3 v5)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776''728'_176
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         v3 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         v3 v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                            v3 v5)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
                      v2
                      (coe
                         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                            v3)
                         (\ v8 v9 -> v8) v4 v5)
                      (coe
                         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                         (\ v8 v9 -> v9)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                            v3)
                         v4 v5)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
                         (coe v0) (coe v1) (coe v3) (coe v4) (coe v5) (coe v7))))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
                   (coe v0) (coe v1) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v4 v5)
                   (coe v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
                      v2 v4 v5 v7)))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v4 v5))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   v3 v4)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776''728'_176
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         v3 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         v3 v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                            v3 v5)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
                      v2
                      (coe
                         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                         (\ v8 v9 -> v9)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                            v3)
                         v5 v4)
                      (coe
                         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                            v3)
                         (\ v8 v9 -> v8) v5 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
                         (coe v0) (coe v1) (coe v3) (coe v5) (coe v4) (coe v7))))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
                   (coe v0) (coe v1) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v4 v5)
                   (coe v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
                      v2 v4 v5 v7)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_1874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'distrib'691''45''8852'_1874 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'distrib'691''45''8852'_1874 v3 v4 v5
du_'8851''45'distrib'691''45''8852'_1874 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'distrib'691''45''8852'_1874 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr'691'_312
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_setoid_174
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_248 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
         (coe v0) (coe v1))
      (coe
         du_'8851''45'distrib'737''45''8852'_1846 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_1876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_1876 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45'distrib'45''8852'_1876 v3 v4 v5
du_'8851''45'distrib'45''8852'_1876 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45'distrib'45''8852'_1876 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8851''45'distrib'737''45''8852'_1846 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8851''45'distrib'691''45''8852'_1874 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_1878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'distrib'737''45''8851'_1878 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
                                        v8
  = du_'8852''45'distrib'737''45''8851'_1878 v3 v4 v5 v6 v7 v8
du_'8852''45'distrib'737''45''8851'_1878 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'distrib'737''45''8851'_1878 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_128
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                 (coe v0))
              v4 v5 in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v4 v5))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   v3 v4)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776''728'_176
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         v3 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         v3 v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                            v3 v5)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
                      v1
                      (coe
                         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                         (\ v8 v9 -> v9)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                            v3)
                         v5 v4)
                      (coe
                         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                            v3)
                         (\ v8 v9 -> v8) v5 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
                         (coe
                            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                            (coe v0))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                            (coe v2))
                         (coe v3) (coe v5) (coe v4) (coe v7))))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
                   (coe
                      MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                      (coe v0))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                      (coe v2))
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v4 v5)
                   (coe v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
                      v1 v4 v5 v7)))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v4 v5))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   v3 v5)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v5))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776''728'_176
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         v3 v5))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         v3 v4)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         v3 v5))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                            v3 v4)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                            v3 v5)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
                      v1
                      (coe
                         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                            v3)
                         (\ v8 v9 -> v8) v4 v5)
                      (coe
                         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                         (\ v8 v9 -> v9)
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                            v3)
                         v4 v5)
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
                         (coe
                            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                            (coe v0))
                         (coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                            (coe v2))
                         (coe v3) (coe v4) (coe v5) (coe v7))))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
                   (coe
                      MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                      (coe v0))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                      (coe v2))
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v4 v5)
                   (coe v5)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
                      v1 v4 v5 v7)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_1906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'distrib'691''45''8851'_1906 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45'distrib'691''45''8851'_1906 v3 v4 v5
du_'8852''45'distrib'691''45''8851'_1906 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'distrib'691''45''8851'_1906 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr'691'_312
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_setoid_174
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_248 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100
         (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
      (coe
         du_'8852''45'distrib'737''45''8851'_1878 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_1908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_1908 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45'distrib'45''8851'_1908 v3 v4 v5
du_'8852''45'distrib'45''8851'_1908 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''45'distrib'45''8851'_1908 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8852''45'distrib'737''45''8851'_1878 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8852''45'distrib'691''45''8851'_1906 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_1910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8851''45'absorbs'45''8852'_1910 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8851''45'absorbs'45''8852'_1910 v3 v4 v5 v6 v7
du_'8851''45'absorbs'45''8852'_1910 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8851''45'absorbs'45''8852'_1910 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_128
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                 (coe v0))
              v3 v4 in
    case coe v5 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v4))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   v3 v4)
                (coe v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v4)
                   (coe v3) (coe v3)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe v3))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
                      v1 v3 v4 v6))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
                   (coe v0) (coe v1) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v4)
                   (coe v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
                      v2 v3 v4 v6)))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v4))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   v3 v3)
                (coe v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v3)
                   (coe v3) (coe v3)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe v3))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_1802
                      (coe v0) (coe v1) (coe v3)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
                   (coe v0) (coe v1) (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v4)
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
                      v2 v3 v4 v6)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_1932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8852''45'absorbs'45''8851'_1932 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_'8852''45'absorbs'45''8851'_1932 v3 v4 v5 v6 v7
du_'8852''45'absorbs'45''8851'_1932 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8852''45'absorbs'45''8851'_1932 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_128
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                 (coe v0))
              v3 v4 in
    case coe v5 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v4))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   v3 v3)
                (coe v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v3)
                   (coe v3) (coe v3)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe v3))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'idem_1802
                      (coe
                         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                         (coe v0))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                         (coe v2))
                      (coe v3)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
                   (coe
                      MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                      (coe v0))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                      (coe v2))
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v4)
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
                      v1 v3 v4 v6)))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v4))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   v3 v4)
                (coe v3)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v3 v4)
                   (coe v3) (coe v3)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe v3))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
                      v2 v3 v4 v6))
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong'737'_1700
                   (coe
                      MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                      (coe v0))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                      (coe v2))
                   (coe v3)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v3 v4)
                   (coe v4)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
                      v1 v3 v4 v6)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_1954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_1954 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'absorptive_1954 v3 v4 v5
du_'8852''45''8851''45'absorptive_1954 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''45''8851''45'absorptive_1954 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8852''45'absorbs'45''8851'_1932 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8851''45'absorbs'45''8852'_1910 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_1956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_1956 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'absorptive_1956 v3 v4 v5
du_'8851''45''8852''45'absorptive_1956 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''45''8852''45'absorptive_1956 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8851''45'absorbs'45''8852'_1910 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8852''45'absorbs'45''8851'_1932 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_1958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_'8852''45''8851''45'isLattice_1958 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'isLattice_1958 v3 v4 v5
du_'8852''45''8851''45'isLattice_1958 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
du_'8852''45''8851''45'isLattice_1958 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsLattice'46'constructor_17577
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
               (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_1762
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_1762
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
         (coe v0) (coe v1))
      (coe
         du_'8852''45''8851''45'absorptive_1954 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_1960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_'8851''45''8852''45'isLattice_1960 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'isLattice_1960 v3 v4 v5
du_'8851''45''8852''45'isLattice_1960 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
du_'8851''45''8852''45'isLattice_1960 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsLattice'46'constructor_17577
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
               (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_1762
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
         (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'assoc_1762
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'cong_1748
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
      (coe
         du_'8851''45''8852''45'absorptive_1956 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_1962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_'8851''45''8852''45'isDistributiveLattice_1962 ~v0 ~v1 ~v2 v3 v4
                                                 v5
  = du_'8851''45''8852''45'isDistributiveLattice_1962 v3 v4 v5
du_'8851''45''8852''45'isDistributiveLattice_1962 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
du_'8851''45''8852''45'isDistributiveLattice_1962 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsDistributiveLattice'46'constructor_20873
      (coe
         du_'8851''45''8852''45'isLattice_1960 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8851''45'distrib'691''45''8852'_1874 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_1964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_'8852''45''8851''45'isDistributiveLattice_1964 ~v0 ~v1 ~v2 v3 v4
                                                 v5
  = du_'8852''45''8851''45'isDistributiveLattice_1964 v3 v4 v5
du_'8852''45''8851''45'isDistributiveLattice_1964 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
du_'8852''45''8851''45'isDistributiveLattice_1964 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsDistributiveLattice'46'constructor_20873
      (coe
         du_'8852''45''8851''45'isLattice_1958 (coe v0) (coe v1) (coe v2))
      (coe
         du_'8852''45'distrib'691''45''8851'_1906 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_1966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_'8852''45''8851''45'lattice_1966 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'lattice_1966 v3 v4 v5
du_'8852''45''8851''45'lattice_1966 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
du_'8852''45''8851''45'lattice_1966 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Lattice'46'constructor_16803
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130
         (coe v2))
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100
         (coe v1))
      (coe
         du_'8852''45''8851''45'isLattice_1958 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_1968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_'8851''45''8852''45'lattice_1968 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'lattice_1968 v3 v4 v5
du_'8851''45''8852''45'lattice_1968 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
du_'8851''45''8852''45'lattice_1968 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Lattice'46'constructor_16803
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100
         (coe v1))
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130
         (coe v2))
      (coe
         du_'8851''45''8852''45'isLattice_1960 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_1970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_'8852''45''8851''45'distributiveLattice_1970 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8852''45''8851''45'distributiveLattice_1970 v3 v4 v5
du_'8852''45''8851''45'distributiveLattice_1970 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
du_'8852''45''8851''45'distributiveLattice_1970 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_DistributiveLattice'46'constructor_18235
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130
         (coe v2))
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100
         (coe v1))
      (coe
         du_'8852''45''8851''45'isDistributiveLattice_1964 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_1972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_'8851''45''8852''45'distributiveLattice_1972 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8851''45''8852''45'distributiveLattice_1972 v3 v4 v5
du_'8851''45''8852''45'distributiveLattice_1972 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
du_'8851''45''8852''45'distributiveLattice_1972 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_DistributiveLattice'46'constructor_18235
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100
         (coe v1))
      (MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130
         (coe v2))
      (coe
         du_'8851''45''8852''45'isDistributiveLattice_1962 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Construct.NaturalChoice.MinMaxOp._≥_
d__'8805'__1974 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805'__1974 = erased
-- Algebra.Construct.NaturalChoice.MinMaxOp.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_1982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_antimono'45''8804''45'distrib'45''8851'_1982 ~v0 ~v1 ~v2 v3 v4 v5
                                               v6 v7 v8 v9 v10
  = du_antimono'45''8804''45'distrib'45''8851'_1982
      v3 v4 v5 v6 v7 v8 v9 v10
du_antimono'45''8804''45'distrib'45''8851'_1982 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_antimono'45''8804''45'distrib'45''8851'_1982 v0 v1 v2 v3 v4 v5
                                                v6 v7
  = let v8
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_128
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                 (coe v0))
              v6 v7 in
    case coe v8 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v6 v7))
                (coe v3 v6)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   (coe v3 v6) (coe v3 v7))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776''728'_176
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe v3 v6)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         (coe v3 v6) (coe v3 v7)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
                      v2 (coe v3 v6) (coe v3 v7) (coe v5 v6 v7 v9)))
                (coe
                   v4
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v6 v7)
                   v6
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
                      v1 v6 v7 v9)))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v6 v7))
                (coe v3 v7)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                   (coe v3 v6) (coe v3 v7))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776''728'_176
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe v3 v7)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                         (coe v3 v6) (coe v3 v7)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
                      v2 (coe v3 v6) (coe v3 v7) (coe v5 v7 v6 v9)))
                (coe
                   v4
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      v6 v7)
                   v7
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
                      v1 v6 v7 v9)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Construct.NaturalChoice.MinMaxOp.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_2028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_antimono'45''8804''45'distrib'45''8852'_2028 ~v0 ~v1 ~v2 v3 v4 v5
                                               v6 v7 v8 v9 v10
  = du_antimono'45''8804''45'distrib'45''8852'_2028
      v3 v4 v5 v6 v7 v8 v9 v10
du_antimono'45''8804''45'distrib'45''8852'_2028 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_antimono'45''8804''45'distrib'45''8852'_2028 v0 v1 v2 v3 v4 v5
                                                v6 v7
  = let v8
          = coe
              MAlonzo.Code.Relation.Binary.Structures.d_total_128
              (MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                 (coe v0))
              v6 v7 in
    case coe v8 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v6 v7))
                (coe v3 v7)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   (coe v3 v6) (coe v3 v7))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776''728'_176
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe v3 v7)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         (coe v3 v6) (coe v3 v7)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8851'y'8776'y_112
                      v1 (coe v3 v6) (coe v3 v7) (coe v5 v6 v7 v9)))
                (coe
                   v4
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v6 v7)
                   v7
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8852'y'8776'y_136
                      v2 v6 v7 v9)))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin'45'equality__124
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776'_156
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                   (coe
                      MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                      (coe v0)))
                (coe
                   v3
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v6 v7))
                (coe v3 v6)
                (coe
                   MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                   (coe v3 v6) (coe v3 v7))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8776''728'_176
                   (coe
                      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                      (coe
                         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                         (coe v0)))
                   (coe v3 v6)
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                      (coe v3 v6) (coe v3 v7))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
                         (coe v3 v6) (coe v3 v7)))
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8804'y'8658'x'8851'y'8776'x_106
                      v1 (coe v3 v6) (coe v3 v7) (coe v5 v7 v6 v9)))
                (coe
                   v4
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                      v6 v7)
                   v6
                   (coe
                      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d_x'8805'y'8658'x'8852'y'8776'x_142
                      v2 v6 v7 v9)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Construct.NaturalChoice.MinMaxOp.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_2072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_x'8851'y'8804'x'8852'y_2072 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_x'8851'y'8804'x'8852'y_2072 v3 v4 v5 v6 v7
du_x'8851'y'8804'x'8852'y_2072 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84 ->
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_x'8851'y'8804'x'8852'y_2072 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_begin__110
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
            (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
         v3 v4)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
         v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8764'_136
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
               (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8851'__100 v1
            v3 v4)
         (coe v3)
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
            v3 v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_step'45''8764'_136
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                  (coe v0)))
            (coe v3)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
               v3 v4)
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
               v3 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du__'8718'_234
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
                     (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.d__'8852'__130 v2
                  v3 v4))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                  (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                  (coe v2))
               (coe v3) (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
            (coe v0) (coe v1) (coe v3) (coe v4)))
