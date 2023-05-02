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

module MAlonzo.Code.Algebra.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Bundles.RawMagma
d_RawMagma_8 a0 a1 = ()
newtype T_RawMagma_8
  = C_RawMagma'46'constructor_47 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Bundles.RawMagma.Carrier
d_Carrier_20 :: T_RawMagma_8 -> ()
d_Carrier_20 = erased
-- Algebra.Bundles.RawMagma._≈_
d__'8776'__22 :: T_RawMagma_8 -> AgdaAny -> AgdaAny -> ()
d__'8776'__22 = erased
-- Algebra.Bundles.RawMagma._∙_
d__'8729'__24 :: T_RawMagma_8 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__24 v0
  = case coe v0 of
      C_RawMagma'46'constructor_47 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawMagma._≉_
d__'8777'__26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawMagma_8 -> AgdaAny -> AgdaAny -> ()
d__'8777'__26 = erased
-- Algebra.Bundles.Magma
d_Magma_36 a0 a1 = ()
data T_Magma_36
  = C_Magma'46'constructor_447 (AgdaAny -> AgdaAny -> AgdaAny)
                               MAlonzo.Code.Algebra.Structures.T_IsMagma_86
-- Algebra.Bundles.Magma.Carrier
d_Carrier_50 :: T_Magma_36 -> ()
d_Carrier_50 = erased
-- Algebra.Bundles.Magma._≈_
d__'8776'__52 :: T_Magma_36 -> AgdaAny -> AgdaAny -> ()
d__'8776'__52 = erased
-- Algebra.Bundles.Magma._∙_
d__'8729'__54 :: T_Magma_36 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__54 v0
  = case coe v0 of
      C_Magma'46'constructor_447 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Magma.isMagma
d_isMagma_56 ::
  T_Magma_36 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_56 v0
  = case coe v0 of
      C_Magma'46'constructor_447 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Magma._.isEquivalence
d_isEquivalence_60 ::
  T_Magma_36 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_60 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe d_isMagma_56 (coe v0))
-- Algebra.Bundles.Magma._.isPartialEquivalence
d_isPartialEquivalence_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Magma_36 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_62 ~v0 ~v1 v2
  = du_isPartialEquivalence_62 v2
du_isPartialEquivalence_62 ::
  T_Magma_36 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_62 v0
  = let v1 = d_isMagma_56 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v1))
-- Algebra.Bundles.Magma._.refl
d_refl_64 :: T_Magma_36 -> AgdaAny -> AgdaAny
d_refl_64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe d_isMagma_56 (coe v0)))
-- Algebra.Bundles.Magma._.reflexive
d_reflexive_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Magma_36 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_66 ~v0 ~v1 v2 = du_reflexive_66 v2
du_reflexive_66 ::
  T_Magma_36 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_66 v0
  = let v1 = d_isMagma_56 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v1))
        v2
-- Algebra.Bundles.Magma._.setoid
d_setoid_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Magma_36 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_68 ~v0 ~v1 v2 = du_setoid_68 v2
du_setoid_68 ::
  T_Magma_36 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_68 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe d_isMagma_56 (coe v0))
-- Algebra.Bundles.Magma._.sym
d_sym_70 :: T_Magma_36 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_70 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe d_isMagma_56 (coe v0)))
-- Algebra.Bundles.Magma._.trans
d_trans_72 ::
  T_Magma_36 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_72 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe d_isMagma_56 (coe v0)))
-- Algebra.Bundles.Magma._.∙-cong
d_'8729''45'cong_74 ::
  T_Magma_36 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_74 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe d_isMagma_56 (coe v0))
-- Algebra.Bundles.Magma._.∙-congʳ
d_'8729''45'cong'691'_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Magma_36 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_76 ~v0 ~v1 v2 = du_'8729''45'cong'691'_76 v2
du_'8729''45'cong'691'_76 ::
  T_Magma_36 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_76 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe d_isMagma_56 (coe v0))
-- Algebra.Bundles.Magma._.∙-congˡ
d_'8729''45'cong'737'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Magma_36 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_78 ~v0 ~v1 v2 = du_'8729''45'cong'737'_78 v2
du_'8729''45'cong'737'_78 ::
  T_Magma_36 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_78 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe d_isMagma_56 (coe v0))
-- Algebra.Bundles.Magma.rawMagma
d_rawMagma_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Magma_36 -> T_RawMagma_8
d_rawMagma_80 ~v0 ~v1 v2 = du_rawMagma_80 v2
du_rawMagma_80 :: T_Magma_36 -> T_RawMagma_8
du_rawMagma_80 v0
  = coe C_RawMagma'46'constructor_47 (d__'8729'__54 (coe v0))
-- Algebra.Bundles.Magma._._≉_
d__'8777'__84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Magma_36 -> AgdaAny -> AgdaAny -> ()
d__'8777'__84 = erased
-- Algebra.Bundles.SelectiveMagma
d_SelectiveMagma_90 a0 a1 = ()
data T_SelectiveMagma_90
  = C_SelectiveMagma'46'constructor_1305 (AgdaAny ->
                                          AgdaAny -> AgdaAny)
                                         MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
-- Algebra.Bundles.SelectiveMagma.Carrier
d_Carrier_104 :: T_SelectiveMagma_90 -> ()
d_Carrier_104 = erased
-- Algebra.Bundles.SelectiveMagma._≈_
d__'8776'__106 :: T_SelectiveMagma_90 -> AgdaAny -> AgdaAny -> ()
d__'8776'__106 = erased
-- Algebra.Bundles.SelectiveMagma._∙_
d__'8729'__108 ::
  T_SelectiveMagma_90 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__108 v0
  = case coe v0 of
      C_SelectiveMagma'46'constructor_1305 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SelectiveMagma.isSelectiveMagma
d_isSelectiveMagma_110 ::
  T_SelectiveMagma_90 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
d_isSelectiveMagma_110 v0
  = case coe v0 of
      C_SelectiveMagma'46'constructor_1305 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SelectiveMagma._.isEquivalence
d_isEquivalence_114 ::
  T_SelectiveMagma_90 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_114 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_166
         (coe d_isSelectiveMagma_110 (coe v0)))
-- Algebra.Bundles.SelectiveMagma._.isMagma
d_isMagma_116 ::
  T_SelectiveMagma_90 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_166
      (coe d_isSelectiveMagma_110 (coe v0))
-- Algebra.Bundles.SelectiveMagma._.isPartialEquivalence
d_isPartialEquivalence_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SelectiveMagma_90 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_118 ~v0 ~v1 v2
  = du_isPartialEquivalence_118 v2
du_isPartialEquivalence_118 ::
  T_SelectiveMagma_90 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_118 v0
  = let v1 = d_isSelectiveMagma_110 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_166 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v2))
-- Algebra.Bundles.SelectiveMagma._.refl
d_refl_120 :: T_SelectiveMagma_90 -> AgdaAny -> AgdaAny
d_refl_120 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_166
            (coe d_isSelectiveMagma_110 (coe v0))))
-- Algebra.Bundles.SelectiveMagma._.reflexive
d_reflexive_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SelectiveMagma_90 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_122 ~v0 ~v1 v2 = du_reflexive_122 v2
du_reflexive_122 ::
  T_SelectiveMagma_90 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_122 v0
  = let v1 = d_isSelectiveMagma_110 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_166 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v2))
        v3
-- Algebra.Bundles.SelectiveMagma._.sel
d_sel_124 ::
  T_SelectiveMagma_90 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_124 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_sel_168
      (coe d_isSelectiveMagma_110 (coe v0))
-- Algebra.Bundles.SelectiveMagma._.setoid
d_setoid_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SelectiveMagma_90 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_126 ~v0 ~v1 v2 = du_setoid_126 v2
du_setoid_126 ::
  T_SelectiveMagma_90 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_126 v0
  = let v1 = d_isSelectiveMagma_110 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_166 (coe v1))
-- Algebra.Bundles.SelectiveMagma._.sym
d_sym_128 ::
  T_SelectiveMagma_90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_128 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_166
            (coe d_isSelectiveMagma_110 (coe v0))))
-- Algebra.Bundles.SelectiveMagma._.trans
d_trans_130 ::
  T_SelectiveMagma_90 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_130 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_166
            (coe d_isSelectiveMagma_110 (coe v0))))
-- Algebra.Bundles.SelectiveMagma._.∙-cong
d_'8729''45'cong_132 ::
  T_SelectiveMagma_90 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_166
         (coe d_isSelectiveMagma_110 (coe v0)))
-- Algebra.Bundles.SelectiveMagma._.∙-congʳ
d_'8729''45'cong'691'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SelectiveMagma_90 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_134 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_134 v2
du_'8729''45'cong'691'_134 ::
  T_SelectiveMagma_90 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_134 v0
  = let v1 = d_isSelectiveMagma_110 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_166 (coe v1))
-- Algebra.Bundles.SelectiveMagma._.∙-congˡ
d_'8729''45'cong'737'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SelectiveMagma_90 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_136 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_136 v2
du_'8729''45'cong'737'_136 ::
  T_SelectiveMagma_90 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_136 v0
  = let v1 = d_isSelectiveMagma_110 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_166 (coe v1))
-- Algebra.Bundles.SelectiveMagma.magma
d_magma_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SelectiveMagma_90 -> T_Magma_36
d_magma_138 ~v0 ~v1 v2 = du_magma_138 v2
du_magma_138 :: T_SelectiveMagma_90 -> T_Magma_36
du_magma_138 v0
  = coe
      C_Magma'46'constructor_447 (d__'8729'__108 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isMagma_166
         (coe d_isSelectiveMagma_110 (coe v0)))
-- Algebra.Bundles.SelectiveMagma._.rawMagma
d_rawMagma_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SelectiveMagma_90 -> T_RawMagma_8
d_rawMagma_142 ~v0 ~v1 v2 = du_rawMagma_142 v2
du_rawMagma_142 :: T_SelectiveMagma_90 -> T_RawMagma_8
du_rawMagma_142 v0 = coe du_rawMagma_80 (coe du_magma_138 (coe v0))
-- Algebra.Bundles.CommutativeMagma
d_CommutativeMagma_148 a0 a1 = ()
data T_CommutativeMagma_148
  = C_CommutativeMagma'46'constructor_2213 (AgdaAny ->
                                            AgdaAny -> AgdaAny)
                                           MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
-- Algebra.Bundles.CommutativeMagma.Carrier
d_Carrier_162 :: T_CommutativeMagma_148 -> ()
d_Carrier_162 = erased
-- Algebra.Bundles.CommutativeMagma._≈_
d__'8776'__164 ::
  T_CommutativeMagma_148 -> AgdaAny -> AgdaAny -> ()
d__'8776'__164 = erased
-- Algebra.Bundles.CommutativeMagma._∙_
d__'8729'__166 ::
  T_CommutativeMagma_148 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__166 v0
  = case coe v0 of
      C_CommutativeMagma'46'constructor_2213 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeMagma.isCommutativeMagma
d_isCommutativeMagma_168 ::
  T_CommutativeMagma_148 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_168 v0
  = case coe v0 of
      C_CommutativeMagma'46'constructor_2213 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeMagma._.comm
d_comm_172 ::
  T_CommutativeMagma_148 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_132
      (coe d_isCommutativeMagma_168 (coe v0))
-- Algebra.Bundles.CommutativeMagma._.isEquivalence
d_isEquivalence_174 ::
  T_CommutativeMagma_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_174 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_130
         (coe d_isCommutativeMagma_168 (coe v0)))
-- Algebra.Bundles.CommutativeMagma._.isMagma
d_isMagma_176 ::
  T_CommutativeMagma_148 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_176 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_130
      (coe d_isCommutativeMagma_168 (coe v0))
-- Algebra.Bundles.CommutativeMagma._.isPartialEquivalence
d_isPartialEquivalence_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMagma_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_178 ~v0 ~v1 v2
  = du_isPartialEquivalence_178 v2
du_isPartialEquivalence_178 ::
  T_CommutativeMagma_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_178 v0
  = let v1 = d_isCommutativeMagma_168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_130 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v2))
-- Algebra.Bundles.CommutativeMagma._.refl
d_refl_180 :: T_CommutativeMagma_148 -> AgdaAny -> AgdaAny
d_refl_180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_130
            (coe d_isCommutativeMagma_168 (coe v0))))
-- Algebra.Bundles.CommutativeMagma._.reflexive
d_reflexive_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMagma_148 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_182 ~v0 ~v1 v2 = du_reflexive_182 v2
du_reflexive_182 ::
  T_CommutativeMagma_148 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_182 v0
  = let v1 = d_isCommutativeMagma_168 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_130 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v2))
        v3
-- Algebra.Bundles.CommutativeMagma._.setoid
d_setoid_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMagma_148 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_184 ~v0 ~v1 v2 = du_setoid_184 v2
du_setoid_184 ::
  T_CommutativeMagma_148 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_184 v0
  = let v1 = d_isCommutativeMagma_168 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_130 (coe v1))
-- Algebra.Bundles.CommutativeMagma._.sym
d_sym_186 ::
  T_CommutativeMagma_148 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_186 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_130
            (coe d_isCommutativeMagma_168 (coe v0))))
-- Algebra.Bundles.CommutativeMagma._.trans
d_trans_188 ::
  T_CommutativeMagma_148 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_188 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_130
            (coe d_isCommutativeMagma_168 (coe v0))))
-- Algebra.Bundles.CommutativeMagma._.∙-cong
d_'8729''45'cong_190 ::
  T_CommutativeMagma_148 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_130
         (coe d_isCommutativeMagma_168 (coe v0)))
-- Algebra.Bundles.CommutativeMagma._.∙-congʳ
d_'8729''45'cong'691'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMagma_148 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_192 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_192 v2
du_'8729''45'cong'691'_192 ::
  T_CommutativeMagma_148 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_192 v0
  = let v1 = d_isCommutativeMagma_168 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_130 (coe v1))
-- Algebra.Bundles.CommutativeMagma._.∙-congˡ
d_'8729''45'cong'737'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMagma_148 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_194 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_194 v2
du_'8729''45'cong'737'_194 ::
  T_CommutativeMagma_148 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_194 v0
  = let v1 = d_isCommutativeMagma_168 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_130 (coe v1))
-- Algebra.Bundles.CommutativeMagma.magma
d_magma_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMagma_148 -> T_Magma_36
d_magma_196 ~v0 ~v1 v2 = du_magma_196 v2
du_magma_196 :: T_CommutativeMagma_148 -> T_Magma_36
du_magma_196 v0
  = coe
      C_Magma'46'constructor_447 (d__'8729'__166 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isMagma_130
         (coe d_isCommutativeMagma_168 (coe v0)))
-- Algebra.Bundles.CommutativeMagma._.rawMagma
d_rawMagma_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMagma_148 -> T_RawMagma_8
d_rawMagma_200 ~v0 ~v1 v2 = du_rawMagma_200 v2
du_rawMagma_200 :: T_CommutativeMagma_148 -> T_RawMagma_8
du_rawMagma_200 v0 = coe du_rawMagma_80 (coe du_magma_196 (coe v0))
-- Algebra.Bundles.Semigroup
d_Semigroup_206 a0 a1 = ()
data T_Semigroup_206
  = C_Semigroup'46'constructor_3121 (AgdaAny -> AgdaAny -> AgdaAny)
                                    MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
-- Algebra.Bundles.Semigroup.Carrier
d_Carrier_220 :: T_Semigroup_206 -> ()
d_Carrier_220 = erased
-- Algebra.Bundles.Semigroup._≈_
d__'8776'__222 :: T_Semigroup_206 -> AgdaAny -> AgdaAny -> ()
d__'8776'__222 = erased
-- Algebra.Bundles.Semigroup._∙_
d__'8729'__224 :: T_Semigroup_206 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__224 v0
  = case coe v0 of
      C_Semigroup'46'constructor_3121 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semigroup.isSemigroup
d_isSemigroup_226 ::
  T_Semigroup_206 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_226 v0
  = case coe v0 of
      C_Semigroup'46'constructor_3121 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semigroup._.assoc
d_assoc_230 ::
  T_Semigroup_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe d_isSemigroup_226 (coe v0))
-- Algebra.Bundles.Semigroup._.isEquivalence
d_isEquivalence_232 ::
  T_Semigroup_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe d_isSemigroup_226 (coe v0)))
-- Algebra.Bundles.Semigroup._.isMagma
d_isMagma_234 ::
  T_Semigroup_206 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_234 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe d_isSemigroup_226 (coe v0))
-- Algebra.Bundles.Semigroup._.isPartialEquivalence
d_isPartialEquivalence_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semigroup_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_236 ~v0 ~v1 v2
  = du_isPartialEquivalence_236 v2
du_isPartialEquivalence_236 ::
  T_Semigroup_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_236 v0
  = let v1 = d_isSemigroup_226 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v2))
-- Algebra.Bundles.Semigroup._.refl
d_refl_238 :: T_Semigroup_206 -> AgdaAny -> AgdaAny
d_refl_238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe d_isSemigroup_226 (coe v0))))
-- Algebra.Bundles.Semigroup._.reflexive
d_reflexive_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semigroup_206 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_240 ~v0 ~v1 v2 = du_reflexive_240 v2
du_reflexive_240 ::
  T_Semigroup_206 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_240 v0
  = let v1 = d_isSemigroup_226 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v2))
        v3
-- Algebra.Bundles.Semigroup._.setoid
d_setoid_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semigroup_206 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_242 ~v0 ~v1 v2 = du_setoid_242 v2
du_setoid_242 ::
  T_Semigroup_206 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_242 v0
  = let v1 = d_isSemigroup_226 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v1))
-- Algebra.Bundles.Semigroup._.sym
d_sym_244 ::
  T_Semigroup_206 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe d_isSemigroup_226 (coe v0))))
-- Algebra.Bundles.Semigroup._.trans
d_trans_246 ::
  T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_246 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe d_isSemigroup_226 (coe v0))))
-- Algebra.Bundles.Semigroup._.∙-cong
d_'8729''45'cong_248 ::
  T_Semigroup_206 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe d_isSemigroup_226 (coe v0)))
-- Algebra.Bundles.Semigroup._.∙-congʳ
d_'8729''45'cong'691'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_250 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_250 v2
du_'8729''45'cong'691'_250 ::
  T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_250 v0
  = let v1 = d_isSemigroup_226 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v1))
-- Algebra.Bundles.Semigroup._.∙-congˡ
d_'8729''45'cong'737'_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_252 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_252 v2
du_'8729''45'cong'737'_252 ::
  T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_252 v0
  = let v1 = d_isSemigroup_226 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v1))
-- Algebra.Bundles.Semigroup.magma
d_magma_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semigroup_206 -> T_Magma_36
d_magma_254 ~v0 ~v1 v2 = du_magma_254 v2
du_magma_254 :: T_Semigroup_206 -> T_Magma_36
du_magma_254 v0
  = coe
      C_Magma'46'constructor_447 (d__'8729'__224 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe d_isSemigroup_226 (coe v0)))
-- Algebra.Bundles.Semigroup._._≉_
d__'8777'__258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semigroup_206 -> AgdaAny -> AgdaAny -> ()
d__'8777'__258 = erased
-- Algebra.Bundles.Semigroup._.rawMagma
d_rawMagma_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semigroup_206 -> T_RawMagma_8
d_rawMagma_260 ~v0 ~v1 v2 = du_rawMagma_260 v2
du_rawMagma_260 :: T_Semigroup_206 -> T_RawMagma_8
du_rawMagma_260 v0 = coe du_rawMagma_80 (coe du_magma_254 (coe v0))
-- Algebra.Bundles.Band
d_Band_266 a0 a1 = ()
data T_Band_266
  = C_Band'46'constructor_4059 (AgdaAny -> AgdaAny -> AgdaAny)
                               MAlonzo.Code.Algebra.Structures.T_IsBand_230
-- Algebra.Bundles.Band.Carrier
d_Carrier_280 :: T_Band_266 -> ()
d_Carrier_280 = erased
-- Algebra.Bundles.Band._≈_
d__'8776'__282 :: T_Band_266 -> AgdaAny -> AgdaAny -> ()
d__'8776'__282 = erased
-- Algebra.Bundles.Band._∙_
d__'8729'__284 :: T_Band_266 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__284 v0
  = case coe v0 of
      C_Band'46'constructor_4059 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Band.isBand
d_isBand_286 ::
  T_Band_266 -> MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_isBand_286 v0
  = case coe v0 of
      C_Band'46'constructor_4059 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Band._.assoc
d_assoc_290 ::
  T_Band_266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
         (coe d_isBand_286 (coe v0)))
-- Algebra.Bundles.Band._.idem
d_idem_292 :: T_Band_266 -> AgdaAny -> AgdaAny
d_idem_292 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_240
      (coe d_isBand_286 (coe v0))
-- Algebra.Bundles.Band._.isEquivalence
d_isEquivalence_294 ::
  T_Band_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
            (coe d_isBand_286 (coe v0))))
-- Algebra.Bundles.Band._.isMagma
d_isMagma_296 ::
  T_Band_266 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_296 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
         (coe d_isBand_286 (coe v0)))
-- Algebra.Bundles.Band._.isPartialEquivalence
d_isPartialEquivalence_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Band_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_298 ~v0 ~v1 v2
  = du_isPartialEquivalence_298 v2
du_isPartialEquivalence_298 ::
  T_Band_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_298 v0
  = let v1 = d_isBand_286 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v3))
-- Algebra.Bundles.Band._.isSemigroup
d_isSemigroup_300 ::
  T_Band_266 -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_300 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
      (coe d_isBand_286 (coe v0))
-- Algebra.Bundles.Band._.refl
d_refl_302 :: T_Band_266 -> AgdaAny -> AgdaAny
d_refl_302 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
               (coe d_isBand_286 (coe v0)))))
-- Algebra.Bundles.Band._.reflexive
d_reflexive_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Band_266 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_304 ~v0 ~v1 v2 = du_reflexive_304 v2
du_reflexive_304 ::
  T_Band_266 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_304 v0
  = let v1 = d_isBand_286 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v3))
        v4
-- Algebra.Bundles.Band._.setoid
d_setoid_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Band_266 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_306 ~v0 ~v1 v2 = du_setoid_306 v2
du_setoid_306 ::
  T_Band_266 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_306 v0
  = let v1 = d_isBand_286 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.Band._.sym
d_sym_308 :: T_Band_266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_308 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
               (coe d_isBand_286 (coe v0)))))
-- Algebra.Bundles.Band._.trans
d_trans_310 ::
  T_Band_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
               (coe d_isBand_286 (coe v0)))))
-- Algebra.Bundles.Band._.∙-cong
d_'8729''45'cong_312 ::
  T_Band_266 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
            (coe d_isBand_286 (coe v0))))
-- Algebra.Bundles.Band._.∙-congʳ
d_'8729''45'cong'691'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Band_266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_314 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_314 v2
du_'8729''45'cong'691'_314 ::
  T_Band_266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_314 v0
  = let v1 = d_isBand_286 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.Band._.∙-congˡ
d_'8729''45'cong'737'_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Band_266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_316 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_316 v2
du_'8729''45'cong'737'_316 ::
  T_Band_266 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_316 v0
  = let v1 = d_isBand_286 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.Band.semigroup
d_semigroup_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Band_266 -> T_Semigroup_206
d_semigroup_318 ~v0 ~v1 v2 = du_semigroup_318 v2
du_semigroup_318 :: T_Band_266 -> T_Semigroup_206
du_semigroup_318 v0
  = coe
      C_Semigroup'46'constructor_3121 (d__'8729'__284 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
         (coe d_isBand_286 (coe v0)))
-- Algebra.Bundles.Band._._≉_
d__'8777'__322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Band_266 -> AgdaAny -> AgdaAny -> ()
d__'8777'__322 = erased
-- Algebra.Bundles.Band._.magma
d_magma_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Band_266 -> T_Magma_36
d_magma_324 ~v0 ~v1 v2 = du_magma_324 v2
du_magma_324 :: T_Band_266 -> T_Magma_36
du_magma_324 v0 = coe du_magma_254 (coe du_semigroup_318 (coe v0))
-- Algebra.Bundles.Band._.rawMagma
d_rawMagma_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Band_266 -> T_RawMagma_8
d_rawMagma_326 ~v0 ~v1 v2 = du_rawMagma_326 v2
du_rawMagma_326 :: T_Band_266 -> T_RawMagma_8
du_rawMagma_326 v0
  = let v1 = coe du_semigroup_318 (coe v0) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v1))
-- Algebra.Bundles.CommutativeSemigroup
d_CommutativeSemigroup_332 a0 a1 = ()
data T_CommutativeSemigroup_332
  = C_CommutativeSemigroup'46'constructor_5063 (AgdaAny ->
                                                AgdaAny -> AgdaAny)
                                               MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
-- Algebra.Bundles.CommutativeSemigroup.Carrier
d_Carrier_346 :: T_CommutativeSemigroup_332 -> ()
d_Carrier_346 = erased
-- Algebra.Bundles.CommutativeSemigroup._≈_
d__'8776'__348 ::
  T_CommutativeSemigroup_332 -> AgdaAny -> AgdaAny -> ()
d__'8776'__348 = erased
-- Algebra.Bundles.CommutativeSemigroup._∙_
d__'8729'__350 ::
  T_CommutativeSemigroup_332 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__350 v0
  = case coe v0 of
      C_CommutativeSemigroup'46'constructor_5063 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemigroup.isCommutativeSemigroup
d_isCommutativeSemigroup_352 ::
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_352 v0
  = case coe v0 of
      C_CommutativeSemigroup'46'constructor_5063 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemigroup._.assoc
d_assoc_356 ::
  T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_356 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
         (coe d_isCommutativeSemigroup_352 (coe v0)))
-- Algebra.Bundles.CommutativeSemigroup._.comm
d_comm_358 ::
  T_CommutativeSemigroup_332 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_358 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_280
      (coe d_isCommutativeSemigroup_352 (coe v0))
-- Algebra.Bundles.CommutativeSemigroup._.isCommutativeMagma
d_isCommutativeMagma_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_360 ~v0 ~v1 v2 = du_isCommutativeMagma_360 v2
du_isCommutativeMagma_360 ::
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe d_isCommutativeSemigroup_352 (coe v0))
-- Algebra.Bundles.CommutativeSemigroup._.isEquivalence
d_isEquivalence_362 ::
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_362 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
            (coe d_isCommutativeSemigroup_352 (coe v0))))
-- Algebra.Bundles.CommutativeSemigroup._.isMagma
d_isMagma_364 ::
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_364 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
         (coe d_isCommutativeSemigroup_352 (coe v0)))
-- Algebra.Bundles.CommutativeSemigroup._.isPartialEquivalence
d_isPartialEquivalence_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_366 ~v0 ~v1 v2
  = du_isPartialEquivalence_366 v2
du_isPartialEquivalence_366 ::
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_366 v0
  = let v1 = d_isCommutativeSemigroup_352 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v3))
-- Algebra.Bundles.CommutativeSemigroup._.isSemigroup
d_isSemigroup_368 ::
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
      (coe d_isCommutativeSemigroup_352 (coe v0))
-- Algebra.Bundles.CommutativeSemigroup._.refl
d_refl_370 :: T_CommutativeSemigroup_332 -> AgdaAny -> AgdaAny
d_refl_370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe d_isCommutativeSemigroup_352 (coe v0)))))
-- Algebra.Bundles.CommutativeSemigroup._.reflexive
d_reflexive_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_372 ~v0 ~v1 v2 = du_reflexive_372 v2
du_reflexive_372 ::
  T_CommutativeSemigroup_332 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_372 v0
  = let v1 = d_isCommutativeSemigroup_352 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v3))
        v4
-- Algebra.Bundles.CommutativeSemigroup._.setoid
d_setoid_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_374 ~v0 ~v1 v2 = du_setoid_374 v2
du_setoid_374 ::
  T_CommutativeSemigroup_332 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_374 v0
  = let v1 = d_isCommutativeSemigroup_352 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.CommutativeSemigroup._.sym
d_sym_376 ::
  T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_376 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe d_isCommutativeSemigroup_352 (coe v0)))))
-- Algebra.Bundles.CommutativeSemigroup._.trans
d_trans_378 ::
  T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_378 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
               (coe d_isCommutativeSemigroup_352 (coe v0)))))
-- Algebra.Bundles.CommutativeSemigroup._.∙-cong
d_'8729''45'cong_380 ::
  T_CommutativeSemigroup_332 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_380 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
            (coe d_isCommutativeSemigroup_352 (coe v0))))
-- Algebra.Bundles.CommutativeSemigroup._.∙-congʳ
d_'8729''45'cong'691'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_382 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_382 v2
du_'8729''45'cong'691'_382 ::
  T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_382 v0
  = let v1 = d_isCommutativeSemigroup_352 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.CommutativeSemigroup._.∙-congˡ
d_'8729''45'cong'737'_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_384 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_384 v2
du_'8729''45'cong'737'_384 ::
  T_CommutativeSemigroup_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_384 v0
  = let v1 = d_isCommutativeSemigroup_352 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_278 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.CommutativeSemigroup.semigroup
d_semigroup_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 -> T_Semigroup_206
d_semigroup_386 ~v0 ~v1 v2 = du_semigroup_386 v2
du_semigroup_386 :: T_CommutativeSemigroup_332 -> T_Semigroup_206
du_semigroup_386 v0
  = coe
      C_Semigroup'46'constructor_3121 (d__'8729'__350 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_278
         (coe d_isCommutativeSemigroup_352 (coe v0)))
-- Algebra.Bundles.CommutativeSemigroup._._≉_
d__'8777'__390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 -> AgdaAny -> AgdaAny -> ()
d__'8777'__390 = erased
-- Algebra.Bundles.CommutativeSemigroup._.magma
d_magma_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 -> T_Magma_36
d_magma_392 ~v0 ~v1 v2 = du_magma_392 v2
du_magma_392 :: T_CommutativeSemigroup_332 -> T_Magma_36
du_magma_392 v0 = coe du_magma_254 (coe du_semigroup_386 (coe v0))
-- Algebra.Bundles.CommutativeSemigroup._.rawMagma
d_rawMagma_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 -> T_RawMagma_8
d_rawMagma_394 ~v0 ~v1 v2 = du_rawMagma_394 v2
du_rawMagma_394 :: T_CommutativeSemigroup_332 -> T_RawMagma_8
du_rawMagma_394 v0
  = let v1 = coe du_semigroup_386 (coe v0) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v1))
-- Algebra.Bundles.CommutativeSemigroup.commutativeMagma
d_commutativeMagma_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemigroup_332 -> T_CommutativeMagma_148
d_commutativeMagma_396 ~v0 ~v1 v2 = du_commutativeMagma_396 v2
du_commutativeMagma_396 ::
  T_CommutativeSemigroup_332 -> T_CommutativeMagma_148
du_commutativeMagma_396 v0
  = coe
      C_CommutativeMagma'46'constructor_2213 (d__'8729'__350 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
         (coe d_isCommutativeSemigroup_352 (coe v0)))
-- Algebra.Bundles.Semilattice
d_Semilattice_402 a0 a1 = ()
data T_Semilattice_402
  = C_Semilattice'46'constructor_6221 (AgdaAny -> AgdaAny -> AgdaAny)
                                      MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
-- Algebra.Bundles.Semilattice.Carrier
d_Carrier_416 :: T_Semilattice_402 -> ()
d_Carrier_416 = erased
-- Algebra.Bundles.Semilattice._≈_
d__'8776'__418 :: T_Semilattice_402 -> AgdaAny -> AgdaAny -> ()
d__'8776'__418 = erased
-- Algebra.Bundles.Semilattice._∧_
d__'8743'__420 ::
  T_Semilattice_402 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__420 v0
  = case coe v0 of
      C_Semilattice'46'constructor_6221 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semilattice.isSemilattice
d_isSemilattice_422 ::
  T_Semilattice_402 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_isSemilattice_422 v0
  = case coe v0 of
      C_Semilattice'46'constructor_6221 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semilattice._.assoc
d_assoc_426 ::
  T_Semilattice_402 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
         (coe
            MAlonzo.Code.Algebra.Structures.d_isBand_320
            (coe d_isSemilattice_422 (coe v0))))
-- Algebra.Bundles.Semilattice._.comm
d_comm_428 :: T_Semilattice_402 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_428 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_322
      (coe d_isSemilattice_422 (coe v0))
-- Algebra.Bundles.Semilattice._.idem
d_idem_430 :: T_Semilattice_402 -> AgdaAny -> AgdaAny
d_idem_430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_240
      (coe
         MAlonzo.Code.Algebra.Structures.d_isBand_320
         (coe d_isSemilattice_422 (coe v0)))
-- Algebra.Bundles.Semilattice._.isBand
d_isBand_432 ::
  T_Semilattice_402 -> MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_isBand_432 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isBand_320
      (coe d_isSemilattice_422 (coe v0))
-- Algebra.Bundles.Semilattice._.isEquivalence
d_isEquivalence_434 ::
  T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
            (coe
               MAlonzo.Code.Algebra.Structures.d_isBand_320
               (coe d_isSemilattice_422 (coe v0)))))
-- Algebra.Bundles.Semilattice._.isMagma
d_isMagma_436 ::
  T_Semilattice_402 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
         (coe
            MAlonzo.Code.Algebra.Structures.d_isBand_320
            (coe d_isSemilattice_422 (coe v0))))
-- Algebra.Bundles.Semilattice._.isPartialEquivalence
d_isPartialEquivalence_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_438 ~v0 ~v1 v2
  = du_isPartialEquivalence_438 v2
du_isPartialEquivalence_438 ::
  T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_438 v0
  = let v1 = d_isSemilattice_422 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_320 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v4))
-- Algebra.Bundles.Semilattice._.isSemigroup
d_isSemigroup_440 ::
  T_Semilattice_402 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_440 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
      (coe
         MAlonzo.Code.Algebra.Structures.d_isBand_320
         (coe d_isSemilattice_422 (coe v0)))
-- Algebra.Bundles.Semilattice._.refl
d_refl_442 :: T_Semilattice_402 -> AgdaAny -> AgdaAny
d_refl_442 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isBand_320
                  (coe d_isSemilattice_422 (coe v0))))))
-- Algebra.Bundles.Semilattice._.reflexive
d_reflexive_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_444 ~v0 ~v1 v2 = du_reflexive_444 v2
du_reflexive_444 ::
  T_Semilattice_402 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_444 v0
  = let v1 = d_isSemilattice_422 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_320 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v4))
        v5
-- Algebra.Bundles.Semilattice._.setoid
d_setoid_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_446 ~v0 ~v1 v2 = du_setoid_446 v2
du_setoid_446 ::
  T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_446 v0
  = let v1 = d_isSemilattice_422 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_320 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.Semilattice._.sym
d_sym_448 ::
  T_Semilattice_402 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_448 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isBand_320
                  (coe d_isSemilattice_422 (coe v0))))))
-- Algebra.Bundles.Semilattice._.trans
d_trans_450 ::
  T_Semilattice_402 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_450 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isBand_320
                  (coe d_isSemilattice_422 (coe v0))))))
-- Algebra.Bundles.Semilattice._.∙-cong
d_'8729''45'cong_452 ::
  T_Semilattice_402 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_452 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_238
            (coe
               MAlonzo.Code.Algebra.Structures.d_isBand_320
               (coe d_isSemilattice_422 (coe v0)))))
-- Algebra.Bundles.Semilattice._.∙-congʳ
d_'8729''45'cong'691'_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_454 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_454 v2
du_'8729''45'cong'691'_454 ::
  T_Semilattice_402 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_454 v0
  = let v1 = d_isSemilattice_422 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_320 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.Semilattice._.∙-congˡ
d_'8729''45'cong'737'_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_456 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_456 v2
du_'8729''45'cong'737'_456 ::
  T_Semilattice_402 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_456 v0
  = let v1 = d_isSemilattice_422 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isBand_320 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_238 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.Semilattice.band
d_band_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 -> T_Band_266
d_band_458 ~v0 ~v1 v2 = du_band_458 v2
du_band_458 :: T_Semilattice_402 -> T_Band_266
du_band_458 v0
  = coe
      C_Band'46'constructor_4059 (d__'8743'__420 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isBand_320
         (coe d_isSemilattice_422 (coe v0)))
-- Algebra.Bundles.Semilattice._._≉_
d__'8777'__462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 -> AgdaAny -> AgdaAny -> ()
d__'8777'__462 = erased
-- Algebra.Bundles.Semilattice._.magma
d_magma_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 -> T_Magma_36
d_magma_464 ~v0 ~v1 v2 = du_magma_464 v2
du_magma_464 :: T_Semilattice_402 -> T_Magma_36
du_magma_464 v0
  = let v1 = coe du_band_458 (coe v0) in
    coe du_magma_254 (coe du_semigroup_318 (coe v1))
-- Algebra.Bundles.Semilattice._.rawMagma
d_rawMagma_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 -> T_RawMagma_8
d_rawMagma_466 ~v0 ~v1 v2 = du_rawMagma_466 v2
du_rawMagma_466 :: T_Semilattice_402 -> T_RawMagma_8
du_rawMagma_466 v0
  = let v1 = coe du_band_458 (coe v0) in
    let v2 = coe du_semigroup_318 (coe v1) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v2))
-- Algebra.Bundles.Semilattice._.semigroup
d_semigroup_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semilattice_402 -> T_Semigroup_206
d_semigroup_468 ~v0 ~v1 v2 = du_semigroup_468 v2
du_semigroup_468 :: T_Semilattice_402 -> T_Semigroup_206
du_semigroup_468 v0
  = coe du_semigroup_318 (coe du_band_458 (coe v0))
-- Algebra.Bundles.RawMonoid
d_RawMonoid_474 a0 a1 = ()
data T_RawMonoid_474
  = C_RawMonoid'46'constructor_7223 (AgdaAny -> AgdaAny -> AgdaAny)
                                    AgdaAny
-- Algebra.Bundles.RawMonoid.Carrier
d_Carrier_488 :: T_RawMonoid_474 -> ()
d_Carrier_488 = erased
-- Algebra.Bundles.RawMonoid._≈_
d__'8776'__490 :: T_RawMonoid_474 -> AgdaAny -> AgdaAny -> ()
d__'8776'__490 = erased
-- Algebra.Bundles.RawMonoid._∙_
d__'8729'__492 :: T_RawMonoid_474 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__492 v0
  = case coe v0 of
      C_RawMonoid'46'constructor_7223 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawMonoid.ε
d_ε_494 :: T_RawMonoid_474 -> AgdaAny
d_ε_494 v0
  = case coe v0 of
      C_RawMonoid'46'constructor_7223 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawMonoid.rawMagma
d_rawMagma_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawMonoid_474 -> T_RawMagma_8
d_rawMagma_496 ~v0 ~v1 v2 = du_rawMagma_496 v2
du_rawMagma_496 :: T_RawMonoid_474 -> T_RawMagma_8
du_rawMagma_496 v0
  = coe C_RawMagma'46'constructor_47 (d__'8729'__492 (coe v0))
-- Algebra.Bundles.RawMonoid._._≉_
d__'8777'__500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawMonoid_474 -> AgdaAny -> AgdaAny -> ()
d__'8777'__500 = erased
-- Algebra.Bundles.Monoid
d_Monoid_506 a0 a1 = ()
data T_Monoid_506
  = C_Monoid'46'constructor_7649 (AgdaAny -> AgdaAny -> AgdaAny)
                                 AgdaAny MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
-- Algebra.Bundles.Monoid.Carrier
d_Carrier_522 :: T_Monoid_506 -> ()
d_Carrier_522 = erased
-- Algebra.Bundles.Monoid._≈_
d__'8776'__524 :: T_Monoid_506 -> AgdaAny -> AgdaAny -> ()
d__'8776'__524 = erased
-- Algebra.Bundles.Monoid._∙_
d__'8729'__526 :: T_Monoid_506 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__526 v0
  = case coe v0 of
      C_Monoid'46'constructor_7649 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Monoid.ε
d_ε_528 :: T_Monoid_506 -> AgdaAny
d_ε_528 v0
  = case coe v0 of
      C_Monoid'46'constructor_7649 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Monoid.isMonoid
d_isMonoid_530 ::
  T_Monoid_506 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_530 v0
  = case coe v0 of
      C_Monoid'46'constructor_7649 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Monoid._.assoc
d_assoc_534 ::
  T_Monoid_506 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_534 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe d_isMonoid_530 (coe v0)))
-- Algebra.Bundles.Monoid._.identity
d_identity_536 ::
  T_Monoid_506 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe d_isMonoid_530 (coe v0))
-- Algebra.Bundles.Monoid._.identityʳ
d_identity'691'_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> AgdaAny -> AgdaAny
d_identity'691'_538 ~v0 ~v1 v2 = du_identity'691'_538 v2
du_identity'691'_538 :: T_Monoid_506 -> AgdaAny -> AgdaAny
du_identity'691'_538 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe d_isMonoid_530 (coe v0))
-- Algebra.Bundles.Monoid._.identityˡ
d_identity'737'_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> AgdaAny -> AgdaAny
d_identity'737'_540 ~v0 ~v1 v2 = du_identity'737'_540 v2
du_identity'737'_540 :: T_Monoid_506 -> AgdaAny -> AgdaAny
du_identity'737'_540 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe d_isMonoid_530 (coe v0))
-- Algebra.Bundles.Monoid._.isEquivalence
d_isEquivalence_542 ::
  T_Monoid_506 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe d_isMonoid_530 (coe v0))))
-- Algebra.Bundles.Monoid._.isMagma
d_isMagma_544 ::
  T_Monoid_506 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_544 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe d_isMonoid_530 (coe v0)))
-- Algebra.Bundles.Monoid._.isPartialEquivalence
d_isPartialEquivalence_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_546 ~v0 ~v1 v2
  = du_isPartialEquivalence_546 v2
du_isPartialEquivalence_546 ::
  T_Monoid_506 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_546 v0
  = let v1 = d_isMonoid_530 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v3))
-- Algebra.Bundles.Monoid._.isSemigroup
d_isSemigroup_548 ::
  T_Monoid_506 -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_548 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe d_isMonoid_530 (coe v0))
-- Algebra.Bundles.Monoid._.refl
d_refl_550 :: T_Monoid_506 -> AgdaAny -> AgdaAny
d_refl_550 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe d_isMonoid_530 (coe v0)))))
-- Algebra.Bundles.Monoid._.reflexive
d_reflexive_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_552 ~v0 ~v1 v2 = du_reflexive_552 v2
du_reflexive_552 ::
  T_Monoid_506 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_552 v0
  = let v1 = d_isMonoid_530 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v3))
        v4
-- Algebra.Bundles.Monoid._.setoid
d_setoid_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_554 ~v0 ~v1 v2 = du_setoid_554 v2
du_setoid_554 ::
  T_Monoid_506 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_554 v0
  = let v1 = d_isMonoid_530 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.Monoid._.sym
d_sym_556 ::
  T_Monoid_506 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_556 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe d_isMonoid_530 (coe v0)))))
-- Algebra.Bundles.Monoid._.trans
d_trans_558 ::
  T_Monoid_506 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_558 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe d_isMonoid_530 (coe v0)))))
-- Algebra.Bundles.Monoid._.∙-cong
d_'8729''45'cong_560 ::
  T_Monoid_506 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_560 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe d_isMonoid_530 (coe v0))))
-- Algebra.Bundles.Monoid._.∙-congʳ
d_'8729''45'cong'691'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_562 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_562 v2
du_'8729''45'cong'691'_562 ::
  T_Monoid_506 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_562 v0
  = let v1 = d_isMonoid_530 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.Monoid._.∙-congˡ
d_'8729''45'cong'737'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_564 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_564 v2
du_'8729''45'cong'737'_564 ::
  T_Monoid_506 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_564 v0
  = let v1 = d_isMonoid_530 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.Monoid.semigroup
d_semigroup_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> T_Semigroup_206
d_semigroup_566 ~v0 ~v1 v2 = du_semigroup_566 v2
du_semigroup_566 :: T_Monoid_506 -> T_Semigroup_206
du_semigroup_566 v0
  = coe
      C_Semigroup'46'constructor_3121 (d__'8729'__526 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe d_isMonoid_530 (coe v0)))
-- Algebra.Bundles.Monoid._._≉_
d__'8777'__570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> AgdaAny -> AgdaAny -> ()
d__'8777'__570 = erased
-- Algebra.Bundles.Monoid._.magma
d_magma_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> T_Magma_36
d_magma_572 ~v0 ~v1 v2 = du_magma_572 v2
du_magma_572 :: T_Monoid_506 -> T_Magma_36
du_magma_572 v0 = coe du_magma_254 (coe du_semigroup_566 (coe v0))
-- Algebra.Bundles.Monoid._.rawMagma
d_rawMagma_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> T_RawMagma_8
d_rawMagma_574 ~v0 ~v1 v2 = du_rawMagma_574 v2
du_rawMagma_574 :: T_Monoid_506 -> T_RawMagma_8
du_rawMagma_574 v0
  = let v1 = coe du_semigroup_566 (coe v0) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v1))
-- Algebra.Bundles.Monoid.rawMonoid
d_rawMonoid_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Monoid_506 -> T_RawMonoid_474
d_rawMonoid_576 ~v0 ~v1 v2 = du_rawMonoid_576 v2
du_rawMonoid_576 :: T_Monoid_506 -> T_RawMonoid_474
du_rawMonoid_576 v0
  = coe
      C_RawMonoid'46'constructor_7223 (d__'8729'__526 (coe v0))
      (d_ε_528 (coe v0))
-- Algebra.Bundles.CommutativeMonoid
d_CommutativeMonoid_582 a0 a1 = ()
data T_CommutativeMonoid_582
  = C_CommutativeMonoid'46'constructor_8947 (AgdaAny ->
                                             AgdaAny -> AgdaAny)
                                            AgdaAny
                                            MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
-- Algebra.Bundles.CommutativeMonoid.Carrier
d_Carrier_598 :: T_CommutativeMonoid_582 -> ()
d_Carrier_598 = erased
-- Algebra.Bundles.CommutativeMonoid._≈_
d__'8776'__600 ::
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny -> ()
d__'8776'__600 = erased
-- Algebra.Bundles.CommutativeMonoid._∙_
d__'8729'__602 ::
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__602 v0
  = case coe v0 of
      C_CommutativeMonoid'46'constructor_8947 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeMonoid.ε
d_ε_604 :: T_CommutativeMonoid_582 -> AgdaAny
d_ε_604 v0
  = case coe v0 of
      C_CommutativeMonoid'46'constructor_8947 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_606 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_isCommutativeMonoid_606 v0
  = case coe v0 of
      C_CommutativeMonoid'46'constructor_8947 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeMonoid._.assoc
d_assoc_610 ::
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe d_isCommutativeMonoid_606 (coe v0))))
-- Algebra.Bundles.CommutativeMonoid._.comm
d_comm_612 ::
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_612 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe d_isCommutativeMonoid_606 (coe v0))
-- Algebra.Bundles.CommutativeMonoid._.identity
d_identity_614 ::
  T_CommutativeMonoid_582 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_614 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe d_isCommutativeMonoid_606 (coe v0)))
-- Algebra.Bundles.CommutativeMonoid._.identityʳ
d_identity'691'_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny
d_identity'691'_616 ~v0 ~v1 v2 = du_identity'691'_616 v2
du_identity'691'_616 ::
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny
du_identity'691'_616 v0
  = let v1 = d_isCommutativeMonoid_606 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v1))
-- Algebra.Bundles.CommutativeMonoid._.identityˡ
d_identity'737'_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny
d_identity'737'_618 ~v0 ~v1 v2 = du_identity'737'_618 v2
du_identity'737'_618 ::
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny
du_identity'737'_618 v0
  = let v1 = d_isCommutativeMonoid_606 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v1))
-- Algebra.Bundles.CommutativeMonoid._.isCommutativeMagma
d_isCommutativeMagma_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_620 ~v0 ~v1 v2 = du_isCommutativeMagma_620 v2
du_isCommutativeMagma_620 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_620 v0
  = let v1 = d_isCommutativeMonoid_606 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v1))
-- Algebra.Bundles.CommutativeMonoid._.isCommutativeSemigroup
d_isCommutativeSemigroup_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_622 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_622 v2
du_isCommutativeSemigroup_622 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_622 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe d_isCommutativeMonoid_606 (coe v0))
-- Algebra.Bundles.CommutativeMonoid._.isEquivalence
d_isEquivalence_624 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_624 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe d_isCommutativeMonoid_606 (coe v0)))))
-- Algebra.Bundles.CommutativeMonoid._.isMagma
d_isMagma_626 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe d_isCommutativeMonoid_606 (coe v0))))
-- Algebra.Bundles.CommutativeMonoid._.isMonoid
d_isMonoid_628 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe d_isCommutativeMonoid_606 (coe v0))
-- Algebra.Bundles.CommutativeMonoid._.isPartialEquivalence
d_isPartialEquivalence_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_630 ~v0 ~v1 v2
  = du_isPartialEquivalence_630 v2
du_isPartialEquivalence_630 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_630 v0
  = let v1 = d_isCommutativeMonoid_606 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v4))
-- Algebra.Bundles.CommutativeMonoid._.isSemigroup
d_isSemigroup_632 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe d_isCommutativeMonoid_606 (coe v0)))
-- Algebra.Bundles.CommutativeMonoid._.refl
d_refl_634 :: T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny
d_refl_634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe d_isCommutativeMonoid_606 (coe v0))))))
-- Algebra.Bundles.CommutativeMonoid._.reflexive
d_reflexive_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_636 ~v0 ~v1 v2 = du_reflexive_636 v2
du_reflexive_636 ::
  T_CommutativeMonoid_582 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_636 v0
  = let v1 = d_isCommutativeMonoid_606 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v4))
        v5
-- Algebra.Bundles.CommutativeMonoid._.setoid
d_setoid_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_638 ~v0 ~v1 v2 = du_setoid_638 v2
du_setoid_638 ::
  T_CommutativeMonoid_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_638 v0
  = let v1 = d_isCommutativeMonoid_606 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.CommutativeMonoid._.sym
d_sym_640 ::
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_640 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe d_isCommutativeMonoid_606 (coe v0))))))
-- Algebra.Bundles.CommutativeMonoid._.trans
d_trans_642 ::
  T_CommutativeMonoid_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_642 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe d_isCommutativeMonoid_606 (coe v0))))))
-- Algebra.Bundles.CommutativeMonoid._.∙-cong
d_'8729''45'cong_644 ::
  T_CommutativeMonoid_582 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_644 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe d_isCommutativeMonoid_606 (coe v0)))))
-- Algebra.Bundles.CommutativeMonoid._.∙-congʳ
d_'8729''45'cong'691'_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_646 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_646 v2
du_'8729''45'cong'691'_646 ::
  T_CommutativeMonoid_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_646 v0
  = let v1 = d_isCommutativeMonoid_606 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.CommutativeMonoid._.∙-congˡ
d_'8729''45'cong'737'_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_648 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_648 v2
du_'8729''45'cong'737'_648 ::
  T_CommutativeMonoid_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_648 v0
  = let v1 = d_isCommutativeMonoid_606 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.CommutativeMonoid.monoid
d_monoid_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> T_Monoid_506
d_monoid_650 ~v0 ~v1 v2 = du_monoid_650 v2
du_monoid_650 :: T_CommutativeMonoid_582 -> T_Monoid_506
du_monoid_650 v0
  = coe
      C_Monoid'46'constructor_7649 (d__'8729'__602 (coe v0))
      (d_ε_604 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe d_isCommutativeMonoid_606 (coe v0)))
-- Algebra.Bundles.CommutativeMonoid._._≉_
d__'8777'__654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> AgdaAny -> AgdaAny -> ()
d__'8777'__654 = erased
-- Algebra.Bundles.CommutativeMonoid._.magma
d_magma_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> T_Magma_36
d_magma_656 ~v0 ~v1 v2 = du_magma_656 v2
du_magma_656 :: T_CommutativeMonoid_582 -> T_Magma_36
du_magma_656 v0
  = let v1 = coe du_monoid_650 (coe v0) in
    coe du_magma_254 (coe du_semigroup_566 (coe v1))
-- Algebra.Bundles.CommutativeMonoid._.rawMagma
d_rawMagma_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> T_RawMagma_8
d_rawMagma_658 ~v0 ~v1 v2 = du_rawMagma_658 v2
du_rawMagma_658 :: T_CommutativeMonoid_582 -> T_RawMagma_8
du_rawMagma_658 v0
  = let v1 = coe du_monoid_650 (coe v0) in
    let v2 = coe du_semigroup_566 (coe v1) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v2))
-- Algebra.Bundles.CommutativeMonoid._.rawMonoid
d_rawMonoid_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> T_RawMonoid_474
d_rawMonoid_660 ~v0 ~v1 v2 = du_rawMonoid_660 v2
du_rawMonoid_660 :: T_CommutativeMonoid_582 -> T_RawMonoid_474
du_rawMonoid_660 v0
  = coe du_rawMonoid_576 (coe du_monoid_650 (coe v0))
-- Algebra.Bundles.CommutativeMonoid._.semigroup
d_semigroup_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> T_Semigroup_206
d_semigroup_662 ~v0 ~v1 v2 = du_semigroup_662 v2
du_semigroup_662 :: T_CommutativeMonoid_582 -> T_Semigroup_206
du_semigroup_662 v0
  = coe du_semigroup_566 (coe du_monoid_650 (coe v0))
-- Algebra.Bundles.CommutativeMonoid.commutativeSemigroup
d_commutativeSemigroup_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_664 ~v0 ~v1 v2
  = du_commutativeSemigroup_664 v2
du_commutativeSemigroup_664 ::
  T_CommutativeMonoid_582 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_664 v0
  = coe
      C_CommutativeSemigroup'46'constructor_5063
      (d__'8729'__602 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe d_isCommutativeMonoid_606 (coe v0)))
-- Algebra.Bundles.CommutativeMonoid._.commutativeMagma
d_commutativeMagma_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeMonoid_582 -> T_CommutativeMagma_148
d_commutativeMagma_668 ~v0 ~v1 v2 = du_commutativeMagma_668 v2
du_commutativeMagma_668 ::
  T_CommutativeMonoid_582 -> T_CommutativeMagma_148
du_commutativeMagma_668 v0
  = coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v0))
-- Algebra.Bundles.IdempotentCommutativeMonoid
d_IdempotentCommutativeMonoid_674 a0 a1 = ()
data T_IdempotentCommutativeMonoid_674
  = C_IdempotentCommutativeMonoid'46'constructor_10489 (AgdaAny ->
                                                        AgdaAny -> AgdaAny)
                                                       AgdaAny
                                                       MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_464
-- Algebra.Bundles.IdempotentCommutativeMonoid.Carrier
d_Carrier_690 :: T_IdempotentCommutativeMonoid_674 -> ()
d_Carrier_690 = erased
-- Algebra.Bundles.IdempotentCommutativeMonoid._≈_
d__'8776'__692 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny -> ()
d__'8776'__692 = erased
-- Algebra.Bundles.IdempotentCommutativeMonoid._∙_
d__'8729'__694 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__694 v0
  = case coe v0 of
      C_IdempotentCommutativeMonoid'46'constructor_10489 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.IdempotentCommutativeMonoid.ε
d_ε_696 :: T_IdempotentCommutativeMonoid_674 -> AgdaAny
d_ε_696 v0
  = case coe v0 of
      C_IdempotentCommutativeMonoid'46'constructor_10489 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.IdempotentCommutativeMonoid.isIdempotentCommutativeMonoid
d_isIdempotentCommutativeMonoid_698 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_464
d_isIdempotentCommutativeMonoid_698 v0
  = case coe v0 of
      C_IdempotentCommutativeMonoid'46'constructor_10489 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.IdempotentCommutativeMonoid._.assoc
d_assoc_702 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_702 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
               (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.comm
d_comm_704 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_704 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
         (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.idem
d_idem_706 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
d_idem_706 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_476
      (coe d_isIdempotentCommutativeMonoid_698 (coe v0))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.identity
d_identity_708 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_708 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
            (coe d_isIdempotentCommutativeMonoid_698 (coe v0))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.identityʳ
d_identity'691'_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
d_identity'691'_710 ~v0 ~v1 v2 = du_identity'691'_710 v2
du_identity'691'_710 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
du_identity'691'_710 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.identityˡ
d_identity'737'_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
d_identity'737'_712 ~v0 ~v1 v2 = du_identity'737'_712 v2
du_identity'737'_712 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
du_identity'737'_712 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeMagma
d_isCommutativeMagma_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_714 ~v0 ~v1 v2 = du_isCommutativeMagma_714 v2
du_isCommutativeMagma_714 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_714 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v2))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeMonoid
d_isCommutativeMonoid_716 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_isCommutativeMonoid_716 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
      (coe d_isIdempotentCommutativeMonoid_698 (coe v0))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.isCommutativeSemigroup
d_isCommutativeSemigroup_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_718 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_718 v2
du_isCommutativeSemigroup_718 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_718 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474 (coe v1))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.isEquivalence
d_isEquivalence_720 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_720 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                  (coe d_isIdempotentCommutativeMonoid_698 (coe v0))))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.isMagma
d_isMagma_722 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_722 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
               (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.isMonoid
d_isMonoid_724 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_724 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
         (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.isPartialEquivalence
d_isPartialEquivalence_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_726 ~v0 ~v1 v2
  = du_isPartialEquivalence_726 v2
du_isPartialEquivalence_726 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_726 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.isSemigroup
d_isSemigroup_728 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_728 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
            (coe d_isIdempotentCommutativeMonoid_698 (coe v0))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.refl
d_refl_730 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
d_refl_730 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                     (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.reflexive
d_reflexive_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_732 ~v0 ~v1 v2 = du_reflexive_732 v2
du_reflexive_732 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_732 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
        v6
-- Algebra.Bundles.IdempotentCommutativeMonoid._.setoid
d_setoid_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_734 ~v0 ~v1 v2 = du_setoid_734 v2
du_setoid_734 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_734 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.sym
d_sym_736 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_736 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                     (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.trans
d_trans_738 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_738 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                     (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.∙-cong
d_'8729''45'cong_740 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_740 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                  (coe d_isIdempotentCommutativeMonoid_698 (coe v0))))))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.∙-congʳ
d_'8729''45'cong'691'_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_742 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_742 v2
du_'8729''45'cong'691'_742 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_742 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.∙-congˡ
d_'8729''45'cong'737'_744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_744 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_744 v2
du_'8729''45'cong'737'_744 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_744 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.IdempotentCommutativeMonoid.commutativeMonoid
d_commutativeMonoid_746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeMonoid_582
d_commutativeMonoid_746 ~v0 ~v1 v2 = du_commutativeMonoid_746 v2
du_commutativeMonoid_746 ::
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeMonoid_582
du_commutativeMonoid_746 v0
  = coe
      C_CommutativeMonoid'46'constructor_8947 (d__'8729'__694 (coe v0))
      (d_ε_696 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
         (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))
-- Algebra.Bundles.IdempotentCommutativeMonoid._._≉_
d__'8777'__750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny -> ()
d__'8777'__750 = erased
-- Algebra.Bundles.IdempotentCommutativeMonoid._.commutativeMagma
d_commutativeMagma_752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeMagma_148
d_commutativeMagma_752 ~v0 ~v1 v2 = du_commutativeMagma_752 v2
du_commutativeMagma_752 ::
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeMagma_148
du_commutativeMagma_752 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v1))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.commutativeSemigroup
d_commutativeSemigroup_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_754 ~v0 ~v1 v2
  = du_commutativeSemigroup_754 v2
du_commutativeSemigroup_754 ::
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_754 v0
  = coe
      du_commutativeSemigroup_664 (coe du_commutativeMonoid_746 (coe v0))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.magma
d_magma_756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_Magma_36
d_magma_756 ~v0 ~v1 v2 = du_magma_756 v2
du_magma_756 :: T_IdempotentCommutativeMonoid_674 -> T_Magma_36
du_magma_756 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    let v2 = coe du_monoid_650 (coe v1) in
    coe du_magma_254 (coe du_semigroup_566 (coe v2))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.monoid
d_monoid_758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_Monoid_506
d_monoid_758 ~v0 ~v1 v2 = du_monoid_758 v2
du_monoid_758 :: T_IdempotentCommutativeMonoid_674 -> T_Monoid_506
du_monoid_758 v0
  = coe du_monoid_650 (coe du_commutativeMonoid_746 (coe v0))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.rawMagma
d_rawMagma_760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_RawMagma_8
d_rawMagma_760 ~v0 ~v1 v2 = du_rawMagma_760 v2
du_rawMagma_760 ::
  T_IdempotentCommutativeMonoid_674 -> T_RawMagma_8
du_rawMagma_760 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    let v2 = coe du_monoid_650 (coe v1) in
    let v3 = coe du_semigroup_566 (coe v2) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v3))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.rawMonoid
d_rawMonoid_762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_RawMonoid_474
d_rawMonoid_762 ~v0 ~v1 v2 = du_rawMonoid_762 v2
du_rawMonoid_762 ::
  T_IdempotentCommutativeMonoid_674 -> T_RawMonoid_474
du_rawMonoid_762 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    coe du_rawMonoid_576 (coe du_monoid_650 (coe v1))
-- Algebra.Bundles.IdempotentCommutativeMonoid._.semigroup
d_semigroup_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_Semigroup_206
d_semigroup_764 ~v0 ~v1 v2 = du_semigroup_764 v2
du_semigroup_764 ::
  T_IdempotentCommutativeMonoid_674 -> T_Semigroup_206
du_semigroup_764 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    coe du_semigroup_566 (coe du_monoid_650 (coe v1))
-- Algebra.Bundles.BoundedLattice
d_BoundedLattice_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> ()
d_BoundedLattice_766 = erased
-- Algebra.Bundles.BoundedLattice._∙_
d__'8729'__776 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__776 v0 = coe d__'8729'__694 (coe v0)
-- Algebra.Bundles.BoundedLattice._≈_
d__'8776'__778 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny -> ()
d__'8776'__778 = erased
-- Algebra.Bundles.BoundedLattice._≉_
d__'8777'__780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny -> ()
d__'8777'__780 = erased
-- Algebra.Bundles.BoundedLattice.Carrier
d_Carrier_782 :: T_IdempotentCommutativeMonoid_674 -> ()
d_Carrier_782 = erased
-- Algebra.Bundles.BoundedLattice.assoc
d_assoc_784 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
               (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))
-- Algebra.Bundles.BoundedLattice.comm
d_comm_786 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_786 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
         (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))
-- Algebra.Bundles.BoundedLattice.commutativeMagma
d_commutativeMagma_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeMagma_148
d_commutativeMagma_788 ~v0 ~v1 v2 = du_commutativeMagma_788 v2
du_commutativeMagma_788 ::
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeMagma_148
du_commutativeMagma_788 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v1))
-- Algebra.Bundles.BoundedLattice.commutativeMonoid
d_commutativeMonoid_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeMonoid_582
d_commutativeMonoid_790 ~v0 ~v1 v2 = du_commutativeMonoid_790 v2
du_commutativeMonoid_790 ::
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeMonoid_582
du_commutativeMonoid_790 v0 = coe du_commutativeMonoid_746 (coe v0)
-- Algebra.Bundles.BoundedLattice.commutativeSemigroup
d_commutativeSemigroup_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_792 ~v0 ~v1 v2
  = du_commutativeSemigroup_792 v2
du_commutativeSemigroup_792 ::
  T_IdempotentCommutativeMonoid_674 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_792 v0
  = coe
      du_commutativeSemigroup_664 (coe du_commutativeMonoid_746 (coe v0))
-- Algebra.Bundles.BoundedLattice.idem
d_idem_794 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
d_idem_794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_idem_476
      (coe d_isIdempotentCommutativeMonoid_698 (coe v0))
-- Algebra.Bundles.BoundedLattice.identity
d_identity_796 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_796 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
            (coe d_isIdempotentCommutativeMonoid_698 (coe v0))))
-- Algebra.Bundles.BoundedLattice.identityʳ
d_identity'691'_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
d_identity'691'_798 ~v0 ~v1 v2 = du_identity'691'_798 v2
du_identity'691'_798 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
du_identity'691'_798 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2))
-- Algebra.Bundles.BoundedLattice.identityˡ
d_identity'737'_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
d_identity'737'_800 ~v0 ~v1 v2 = du_identity'737'_800 v2
du_identity'737'_800 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
du_identity'737'_800 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2))
-- Algebra.Bundles.BoundedLattice.isCommutativeMagma
d_isCommutativeMagma_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_802 ~v0 ~v1 v2 = du_isCommutativeMagma_802 v2
du_isCommutativeMagma_802 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_802 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v2))
-- Algebra.Bundles.BoundedLattice.isCommutativeMonoid
d_isCommutativeMonoid_804 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_isCommutativeMonoid_804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
      (coe d_isIdempotentCommutativeMonoid_698 (coe v0))
-- Algebra.Bundles.BoundedLattice.isCommutativeSemigroup
d_isCommutativeSemigroup_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_806 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_806 v2
du_isCommutativeSemigroup_806 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_806 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474 (coe v1))
-- Algebra.Bundles.BoundedLattice.isEquivalence
d_isEquivalence_808 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                  (coe d_isIdempotentCommutativeMonoid_698 (coe v0))))))
-- Algebra.Bundles.BoundedLattice.isIdempotentCommutativeMonoid
d_isIdempotentCommutativeMonoid_810 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_464
d_isIdempotentCommutativeMonoid_810 v0
  = coe d_isIdempotentCommutativeMonoid_698 (coe v0)
-- Algebra.Bundles.BoundedLattice.isMagma
d_isMagma_812 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_812 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
               (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))
-- Algebra.Bundles.BoundedLattice.isMonoid
d_isMonoid_814 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_814 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
         (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))
-- Algebra.Bundles.BoundedLattice.isPartialEquivalence
d_isPartialEquivalence_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_816 ~v0 ~v1 v2
  = du_isPartialEquivalence_816 v2
du_isPartialEquivalence_816 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_816 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
-- Algebra.Bundles.BoundedLattice.isSemigroup
d_isSemigroup_818 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_818 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
            (coe d_isIdempotentCommutativeMonoid_698 (coe v0))))
-- Algebra.Bundles.BoundedLattice.magma
d_magma_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_Magma_36
d_magma_820 ~v0 ~v1 v2 = du_magma_820 v2
du_magma_820 :: T_IdempotentCommutativeMonoid_674 -> T_Magma_36
du_magma_820 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    let v2 = coe du_monoid_650 (coe v1) in
    coe du_magma_254 (coe du_semigroup_566 (coe v2))
-- Algebra.Bundles.BoundedLattice.monoid
d_monoid_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_Monoid_506
d_monoid_822 ~v0 ~v1 v2 = du_monoid_822 v2
du_monoid_822 :: T_IdempotentCommutativeMonoid_674 -> T_Monoid_506
du_monoid_822 v0
  = coe du_monoid_650 (coe du_commutativeMonoid_746 (coe v0))
-- Algebra.Bundles.BoundedLattice.rawMagma
d_rawMagma_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_RawMagma_8
d_rawMagma_824 ~v0 ~v1 v2 = du_rawMagma_824 v2
du_rawMagma_824 ::
  T_IdempotentCommutativeMonoid_674 -> T_RawMagma_8
du_rawMagma_824 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    let v2 = coe du_monoid_650 (coe v1) in
    let v3 = coe du_semigroup_566 (coe v2) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v3))
-- Algebra.Bundles.BoundedLattice.rawMonoid
d_rawMonoid_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_RawMonoid_474
d_rawMonoid_826 ~v0 ~v1 v2 = du_rawMonoid_826 v2
du_rawMonoid_826 ::
  T_IdempotentCommutativeMonoid_674 -> T_RawMonoid_474
du_rawMonoid_826 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    coe du_rawMonoid_576 (coe du_monoid_650 (coe v1))
-- Algebra.Bundles.BoundedLattice.refl
d_refl_828 ::
  T_IdempotentCommutativeMonoid_674 -> AgdaAny -> AgdaAny
d_refl_828 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                     (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))))
-- Algebra.Bundles.BoundedLattice.reflexive
d_reflexive_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_830 ~v0 ~v1 v2 = du_reflexive_830 v2
du_reflexive_830 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_830 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
        v6
-- Algebra.Bundles.BoundedLattice.semigroup
d_semigroup_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 -> T_Semigroup_206
d_semigroup_832 ~v0 ~v1 v2 = du_semigroup_832 v2
du_semigroup_832 ::
  T_IdempotentCommutativeMonoid_674 -> T_Semigroup_206
du_semigroup_832 v0
  = let v1 = coe du_commutativeMonoid_746 (coe v0) in
    coe du_semigroup_566 (coe du_monoid_650 (coe v1))
-- Algebra.Bundles.BoundedLattice.setoid
d_setoid_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_834 ~v0 ~v1 v2 = du_setoid_834 v2
du_setoid_834 ::
  T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_834 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.BoundedLattice.sym
d_sym_836 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                     (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))))
-- Algebra.Bundles.BoundedLattice.trans
d_trans_838 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_838 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                     (coe d_isIdempotentCommutativeMonoid_698 (coe v0)))))))
-- Algebra.Bundles.BoundedLattice.ε
d_ε_840 :: T_IdempotentCommutativeMonoid_674 -> AgdaAny
d_ε_840 v0 = coe d_ε_696 (coe v0)
-- Algebra.Bundles.BoundedLattice.∙-cong
d_'8729''45'cong_842 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_842 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
                  (coe d_isIdempotentCommutativeMonoid_698 (coe v0))))))
-- Algebra.Bundles.BoundedLattice.∙-congʳ
d_'8729''45'cong'691'_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_844 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_844 v2
du_'8729''45'cong'691'_844 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_844 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.BoundedLattice.∙-congˡ
d_'8729''45'cong'737'_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_846 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_846 v2
du_'8729''45'cong'737'_846 ::
  T_IdempotentCommutativeMonoid_674 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_846 v0
  = let v1 = d_isIdempotentCommutativeMonoid_698 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeMonoid_474
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.RawGroup
d_RawGroup_852 a0 a1 = ()
data T_RawGroup_852
  = C_RawGroup'46'constructor_12107 (AgdaAny -> AgdaAny -> AgdaAny)
                                    AgdaAny (AgdaAny -> AgdaAny)
-- Algebra.Bundles.RawGroup.Carrier
d_Carrier_868 :: T_RawGroup_852 -> ()
d_Carrier_868 = erased
-- Algebra.Bundles.RawGroup._≈_
d__'8776'__870 :: T_RawGroup_852 -> AgdaAny -> AgdaAny -> ()
d__'8776'__870 = erased
-- Algebra.Bundles.RawGroup._∙_
d__'8729'__872 :: T_RawGroup_852 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__872 v0
  = case coe v0 of
      C_RawGroup'46'constructor_12107 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawGroup.ε
d_ε_874 :: T_RawGroup_852 -> AgdaAny
d_ε_874 v0
  = case coe v0 of
      C_RawGroup'46'constructor_12107 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawGroup._⁻¹
d__'8315''185'_876 :: T_RawGroup_852 -> AgdaAny -> AgdaAny
d__'8315''185'_876 v0
  = case coe v0 of
      C_RawGroup'46'constructor_12107 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawGroup.rawMonoid
d_rawMonoid_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawGroup_852 -> T_RawMonoid_474
d_rawMonoid_878 ~v0 ~v1 v2 = du_rawMonoid_878 v2
du_rawMonoid_878 :: T_RawGroup_852 -> T_RawMonoid_474
du_rawMonoid_878 v0
  = coe
      C_RawMonoid'46'constructor_7223 (d__'8729'__872 (coe v0))
      (d_ε_874 (coe v0))
-- Algebra.Bundles.RawGroup._._≉_
d__'8777'__882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawGroup_852 -> AgdaAny -> AgdaAny -> ()
d__'8777'__882 = erased
-- Algebra.Bundles.RawGroup._.rawMagma
d_rawMagma_884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawGroup_852 -> T_RawMagma_8
d_rawMagma_884 ~v0 ~v1 v2 = du_rawMagma_884 v2
du_rawMagma_884 :: T_RawGroup_852 -> T_RawMagma_8
du_rawMagma_884 v0
  = coe du_rawMagma_496 (coe du_rawMonoid_878 (coe v0))
-- Algebra.Bundles.Group
d_Group_890 a0 a1 = ()
data T_Group_890
  = C_Group'46'constructor_12639 (AgdaAny -> AgdaAny -> AgdaAny)
                                 AgdaAny (AgdaAny -> AgdaAny)
                                 MAlonzo.Code.Algebra.Structures.T_IsGroup_580
-- Algebra.Bundles.Group.Carrier
d_Carrier_908 :: T_Group_890 -> ()
d_Carrier_908 = erased
-- Algebra.Bundles.Group._≈_
d__'8776'__910 :: T_Group_890 -> AgdaAny -> AgdaAny -> ()
d__'8776'__910 = erased
-- Algebra.Bundles.Group._∙_
d__'8729'__912 :: T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__912 v0
  = case coe v0 of
      C_Group'46'constructor_12639 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Group.ε
d_ε_914 :: T_Group_890 -> AgdaAny
d_ε_914 v0
  = case coe v0 of
      C_Group'46'constructor_12639 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Group._⁻¹
d__'8315''185'_916 :: T_Group_890 -> AgdaAny -> AgdaAny
d__'8315''185'_916 v0
  = case coe v0 of
      C_Group'46'constructor_12639 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Group.isGroup
d_isGroup_918 ::
  T_Group_890 -> MAlonzo.Code.Algebra.Structures.T_IsGroup_580
d_isGroup_918 v0
  = case coe v0 of
      C_Group'46'constructor_12639 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Group._._-_
d__'45'__922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__922 ~v0 ~v1 v2 = du__'45'__922 v2
du__'45'__922 :: T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__922 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du__'45'__634
      (coe d__'8729'__912 (coe v0)) (coe d__'8315''185'_916 (coe v0))
-- Algebra.Bundles.Group._.assoc
d_assoc_924 ::
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_924 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_594
            (coe d_isGroup_918 (coe v0))))
-- Algebra.Bundles.Group._.identity
d_identity_926 ::
  T_Group_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_926 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe d_isGroup_918 (coe v0)))
-- Algebra.Bundles.Group._.identityʳ
d_identity'691'_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny
d_identity'691'_928 ~v0 ~v1 v2 = du_identity'691'_928 v2
du_identity'691'_928 :: T_Group_890 -> AgdaAny -> AgdaAny
du_identity'691'_928 v0
  = let v1 = d_isGroup_918 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v1))
-- Algebra.Bundles.Group._.identityˡ
d_identity'737'_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny
d_identity'737'_930 ~v0 ~v1 v2 = du_identity'737'_930 v2
du_identity'737'_930 :: T_Group_890 -> AgdaAny -> AgdaAny
du_identity'737'_930 v0
  = let v1 = d_isGroup_918 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v1))
-- Algebra.Bundles.Group._.inverse
d_inverse_932 ::
  T_Group_890 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_932 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_596
      (coe d_isGroup_918 (coe v0))
-- Algebra.Bundles.Group._.inverseʳ
d_inverse'691'_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny
d_inverse'691'_934 ~v0 ~v1 v2 = du_inverse'691'_934 v2
du_inverse'691'_934 :: T_Group_890 -> AgdaAny -> AgdaAny
du_inverse'691'_934 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
      (coe d_isGroup_918 (coe v0))
-- Algebra.Bundles.Group._.inverseˡ
d_inverse'737'_936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny
d_inverse'737'_936 ~v0 ~v1 v2 = du_inverse'737'_936 v2
du_inverse'737'_936 :: T_Group_890 -> AgdaAny -> AgdaAny
du_inverse'737'_936 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_inverse'737'_640
      (coe d_isGroup_918 (coe v0))
-- Algebra.Bundles.Group._.isEquivalence
d_isEquivalence_938 ::
  T_Group_890 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_938 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe d_isGroup_918 (coe v0)))))
-- Algebra.Bundles.Group._.isMagma
d_isMagma_940 ::
  T_Group_890 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_594
            (coe d_isGroup_918 (coe v0))))
-- Algebra.Bundles.Group._.isMonoid
d_isMonoid_942 ::
  T_Group_890 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_942 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_594
      (coe d_isGroup_918 (coe v0))
-- Algebra.Bundles.Group._.isPartialEquivalence
d_isPartialEquivalence_944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_944 ~v0 ~v1 v2
  = du_isPartialEquivalence_944 v2
du_isPartialEquivalence_944 ::
  T_Group_890 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_944 v0
  = let v1 = d_isGroup_918 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v4))
-- Algebra.Bundles.Group._.isSemigroup
d_isSemigroup_946 ::
  T_Group_890 -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_946 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe d_isGroup_918 (coe v0)))
-- Algebra.Bundles.Group._.refl
d_refl_948 :: T_Group_890 -> AgdaAny -> AgdaAny
d_refl_948 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe d_isGroup_918 (coe v0))))))
-- Algebra.Bundles.Group._.reflexive
d_reflexive_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_950 ~v0 ~v1 v2 = du_reflexive_950 v2
du_reflexive_950 ::
  T_Group_890 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_950 v0
  = let v1 = d_isGroup_918 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v4))
        v5
-- Algebra.Bundles.Group._.setoid
d_setoid_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_952 ~v0 ~v1 v2 = du_setoid_952 v2
du_setoid_952 ::
  T_Group_890 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_952 v0
  = let v1 = d_isGroup_918 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.Group._.sym
d_sym_954 ::
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_954 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe d_isGroup_918 (coe v0))))))
-- Algebra.Bundles.Group._.trans
d_trans_956 ::
  T_Group_890 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_956 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe d_isGroup_918 (coe v0))))))
-- Algebra.Bundles.Group._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_958 ~v0 ~v1 v2
  = du_unique'691''45''8315''185'_958 v2
du_unique'691''45''8315''185'_958 ::
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_654
      (coe d__'8729'__912 (coe v0)) (coe d_ε_914 (coe v0))
      (coe d__'8315''185'_916 (coe v0)) (coe d_isGroup_918 (coe v0))
-- Algebra.Bundles.Group._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_960 ~v0 ~v1 v2
  = du_unique'737''45''8315''185'_960 v2
du_unique'737''45''8315''185'_960 ::
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_648
      (coe d__'8729'__912 (coe v0)) (coe d_ε_914 (coe v0))
      (coe d__'8315''185'_916 (coe v0)) (coe d_isGroup_918 (coe v0))
-- Algebra.Bundles.Group._.⁻¹-cong
d_'8315''185''45'cong_962 ::
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_962 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_598
      (coe d_isGroup_918 (coe v0))
-- Algebra.Bundles.Group._.∙-cong
d_'8729''45'cong_964 ::
  T_Group_890 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe d_isGroup_918 (coe v0)))))
-- Algebra.Bundles.Group._.∙-congʳ
d_'8729''45'cong'691'_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_966 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_966 v2
du_'8729''45'cong'691'_966 ::
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_966 v0
  = let v1 = d_isGroup_918 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.Group._.∙-congˡ
d_'8729''45'cong'737'_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_968 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_968 v2
du_'8729''45'cong'737'_968 ::
  T_Group_890 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_968 v0
  = let v1 = d_isGroup_918 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.Group.rawGroup
d_rawGroup_970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> T_RawGroup_852
d_rawGroup_970 ~v0 ~v1 v2 = du_rawGroup_970 v2
du_rawGroup_970 :: T_Group_890 -> T_RawGroup_852
du_rawGroup_970 v0
  = coe
      C_RawGroup'46'constructor_12107 (d__'8729'__912 (coe v0))
      (d_ε_914 (coe v0)) (d__'8315''185'_916 (coe v0))
-- Algebra.Bundles.Group.monoid
d_monoid_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> T_Monoid_506
d_monoid_972 ~v0 ~v1 v2 = du_monoid_972 v2
du_monoid_972 :: T_Group_890 -> T_Monoid_506
du_monoid_972 v0
  = coe
      C_Monoid'46'constructor_7649 (d__'8729'__912 (coe v0))
      (d_ε_914 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe d_isGroup_918 (coe v0)))
-- Algebra.Bundles.Group._._≉_
d__'8777'__976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> AgdaAny -> AgdaAny -> ()
d__'8777'__976 = erased
-- Algebra.Bundles.Group._.magma
d_magma_978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Group_890 -> T_Magma_36
d_magma_978 ~v0 ~v1 v2 = du_magma_978 v2
du_magma_978 :: T_Group_890 -> T_Magma_36
du_magma_978 v0
  = let v1 = coe du_monoid_972 (coe v0) in
    coe du_magma_254 (coe du_semigroup_566 (coe v1))
-- Algebra.Bundles.Group._.rawMagma
d_rawMagma_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> T_RawMagma_8
d_rawMagma_980 ~v0 ~v1 v2 = du_rawMagma_980 v2
du_rawMagma_980 :: T_Group_890 -> T_RawMagma_8
du_rawMagma_980 v0
  = let v1 = coe du_monoid_972 (coe v0) in
    let v2 = coe du_semigroup_566 (coe v1) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v2))
-- Algebra.Bundles.Group._.rawMonoid
d_rawMonoid_982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> T_RawMonoid_474
d_rawMonoid_982 ~v0 ~v1 v2 = du_rawMonoid_982 v2
du_rawMonoid_982 :: T_Group_890 -> T_RawMonoid_474
du_rawMonoid_982 v0
  = coe du_rawMonoid_576 (coe du_monoid_972 (coe v0))
-- Algebra.Bundles.Group._.semigroup
d_semigroup_984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Group_890 -> T_Semigroup_206
d_semigroup_984 ~v0 ~v1 v2 = du_semigroup_984 v2
du_semigroup_984 :: T_Group_890 -> T_Semigroup_206
du_semigroup_984 v0
  = coe du_semigroup_566 (coe du_monoid_972 (coe v0))
-- Algebra.Bundles.AbelianGroup
d_AbelianGroup_990 a0 a1 = ()
data T_AbelianGroup_990
  = C_AbelianGroup'46'constructor_14359 (AgdaAny ->
                                         AgdaAny -> AgdaAny)
                                        AgdaAny (AgdaAny -> AgdaAny)
                                        MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
-- Algebra.Bundles.AbelianGroup.Carrier
d_Carrier_1008 :: T_AbelianGroup_990 -> ()
d_Carrier_1008 = erased
-- Algebra.Bundles.AbelianGroup._≈_
d__'8776'__1010 :: T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1010 = erased
-- Algebra.Bundles.AbelianGroup._∙_
d__'8729'__1012 ::
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1012 v0
  = case coe v0 of
      C_AbelianGroup'46'constructor_14359 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.AbelianGroup.ε
d_ε_1014 :: T_AbelianGroup_990 -> AgdaAny
d_ε_1014 v0
  = case coe v0 of
      C_AbelianGroup'46'constructor_14359 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.AbelianGroup._⁻¹
d__'8315''185'_1016 :: T_AbelianGroup_990 -> AgdaAny -> AgdaAny
d__'8315''185'_1016 v0
  = case coe v0 of
      C_AbelianGroup'46'constructor_14359 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.AbelianGroup.isAbelianGroup
d_isAbelianGroup_1018 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
d_isAbelianGroup_1018 v0
  = case coe v0 of
      C_AbelianGroup'46'constructor_14359 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.AbelianGroup._._-_
d__'45'__1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__1022 ~v0 ~v1 v2 = du__'45'__1022 v2
du__'45'__1022 ::
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__1022 v0
  = let v1 = d__'8729'__1012 (coe v0) in
    let v2 = d__'8315''185'_1016 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du__'45'__634 (coe v1) (coe v2)
-- Algebra.Bundles.AbelianGroup._.assoc
d_assoc_1024 ::
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1024 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_594
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_674
               (coe d_isAbelianGroup_1018 (coe v0)))))
-- Algebra.Bundles.AbelianGroup._.comm
d_comm_1026 :: T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1026 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_676
      (coe d_isAbelianGroup_1018 (coe v0))
-- Algebra.Bundles.AbelianGroup._.identity
d_identity_1028 ::
  T_AbelianGroup_990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1028 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_674
            (coe d_isAbelianGroup_1018 (coe v0))))
-- Algebra.Bundles.AbelianGroup._.identityʳ
d_identity'691'_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny
d_identity'691'_1030 ~v0 ~v1 v2 = du_identity'691'_1030 v2
du_identity'691'_1030 :: T_AbelianGroup_990 -> AgdaAny -> AgdaAny
du_identity'691'_1030 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v2))
-- Algebra.Bundles.AbelianGroup._.identityˡ
d_identity'737'_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny
d_identity'737'_1032 ~v0 ~v1 v2 = du_identity'737'_1032 v2
du_identity'737'_1032 :: T_AbelianGroup_990 -> AgdaAny -> AgdaAny
du_identity'737'_1032 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v2))
-- Algebra.Bundles.AbelianGroup._.inverse
d_inverse_1034 ::
  T_AbelianGroup_990 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1034 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_596
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe d_isAbelianGroup_1018 (coe v0)))
-- Algebra.Bundles.AbelianGroup._.inverseʳ
d_inverse'691'_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny
d_inverse'691'_1036 ~v0 ~v1 v2 = du_inverse'691'_1036 v2
du_inverse'691'_1036 :: T_AbelianGroup_990 -> AgdaAny -> AgdaAny
du_inverse'691'_1036 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1))
-- Algebra.Bundles.AbelianGroup._.inverseˡ
d_inverse'737'_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny
d_inverse'737'_1038 ~v0 ~v1 v2 = du_inverse'737'_1038 v2
du_inverse'737'_1038 :: T_AbelianGroup_990 -> AgdaAny -> AgdaAny
du_inverse'737'_1038 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_inverse'737'_640
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1))
-- Algebra.Bundles.AbelianGroup._.isCommutativeMagma
d_isCommutativeMagma_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_1040 ~v0 ~v1 v2
  = du_isCommutativeMagma_1040 v2
du_isCommutativeMagma_1040 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_1040 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v2))
-- Algebra.Bundles.AbelianGroup._.isCommutativeMonoid
d_isCommutativeMonoid_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_isCommutativeMonoid_1042 ~v0 ~v1 v2
  = du_isCommutativeMonoid_1042 v2
du_isCommutativeMonoid_1042 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_isCommutativeMonoid_1042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
      (coe d_isAbelianGroup_1018 (coe v0))
-- Algebra.Bundles.AbelianGroup._.isCommutativeSemigroup
d_isCommutativeSemigroup_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1044 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_1044 v2
du_isCommutativeSemigroup_1044 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1044 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
         (coe v1))
-- Algebra.Bundles.AbelianGroup._.isEquivalence
d_isEquivalence_1046 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1046 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe d_isAbelianGroup_1018 (coe v0))))))
-- Algebra.Bundles.AbelianGroup._.isGroup
d_isGroup_1048 ::
  T_AbelianGroup_990 -> MAlonzo.Code.Algebra.Structures.T_IsGroup_580
d_isGroup_1048 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_674
      (coe d_isAbelianGroup_1018 (coe v0))
-- Algebra.Bundles.AbelianGroup._.isMagma
d_isMagma_1050 ::
  T_AbelianGroup_990 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1050 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_594
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_674
               (coe d_isAbelianGroup_1018 (coe v0)))))
-- Algebra.Bundles.AbelianGroup._.isMonoid
d_isMonoid_1052 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_1052 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_594
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe d_isAbelianGroup_1018 (coe v0)))
-- Algebra.Bundles.AbelianGroup._.isPartialEquivalence
d_isPartialEquivalence_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1054 ~v0 ~v1 v2
  = du_isPartialEquivalence_1054 v2
du_isPartialEquivalence_1054 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1054 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
-- Algebra.Bundles.AbelianGroup._.isSemigroup
d_isSemigroup_1056 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1056 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_674
            (coe d_isAbelianGroup_1018 (coe v0))))
-- Algebra.Bundles.AbelianGroup._.refl
d_refl_1058 :: T_AbelianGroup_990 -> AgdaAny -> AgdaAny
d_refl_1058 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe d_isAbelianGroup_1018 (coe v0)))))))
-- Algebra.Bundles.AbelianGroup._.reflexive
d_reflexive_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1060 ~v0 ~v1 v2 = du_reflexive_1060 v2
du_reflexive_1060 ::
  T_AbelianGroup_990 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1060 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
        v6
-- Algebra.Bundles.AbelianGroup._.setoid
d_setoid_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1062 ~v0 ~v1 v2 = du_setoid_1062 v2
du_setoid_1062 ::
  T_AbelianGroup_990 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1062 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.AbelianGroup._.sym
d_sym_1064 ::
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1064 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe d_isAbelianGroup_1018 (coe v0)))))))
-- Algebra.Bundles.AbelianGroup._.trans
d_trans_1066 ::
  T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1066 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe d_isAbelianGroup_1018 (coe v0)))))))
-- Algebra.Bundles.AbelianGroup._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_1068 ~v0 ~v1 v2
  = du_unique'691''45''8315''185'_1068 v2
du_unique'691''45''8315''185'_1068 ::
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_1068 v0
  = let v1 = d__'8729'__1012 (coe v0) in
    let v2 = d_ε_1014 (coe v0) in
    let v3 = d__'8315''185'_1016 (coe v0) in
    let v4 = d_isAbelianGroup_1018 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_654
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4))
-- Algebra.Bundles.AbelianGroup._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_1070 ~v0 ~v1 v2
  = du_unique'737''45''8315''185'_1070 v2
du_unique'737''45''8315''185'_1070 ::
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_1070 v0
  = let v1 = d__'8729'__1012 (coe v0) in
    let v2 = d_ε_1014 (coe v0) in
    let v3 = d__'8315''185'_1016 (coe v0) in
    let v4 = d_isAbelianGroup_1018 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_648
      (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v4))
-- Algebra.Bundles.AbelianGroup._.⁻¹-cong
d_'8315''185''45'cong_1072 ::
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_1072 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_598
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe d_isAbelianGroup_1018 (coe v0)))
-- Algebra.Bundles.AbelianGroup._.∙-cong
d_'8729''45'cong_1074 ::
  T_AbelianGroup_990 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1074 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe d_isAbelianGroup_1018 (coe v0))))))
-- Algebra.Bundles.AbelianGroup._.∙-congʳ
d_'8729''45'cong'691'_1076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1076 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1076 v2
du_'8729''45'cong'691'_1076 ::
  T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1076 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.AbelianGroup._.∙-congˡ
d_'8729''45'cong'737'_1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1078 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1078 v2
du_'8729''45'cong'737'_1078 ::
  T_AbelianGroup_990 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1078 v0
  = let v1 = d_isAbelianGroup_1018 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.AbelianGroup.group
d_group_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_Group_890
d_group_1080 ~v0 ~v1 v2 = du_group_1080 v2
du_group_1080 :: T_AbelianGroup_990 -> T_Group_890
du_group_1080 v0
  = coe
      C_Group'46'constructor_12639 (d__'8729'__1012 (coe v0))
      (d_ε_1014 (coe v0)) (d__'8315''185'_1016 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe d_isAbelianGroup_1018 (coe v0)))
-- Algebra.Bundles.AbelianGroup._._≉_
d__'8777'__1084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1084 = erased
-- Algebra.Bundles.AbelianGroup._.magma
d_magma_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_Magma_36
d_magma_1086 ~v0 ~v1 v2 = du_magma_1086 v2
du_magma_1086 :: T_AbelianGroup_990 -> T_Magma_36
du_magma_1086 v0
  = let v1 = coe du_group_1080 (coe v0) in
    let v2 = coe du_monoid_972 (coe v1) in
    coe du_magma_254 (coe du_semigroup_566 (coe v2))
-- Algebra.Bundles.AbelianGroup._.monoid
d_monoid_1088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_Monoid_506
d_monoid_1088 ~v0 ~v1 v2 = du_monoid_1088 v2
du_monoid_1088 :: T_AbelianGroup_990 -> T_Monoid_506
du_monoid_1088 v0 = coe du_monoid_972 (coe du_group_1080 (coe v0))
-- Algebra.Bundles.AbelianGroup._.rawGroup
d_rawGroup_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_RawGroup_852
d_rawGroup_1090 ~v0 ~v1 v2 = du_rawGroup_1090 v2
du_rawGroup_1090 :: T_AbelianGroup_990 -> T_RawGroup_852
du_rawGroup_1090 v0
  = coe du_rawGroup_970 (coe du_group_1080 (coe v0))
-- Algebra.Bundles.AbelianGroup._.rawMagma
d_rawMagma_1092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_RawMagma_8
d_rawMagma_1092 ~v0 ~v1 v2 = du_rawMagma_1092 v2
du_rawMagma_1092 :: T_AbelianGroup_990 -> T_RawMagma_8
du_rawMagma_1092 v0
  = let v1 = coe du_group_1080 (coe v0) in
    let v2 = coe du_monoid_972 (coe v1) in
    let v3 = coe du_semigroup_566 (coe v2) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v3))
-- Algebra.Bundles.AbelianGroup._.rawMonoid
d_rawMonoid_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_RawMonoid_474
d_rawMonoid_1094 ~v0 ~v1 v2 = du_rawMonoid_1094 v2
du_rawMonoid_1094 :: T_AbelianGroup_990 -> T_RawMonoid_474
du_rawMonoid_1094 v0
  = let v1 = coe du_group_1080 (coe v0) in
    coe du_rawMonoid_576 (coe du_monoid_972 (coe v1))
-- Algebra.Bundles.AbelianGroup._.semigroup
d_semigroup_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_Semigroup_206
d_semigroup_1096 ~v0 ~v1 v2 = du_semigroup_1096 v2
du_semigroup_1096 :: T_AbelianGroup_990 -> T_Semigroup_206
du_semigroup_1096 v0
  = let v1 = coe du_group_1080 (coe v0) in
    coe du_semigroup_566 (coe du_monoid_972 (coe v1))
-- Algebra.Bundles.AbelianGroup.commutativeMonoid
d_commutativeMonoid_1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_CommutativeMonoid_582
d_commutativeMonoid_1098 ~v0 ~v1 v2 = du_commutativeMonoid_1098 v2
du_commutativeMonoid_1098 ::
  T_AbelianGroup_990 -> T_CommutativeMonoid_582
du_commutativeMonoid_1098 v0
  = coe
      C_CommutativeMonoid'46'constructor_8947 (d__'8729'__1012 (coe v0))
      (d_ε_1014 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
         (coe d_isAbelianGroup_1018 (coe v0)))
-- Algebra.Bundles.AbelianGroup._.commutativeMagma
d_commutativeMagma_1102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_CommutativeMagma_148
d_commutativeMagma_1102 ~v0 ~v1 v2 = du_commutativeMagma_1102 v2
du_commutativeMagma_1102 ::
  T_AbelianGroup_990 -> T_CommutativeMagma_148
du_commutativeMagma_1102 v0
  = let v1 = coe du_commutativeMonoid_1098 (coe v0) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v1))
-- Algebra.Bundles.AbelianGroup._.commutativeSemigroup
d_commutativeSemigroup_1104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_AbelianGroup_990 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_1104 ~v0 ~v1 v2
  = du_commutativeSemigroup_1104 v2
du_commutativeSemigroup_1104 ::
  T_AbelianGroup_990 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_1104 v0
  = coe
      du_commutativeSemigroup_664
      (coe du_commutativeMonoid_1098 (coe v0))
-- Algebra.Bundles.RawLattice
d_RawLattice_1110 a0 a1 = ()
data T_RawLattice_1110
  = C_RawLattice'46'constructor_16273 (AgdaAny -> AgdaAny -> AgdaAny)
                                      (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Bundles.RawLattice.Carrier
d_Carrier_1124 :: T_RawLattice_1110 -> ()
d_Carrier_1124 = erased
-- Algebra.Bundles.RawLattice._≈_
d__'8776'__1126 :: T_RawLattice_1110 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1126 = erased
-- Algebra.Bundles.RawLattice._∧_
d__'8743'__1128 ::
  T_RawLattice_1110 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__1128 v0
  = case coe v0 of
      C_RawLattice'46'constructor_16273 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawLattice._∨_
d__'8744'__1130 ::
  T_RawLattice_1110 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__1130 v0
  = case coe v0 of
      C_RawLattice'46'constructor_16273 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawLattice.∨-rawMagma
d_'8744''45'rawMagma_1132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawLattice_1110 -> T_RawMagma_8
d_'8744''45'rawMagma_1132 ~v0 ~v1 v2
  = du_'8744''45'rawMagma_1132 v2
du_'8744''45'rawMagma_1132 :: T_RawLattice_1110 -> T_RawMagma_8
du_'8744''45'rawMagma_1132 v0
  = coe C_RawMagma'46'constructor_47 (d__'8744'__1130 (coe v0))
-- Algebra.Bundles.RawLattice.∧-rawMagma
d_'8743''45'rawMagma_1134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawLattice_1110 -> T_RawMagma_8
d_'8743''45'rawMagma_1134 ~v0 ~v1 v2
  = du_'8743''45'rawMagma_1134 v2
du_'8743''45'rawMagma_1134 :: T_RawLattice_1110 -> T_RawMagma_8
du_'8743''45'rawMagma_1134 v0
  = coe C_RawMagma'46'constructor_47 (d__'8743'__1128 (coe v0))
-- Algebra.Bundles.RawLattice._._≉_
d__'8777'__1138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawLattice_1110 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1138 = erased
-- Algebra.Bundles.Lattice
d_Lattice_1144 a0 a1 = ()
data T_Lattice_1144
  = C_Lattice'46'constructor_16803 (AgdaAny -> AgdaAny -> AgdaAny)
                                   (AgdaAny -> AgdaAny -> AgdaAny)
                                   MAlonzo.Code.Algebra.Structures.T_IsLattice_740
-- Algebra.Bundles.Lattice.Carrier
d_Carrier_1160 :: T_Lattice_1144 -> ()
d_Carrier_1160 = erased
-- Algebra.Bundles.Lattice._≈_
d__'8776'__1162 :: T_Lattice_1144 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1162 = erased
-- Algebra.Bundles.Lattice._∨_
d__'8744'__1164 :: T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__1164 v0
  = case coe v0 of
      C_Lattice'46'constructor_16803 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Lattice._∧_
d__'8743'__1166 :: T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__1166 v0
  = case coe v0 of
      C_Lattice'46'constructor_16803 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Lattice.isLattice
d_isLattice_1168 ::
  T_Lattice_1144 -> MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_isLattice_1168 v0
  = case coe v0 of
      C_Lattice'46'constructor_16803 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Lattice._.absorptive
d_absorptive_1172 ::
  T_Lattice_1144 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_1172 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_absorptive_776
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.isEquivalence
d_isEquivalence_1174 ::
  T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1174 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.isPartialEquivalence
d_isPartialEquivalence_1176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1176 ~v0 ~v1 v2
  = du_isPartialEquivalence_1176 v2
du_isPartialEquivalence_1176 ::
  T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1176 v0
  = let v1 = d_isLattice_1168 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_762 (coe v1))
-- Algebra.Bundles.Lattice._.refl
d_refl_1178 :: T_Lattice_1144 -> AgdaAny -> AgdaAny
d_refl_1178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe d_isLattice_1168 (coe v0)))
-- Algebra.Bundles.Lattice._.reflexive
d_reflexive_1180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1180 ~v0 ~v1 v2 = du_reflexive_1180 v2
du_reflexive_1180 ::
  T_Lattice_1144 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1180 v0
  = let v1 = d_isLattice_1168 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_762 (coe v1))
        v2
-- Algebra.Bundles.Lattice._.sym
d_sym_1182 ::
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe d_isLattice_1168 (coe v0)))
-- Algebra.Bundles.Lattice._.trans
d_trans_1184 ::
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1184 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe d_isLattice_1168 (coe v0)))
-- Algebra.Bundles.Lattice._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_1186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_1186 ~v0 ~v1 v2
  = du_'8743''45'absorbs'45''8744'_1186 v2
du_'8743''45'absorbs'45''8744'_1186 ::
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_1186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'absorbs'45''8744'_792
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∧-assoc
d_'8743''45'assoc_1188 ::
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_1188 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∧-comm
d_'8743''45'comm_1190 ::
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_1190 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∧-cong
d_'8743''45'cong_1192 ::
  T_Lattice_1144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_1192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∧-congʳ
d_'8743''45'cong'691'_1194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_1194 ~v0 ~v1 v2
  = du_'8743''45'cong'691'_1194 v2
du_'8743''45'cong'691'_1194 ::
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_1194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∧-congˡ
d_'8743''45'cong'737'_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_1196 ~v0 ~v1 v2
  = du_'8743''45'cong'737'_1196 v2
du_'8743''45'cong'737'_1196 ::
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_1196 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_1198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_1198 ~v0 ~v1 v2
  = du_'8744''45'absorbs'45''8743'_1198 v2
du_'8744''45'absorbs'45''8743'_1198 ::
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_1198 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∨-assoc
d_'8744''45'assoc_1200 ::
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_1200 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∨-comm
d_'8744''45'comm_1202 ::
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_1202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∨-cong
d_'8744''45'cong_1204 ::
  T_Lattice_1144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_1204 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∨-congʳ
d_'8744''45'cong'691'_1206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_1206 ~v0 ~v1 v2
  = du_'8744''45'cong'691'_1206 v2
du_'8744''45'cong'691'_1206 ::
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_1206 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice._.∨-congˡ
d_'8744''45'cong'737'_1208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_1208 ~v0 ~v1 v2
  = du_'8744''45'cong'737'_1208 v2
du_'8744''45'cong'737'_1208 ::
  T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_1208 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
      (coe d_isLattice_1168 (coe v0))
-- Algebra.Bundles.Lattice.rawLattice
d_rawLattice_1210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 -> T_RawLattice_1110
d_rawLattice_1210 ~v0 ~v1 v2 = du_rawLattice_1210 v2
du_rawLattice_1210 :: T_Lattice_1144 -> T_RawLattice_1110
du_rawLattice_1210 v0
  = coe
      C_RawLattice'46'constructor_16273 (d__'8743'__1166 (coe v0))
      (d__'8744'__1164 (coe v0))
-- Algebra.Bundles.Lattice._.∧-rawMagma
d_'8743''45'rawMagma_1214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 -> T_RawMagma_8
d_'8743''45'rawMagma_1214 ~v0 ~v1 v2
  = du_'8743''45'rawMagma_1214 v2
du_'8743''45'rawMagma_1214 :: T_Lattice_1144 -> T_RawMagma_8
du_'8743''45'rawMagma_1214 v0
  = coe du_'8743''45'rawMagma_1134 (coe du_rawLattice_1210 (coe v0))
-- Algebra.Bundles.Lattice._.∨-rawMagma
d_'8744''45'rawMagma_1216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 -> T_RawMagma_8
d_'8744''45'rawMagma_1216 ~v0 ~v1 v2
  = du_'8744''45'rawMagma_1216 v2
du_'8744''45'rawMagma_1216 :: T_Lattice_1144 -> T_RawMagma_8
du_'8744''45'rawMagma_1216 v0
  = coe du_'8744''45'rawMagma_1132 (coe du_rawLattice_1210 (coe v0))
-- Algebra.Bundles.Lattice.setoid
d_setoid_1218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1218 ~v0 ~v1 v2 = du_setoid_1218 v2
du_setoid_1218 ::
  T_Lattice_1144 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1218 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe d_isLattice_1168 (coe v0)))
-- Algebra.Bundles.Lattice._._≉_
d__'8777'__1222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Lattice_1144 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1222 = erased
-- Algebra.Bundles.DistributiveLattice
d_DistributiveLattice_1228 a0 a1 = ()
data T_DistributiveLattice_1228
  = C_DistributiveLattice'46'constructor_18235 (AgdaAny ->
                                                AgdaAny -> AgdaAny)
                                               (AgdaAny -> AgdaAny -> AgdaAny)
                                               MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
-- Algebra.Bundles.DistributiveLattice.Carrier
d_Carrier_1244 :: T_DistributiveLattice_1228 -> ()
d_Carrier_1244 = erased
-- Algebra.Bundles.DistributiveLattice._≈_
d__'8776'__1246 ::
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1246 = erased
-- Algebra.Bundles.DistributiveLattice._∨_
d__'8744'__1248 ::
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__1248 v0
  = case coe v0 of
      C_DistributiveLattice'46'constructor_18235 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.DistributiveLattice._∧_
d__'8743'__1250 ::
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__1250 v0
  = case coe v0 of
      C_DistributiveLattice'46'constructor_18235 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.DistributiveLattice.isDistributiveLattice
d_isDistributiveLattice_1252 ::
  T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_isDistributiveLattice_1252 v0
  = case coe v0 of
      C_DistributiveLattice'46'constructor_18235 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.DistributiveLattice._.absorptive
d_absorptive_1256 ::
  T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_1256 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_absorptive_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._.isEquivalence
d_isEquivalence_1258 ::
  T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._.isLattice
d_isLattice_1260 ::
  T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_isLattice_1260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLattice_824
      (coe d_isDistributiveLattice_1252 (coe v0))
-- Algebra.Bundles.DistributiveLattice._.isPartialEquivalence
d_isPartialEquivalence_1262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1262 ~v0 ~v1 v2
  = du_isPartialEquivalence_1262 v2
du_isPartialEquivalence_1262 ::
  T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1262 v0
  = let v1 = d_isDistributiveLattice_1252 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_762 (coe v2))
-- Algebra.Bundles.DistributiveLattice._.refl
d_refl_1264 :: T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny
d_refl_1264 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe d_isDistributiveLattice_1252 (coe v0))))
-- Algebra.Bundles.DistributiveLattice._.reflexive
d_reflexive_1266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1266 ~v0 ~v1 v2 = du_reflexive_1266 v2
du_reflexive_1266 ::
  T_DistributiveLattice_1228 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1266 v0
  = let v1 = d_isDistributiveLattice_1252 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_762 (coe v2))
        v3
-- Algebra.Bundles.DistributiveLattice._.sym
d_sym_1268 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1268 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe d_isDistributiveLattice_1252 (coe v0))))
-- Algebra.Bundles.DistributiveLattice._.trans
d_trans_1270 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1270 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe d_isDistributiveLattice_1252 (coe v0))))
-- Algebra.Bundles.DistributiveLattice._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_1272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_1272 ~v0 ~v1 v2
  = du_'8743''45'absorbs'45''8744'_1272 v2
du_'8743''45'absorbs'45''8744'_1272 ::
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_1272 v0
  = let v1 = d_isDistributiveLattice_1252 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'absorbs'45''8744'_792
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v1))
-- Algebra.Bundles.DistributiveLattice._.∧-assoc
d_'8743''45'assoc_1274 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_1274 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._.∧-comm
d_'8743''45'comm_1276 ::
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_1276 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._.∧-cong
d_'8743''45'cong_1278 ::
  T_DistributiveLattice_1228 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_1278 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._.∧-congʳ
d_'8743''45'cong'691'_1280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_1280 ~v0 ~v1 v2
  = du_'8743''45'cong'691'_1280 v2
du_'8743''45'cong'691'_1280 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_1280 v0
  = let v1 = d_isDistributiveLattice_1252 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v1))
-- Algebra.Bundles.DistributiveLattice._.∧-congˡ
d_'8743''45'cong'737'_1282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_1282 ~v0 ~v1 v2
  = du_'8743''45'cong'737'_1282 v2
du_'8743''45'cong'737'_1282 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_1282 v0
  = let v1 = d_isDistributiveLattice_1252 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v1))
-- Algebra.Bundles.DistributiveLattice._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_1284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_1284 ~v0 ~v1 v2
  = du_'8744''45'absorbs'45''8743'_1284 v2
du_'8744''45'absorbs'45''8743'_1284 ::
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_1284 v0
  = let v1 = d_isDistributiveLattice_1252 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v1))
-- Algebra.Bundles.DistributiveLattice._.∨-assoc
d_'8744''45'assoc_1286 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_1286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._.∨-comm
d_'8744''45'comm_1288 ::
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_1288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._.∨-cong
d_'8744''45'cong_1290 ::
  T_DistributiveLattice_1228 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_1290 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._.∨-congʳ
d_'8744''45'cong'691'_1292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_1292 ~v0 ~v1 v2
  = du_'8744''45'cong'691'_1292 v2
du_'8744''45'cong'691'_1292 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_1292 v0
  = let v1 = d_isDistributiveLattice_1252 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v1))
-- Algebra.Bundles.DistributiveLattice._.∨-congˡ
d_'8744''45'cong'737'_1294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_1294 ~v0 ~v1 v2
  = du_'8744''45'cong'737'_1294 v2
du_'8744''45'cong'737'_1294 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_1294 v0
  = let v1 = d_isDistributiveLattice_1252 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v1))
-- Algebra.Bundles.DistributiveLattice._.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_1296 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_1296 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'distrib'691''45''8743'_826
      (coe d_isDistributiveLattice_1252 (coe v0))
-- Algebra.Bundles.DistributiveLattice._.∨-∧-distribʳ
d_'8744''45''8743''45'distrib'691'_1298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45''8743''45'distrib'691'_1298 ~v0 ~v1 v2
  = du_'8744''45''8743''45'distrib'691'_1298 v2
du_'8744''45''8743''45'distrib'691'_1298 ::
  T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45''8743''45'distrib'691'_1298 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45''8743''45'distrib'691'_868
      (coe d_isDistributiveLattice_1252 (coe v0))
-- Algebra.Bundles.DistributiveLattice.lattice
d_lattice_1300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 -> T_Lattice_1144
d_lattice_1300 ~v0 ~v1 v2 = du_lattice_1300 v2
du_lattice_1300 :: T_DistributiveLattice_1228 -> T_Lattice_1144
du_lattice_1300 v0
  = coe
      C_Lattice'46'constructor_16803 (d__'8744'__1248 (coe v0))
      (d__'8743'__1250 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe d_isDistributiveLattice_1252 (coe v0)))
-- Algebra.Bundles.DistributiveLattice._._≉_
d__'8777'__1304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1304 = erased
-- Algebra.Bundles.DistributiveLattice._.rawLattice
d_rawLattice_1306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 -> T_RawLattice_1110
d_rawLattice_1306 ~v0 ~v1 v2 = du_rawLattice_1306 v2
du_rawLattice_1306 ::
  T_DistributiveLattice_1228 -> T_RawLattice_1110
du_rawLattice_1306 v0
  = coe du_rawLattice_1210 (coe du_lattice_1300 (coe v0))
-- Algebra.Bundles.DistributiveLattice._.setoid
d_setoid_1308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1308 ~v0 ~v1 v2 = du_setoid_1308 v2
du_setoid_1308 ::
  T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1308 v0
  = coe du_setoid_1218 (coe du_lattice_1300 (coe v0))
-- Algebra.Bundles.RawNearSemiring
d_RawNearSemiring_1314 a0 a1 = ()
data T_RawNearSemiring_1314
  = C_RawNearSemiring'46'constructor_19639 (AgdaAny ->
                                            AgdaAny -> AgdaAny)
                                           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
-- Algebra.Bundles.RawNearSemiring.Carrier
d_Carrier_1330 :: T_RawNearSemiring_1314 -> ()
d_Carrier_1330 = erased
-- Algebra.Bundles.RawNearSemiring._≈_
d__'8776'__1332 ::
  T_RawNearSemiring_1314 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1332 = erased
-- Algebra.Bundles.RawNearSemiring._+_
d__'43'__1334 ::
  T_RawNearSemiring_1314 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__1334 v0
  = case coe v0 of
      C_RawNearSemiring'46'constructor_19639 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawNearSemiring._*_
d__'42'__1336 ::
  T_RawNearSemiring_1314 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1336 v0
  = case coe v0 of
      C_RawNearSemiring'46'constructor_19639 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawNearSemiring.0#
d_0'35'_1338 :: T_RawNearSemiring_1314 -> AgdaAny
d_0'35'_1338 v0
  = case coe v0 of
      C_RawNearSemiring'46'constructor_19639 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawNearSemiring.+-rawMonoid
d_'43''45'rawMonoid_1340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawNearSemiring_1314 -> T_RawMonoid_474
d_'43''45'rawMonoid_1340 ~v0 ~v1 v2 = du_'43''45'rawMonoid_1340 v2
du_'43''45'rawMonoid_1340 ::
  T_RawNearSemiring_1314 -> T_RawMonoid_474
du_'43''45'rawMonoid_1340 v0
  = coe
      C_RawMonoid'46'constructor_7223 (d__'43'__1334 (coe v0))
      (d_0'35'_1338 (coe v0))
-- Algebra.Bundles.RawNearSemiring._._≉_
d__'8777'__1344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawNearSemiring_1314 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1344 = erased
-- Algebra.Bundles.RawNearSemiring._.rawMagma
d_rawMagma_1346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawNearSemiring_1314 -> T_RawMagma_8
d_rawMagma_1346 ~v0 ~v1 v2 = du_rawMagma_1346 v2
du_rawMagma_1346 :: T_RawNearSemiring_1314 -> T_RawMagma_8
du_rawMagma_1346 v0
  = coe du_rawMagma_496 (coe du_'43''45'rawMonoid_1340 (coe v0))
-- Algebra.Bundles.RawNearSemiring.*-rawMagma
d_'42''45'rawMagma_1348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawNearSemiring_1314 -> T_RawMagma_8
d_'42''45'rawMagma_1348 ~v0 ~v1 v2 = du_'42''45'rawMagma_1348 v2
du_'42''45'rawMagma_1348 :: T_RawNearSemiring_1314 -> T_RawMagma_8
du_'42''45'rawMagma_1348 v0
  = coe C_RawMagma'46'constructor_47 (d__'42'__1336 (coe v0))
-- Algebra.Bundles.NearSemiring
d_NearSemiring_1354 a0 a1 = ()
data T_NearSemiring_1354
  = C_NearSemiring'46'constructor_20245 (AgdaAny ->
                                         AgdaAny -> AgdaAny)
                                        (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
                                        MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
-- Algebra.Bundles.NearSemiring.Carrier
d_Carrier_1372 :: T_NearSemiring_1354 -> ()
d_Carrier_1372 = erased
-- Algebra.Bundles.NearSemiring._≈_
d__'8776'__1374 :: T_NearSemiring_1354 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1374 = erased
-- Algebra.Bundles.NearSemiring._+_
d__'43'__1376 ::
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__1376 v0
  = case coe v0 of
      C_NearSemiring'46'constructor_20245 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.NearSemiring._*_
d__'42'__1378 ::
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1378 v0
  = case coe v0 of
      C_NearSemiring'46'constructor_20245 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.NearSemiring.0#
d_0'35'_1380 :: T_NearSemiring_1354 -> AgdaAny
d_0'35'_1380 v0
  = case coe v0 of
      C_NearSemiring'46'constructor_20245 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.NearSemiring.isNearSemiring
d_isNearSemiring_1382 ::
  T_NearSemiring_1354 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_1382 v0
  = case coe v0 of
      C_NearSemiring'46'constructor_20245 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.NearSemiring._.assoc
d_assoc_1386 ::
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1386 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
         (coe d_isNearSemiring_1382 (coe v0)))
-- Algebra.Bundles.NearSemiring._.∙-cong
d_'8729''45'cong_1388 ::
  T_NearSemiring_1354 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
            (coe d_isNearSemiring_1382 (coe v0))))
-- Algebra.Bundles.NearSemiring._.∙-congʳ
d_'8729''45'cong'691'_1390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1390 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1390 v2
du_'8729''45'cong'691'_1390 ::
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1390 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.NearSemiring._.∙-congˡ
d_'8729''45'cong'737'_1392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1392 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1392 v2
du_'8729''45'cong'737'_1392 ::
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1392 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v2))
-- Algebra.Bundles.NearSemiring._.isMagma
d_isMagma_1394 ::
  T_NearSemiring_1354 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1394 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
         (coe d_isNearSemiring_1382 (coe v0)))
-- Algebra.Bundles.NearSemiring._.*-isSemigroup
d_'42''45'isSemigroup_1396 ::
  T_NearSemiring_1354 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'42''45'isSemigroup_1396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
      (coe d_isNearSemiring_1382 (coe v0))
-- Algebra.Bundles.NearSemiring._.assoc
d_assoc_1398 ::
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1398 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
            (coe d_isNearSemiring_1382 (coe v0))))
-- Algebra.Bundles.NearSemiring._.∙-cong
d_'8729''45'cong_1400 ::
  T_NearSemiring_1354 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1400 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
               (coe d_isNearSemiring_1382 (coe v0)))))
-- Algebra.Bundles.NearSemiring._.∙-congʳ
d_'8729''45'cong'691'_1402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1402 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1402 v2
du_'8729''45'cong'691'_1402 ::
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1402 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.NearSemiring._.∙-congˡ
d_'8729''45'cong'737'_1404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1404 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1404 v2
du_'8729''45'cong'737'_1404 ::
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1404 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.NearSemiring._.identity
d_identity_1406 ::
  T_NearSemiring_1354 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1406 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
         (coe d_isNearSemiring_1382 (coe v0)))
-- Algebra.Bundles.NearSemiring._.identityʳ
d_identity'691'_1408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny
d_identity'691'_1408 ~v0 ~v1 v2 = du_identity'691'_1408 v2
du_identity'691'_1408 :: T_NearSemiring_1354 -> AgdaAny -> AgdaAny
du_identity'691'_1408 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892 (coe v1))
-- Algebra.Bundles.NearSemiring._.identityˡ
d_identity'737'_1410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny
d_identity'737'_1410 ~v0 ~v1 v2 = du_identity'737'_1410 v2
du_identity'737'_1410 :: T_NearSemiring_1354 -> AgdaAny -> AgdaAny
du_identity'737'_1410 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892 (coe v1))
-- Algebra.Bundles.NearSemiring._.isMagma
d_isMagma_1412 ::
  T_NearSemiring_1354 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
            (coe d_isNearSemiring_1382 (coe v0))))
-- Algebra.Bundles.NearSemiring._.+-isMonoid
d_'43''45'isMonoid_1414 ::
  T_NearSemiring_1354 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'43''45'isMonoid_1414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
      (coe d_isNearSemiring_1382 (coe v0))
-- Algebra.Bundles.NearSemiring._.isSemigroup
d_isSemigroup_1416 ::
  T_NearSemiring_1354 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
         (coe d_isNearSemiring_1382 (coe v0)))
-- Algebra.Bundles.NearSemiring._.distribʳ
d_distrib'691'_1418 ::
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1418 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib'691'_896
      (coe d_isNearSemiring_1382 (coe v0))
-- Algebra.Bundles.NearSemiring._.isEquivalence
d_isEquivalence_1420 ::
  T_NearSemiring_1354 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1420 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
               (coe d_isNearSemiring_1382 (coe v0)))))
-- Algebra.Bundles.NearSemiring._.isPartialEquivalence
d_isPartialEquivalence_1422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1422 ~v0 ~v1 v2
  = du_isPartialEquivalence_1422 v2
du_isPartialEquivalence_1422 ::
  T_NearSemiring_1354 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1422 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v4))
-- Algebra.Bundles.NearSemiring._.refl
d_refl_1424 :: T_NearSemiring_1354 -> AgdaAny -> AgdaAny
d_refl_1424 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
                  (coe d_isNearSemiring_1382 (coe v0))))))
-- Algebra.Bundles.NearSemiring._.reflexive
d_reflexive_1426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1426 ~v0 ~v1 v2 = du_reflexive_1426 v2
du_reflexive_1426 ::
  T_NearSemiring_1354 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1426 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v4))
        v5
-- Algebra.Bundles.NearSemiring._.setoid
d_setoid_1428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1428 ~v0 ~v1 v2 = du_setoid_1428 v2
du_setoid_1428 ::
  T_NearSemiring_1354 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1428 v0
  = let v1 = d_isNearSemiring_1382 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.NearSemiring._.sym
d_sym_1430 ::
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1430 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
                  (coe d_isNearSemiring_1382 (coe v0))))))
-- Algebra.Bundles.NearSemiring._.trans
d_trans_1432 ::
  T_NearSemiring_1354 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1432 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
                  (coe d_isNearSemiring_1382 (coe v0))))))
-- Algebra.Bundles.NearSemiring._.zeroˡ
d_zero'737'_1434 :: T_NearSemiring_1354 -> AgdaAny -> AgdaAny
d_zero'737'_1434 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero'737'_898
      (coe d_isNearSemiring_1382 (coe v0))
-- Algebra.Bundles.NearSemiring.rawNearSemiring
d_rawNearSemiring_1436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_RawNearSemiring_1314
d_rawNearSemiring_1436 ~v0 ~v1 v2 = du_rawNearSemiring_1436 v2
du_rawNearSemiring_1436 ::
  T_NearSemiring_1354 -> T_RawNearSemiring_1314
du_rawNearSemiring_1436 v0
  = coe
      C_RawNearSemiring'46'constructor_19639 (d__'43'__1376 (coe v0))
      (d__'42'__1378 (coe v0)) (d_0'35'_1380 (coe v0))
-- Algebra.Bundles.NearSemiring.+-monoid
d_'43''45'monoid_1438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_Monoid_506
d_'43''45'monoid_1438 ~v0 ~v1 v2 = du_'43''45'monoid_1438 v2
du_'43''45'monoid_1438 :: T_NearSemiring_1354 -> T_Monoid_506
du_'43''45'monoid_1438 v0
  = coe
      C_Monoid'46'constructor_7649 (d__'43'__1376 (coe v0))
      (d_0'35'_1380 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
         (coe d_isNearSemiring_1382 (coe v0)))
-- Algebra.Bundles.NearSemiring._._≉_
d__'8777'__1442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1442 = erased
-- Algebra.Bundles.NearSemiring._.magma
d_magma_1444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_Magma_36
d_magma_1444 ~v0 ~v1 v2 = du_magma_1444 v2
du_magma_1444 :: T_NearSemiring_1354 -> T_Magma_36
du_magma_1444 v0
  = let v1 = coe du_'43''45'monoid_1438 (coe v0) in
    coe du_magma_254 (coe du_semigroup_566 (coe v1))
-- Algebra.Bundles.NearSemiring._.rawMagma
d_rawMagma_1446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_RawMagma_8
d_rawMagma_1446 ~v0 ~v1 v2 = du_rawMagma_1446 v2
du_rawMagma_1446 :: T_NearSemiring_1354 -> T_RawMagma_8
du_rawMagma_1446 v0
  = let v1 = coe du_'43''45'monoid_1438 (coe v0) in
    let v2 = coe du_semigroup_566 (coe v1) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v2))
-- Algebra.Bundles.NearSemiring._.rawMonoid
d_rawMonoid_1448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_RawMonoid_474
d_rawMonoid_1448 ~v0 ~v1 v2 = du_rawMonoid_1448 v2
du_rawMonoid_1448 :: T_NearSemiring_1354 -> T_RawMonoid_474
du_rawMonoid_1448 v0
  = coe du_rawMonoid_576 (coe du_'43''45'monoid_1438 (coe v0))
-- Algebra.Bundles.NearSemiring._.semigroup
d_semigroup_1450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_Semigroup_206
d_semigroup_1450 ~v0 ~v1 v2 = du_semigroup_1450 v2
du_semigroup_1450 :: T_NearSemiring_1354 -> T_Semigroup_206
du_semigroup_1450 v0
  = coe du_semigroup_566 (coe du_'43''45'monoid_1438 (coe v0))
-- Algebra.Bundles.NearSemiring.*-semigroup
d_'42''45'semigroup_1452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_Semigroup_206
d_'42''45'semigroup_1452 ~v0 ~v1 v2 = du_'42''45'semigroup_1452 v2
du_'42''45'semigroup_1452 :: T_NearSemiring_1354 -> T_Semigroup_206
du_'42''45'semigroup_1452 v0
  = coe
      C_Semigroup'46'constructor_3121 (d__'42'__1378 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
         (coe d_isNearSemiring_1382 (coe v0)))
-- Algebra.Bundles.NearSemiring._.magma
d_magma_1456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_Magma_36
d_magma_1456 ~v0 ~v1 v2 = du_magma_1456 v2
du_magma_1456 :: T_NearSemiring_1354 -> T_Magma_36
du_magma_1456 v0
  = coe du_magma_254 (coe du_'42''45'semigroup_1452 (coe v0))
-- Algebra.Bundles.NearSemiring._.rawMagma
d_rawMagma_1458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_NearSemiring_1354 -> T_RawMagma_8
d_rawMagma_1458 ~v0 ~v1 v2 = du_rawMagma_1458 v2
du_rawMagma_1458 :: T_NearSemiring_1354 -> T_RawMagma_8
du_rawMagma_1458 v0
  = let v1 = coe du_'42''45'semigroup_1452 (coe v0) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v1))
-- Algebra.Bundles.SemiringWithoutOne
d_SemiringWithoutOne_1464 a0 a1 = ()
data T_SemiringWithoutOne_1464
  = C_SemiringWithoutOne'46'constructor_22249 (AgdaAny ->
                                               AgdaAny -> AgdaAny)
                                              (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
                                              MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
-- Algebra.Bundles.SemiringWithoutOne.Carrier
d_Carrier_1482 :: T_SemiringWithoutOne_1464 -> ()
d_Carrier_1482 = erased
-- Algebra.Bundles.SemiringWithoutOne._≈_
d__'8776'__1484 ::
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1484 = erased
-- Algebra.Bundles.SemiringWithoutOne._+_
d__'43'__1486 ::
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__1486 v0
  = case coe v0 of
      C_SemiringWithoutOne'46'constructor_22249 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutOne._*_
d__'42'__1488 ::
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1488 v0
  = case coe v0 of
      C_SemiringWithoutOne'46'constructor_22249 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutOne.0#
d_0'35'_1490 :: T_SemiringWithoutOne_1464 -> AgdaAny
d_0'35'_1490 v0
  = case coe v0 of
      C_SemiringWithoutOne'46'constructor_22249 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_1492 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1492 v0
  = case coe v0 of
      C_SemiringWithoutOne'46'constructor_22249 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutOne._.assoc
d_assoc_1496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1496 ~v0 ~v1 v2 = du_assoc_1496 v2
du_assoc_1496 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1496 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_970 (coe v1))
-- Algebra.Bundles.SemiringWithoutOne._.∙-cong
d_'8729''45'cong_1498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1498 ~v0 ~v1 v2 = du_'8729''45'cong_1498 v2
du_'8729''45'cong_1498 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1498 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_970
            (coe v1)))
-- Algebra.Bundles.SemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1500 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1500 v2
du_'8729''45'cong'691'_1500 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1500 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.SemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1502 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1502 v2
du_'8729''45'cong'737'_1502 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1502 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.SemiringWithoutOne._.isMagma
d_isMagma_1504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1504 ~v0 ~v1 v2 = du_isMagma_1504 v2
du_isMagma_1504 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_isMagma_1504 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_970 (coe v1))
-- Algebra.Bundles.SemiringWithoutOne._.*-isSemigroup
d_'42''45'isSemigroup_1506 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'42''45'isSemigroup_1506 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_970
      (coe d_isSemiringWithoutOne_1492 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne._.assoc
d_assoc_1508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1508 ~v0 ~v1 v2 = du_assoc_1508 v2
du_assoc_1508 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1508 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
               (coe v1))))
-- Algebra.Bundles.SemiringWithoutOne._.comm
d_comm_1510 ::
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1510 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
         (coe d_isSemiringWithoutOne_1492 (coe v0)))
-- Algebra.Bundles.SemiringWithoutOne._.∙-cong
d_'8729''45'cong_1512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1512 ~v0 ~v1 v2 = du_'8729''45'cong_1512 v2
du_'8729''45'cong_1512 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1512 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                  (coe v1)))))
-- Algebra.Bundles.SemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1514 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1514 v2
du_'8729''45'cong'691'_1514 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1514 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.SemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1516 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1516 v2
du_'8729''45'cong'737'_1516 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1516 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.SemiringWithoutOne._.identity
d_identity_1518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1518 ~v0 ~v1 v2 = du_identity_1518 v2
du_identity_1518 ::
  T_SemiringWithoutOne_1464 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1518 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
            (coe v1)))
-- Algebra.Bundles.SemiringWithoutOne._.identityʳ
d_identity'691'_1520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
d_identity'691'_1520 ~v0 ~v1 v2 = du_identity'691'_1520 v2
du_identity'691'_1520 ::
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
du_identity'691'_1520 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892 (coe v2))
-- Algebra.Bundles.SemiringWithoutOne._.identityˡ
d_identity'737'_1522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
d_identity'737'_1522 ~v0 ~v1 v2 = du_identity'737'_1522 v2
du_identity'737'_1522 ::
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
du_identity'737'_1522 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892 (coe v2))
-- Algebra.Bundles.SemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_1524 ~v0 ~v1 v2
  = du_isCommutativeMagma_1524 v2
du_isCommutativeMagma_1524 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_1524 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v2))
-- Algebra.Bundles.SemiringWithoutOne._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1526 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1526 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
      (coe d_isSemiringWithoutOne_1492 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_1528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1528 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_1528 v2
du_isCommutativeSemigroup_1528 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1528 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
         (coe v1))
-- Algebra.Bundles.SemiringWithoutOne._.isMagma
d_isMagma_1530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1530 ~v0 ~v1 v2 = du_isMagma_1530 v2
du_isMagma_1530 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_isMagma_1530 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
               (coe v1))))
-- Algebra.Bundles.SemiringWithoutOne._.isMonoid
d_isMonoid_1532 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_1532 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
         (coe d_isSemiringWithoutOne_1492 (coe v0)))
-- Algebra.Bundles.SemiringWithoutOne._.isSemigroup
d_isSemigroup_1534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1534 ~v0 ~v1 v2 = du_isSemigroup_1534 v2
du_isSemigroup_1534 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_isSemigroup_1534 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
            (coe v1)))
-- Algebra.Bundles.SemiringWithoutOne._.distrib
d_distrib_1536 ::
  T_SemiringWithoutOne_1464 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1536 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_972
      (coe d_isSemiringWithoutOne_1492 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne._.distribʳ
d_distrib'691'_1538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1538 ~v0 ~v1 v2 = du_distrib'691'_1538 v2
du_distrib'691'_1538 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1538 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe MAlonzo.Code.Algebra.Structures.d_distrib_972 (coe v1))
-- Algebra.Bundles.SemiringWithoutOne._.isEquivalence
d_isEquivalence_1540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1540 ~v0 ~v1 v2 = du_isEquivalence_1540 v2
du_isEquivalence_1540 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1540 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                  (coe v1)))))
-- Algebra.Bundles.SemiringWithoutOne._.isNearSemiring
d_isNearSemiring_1542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_1542 ~v0 ~v1 v2 = du_isNearSemiring_1542 v2
du_isNearSemiring_1542 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_1542 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe d_isSemiringWithoutOne_1492 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_1544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1544 ~v0 ~v1 v2
  = du_isPartialEquivalence_1544 v2
du_isPartialEquivalence_1544 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1544 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
-- Algebra.Bundles.SemiringWithoutOne._.refl
d_refl_1546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
d_refl_1546 ~v0 ~v1 v2 = du_refl_1546 v2
du_refl_1546 :: T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
du_refl_1546 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                     (coe v1))))))
-- Algebra.Bundles.SemiringWithoutOne._.reflexive
d_reflexive_1548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1548 ~v0 ~v1 v2 = du_reflexive_1548 v2
du_reflexive_1548 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1548 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
        v6
-- Algebra.Bundles.SemiringWithoutOne._.setoid
d_setoid_1550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1550 ~v0 ~v1 v2 = du_setoid_1550 v2
du_setoid_1550 ::
  T_SemiringWithoutOne_1464 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1550 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.SemiringWithoutOne._.sym
d_sym_1552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1552 ~v0 ~v1 v2 = du_sym_1552 v2
du_sym_1552 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1552 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                     (coe v1))))))
-- Algebra.Bundles.SemiringWithoutOne._.trans
d_trans_1554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1554 ~v0 ~v1 v2 = du_trans_1554 v2
du_trans_1554 ::
  T_SemiringWithoutOne_1464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1554 v0
  = let v1 = d_isSemiringWithoutOne_1492 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                     (coe v1))))))
-- Algebra.Bundles.SemiringWithoutOne._.zero
d_zero_1556 ::
  T_SemiringWithoutOne_1464 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_974
      (coe d_isSemiringWithoutOne_1492 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne._.zeroʳ
d_zero'691'_1558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
d_zero'691'_1558 ~v0 ~v1 v2 = du_zero'691'_1558 v2
du_zero'691'_1558 ::
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
du_zero'691'_1558 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe d_isSemiringWithoutOne_1492 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne._.zeroˡ
d_zero'737'_1560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
d_zero'737'_1560 ~v0 ~v1 v2 = du_zero'737'_1560 v2
du_zero'737'_1560 ::
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny
du_zero'737'_1560 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe d_isSemiringWithoutOne_1492 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne.nearSemiring
d_nearSemiring_1562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_NearSemiring_1354
d_nearSemiring_1562 ~v0 ~v1 v2 = du_nearSemiring_1562 v2
du_nearSemiring_1562 ::
  T_SemiringWithoutOne_1464 -> T_NearSemiring_1354
du_nearSemiring_1562 v0
  = coe
      C_NearSemiring'46'constructor_20245 (d__'43'__1486 (coe v0))
      (d__'42'__1488 (coe v0)) (d_0'35'_1490 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
         (coe d_isSemiringWithoutOne_1492 (coe v0)))
-- Algebra.Bundles.SemiringWithoutOne._._≉_
d__'8777'__1566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1566 = erased
-- Algebra.Bundles.SemiringWithoutOne._.magma
d_magma_1568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_Magma_36
d_magma_1568 ~v0 ~v1 v2 = du_magma_1568 v2
du_magma_1568 :: T_SemiringWithoutOne_1464 -> T_Magma_36
du_magma_1568 v0
  = let v1 = coe du_nearSemiring_1562 (coe v0) in
    coe du_magma_254 (coe du_'42''45'semigroup_1452 (coe v1))
-- Algebra.Bundles.SemiringWithoutOne._.rawMagma
d_rawMagma_1570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_RawMagma_8
d_rawMagma_1570 ~v0 ~v1 v2 = du_rawMagma_1570 v2
du_rawMagma_1570 :: T_SemiringWithoutOne_1464 -> T_RawMagma_8
du_rawMagma_1570 v0
  = let v1 = coe du_nearSemiring_1562 (coe v0) in
    let v2 = coe du_'42''45'semigroup_1452 (coe v1) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v2))
-- Algebra.Bundles.SemiringWithoutOne._.*-semigroup
d_'42''45'semigroup_1572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_Semigroup_206
d_'42''45'semigroup_1572 ~v0 ~v1 v2 = du_'42''45'semigroup_1572 v2
du_'42''45'semigroup_1572 ::
  T_SemiringWithoutOne_1464 -> T_Semigroup_206
du_'42''45'semigroup_1572 v0
  = coe du_'42''45'semigroup_1452 (coe du_nearSemiring_1562 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne._.magma
d_magma_1574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_Magma_36
d_magma_1574 ~v0 ~v1 v2 = du_magma_1574 v2
du_magma_1574 :: T_SemiringWithoutOne_1464 -> T_Magma_36
du_magma_1574 v0
  = let v1 = coe du_nearSemiring_1562 (coe v0) in
    let v2 = coe du_'43''45'monoid_1438 (coe v1) in
    coe du_magma_254 (coe du_semigroup_566 (coe v2))
-- Algebra.Bundles.SemiringWithoutOne._.+-monoid
d_'43''45'monoid_1576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_Monoid_506
d_'43''45'monoid_1576 ~v0 ~v1 v2 = du_'43''45'monoid_1576 v2
du_'43''45'monoid_1576 :: T_SemiringWithoutOne_1464 -> T_Monoid_506
du_'43''45'monoid_1576 v0
  = coe du_'43''45'monoid_1438 (coe du_nearSemiring_1562 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne._.rawMagma
d_rawMagma_1578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_RawMagma_8
d_rawMagma_1578 ~v0 ~v1 v2 = du_rawMagma_1578 v2
du_rawMagma_1578 :: T_SemiringWithoutOne_1464 -> T_RawMagma_8
du_rawMagma_1578 v0
  = let v1 = coe du_nearSemiring_1562 (coe v0) in
    let v2 = coe du_'43''45'monoid_1438 (coe v1) in
    let v3 = coe du_semigroup_566 (coe v2) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v3))
-- Algebra.Bundles.SemiringWithoutOne._.rawMonoid
d_rawMonoid_1580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_RawMonoid_474
d_rawMonoid_1580 ~v0 ~v1 v2 = du_rawMonoid_1580 v2
du_rawMonoid_1580 :: T_SemiringWithoutOne_1464 -> T_RawMonoid_474
du_rawMonoid_1580 v0
  = let v1 = coe du_nearSemiring_1562 (coe v0) in
    coe du_rawMonoid_576 (coe du_'43''45'monoid_1438 (coe v1))
-- Algebra.Bundles.SemiringWithoutOne._.semigroup
d_semigroup_1582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_Semigroup_206
d_semigroup_1582 ~v0 ~v1 v2 = du_semigroup_1582 v2
du_semigroup_1582 :: T_SemiringWithoutOne_1464 -> T_Semigroup_206
du_semigroup_1582 v0
  = let v1 = coe du_nearSemiring_1562 (coe v0) in
    coe du_semigroup_566 (coe du_'43''45'monoid_1438 (coe v1))
-- Algebra.Bundles.SemiringWithoutOne._.rawNearSemiring
d_rawNearSemiring_1584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_RawNearSemiring_1314
d_rawNearSemiring_1584 ~v0 ~v1 v2 = du_rawNearSemiring_1584 v2
du_rawNearSemiring_1584 ::
  T_SemiringWithoutOne_1464 -> T_RawNearSemiring_1314
du_rawNearSemiring_1584 v0
  = coe du_rawNearSemiring_1436 (coe du_nearSemiring_1562 (coe v0))
-- Algebra.Bundles.SemiringWithoutOne.+-commutativeMonoid
d_'43''45'commutativeMonoid_1586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_1586 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_1586 v2
du_'43''45'commutativeMonoid_1586 ::
  T_SemiringWithoutOne_1464 -> T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_1586 v0
  = coe
      C_CommutativeMonoid'46'constructor_8947 (d__'43'__1486 (coe v0))
      (d_0'35'_1490 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
         (coe d_isSemiringWithoutOne_1492 (coe v0)))
-- Algebra.Bundles.SemiringWithoutOne._.commutativeMagma
d_commutativeMagma_1590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_CommutativeMagma_148
d_commutativeMagma_1590 ~v0 ~v1 v2 = du_commutativeMagma_1590 v2
du_commutativeMagma_1590 ::
  T_SemiringWithoutOne_1464 -> T_CommutativeMagma_148
du_commutativeMagma_1590 v0
  = let v1 = coe du_'43''45'commutativeMonoid_1586 (coe v0) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v1))
-- Algebra.Bundles.SemiringWithoutOne._.commutativeSemigroup
d_commutativeSemigroup_1592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutOne_1464 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_1592 ~v0 ~v1 v2
  = du_commutativeSemigroup_1592 v2
du_commutativeSemigroup_1592 ::
  T_SemiringWithoutOne_1464 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_1592 v0
  = coe
      du_commutativeSemigroup_664
      (coe du_'43''45'commutativeMonoid_1586 (coe v0))
-- Algebra.Bundles.CommutativeSemiringWithoutOne
d_CommutativeSemiringWithoutOne_1598 a0 a1 = ()
data T_CommutativeSemiringWithoutOne_1598
  = C_CommutativeSemiringWithoutOne'46'constructor_24395 (AgdaAny ->
                                                          AgdaAny -> AgdaAny)
                                                         (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
                                                         MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
-- Algebra.Bundles.CommutativeSemiringWithoutOne.Carrier
d_Carrier_1616 :: T_CommutativeSemiringWithoutOne_1598 -> ()
d_Carrier_1616 = erased
-- Algebra.Bundles.CommutativeSemiringWithoutOne._≈_
d__'8776'__1618 ::
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1618 = erased
-- Algebra.Bundles.CommutativeSemiringWithoutOne._+_
d__'43'__1620 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__1620 v0
  = case coe v0 of
      C_CommutativeSemiringWithoutOne'46'constructor_24395 v3 v4 v5 v6
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiringWithoutOne._*_
d__'42'__1622 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1622 v0
  = case coe v0 of
      C_CommutativeSemiringWithoutOne'46'constructor_24395 v3 v4 v5 v6
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiringWithoutOne.0#
d_0'35'_1624 :: T_CommutativeSemiringWithoutOne_1598 -> AgdaAny
d_0'35'_1624 v0
  = case coe v0 of
      C_CommutativeSemiringWithoutOne'46'constructor_24395 v3 v4 v5 v6
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1626 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_1626 v0
  = case coe v0 of
      C_CommutativeSemiringWithoutOne'46'constructor_24395 v3 v4 v5 v6
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.assoc
d_assoc_1630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1630 ~v0 ~v1 v2 = du_assoc_1630 v2
du_assoc_1630 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1630 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_970 (coe v2))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.*-comm
d_'42''45'comm_1632 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1632 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1058
      (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-cong
d_'8729''45'cong_1634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1634 ~v0 ~v1 v2 = du_'8729''45'cong_1634 v2
du_'8729''45'cong_1634 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1634 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_970
            (coe v2)))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1636 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1636 v2
du_'8729''45'cong'691'_1636 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1636 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1638 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1638 v2
du_'8729''45'cong'737'_1638 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1638 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_894
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_1640 ~v0 ~v1 v2
  = du_isCommutativeMagma_1640 v2
du_isCommutativeMagma_1640 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_1640 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v1))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_1642 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_1642 v2
du_'42''45'isCommutativeSemigroup_1642 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_1642 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isMagma
d_isMagma_1644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1644 ~v0 ~v1 v2 = du_isMagma_1644 v2
du_isMagma_1644 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_isMagma_1644 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_970 (coe v2))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.*-isSemigroup
d_'42''45'isSemigroup_1646 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'42''45'isSemigroup_1646 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isSemigroup_970
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
         (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0)))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.assoc
d_assoc_1648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1648 ~v0 ~v1 v2 = du_assoc_1648 v2
du_assoc_1648 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1648 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
               (coe v2))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.comm
d_comm_1650 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
            (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-cong
d_'8729''45'cong_1652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1652 ~v0 ~v1 v2 = du_'8729''45'cong_1652 v2
du_'8729''45'cong_1652 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1652 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                  (coe v2)))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1654 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1654 v2
du_'8729''45'cong'691'_1654 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1654 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1656 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1656 v2
du_'8729''45'cong'737'_1656 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1656 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.identity
d_identity_1658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1658 ~v0 ~v1 v2 = du_identity_1658 v2
du_identity_1658 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1658 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
            (coe v2)))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.identityʳ
d_identity'691'_1660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
d_identity'691'_1660 ~v0 ~v1 v2 = du_identity'691'_1660 v2
du_identity'691'_1660 ::
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
du_identity'691'_1660 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892 (coe v3))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.identityˡ
d_identity'737'_1662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
d_identity'737'_1662 ~v0 ~v1 v2 = du_identity'737'_1662 v2
du_identity'737'_1662 ::
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
du_identity'737'_1662 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892 (coe v3))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_1664 ~v0 ~v1 v2
  = du_isCommutativeMagma_1664 v2
du_isCommutativeMagma_1664 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_1664 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v3))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1666 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
         (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0)))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_1668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1668 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_1668 v2
du_isCommutativeSemigroup_1668 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1668 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
         (coe v2))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isMagma
d_isMagma_1670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1670 ~v0 ~v1 v2 = du_isMagma_1670 v2
du_isMagma_1670 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_isMagma_1670 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
               (coe v2))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isMonoid
d_isMonoid_1672 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_1672 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
            (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isSemigroup
d_isSemigroup_1674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1674 ~v0 ~v1 v2 = du_isSemigroup_1674 v2
du_isSemigroup_1674 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_isSemigroup_1674 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
            (coe v2)))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.distrib
d_distrib_1676 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1676 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_972
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
         (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0)))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.distribʳ
d_distrib'691'_1678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1678 ~v0 ~v1 v2 = du_distrib'691'_1678 v2
du_distrib'691'_1678 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1678 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe MAlonzo.Code.Algebra.Structures.d_distrib_972 (coe v2))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isEquivalence
d_isEquivalence_1680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1680 ~v0 ~v1 v2 = du_isEquivalence_1680 v2
du_isEquivalence_1680 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1680 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                  (coe v2)))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isNearSemiring
d_isNearSemiring_1682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_1682 ~v0 ~v1 v2 = du_isNearSemiring_1682 v2
du_isNearSemiring_1682 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_1682 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
         (coe v1))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_1684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1684 ~v0 ~v1 v2
  = du_isPartialEquivalence_1684 v2
du_isPartialEquivalence_1684 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1684 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v6))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.isSemiringWithoutOne
d_isSemiringWithoutOne_1686 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1686 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
      (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.refl
d_refl_1688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
d_refl_1688 ~v0 ~v1 v2 = du_refl_1688 v2
du_refl_1688 ::
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
du_refl_1688 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                     (coe v2))))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.reflexive
d_reflexive_1690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1690 ~v0 ~v1 v2 = du_reflexive_1690 v2
du_reflexive_1690 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1690 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v6))
        v7
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.setoid
d_setoid_1692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1692 ~v0 ~v1 v2 = du_setoid_1692 v2
du_setoid_1692 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1692 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isMonoid_892
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.sym
d_sym_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1694 ~v0 ~v1 v2 = du_sym_1694 v2
du_sym_1694 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1694 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                     (coe v2))))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.trans
d_trans_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1696 ~v0 ~v1 v2 = du_trans_1696 v2
du_trans_1696 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1696 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
              (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_968
                     (coe v2))))))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.zero
d_zero_1698 ::
  T_CommutativeSemiringWithoutOne_1598 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1698 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_974
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
         (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0)))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.zeroʳ
d_zero'691'_1700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
d_zero'691'_1700 ~v0 ~v1 v2 = du_zero'691'_1700 v2
du_zero'691'_1700 ::
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
du_zero'691'_1700 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
         (coe v1))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.zeroˡ
d_zero'737'_1702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
d_zero'737'_1702 ~v0 ~v1 v2 = du_zero'737'_1702 v2
du_zero'737'_1702 ::
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny
du_zero'737'_1702 v0
  = let v1 = d_isCommutativeSemiringWithoutOne_1626 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
         (coe v1))
-- Algebra.Bundles.CommutativeSemiringWithoutOne.semiringWithoutOne
d_semiringWithoutOne_1704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_SemiringWithoutOne_1464
d_semiringWithoutOne_1704 ~v0 ~v1 v2
  = du_semiringWithoutOne_1704 v2
du_semiringWithoutOne_1704 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_SemiringWithoutOne_1464
du_semiringWithoutOne_1704 v0
  = coe
      C_SemiringWithoutOne'46'constructor_22249 (d__'43'__1620 (coe v0))
      (d__'42'__1622 (coe v0)) (d_0'35'_1624 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutOne_1056
         (coe d_isCommutativeSemiringWithoutOne_1626 (coe v0)))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._._≉_
d__'8777'__1708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1708 = erased
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.magma
d_magma_1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_Magma_36
d_magma_1710 ~v0 ~v1 v2 = du_magma_1710 v2
du_magma_1710 :: T_CommutativeSemiringWithoutOne_1598 -> T_Magma_36
du_magma_1710 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    let v2 = coe du_nearSemiring_1562 (coe v1) in
    coe du_magma_254 (coe du_'42''45'semigroup_1452 (coe v2))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMagma
d_rawMagma_1712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_RawMagma_8
d_rawMagma_1712 ~v0 ~v1 v2 = du_rawMagma_1712 v2
du_rawMagma_1712 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_RawMagma_8
du_rawMagma_1712 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    let v2 = coe du_nearSemiring_1562 (coe v1) in
    let v3 = coe du_'42''45'semigroup_1452 (coe v2) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v3))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.*-semigroup
d_'42''45'semigroup_1714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_Semigroup_206
d_'42''45'semigroup_1714 ~v0 ~v1 v2 = du_'42''45'semigroup_1714 v2
du_'42''45'semigroup_1714 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_Semigroup_206
du_'42''45'semigroup_1714 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    coe du_'42''45'semigroup_1452 (coe du_nearSemiring_1562 (coe v1))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.+-commutativeMonoid
d_'43''45'commutativeMonoid_1716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_1716 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_1716 v2
du_'43''45'commutativeMonoid_1716 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_1716 v0
  = coe
      du_'43''45'commutativeMonoid_1586
      (coe du_semiringWithoutOne_1704 (coe v0))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.commutativeSemigroup
d_commutativeSemigroup_1718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_1718 ~v0 ~v1 v2
  = du_commutativeSemigroup_1718 v2
du_commutativeSemigroup_1718 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_1718 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    coe
      du_commutativeSemigroup_664
      (coe du_'43''45'commutativeMonoid_1586 (coe v1))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.magma
d_magma_1720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_Magma_36
d_magma_1720 ~v0 ~v1 v2 = du_magma_1720 v2
du_magma_1720 :: T_CommutativeSemiringWithoutOne_1598 -> T_Magma_36
du_magma_1720 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    let v2 = coe du_nearSemiring_1562 (coe v1) in
    let v3 = coe du_'43''45'monoid_1438 (coe v2) in
    coe du_magma_254 (coe du_semigroup_566 (coe v3))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.+-monoid
d_'43''45'monoid_1722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_Monoid_506
d_'43''45'monoid_1722 ~v0 ~v1 v2 = du_'43''45'monoid_1722 v2
du_'43''45'monoid_1722 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_Monoid_506
du_'43''45'monoid_1722 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    coe du_'43''45'monoid_1438 (coe du_nearSemiring_1562 (coe v1))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMagma
d_rawMagma_1724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_RawMagma_8
d_rawMagma_1724 ~v0 ~v1 v2 = du_rawMagma_1724 v2
du_rawMagma_1724 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_RawMagma_8
du_rawMagma_1724 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    let v2 = coe du_nearSemiring_1562 (coe v1) in
    let v3 = coe du_'43''45'monoid_1438 (coe v2) in
    let v4 = coe du_semigroup_566 (coe v3) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v4))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.rawMonoid
d_rawMonoid_1726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_RawMonoid_474
d_rawMonoid_1726 ~v0 ~v1 v2 = du_rawMonoid_1726 v2
du_rawMonoid_1726 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_RawMonoid_474
du_rawMonoid_1726 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    let v2 = coe du_nearSemiring_1562 (coe v1) in
    coe du_rawMonoid_576 (coe du_'43''45'monoid_1438 (coe v2))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.semigroup
d_semigroup_1728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_Semigroup_206
d_semigroup_1728 ~v0 ~v1 v2 = du_semigroup_1728 v2
du_semigroup_1728 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_Semigroup_206
du_semigroup_1728 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    let v2 = coe du_nearSemiring_1562 (coe v1) in
    coe du_semigroup_566 (coe du_'43''45'monoid_1438 (coe v2))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.nearSemiring
d_nearSemiring_1730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_NearSemiring_1354
d_nearSemiring_1730 ~v0 ~v1 v2 = du_nearSemiring_1730 v2
du_nearSemiring_1730 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_NearSemiring_1354
du_nearSemiring_1730 v0
  = coe
      du_nearSemiring_1562 (coe du_semiringWithoutOne_1704 (coe v0))
-- Algebra.Bundles.CommutativeSemiringWithoutOne._.rawNearSemiring
d_rawNearSemiring_1732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiringWithoutOne_1598 -> T_RawNearSemiring_1314
d_rawNearSemiring_1732 ~v0 ~v1 v2 = du_rawNearSemiring_1732 v2
du_rawNearSemiring_1732 ::
  T_CommutativeSemiringWithoutOne_1598 -> T_RawNearSemiring_1314
du_rawNearSemiring_1732 v0
  = let v1 = coe du_semiringWithoutOne_1704 (coe v0) in
    coe du_rawNearSemiring_1436 (coe du_nearSemiring_1562 (coe v1))
-- Algebra.Bundles.RawSemiring
d_RawSemiring_1738 a0 a1 = ()
data T_RawSemiring_1738
  = C_RawSemiring'46'constructor_26307 (AgdaAny ->
                                        AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
-- Algebra.Bundles.RawSemiring.Carrier
d_Carrier_1756 :: T_RawSemiring_1738 -> ()
d_Carrier_1756 = erased
-- Algebra.Bundles.RawSemiring._≈_
d__'8776'__1758 :: T_RawSemiring_1738 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1758 = erased
-- Algebra.Bundles.RawSemiring._+_
d__'43'__1760 ::
  T_RawSemiring_1738 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__1760 v0
  = case coe v0 of
      C_RawSemiring'46'constructor_26307 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawSemiring._*_
d__'42'__1762 ::
  T_RawSemiring_1738 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1762 v0
  = case coe v0 of
      C_RawSemiring'46'constructor_26307 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawSemiring.0#
d_0'35'_1764 :: T_RawSemiring_1738 -> AgdaAny
d_0'35'_1764 v0
  = case coe v0 of
      C_RawSemiring'46'constructor_26307 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawSemiring.1#
d_1'35'_1766 :: T_RawSemiring_1738 -> AgdaAny
d_1'35'_1766 v0
  = case coe v0 of
      C_RawSemiring'46'constructor_26307 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawSemiring.rawNearSemiring
d_rawNearSemiring_1768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawSemiring_1738 -> T_RawNearSemiring_1314
d_rawNearSemiring_1768 ~v0 ~v1 v2 = du_rawNearSemiring_1768 v2
du_rawNearSemiring_1768 ::
  T_RawSemiring_1738 -> T_RawNearSemiring_1314
du_rawNearSemiring_1768 v0
  = coe
      C_RawNearSemiring'46'constructor_19639 (d__'43'__1760 (coe v0))
      (d__'42'__1762 (coe v0)) (d_0'35'_1764 (coe v0))
-- Algebra.Bundles.RawSemiring._._≉_
d__'8777'__1772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawSemiring_1738 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1772 = erased
-- Algebra.Bundles.RawSemiring._.*-rawMagma
d_'42''45'rawMagma_1774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawSemiring_1738 -> T_RawMagma_8
d_'42''45'rawMagma_1774 ~v0 ~v1 v2 = du_'42''45'rawMagma_1774 v2
du_'42''45'rawMagma_1774 :: T_RawSemiring_1738 -> T_RawMagma_8
du_'42''45'rawMagma_1774 v0
  = coe
      du_'42''45'rawMagma_1348 (coe du_rawNearSemiring_1768 (coe v0))
-- Algebra.Bundles.RawSemiring._.rawMagma
d_rawMagma_1776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawSemiring_1738 -> T_RawMagma_8
d_rawMagma_1776 ~v0 ~v1 v2 = du_rawMagma_1776 v2
du_rawMagma_1776 :: T_RawSemiring_1738 -> T_RawMagma_8
du_rawMagma_1776 v0
  = let v1 = coe du_rawNearSemiring_1768 (coe v0) in
    coe du_rawMagma_496 (coe du_'43''45'rawMonoid_1340 (coe v1))
-- Algebra.Bundles.RawSemiring._.+-rawMonoid
d_'43''45'rawMonoid_1778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawSemiring_1738 -> T_RawMonoid_474
d_'43''45'rawMonoid_1778 ~v0 ~v1 v2 = du_'43''45'rawMonoid_1778 v2
du_'43''45'rawMonoid_1778 :: T_RawSemiring_1738 -> T_RawMonoid_474
du_'43''45'rawMonoid_1778 v0
  = coe
      du_'43''45'rawMonoid_1340 (coe du_rawNearSemiring_1768 (coe v0))
-- Algebra.Bundles.RawSemiring.*-rawMonoid
d_'42''45'rawMonoid_1780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawSemiring_1738 -> T_RawMonoid_474
d_'42''45'rawMonoid_1780 ~v0 ~v1 v2 = du_'42''45'rawMonoid_1780 v2
du_'42''45'rawMonoid_1780 :: T_RawSemiring_1738 -> T_RawMonoid_474
du_'42''45'rawMonoid_1780 v0
  = coe
      C_RawMonoid'46'constructor_7223 (d__'42'__1762 (coe v0))
      (d_1'35'_1766 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero
d_SemiringWithoutAnnihilatingZero_1786 a0 a1 = ()
data T_SemiringWithoutAnnihilatingZero_1786
  = C_SemiringWithoutAnnihilatingZero'46'constructor_27015 (AgdaAny ->
                                                            AgdaAny -> AgdaAny)
                                                           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
                                                           AgdaAny
                                                           MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero.Carrier
d_Carrier_1806 :: T_SemiringWithoutAnnihilatingZero_1786 -> ()
d_Carrier_1806 = erased
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._≈_
d__'8776'__1808 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1808 = erased
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._+_
d__'43'__1810 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__1810 v0
  = case coe v0 of
      C_SemiringWithoutAnnihilatingZero'46'constructor_27015 v3 v4 v5 v6 v7
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._*_
d__'42'__1812 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1812 v0
  = case coe v0 of
      C_SemiringWithoutAnnihilatingZero'46'constructor_27015 v3 v4 v5 v6 v7
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero.0#
d_0'35'_1814 :: T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny
d_0'35'_1814 v0
  = case coe v0 of
      C_SemiringWithoutAnnihilatingZero'46'constructor_27015 v3 v4 v5 v6 v7
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero.1#
d_1'35'_1816 :: T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny
d_1'35'_1816 v0
  = case coe v0 of
      C_SemiringWithoutAnnihilatingZero'46'constructor_27015 v3 v4 v5 v6 v7
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1818 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_1818 v0
  = case coe v0 of
      C_SemiringWithoutAnnihilatingZero'46'constructor_27015 v3 v4 v5 v6 v7
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.assoc
d_assoc_1822 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1822 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-cong
d_'8729''45'cong_1824 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congʳ
d_'8729''45'cong'691'_1826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1826 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1826 v2
du_'8729''45'cong'691'_1826 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1826 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congˡ
d_'8729''45'cong'737'_1828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1828 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1828 v2
du_'8729''45'cong'737'_1828 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1828 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identity
d_identity_1830 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1830 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityʳ
d_identity'691'_1832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
d_identity'691'_1832 ~v0 ~v1 v2 = du_identity'691'_1832 v2
du_identity'691'_1832 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
du_identity'691'_1832 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v1))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityˡ
d_identity'737'_1834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
d_identity'737'_1834 ~v0 ~v1 v2 = du_identity'737'_1834 v2
du_identity'737'_1834 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
du_identity'737'_1834 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v1))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMagma
d_isMagma_1836 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1836 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.*-isMonoid
d_'42''45'isMonoid_1838 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_1838 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isSemigroup
d_isSemigroup_1840 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.assoc
d_assoc_1842 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1842 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.comm
d_comm_1844 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1844 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-cong
d_'8729''45'cong_1846 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congʳ
d_'8729''45'cong'691'_1848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1848 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1848 v2
du_'8729''45'cong'691'_1848 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1848 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.∙-congˡ
d_'8729''45'cong'737'_1850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1850 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1850 v2
du_'8729''45'cong'737'_1850 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1850 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identity
d_identity_1852 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1852 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityʳ
d_identity'691'_1854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
d_identity'691'_1854 ~v0 ~v1 v2 = du_identity'691'_1854 v2
du_identity'691'_1854 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
du_identity'691'_1854 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.identityˡ
d_identity'737'_1856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
d_identity'737'_1856 ~v0 ~v1 v2 = du_identity'737'_1856 v2
du_identity'737'_1856 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
du_identity'737'_1856 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isCommutativeMagma
d_isCommutativeMagma_1858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_1858 ~v0 ~v1 v2
  = du_isCommutativeMagma_1858 v2
du_isCommutativeMagma_1858 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_1858 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v2))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1860 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1860 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isCommutativeSemigroup
d_isCommutativeSemigroup_1862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1862 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_1862 v2
du_isCommutativeSemigroup_1862 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1862 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v1))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMagma
d_isMagma_1864 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1864 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isMonoid
d_isMonoid_1866 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_1866 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isSemigroup
d_isSemigroup_1868 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1868 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distrib
d_distrib_1870 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1870 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distribʳ
d_distrib'691'_1872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1872 ~v0 ~v1 v2 = du_distrib'691'_1872 v2
du_distrib'691'_1872 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1872 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.distribˡ
d_distrib'737'_1874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1874 ~v0 ~v1 v2 = du_distrib'737'_1874 v2
du_distrib'737'_1874 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1874 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isEquivalence
d_isEquivalence_1876 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1876 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0))))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.isPartialEquivalence
d_isPartialEquivalence_1878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1878 ~v0 ~v1 v2
  = du_isPartialEquivalence_1878 v2
du_isPartialEquivalence_1878 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1878 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.refl
d_refl_1880 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny
d_refl_1880 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.reflexive
d_reflexive_1882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1882 ~v0 ~v1 v2 = du_reflexive_1882 v2
du_reflexive_1882 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1882 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v5))
        v6
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.setoid
d_setoid_1884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1884 ~v0 ~v1 v2 = du_setoid_1884 v2
du_setoid_1884 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1884 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1818 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.sym
d_sym_1886 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1886 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.trans
d_trans_1888 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1888 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))))))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero.rawSemiring
d_rawSemiring_1890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawSemiring_1738
d_rawSemiring_1890 ~v0 ~v1 v2 = du_rawSemiring_1890 v2
du_rawSemiring_1890 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawSemiring_1738
du_rawSemiring_1890 v0
  = coe
      C_RawSemiring'46'constructor_26307 (d__'43'__1810 (coe v0))
      (d__'42'__1812 (coe v0)) (d_0'35'_1814 (coe v0))
      (d_1'35'_1816 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawNearSemiring
d_rawNearSemiring_1894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawNearSemiring_1314
d_rawNearSemiring_1894 ~v0 ~v1 v2 = du_rawNearSemiring_1894 v2
du_rawNearSemiring_1894 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawNearSemiring_1314
du_rawNearSemiring_1894 v0
  = coe du_rawNearSemiring_1768 (coe du_rawSemiring_1890 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero.+-commutativeMonoid
d_'43''45'commutativeMonoid_1896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_1896 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_1896 v2
du_'43''45'commutativeMonoid_1896 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_1896 v0
  = coe
      C_CommutativeMonoid'46'constructor_8947 (d__'43'__1810 (coe v0))
      (d_0'35'_1814 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._._≉_
d__'8777'__1900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1900 = erased
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.commutativeMagma
d_commutativeMagma_1902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_CommutativeMagma_148
d_commutativeMagma_1902 ~v0 ~v1 v2 = du_commutativeMagma_1902 v2
du_commutativeMagma_1902 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_CommutativeMagma_148
du_commutativeMagma_1902 v0
  = let v1 = coe du_'43''45'commutativeMonoid_1896 (coe v0) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v1))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.commutativeSemigroup
d_commutativeSemigroup_1904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 ->
  T_CommutativeSemigroup_332
d_commutativeSemigroup_1904 ~v0 ~v1 v2
  = du_commutativeSemigroup_1904 v2
du_commutativeSemigroup_1904 ::
  T_SemiringWithoutAnnihilatingZero_1786 ->
  T_CommutativeSemigroup_332
du_commutativeSemigroup_1904 v0
  = coe
      du_commutativeSemigroup_664
      (coe du_'43''45'commutativeMonoid_1896 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.magma
d_magma_1906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Magma_36
d_magma_1906 ~v0 ~v1 v2 = du_magma_1906 v2
du_magma_1906 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Magma_36
du_magma_1906 v0
  = let v1 = coe du_'43''45'commutativeMonoid_1896 (coe v0) in
    let v2 = coe du_monoid_650 (coe v1) in
    coe du_magma_254 (coe du_semigroup_566 (coe v2))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.monoid
d_monoid_1908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Monoid_506
d_monoid_1908 ~v0 ~v1 v2 = du_monoid_1908 v2
du_monoid_1908 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Monoid_506
du_monoid_1908 v0
  = coe
      du_monoid_650 (coe du_'43''45'commutativeMonoid_1896 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMagma
d_rawMagma_1910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawMagma_8
d_rawMagma_1910 ~v0 ~v1 v2 = du_rawMagma_1910 v2
du_rawMagma_1910 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawMagma_8
du_rawMagma_1910 v0
  = let v1 = coe du_'43''45'commutativeMonoid_1896 (coe v0) in
    let v2 = coe du_monoid_650 (coe v1) in
    let v3 = coe du_semigroup_566 (coe v2) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v3))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMonoid
d_rawMonoid_1912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawMonoid_474
d_rawMonoid_1912 ~v0 ~v1 v2 = du_rawMonoid_1912 v2
du_rawMonoid_1912 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawMonoid_474
du_rawMonoid_1912 v0
  = let v1 = coe du_'43''45'commutativeMonoid_1896 (coe v0) in
    coe du_rawMonoid_576 (coe du_monoid_650 (coe v1))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.semigroup
d_semigroup_1914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Semigroup_206
d_semigroup_1914 ~v0 ~v1 v2 = du_semigroup_1914 v2
du_semigroup_1914 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Semigroup_206
du_semigroup_1914 v0
  = let v1 = coe du_'43''45'commutativeMonoid_1896 (coe v0) in
    coe du_semigroup_566 (coe du_monoid_650 (coe v1))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero.*-monoid
d_'42''45'monoid_1916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Monoid_506
d_'42''45'monoid_1916 ~v0 ~v1 v2 = du_'42''45'monoid_1916 v2
du_'42''45'monoid_1916 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Monoid_506
du_'42''45'monoid_1916 v0
  = coe
      C_Monoid'46'constructor_7649 (d__'42'__1812 (coe v0))
      (d_1'35'_1816 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe d_isSemiringWithoutAnnihilatingZero_1818 (coe v0)))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.magma
d_magma_1920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Magma_36
d_magma_1920 ~v0 ~v1 v2 = du_magma_1920 v2
du_magma_1920 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Magma_36
du_magma_1920 v0
  = let v1 = coe du_'42''45'monoid_1916 (coe v0) in
    coe du_magma_254 (coe du_semigroup_566 (coe v1))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMagma
d_rawMagma_1922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawMagma_8
d_rawMagma_1922 ~v0 ~v1 v2 = du_rawMagma_1922 v2
du_rawMagma_1922 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawMagma_8
du_rawMagma_1922 v0
  = let v1 = coe du_'42''45'monoid_1916 (coe v0) in
    let v2 = coe du_semigroup_566 (coe v1) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v2))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.rawMonoid
d_rawMonoid_1924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawMonoid_474
d_rawMonoid_1924 ~v0 ~v1 v2 = du_rawMonoid_1924 v2
du_rawMonoid_1924 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_RawMonoid_474
du_rawMonoid_1924 v0
  = coe du_rawMonoid_576 (coe du_'42''45'monoid_1916 (coe v0))
-- Algebra.Bundles.SemiringWithoutAnnihilatingZero._.semigroup
d_semigroup_1926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Semigroup_206
d_semigroup_1926 ~v0 ~v1 v2 = du_semigroup_1926 v2
du_semigroup_1926 ::
  T_SemiringWithoutAnnihilatingZero_1786 -> T_Semigroup_206
du_semigroup_1926 v0
  = coe du_semigroup_566 (coe du_'42''45'monoid_1916 (coe v0))
-- Algebra.Bundles.Semiring
d_Semiring_1932 a0 a1 = ()
data T_Semiring_1932
  = C_Semiring'46'constructor_29415 (AgdaAny -> AgdaAny -> AgdaAny)
                                    (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
                                    MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
-- Algebra.Bundles.Semiring.Carrier
d_Carrier_1952 :: T_Semiring_1932 -> ()
d_Carrier_1952 = erased
-- Algebra.Bundles.Semiring._≈_
d__'8776'__1954 :: T_Semiring_1932 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1954 = erased
-- Algebra.Bundles.Semiring._+_
d__'43'__1956 :: T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__1956 v0
  = case coe v0 of
      C_Semiring'46'constructor_29415 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semiring._*_
d__'42'__1958 :: T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__1958 v0
  = case coe v0 of
      C_Semiring'46'constructor_29415 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semiring.0#
d_0'35'_1960 :: T_Semiring_1932 -> AgdaAny
d_0'35'_1960 v0
  = case coe v0 of
      C_Semiring'46'constructor_29415 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semiring.1#
d_1'35'_1962 :: T_Semiring_1932 -> AgdaAny
d_1'35'_1962 v0
  = case coe v0 of
      C_Semiring'46'constructor_29415 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semiring.isSemiring
d_isSemiring_1964 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_1964 v0
  = case coe v0 of
      C_Semiring'46'constructor_29415 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Semiring._.assoc
d_assoc_1968 ::
  T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1968 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe d_isSemiring_1964 (coe v0)))))
-- Algebra.Bundles.Semiring._.∙-cong
d_'8729''45'cong_1970 ::
  T_Semiring_1932 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1970 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe d_isSemiring_1964 (coe v0))))))
-- Algebra.Bundles.Semiring._.∙-congʳ
d_'8729''45'cong'691'_1972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1972 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1972 v2
du_'8729''45'cong'691'_1972 ::
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1972 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.Semiring._.∙-congˡ
d_'8729''45'cong'737'_1974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1974 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1974 v2
du_'8729''45'cong'737'_1974 ::
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1974 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.Semiring._.identity
d_identity_1976 ::
  T_Semiring_1932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1976 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1964 (coe v0))))
-- Algebra.Bundles.Semiring._.identityʳ
d_identity'691'_1978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny
d_identity'691'_1978 ~v0 ~v1 v2 = du_identity'691'_1978 v2
du_identity'691'_1978 :: T_Semiring_1932 -> AgdaAny -> AgdaAny
du_identity'691'_1978 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v2))
-- Algebra.Bundles.Semiring._.identityˡ
d_identity'737'_1980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny
d_identity'737'_1980 ~v0 ~v1 v2 = du_identity'737'_1980 v2
du_identity'737'_1980 :: T_Semiring_1932 -> AgdaAny -> AgdaAny
du_identity'737'_1980 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v2))
-- Algebra.Bundles.Semiring._.isMagma
d_isMagma_1982 ::
  T_Semiring_1932 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_1982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe d_isSemiring_1964 (coe v0)))))
-- Algebra.Bundles.Semiring._.*-isMonoid
d_'42''45'isMonoid_1984 ::
  T_Semiring_1932 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_1984 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe d_isSemiring_1964 (coe v0)))
-- Algebra.Bundles.Semiring._.isSemigroup
d_isSemigroup_1986 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1986 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1964 (coe v0))))
-- Algebra.Bundles.Semiring._.assoc
d_assoc_1988 ::
  T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1988 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe d_isSemiring_1964 (coe v0))))))
-- Algebra.Bundles.Semiring._.comm
d_comm_1990 :: T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1990 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1964 (coe v0))))
-- Algebra.Bundles.Semiring._.∙-cong
d_'8729''45'cong_1992 ::
  T_Semiring_1932 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1992 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe d_isSemiring_1964 (coe v0)))))))
-- Algebra.Bundles.Semiring._.∙-congʳ
d_'8729''45'cong'691'_1994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1994 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_1994 v2
du_'8729''45'cong'691'_1994 ::
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1994 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.Semiring._.∙-congˡ
d_'8729''45'cong'737'_1996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1996 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_1996 v2
du_'8729''45'cong'737'_1996 ::
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1996 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.Semiring._.identity
d_identity_1998 ::
  T_Semiring_1932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1998 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe d_isSemiring_1964 (coe v0)))))
-- Algebra.Bundles.Semiring._.identityʳ
d_identity'691'_2000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny
d_identity'691'_2000 ~v0 ~v1 v2 = du_identity'691'_2000 v2
du_identity'691'_2000 :: T_Semiring_1932 -> AgdaAny -> AgdaAny
du_identity'691'_2000 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3))
-- Algebra.Bundles.Semiring._.identityˡ
d_identity'737'_2002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny
d_identity'737'_2002 ~v0 ~v1 v2 = du_identity'737'_2002 v2
du_identity'737'_2002 :: T_Semiring_1932 -> AgdaAny -> AgdaAny
du_identity'737'_2002 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3))
-- Algebra.Bundles.Semiring._.isCommutativeMagma
d_isCommutativeMagma_2004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_2004 ~v0 ~v1 v2
  = du_isCommutativeMagma_2004 v2
du_isCommutativeMagma_2004 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_2004 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v3))
-- Algebra.Bundles.Semiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2006 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_2006 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe d_isSemiring_1964 (coe v0)))
-- Algebra.Bundles.Semiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_2008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_2008 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_2008 v2
du_isCommutativeSemigroup_2008 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_2008 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v2))
-- Algebra.Bundles.Semiring._.isMagma
d_isMagma_2010 ::
  T_Semiring_1932 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2010 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe d_isSemiring_1964 (coe v0))))))
-- Algebra.Bundles.Semiring._.isMonoid
d_isMonoid_2012 ::
  T_Semiring_1932 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_2012 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1964 (coe v0))))
-- Algebra.Bundles.Semiring._.isSemigroup
d_isSemigroup_2014 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2014 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe d_isSemiring_1964 (coe v0)))))
-- Algebra.Bundles.Semiring._.distrib
d_distrib_2016 ::
  T_Semiring_1932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2016 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe d_isSemiring_1964 (coe v0)))
-- Algebra.Bundles.Semiring._.distribʳ
d_distrib'691'_2018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2018 ~v0 ~v1 v2 = du_distrib'691'_2018 v2
du_distrib'691'_2018 ::
  T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2018 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v1))
-- Algebra.Bundles.Semiring._.distribˡ
d_distrib'737'_2020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2020 ~v0 ~v1 v2 = du_distrib'737'_2020 v2
du_distrib'737'_2020 ::
  T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2020 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v1))
-- Algebra.Bundles.Semiring._.isEquivalence
d_isEquivalence_2022 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2022 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe d_isSemiring_1964 (coe v0)))))))
-- Algebra.Bundles.Semiring._.isNearSemiring
d_isNearSemiring_2024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_2024 ~v0 ~v1 v2 = du_isNearSemiring_2024 v2
du_isNearSemiring_2024 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_2024 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v1))
-- Algebra.Bundles.Semiring._.isPartialEquivalence
d_isPartialEquivalence_2026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2026 ~v0 ~v1 v2
  = du_isPartialEquivalence_2026 v2
du_isPartialEquivalence_2026 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2026 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v6))
-- Algebra.Bundles.Semiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2028 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_2028 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe d_isSemiring_1964 (coe v0))
-- Algebra.Bundles.Semiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_2030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_2030 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_2030 v2
du_isSemiringWithoutOne_2030 ::
  T_Semiring_1932 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_2030 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe d_isSemiring_1964 (coe v0))
-- Algebra.Bundles.Semiring._.refl
d_refl_2032 :: T_Semiring_1932 -> AgdaAny -> AgdaAny
d_refl_2032 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe d_isSemiring_1964 (coe v0))))))))
-- Algebra.Bundles.Semiring._.reflexive
d_reflexive_2034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2034 ~v0 ~v1 v2 = du_reflexive_2034 v2
du_reflexive_2034 ::
  T_Semiring_1932 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2034 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v6))
        v7
-- Algebra.Bundles.Semiring._.setoid
d_setoid_2036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2036 ~v0 ~v1 v2 = du_setoid_2036 v2
du_setoid_2036 ::
  T_Semiring_1932 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2036 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.Semiring._.sym
d_sym_2038 ::
  T_Semiring_1932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2038 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe d_isSemiring_1964 (coe v0))))))))
-- Algebra.Bundles.Semiring._.trans
d_trans_2040 ::
  T_Semiring_1932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2040 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe d_isSemiring_1964 (coe v0))))))))
-- Algebra.Bundles.Semiring._.zero
d_zero_2042 ::
  T_Semiring_1932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2042 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe d_isSemiring_1964 (coe v0))
-- Algebra.Bundles.Semiring._.zeroʳ
d_zero'691'_2044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny
d_zero'691'_2044 ~v0 ~v1 v2 = du_zero'691'_2044 v2
du_zero'691'_2044 :: T_Semiring_1932 -> AgdaAny -> AgdaAny
du_zero'691'_2044 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v1))
-- Algebra.Bundles.Semiring._.zeroˡ
d_zero'737'_2046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny
d_zero'737'_2046 ~v0 ~v1 v2 = du_zero'737'_2046 v2
du_zero'737'_2046 :: T_Semiring_1932 -> AgdaAny -> AgdaAny
du_zero'737'_2046 v0
  = let v1 = d_isSemiring_1964 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v1))
-- Algebra.Bundles.Semiring.semiringWithoutAnnihilatingZero
d_semiringWithoutAnnihilatingZero_2048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_SemiringWithoutAnnihilatingZero_1786
d_semiringWithoutAnnihilatingZero_2048 ~v0 ~v1 v2
  = du_semiringWithoutAnnihilatingZero_2048 v2
du_semiringWithoutAnnihilatingZero_2048 ::
  T_Semiring_1932 -> T_SemiringWithoutAnnihilatingZero_1786
du_semiringWithoutAnnihilatingZero_2048 v0
  = coe
      C_SemiringWithoutAnnihilatingZero'46'constructor_27015
      (d__'43'__1956 (coe v0)) (d__'42'__1958 (coe v0))
      (d_0'35'_1960 (coe v0)) (d_1'35'_1962 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe d_isSemiring_1964 (coe v0)))
-- Algebra.Bundles.Semiring._._≉_
d__'8777'__2052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2052 = erased
-- Algebra.Bundles.Semiring._.magma
d_magma_2054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_Magma_36
d_magma_2054 ~v0 ~v1 v2 = du_magma_2054 v2
du_magma_2054 :: T_Semiring_1932 -> T_Magma_36
du_magma_2054 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    let v2 = coe du_'42''45'monoid_1916 (coe v1) in
    coe du_magma_254 (coe du_semigroup_566 (coe v2))
-- Algebra.Bundles.Semiring._.*-monoid
d_'42''45'monoid_2056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_Monoid_506
d_'42''45'monoid_2056 ~v0 ~v1 v2 = du_'42''45'monoid_2056 v2
du_'42''45'monoid_2056 :: T_Semiring_1932 -> T_Monoid_506
du_'42''45'monoid_2056 v0
  = coe
      du_'42''45'monoid_1916
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v0))
-- Algebra.Bundles.Semiring._.rawMagma
d_rawMagma_2058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_RawMagma_8
d_rawMagma_2058 ~v0 ~v1 v2 = du_rawMagma_2058 v2
du_rawMagma_2058 :: T_Semiring_1932 -> T_RawMagma_8
du_rawMagma_2058 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    let v2 = coe du_'42''45'monoid_1916 (coe v1) in
    let v3 = coe du_semigroup_566 (coe v2) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v3))
-- Algebra.Bundles.Semiring._.rawMonoid
d_rawMonoid_2060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_RawMonoid_474
d_rawMonoid_2060 ~v0 ~v1 v2 = du_rawMonoid_2060 v2
du_rawMonoid_2060 :: T_Semiring_1932 -> T_RawMonoid_474
du_rawMonoid_2060 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    coe du_rawMonoid_576 (coe du_'42''45'monoid_1916 (coe v1))
-- Algebra.Bundles.Semiring._.semigroup
d_semigroup_2062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_Semigroup_206
d_semigroup_2062 ~v0 ~v1 v2 = du_semigroup_2062 v2
du_semigroup_2062 :: T_Semiring_1932 -> T_Semigroup_206
du_semigroup_2062 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    coe du_semigroup_566 (coe du_'42''45'monoid_1916 (coe v1))
-- Algebra.Bundles.Semiring._.commutativeMagma
d_commutativeMagma_2064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_CommutativeMagma_148
d_commutativeMagma_2064 ~v0 ~v1 v2 = du_commutativeMagma_2064 v2
du_commutativeMagma_2064 ::
  T_Semiring_1932 -> T_CommutativeMagma_148
du_commutativeMagma_2064 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    let v2 = coe du_'43''45'commutativeMonoid_1896 (coe v1) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v2))
-- Algebra.Bundles.Semiring._.+-commutativeMonoid
d_'43''45'commutativeMonoid_2066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_2066 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_2066 v2
du_'43''45'commutativeMonoid_2066 ::
  T_Semiring_1932 -> T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_2066 v0
  = coe
      du_'43''45'commutativeMonoid_1896
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v0))
-- Algebra.Bundles.Semiring._.commutativeSemigroup
d_commutativeSemigroup_2068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_2068 ~v0 ~v1 v2
  = du_commutativeSemigroup_2068 v2
du_commutativeSemigroup_2068 ::
  T_Semiring_1932 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_2068 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    coe
      du_commutativeSemigroup_664
      (coe du_'43''45'commutativeMonoid_1896 (coe v1))
-- Algebra.Bundles.Semiring._.magma
d_magma_2070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_Magma_36
d_magma_2070 ~v0 ~v1 v2 = du_magma_2070 v2
du_magma_2070 :: T_Semiring_1932 -> T_Magma_36
du_magma_2070 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    let v2 = coe du_'43''45'commutativeMonoid_1896 (coe v1) in
    let v3 = coe du_monoid_650 (coe v2) in
    coe du_magma_254 (coe du_semigroup_566 (coe v3))
-- Algebra.Bundles.Semiring._.monoid
d_monoid_2072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_Monoid_506
d_monoid_2072 ~v0 ~v1 v2 = du_monoid_2072 v2
du_monoid_2072 :: T_Semiring_1932 -> T_Monoid_506
du_monoid_2072 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    coe du_monoid_650 (coe du_'43''45'commutativeMonoid_1896 (coe v1))
-- Algebra.Bundles.Semiring._.rawMagma
d_rawMagma_2074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_RawMagma_8
d_rawMagma_2074 ~v0 ~v1 v2 = du_rawMagma_2074 v2
du_rawMagma_2074 :: T_Semiring_1932 -> T_RawMagma_8
du_rawMagma_2074 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    let v2 = coe du_'43''45'commutativeMonoid_1896 (coe v1) in
    let v3 = coe du_monoid_650 (coe v2) in
    let v4 = coe du_semigroup_566 (coe v3) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v4))
-- Algebra.Bundles.Semiring._.rawMonoid
d_rawMonoid_2076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_RawMonoid_474
d_rawMonoid_2076 ~v0 ~v1 v2 = du_rawMonoid_2076 v2
du_rawMonoid_2076 :: T_Semiring_1932 -> T_RawMonoid_474
du_rawMonoid_2076 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    let v2 = coe du_'43''45'commutativeMonoid_1896 (coe v1) in
    coe du_rawMonoid_576 (coe du_monoid_650 (coe v2))
-- Algebra.Bundles.Semiring._.semigroup
d_semigroup_2078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_Semigroup_206
d_semigroup_2078 ~v0 ~v1 v2 = du_semigroup_2078 v2
du_semigroup_2078 :: T_Semiring_1932 -> T_Semigroup_206
du_semigroup_2078 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    let v2 = coe du_'43''45'commutativeMonoid_1896 (coe v1) in
    coe du_semigroup_566 (coe du_monoid_650 (coe v2))
-- Algebra.Bundles.Semiring._.rawNearSemiring
d_rawNearSemiring_2080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_RawNearSemiring_1314
d_rawNearSemiring_2080 ~v0 ~v1 v2 = du_rawNearSemiring_2080 v2
du_rawNearSemiring_2080 ::
  T_Semiring_1932 -> T_RawNearSemiring_1314
du_rawNearSemiring_2080 v0
  = let v1 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v0) in
    coe du_rawNearSemiring_1768 (coe du_rawSemiring_1890 (coe v1))
-- Algebra.Bundles.Semiring._.rawSemiring
d_rawSemiring_2082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_RawSemiring_1738
d_rawSemiring_2082 ~v0 ~v1 v2 = du_rawSemiring_2082 v2
du_rawSemiring_2082 :: T_Semiring_1932 -> T_RawSemiring_1738
du_rawSemiring_2082 v0
  = coe
      du_rawSemiring_1890
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v0))
-- Algebra.Bundles.Semiring.semiringWithoutOne
d_semiringWithoutOne_2084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_SemiringWithoutOne_1464
d_semiringWithoutOne_2084 ~v0 ~v1 v2
  = du_semiringWithoutOne_2084 v2
du_semiringWithoutOne_2084 ::
  T_Semiring_1932 -> T_SemiringWithoutOne_1464
du_semiringWithoutOne_2084 v0
  = coe
      C_SemiringWithoutOne'46'constructor_22249 (d__'43'__1956 (coe v0))
      (d__'42'__1958 (coe v0)) (d_0'35'_1960 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe d_isSemiring_1964 (coe v0)))
-- Algebra.Bundles.Semiring._.nearSemiring
d_nearSemiring_2088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Semiring_1932 -> T_NearSemiring_1354
d_nearSemiring_2088 ~v0 ~v1 v2 = du_nearSemiring_2088 v2
du_nearSemiring_2088 :: T_Semiring_1932 -> T_NearSemiring_1354
du_nearSemiring_2088 v0
  = coe
      du_nearSemiring_1562 (coe du_semiringWithoutOne_2084 (coe v0))
-- Algebra.Bundles.CommutativeSemiring
d_CommutativeSemiring_2094 a0 a1 = ()
data T_CommutativeSemiring_2094
  = C_CommutativeSemiring'46'constructor_32013 (AgdaAny ->
                                                AgdaAny -> AgdaAny)
                                               (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny
                                               MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
-- Algebra.Bundles.CommutativeSemiring.Carrier
d_Carrier_2114 :: T_CommutativeSemiring_2094 -> ()
d_Carrier_2114 = erased
-- Algebra.Bundles.CommutativeSemiring._≈_
d__'8776'__2116 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2116 = erased
-- Algebra.Bundles.CommutativeSemiring._+_
d__'43'__2118 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__2118 v0
  = case coe v0 of
      C_CommutativeSemiring'46'constructor_32013 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiring._*_
d__'42'__2120 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__2120 v0
  = case coe v0 of
      C_CommutativeSemiring'46'constructor_32013 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiring.0#
d_0'35'_2122 :: T_CommutativeSemiring_2094 -> AgdaAny
d_0'35'_2122 v0
  = case coe v0 of
      C_CommutativeSemiring'46'constructor_32013 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiring.1#
d_1'35'_2124 :: T_CommutativeSemiring_2094 -> AgdaAny
d_1'35'_2124 v0
  = case coe v0 of
      C_CommutativeSemiring'46'constructor_32013 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_2126 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_2126 v0
  = case coe v0 of
      C_CommutativeSemiring'46'constructor_32013 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeSemiring._.assoc
d_assoc_2130 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe d_isCommutativeSemiring_2126 (coe v0))))))
-- Algebra.Bundles.CommutativeSemiring._.*-comm
d_'42''45'comm_2132 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_2132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1360
      (coe d_isCommutativeSemiring_2126 (coe v0))
-- Algebra.Bundles.CommutativeSemiring._.∙-cong
d_'8729''45'cong_2134 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2134 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe d_isCommutativeSemiring_2126 (coe v0)))))))
-- Algebra.Bundles.CommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_2136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2136 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_2136 v2
du_'8729''45'cong'691'_2136 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2136 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.CommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_2138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2138 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_2138 v2
du_'8729''45'cong'737'_2138 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2138 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.CommutativeSemiring._.identity
d_identity_2140 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe d_isCommutativeSemiring_2126 (coe v0)))))
-- Algebra.Bundles.CommutativeSemiring._.identityʳ
d_identity'691'_2142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
d_identity'691'_2142 ~v0 ~v1 v2 = du_identity'691'_2142 v2
du_identity'691'_2142 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
du_identity'691'_2142 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v3))
-- Algebra.Bundles.CommutativeSemiring._.identityˡ
d_identity'737'_2144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
d_identity'737'_2144 ~v0 ~v1 v2 = du_identity'737'_2144 v2
du_identity'737'_2144 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
du_identity'737'_2144 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v3))
-- Algebra.Bundles.CommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_2146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_2146 ~v0 ~v1 v2
  = du_isCommutativeMagma_2146 v2
du_isCommutativeMagma_2146 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_2146 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_2148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_2148 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_2148 v2
du_'42''45'isCommutativeMonoid_2148 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_2148 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe d_isCommutativeSemiring_2126 (coe v0))
-- Algebra.Bundles.CommutativeSemiring._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_2150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_2150 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_2150 v2
du_'42''45'isCommutativeSemigroup_2150 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_2150 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v1))
-- Algebra.Bundles.CommutativeSemiring._.isMagma
d_isMagma_2152 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2152 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe d_isCommutativeSemiring_2126 (coe v0))))))
-- Algebra.Bundles.CommutativeSemiring._.*-isMonoid
d_'42''45'isMonoid_2154 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_2154 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe d_isCommutativeSemiring_2126 (coe v0))))
-- Algebra.Bundles.CommutativeSemiring._.isSemigroup
d_isSemigroup_2156 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2156 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe d_isCommutativeSemiring_2126 (coe v0)))))
-- Algebra.Bundles.CommutativeSemiring._.assoc
d_assoc_2158 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2158 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe d_isCommutativeSemiring_2126 (coe v0)))))))
-- Algebra.Bundles.CommutativeSemiring._.comm
d_comm_2160 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2160 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe d_isCommutativeSemiring_2126 (coe v0)))))
-- Algebra.Bundles.CommutativeSemiring._.∙-cong
d_'8729''45'cong_2162 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2162 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe d_isCommutativeSemiring_2126 (coe v0))))))))
-- Algebra.Bundles.CommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_2164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2164 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_2164 v2
du_'8729''45'cong'691'_2164 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2164 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Bundles.CommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_2166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2166 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_2166 v2
du_'8729''45'cong'737'_2166 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2166 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Bundles.CommutativeSemiring._.identity
d_identity_2168 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2168 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe d_isCommutativeSemiring_2126 (coe v0))))))
-- Algebra.Bundles.CommutativeSemiring._.identityʳ
d_identity'691'_2170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
d_identity'691'_2170 ~v0 ~v1 v2 = du_identity'691'_2170 v2
du_identity'691'_2170 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
du_identity'691'_2170 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4))
-- Algebra.Bundles.CommutativeSemiring._.identityˡ
d_identity'737'_2172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
d_identity'737'_2172 ~v0 ~v1 v2 = du_identity'737'_2172 v2
du_identity'737'_2172 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
du_identity'737'_2172 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4))
-- Algebra.Bundles.CommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_2174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_2174 ~v0 ~v1 v2
  = du_isCommutativeMagma_2174 v2
du_isCommutativeMagma_2174 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_2174 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v4))
-- Algebra.Bundles.CommutativeSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2176 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_2176 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe d_isCommutativeSemiring_2126 (coe v0))))
-- Algebra.Bundles.CommutativeSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_2178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_2178 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_2178 v2
du_isCommutativeSemigroup_2178 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_2178 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v3))
-- Algebra.Bundles.CommutativeSemiring._.isMagma
d_isMagma_2180 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2180 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe d_isCommutativeSemiring_2126 (coe v0)))))))
-- Algebra.Bundles.CommutativeSemiring._.isMonoid
d_isMonoid_2182 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_2182 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe d_isCommutativeSemiring_2126 (coe v0)))))
-- Algebra.Bundles.CommutativeSemiring._.isSemigroup
d_isSemigroup_2184 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2184 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe d_isCommutativeSemiring_2126 (coe v0))))))
-- Algebra.Bundles.CommutativeSemiring._.distrib
d_distrib_2186 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2186 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe d_isCommutativeSemiring_2126 (coe v0))))
-- Algebra.Bundles.CommutativeSemiring._.distribʳ
d_distrib'691'_2188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2188 ~v0 ~v1 v2 = du_distrib'691'_2188 v2
du_distrib'691'_2188 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2188 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.distribˡ
d_distrib'737'_2190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2190 ~v0 ~v1 v2 = du_distrib'737'_2190 v2
du_distrib'737'_2190 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2190 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_2192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_2192 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_2192 v2
du_isCommutativeSemiringWithoutOne_2192 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_2192 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe d_isCommutativeSemiring_2126 (coe v0))
-- Algebra.Bundles.CommutativeSemiring._.isEquivalence
d_isEquivalence_2194 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2194 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe d_isCommutativeSemiring_2126 (coe v0))))))))
-- Algebra.Bundles.CommutativeSemiring._.isNearSemiring
d_isNearSemiring_2196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_2196 ~v0 ~v1 v2 = du_isNearSemiring_2196 v2
du_isNearSemiring_2196 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_2196 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.isPartialEquivalence
d_isPartialEquivalence_2198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2198 ~v0 ~v1 v2
  = du_isPartialEquivalence_2198 v2
du_isPartialEquivalence_2198 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2198 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v7))
-- Algebra.Bundles.CommutativeSemiring._.isSemiring
d_isSemiring_2200 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_2200 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
      (coe d_isCommutativeSemiring_2126 (coe v0))
-- Algebra.Bundles.CommutativeSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2202 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_2202 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe d_isCommutativeSemiring_2126 (coe v0)))
-- Algebra.Bundles.CommutativeSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_2204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_2204 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_2204 v2
du_isSemiringWithoutOne_2204 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_2204 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1))
-- Algebra.Bundles.CommutativeSemiring._.refl
d_refl_2206 :: T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
d_refl_2206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe d_isCommutativeSemiring_2126 (coe v0)))))))))
-- Algebra.Bundles.CommutativeSemiring._.reflexive
d_reflexive_2208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2208 ~v0 ~v1 v2 = du_reflexive_2208 v2
du_reflexive_2208 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2208 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v7))
        v8
-- Algebra.Bundles.CommutativeSemiring._.setoid
d_setoid_2210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2210 ~v0 ~v1 v2 = du_setoid_2210 v2
du_setoid_2210 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2210 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Bundles.CommutativeSemiring._.sym
d_sym_2212 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2212 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe d_isCommutativeSemiring_2126 (coe v0)))))))))
-- Algebra.Bundles.CommutativeSemiring._.trans
d_trans_2214 ::
  T_CommutativeSemiring_2094 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe d_isCommutativeSemiring_2126 (coe v0)))))))))
-- Algebra.Bundles.CommutativeSemiring._.zero
d_zero_2216 ::
  T_CommutativeSemiring_2094 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2216 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe d_isCommutativeSemiring_2126 (coe v0)))
-- Algebra.Bundles.CommutativeSemiring._.zeroʳ
d_zero'691'_2218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
d_zero'691'_2218 ~v0 ~v1 v2 = du_zero'691'_2218 v2
du_zero'691'_2218 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
du_zero'691'_2218 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.zeroˡ
d_zero'737'_2220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
d_zero'737'_2220 ~v0 ~v1 v2 = du_zero'737'_2220 v2
du_zero'737'_2220 ::
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny
du_zero'737'_2220 v0
  = let v1 = d_isCommutativeSemiring_2126 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v2))
-- Algebra.Bundles.CommutativeSemiring.semiring
d_semiring_2222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_Semiring_1932
d_semiring_2222 ~v0 ~v1 v2 = du_semiring_2222 v2
du_semiring_2222 :: T_CommutativeSemiring_2094 -> T_Semiring_1932
du_semiring_2222 v0
  = coe
      C_Semiring'46'constructor_29415 (d__'43'__2118 (coe v0))
      (d__'42'__2120 (coe v0)) (d_0'35'_2122 (coe v0))
      (d_1'35'_2124 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe d_isCommutativeSemiring_2126 (coe v0)))
-- Algebra.Bundles.CommutativeSemiring._._≉_
d__'8777'__2226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2226 = erased
-- Algebra.Bundles.CommutativeSemiring._.magma
d_magma_2228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_Magma_36
d_magma_2228 ~v0 ~v1 v2 = du_magma_2228 v2
du_magma_2228 :: T_CommutativeSemiring_2094 -> T_Magma_36
du_magma_2228 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'42''45'monoid_1916 (coe v2) in
    coe du_magma_254 (coe du_semigroup_566 (coe v3))
-- Algebra.Bundles.CommutativeSemiring._.*-monoid
d_'42''45'monoid_2230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_Monoid_506
d_'42''45'monoid_2230 ~v0 ~v1 v2 = du_'42''45'monoid_2230 v2
du_'42''45'monoid_2230 ::
  T_CommutativeSemiring_2094 -> T_Monoid_506
du_'42''45'monoid_2230 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    coe
      du_'42''45'monoid_1916
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v1))
-- Algebra.Bundles.CommutativeSemiring._.rawMagma
d_rawMagma_2232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_RawMagma_8
d_rawMagma_2232 ~v0 ~v1 v2 = du_rawMagma_2232 v2
du_rawMagma_2232 :: T_CommutativeSemiring_2094 -> T_RawMagma_8
du_rawMagma_2232 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'42''45'monoid_1916 (coe v2) in
    let v4 = coe du_semigroup_566 (coe v3) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v4))
-- Algebra.Bundles.CommutativeSemiring._.rawMonoid
d_rawMonoid_2234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_RawMonoid_474
d_rawMonoid_2234 ~v0 ~v1 v2 = du_rawMonoid_2234 v2
du_rawMonoid_2234 :: T_CommutativeSemiring_2094 -> T_RawMonoid_474
du_rawMonoid_2234 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    coe du_rawMonoid_576 (coe du_'42''45'monoid_1916 (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.semigroup
d_semigroup_2236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_Semigroup_206
d_semigroup_2236 ~v0 ~v1 v2 = du_semigroup_2236 v2
du_semigroup_2236 :: T_CommutativeSemiring_2094 -> T_Semigroup_206
du_semigroup_2236 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    coe du_semigroup_566 (coe du_'42''45'monoid_1916 (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.commutativeMagma
d_commutativeMagma_2238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_CommutativeMagma_148
d_commutativeMagma_2238 ~v0 ~v1 v2 = du_commutativeMagma_2238 v2
du_commutativeMagma_2238 ::
  T_CommutativeSemiring_2094 -> T_CommutativeMagma_148
du_commutativeMagma_2238 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v3))
-- Algebra.Bundles.CommutativeSemiring._.+-commutativeMonoid
d_'43''45'commutativeMonoid_2240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_2240 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_2240 v2
du_'43''45'commutativeMonoid_2240 ::
  T_CommutativeSemiring_2094 -> T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_2240 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    coe
      du_'43''45'commutativeMonoid_1896
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v1))
-- Algebra.Bundles.CommutativeSemiring._.commutativeSemigroup
d_commutativeSemigroup_2242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_2242 ~v0 ~v1 v2
  = du_commutativeSemigroup_2242 v2
du_commutativeSemigroup_2242 ::
  T_CommutativeSemiring_2094 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_2242 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    coe
      du_commutativeSemigroup_664
      (coe du_'43''45'commutativeMonoid_1896 (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.magma
d_magma_2244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_Magma_36
d_magma_2244 ~v0 ~v1 v2 = du_magma_2244 v2
du_magma_2244 :: T_CommutativeSemiring_2094 -> T_Magma_36
du_magma_2244 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    let v4 = coe du_monoid_650 (coe v3) in
    coe du_magma_254 (coe du_semigroup_566 (coe v4))
-- Algebra.Bundles.CommutativeSemiring._.monoid
d_monoid_2246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_Monoid_506
d_monoid_2246 ~v0 ~v1 v2 = du_monoid_2246 v2
du_monoid_2246 :: T_CommutativeSemiring_2094 -> T_Monoid_506
du_monoid_2246 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    coe du_monoid_650 (coe du_'43''45'commutativeMonoid_1896 (coe v2))
-- Algebra.Bundles.CommutativeSemiring._.rawMagma
d_rawMagma_2248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_RawMagma_8
d_rawMagma_2248 ~v0 ~v1 v2 = du_rawMagma_2248 v2
du_rawMagma_2248 :: T_CommutativeSemiring_2094 -> T_RawMagma_8
du_rawMagma_2248 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    let v4 = coe du_monoid_650 (coe v3) in
    let v5 = coe du_semigroup_566 (coe v4) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v5))
-- Algebra.Bundles.CommutativeSemiring._.rawMonoid
d_rawMonoid_2250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_RawMonoid_474
d_rawMonoid_2250 ~v0 ~v1 v2 = du_rawMonoid_2250 v2
du_rawMonoid_2250 :: T_CommutativeSemiring_2094 -> T_RawMonoid_474
du_rawMonoid_2250 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    coe du_rawMonoid_576 (coe du_monoid_650 (coe v3))
-- Algebra.Bundles.CommutativeSemiring._.semigroup
d_semigroup_2252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_Semigroup_206
d_semigroup_2252 ~v0 ~v1 v2 = du_semigroup_2252 v2
du_semigroup_2252 :: T_CommutativeSemiring_2094 -> T_Semigroup_206
du_semigroup_2252 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    coe du_semigroup_566 (coe du_monoid_650 (coe v3))
-- Algebra.Bundles.CommutativeSemiring._.nearSemiring
d_nearSemiring_2254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_NearSemiring_1354
d_nearSemiring_2254 ~v0 ~v1 v2 = du_nearSemiring_2254 v2
du_nearSemiring_2254 ::
  T_CommutativeSemiring_2094 -> T_NearSemiring_1354
du_nearSemiring_2254 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    coe du_nearSemiring_1562 (coe du_semiringWithoutOne_2084 (coe v1))
-- Algebra.Bundles.CommutativeSemiring._.rawSemiring
d_rawSemiring_2256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_RawSemiring_1738
d_rawSemiring_2256 ~v0 ~v1 v2 = du_rawSemiring_2256 v2
du_rawSemiring_2256 ::
  T_CommutativeSemiring_2094 -> T_RawSemiring_1738
du_rawSemiring_2256 v0
  = let v1 = coe du_semiring_2222 (coe v0) in
    coe
      du_rawSemiring_1890
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v1))
-- Algebra.Bundles.CommutativeSemiring._.semiringWithoutAnnihilatingZero
d_semiringWithoutAnnihilatingZero_2258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 ->
  T_SemiringWithoutAnnihilatingZero_1786
d_semiringWithoutAnnihilatingZero_2258 ~v0 ~v1 v2
  = du_semiringWithoutAnnihilatingZero_2258 v2
du_semiringWithoutAnnihilatingZero_2258 ::
  T_CommutativeSemiring_2094 ->
  T_SemiringWithoutAnnihilatingZero_1786
du_semiringWithoutAnnihilatingZero_2258 v0
  = coe
      du_semiringWithoutAnnihilatingZero_2048
      (coe du_semiring_2222 (coe v0))
-- Algebra.Bundles.CommutativeSemiring._.semiringWithoutOne
d_semiringWithoutOne_2260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_SemiringWithoutOne_1464
d_semiringWithoutOne_2260 ~v0 ~v1 v2
  = du_semiringWithoutOne_2260 v2
du_semiringWithoutOne_2260 ::
  T_CommutativeSemiring_2094 -> T_SemiringWithoutOne_1464
du_semiringWithoutOne_2260 v0
  = coe du_semiringWithoutOne_2084 (coe du_semiring_2222 (coe v0))
-- Algebra.Bundles.CommutativeSemiring.*-commutativeMonoid
d_'42''45'commutativeMonoid_2262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_CommutativeMonoid_582
d_'42''45'commutativeMonoid_2262 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_2262 v2
du_'42''45'commutativeMonoid_2262 ::
  T_CommutativeSemiring_2094 -> T_CommutativeMonoid_582
du_'42''45'commutativeMonoid_2262 v0
  = coe
      C_CommutativeMonoid'46'constructor_8947 (d__'42'__2120 (coe v0))
      (d_1'35'_2124 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
         (coe d_isCommutativeSemiring_2126 (coe v0)))
-- Algebra.Bundles.CommutativeSemiring._.commutativeMagma
d_commutativeMagma_2266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_CommutativeMagma_148
d_commutativeMagma_2266 ~v0 ~v1 v2 = du_commutativeMagma_2266 v2
du_commutativeMagma_2266 ::
  T_CommutativeSemiring_2094 -> T_CommutativeMagma_148
du_commutativeMagma_2266 v0
  = let v1 = coe du_'42''45'commutativeMonoid_2262 (coe v0) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v1))
-- Algebra.Bundles.CommutativeSemiring._.commutativeSemigroup
d_commutativeSemigroup_2268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_2268 ~v0 ~v1 v2
  = du_commutativeSemigroup_2268 v2
du_commutativeSemigroup_2268 ::
  T_CommutativeSemiring_2094 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_2268 v0
  = coe
      du_commutativeSemigroup_664
      (coe du_'42''45'commutativeMonoid_2262 (coe v0))
-- Algebra.Bundles.CommutativeSemiring.commutativeSemiringWithoutOne
d_commutativeSemiringWithoutOne_2270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeSemiring_2094 -> T_CommutativeSemiringWithoutOne_1598
d_commutativeSemiringWithoutOne_2270 ~v0 ~v1 v2
  = du_commutativeSemiringWithoutOne_2270 v2
du_commutativeSemiringWithoutOne_2270 ::
  T_CommutativeSemiring_2094 -> T_CommutativeSemiringWithoutOne_1598
du_commutativeSemiringWithoutOne_2270 v0
  = coe
      C_CommutativeSemiringWithoutOne'46'constructor_24395
      (d__'43'__2118 (coe v0)) (d__'42'__2120 (coe v0))
      (d_0'35'_2122 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe d_isCommutativeSemiring_2126 (coe v0)))
-- Algebra.Bundles.CancellativeCommutativeSemiring
d_CancellativeCommutativeSemiring_2276 a0 a1 = ()
data T_CancellativeCommutativeSemiring_2276
  = C_CancellativeCommutativeSemiring'46'constructor_34993 (AgdaAny ->
                                                            AgdaAny -> AgdaAny)
                                                           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny
                                                           AgdaAny
                                                           MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1462
-- Algebra.Bundles.CancellativeCommutativeSemiring.Carrier
d_Carrier_2296 :: T_CancellativeCommutativeSemiring_2276 -> ()
d_Carrier_2296 = erased
-- Algebra.Bundles.CancellativeCommutativeSemiring._≈_
d__'8776'__2298 ::
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2298 = erased
-- Algebra.Bundles.CancellativeCommutativeSemiring._+_
d__'43'__2300 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'43'__2300 v0
  = case coe v0 of
      C_CancellativeCommutativeSemiring'46'constructor_34993 v3 v4 v5 v6 v7
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CancellativeCommutativeSemiring._*_
d__'42'__2302 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'42'__2302 v0
  = case coe v0 of
      C_CancellativeCommutativeSemiring'46'constructor_34993 v3 v4 v5 v6 v7
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CancellativeCommutativeSemiring.0#
d_0'35'_2304 :: T_CancellativeCommutativeSemiring_2276 -> AgdaAny
d_0'35'_2304 v0
  = case coe v0 of
      C_CancellativeCommutativeSemiring'46'constructor_34993 v3 v4 v5 v6 v7
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CancellativeCommutativeSemiring.1#
d_1'35'_2306 :: T_CancellativeCommutativeSemiring_2276 -> AgdaAny
d_1'35'_2306 v0
  = case coe v0 of
      C_CancellativeCommutativeSemiring'46'constructor_34993 v3 v4 v5 v6 v7
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CancellativeCommutativeSemiring.isCancellativeCommutativeSemiring
d_isCancellativeCommutativeSemiring_2308 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCancellativeCommutativeSemiring_1462
d_isCancellativeCommutativeSemiring_2308 v0
  = case coe v0 of
      C_CancellativeCommutativeSemiring'46'constructor_34993 v3 v4 v5 v6 v7
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CancellativeCommutativeSemiring._.assoc
d_assoc_2312 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                     (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_2314 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> AgdaAny
d_'42''45'cancel'737''45'nonZero_2314 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'cancel'737''45'nonZero_1478
      (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.*-comm
d_'42''45'comm_2316 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_2316 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1360
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
         (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.∙-cong
d_'8729''45'cong_2318 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2318 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                        (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_2320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2320 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_2320 v2
du_'8729''45'cong'691'_2320 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2320 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_2322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2322 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_2322 v2
du_'8729''45'cong'737'_2322 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2322 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
              (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.identity
d_identity_2324 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2324 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                  (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.identityʳ
d_identity'691'_2326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
d_identity'691'_2326 ~v0 ~v1 v2 = du_identity'691'_2326 v2
du_identity'691'_2326 ::
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
du_identity'691'_2326 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.identityˡ
d_identity'737'_2328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
d_identity'737'_2328 ~v0 ~v1 v2 = du_identity'737'_2328 v2
du_identity'737'_2328 ::
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
du_identity'737'_2328 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160 (coe v4))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_2330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_2330 ~v0 ~v1 v2
  = du_isCommutativeMagma_2330 v2
du_isCommutativeMagma_2330 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_2330 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_2332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_2332 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_2332 v2
du_'42''45'isCommutativeMonoid_2332 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_2332 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
         (coe v1))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_2334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_2334 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_2334 v2
du_'42''45'isCommutativeSemigroup_2334 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_2334 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v2))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isMagma
d_isMagma_2336 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                     (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.*-isMonoid
d_'42''45'isMonoid_2338 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_2338 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
               (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isSemigroup
d_isSemigroup_2340 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2340 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1160
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                  (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.assoc
d_assoc_2342 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2342 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                        (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.comm
d_comm_2344 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_2344 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                  (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.∙-cong
d_'8729''45'cong_2346 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2346 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                           (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_2348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2348 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_2348 v2
du_'8729''45'cong'691'_2348 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2348 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_2350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2350 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_2350 v2
du_'8729''45'cong'737'_2350 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2350 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.identity
d_identity_2352 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2352 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                     (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.identityʳ
d_identity'691'_2354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
d_identity'691'_2354 ~v0 ~v1 v2 = du_identity'691'_2354 v2
du_identity'691'_2354 ::
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
du_identity'691'_2354 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.identityˡ
d_identity'737'_2356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
d_identity'737'_2356 ~v0 ~v1 v2 = du_identity'737'_2356 v2
du_identity'737'_2356 ::
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
du_identity'737'_2356 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_2358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_2358 ~v0 ~v1 v2
  = du_isCommutativeMagma_2358 v2
du_isCommutativeMagma_2358 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_2358 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v5))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2360 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_2360 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
               (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_2362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_2362 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_2362 v2
du_isCommutativeSemigroup_2362 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_2362 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe v4))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isMagma
d_isMagma_2364 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2364 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_416
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                        (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isMonoid
d_isMonoid_2366 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_2366 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_416
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                  (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isSemigroup
d_isSemigroup_2368 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2368 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_416
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                     (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.distrib
d_distrib_2370 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2370 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1162
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
            (coe
               MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
               (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.distribʳ
d_distrib'691'_2372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2372 ~v0 ~v1 v2 = du_distrib'691'_2372 v2
du_distrib'691'_2372 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2372 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.distribˡ
d_distrib'737'_2374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2374 ~v0 ~v1 v2 = du_distrib'737'_2374 v2
du_distrib'737'_2374 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2374 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isCommutativeSemiring
d_isCommutativeSemiring_2376 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_2376 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
      (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_2378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_2378 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_2378 v2
du_isCommutativeSemiringWithoutOne_2378 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_2378 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
         (coe v1))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isEquivalence
d_isEquivalence_2380 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2380 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                           (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isNearSemiring
d_isNearSemiring_2382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_2382 ~v0 ~v1 v2 = du_isNearSemiring_2382 v2
du_isNearSemiring_2382 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_2382 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isPartialEquivalence
d_isPartialEquivalence_2384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2384 ~v0 ~v1 v2
  = du_isPartialEquivalence_2384 v2
du_isPartialEquivalence_2384 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2384 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isSemiring
d_isSemiring_2386 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_2386 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
      (coe
         MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
         (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2388 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_2388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
            (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_2390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_2390 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_2390 v2
du_isSemiringWithoutOne_2390 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_2390 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.refl
d_refl_2392 ::
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
d_refl_2392 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                              (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.reflexive
d_reflexive_2394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2394 ~v0 ~v1 v2 = du_reflexive_2394 v2
du_reflexive_2394 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2394 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v8))
        v9
-- Algebra.Bundles.CancellativeCommutativeSemiring._.setoid
d_setoid_2396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2396 ~v0 ~v1 v2 = du_setoid_2396 v2
du_setoid_2396 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2396 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
              (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
              (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.sym
d_sym_2398 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2398 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                              (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.trans
d_trans_2400 ::
  T_CancellativeCommutativeSemiring_2276 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2400 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isCommutativeMonoid_1158
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
                              (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))))))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.zero
d_zero_2402 ::
  T_CancellativeCommutativeSemiring_2276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1254
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiring_1358
         (coe
            MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
            (coe d_isCancellativeCommutativeSemiring_2308 (coe v0))))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.zeroʳ
d_zero'691'_2404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
d_zero'691'_2404 ~v0 ~v1 v2 = du_zero'691'_2404 v2
du_zero'691'_2404 ::
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
du_zero'691'_2404 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_988
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.zeroˡ
d_zero'737'_2406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
d_zero'737'_2406 ~v0 ~v1 v2 = du_zero'737'_2406 v2
du_zero'737'_2406 ::
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny
du_zero'737'_2406 v0
  = let v1 = d_isCancellativeCommutativeSemiring_2308 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemiring_1358 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_986
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring.commutativeSemiring
d_commutativeSemiring_2408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  T_CommutativeSemiring_2094
d_commutativeSemiring_2408 ~v0 ~v1 v2
  = du_commutativeSemiring_2408 v2
du_commutativeSemiring_2408 ::
  T_CancellativeCommutativeSemiring_2276 ->
  T_CommutativeSemiring_2094
du_commutativeSemiring_2408 v0
  = coe
      C_CommutativeSemiring'46'constructor_32013 (d__'43'__2300 (coe v0))
      (d__'42'__2302 (coe v0)) (d_0'35'_2304 (coe v0))
      (d_1'35'_2306 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isCommutativeSemiring_1476
         (coe d_isCancellativeCommutativeSemiring_2308 (coe v0)))
-- Algebra.Bundles.CancellativeCommutativeSemiring._._≉_
d__'8777'__2412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2412 = erased
-- Algebra.Bundles.CancellativeCommutativeSemiring._.commutativeMagma
d_commutativeMagma_2414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_CommutativeMagma_148
d_commutativeMagma_2414 ~v0 ~v1 v2 = du_commutativeMagma_2414 v2
du_commutativeMagma_2414 ::
  T_CancellativeCommutativeSemiring_2276 -> T_CommutativeMagma_148
du_commutativeMagma_2414 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_'42''45'commutativeMonoid_2262 (coe v1) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v2))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.*-commutativeMonoid
d_'42''45'commutativeMonoid_2416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_CommutativeMonoid_582
d_'42''45'commutativeMonoid_2416 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_2416 v2
du_'42''45'commutativeMonoid_2416 ::
  T_CancellativeCommutativeSemiring_2276 -> T_CommutativeMonoid_582
du_'42''45'commutativeMonoid_2416 v0
  = coe
      du_'42''45'commutativeMonoid_2262
      (coe du_commutativeSemiring_2408 (coe v0))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.commutativeSemigroup
d_commutativeSemigroup_2418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  T_CommutativeSemigroup_332
d_commutativeSemigroup_2418 ~v0 ~v1 v2
  = du_commutativeSemigroup_2418 v2
du_commutativeSemigroup_2418 ::
  T_CancellativeCommutativeSemiring_2276 ->
  T_CommutativeSemigroup_332
du_commutativeSemigroup_2418 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    coe
      du_commutativeSemigroup_664
      (coe du_'42''45'commutativeMonoid_2262 (coe v1))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.magma
d_magma_2420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_Magma_36
d_magma_2420 ~v0 ~v1 v2 = du_magma_2420 v2
du_magma_2420 ::
  T_CancellativeCommutativeSemiring_2276 -> T_Magma_36
du_magma_2420 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'42''45'monoid_1916 (coe v3) in
    coe du_magma_254 (coe du_semigroup_566 (coe v4))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.*-monoid
d_'42''45'monoid_2422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_Monoid_506
d_'42''45'monoid_2422 ~v0 ~v1 v2 = du_'42''45'monoid_2422 v2
du_'42''45'monoid_2422 ::
  T_CancellativeCommutativeSemiring_2276 -> T_Monoid_506
du_'42''45'monoid_2422 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    coe
      du_'42''45'monoid_1916
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v2))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.rawMagma
d_rawMagma_2424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_RawMagma_8
d_rawMagma_2424 ~v0 ~v1 v2 = du_rawMagma_2424 v2
du_rawMagma_2424 ::
  T_CancellativeCommutativeSemiring_2276 -> T_RawMagma_8
du_rawMagma_2424 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'42''45'monoid_1916 (coe v3) in
    let v5 = coe du_semigroup_566 (coe v4) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v5))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.rawMonoid
d_rawMonoid_2426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_RawMonoid_474
d_rawMonoid_2426 ~v0 ~v1 v2 = du_rawMonoid_2426 v2
du_rawMonoid_2426 ::
  T_CancellativeCommutativeSemiring_2276 -> T_RawMonoid_474
du_rawMonoid_2426 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    coe du_rawMonoid_576 (coe du_'42''45'monoid_1916 (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.semigroup
d_semigroup_2428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_Semigroup_206
d_semigroup_2428 ~v0 ~v1 v2 = du_semigroup_2428 v2
du_semigroup_2428 ::
  T_CancellativeCommutativeSemiring_2276 -> T_Semigroup_206
du_semigroup_2428 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    coe du_semigroup_566 (coe du_'42''45'monoid_1916 (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.commutativeMagma
d_commutativeMagma_2430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_CommutativeMagma_148
d_commutativeMagma_2430 ~v0 ~v1 v2 = du_commutativeMagma_2430 v2
du_commutativeMagma_2430 ::
  T_CancellativeCommutativeSemiring_2276 -> T_CommutativeMagma_148
du_commutativeMagma_2430 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v4))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.+-commutativeMonoid
d_'43''45'commutativeMonoid_2432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_2432 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_2432 v2
du_'43''45'commutativeMonoid_2432 ::
  T_CancellativeCommutativeSemiring_2276 -> T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_2432 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    coe
      du_'43''45'commutativeMonoid_1896
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v2))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.commutativeSemigroup
d_commutativeSemigroup_2434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  T_CommutativeSemigroup_332
d_commutativeSemigroup_2434 ~v0 ~v1 v2
  = du_commutativeSemigroup_2434 v2
du_commutativeSemigroup_2434 ::
  T_CancellativeCommutativeSemiring_2276 ->
  T_CommutativeSemigroup_332
du_commutativeSemigroup_2434 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    coe
      du_commutativeSemigroup_664
      (coe du_'43''45'commutativeMonoid_1896 (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.magma
d_magma_2436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_Magma_36
d_magma_2436 ~v0 ~v1 v2 = du_magma_2436 v2
du_magma_2436 ::
  T_CancellativeCommutativeSemiring_2276 -> T_Magma_36
du_magma_2436 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    let v5 = coe du_monoid_650 (coe v4) in
    coe du_magma_254 (coe du_semigroup_566 (coe v5))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.monoid
d_monoid_2438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_Monoid_506
d_monoid_2438 ~v0 ~v1 v2 = du_monoid_2438 v2
du_monoid_2438 ::
  T_CancellativeCommutativeSemiring_2276 -> T_Monoid_506
du_monoid_2438 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    coe du_monoid_650 (coe du_'43''45'commutativeMonoid_1896 (coe v3))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.rawMagma
d_rawMagma_2440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_RawMagma_8
d_rawMagma_2440 ~v0 ~v1 v2 = du_rawMagma_2440 v2
du_rawMagma_2440 ::
  T_CancellativeCommutativeSemiring_2276 -> T_RawMagma_8
du_rawMagma_2440 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    let v5 = coe du_monoid_650 (coe v4) in
    let v6 = coe du_semigroup_566 (coe v5) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v6))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.rawMonoid
d_rawMonoid_2442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_RawMonoid_474
d_rawMonoid_2442 ~v0 ~v1 v2 = du_rawMonoid_2442 v2
du_rawMonoid_2442 ::
  T_CancellativeCommutativeSemiring_2276 -> T_RawMonoid_474
du_rawMonoid_2442 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    coe du_rawMonoid_576 (coe du_monoid_650 (coe v4))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.semigroup
d_semigroup_2444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_Semigroup_206
d_semigroup_2444 ~v0 ~v1 v2 = du_semigroup_2444 v2
du_semigroup_2444 ::
  T_CancellativeCommutativeSemiring_2276 -> T_Semigroup_206
du_semigroup_2444 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    coe du_semigroup_566 (coe du_monoid_650 (coe v4))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.nearSemiring
d_nearSemiring_2446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_NearSemiring_1354
d_nearSemiring_2446 ~v0 ~v1 v2 = du_nearSemiring_2446 v2
du_nearSemiring_2446 ::
  T_CancellativeCommutativeSemiring_2276 -> T_NearSemiring_1354
du_nearSemiring_2446 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    coe du_nearSemiring_1562 (coe du_semiringWithoutOne_2084 (coe v2))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.rawSemiring
d_rawSemiring_2448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_RawSemiring_1738
d_rawSemiring_2448 ~v0 ~v1 v2 = du_rawSemiring_2448 v2
du_rawSemiring_2448 ::
  T_CancellativeCommutativeSemiring_2276 -> T_RawSemiring_1738
du_rawSemiring_2448 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    coe
      du_rawSemiring_1890
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v2))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.semiring
d_semiring_2450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_Semiring_1932
d_semiring_2450 ~v0 ~v1 v2 = du_semiring_2450 v2
du_semiring_2450 ::
  T_CancellativeCommutativeSemiring_2276 -> T_Semiring_1932
du_semiring_2450 v0
  = coe du_semiring_2222 (coe du_commutativeSemiring_2408 (coe v0))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.semiringWithoutAnnihilatingZero
d_semiringWithoutAnnihilatingZero_2452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 ->
  T_SemiringWithoutAnnihilatingZero_1786
d_semiringWithoutAnnihilatingZero_2452 ~v0 ~v1 v2
  = du_semiringWithoutAnnihilatingZero_2452 v2
du_semiringWithoutAnnihilatingZero_2452 ::
  T_CancellativeCommutativeSemiring_2276 ->
  T_SemiringWithoutAnnihilatingZero_1786
du_semiringWithoutAnnihilatingZero_2452 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    coe
      du_semiringWithoutAnnihilatingZero_2048
      (coe du_semiring_2222 (coe v1))
-- Algebra.Bundles.CancellativeCommutativeSemiring._.semiringWithoutOne
d_semiringWithoutOne_2454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CancellativeCommutativeSemiring_2276 -> T_SemiringWithoutOne_1464
d_semiringWithoutOne_2454 ~v0 ~v1 v2
  = du_semiringWithoutOne_2454 v2
du_semiringWithoutOne_2454 ::
  T_CancellativeCommutativeSemiring_2276 -> T_SemiringWithoutOne_1464
du_semiringWithoutOne_2454 v0
  = let v1 = coe du_commutativeSemiring_2408 (coe v0) in
    coe du_semiringWithoutOne_2084 (coe du_semiring_2222 (coe v1))
-- Algebra.Bundles.RawRing
d_RawRing_2460 a0 a1 = ()
data T_RawRing_2460
  = C_RawRing'46'constructor_37445 (AgdaAny -> AgdaAny -> AgdaAny)
                                   (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                                   AgdaAny
-- Algebra.Bundles.RawRing.Carrier
d_Carrier_2480 :: T_RawRing_2460 -> ()
d_Carrier_2480 = erased
-- Algebra.Bundles.RawRing._≈_
d__'8776'__2482 :: T_RawRing_2460 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2482 = erased
-- Algebra.Bundles.RawRing._+_
d__'43'__2484 :: T_RawRing_2460 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__2484 v0
  = case coe v0 of
      C_RawRing'46'constructor_37445 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawRing._*_
d__'42'__2486 :: T_RawRing_2460 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__2486 v0
  = case coe v0 of
      C_RawRing'46'constructor_37445 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawRing.-_
d_'45'__2488 :: T_RawRing_2460 -> AgdaAny -> AgdaAny
d_'45'__2488 v0
  = case coe v0 of
      C_RawRing'46'constructor_37445 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawRing.0#
d_0'35'_2490 :: T_RawRing_2460 -> AgdaAny
d_0'35'_2490 v0
  = case coe v0 of
      C_RawRing'46'constructor_37445 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawRing.1#
d_1'35'_2492 :: T_RawRing_2460 -> AgdaAny
d_1'35'_2492 v0
  = case coe v0 of
      C_RawRing'46'constructor_37445 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.RawRing.rawSemiring
d_rawSemiring_2494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawRing_2460 -> T_RawSemiring_1738
d_rawSemiring_2494 ~v0 ~v1 v2 = du_rawSemiring_2494 v2
du_rawSemiring_2494 :: T_RawRing_2460 -> T_RawSemiring_1738
du_rawSemiring_2494 v0
  = coe
      C_RawSemiring'46'constructor_26307 (d__'43'__2484 (coe v0))
      (d__'42'__2486 (coe v0)) (d_0'35'_2490 (coe v0))
      (d_1'35'_2492 (coe v0))
-- Algebra.Bundles.RawRing._._≉_
d__'8777'__2498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawRing_2460 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2498 = erased
-- Algebra.Bundles.RawRing._.*-rawMagma
d_'42''45'rawMagma_2500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawRing_2460 -> T_RawMagma_8
d_'42''45'rawMagma_2500 ~v0 ~v1 v2 = du_'42''45'rawMagma_2500 v2
du_'42''45'rawMagma_2500 :: T_RawRing_2460 -> T_RawMagma_8
du_'42''45'rawMagma_2500 v0
  = let v1 = coe du_rawSemiring_2494 (coe v0) in
    coe du_'42''45'rawMagma_1348 (coe du_rawNearSemiring_1768 (coe v1))
-- Algebra.Bundles.RawRing._.*-rawMonoid
d_'42''45'rawMonoid_2502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawRing_2460 -> T_RawMonoid_474
d_'42''45'rawMonoid_2502 ~v0 ~v1 v2 = du_'42''45'rawMonoid_2502 v2
du_'42''45'rawMonoid_2502 :: T_RawRing_2460 -> T_RawMonoid_474
du_'42''45'rawMonoid_2502 v0
  = coe du_'42''45'rawMonoid_1780 (coe du_rawSemiring_2494 (coe v0))
-- Algebra.Bundles.RawRing._.rawMagma
d_rawMagma_2504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawRing_2460 -> T_RawMagma_8
d_rawMagma_2504 ~v0 ~v1 v2 = du_rawMagma_2504 v2
du_rawMagma_2504 :: T_RawRing_2460 -> T_RawMagma_8
du_rawMagma_2504 v0
  = let v1 = coe du_rawSemiring_2494 (coe v0) in
    let v2 = coe du_rawNearSemiring_1768 (coe v1) in
    coe du_rawMagma_496 (coe du_'43''45'rawMonoid_1340 (coe v2))
-- Algebra.Bundles.RawRing._.+-rawMonoid
d_'43''45'rawMonoid_2506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawRing_2460 -> T_RawMonoid_474
d_'43''45'rawMonoid_2506 ~v0 ~v1 v2 = du_'43''45'rawMonoid_2506 v2
du_'43''45'rawMonoid_2506 :: T_RawRing_2460 -> T_RawMonoid_474
du_'43''45'rawMonoid_2506 v0
  = let v1 = coe du_rawSemiring_2494 (coe v0) in
    coe
      du_'43''45'rawMonoid_1340 (coe du_rawNearSemiring_1768 (coe v1))
-- Algebra.Bundles.RawRing.+-rawGroup
d_'43''45'rawGroup_2508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_RawRing_2460 -> T_RawGroup_852
d_'43''45'rawGroup_2508 ~v0 ~v1 v2 = du_'43''45'rawGroup_2508 v2
du_'43''45'rawGroup_2508 :: T_RawRing_2460 -> T_RawGroup_852
du_'43''45'rawGroup_2508 v0
  = coe
      C_RawGroup'46'constructor_12107 (d__'43'__2484 (coe v0))
      (d_0'35'_2490 (coe v0)) (d_'45'__2488 (coe v0))
-- Algebra.Bundles.Ring
d_Ring_2514 a0 a1 = ()
data T_Ring_2514
  = C_Ring'46'constructor_38273 (AgdaAny -> AgdaAny -> AgdaAny)
                                (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
                                AgdaAny MAlonzo.Code.Algebra.Structures.T_IsRing_1584
-- Algebra.Bundles.Ring.Carrier
d_Carrier_2536 :: T_Ring_2514 -> ()
d_Carrier_2536 = erased
-- Algebra.Bundles.Ring._≈_
d__'8776'__2538 :: T_Ring_2514 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2538 = erased
-- Algebra.Bundles.Ring._+_
d__'43'__2540 :: T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__2540 v0
  = case coe v0 of
      C_Ring'46'constructor_38273 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Ring._*_
d__'42'__2542 :: T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__2542 v0
  = case coe v0 of
      C_Ring'46'constructor_38273 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Ring.-_
d_'45'__2544 :: T_Ring_2514 -> AgdaAny -> AgdaAny
d_'45'__2544 v0
  = case coe v0 of
      C_Ring'46'constructor_38273 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Ring.0#
d_0'35'_2546 :: T_Ring_2514 -> AgdaAny
d_0'35'_2546 v0
  = case coe v0 of
      C_Ring'46'constructor_38273 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Ring.1#
d_1'35'_2548 :: T_Ring_2514 -> AgdaAny
d_1'35'_2548 v0
  = case coe v0 of
      C_Ring'46'constructor_38273 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Ring.isRing
d_isRing_2550 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsRing_1584
d_isRing_2550 v0
  = case coe v0 of
      C_Ring'46'constructor_38273 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.Ring._._-_
d__'45'__2554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__2554 ~v0 ~v1 v2 = du__'45'__2554 v2
du__'45'__2554 :: T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__2554 v0
  = let v1 = d__'43'__2540 (coe v0) in
    let v2 = d_'45'__2544 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du__'45'__634 (coe v1) (coe v2)
-- Algebra.Bundles.Ring._.assoc
d_assoc_2556 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2556 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
            (coe d_isRing_2550 (coe v0))))
-- Algebra.Bundles.Ring._.∙-cong
d_'8729''45'cong_2558 ::
  T_Ring_2514 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2558 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
               (coe d_isRing_2550 (coe v0)))))
-- Algebra.Bundles.Ring._.∙-congʳ
d_'8729''45'cong'691'_2560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2560 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_2560 v2
du_'8729''45'cong'691'_2560 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2560 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.Ring._.∙-congˡ
d_'8729''45'cong'737'_2562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2562 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_2562 v2
du_'8729''45'cong'737'_2562 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2562 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3))
-- Algebra.Bundles.Ring._.identity
d_identity_2564 ::
  T_Ring_2514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2564 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
         (coe d_isRing_2550 (coe v0)))
-- Algebra.Bundles.Ring._.identityʳ
d_identity'691'_2566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny
d_identity'691'_2566 ~v0 ~v1 v2 = du_identity'691'_2566 v2
du_identity'691'_2566 :: T_Ring_2514 -> AgdaAny -> AgdaAny
du_identity'691'_2566 v0
  = let v1 = d_isRing_2550 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606 (coe v1))
-- Algebra.Bundles.Ring._.identityˡ
d_identity'737'_2568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny
d_identity'737'_2568 ~v0 ~v1 v2 = du_identity'737'_2568 v2
du_identity'737'_2568 :: T_Ring_2514 -> AgdaAny -> AgdaAny
du_identity'737'_2568 v0
  = let v1 = d_isRing_2550 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606 (coe v1))
-- Algebra.Bundles.Ring._.isMagma
d_isMagma_2570 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2570 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
            (coe d_isRing_2550 (coe v0))))
-- Algebra.Bundles.Ring._.*-isMonoid
d_'42''45'isMonoid_2572 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_2572 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
      (coe d_isRing_2550 (coe v0))
-- Algebra.Bundles.Ring._.isSemigroup
d_isSemigroup_2574 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2574 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
         (coe d_isRing_2550 (coe v0)))
-- Algebra.Bundles.Ring._.assoc
d_assoc_2576 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2576 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_594
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_674
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                  (coe d_isRing_2550 (coe v0))))))
-- Algebra.Bundles.Ring._.comm
d_comm_2578 :: T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2578 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_676
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
         (coe d_isRing_2550 (coe v0)))
-- Algebra.Bundles.Ring._.∙-cong
d_'8729''45'cong_2580 ::
  T_Ring_2514 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2580 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                     (coe d_isRing_2550 (coe v0)))))))
-- Algebra.Bundles.Ring._.∙-congʳ
d_'8729''45'cong'691'_2582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2582 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_2582 v2
du_'8729''45'cong'691'_2582 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2582 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.Ring._.∙-congˡ
d_'8729''45'cong'737'_2584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2584 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_2584 v2
du_'8729''45'cong'737'_2584 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2584 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.Ring._.identity
d_identity_2586 ::
  T_Ring_2514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2586 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_674
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
               (coe d_isRing_2550 (coe v0)))))
-- Algebra.Bundles.Ring._.identityʳ
d_identity'691'_2588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny
d_identity'691'_2588 ~v0 ~v1 v2 = du_identity'691'_2588 v2
du_identity'691'_2588 :: T_Ring_2514 -> AgdaAny -> AgdaAny
du_identity'691'_2588 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3))
-- Algebra.Bundles.Ring._.identityˡ
d_identity'737'_2590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny
d_identity'737'_2590 ~v0 ~v1 v2 = du_identity'737'_2590 v2
du_identity'737'_2590 :: T_Ring_2514 -> AgdaAny -> AgdaAny
du_identity'737'_2590 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3))
-- Algebra.Bundles.Ring._.+-isAbelianGroup
d_'43''45'isAbelianGroup_2592 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
d_'43''45'isAbelianGroup_2592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
      (coe d_isRing_2550 (coe v0))
-- Algebra.Bundles.Ring._.isCommutativeMagma
d_isCommutativeMagma_2594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_2594 ~v0 ~v1 v2
  = du_isCommutativeMagma_2594 v2
du_isCommutativeMagma_2594 ::
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_2594 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v3))
-- Algebra.Bundles.Ring._.isCommutativeMonoid
d_isCommutativeMonoid_2596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_isCommutativeMonoid_2596 ~v0 ~v1 v2
  = du_isCommutativeMonoid_2596 v2
du_isCommutativeMonoid_2596 ::
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_isCommutativeMonoid_2596 v0
  = let v1 = d_isRing_2550 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
         (coe v1))
-- Algebra.Bundles.Ring._.isCommutativeSemigroup
d_isCommutativeSemigroup_2598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_2598 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_2598 v2
du_isCommutativeSemigroup_2598 ::
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_2598 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
         (coe v2))
-- Algebra.Bundles.Ring._.isGroup
d_isGroup_2600 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsGroup_580
d_isGroup_2600 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_674
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
         (coe d_isRing_2550 (coe v0)))
-- Algebra.Bundles.Ring._.isMagma
d_isMagma_2602 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2602 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_594
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_674
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                  (coe d_isRing_2550 (coe v0))))))
-- Algebra.Bundles.Ring._.isMonoid
d_isMonoid_2604 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_2604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_594
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
            (coe d_isRing_2550 (coe v0))))
-- Algebra.Bundles.Ring._.isSemigroup
d_isSemigroup_2606 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_674
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
               (coe d_isRing_2550 (coe v0)))))
-- Algebra.Bundles.Ring._.⁻¹-cong
d_'8315''185''45'cong_2608 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2608 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_598
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
            (coe d_isRing_2550 (coe v0))))
-- Algebra.Bundles.Ring._.inverse
d_inverse_2610 ::
  T_Ring_2514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_596
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
            (coe d_isRing_2550 (coe v0))))
-- Algebra.Bundles.Ring._.inverseʳ
d_inverse'691'_2612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny
d_inverse'691'_2612 ~v0 ~v1 v2 = du_inverse'691'_2612 v2
du_inverse'691'_2612 :: T_Ring_2514 -> AgdaAny -> AgdaAny
du_inverse'691'_2612 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2))
-- Algebra.Bundles.Ring._.inverseˡ
d_inverse'737'_2614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny
d_inverse'737'_2614 ~v0 ~v1 v2 = du_inverse'737'_2614 v2
du_inverse'737'_2614 :: T_Ring_2514 -> AgdaAny -> AgdaAny
du_inverse'737'_2614 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_inverse'737'_640
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2))
-- Algebra.Bundles.Ring._.distrib
d_distrib_2616 ::
  T_Ring_2514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2616 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1608
      (coe d_isRing_2550 (coe v0))
-- Algebra.Bundles.Ring._.distribʳ
d_distrib'691'_2618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2618 ~v0 ~v1 v2 = du_distrib'691'_2618 v2
du_distrib'691'_2618 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2618 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v2))
-- Algebra.Bundles.Ring._.distribˡ
d_distrib'737'_2620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2620 ~v0 ~v1 v2 = du_distrib'737'_2620 v2
du_distrib'737'_2620 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2620 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v2))
-- Algebra.Bundles.Ring._.isEquivalence
d_isEquivalence_2622 ::
  T_Ring_2514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2622 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                     (coe d_isRing_2550 (coe v0)))))))
-- Algebra.Bundles.Ring._.isNearSemiring
d_isNearSemiring_2624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_2624 ~v0 ~v1 v2 = du_isNearSemiring_2624 v2
du_isNearSemiring_2624 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_2624 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v2))
-- Algebra.Bundles.Ring._.isPartialEquivalence
d_isPartialEquivalence_2626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2626 ~v0 ~v1 v2
  = du_isPartialEquivalence_2626 v2
du_isPartialEquivalence_2626 ::
  T_Ring_2514 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2626 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v6))
-- Algebra.Bundles.Ring._.isSemiring
d_isSemiring_2628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_2628 ~v0 ~v1 v2 = du_isSemiring_2628 v2
du_isSemiring_2628 ::
  T_Ring_2514 -> MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
du_isSemiring_2628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_1698
      (coe d_isRing_2550 (coe v0))
-- Algebra.Bundles.Ring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_2630 ~v0 ~v1 v2
  = du_isSemiringWithoutAnnihilatingZero_2630 v2
du_isSemiringWithoutAnnihilatingZero_2630 ::
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
du_isSemiringWithoutAnnihilatingZero_2630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_1696
      (coe d_isRing_2550 (coe v0))
-- Algebra.Bundles.Ring._.isSemiringWithoutOne
d_isSemiringWithoutOne_2632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_2632 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_2632 v2
du_isSemiringWithoutOne_2632 ::
  T_Ring_2514 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_2632 v0
  = let v1 = d_isRing_2550 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v1))
-- Algebra.Bundles.Ring._.refl
d_refl_2634 :: T_Ring_2514 -> AgdaAny -> AgdaAny
d_refl_2634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe d_isRing_2550 (coe v0))))))))
-- Algebra.Bundles.Ring._.reflexive
d_reflexive_2636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2636 ~v0 ~v1 v2 = du_reflexive_2636 v2
du_reflexive_2636 ::
  T_Ring_2514 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2636 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v6))
        v7
-- Algebra.Bundles.Ring._.setoid
d_setoid_2638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2638 ~v0 ~v1 v2 = du_setoid_2638 v2
du_setoid_2638 ::
  T_Ring_2514 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2638 v0
  = let v1 = d_isRing_2550 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v3) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5))
-- Algebra.Bundles.Ring._.sym
d_sym_2640 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2640 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe d_isRing_2550 (coe v0))))))))
-- Algebra.Bundles.Ring._.trans
d_trans_2642 ::
  T_Ring_2514 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2642 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe d_isRing_2550 (coe v0))))))))
-- Algebra.Bundles.Ring._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2644 ~v0 ~v1 v2
  = du_unique'691''45''8315''185'_2644 v2
du_unique'691''45''8315''185'_2644 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2644 v0
  = let v1 = d__'43'__2540 (coe v0) in
    let v2 = d_'45'__2544 (coe v0) in
    let v3 = d_0'35'_2546 (coe v0) in
    let v4 = d_isRing_2550 (coe v0) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_654
      (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v5))
-- Algebra.Bundles.Ring._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2646 ~v0 ~v1 v2
  = du_unique'737''45''8315''185'_2646 v2
du_unique'737''45''8315''185'_2646 ::
  T_Ring_2514 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2646 v0
  = let v1 = d__'43'__2540 (coe v0) in
    let v2 = d_'45'__2544 (coe v0) in
    let v3 = d_0'35'_2546 (coe v0) in
    let v4 = d_isRing_2550 (coe v0) in
    let v5
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_648
      (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v5))
-- Algebra.Bundles.Ring._.zero
d_zero_2648 ::
  T_Ring_2514 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2648 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1610
      (coe d_isRing_2550 (coe v0))
-- Algebra.Bundles.Ring._.zeroʳ
d_zero'691'_2650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny
d_zero'691'_2650 ~v0 ~v1 v2 = du_zero'691'_2650 v2
du_zero'691'_2650 :: T_Ring_2514 -> AgdaAny -> AgdaAny
du_zero'691'_2650 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_1694
      (coe d_isRing_2550 (coe v0))
-- Algebra.Bundles.Ring._.zeroˡ
d_zero'737'_2652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny
d_zero'737'_2652 ~v0 ~v1 v2 = du_zero'737'_2652 v2
du_zero'737'_2652 :: T_Ring_2514 -> AgdaAny -> AgdaAny
du_zero'737'_2652 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_1692
      (coe d_isRing_2550 (coe v0))
-- Algebra.Bundles.Ring.+-abelianGroup
d_'43''45'abelianGroup_2654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_AbelianGroup_990
d_'43''45'abelianGroup_2654 ~v0 ~v1 v2
  = du_'43''45'abelianGroup_2654 v2
du_'43''45'abelianGroup_2654 :: T_Ring_2514 -> T_AbelianGroup_990
du_'43''45'abelianGroup_2654 v0
  = coe
      C_AbelianGroup'46'constructor_14359 (d__'43'__2540 (coe v0))
      (d_0'35'_2546 (coe v0)) (d_'45'__2544 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
         (coe d_isRing_2550 (coe v0)))
-- Algebra.Bundles.Ring.semiring
d_semiring_2656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_Semiring_1932
d_semiring_2656 ~v0 ~v1 v2 = du_semiring_2656 v2
du_semiring_2656 :: T_Ring_2514 -> T_Semiring_1932
du_semiring_2656 v0
  = coe
      C_Semiring'46'constructor_29415 (d__'43'__2540 (coe v0))
      (d__'42'__2542 (coe v0)) (d_0'35'_2546 (coe v0))
      (d_1'35'_2548 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiring_1698
         (coe d_isRing_2550 (coe v0)))
-- Algebra.Bundles.Ring._._≉_
d__'8777'__2660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2660 = erased
-- Algebra.Bundles.Ring._.magma
d_magma_2662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Ring_2514 -> T_Magma_36
d_magma_2662 ~v0 ~v1 v2 = du_magma_2662 v2
du_magma_2662 :: T_Ring_2514 -> T_Magma_36
du_magma_2662 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'42''45'monoid_1916 (coe v2) in
    coe du_magma_254 (coe du_semigroup_566 (coe v3))
-- Algebra.Bundles.Ring._.*-monoid
d_'42''45'monoid_2664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_Monoid_506
d_'42''45'monoid_2664 ~v0 ~v1 v2 = du_'42''45'monoid_2664 v2
du_'42''45'monoid_2664 :: T_Ring_2514 -> T_Monoid_506
du_'42''45'monoid_2664 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    coe
      du_'42''45'monoid_1916
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v1))
-- Algebra.Bundles.Ring._.rawMagma
d_rawMagma_2666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_RawMagma_8
d_rawMagma_2666 ~v0 ~v1 v2 = du_rawMagma_2666 v2
du_rawMagma_2666 :: T_Ring_2514 -> T_RawMagma_8
du_rawMagma_2666 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'42''45'monoid_1916 (coe v2) in
    let v4 = coe du_semigroup_566 (coe v3) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v4))
-- Algebra.Bundles.Ring._.rawMonoid
d_rawMonoid_2668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_RawMonoid_474
d_rawMonoid_2668 ~v0 ~v1 v2 = du_rawMonoid_2668 v2
du_rawMonoid_2668 :: T_Ring_2514 -> T_RawMonoid_474
du_rawMonoid_2668 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    coe du_rawMonoid_576 (coe du_'42''45'monoid_1916 (coe v2))
-- Algebra.Bundles.Ring._.semigroup
d_semigroup_2670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_Semigroup_206
d_semigroup_2670 ~v0 ~v1 v2 = du_semigroup_2670 v2
du_semigroup_2670 :: T_Ring_2514 -> T_Semigroup_206
du_semigroup_2670 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    coe du_semigroup_566 (coe du_'42''45'monoid_1916 (coe v2))
-- Algebra.Bundles.Ring._.commutativeMagma
d_commutativeMagma_2672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_CommutativeMagma_148
d_commutativeMagma_2672 ~v0 ~v1 v2 = du_commutativeMagma_2672 v2
du_commutativeMagma_2672 :: T_Ring_2514 -> T_CommutativeMagma_148
du_commutativeMagma_2672 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v3))
-- Algebra.Bundles.Ring._.+-commutativeMonoid
d_'43''45'commutativeMonoid_2674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_2674 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_2674 v2
du_'43''45'commutativeMonoid_2674 ::
  T_Ring_2514 -> T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_2674 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    coe
      du_'43''45'commutativeMonoid_1896
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v1))
-- Algebra.Bundles.Ring._.commutativeSemigroup
d_commutativeSemigroup_2676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_2676 ~v0 ~v1 v2
  = du_commutativeSemigroup_2676 v2
du_commutativeSemigroup_2676 ::
  T_Ring_2514 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_2676 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    coe
      du_commutativeSemigroup_664
      (coe du_'43''45'commutativeMonoid_1896 (coe v2))
-- Algebra.Bundles.Ring._.magma
d_magma_2678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Ring_2514 -> T_Magma_36
d_magma_2678 ~v0 ~v1 v2 = du_magma_2678 v2
du_magma_2678 :: T_Ring_2514 -> T_Magma_36
du_magma_2678 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    let v4 = coe du_monoid_650 (coe v3) in
    coe du_magma_254 (coe du_semigroup_566 (coe v4))
-- Algebra.Bundles.Ring._.monoid
d_monoid_2680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_Monoid_506
d_monoid_2680 ~v0 ~v1 v2 = du_monoid_2680 v2
du_monoid_2680 :: T_Ring_2514 -> T_Monoid_506
du_monoid_2680 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    coe du_monoid_650 (coe du_'43''45'commutativeMonoid_1896 (coe v2))
-- Algebra.Bundles.Ring._.rawMagma
d_rawMagma_2682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_RawMagma_8
d_rawMagma_2682 ~v0 ~v1 v2 = du_rawMagma_2682 v2
du_rawMagma_2682 :: T_Ring_2514 -> T_RawMagma_8
du_rawMagma_2682 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    let v4 = coe du_monoid_650 (coe v3) in
    let v5 = coe du_semigroup_566 (coe v4) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v5))
-- Algebra.Bundles.Ring._.rawMonoid
d_rawMonoid_2684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_RawMonoid_474
d_rawMonoid_2684 ~v0 ~v1 v2 = du_rawMonoid_2684 v2
du_rawMonoid_2684 :: T_Ring_2514 -> T_RawMonoid_474
du_rawMonoid_2684 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    coe du_rawMonoid_576 (coe du_monoid_650 (coe v3))
-- Algebra.Bundles.Ring._.semigroup
d_semigroup_2686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_Semigroup_206
d_semigroup_2686 ~v0 ~v1 v2 = du_semigroup_2686 v2
du_semigroup_2686 :: T_Ring_2514 -> T_Semigroup_206
du_semigroup_2686 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    let v2 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v1) in
    let v3 = coe du_'43''45'commutativeMonoid_1896 (coe v2) in
    coe du_semigroup_566 (coe du_monoid_650 (coe v3))
-- Algebra.Bundles.Ring._.nearSemiring
d_nearSemiring_2688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_NearSemiring_1354
d_nearSemiring_2688 ~v0 ~v1 v2 = du_nearSemiring_2688 v2
du_nearSemiring_2688 :: T_Ring_2514 -> T_NearSemiring_1354
du_nearSemiring_2688 v0
  = let v1 = coe du_semiring_2656 (coe v0) in
    coe du_nearSemiring_1562 (coe du_semiringWithoutOne_2084 (coe v1))
-- Algebra.Bundles.Ring._.semiringWithoutAnnihilatingZero
d_semiringWithoutAnnihilatingZero_2690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_SemiringWithoutAnnihilatingZero_1786
d_semiringWithoutAnnihilatingZero_2690 ~v0 ~v1 v2
  = du_semiringWithoutAnnihilatingZero_2690 v2
du_semiringWithoutAnnihilatingZero_2690 ::
  T_Ring_2514 -> T_SemiringWithoutAnnihilatingZero_1786
du_semiringWithoutAnnihilatingZero_2690 v0
  = coe
      du_semiringWithoutAnnihilatingZero_2048
      (coe du_semiring_2656 (coe v0))
-- Algebra.Bundles.Ring._.semiringWithoutOne
d_semiringWithoutOne_2692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_SemiringWithoutOne_1464
d_semiringWithoutOne_2692 ~v0 ~v1 v2
  = du_semiringWithoutOne_2692 v2
du_semiringWithoutOne_2692 ::
  T_Ring_2514 -> T_SemiringWithoutOne_1464
du_semiringWithoutOne_2692 v0
  = coe du_semiringWithoutOne_2084 (coe du_semiring_2656 (coe v0))
-- Algebra.Bundles.Ring._.group
d_group_2696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_Group_890
d_group_2696 ~v0 ~v1 v2 = du_group_2696 v2
du_group_2696 :: T_Ring_2514 -> T_Group_890
du_group_2696 v0
  = coe du_group_1080 (coe du_'43''45'abelianGroup_2654 (coe v0))
-- Algebra.Bundles.Ring.rawRing
d_rawRing_2698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_Ring_2514 -> T_RawRing_2460
d_rawRing_2698 ~v0 ~v1 v2 = du_rawRing_2698 v2
du_rawRing_2698 :: T_Ring_2514 -> T_RawRing_2460
du_rawRing_2698 v0
  = coe
      C_RawRing'46'constructor_37445 (d__'43'__2540 (coe v0))
      (d__'42'__2542 (coe v0)) (d_'45'__2544 (coe v0))
      (d_0'35'_2546 (coe v0)) (d_1'35'_2548 (coe v0))
-- Algebra.Bundles.CommutativeRing
d_CommutativeRing_2704 a0 a1 = ()
data T_CommutativeRing_2704
  = C_CommutativeRing'46'constructor_41415 (AgdaAny ->
                                            AgdaAny -> AgdaAny)
                                           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                           AgdaAny AgdaAny
                                           MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
-- Algebra.Bundles.CommutativeRing.Carrier
d_Carrier_2726 :: T_CommutativeRing_2704 -> ()
d_Carrier_2726 = erased
-- Algebra.Bundles.CommutativeRing._≈_
d__'8776'__2728 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2728 = erased
-- Algebra.Bundles.CommutativeRing._+_
d__'43'__2730 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny
d__'43'__2730 v0
  = case coe v0 of
      C_CommutativeRing'46'constructor_41415 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeRing._*_
d__'42'__2732 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny
d__'42'__2732 v0
  = case coe v0 of
      C_CommutativeRing'46'constructor_41415 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeRing.-_
d_'45'__2734 :: T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_'45'__2734 v0
  = case coe v0 of
      C_CommutativeRing'46'constructor_41415 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeRing.0#
d_0'35'_2736 :: T_CommutativeRing_2704 -> AgdaAny
d_0'35'_2736 v0
  = case coe v0 of
      C_CommutativeRing'46'constructor_41415 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeRing.1#
d_1'35'_2738 :: T_CommutativeRing_2704 -> AgdaAny
d_1'35'_2738 v0
  = case coe v0 of
      C_CommutativeRing'46'constructor_41415 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeRing.isCommutativeRing
d_isCommutativeRing_2740 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
d_isCommutativeRing_2740 v0
  = case coe v0 of
      C_CommutativeRing'46'constructor_41415 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.CommutativeRing._._-_
d__'45'__2744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__2744 ~v0 ~v1 v2 = du__'45'__2744 v2
du__'45'__2744 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__2744 v0
  = let v1 = d__'43'__2730 (coe v0) in
    let v2 = d_'45'__2734 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du__'45'__634 (coe v1) (coe v2)
-- Algebra.Bundles.CommutativeRing._.assoc
d_assoc_2746 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_1736
               (coe d_isCommutativeRing_2740 (coe v0)))))
-- Algebra.Bundles.CommutativeRing._.*-comm
d_'42''45'comm_2748 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_2748 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'comm_1738
      (coe d_isCommutativeRing_2740 (coe v0))
-- Algebra.Bundles.CommutativeRing._.∙-cong
d_'8729''45'cong_2750 ::
  T_CommutativeRing_2704 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_1736
                  (coe d_isCommutativeRing_2740 (coe v0))))))
-- Algebra.Bundles.CommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_2752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2752 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_2752 v2
du_'8729''45'cong'691'_2752 ::
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2752 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.CommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_2754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2754 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_2754 v2
du_'8729''45'cong'737'_2754 ::
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2754 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
              (coe v2) in
    let v4
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v4))
-- Algebra.Bundles.CommutativeRing._.identity
d_identity_2756 ::
  T_CommutativeRing_2704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2756 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_1736
            (coe d_isCommutativeRing_2740 (coe v0))))
-- Algebra.Bundles.CommutativeRing._.identityʳ
d_identity'691'_2758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_identity'691'_2758 ~v0 ~v1 v2 = du_identity'691'_2758 v2
du_identity'691'_2758 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
du_identity'691'_2758 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606 (coe v2))
-- Algebra.Bundles.CommutativeRing._.identityˡ
d_identity'737'_2760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_identity'737'_2760 ~v0 ~v1 v2 = du_identity'737'_2760 v2
du_identity'737'_2760 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
du_identity'737'_2760 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606 (coe v2))
-- Algebra.Bundles.CommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_2762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_2762 ~v0 ~v1 v2
  = du_isCommutativeMagma_2762 v2
du_isCommutativeMagma_2762 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_2762 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_1842
              (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
         (coe v3))
-- Algebra.Bundles.CommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_2764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_2764 ~v0 ~v1 v2
  = du_'42''45'isCommutativeMonoid_2764 v2
du_'42''45'isCommutativeMonoid_2764 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_2764 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeMonoid_1452
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_1842
         (coe v1))
-- Algebra.Bundles.CommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_2766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_2766 ~v0 ~v1 v2
  = du_'42''45'isCommutativeSemigroup_2766 v2
du_'42''45'isCommutativeSemigroup_2766 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_2766 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_1842
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'42''45'isCommutativeSemigroup_1128
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
         (coe v2))
-- Algebra.Bundles.CommutativeRing._.isMagma
d_isMagma_2768 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2768 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_1736
               (coe d_isCommutativeRing_2740 (coe v0)))))
-- Algebra.Bundles.CommutativeRing._.*-isMonoid
d_'42''45'isMonoid_2770 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_2770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_1736
         (coe d_isCommutativeRing_2740 (coe v0)))
-- Algebra.Bundles.CommutativeRing._.isSemigroup
d_isSemigroup_2772 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2772 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_'42''45'isMonoid_1606
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_1736
            (coe d_isCommutativeRing_2740 (coe v0))))
-- Algebra.Bundles.CommutativeRing._.assoc
d_assoc_2774 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2774 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_assoc_204
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_594
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_674
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_1736
                     (coe d_isCommutativeRing_2740 (coe v0)))))))
-- Algebra.Bundles.CommutativeRing._.comm
d_comm_2776 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2776 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_676
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_1736
            (coe d_isCommutativeRing_2740 (coe v0))))
-- Algebra.Bundles.CommutativeRing._.∙-cong
d_'8729''45'cong_2778 ::
  T_CommutativeRing_2704 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_1736
                        (coe d_isCommutativeRing_2740 (coe v0))))))))
-- Algebra.Bundles.CommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_2780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2780 ~v0 ~v1 v2
  = du_'8729''45'cong'691'_2780 v2
du_'8729''45'cong'691'_2780 ::
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2780 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_116
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Bundles.CommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_2782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2782 ~v0 ~v1 v2
  = du_'8729''45'cong'737'_2782 v2
du_'8729''45'cong'737'_2782 ::
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2782 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_112
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Bundles.CommutativeRing._.identity
d_identity_2784 ::
  T_CommutativeRing_2704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_identity_370
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_674
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_1736
                  (coe d_isCommutativeRing_2740 (coe v0))))))
-- Algebra.Bundles.CommutativeRing._.identityʳ
d_identity'691'_2786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_identity'691'_2786 ~v0 ~v1 v2 = du_identity'691'_2786 v2
du_identity'691'_2786 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
du_identity'691'_2786 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'691'_400
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4))
-- Algebra.Bundles.CommutativeRing._.identityˡ
d_identity'737'_2788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_identity'737'_2788 ~v0 ~v1 v2 = du_identity'737'_2788 v2
du_identity'737'_2788 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
du_identity'737'_2788 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_identity'737'_398
      (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4))
-- Algebra.Bundles.CommutativeRing._.+-isAbelianGroup
d_'43''45'isAbelianGroup_2790 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
d_'43''45'isAbelianGroup_2790 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_1736
         (coe d_isCommutativeRing_2740 (coe v0)))
-- Algebra.Bundles.CommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_2792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
d_isCommutativeMagma_2792 ~v0 ~v1 v2
  = du_isCommutativeMagma_2792 v2
du_isCommutativeMagma_2792 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMagma_122
du_isCommutativeMagma_2792 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    let v4
          = coe
              MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
              (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMagma_308
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
         (coe v4))
-- Algebra.Bundles.CommutativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_2794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_isCommutativeMonoid_2794 ~v0 ~v1 v2
  = du_isCommutativeMonoid_2794 v2
du_isCommutativeMonoid_2794 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_isCommutativeMonoid_2794 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
         (coe v2))
-- Algebra.Bundles.CommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_2796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_2796 ~v0 ~v1 v2
  = du_isCommutativeSemigroup_2796 v2
du_isCommutativeSemigroup_2796 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_2796 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemigroup_454
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeMonoid_728
         (coe v3))
-- Algebra.Bundles.CommutativeRing._.isGroup
d_isGroup_2798 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_580
d_isGroup_2798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isGroup_674
      (coe
         MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
         (coe
            MAlonzo.Code.Algebra.Structures.d_isRing_1736
            (coe d_isCommutativeRing_2740 (coe v0))))
-- Algebra.Bundles.CommutativeRing._.isMagma
d_isMagma_2800 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_isMagma_2800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMagma_202
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMonoid_594
            (coe
               MAlonzo.Code.Algebra.Structures.d_isGroup_674
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isRing_1736
                     (coe d_isCommutativeRing_2740 (coe v0)))))))
-- Algebra.Bundles.CommutativeRing._.isMonoid
d_isMonoid_2802 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_isMonoid_2802 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isMonoid_594
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_1736
               (coe d_isCommutativeRing_2740 (coe v0)))))
-- Algebra.Bundles.CommutativeRing._.isSemigroup
d_isSemigroup_2804 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_2804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMonoid_594
         (coe
            MAlonzo.Code.Algebra.Structures.d_isGroup_674
            (coe
               MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isRing_1736
                  (coe d_isCommutativeRing_2740 (coe v0))))))
-- Algebra.Bundles.CommutativeRing._.⁻¹-cong
d_'8315''185''45'cong_2806 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2806 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8315''185''45'cong_598
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_1736
               (coe d_isCommutativeRing_2740 (coe v0)))))
-- Algebra.Bundles.CommutativeRing._.inverse
d_inverse_2808 ::
  T_CommutativeRing_2704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2808 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_inverse_596
      (coe
         MAlonzo.Code.Algebra.Structures.d_isGroup_674
         (coe
            MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
            (coe
               MAlonzo.Code.Algebra.Structures.d_isRing_1736
               (coe d_isCommutativeRing_2740 (coe v0)))))
-- Algebra.Bundles.CommutativeRing._.inverseʳ
d_inverse'691'_2810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_inverse'691'_2810 ~v0 ~v1 v2 = du_inverse'691'_2810 v2
du_inverse'691'_2810 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
du_inverse'691'_2810 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3))
-- Algebra.Bundles.CommutativeRing._.inverseˡ
d_inverse'737'_2812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_inverse'737'_2812 ~v0 ~v1 v2 = du_inverse'737'_2812 v2
du_inverse'737'_2812 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
du_inverse'737'_2812 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_inverse'737'_640
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3))
-- Algebra.Bundles.CommutativeRing._.distrib
d_distrib_2814 ::
  T_CommutativeRing_2704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2814 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_distrib_1608
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_1736
         (coe d_isCommutativeRing_2740 (coe v0)))
-- Algebra.Bundles.CommutativeRing._.distribʳ
d_distrib'691'_2816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2816 ~v0 ~v1 v2 = du_distrib'691'_2816 v2
du_distrib'691'_2816 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2816 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'691'_1166
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Bundles.CommutativeRing._.distribˡ
d_distrib'737'_2818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2818 ~v0 ~v1 v2 = du_distrib'737'_2818 v2
du_distrib'737'_2818 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2818 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_distrib'737'_1164
      (coe
         MAlonzo.Code.Algebra.Structures.d_isSemiringWithoutAnnihilatingZero_1252
         (coe v3))
-- Algebra.Bundles.CommutativeRing._.isCommutativeSemiring
d_isCommutativeSemiring_2820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_2820 ~v0 ~v1 v2
  = du_isCommutativeSemiring_2820 v2
du_isCommutativeSemiring_2820 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
du_isCommutativeSemiring_2820 v0
  = coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_1842
      (coe d_isCommutativeRing_2740 (coe v0))
-- Algebra.Bundles.CommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_2822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_2822 ~v0 ~v1 v2
  = du_isCommutativeSemiringWithoutOne_2822 v2
du_isCommutativeSemiringWithoutOne_2822 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_2822 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiringWithoutOne_1444
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_1842
         (coe v1))
-- Algebra.Bundles.CommutativeRing._.isEquivalence
d_isEquivalence_2824 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2824 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
      (coe
         MAlonzo.Code.Algebra.Structures.d_isMagma_202
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isRing_1736
                        (coe d_isCommutativeRing_2740 (coe v0))))))))
-- Algebra.Bundles.CommutativeRing._.isNearSemiring
d_isNearSemiring_2826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
d_isNearSemiring_2826 ~v0 ~v1 v2 = du_isNearSemiring_2826 v2
du_isNearSemiring_2826 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsNearSemiring_876
du_isNearSemiring_2826 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isNearSemiring_990
      (coe
         MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
         (coe v3))
-- Algebra.Bundles.CommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_2828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2828 ~v0 ~v1 v2
  = du_isPartialEquivalence_2828 v2
du_isPartialEquivalence_2828 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2828 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v7))
-- Algebra.Bundles.CommutativeRing._.isRing
d_isRing_2830 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_1584
d_isRing_2830 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isRing_1736
      (coe d_isCommutativeRing_2740 (coe v0))
-- Algebra.Bundles.CommutativeRing._.isSemiring
d_isSemiring_2832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_isSemiring_2832 ~v0 ~v1 v2 = du_isSemiring_2832 v2
du_isSemiring_2832 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
du_isSemiring_2832 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiring_1698
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1))
-- Algebra.Bundles.CommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_2834 ~v0 ~v1 v2
  = du_isSemiringWithoutAnnihilatingZero_2834 v2
du_isSemiringWithoutAnnihilatingZero_2834 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutAnnihilatingZero_1142
du_isSemiringWithoutAnnihilatingZero_2834 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutAnnihilatingZero_1696
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1))
-- Algebra.Bundles.CommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_2836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_2836 ~v0 ~v1 v2
  = du_isSemiringWithoutOne_2836 v2
du_isSemiringWithoutOne_2836 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_2836 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_isSemiringWithoutOne_1326
      (coe MAlonzo.Code.Algebra.Structures.du_isSemiring_1698 (coe v2))
-- Algebra.Bundles.CommutativeRing._.refl
d_refl_2838 :: T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_refl_2838 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_1736
                           (coe d_isCommutativeRing_2740 (coe v0)))))))))
-- Algebra.Bundles.CommutativeRing._.reflexive
d_reflexive_2840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2840 ~v0 ~v1 v2 = du_reflexive_2840 v2
du_reflexive_2840 ::
  T_CommutativeRing_2704 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2840 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_94 (coe v7))
        v8
-- Algebra.Bundles.CommutativeRing._.setoid
d_setoid_2842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2842 ~v0 ~v1 v2 = du_setoid_2842 v2
du_setoid_2842 ::
  T_CommutativeRing_2704 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2842 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_setoid_110
      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v6))
-- Algebra.Bundles.CommutativeRing._.sym
d_sym_2844 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2844 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_1736
                           (coe d_isCommutativeRing_2740 (coe v0)))))))))
-- Algebra.Bundles.CommutativeRing._.trans
d_trans_2846 ::
  T_CommutativeRing_2704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2846 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isRing_1736
                           (coe d_isCommutativeRing_2740 (coe v0)))))))))
-- Algebra.Bundles.CommutativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2848 ~v0 ~v1 v2
  = du_unique'691''45''8315''185'_2848 v2
du_unique'691''45''8315''185'_2848 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2848 v0
  = let v1 = d__'43'__2730 (coe v0) in
    let v2 = d_'45'__2734 (coe v0) in
    let v3 = d_0'35'_2736 (coe v0) in
    let v4 = d_isCommutativeRing_2740 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_unique'691''45''8315''185'_654
      (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v6))
-- Algebra.Bundles.CommutativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2850 ~v0 ~v1 v2
  = du_unique'737''45''8315''185'_2850 v2
du_unique'737''45''8315''185'_2850 ::
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2850 v0
  = let v1 = d__'43'__2730 (coe v0) in
    let v2 = d_'45'__2734 (coe v0) in
    let v3 = d_0'35'_2736 (coe v0) in
    let v4 = d_isCommutativeRing_2740 (coe v0) in
    let v5 = MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.d_'43''45'isAbelianGroup_1604
              (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_648
      (coe v1) (coe v3) (coe v2)
      (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v6))
-- Algebra.Bundles.CommutativeRing._.zero
d_zero_2852 ::
  T_CommutativeRing_2704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2852 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_zero_1610
      (coe
         MAlonzo.Code.Algebra.Structures.d_isRing_1736
         (coe d_isCommutativeRing_2740 (coe v0)))
-- Algebra.Bundles.CommutativeRing._.zeroʳ
d_zero'691'_2854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_zero'691'_2854 ~v0 ~v1 v2 = du_zero'691'_2854 v2
du_zero'691'_2854 :: T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
du_zero'691'_2854 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'691'_1694
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1))
-- Algebra.Bundles.CommutativeRing._.zeroˡ
d_zero'737'_2856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
d_zero'737'_2856 ~v0 ~v1 v2 = du_zero'737'_2856 v2
du_zero'737'_2856 :: T_CommutativeRing_2704 -> AgdaAny -> AgdaAny
du_zero'737'_2856 v0
  = let v1 = d_isCommutativeRing_2740 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_zero'737'_1692
      (coe MAlonzo.Code.Algebra.Structures.d_isRing_1736 (coe v1))
-- Algebra.Bundles.CommutativeRing.ring
d_ring_2858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Ring_2514
d_ring_2858 ~v0 ~v1 v2 = du_ring_2858 v2
du_ring_2858 :: T_CommutativeRing_2704 -> T_Ring_2514
du_ring_2858 v0
  = coe
      C_Ring'46'constructor_38273 (d__'43'__2730 (coe v0))
      (d__'42'__2732 (coe v0)) (d_'45'__2734 (coe v0))
      (d_0'35'_2736 (coe v0)) (d_1'35'_2738 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isRing_1736
         (coe d_isCommutativeRing_2740 (coe v0)))
-- Algebra.Bundles.CommutativeRing._._≉_
d__'8777'__2862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> AgdaAny -> AgdaAny -> ()
d__'8777'__2862 = erased
-- Algebra.Bundles.CommutativeRing._.+-abelianGroup
d_'43''45'abelianGroup_2864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_AbelianGroup_990
d_'43''45'abelianGroup_2864 ~v0 ~v1 v2
  = du_'43''45'abelianGroup_2864 v2
du_'43''45'abelianGroup_2864 ::
  T_CommutativeRing_2704 -> T_AbelianGroup_990
du_'43''45'abelianGroup_2864 v0
  = coe du_'43''45'abelianGroup_2654 (coe du_ring_2858 (coe v0))
-- Algebra.Bundles.CommutativeRing._.group
d_group_2866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Group_890
d_group_2866 ~v0 ~v1 v2 = du_group_2866 v2
du_group_2866 :: T_CommutativeRing_2704 -> T_Group_890
du_group_2866 v0
  = let v1 = coe du_ring_2858 (coe v0) in
    coe du_group_1080 (coe du_'43''45'abelianGroup_2654 (coe v1))
-- Algebra.Bundles.CommutativeRing._.rawRing
d_rawRing_2868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_RawRing_2460
d_rawRing_2868 ~v0 ~v1 v2 = du_rawRing_2868 v2
du_rawRing_2868 :: T_CommutativeRing_2704 -> T_RawRing_2460
du_rawRing_2868 v0
  = coe du_rawRing_2698 (coe du_ring_2858 (coe v0))
-- Algebra.Bundles.CommutativeRing.commutativeSemiring
d_commutativeSemiring_2870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_CommutativeSemiring_2094
d_commutativeSemiring_2870 ~v0 ~v1 v2
  = du_commutativeSemiring_2870 v2
du_commutativeSemiring_2870 ::
  T_CommutativeRing_2704 -> T_CommutativeSemiring_2094
du_commutativeSemiring_2870 v0
  = coe
      C_CommutativeSemiring'46'constructor_32013 (d__'43'__2730 (coe v0))
      (d__'42'__2732 (coe v0)) (d_0'35'_2736 (coe v0))
      (d_1'35'_2738 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.du_isCommutativeSemiring_1842
         (coe d_isCommutativeRing_2740 (coe v0)))
-- Algebra.Bundles.CommutativeRing._.commutativeMagma
d_commutativeMagma_2874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_CommutativeMagma_148
d_commutativeMagma_2874 ~v0 ~v1 v2 = du_commutativeMagma_2874 v2
du_commutativeMagma_2874 ::
  T_CommutativeRing_2704 -> T_CommutativeMagma_148
du_commutativeMagma_2874 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_'42''45'commutativeMonoid_2262 (coe v1) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v2))
-- Algebra.Bundles.CommutativeRing._.*-commutativeMonoid
d_'42''45'commutativeMonoid_2876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_CommutativeMonoid_582
d_'42''45'commutativeMonoid_2876 ~v0 ~v1 v2
  = du_'42''45'commutativeMonoid_2876 v2
du_'42''45'commutativeMonoid_2876 ::
  T_CommutativeRing_2704 -> T_CommutativeMonoid_582
du_'42''45'commutativeMonoid_2876 v0
  = coe
      du_'42''45'commutativeMonoid_2262
      (coe du_commutativeSemiring_2870 (coe v0))
-- Algebra.Bundles.CommutativeRing._.commutativeSemigroup
d_commutativeSemigroup_2878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_2878 ~v0 ~v1 v2
  = du_commutativeSemigroup_2878 v2
du_commutativeSemigroup_2878 ::
  T_CommutativeRing_2704 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_2878 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    coe
      du_commutativeSemigroup_664
      (coe du_'42''45'commutativeMonoid_2262 (coe v1))
-- Algebra.Bundles.CommutativeRing._.magma
d_magma_2880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Magma_36
d_magma_2880 ~v0 ~v1 v2 = du_magma_2880 v2
du_magma_2880 :: T_CommutativeRing_2704 -> T_Magma_36
du_magma_2880 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'42''45'monoid_1916 (coe v3) in
    coe du_magma_254 (coe du_semigroup_566 (coe v4))
-- Algebra.Bundles.CommutativeRing._.*-monoid
d_'42''45'monoid_2882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Monoid_506
d_'42''45'monoid_2882 ~v0 ~v1 v2 = du_'42''45'monoid_2882 v2
du_'42''45'monoid_2882 :: T_CommutativeRing_2704 -> T_Monoid_506
du_'42''45'monoid_2882 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    coe
      du_'42''45'monoid_1916
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v2))
-- Algebra.Bundles.CommutativeRing._.rawMagma
d_rawMagma_2884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_RawMagma_8
d_rawMagma_2884 ~v0 ~v1 v2 = du_rawMagma_2884 v2
du_rawMagma_2884 :: T_CommutativeRing_2704 -> T_RawMagma_8
du_rawMagma_2884 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'42''45'monoid_1916 (coe v3) in
    let v5 = coe du_semigroup_566 (coe v4) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v5))
-- Algebra.Bundles.CommutativeRing._.rawMonoid
d_rawMonoid_2886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_RawMonoid_474
d_rawMonoid_2886 ~v0 ~v1 v2 = du_rawMonoid_2886 v2
du_rawMonoid_2886 :: T_CommutativeRing_2704 -> T_RawMonoid_474
du_rawMonoid_2886 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    coe du_rawMonoid_576 (coe du_'42''45'monoid_1916 (coe v3))
-- Algebra.Bundles.CommutativeRing._.semigroup
d_semigroup_2888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Semigroup_206
d_semigroup_2888 ~v0 ~v1 v2 = du_semigroup_2888 v2
du_semigroup_2888 :: T_CommutativeRing_2704 -> T_Semigroup_206
du_semigroup_2888 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    coe du_semigroup_566 (coe du_'42''45'monoid_1916 (coe v3))
-- Algebra.Bundles.CommutativeRing._.commutativeMagma
d_commutativeMagma_2890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_CommutativeMagma_148
d_commutativeMagma_2890 ~v0 ~v1 v2 = du_commutativeMagma_2890 v2
du_commutativeMagma_2890 ::
  T_CommutativeRing_2704 -> T_CommutativeMagma_148
du_commutativeMagma_2890 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    coe
      du_commutativeMagma_396 (coe du_commutativeSemigroup_664 (coe v4))
-- Algebra.Bundles.CommutativeRing._.+-commutativeMonoid
d_'43''45'commutativeMonoid_2892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_CommutativeMonoid_582
d_'43''45'commutativeMonoid_2892 ~v0 ~v1 v2
  = du_'43''45'commutativeMonoid_2892 v2
du_'43''45'commutativeMonoid_2892 ::
  T_CommutativeRing_2704 -> T_CommutativeMonoid_582
du_'43''45'commutativeMonoid_2892 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    coe
      du_'43''45'commutativeMonoid_1896
      (coe du_semiringWithoutAnnihilatingZero_2048 (coe v2))
-- Algebra.Bundles.CommutativeRing._.commutativeSemigroup
d_commutativeSemigroup_2894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_CommutativeSemigroup_332
d_commutativeSemigroup_2894 ~v0 ~v1 v2
  = du_commutativeSemigroup_2894 v2
du_commutativeSemigroup_2894 ::
  T_CommutativeRing_2704 -> T_CommutativeSemigroup_332
du_commutativeSemigroup_2894 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    coe
      du_commutativeSemigroup_664
      (coe du_'43''45'commutativeMonoid_1896 (coe v3))
-- Algebra.Bundles.CommutativeRing._.magma
d_magma_2896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Magma_36
d_magma_2896 ~v0 ~v1 v2 = du_magma_2896 v2
du_magma_2896 :: T_CommutativeRing_2704 -> T_Magma_36
du_magma_2896 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    let v5 = coe du_monoid_650 (coe v4) in
    coe du_magma_254 (coe du_semigroup_566 (coe v5))
-- Algebra.Bundles.CommutativeRing._.monoid
d_monoid_2898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Monoid_506
d_monoid_2898 ~v0 ~v1 v2 = du_monoid_2898 v2
du_monoid_2898 :: T_CommutativeRing_2704 -> T_Monoid_506
du_monoid_2898 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    coe du_monoid_650 (coe du_'43''45'commutativeMonoid_1896 (coe v3))
-- Algebra.Bundles.CommutativeRing._.rawMagma
d_rawMagma_2900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_RawMagma_8
d_rawMagma_2900 ~v0 ~v1 v2 = du_rawMagma_2900 v2
du_rawMagma_2900 :: T_CommutativeRing_2704 -> T_RawMagma_8
du_rawMagma_2900 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    let v5 = coe du_monoid_650 (coe v4) in
    let v6 = coe du_semigroup_566 (coe v5) in
    coe du_rawMagma_80 (coe du_magma_254 (coe v6))
-- Algebra.Bundles.CommutativeRing._.rawMonoid
d_rawMonoid_2902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_RawMonoid_474
d_rawMonoid_2902 ~v0 ~v1 v2 = du_rawMonoid_2902 v2
du_rawMonoid_2902 :: T_CommutativeRing_2704 -> T_RawMonoid_474
du_rawMonoid_2902 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    coe du_rawMonoid_576 (coe du_monoid_650 (coe v4))
-- Algebra.Bundles.CommutativeRing._.semigroup
d_semigroup_2904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Semigroup_206
d_semigroup_2904 ~v0 ~v1 v2 = du_semigroup_2904 v2
du_semigroup_2904 :: T_CommutativeRing_2704 -> T_Semigroup_206
du_semigroup_2904 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    let v3 = coe du_semiringWithoutAnnihilatingZero_2048 (coe v2) in
    let v4 = coe du_'43''45'commutativeMonoid_1896 (coe v3) in
    coe du_semigroup_566 (coe du_monoid_650 (coe v4))
-- Algebra.Bundles.CommutativeRing._.commutativeSemiringWithoutOne
d_commutativeSemiringWithoutOne_2906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_CommutativeSemiringWithoutOne_1598
d_commutativeSemiringWithoutOne_2906 ~v0 ~v1 v2
  = du_commutativeSemiringWithoutOne_2906 v2
du_commutativeSemiringWithoutOne_2906 ::
  T_CommutativeRing_2704 -> T_CommutativeSemiringWithoutOne_1598
du_commutativeSemiringWithoutOne_2906 v0
  = coe
      du_commutativeSemiringWithoutOne_2270
      (coe du_commutativeSemiring_2870 (coe v0))
-- Algebra.Bundles.CommutativeRing._.nearSemiring
d_nearSemiring_2908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_NearSemiring_1354
d_nearSemiring_2908 ~v0 ~v1 v2 = du_nearSemiring_2908 v2
du_nearSemiring_2908 ::
  T_CommutativeRing_2704 -> T_NearSemiring_1354
du_nearSemiring_2908 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    let v2 = coe du_semiring_2222 (coe v1) in
    coe du_nearSemiring_1562 (coe du_semiringWithoutOne_2084 (coe v2))
-- Algebra.Bundles.CommutativeRing._.semiring
d_semiring_2910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_Semiring_1932
d_semiring_2910 ~v0 ~v1 v2 = du_semiring_2910 v2
du_semiring_2910 :: T_CommutativeRing_2704 -> T_Semiring_1932
du_semiring_2910 v0
  = coe du_semiring_2222 (coe du_commutativeSemiring_2870 (coe v0))
-- Algebra.Bundles.CommutativeRing._.semiringWithoutAnnihilatingZero
d_semiringWithoutAnnihilatingZero_2912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_SemiringWithoutAnnihilatingZero_1786
d_semiringWithoutAnnihilatingZero_2912 ~v0 ~v1 v2
  = du_semiringWithoutAnnihilatingZero_2912 v2
du_semiringWithoutAnnihilatingZero_2912 ::
  T_CommutativeRing_2704 -> T_SemiringWithoutAnnihilatingZero_1786
du_semiringWithoutAnnihilatingZero_2912 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    coe
      du_semiringWithoutAnnihilatingZero_2048
      (coe du_semiring_2222 (coe v1))
-- Algebra.Bundles.CommutativeRing._.semiringWithoutOne
d_semiringWithoutOne_2914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_CommutativeRing_2704 -> T_SemiringWithoutOne_1464
d_semiringWithoutOne_2914 ~v0 ~v1 v2
  = du_semiringWithoutOne_2914 v2
du_semiringWithoutOne_2914 ::
  T_CommutativeRing_2704 -> T_SemiringWithoutOne_1464
du_semiringWithoutOne_2914 v0
  = let v1 = coe du_commutativeSemiring_2870 (coe v0) in
    coe du_semiringWithoutOne_2084 (coe du_semiring_2222 (coe v1))
-- Algebra.Bundles.BooleanAlgebra
d_BooleanAlgebra_2920 a0 a1 = ()
data T_BooleanAlgebra_2920
  = C_BooleanAlgebra'46'constructor_44759 (AgdaAny ->
                                           AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                          AgdaAny AgdaAny
                                          MAlonzo.Code.Algebra.Structures.T_IsBooleanAlgebra_1864
-- Algebra.Bundles.BooleanAlgebra.Carrier
d_Carrier_2942 :: T_BooleanAlgebra_2920 -> ()
d_Carrier_2942 = erased
-- Algebra.Bundles.BooleanAlgebra._≈_
d__'8776'__2944 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> ()
d__'8776'__2944 = erased
-- Algebra.Bundles.BooleanAlgebra._∨_
d__'8744'__2946 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8744'__2946 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_44759 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.BooleanAlgebra._∧_
d__'8743'__2948 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8743'__2948 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_44759 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.BooleanAlgebra.¬_
d_'172'__2950 :: T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny
d_'172'__2950 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_44759 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.BooleanAlgebra.⊤
d_'8868'_2952 :: T_BooleanAlgebra_2920 -> AgdaAny
d_'8868'_2952 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_44759 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.BooleanAlgebra.⊥
d_'8869'_2954 :: T_BooleanAlgebra_2920 -> AgdaAny
d_'8869'_2954 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_44759 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.BooleanAlgebra.isBooleanAlgebra
d_isBooleanAlgebra_2956 ::
  T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanAlgebra_1864
d_isBooleanAlgebra_2956 v0
  = case coe v0 of
      C_BooleanAlgebra'46'constructor_44759 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Bundles.BooleanAlgebra._.absorptive
d_absorptive_2960 ::
  T_BooleanAlgebra_2920 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_2960 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_absorptive_776
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe
            MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
            (coe d_isBooleanAlgebra_2956 (coe v0))))
-- Algebra.Bundles.BooleanAlgebra._.isDistributiveLattice
d_isDistributiveLattice_2962 ::
  T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_isDistributiveLattice_2962 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
      (coe d_isBooleanAlgebra_2956 (coe v0))
-- Algebra.Bundles.BooleanAlgebra._.isEquivalence
d_isEquivalence_2964 ::
  T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe
            MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
            (coe d_isBooleanAlgebra_2956 (coe v0))))
-- Algebra.Bundles.BooleanAlgebra._.isLattice
d_isLattice_2966 ::
  T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_isLattice_2966 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_isLattice_824
      (coe
         MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
         (coe d_isBooleanAlgebra_2956 (coe v0)))
-- Algebra.Bundles.BooleanAlgebra._.isPartialEquivalence
d_isPartialEquivalence_2968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2968 ~v0 ~v1 v2
  = du_isPartialEquivalence_2968 v2
du_isPartialEquivalence_2968 ::
  T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2968 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_762 (coe v3))
-- Algebra.Bundles.BooleanAlgebra._.refl
d_refl_2970 :: T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny
d_refl_2970 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe d_isBooleanAlgebra_2956 (coe v0)))))
-- Algebra.Bundles.BooleanAlgebra._.reflexive
d_reflexive_2972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2972 ~v0 ~v1 v2 = du_reflexive_2972 v2
du_reflexive_2972 ::
  T_BooleanAlgebra_2920 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2972 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
              (coe v1) in
    let v3
          = MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe MAlonzo.Code.Algebra.Structures.d_isEquivalence_762 (coe v3))
        v4
-- Algebra.Bundles.BooleanAlgebra._.sym
d_sym_2974 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2974 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe d_isBooleanAlgebra_2956 (coe v0)))))
-- Algebra.Bundles.BooleanAlgebra._.trans
d_trans_2976 ::
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2976 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe d_isBooleanAlgebra_2956 (coe v0)))))
-- Algebra.Bundles.BooleanAlgebra._.¬-cong
d_'172''45'cong_2978 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_2978 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
      (coe d_isBooleanAlgebra_2956 (coe v0))
-- Algebra.Bundles.BooleanAlgebra._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_2980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_2980 ~v0 ~v1 v2
  = du_'8743''45'absorbs'45''8744'_2980 v2
du_'8743''45'absorbs'45''8744'_2980 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_2980 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'absorbs'45''8744'_792
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2))
-- Algebra.Bundles.BooleanAlgebra._.∧-assoc
d_'8743''45'assoc_2982 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_2982 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe
            MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
            (coe d_isBooleanAlgebra_2956 (coe v0))))
-- Algebra.Bundles.BooleanAlgebra._.∧-comm
d_'8743''45'comm_2984 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_2984 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe
            MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
            (coe d_isBooleanAlgebra_2956 (coe v0))))
-- Algebra.Bundles.BooleanAlgebra._.∧-complementʳ
d_'8743''45'complement'691'_2986 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny
d_'8743''45'complement'691'_2986 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
      (coe d_isBooleanAlgebra_2956 (coe v0))
-- Algebra.Bundles.BooleanAlgebra._.∧-cong
d_'8743''45'cong_2988 ::
  T_BooleanAlgebra_2920 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_2988 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe
            MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
            (coe d_isBooleanAlgebra_2956 (coe v0))))
-- Algebra.Bundles.BooleanAlgebra._.∧-congʳ
d_'8743''45'cong'691'_2990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_2990 ~v0 ~v1 v2
  = du_'8743''45'cong'691'_2990 v2
du_'8743''45'cong'691'_2990 ::
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_2990 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2))
-- Algebra.Bundles.BooleanAlgebra._.∧-congˡ
d_'8743''45'cong'737'_2992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_2992 ~v0 ~v1 v2
  = du_'8743''45'cong'737'_2992 v2
du_'8743''45'cong'737'_2992 ::
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_2992 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2))
-- Algebra.Bundles.BooleanAlgebra._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_2994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_2994 ~v0 ~v1 v2
  = du_'8744''45'absorbs'45''8743'_2994 v2
du_'8744''45'absorbs'45''8743'_2994 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_2994 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2))
-- Algebra.Bundles.BooleanAlgebra._.∨-assoc
d_'8744''45'assoc_2996 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_2996 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe
            MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
            (coe d_isBooleanAlgebra_2956 (coe v0))))
-- Algebra.Bundles.BooleanAlgebra._.∨-comm
d_'8744''45'comm_2998 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_2998 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe
            MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
            (coe d_isBooleanAlgebra_2956 (coe v0))))
-- Algebra.Bundles.BooleanAlgebra._.∨-complementʳ
d_'8744''45'complement'691'_3000 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny
d_'8744''45'complement'691'_3000 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
      (coe d_isBooleanAlgebra_2956 (coe v0))
-- Algebra.Bundles.BooleanAlgebra._.∨-cong
d_'8744''45'cong_3002 ::
  T_BooleanAlgebra_2920 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_3002 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
      (coe
         MAlonzo.Code.Algebra.Structures.d_isLattice_824
         (coe
            MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
            (coe d_isBooleanAlgebra_2956 (coe v0))))
-- Algebra.Bundles.BooleanAlgebra._.∨-congʳ
d_'8744''45'cong'691'_3004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_3004 ~v0 ~v1 v2
  = du_'8744''45'cong'691'_3004 v2
du_'8744''45'cong'691'_3004 ::
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_3004 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2))
-- Algebra.Bundles.BooleanAlgebra._.∨-congˡ
d_'8744''45'cong'737'_3006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_3006 ~v0 ~v1 v2
  = du_'8744''45'cong'737'_3006 v2
du_'8744''45'cong'737'_3006 ::
  T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_3006 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    let v2
          = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
              (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
      (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2))
-- Algebra.Bundles.BooleanAlgebra._.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_3008 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_3008 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_'8744''45'distrib'691''45''8743'_826
      (coe
         MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
         (coe d_isBooleanAlgebra_2956 (coe v0)))
-- Algebra.Bundles.BooleanAlgebra._.∨-∧-distribʳ
d_'8744''45''8743''45'distrib'691'_3010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45''8743''45'distrib'691'_3010 ~v0 ~v1 v2
  = du_'8744''45''8743''45'distrib'691'_3010 v2
du_'8744''45''8743''45'distrib'691'_3010 ::
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45''8743''45'distrib'691'_3010 v0
  = let v1 = d_isBooleanAlgebra_2956 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du_'8744''45''8743''45'distrib'691'_868
      (coe
         MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
         (coe v1))
-- Algebra.Bundles.BooleanAlgebra.distributiveLattice
d_distributiveLattice_3012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 -> T_DistributiveLattice_1228
d_distributiveLattice_3012 ~v0 ~v1 v2
  = du_distributiveLattice_3012 v2
du_distributiveLattice_3012 ::
  T_BooleanAlgebra_2920 -> T_DistributiveLattice_1228
du_distributiveLattice_3012 v0
  = coe
      C_DistributiveLattice'46'constructor_18235
      (d__'8744'__2946 (coe v0)) (d__'8743'__2948 (coe v0))
      (MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
         (coe d_isBooleanAlgebra_2956 (coe v0)))
-- Algebra.Bundles.BooleanAlgebra._._≉_
d__'8777'__3016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 -> AgdaAny -> AgdaAny -> ()
d__'8777'__3016 = erased
-- Algebra.Bundles.BooleanAlgebra._.lattice
d_lattice_3018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 -> T_Lattice_1144
d_lattice_3018 ~v0 ~v1 v2 = du_lattice_3018 v2
du_lattice_3018 :: T_BooleanAlgebra_2920 -> T_Lattice_1144
du_lattice_3018 v0
  = coe du_lattice_1300 (coe du_distributiveLattice_3012 (coe v0))
-- Algebra.Bundles.BooleanAlgebra._.setoid
d_setoid_3020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3020 ~v0 ~v1 v2 = du_setoid_3020 v2
du_setoid_3020 ::
  T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3020 v0
  = let v1 = coe du_distributiveLattice_3012 (coe v0) in
    coe du_setoid_1218 (coe du_lattice_1300 (coe v1))
-- Algebra.Bundles.RawSemigroup
d_RawSemigroup_3022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> ()
d_RawSemigroup_3022 = erased
