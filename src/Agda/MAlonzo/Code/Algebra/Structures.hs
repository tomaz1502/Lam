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

module MAlonzo.Code.Algebra.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Structures._._Absorbs_
d__Absorbs__14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__14 = erased
-- Algebra.Structures._._DistributesOver_
d__DistributesOver__16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__16 = erased
-- Algebra.Structures._._DistributesOverʳ_
d__DistributesOver'691'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__18 = erased
-- Algebra.Structures._._DistributesOverˡ_
d__DistributesOver'737'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__20 = erased
-- Algebra.Structures._.Absorptive
d_Absorptive_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_24 = erased
-- Algebra.Structures._.AlmostLeftCancellative
d_AlmostLeftCancellative_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostLeftCancellative_28 = erased
-- Algebra.Structures._.Associative
d_Associative_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_32 = erased
-- Algebra.Structures._.Commutative
d_Commutative_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_36 = erased
-- Algebra.Structures._.Congruent₁
d_Congruent'8321'_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_38 = erased
-- Algebra.Structures._.Congruent₂
d_Congruent'8322'_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_40 = erased
-- Algebra.Structures._.Idempotent
d_Idempotent_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_44 = erased
-- Algebra.Structures._.Identity
d_Identity_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_48 = erased
-- Algebra.Structures._.Inverse
d_Inverse_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_52 = erased
-- Algebra.Structures._.LeftCongruent
d_LeftCongruent_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCongruent_58 = erased
-- Algebra.Structures._.LeftIdentity
d_LeftIdentity_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_62 = erased
-- Algebra.Structures._.LeftInverse
d_LeftInverse_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_64 = erased
-- Algebra.Structures._.LeftZero
d_LeftZero_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_66 = erased
-- Algebra.Structures._.RightCongruent
d_RightCongruent_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCongruent_70 = erased
-- Algebra.Structures._.RightIdentity
d_RightIdentity_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_74 = erased
-- Algebra.Structures._.RightInverse
d_RightInverse_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_76 = erased
-- Algebra.Structures._.RightZero
d_RightZero_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_78 = erased
-- Algebra.Structures._.Selective
d_Selective_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_80 = erased
-- Algebra.Structures._.Zero
d_Zero_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_82 = erased
-- Algebra.Structures.IsMagma
d_IsMagma_86 a0 a1 a2 a3 a4 = ()
data T_IsMagma_86
  = C_IsMagma'46'constructor_447 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
                                 (AgdaAny ->
                                  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMagma.isEquivalence
d_isEquivalence_94 ::
  T_IsMagma_86 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_94 v0
  = case coe v0 of
      C_IsMagma'46'constructor_447 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMagma.∙-cong
d_'8729''45'cong_96 ::
  T_IsMagma_86 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_96 v0
  = case coe v0 of
      C_IsMagma'46'constructor_447 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMagma._.isPartialEquivalence
d_isPartialEquivalence_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_86 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_100 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_100 v5
du_isPartialEquivalence_100 ::
  T_IsMagma_86 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_100 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v0))
-- Algebra.Structures.IsMagma._.refl
d_refl_102 :: T_IsMagma_86 -> AgdaAny -> AgdaAny
d_refl_102 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_94 (coe v0))
-- Algebra.Structures.IsMagma._.reflexive
d_reflexive_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_86 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_104 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_104 v5
du_reflexive_104 ::
  T_IsMagma_86 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_104 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe d_isEquivalence_94 (coe v0)) v1
-- Algebra.Structures.IsMagma._.sym
d_sym_106 ::
  T_IsMagma_86 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_106 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_94 (coe v0))
-- Algebra.Structures.IsMagma._.trans
d_trans_108 ::
  T_IsMagma_86 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_108 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_94 (coe v0))
-- Algebra.Structures.IsMagma.setoid
d_setoid_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_86 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_110 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_110 v5
du_setoid_110 ::
  T_IsMagma_86 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_110 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (d_isEquivalence_94 (coe v0))
-- Algebra.Structures.IsMagma.∙-congˡ
d_'8729''45'cong'737'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_86 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_112 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8729''45'cong'737'_112 v5 v6 v7 v8 v9
du_'8729''45'cong'737'_112 ::
  T_IsMagma_86 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_112 v0 v1 v2 v3 v4
  = coe
      d_'8729''45'cong_96 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_94 (coe v0)) v1)
      v4
-- Algebra.Structures.IsMagma.∙-congʳ
d_'8729''45'cong'691'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_86 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_116 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8729''45'cong'691'_116 v5 v6 v7 v8 v9
du_'8729''45'cong'691'_116 ::
  T_IsMagma_86 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_116 v0 v1 v2 v3 v4
  = coe
      d_'8729''45'cong_96 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_94 (coe v0)) v1)
-- Algebra.Structures.IsCommutativeMagma
d_IsCommutativeMagma_122 a0 a1 a2 a3 a4 = ()
data T_IsCommutativeMagma_122
  = C_IsCommutativeMagma'46'constructor_1959 T_IsMagma_86
                                             (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeMagma.isMagma
d_isMagma_130 :: T_IsCommutativeMagma_122 -> T_IsMagma_86
d_isMagma_130 v0
  = case coe v0 of
      C_IsCommutativeMagma'46'constructor_1959 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMagma.comm
d_comm_132 ::
  T_IsCommutativeMagma_122 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_132 v0
  = case coe v0 of
      C_IsCommutativeMagma'46'constructor_1959 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMagma._.isEquivalence
d_isEquivalence_136 ::
  T_IsCommutativeMagma_122 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_136 v0
  = coe d_isEquivalence_94 (coe d_isMagma_130 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.isPartialEquivalence
d_isPartialEquivalence_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_122 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_138 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_138 v5
du_isPartialEquivalence_138 ::
  T_IsCommutativeMagma_122 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_138 v0
  = let v1 = d_isMagma_130 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v1))
-- Algebra.Structures.IsCommutativeMagma._.refl
d_refl_140 :: T_IsCommutativeMagma_122 -> AgdaAny -> AgdaAny
d_refl_140 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_94 (coe d_isMagma_130 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.reflexive
d_reflexive_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_122 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_142 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_142 v5
du_reflexive_142 ::
  T_IsCommutativeMagma_122 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_142 v0
  = let v1 = d_isMagma_130 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v1)) v2
-- Algebra.Structures.IsCommutativeMagma._.setoid
d_setoid_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_122 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_144 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_144 v5
du_setoid_144 ::
  T_IsCommutativeMagma_122 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_144 v0 = coe du_setoid_110 (coe d_isMagma_130 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.sym
d_sym_146 ::
  T_IsCommutativeMagma_122 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_146 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_94 (coe d_isMagma_130 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.trans
d_trans_148 ::
  T_IsCommutativeMagma_122 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_148 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_94 (coe d_isMagma_130 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.∙-cong
d_'8729''45'cong_150 ::
  T_IsCommutativeMagma_122 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_150 v0
  = coe d_'8729''45'cong_96 (coe d_isMagma_130 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.∙-congʳ
d_'8729''45'cong'691'_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_122 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_152 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_152 v5
du_'8729''45'cong'691'_152 ::
  T_IsCommutativeMagma_122 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_152 v0
  = coe du_'8729''45'cong'691'_116 (coe d_isMagma_130 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.∙-congˡ
d_'8729''45'cong'737'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_122 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_154 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_154 v5
du_'8729''45'cong'737'_154 ::
  T_IsCommutativeMagma_122 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_154 v0
  = coe du_'8729''45'cong'737'_112 (coe d_isMagma_130 (coe v0))
-- Algebra.Structures.IsSelectiveMagma
d_IsSelectiveMagma_158 a0 a1 a2 a3 a4 = ()
data T_IsSelectiveMagma_158
  = C_IsSelectiveMagma'46'constructor_2693 T_IsMagma_86
                                           (AgdaAny ->
                                            AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Algebra.Structures.IsSelectiveMagma.isMagma
d_isMagma_166 :: T_IsSelectiveMagma_158 -> T_IsMagma_86
d_isMagma_166 v0
  = case coe v0 of
      C_IsSelectiveMagma'46'constructor_2693 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSelectiveMagma.sel
d_sel_168 ::
  T_IsSelectiveMagma_158 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_168 v0
  = case coe v0 of
      C_IsSelectiveMagma'46'constructor_2693 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSelectiveMagma._.isEquivalence
d_isEquivalence_172 ::
  T_IsSelectiveMagma_158 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_172 v0
  = coe d_isEquivalence_94 (coe d_isMagma_166 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.isPartialEquivalence
d_isPartialEquivalence_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_158 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_174 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_174 v5
du_isPartialEquivalence_174 ::
  T_IsSelectiveMagma_158 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_174 v0
  = let v1 = d_isMagma_166 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v1))
-- Algebra.Structures.IsSelectiveMagma._.refl
d_refl_176 :: T_IsSelectiveMagma_158 -> AgdaAny -> AgdaAny
d_refl_176 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_94 (coe d_isMagma_166 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.reflexive
d_reflexive_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_158 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_178 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_178 v5
du_reflexive_178 ::
  T_IsSelectiveMagma_158 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_178 v0
  = let v1 = d_isMagma_166 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v1)) v2
-- Algebra.Structures.IsSelectiveMagma._.setoid
d_setoid_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_158 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_180 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_180 v5
du_setoid_180 ::
  T_IsSelectiveMagma_158 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_180 v0 = coe du_setoid_110 (coe d_isMagma_166 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.sym
d_sym_182 ::
  T_IsSelectiveMagma_158 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_94 (coe d_isMagma_166 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.trans
d_trans_184 ::
  T_IsSelectiveMagma_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_184 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_94 (coe d_isMagma_166 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.∙-cong
d_'8729''45'cong_186 ::
  T_IsSelectiveMagma_158 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_186 v0
  = coe d_'8729''45'cong_96 (coe d_isMagma_166 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.∙-congʳ
d_'8729''45'cong'691'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_188 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_188 v5
du_'8729''45'cong'691'_188 ::
  T_IsSelectiveMagma_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_188 v0
  = coe du_'8729''45'cong'691'_116 (coe d_isMagma_166 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.∙-congˡ
d_'8729''45'cong'737'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_190 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_190 v5
du_'8729''45'cong'737'_190 ::
  T_IsSelectiveMagma_158 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_190 v0
  = coe du_'8729''45'cong'737'_112 (coe d_isMagma_166 (coe v0))
-- Algebra.Structures.IsSemigroup
d_IsSemigroup_194 a0 a1 a2 a3 a4 = ()
data T_IsSemigroup_194
  = C_IsSemigroup'46'constructor_3427 T_IsMagma_86
                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsSemigroup.isMagma
d_isMagma_202 :: T_IsSemigroup_194 -> T_IsMagma_86
d_isMagma_202 v0
  = case coe v0 of
      C_IsSemigroup'46'constructor_3427 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemigroup.assoc
d_assoc_204 ::
  T_IsSemigroup_194 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_204 v0
  = case coe v0 of
      C_IsSemigroup'46'constructor_3427 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemigroup._.isEquivalence
d_isEquivalence_208 ::
  T_IsSemigroup_194 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_208 v0
  = coe d_isEquivalence_94 (coe d_isMagma_202 (coe v0))
-- Algebra.Structures.IsSemigroup._.isPartialEquivalence
d_isPartialEquivalence_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_194 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_210 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_210 v5
du_isPartialEquivalence_210 ::
  T_IsSemigroup_194 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_210 v0
  = let v1 = d_isMagma_202 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v1))
-- Algebra.Structures.IsSemigroup._.refl
d_refl_212 :: T_IsSemigroup_194 -> AgdaAny -> AgdaAny
d_refl_212 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_94 (coe d_isMagma_202 (coe v0)))
-- Algebra.Structures.IsSemigroup._.reflexive
d_reflexive_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_194 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_214 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_214 v5
du_reflexive_214 ::
  T_IsSemigroup_194 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_214 v0
  = let v1 = d_isMagma_202 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v1)) v2
-- Algebra.Structures.IsSemigroup._.setoid
d_setoid_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_194 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_216 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_216 v5
du_setoid_216 ::
  T_IsSemigroup_194 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_216 v0 = coe du_setoid_110 (coe d_isMagma_202 (coe v0))
-- Algebra.Structures.IsSemigroup._.sym
d_sym_218 ::
  T_IsSemigroup_194 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_218 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_94 (coe d_isMagma_202 (coe v0)))
-- Algebra.Structures.IsSemigroup._.trans
d_trans_220 ::
  T_IsSemigroup_194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_220 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_94 (coe d_isMagma_202 (coe v0)))
-- Algebra.Structures.IsSemigroup._.∙-cong
d_'8729''45'cong_222 ::
  T_IsSemigroup_194 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_222 v0
  = coe d_'8729''45'cong_96 (coe d_isMagma_202 (coe v0))
-- Algebra.Structures.IsSemigroup._.∙-congʳ
d_'8729''45'cong'691'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_224 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_224 v5
du_'8729''45'cong'691'_224 ::
  T_IsSemigroup_194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_224 v0
  = coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v0))
-- Algebra.Structures.IsSemigroup._.∙-congˡ
d_'8729''45'cong'737'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_226 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_226 v5
du_'8729''45'cong'737'_226 ::
  T_IsSemigroup_194 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_226 v0
  = coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v0))
-- Algebra.Structures.IsBand
d_IsBand_230 a0 a1 a2 a3 a4 = ()
data T_IsBand_230
  = C_IsBand'46'constructor_4163 T_IsSemigroup_194
                                 (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsBand.isSemigroup
d_isSemigroup_238 :: T_IsBand_230 -> T_IsSemigroup_194
d_isSemigroup_238 v0
  = case coe v0 of
      C_IsBand'46'constructor_4163 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBand.idem
d_idem_240 :: T_IsBand_230 -> AgdaAny -> AgdaAny
d_idem_240 v0
  = case coe v0 of
      C_IsBand'46'constructor_4163 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBand._.assoc
d_assoc_244 ::
  T_IsBand_230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_244 v0 = coe d_assoc_204 (coe d_isSemigroup_238 (coe v0))
-- Algebra.Structures.IsBand._.isEquivalence
d_isEquivalence_246 ::
  T_IsBand_230 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_246 v0
  = coe
      d_isEquivalence_94
      (coe d_isMagma_202 (coe d_isSemigroup_238 (coe v0)))
-- Algebra.Structures.IsBand._.isMagma
d_isMagma_248 :: T_IsBand_230 -> T_IsMagma_86
d_isMagma_248 v0
  = coe d_isMagma_202 (coe d_isSemigroup_238 (coe v0))
-- Algebra.Structures.IsBand._.isPartialEquivalence
d_isPartialEquivalence_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_230 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_250 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_250 v5
du_isPartialEquivalence_250 ::
  T_IsBand_230 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_250 v0
  = let v1 = d_isSemigroup_238 (coe v0) in
    let v2 = d_isMagma_202 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v2))
-- Algebra.Structures.IsBand._.refl
d_refl_252 :: T_IsBand_230 -> AgdaAny -> AgdaAny
d_refl_252 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_238 (coe v0))))
-- Algebra.Structures.IsBand._.reflexive
d_reflexive_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_230 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_254 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_254 v5
du_reflexive_254 ::
  T_IsBand_230 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_254 v0
  = let v1 = d_isSemigroup_238 (coe v0) in
    let v2 = d_isMagma_202 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v2)) v3
-- Algebra.Structures.IsBand._.setoid
d_setoid_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_230 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_256 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_256 v5
du_setoid_256 ::
  T_IsBand_230 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_256 v0
  = let v1 = d_isSemigroup_238 (coe v0) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsBand._.sym
d_sym_258 ::
  T_IsBand_230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_258 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_238 (coe v0))))
-- Algebra.Structures.IsBand._.trans
d_trans_260 ::
  T_IsBand_230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_260 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_238 (coe v0))))
-- Algebra.Structures.IsBand._.∙-cong
d_'8729''45'cong_262 ::
  T_IsBand_230 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_262 v0
  = coe
      d_'8729''45'cong_96
      (coe d_isMagma_202 (coe d_isSemigroup_238 (coe v0)))
-- Algebra.Structures.IsBand._.∙-congʳ
d_'8729''45'cong'691'_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_264 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_264 v5
du_'8729''45'cong'691'_264 ::
  T_IsBand_230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_264 v0
  = let v1 = d_isSemigroup_238 (coe v0) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsBand._.∙-congˡ
d_'8729''45'cong'737'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_266 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_266 v5
du_'8729''45'cong'737'_266 ::
  T_IsBand_230 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_266 v0
  = let v1 = d_isSemigroup_238 (coe v0) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsCommutativeSemigroup
d_IsCommutativeSemigroup_270 a0 a1 a2 a3 a4 = ()
data T_IsCommutativeSemigroup_270
  = C_IsCommutativeSemigroup'46'constructor_4999 T_IsSemigroup_194
                                                 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_278 ::
  T_IsCommutativeSemigroup_270 -> T_IsSemigroup_194
d_isSemigroup_278 v0
  = case coe v0 of
      C_IsCommutativeSemigroup'46'constructor_4999 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemigroup.comm
d_comm_280 ::
  T_IsCommutativeSemigroup_270 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_280 v0
  = case coe v0 of
      C_IsCommutativeSemigroup'46'constructor_4999 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemigroup._.assoc
d_assoc_284 ::
  T_IsCommutativeSemigroup_270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_284 v0 = coe d_assoc_204 (coe d_isSemigroup_278 (coe v0))
-- Algebra.Structures.IsCommutativeSemigroup._.isEquivalence
d_isEquivalence_286 ::
  T_IsCommutativeSemigroup_270 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_286 v0
  = coe
      d_isEquivalence_94
      (coe d_isMagma_202 (coe d_isSemigroup_278 (coe v0)))
-- Algebra.Structures.IsCommutativeSemigroup._.isMagma
d_isMagma_288 :: T_IsCommutativeSemigroup_270 -> T_IsMagma_86
d_isMagma_288 v0
  = coe d_isMagma_202 (coe d_isSemigroup_278 (coe v0))
-- Algebra.Structures.IsCommutativeSemigroup._.isPartialEquivalence
d_isPartialEquivalence_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_270 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_290 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_290 v5
du_isPartialEquivalence_290 ::
  T_IsCommutativeSemigroup_270 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_290 v0
  = let v1 = d_isSemigroup_278 (coe v0) in
    let v2 = d_isMagma_202 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v2))
-- Algebra.Structures.IsCommutativeSemigroup._.refl
d_refl_292 :: T_IsCommutativeSemigroup_270 -> AgdaAny -> AgdaAny
d_refl_292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_278 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.reflexive
d_reflexive_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_270 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_294 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_294 v5
du_reflexive_294 ::
  T_IsCommutativeSemigroup_270 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_294 v0
  = let v1 = d_isSemigroup_278 (coe v0) in
    let v2 = d_isMagma_202 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v2)) v3
-- Algebra.Structures.IsCommutativeSemigroup._.setoid
d_setoid_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_270 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_296 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_296 v5
du_setoid_296 ::
  T_IsCommutativeSemigroup_270 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_296 v0
  = let v1 = d_isSemigroup_278 (coe v0) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsCommutativeSemigroup._.sym
d_sym_298 ::
  T_IsCommutativeSemigroup_270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_298 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_278 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.trans
d_trans_300 ::
  T_IsCommutativeSemigroup_270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_278 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-cong
d_'8729''45'cong_302 ::
  T_IsCommutativeSemigroup_270 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_302 v0
  = coe
      d_'8729''45'cong_96
      (coe d_isMagma_202 (coe d_isSemigroup_278 (coe v0)))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-congʳ
d_'8729''45'cong'691'_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_304 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_304 v5
du_'8729''45'cong'691'_304 ::
  T_IsCommutativeSemigroup_270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_304 v0
  = let v1 = d_isSemigroup_278 (coe v0) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-congˡ
d_'8729''45'cong'737'_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_306 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_306 v5
du_'8729''45'cong'737'_306 ::
  T_IsCommutativeSemigroup_270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_306 v0
  = let v1 = d_isSemigroup_278 (coe v0) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_270 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_308 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_308 v5
du_isCommutativeMagma_308 ::
  T_IsCommutativeSemigroup_270 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_308 v0
  = coe
      C_IsCommutativeMagma'46'constructor_1959
      (coe d_isMagma_202 (coe d_isSemigroup_278 (coe v0)))
      (coe d_comm_280 (coe v0))
-- Algebra.Structures.IsSemilattice
d_IsSemilattice_312 a0 a1 a2 a3 a4 = ()
data T_IsSemilattice_312
  = C_IsSemilattice'46'constructor_5951 T_IsBand_230
                                        (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsSemilattice.isBand
d_isBand_320 :: T_IsSemilattice_312 -> T_IsBand_230
d_isBand_320 v0
  = case coe v0 of
      C_IsSemilattice'46'constructor_5951 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemilattice.comm
d_comm_322 :: T_IsSemilattice_312 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_322 v0
  = case coe v0 of
      C_IsSemilattice'46'constructor_5951 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemilattice._.assoc
d_assoc_326 ::
  T_IsSemilattice_312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_326 v0
  = coe
      d_assoc_204 (coe d_isSemigroup_238 (coe d_isBand_320 (coe v0)))
-- Algebra.Structures.IsSemilattice._.idem
d_idem_328 :: T_IsSemilattice_312 -> AgdaAny -> AgdaAny
d_idem_328 v0 = coe d_idem_240 (coe d_isBand_320 (coe v0))
-- Algebra.Structures.IsSemilattice._.isEquivalence
d_isEquivalence_330 ::
  T_IsSemilattice_312 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_330 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202 (coe d_isSemigroup_238 (coe d_isBand_320 (coe v0))))
-- Algebra.Structures.IsSemilattice._.isMagma
d_isMagma_332 :: T_IsSemilattice_312 -> T_IsMagma_86
d_isMagma_332 v0
  = coe
      d_isMagma_202 (coe d_isSemigroup_238 (coe d_isBand_320 (coe v0)))
-- Algebra.Structures.IsSemilattice._.isPartialEquivalence
d_isPartialEquivalence_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_312 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_334 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_334 v5
du_isPartialEquivalence_334 ::
  T_IsSemilattice_312 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_334 v0
  = let v1 = d_isBand_320 (coe v0) in
    let v2 = d_isSemigroup_238 (coe v1) in
    let v3 = d_isMagma_202 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v3))
-- Algebra.Structures.IsSemilattice._.isSemigroup
d_isSemigroup_336 :: T_IsSemilattice_312 -> T_IsSemigroup_194
d_isSemigroup_336 v0
  = coe d_isSemigroup_238 (coe d_isBand_320 (coe v0))
-- Algebra.Structures.IsSemilattice._.refl
d_refl_338 :: T_IsSemilattice_312 -> AgdaAny -> AgdaAny
d_refl_338 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202 (coe d_isSemigroup_238 (coe d_isBand_320 (coe v0)))))
-- Algebra.Structures.IsSemilattice._.reflexive
d_reflexive_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_312 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_340 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_340 v5
du_reflexive_340 ::
  T_IsSemilattice_312 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_340 v0
  = let v1 = d_isBand_320 (coe v0) in
    let v2 = d_isSemigroup_238 (coe v1) in
    let v3 = d_isMagma_202 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v3)) v4
-- Algebra.Structures.IsSemilattice._.setoid
d_setoid_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_312 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_342 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_342 v5
du_setoid_342 ::
  T_IsSemilattice_312 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_342 v0
  = let v1 = d_isBand_320 (coe v0) in
    let v2 = d_isSemigroup_238 (coe v1) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsSemilattice._.sym
d_sym_344 ::
  T_IsSemilattice_312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_344 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202 (coe d_isSemigroup_238 (coe d_isBand_320 (coe v0)))))
-- Algebra.Structures.IsSemilattice._.trans
d_trans_346 ::
  T_IsSemilattice_312 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_346 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202 (coe d_isSemigroup_238 (coe d_isBand_320 (coe v0)))))
-- Algebra.Structures.IsSemilattice._.∙-cong
d_'8729''45'cong_348 ::
  T_IsSemilattice_312 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_348 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202 (coe d_isSemigroup_238 (coe d_isBand_320 (coe v0))))
-- Algebra.Structures.IsSemilattice._.∙-congʳ
d_'8729''45'cong'691'_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_312 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_350 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_350 v5
du_'8729''45'cong'691'_350 ::
  T_IsSemilattice_312 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_350 v0
  = let v1 = d_isBand_320 (coe v0) in
    let v2 = d_isSemigroup_238 (coe v1) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsSemilattice._.∙-congˡ
d_'8729''45'cong'737'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemilattice_312 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_352 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_352 v5
du_'8729''45'cong'737'_352 ::
  T_IsSemilattice_312 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_352 v0
  = let v1 = d_isBand_320 (coe v0) in
    let v2 = d_isSemigroup_238 (coe v1) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsMonoid
d_IsMonoid_358 a0 a1 a2 a3 a4 a5 = ()
data T_IsMonoid_358
  = C_IsMonoid'46'constructor_6889 T_IsSemigroup_194
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsMonoid.isSemigroup
d_isSemigroup_368 :: T_IsMonoid_358 -> T_IsSemigroup_194
d_isSemigroup_368 v0
  = case coe v0 of
      C_IsMonoid'46'constructor_6889 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMonoid.identity
d_identity_370 ::
  T_IsMonoid_358 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_370 v0
  = case coe v0 of
      C_IsMonoid'46'constructor_6889 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMonoid._.assoc
d_assoc_374 ::
  T_IsMonoid_358 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_374 v0 = coe d_assoc_204 (coe d_isSemigroup_368 (coe v0))
-- Algebra.Structures.IsMonoid._.isEquivalence
d_isEquivalence_376 ::
  T_IsMonoid_358 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_376 v0
  = coe
      d_isEquivalence_94
      (coe d_isMagma_202 (coe d_isSemigroup_368 (coe v0)))
-- Algebra.Structures.IsMonoid._.isMagma
d_isMagma_378 :: T_IsMonoid_358 -> T_IsMagma_86
d_isMagma_378 v0
  = coe d_isMagma_202 (coe d_isSemigroup_368 (coe v0))
-- Algebra.Structures.IsMonoid._.isPartialEquivalence
d_isPartialEquivalence_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_358 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_380 v6
du_isPartialEquivalence_380 ::
  T_IsMonoid_358 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_380 v0
  = let v1 = d_isSemigroup_368 (coe v0) in
    let v2 = d_isMagma_202 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v2))
-- Algebra.Structures.IsMonoid._.refl
d_refl_382 :: T_IsMonoid_358 -> AgdaAny -> AgdaAny
d_refl_382 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_368 (coe v0))))
-- Algebra.Structures.IsMonoid._.reflexive
d_reflexive_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_358 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_384 v6
du_reflexive_384 ::
  T_IsMonoid_358 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_384 v0
  = let v1 = d_isSemigroup_368 (coe v0) in
    let v2 = d_isMagma_202 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v2)) v3
-- Algebra.Structures.IsMonoid._.setoid
d_setoid_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_358 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_386 v6
du_setoid_386 ::
  T_IsMonoid_358 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_386 v0
  = let v1 = d_isSemigroup_368 (coe v0) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsMonoid._.sym
d_sym_388 ::
  T_IsMonoid_358 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_388 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_368 (coe v0))))
-- Algebra.Structures.IsMonoid._.trans
d_trans_390 ::
  T_IsMonoid_358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_390 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe d_isMagma_202 (coe d_isSemigroup_368 (coe v0))))
-- Algebra.Structures.IsMonoid._.∙-cong
d_'8729''45'cong_392 ::
  T_IsMonoid_358 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_392 v0
  = coe
      d_'8729''45'cong_96
      (coe d_isMagma_202 (coe d_isSemigroup_368 (coe v0)))
-- Algebra.Structures.IsMonoid._.∙-congʳ
d_'8729''45'cong'691'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_394 v6
du_'8729''45'cong'691'_394 ::
  T_IsMonoid_358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_394 v0
  = let v1 = d_isSemigroup_368 (coe v0) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsMonoid._.∙-congˡ
d_'8729''45'cong'737'_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_396 v6
du_'8729''45'cong'737'_396 ::
  T_IsMonoid_358 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_396 v0
  = let v1 = d_isSemigroup_368 (coe v0) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsMonoid.identityˡ
d_identity'737'_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMonoid_358 -> AgdaAny -> AgdaAny
d_identity'737'_398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_398 v6
du_identity'737'_398 :: T_IsMonoid_358 -> AgdaAny -> AgdaAny
du_identity'737'_398 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_370 (coe v0))
-- Algebra.Structures.IsMonoid.identityʳ
d_identity'691'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMonoid_358 -> AgdaAny -> AgdaAny
d_identity'691'_400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_400 v6
du_identity'691'_400 :: T_IsMonoid_358 -> AgdaAny -> AgdaAny
du_identity'691'_400 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_370 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid
d_IsCommutativeMonoid_406 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid_406
  = C_IsCommutativeMonoid'46'constructor_8363 T_IsMonoid_358
                                              (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeMonoid.isMonoid
d_isMonoid_416 :: T_IsCommutativeMonoid_406 -> T_IsMonoid_358
d_isMonoid_416 v0
  = case coe v0 of
      C_IsCommutativeMonoid'46'constructor_8363 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMonoid.comm
d_comm_418 ::
  T_IsCommutativeMonoid_406 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_418 v0
  = case coe v0 of
      C_IsCommutativeMonoid'46'constructor_8363 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMonoid._.assoc
d_assoc_422 ::
  T_IsCommutativeMonoid_406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_422 v0
  = coe
      d_assoc_204 (coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0)))
-- Algebra.Structures.IsCommutativeMonoid._.identity
d_identity_424 ::
  T_IsCommutativeMonoid_406 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_424 v0
  = coe d_identity_370 (coe d_isMonoid_416 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.identityʳ
d_identity'691'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_406 -> AgdaAny -> AgdaAny
d_identity'691'_426 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_426 v6
du_identity'691'_426 ::
  T_IsCommutativeMonoid_406 -> AgdaAny -> AgdaAny
du_identity'691'_426 v0
  = coe du_identity'691'_400 (coe d_isMonoid_416 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.identityˡ
d_identity'737'_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_406 -> AgdaAny -> AgdaAny
d_identity'737'_428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_428 v6
du_identity'737'_428 ::
  T_IsCommutativeMonoid_406 -> AgdaAny -> AgdaAny
du_identity'737'_428 v0
  = coe du_identity'737'_398 (coe d_isMonoid_416 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.isEquivalence
d_isEquivalence_430 ::
  T_IsCommutativeMonoid_406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_430 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0))))
-- Algebra.Structures.IsCommutativeMonoid._.isMagma
d_isMagma_432 :: T_IsCommutativeMonoid_406 -> T_IsMagma_86
d_isMagma_432 v0
  = coe
      d_isMagma_202 (coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0)))
-- Algebra.Structures.IsCommutativeMonoid._.isPartialEquivalence
d_isPartialEquivalence_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_434 v6
du_isPartialEquivalence_434 ::
  T_IsCommutativeMonoid_406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_434 v0
  = let v1 = d_isMonoid_416 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    let v3 = d_isMagma_202 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v3))
-- Algebra.Structures.IsCommutativeMonoid._.isSemigroup
d_isSemigroup_436 :: T_IsCommutativeMonoid_406 -> T_IsSemigroup_194
d_isSemigroup_436 v0
  = coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.refl
d_refl_438 :: T_IsCommutativeMonoid_406 -> AgdaAny -> AgdaAny
d_refl_438 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.reflexive
d_reflexive_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_406 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_440 v6
du_reflexive_440 ::
  T_IsCommutativeMonoid_406 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_440 v0
  = let v1 = d_isMonoid_416 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    let v3 = d_isMagma_202 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v3)) v4
-- Algebra.Structures.IsCommutativeMonoid._.setoid
d_setoid_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_442 v6
du_setoid_442 ::
  T_IsCommutativeMonoid_406 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_442 v0
  = let v1 = d_isMonoid_416 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsCommutativeMonoid._.sym
d_sym_444 ::
  T_IsCommutativeMonoid_406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_444 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.trans
d_trans_446 ::
  T_IsCommutativeMonoid_406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_446 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.∙-cong
d_'8729''45'cong_448 ::
  T_IsCommutativeMonoid_406 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_448 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0))))
-- Algebra.Structures.IsCommutativeMonoid._.∙-congʳ
d_'8729''45'cong'691'_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_450 v6
du_'8729''45'cong'691'_450 ::
  T_IsCommutativeMonoid_406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_450 v0
  = let v1 = d_isMonoid_416 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsCommutativeMonoid._.∙-congˡ
d_'8729''45'cong'737'_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_452 v6
du_'8729''45'cong'737'_452 ::
  T_IsCommutativeMonoid_406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_452 v0
  = let v1 = d_isMonoid_416 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_406 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_454 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_454 v6
du_isCommutativeSemigroup_454 ::
  T_IsCommutativeMonoid_406 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_454 v0
  = coe
      C_IsCommutativeSemigroup'46'constructor_4999
      (coe d_isSemigroup_368 (coe d_isMonoid_416 (coe v0)))
      (coe d_comm_418 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.isCommutativeMagma
d_isCommutativeMagma_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_406 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_458 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_458 v6
du_isCommutativeMagma_458 ::
  T_IsCommutativeMonoid_406 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_458 v0
  = coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_464 a0 a1 a2 a3 a4 a5 = ()
data T_IsIdempotentCommutativeMonoid_464
  = C_IsIdempotentCommutativeMonoid'46'constructor_9755 T_IsCommutativeMonoid_406
                                                        (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_474 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeMonoid_406
d_isCommutativeMonoid_474 v0
  = case coe v0 of
      C_IsIdempotentCommutativeMonoid'46'constructor_9755 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentCommutativeMonoid.idem
d_idem_476 ::
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
d_idem_476 v0
  = case coe v0 of
      C_IsIdempotentCommutativeMonoid'46'constructor_9755 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.assoc
d_assoc_480 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_480 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.comm
d_comm_482 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_482 v0
  = coe d_comm_418 (coe d_isCommutativeMonoid_474 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identity
d_identity_484 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_484 v0
  = coe
      d_identity_370
      (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identityʳ
d_identity'691'_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
d_identity'691'_486 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_486 v6
du_identity'691'_486 ::
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
du_identity'691'_486 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    coe du_identity'691'_400 (coe d_isMonoid_416 (coe v1))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identityˡ
d_identity'737'_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
d_identity'737'_488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_488 v6
du_identity'737'_488 ::
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
du_identity'737'_488 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    coe du_identity'737'_398 (coe d_isMonoid_416 (coe v1))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isCommutativeMagma
d_isCommutativeMagma_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_490 v6
du_isCommutativeMagma_490 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_490 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v1))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isCommutativeSemigroup
d_isCommutativeSemigroup_492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_492 v6
du_isCommutativeSemigroup_492 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_492 v0
  = coe
      du_isCommutativeSemigroup_454
      (coe d_isCommutativeMonoid_474 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isEquivalence
d_isEquivalence_494 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_494 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isMagma
d_isMagma_496 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsMagma_86
d_isMagma_496 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isMonoid
d_isMonoid_498 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsMonoid_358
d_isMonoid_498 v0
  = coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isPartialEquivalence
d_isPartialEquivalence_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_500 v6
du_isPartialEquivalence_500 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_500 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v4))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isSemigroup
d_isSemigroup_502 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsSemigroup_194
d_isSemigroup_502 v0
  = coe
      d_isSemigroup_368
      (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.refl
d_refl_504 ::
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
d_refl_504 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.reflexive
d_reflexive_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_506 v6
du_reflexive_506 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_506 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v4)) v5
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.setoid
d_setoid_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_508 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_508 v6
du_setoid_508 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_508 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.sym
d_sym_510 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_510 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.trans
d_trans_512 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_512 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-cong
d_'8729''45'cong_514 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_514 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congʳ
d_'8729''45'cong'691'_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_516 v6
du_'8729''45'cong'691'_516 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_516 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congˡ
d_'8729''45'cong'737'_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_518 v6
du_'8729''45'cong'737'_518 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_518 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsBoundedLattice
d_IsBoundedLattice_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_IsBoundedLattice_520 = erased
-- Algebra.Structures.IsBoundedLattice.assoc
d_assoc_530 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_530 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))
-- Algebra.Structures.IsBoundedLattice.comm
d_comm_532 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_532 v0
  = coe d_comm_418 (coe d_isCommutativeMonoid_474 (coe v0))
-- Algebra.Structures.IsBoundedLattice.idem
d_idem_534 ::
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
d_idem_534 v0 = coe d_idem_476 (coe v0)
-- Algebra.Structures.IsBoundedLattice.identity
d_identity_536 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_536 v0
  = coe
      d_identity_370
      (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0)))
-- Algebra.Structures.IsBoundedLattice.identityʳ
d_identity'691'_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
d_identity'691'_538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_538 v6
du_identity'691'_538 ::
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
du_identity'691'_538 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    coe du_identity'691'_400 (coe d_isMonoid_416 (coe v1))
-- Algebra.Structures.IsBoundedLattice.identityˡ
d_identity'737'_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
d_identity'737'_540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_540 v6
du_identity'737'_540 ::
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
du_identity'737'_540 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    coe du_identity'737'_398 (coe d_isMonoid_416 (coe v1))
-- Algebra.Structures.IsBoundedLattice.isCommutativeMagma
d_isCommutativeMagma_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_542 v6
du_isCommutativeMagma_542 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_542 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v1))
-- Algebra.Structures.IsBoundedLattice.isCommutativeMonoid
d_isCommutativeMonoid_544 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeMonoid_406
d_isCommutativeMonoid_544 v0
  = coe d_isCommutativeMonoid_474 (coe v0)
-- Algebra.Structures.IsBoundedLattice.isCommutativeSemigroup
d_isCommutativeSemigroup_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_546 v6
du_isCommutativeSemigroup_546 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_546 v0
  = coe
      du_isCommutativeSemigroup_454
      (coe d_isCommutativeMonoid_474 (coe v0))
-- Algebra.Structures.IsBoundedLattice.isEquivalence
d_isEquivalence_548 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_548 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0)))))
-- Algebra.Structures.IsBoundedLattice.isMagma
d_isMagma_550 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsMagma_86
d_isMagma_550 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))
-- Algebra.Structures.IsBoundedLattice.isMonoid
d_isMonoid_552 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsMonoid_358
d_isMonoid_552 v0
  = coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))
-- Algebra.Structures.IsBoundedLattice.isPartialEquivalence
d_isPartialEquivalence_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_554 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_554 v6
du_isPartialEquivalence_554 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_554 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v4))
-- Algebra.Structures.IsBoundedLattice.isSemigroup
d_isSemigroup_556 ::
  T_IsIdempotentCommutativeMonoid_464 -> T_IsSemigroup_194
d_isSemigroup_556 v0
  = coe
      d_isSemigroup_368
      (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0)))
-- Algebra.Structures.IsBoundedLattice.refl
d_refl_558 ::
  T_IsIdempotentCommutativeMonoid_464 -> AgdaAny -> AgdaAny
d_refl_558 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))))
-- Algebra.Structures.IsBoundedLattice.reflexive
d_reflexive_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_560 v6
du_reflexive_560 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_560 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v4)) v5
-- Algebra.Structures.IsBoundedLattice.setoid
d_setoid_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_562 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_562 v6
du_setoid_562 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_562 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsBoundedLattice.sym
d_sym_564 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))))
-- Algebra.Structures.IsBoundedLattice.trans
d_trans_566 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_566 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0))))))
-- Algebra.Structures.IsBoundedLattice.∙-cong
d_'8729''45'cong_568 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_568 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe d_isMonoid_416 (coe d_isCommutativeMonoid_474 (coe v0)))))
-- Algebra.Structures.IsBoundedLattice.∙-congʳ
d_'8729''45'cong'691'_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_570 v6
du_'8729''45'cong'691'_570 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_570 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsBoundedLattice.∙-congˡ
d_'8729''45'cong'737'_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_572 v6
du_'8729''45'cong'737'_572 ::
  T_IsIdempotentCommutativeMonoid_464 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_572 v0
  = let v1 = d_isCommutativeMonoid_474 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsGroup
d_IsGroup_580 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroup_580
  = C_IsGroup'46'constructor_11639 T_IsMonoid_358
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsGroup.isMonoid
d_isMonoid_594 :: T_IsGroup_580 -> T_IsMonoid_358
d_isMonoid_594 v0
  = case coe v0 of
      C_IsGroup'46'constructor_11639 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup.inverse
d_inverse_596 ::
  T_IsGroup_580 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_596 v0
  = case coe v0 of
      C_IsGroup'46'constructor_11639 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup.⁻¹-cong
d_'8315''185''45'cong_598 ::
  T_IsGroup_580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_598 v0
  = case coe v0 of
      C_IsGroup'46'constructor_11639 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup._.assoc
d_assoc_602 ::
  T_IsGroup_580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_602 v0
  = coe
      d_assoc_204 (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v0)))
-- Algebra.Structures.IsGroup._.identity
d_identity_604 ::
  T_IsGroup_580 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_604 v0
  = coe d_identity_370 (coe d_isMonoid_594 (coe v0))
-- Algebra.Structures.IsGroup._.identityʳ
d_identity'691'_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_580 -> AgdaAny -> AgdaAny
d_identity'691'_606 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_606 v7
du_identity'691'_606 :: T_IsGroup_580 -> AgdaAny -> AgdaAny
du_identity'691'_606 v0
  = coe du_identity'691'_400 (coe d_isMonoid_594 (coe v0))
-- Algebra.Structures.IsGroup._.identityˡ
d_identity'737'_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_580 -> AgdaAny -> AgdaAny
d_identity'737'_608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_608 v7
du_identity'737'_608 :: T_IsGroup_580 -> AgdaAny -> AgdaAny
du_identity'737'_608 v0
  = coe du_identity'737'_398 (coe d_isMonoid_594 (coe v0))
-- Algebra.Structures.IsGroup._.isEquivalence
d_isEquivalence_610 ::
  T_IsGroup_580 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_610 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v0))))
-- Algebra.Structures.IsGroup._.isMagma
d_isMagma_612 :: T_IsGroup_580 -> T_IsMagma_86
d_isMagma_612 v0
  = coe
      d_isMagma_202 (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v0)))
-- Algebra.Structures.IsGroup._.isPartialEquivalence
d_isPartialEquivalence_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_614 v7
du_isPartialEquivalence_614 ::
  T_IsGroup_580 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_614 v0
  = let v1 = d_isMonoid_594 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    let v3 = d_isMagma_202 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v3))
-- Algebra.Structures.IsGroup._.isSemigroup
d_isSemigroup_616 :: T_IsGroup_580 -> T_IsSemigroup_194
d_isSemigroup_616 v0
  = coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v0))
-- Algebra.Structures.IsGroup._.refl
d_refl_618 :: T_IsGroup_580 -> AgdaAny -> AgdaAny
d_refl_618 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v0)))))
-- Algebra.Structures.IsGroup._.reflexive
d_reflexive_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_620 v7
du_reflexive_620 ::
  T_IsGroup_580 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_620 v0
  = let v1 = d_isMonoid_594 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    let v3 = d_isMagma_202 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v3)) v4
-- Algebra.Structures.IsGroup._.setoid
d_setoid_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_622 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_622 v7
du_setoid_622 ::
  T_IsGroup_580 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_622 v0
  = let v1 = d_isMonoid_594 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsGroup._.sym
d_sym_624 ::
  T_IsGroup_580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_624 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v0)))))
-- Algebra.Structures.IsGroup._.trans
d_trans_626 ::
  T_IsGroup_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_626 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v0)))))
-- Algebra.Structures.IsGroup._.∙-cong
d_'8729''45'cong_628 ::
  T_IsGroup_580 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_628 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v0))))
-- Algebra.Structures.IsGroup._.∙-congʳ
d_'8729''45'cong'691'_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_630 v7
du_'8729''45'cong'691'_630 ::
  T_IsGroup_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_630 v0
  = let v1 = d_isMonoid_594 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsGroup._.∙-congˡ
d_'8729''45'cong'737'_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_632 v7
du_'8729''45'cong'737'_632 ::
  T_IsGroup_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_632 v0
  = let v1 = d_isMonoid_594 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsGroup._-_
d__'45'__634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__634 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 v9
  = du__'45'__634 v4 v6 v8 v9
du__'45'__634 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__634 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
-- Algebra.Structures.IsGroup.inverseˡ
d_inverse'737'_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_580 -> AgdaAny -> AgdaAny
d_inverse'737'_640 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_640 v7
du_inverse'737'_640 :: T_IsGroup_580 -> AgdaAny -> AgdaAny
du_inverse'737'_640 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_inverse_596 (coe v0))
-- Algebra.Structures.IsGroup.inverseʳ
d_inverse'691'_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_580 -> AgdaAny -> AgdaAny
d_inverse'691'_642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_642 v7
du_inverse'691'_642 :: T_IsGroup_580 -> AgdaAny -> AgdaAny
du_inverse'691'_642 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_inverse_596 (coe v0))
-- Algebra.Structures.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_648 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_648 v4 v5 v6 v7
du_unique'737''45''8315''185'_648 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_648 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'43'id'43'inv'691''8658'inv'737''45'unique_264
      (let v4 = d_isSemigroup_368 (coe d_isMonoid_594 (coe v3)) in
       coe du_setoid_110 (coe d_isMagma_202 (coe v4)))
      (coe v0) (coe v2) (coe v1)
      (coe
         d_'8729''45'cong_96
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v3)))))
      (coe
         d_assoc_204 (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v3))))
      (coe d_identity_370 (coe d_isMonoid_594 (coe v3)))
      (coe du_inverse'691'_642 (coe v3))
-- Algebra.Structures.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_654 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_654 v4 v5 v6 v7
du_unique'691''45''8315''185'_654 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_580 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_654 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'43'id'43'inv'737''8658'inv'691''45'unique_284
      (let v4 = d_isSemigroup_368 (coe d_isMonoid_594 (coe v3)) in
       coe du_setoid_110 (coe d_isMagma_202 (coe v4)))
      (coe v0) (coe v2) (coe v1)
      (coe
         d_'8729''45'cong_96
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v3)))))
      (coe
         d_assoc_204 (coe d_isSemigroup_368 (coe d_isMonoid_594 (coe v3))))
      (coe d_identity_370 (coe d_isMonoid_594 (coe v3)))
      (coe du_inverse'737'_640 (coe v3))
-- Algebra.Structures.IsAbelianGroup
d_IsAbelianGroup_662 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsAbelianGroup_662
  = C_IsAbelianGroup'46'constructor_15267 T_IsGroup_580
                                          (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsAbelianGroup.isGroup
d_isGroup_674 :: T_IsAbelianGroup_662 -> T_IsGroup_580
d_isGroup_674 v0
  = case coe v0 of
      C_IsAbelianGroup'46'constructor_15267 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAbelianGroup.comm
d_comm_676 :: T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_676 v0
  = case coe v0 of
      C_IsAbelianGroup'46'constructor_15267 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAbelianGroup._._-_
d__'45'__680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__680 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 = du__'45'__680 v4 v6
du__'45'__680 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__680 v0 v1 = coe du__'45'__634 (coe v0) (coe v1)
-- Algebra.Structures.IsAbelianGroup._.assoc
d_assoc_682 ::
  T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_682 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0))))
-- Algebra.Structures.IsAbelianGroup._.identity
d_identity_684 ::
  T_IsAbelianGroup_662 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_684 v0
  = coe
      d_identity_370 (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0)))
-- Algebra.Structures.IsAbelianGroup._.identityʳ
d_identity'691'_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
d_identity'691'_686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_686 v7
du_identity'691'_686 :: T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
du_identity'691'_686 v0
  = let v1 = d_isGroup_674 (coe v0) in
    coe du_identity'691'_400 (coe d_isMonoid_594 (coe v1))
-- Algebra.Structures.IsAbelianGroup._.identityˡ
d_identity'737'_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
d_identity'737'_688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_688 v7
du_identity'737'_688 :: T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
du_identity'737'_688 v0
  = let v1 = d_isGroup_674 (coe v0) in
    coe du_identity'737'_398 (coe d_isMonoid_594 (coe v1))
-- Algebra.Structures.IsAbelianGroup._.inverse
d_inverse_690 ::
  T_IsAbelianGroup_662 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_690 v0 = coe d_inverse_596 (coe d_isGroup_674 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.inverseʳ
d_inverse'691'_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
d_inverse'691'_692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_692 v7
du_inverse'691'_692 :: T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
du_inverse'691'_692 v0
  = coe du_inverse'691'_642 (coe d_isGroup_674 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.inverseˡ
d_inverse'737'_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
d_inverse'737'_694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_694 v7
du_inverse'737'_694 :: T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
du_inverse'737'_694 v0
  = coe du_inverse'737'_640 (coe d_isGroup_674 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isEquivalence
d_isEquivalence_696 ::
  T_IsAbelianGroup_662 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_696 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0)))))
-- Algebra.Structures.IsAbelianGroup._.isMagma
d_isMagma_698 :: T_IsAbelianGroup_662 -> T_IsMagma_86
d_isMagma_698 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0))))
-- Algebra.Structures.IsAbelianGroup._.isMonoid
d_isMonoid_700 :: T_IsAbelianGroup_662 -> T_IsMonoid_358
d_isMonoid_700 v0 = coe d_isMonoid_594 (coe d_isGroup_674 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isPartialEquivalence
d_isPartialEquivalence_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_702 v7
du_isPartialEquivalence_702 ::
  T_IsAbelianGroup_662 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_702 v0
  = let v1 = d_isGroup_674 (coe v0) in
    let v2 = d_isMonoid_594 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v4))
-- Algebra.Structures.IsAbelianGroup._.isSemigroup
d_isSemigroup_704 :: T_IsAbelianGroup_662 -> T_IsSemigroup_194
d_isSemigroup_704 v0
  = coe
      d_isSemigroup_368 (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0)))
-- Algebra.Structures.IsAbelianGroup._.refl
d_refl_706 :: T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny
d_refl_706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.reflexive
d_reflexive_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_708 v7
du_reflexive_708 ::
  T_IsAbelianGroup_662 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_708 v0
  = let v1 = d_isGroup_674 (coe v0) in
    let v2 = d_isMonoid_594 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v4)) v5
-- Algebra.Structures.IsAbelianGroup._.setoid
d_setoid_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_710 v7
du_setoid_710 ::
  T_IsAbelianGroup_662 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_710 v0
  = let v1 = d_isGroup_674 (coe v0) in
    let v2 = d_isMonoid_594 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsAbelianGroup._.sym
d_sym_712 ::
  T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_712 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.trans
d_trans_714 ::
  T_IsAbelianGroup_662 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_714 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_716 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_716 v4 v5 v6 v7
du_unique'691''45''8315''185'_716 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_716 v0 v1 v2 v3
  = coe
      du_unique'691''45''8315''185'_654 (coe v0) (coe v1) (coe v2)
      (coe d_isGroup_674 (coe v3))
-- Algebra.Structures.IsAbelianGroup._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_718 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_718 v4 v5 v6 v7
du_unique'737''45''8315''185'_718 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_718 v0 v1 v2 v3
  = coe
      du_unique'737''45''8315''185'_648 (coe v0) (coe v1) (coe v2)
      (coe d_isGroup_674 (coe v3))
-- Algebra.Structures.IsAbelianGroup._.⁻¹-cong
d_'8315''185''45'cong_720 ::
  T_IsAbelianGroup_662 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_720 v0
  = coe d_'8315''185''45'cong_598 (coe d_isGroup_674 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.∙-cong
d_'8729''45'cong_722 ::
  T_IsAbelianGroup_662 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_722 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0)))))
-- Algebra.Structures.IsAbelianGroup._.∙-congʳ
d_'8729''45'cong'691'_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_724 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_724 v7
du_'8729''45'cong'691'_724 ::
  T_IsAbelianGroup_662 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_724 v0
  = let v1 = d_isGroup_674 (coe v0) in
    let v2 = d_isMonoid_594 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsAbelianGroup._.∙-congˡ
d_'8729''45'cong'737'_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_726 v7
du_'8729''45'cong'737'_726 ::
  T_IsAbelianGroup_662 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_726 v0
  = let v1 = d_isGroup_674 (coe v0) in
    let v2 = d_isMonoid_594 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 -> T_IsCommutativeMonoid_406
d_isCommutativeMonoid_728 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMonoid_728 v7
du_isCommutativeMonoid_728 ::
  T_IsAbelianGroup_662 -> T_IsCommutativeMonoid_406
du_isCommutativeMonoid_728 v0
  = coe
      C_IsCommutativeMonoid'46'constructor_8363
      (coe d_isMonoid_594 (coe d_isGroup_674 (coe v0)))
      (coe d_comm_676 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isCommutativeMagma
d_isCommutativeMagma_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_732 v7
du_isCommutativeMagma_732 ::
  T_IsAbelianGroup_662 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_732 v0
  = let v1 = coe du_isCommutativeMonoid_728 (coe v0) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v1))
-- Algebra.Structures.IsAbelianGroup._.isCommutativeSemigroup
d_isCommutativeSemigroup_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_662 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_734 v7
du_isCommutativeSemigroup_734 ::
  T_IsAbelianGroup_662 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_734 v0
  = coe
      du_isCommutativeSemigroup_454
      (coe du_isCommutativeMonoid_728 (coe v0))
-- Algebra.Structures.IsLattice
d_IsLattice_740 a0 a1 a2 a3 a4 a5 = ()
data T_IsLattice_740
  = C_IsLattice'46'constructor_17577 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
                                     (AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny ->
                                      AgdaAny ->
                                      AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     (AgdaAny ->
                                      AgdaAny ->
                                      AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsLattice.isEquivalence
d_isEquivalence_762 ::
  T_IsLattice_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_762 v0
  = case coe v0 of
      C_IsLattice'46'constructor_17577 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLattice.∨-comm
d_'8744''45'comm_764 ::
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_764 v0
  = case coe v0 of
      C_IsLattice'46'constructor_17577 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLattice.∨-assoc
d_'8744''45'assoc_766 ::
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_766 v0
  = case coe v0 of
      C_IsLattice'46'constructor_17577 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLattice.∨-cong
d_'8744''45'cong_768 ::
  T_IsLattice_740 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_768 v0
  = case coe v0 of
      C_IsLattice'46'constructor_17577 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLattice.∧-comm
d_'8743''45'comm_770 ::
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_770 v0
  = case coe v0 of
      C_IsLattice'46'constructor_17577 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLattice.∧-assoc
d_'8743''45'assoc_772 ::
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_772 v0
  = case coe v0 of
      C_IsLattice'46'constructor_17577 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLattice.∧-cong
d_'8743''45'cong_774 ::
  T_IsLattice_740 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_774 v0
  = case coe v0 of
      C_IsLattice'46'constructor_17577 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLattice.absorptive
d_absorptive_776 ::
  T_IsLattice_740 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_776 v0
  = case coe v0 of
      C_IsLattice'46'constructor_17577 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLattice._.isPartialEquivalence
d_isPartialEquivalence_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_780 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_780 v6
du_isPartialEquivalence_780 ::
  T_IsLattice_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_780 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_762 (coe v0))
-- Algebra.Structures.IsLattice._.refl
d_refl_782 :: T_IsLattice_740 -> AgdaAny -> AgdaAny
d_refl_782 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_762 (coe v0))
-- Algebra.Structures.IsLattice._.reflexive
d_reflexive_784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_740 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_784 v6
du_reflexive_784 ::
  T_IsLattice_740 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_784 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe d_isEquivalence_762 (coe v0)) v1
-- Algebra.Structures.IsLattice._.sym
d_sym_786 ::
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_786 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_762 (coe v0))
-- Algebra.Structures.IsLattice._.trans
d_trans_788 ::
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_788 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_762 (coe v0))
-- Algebra.Structures.IsLattice.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_790 v6
du_'8744''45'absorbs'45''8743'_790 ::
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_790 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_absorptive_776 (coe v0))
-- Algebra.Structures.IsLattice.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_792 v6
du_'8743''45'absorbs'45''8744'_792 ::
  T_IsLattice_740 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_792 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_absorptive_776 (coe v0))
-- Algebra.Structures.IsLattice.∧-congˡ
d_'8743''45'cong'737'_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8743''45'cong'737'_794 v6 v7 v8 v9 v10
du_'8743''45'cong'737'_794 ::
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_794 v0 v1 v2 v3 v4
  = coe
      d_'8743''45'cong_774 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_762 (coe v0)) v1)
      v4
-- Algebra.Structures.IsLattice.∧-congʳ
d_'8743''45'cong'691'_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8743''45'cong'691'_798 v6 v7 v8 v9 v10
du_'8743''45'cong'691'_798 ::
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_798 v0 v1 v2 v3 v4
  = coe
      d_'8743''45'cong_774 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_762 (coe v0)) v1)
-- Algebra.Structures.IsLattice.∨-congˡ
d_'8744''45'cong'737'_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8744''45'cong'737'_802 v6 v7 v8 v9 v10
du_'8744''45'cong'737'_802 ::
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_802 v0 v1 v2 v3 v4
  = coe
      d_'8744''45'cong_768 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_762 (coe v0)) v1)
      v4
-- Algebra.Structures.IsLattice.∨-congʳ
d_'8744''45'cong'691'_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_'8744''45'cong'691'_806 v6 v7 v8 v9 v10
du_'8744''45'cong'691'_806 ::
  T_IsLattice_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_806 v0 v1 v2 v3 v4
  = coe
      d_'8744''45'cong_768 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_762 (coe v0)) v1)
-- Algebra.Structures.IsDistributiveLattice
d_IsDistributiveLattice_814 a0 a1 a2 a3 a4 a5 = ()
data T_IsDistributiveLattice_814
  = C_IsDistributiveLattice'46'constructor_20873 T_IsLattice_740
                                                 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsDistributiveLattice.isLattice
d_isLattice_824 :: T_IsDistributiveLattice_814 -> T_IsLattice_740
d_isLattice_824 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_20873 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsDistributiveLattice.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_826 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_826 v0
  = case coe v0 of
      C_IsDistributiveLattice'46'constructor_20873 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsDistributiveLattice._.absorptive
d_absorptive_830 ::
  T_IsDistributiveLattice_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_830 v0
  = coe d_absorptive_776 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.isEquivalence
d_isEquivalence_832 ::
  T_IsDistributiveLattice_814 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_832 v0
  = coe d_isEquivalence_762 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.isPartialEquivalence
d_isPartialEquivalence_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_834 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_834 v6
du_isPartialEquivalence_834 ::
  T_IsDistributiveLattice_814 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_834 v0
  = let v1 = d_isLattice_824 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_762 (coe v1))
-- Algebra.Structures.IsDistributiveLattice._.refl
d_refl_836 :: T_IsDistributiveLattice_814 -> AgdaAny -> AgdaAny
d_refl_836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_762 (coe d_isLattice_824 (coe v0)))
-- Algebra.Structures.IsDistributiveLattice._.reflexive
d_reflexive_838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_838 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_838 v6
du_reflexive_838 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_838 v0
  = let v1 = d_isLattice_824 (coe v0) in
    \ v2 v3 v4 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_762 (coe v1)) v2
-- Algebra.Structures.IsDistributiveLattice._.sym
d_sym_840 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_840 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_762 (coe d_isLattice_824 (coe v0)))
-- Algebra.Structures.IsDistributiveLattice._.trans
d_trans_842 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_842 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_762 (coe d_isLattice_824 (coe v0)))
-- Algebra.Structures.IsDistributiveLattice._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_844 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'absorbs'45''8744'_844 v6
du_'8743''45'absorbs'45''8744'_844 ::
  T_IsDistributiveLattice_814 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_844 v0
  = coe
      du_'8743''45'absorbs'45''8744'_792 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∧-assoc
d_'8743''45'assoc_846 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_846 v0
  = coe d_'8743''45'assoc_772 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∧-comm
d_'8743''45'comm_848 ::
  T_IsDistributiveLattice_814 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_848 v0
  = coe d_'8743''45'comm_770 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∧-cong
d_'8743''45'cong_850 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_850 v0
  = coe d_'8743''45'cong_774 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∧-congʳ
d_'8743''45'cong'691'_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'691'_852 v6
du_'8743''45'cong'691'_852 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_852 v0
  = coe du_'8743''45'cong'691'_798 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∧-congˡ
d_'8743''45'cong'737'_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8743''45'cong'737'_854 v6
du_'8743''45'cong'737'_854 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_854 v0
  = coe du_'8743''45'cong'737'_794 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'absorbs'45''8743'_856 v6
du_'8744''45'absorbs'45''8743'_856 ::
  T_IsDistributiveLattice_814 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_856 v0
  = coe
      du_'8744''45'absorbs'45''8743'_790 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∨-assoc
d_'8744''45'assoc_858 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_858 v0
  = coe d_'8744''45'assoc_766 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∨-comm
d_'8744''45'comm_860 ::
  T_IsDistributiveLattice_814 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_860 v0
  = coe d_'8744''45'comm_764 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∨-cong
d_'8744''45'cong_862 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_862 v0
  = coe d_'8744''45'cong_768 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∨-congʳ
d_'8744''45'cong'691'_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_864 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'691'_864 v6
du_'8744''45'cong'691'_864 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_864 v0
  = coe du_'8744''45'cong'691'_806 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice._.∨-congˡ
d_'8744''45'cong'737'_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45'cong'737'_866 v6
du_'8744''45'cong'737'_866 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_866 v0
  = coe du_'8744''45'cong'737'_802 (coe d_isLattice_824 (coe v0))
-- Algebra.Structures.IsDistributiveLattice.∨-∧-distribʳ
d_'8744''45''8743''45'distrib'691'_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45''8743''45'distrib'691'_868 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8744''45''8743''45'distrib'691'_868 v6
du_'8744''45''8743''45'distrib'691'_868 ::
  T_IsDistributiveLattice_814 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45''8743''45'distrib'691'_868 v0
  = coe d_'8744''45'distrib'691''45''8743'_826 (coe v0)
-- Algebra.Structures.IsNearSemiring
d_IsNearSemiring_876 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiring_876
  = C_IsNearSemiring'46'constructor_22415 T_IsMonoid_358
                                          T_IsSemigroup_194
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_892 :: T_IsNearSemiring_876 -> T_IsMonoid_358
d_'43''45'isMonoid_892 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_22415 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_894 ::
  T_IsNearSemiring_876 -> T_IsSemigroup_194
d_'42''45'isSemigroup_894 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_22415 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.distribʳ
d_distrib'691'_896 ::
  T_IsNearSemiring_876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_896 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_22415 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.zeroˡ
d_zero'737'_898 :: T_IsNearSemiring_876 -> AgdaAny -> AgdaAny
d_zero'737'_898 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_22415 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring._.assoc
d_assoc_902 ::
  T_IsNearSemiring_876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_902 v0
  = coe
      d_assoc_204
      (coe d_isSemigroup_368 (coe d_'43''45'isMonoid_892 (coe v0)))
-- Algebra.Structures.IsNearSemiring._.∙-cong
d_'8729''45'cong_904 ::
  T_IsNearSemiring_876 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_904 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe d_isSemigroup_368 (coe d_'43''45'isMonoid_892 (coe v0))))
-- Algebra.Structures.IsNearSemiring._.∙-congʳ
d_'8729''45'cong'691'_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_906 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_906 v7
du_'8729''45'cong'691'_906 ::
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_906 v0
  = let v1 = d_'43''45'isMonoid_892 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsNearSemiring._.∙-congˡ
d_'8729''45'cong'737'_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_908 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_908 v7
du_'8729''45'cong'737'_908 ::
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_908 v0
  = let v1 = d_'43''45'isMonoid_892 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsNearSemiring._.identity
d_identity_910 ::
  T_IsNearSemiring_876 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_910 v0
  = coe d_identity_370 (coe d_'43''45'isMonoid_892 (coe v0))
-- Algebra.Structures.IsNearSemiring._.identityʳ
d_identity'691'_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_876 -> AgdaAny -> AgdaAny
d_identity'691'_912 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_912 v7
du_identity'691'_912 :: T_IsNearSemiring_876 -> AgdaAny -> AgdaAny
du_identity'691'_912 v0
  = coe du_identity'691'_400 (coe d_'43''45'isMonoid_892 (coe v0))
-- Algebra.Structures.IsNearSemiring._.identityˡ
d_identity'737'_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_876 -> AgdaAny -> AgdaAny
d_identity'737'_914 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_914 v7
du_identity'737'_914 :: T_IsNearSemiring_876 -> AgdaAny -> AgdaAny
du_identity'737'_914 v0
  = coe du_identity'737'_398 (coe d_'43''45'isMonoid_892 (coe v0))
-- Algebra.Structures.IsNearSemiring._.isMagma
d_isMagma_916 :: T_IsNearSemiring_876 -> T_IsMagma_86
d_isMagma_916 v0
  = coe
      d_isMagma_202
      (coe d_isSemigroup_368 (coe d_'43''45'isMonoid_892 (coe v0)))
-- Algebra.Structures.IsNearSemiring._.isSemigroup
d_isSemigroup_918 :: T_IsNearSemiring_876 -> T_IsSemigroup_194
d_isSemigroup_918 v0
  = coe d_isSemigroup_368 (coe d_'43''45'isMonoid_892 (coe v0))
-- Algebra.Structures.IsNearSemiring._.isEquivalence
d_isEquivalence_920 ::
  T_IsNearSemiring_876 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_920 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe d_isSemigroup_368 (coe d_'43''45'isMonoid_892 (coe v0))))
-- Algebra.Structures.IsNearSemiring._.isPartialEquivalence
d_isPartialEquivalence_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_876 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_922 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_922 v7
du_isPartialEquivalence_922 ::
  T_IsNearSemiring_876 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_922 v0
  = let v1 = d_'43''45'isMonoid_892 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    let v3 = d_isMagma_202 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v3))
-- Algebra.Structures.IsNearSemiring._.refl
d_refl_924 :: T_IsNearSemiring_876 -> AgdaAny -> AgdaAny
d_refl_924 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_'43''45'isMonoid_892 (coe v0)))))
-- Algebra.Structures.IsNearSemiring._.reflexive
d_reflexive_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_876 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_926 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_926 v7
du_reflexive_926 ::
  T_IsNearSemiring_876 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_926 v0
  = let v1 = d_'43''45'isMonoid_892 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    let v3 = d_isMagma_202 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v3)) v4
-- Algebra.Structures.IsNearSemiring._.setoid
d_setoid_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_876 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_928 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_928 v7
du_setoid_928 ::
  T_IsNearSemiring_876 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_928 v0
  = let v1 = d_'43''45'isMonoid_892 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsNearSemiring._.sym
d_sym_930 ::
  T_IsNearSemiring_876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_930 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_'43''45'isMonoid_892 (coe v0)))))
-- Algebra.Structures.IsNearSemiring._.trans
d_trans_932 ::
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_932 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe d_isSemigroup_368 (coe d_'43''45'isMonoid_892 (coe v0)))))
-- Algebra.Structures.IsNearSemiring._.assoc
d_assoc_936 ::
  T_IsNearSemiring_876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_936 v0
  = coe d_assoc_204 (coe d_'42''45'isSemigroup_894 (coe v0))
-- Algebra.Structures.IsNearSemiring._.∙-cong
d_'8729''45'cong_938 ::
  T_IsNearSemiring_876 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_938 v0
  = coe
      d_'8729''45'cong_96
      (coe d_isMagma_202 (coe d_'42''45'isSemigroup_894 (coe v0)))
-- Algebra.Structures.IsNearSemiring._.∙-congʳ
d_'8729''45'cong'691'_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_940 v7
du_'8729''45'cong'691'_940 ::
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_940 v0
  = let v1 = d_'42''45'isSemigroup_894 (coe v0) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsNearSemiring._.∙-congˡ
d_'8729''45'cong'737'_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_942 v7
du_'8729''45'cong'737'_942 ::
  T_IsNearSemiring_876 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_942 v0
  = let v1 = d_'42''45'isSemigroup_894 (coe v0) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v1))
-- Algebra.Structures.IsNearSemiring._.isMagma
d_isMagma_944 :: T_IsNearSemiring_876 -> T_IsMagma_86
d_isMagma_944 v0
  = coe d_isMagma_202 (coe d_'42''45'isSemigroup_894 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne
d_IsSemiringWithoutOne_952 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringWithoutOne_952
  = C_IsSemiringWithoutOne'46'constructor_24269 T_IsCommutativeMonoid_406
                                                T_IsSemigroup_194
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_968 ::
  T_IsSemiringWithoutOne_952 -> T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_968 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_24269 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_970 ::
  T_IsSemiringWithoutOne_952 -> T_IsSemigroup_194
d_'42''45'isSemigroup_970 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_24269 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.distrib
d_distrib_972 ::
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_972 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_24269 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.zero
d_zero_974 ::
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_974 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_24269 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne._.comm
d_comm_978 ::
  T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_978 v0
  = coe d_comm_418 (coe d_'43''45'isCommutativeMonoid_968 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_980 v7
du_isCommutativeMagma_980 ::
  T_IsSemiringWithoutOne_952 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_980 v0
  = let v1 = d_'43''45'isCommutativeMonoid_968 (coe v0) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v1))
-- Algebra.Structures.IsSemiringWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_982 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_982 v7
du_isCommutativeSemigroup_982 ::
  T_IsSemiringWithoutOne_952 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_982 v0
  = coe
      du_isCommutativeSemigroup_454
      (coe d_'43''45'isCommutativeMonoid_968 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.isMonoid
d_isMonoid_984 :: T_IsSemiringWithoutOne_952 -> T_IsMonoid_358
d_isMonoid_984 v0
  = coe
      d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.zeroˡ
d_zero'737'_986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
d_zero'737'_986 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'737'_986 v7
du_zero'737'_986 ::
  T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
du_zero'737'_986 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_zero_974 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.zeroʳ
d_zero'691'_988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
d_zero'691'_988 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'691'_988 v7
du_zero'691'_988 ::
  T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
du_zero'691'_988 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_zero_974 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> T_IsNearSemiring_876
d_isNearSemiring_990 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_990 v7
du_isNearSemiring_990 ::
  T_IsSemiringWithoutOne_952 -> T_IsNearSemiring_876
du_isNearSemiring_990 v0
  = coe
      C_IsNearSemiring'46'constructor_22415
      (coe
         d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0)))
      (coe d_'42''45'isSemigroup_970 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_distrib_972 (coe v0)))
      (coe du_zero'737'_986 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.assoc
d_assoc_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_994 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_assoc_994 v7
du_assoc_994 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_994 v0
  = coe d_assoc_204 (coe d_'42''45'isSemigroup_970 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-cong
d_'8729''45'cong_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_996 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong_996 v7
du_'8729''45'cong_996 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_996 v0
  = coe
      d_'8729''45'cong_96
      (coe d_isMagma_202 (coe d_'42''45'isSemigroup_970 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_998 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_998 v7
du_'8729''45'cong'691'_998 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_998 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    let v2 = d_'42''45'isSemigroup_894 (coe v1) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1000 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1000 v7
du_'8729''45'cong'737'_1000 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1000 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    let v2 = d_'42''45'isSemigroup_894 (coe v1) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsSemiringWithoutOne._.isMagma
d_isMagma_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> T_IsMagma_86
d_isMagma_1002 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_isMagma_1002 v7
du_isMagma_1002 :: T_IsSemiringWithoutOne_952 -> T_IsMagma_86
du_isMagma_1002 v0
  = coe d_isMagma_202 (coe d_'42''45'isSemigroup_970 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.assoc
d_assoc_1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1004 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_assoc_1004 v7
du_assoc_1004 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1004 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-cong
d_'8729''45'cong_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1006 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong_1006 v7
du_'8729''45'cong_1006 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1006 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1008 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1008 v7
du_'8729''45'cong'691'_1008 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1008 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    let v2 = d_'43''45'isMonoid_892 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1010 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1010 v7
du_'8729''45'cong'737'_1010 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1010 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    let v2 = d_'43''45'isMonoid_892 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsSemiringWithoutOne._.identity
d_identity_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1012 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity_1012 v7
du_identity_1012 ::
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1012 v0
  = coe
      d_identity_370
      (coe
         d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutOne._.identityʳ
d_identity'691'_1014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
d_identity'691'_1014 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1014 v7
du_identity'691'_1014 ::
  T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
du_identity'691'_1014 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    coe du_identity'691'_400 (coe d_'43''45'isMonoid_892 (coe v1))
-- Algebra.Structures.IsSemiringWithoutOne._.identityˡ
d_identity'737'_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
d_identity'737'_1016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1016 v7
du_identity'737'_1016 ::
  T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
du_identity'737'_1016 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    coe du_identity'737'_398 (coe d_'43''45'isMonoid_892 (coe v1))
-- Algebra.Structures.IsSemiringWithoutOne._.isMagma
d_isMagma_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> T_IsMagma_86
d_isMagma_1018 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_isMagma_1018 v7
du_isMagma_1018 :: T_IsSemiringWithoutOne_952 -> T_IsMagma_86
du_isMagma_1018 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutOne._.isSemigroup
d_isSemigroup_1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> T_IsSemigroup_194
d_isSemigroup_1020 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemigroup_1020 v7
du_isSemigroup_1020 ::
  T_IsSemiringWithoutOne_952 -> T_IsSemigroup_194
du_isSemigroup_1020 v0
  = coe
      d_isSemigroup_368
      (coe
         d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutOne._.distribʳ
d_distrib'691'_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1022 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_distrib'691'_1022 v7
du_distrib'691'_1022 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1022 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_972 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.isEquivalence
d_isEquivalence_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1024 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isEquivalence_1024 v7
du_isEquivalence_1024 ::
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1024 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1026 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1026 v7
du_isPartialEquivalence_1026 ::
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1026 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    let v2 = d_'43''45'isMonoid_892 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v4))
-- Algebra.Structures.IsSemiringWithoutOne._.refl
d_refl_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
d_refl_1028 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_1028 v7
du_refl_1028 :: T_IsSemiringWithoutOne_952 -> AgdaAny -> AgdaAny
du_refl_1028 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutOne._.reflexive
d_reflexive_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1030 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1030 v7
du_reflexive_1030 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1030 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    let v2 = d_'43''45'isMonoid_892 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v4)) v5
-- Algebra.Structures.IsSemiringWithoutOne._.setoid
d_setoid_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1032 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1032 v7
du_setoid_1032 ::
  T_IsSemiringWithoutOne_952 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1032 v0
  = let v1 = coe du_isNearSemiring_990 (coe v0) in
    let v2 = d_'43''45'isMonoid_892 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsSemiringWithoutOne._.sym
d_sym_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1034 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_sym_1034 v7
du_sym_1034 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1034 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutOne._.trans
d_trans_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_trans_1036 v7
du_trans_1036 ::
  T_IsSemiringWithoutOne_952 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1036 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_1044 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsCommutativeSemiringWithoutOne_1044
  = C_IsCommutativeSemiringWithoutOne'46'constructor_27189 T_IsSemiringWithoutOne_952
                                                           (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_1056 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1056 v0
  = case coe v0 of
      C_IsCommutativeSemiringWithoutOne'46'constructor_27189 v1 v2
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_1058 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1058 v0
  = case coe v0 of
      C_IsCommutativeSemiringWithoutOne'46'constructor_27189 v1 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc
d_assoc_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_assoc_1062 v7
du_assoc_1062 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1062 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe d_assoc_204 (coe d_'42''45'isSemigroup_970 (coe v1))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong
d_'8729''45'cong_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1064 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong_1064 v7
du_'8729''45'cong_1064 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1064 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      d_'8729''45'cong_96
      (coe d_isMagma_202 (coe d_'42''45'isSemigroup_970 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1066 v7
du_'8729''45'cong'691'_1066 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1066 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    let v3 = d_'42''45'isSemigroup_894 (coe v2) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1068 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1068 v7
du_'8729''45'cong'737'_1068 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1068 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    let v3 = d_'42''45'isSemigroup_894 (coe v2) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMagma
d_isMagma_1070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeSemiringWithoutOne_1044 -> T_IsMagma_86
d_isMagma_1070 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_isMagma_1070 v7
du_isMagma_1070 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsMagma_86
du_isMagma_1070 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe d_isMagma_202 (coe d_'42''45'isSemigroup_970 (coe v1))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup
d_'42''45'isSemigroup_1072 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsSemigroup_194
d_'42''45'isSemigroup_1072 v0
  = coe
      d_'42''45'isSemigroup_970
      (coe d_isSemiringWithoutOne_1056 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc
d_assoc_1074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1074 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_assoc_1074 v7
du_assoc_1074 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_1074 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.comm
d_comm_1076 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1076 v0
  = coe
      d_comm_418
      (coe
         d_'43''45'isCommutativeMonoid_968
         (coe d_isSemiringWithoutOne_1056 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong
d_'8729''45'cong_1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong_1078 v7
du_'8729''45'cong_1078 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_1078 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1)))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1080 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1080 v7
du_'8729''45'cong'691'_1080 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1080 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    let v3 = d_'43''45'isMonoid_892 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1082 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1082 v7
du_'8729''45'cong'737'_1082 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1082 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    let v3 = d_'43''45'isMonoid_892 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.identity
d_identity_1084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity_1084 v7
du_identity_1084 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1084 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      d_identity_370
      (coe
         d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityʳ
d_identity'691'_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
d_identity'691'_1086 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1086 v7
du_identity'691'_1086 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
du_identity'691'_1086 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    coe du_identity'691'_400 (coe d_'43''45'isMonoid_892 (coe v2))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityˡ
d_identity'737'_1088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
d_identity'737'_1088 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1088 v7
du_identity'737'_1088 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
du_identity'737'_1088 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    coe du_identity'737'_398 (coe d_'43''45'isMonoid_892 (coe v2))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_1090 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1090 v7
du_isCommutativeMagma_1090 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_1090 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_968 (coe v1) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v2))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1092 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1092 v0
  = coe
      d_'43''45'isCommutativeMonoid_968
      (coe d_isSemiringWithoutOne_1056 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1094 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_1094 v7
du_isCommutativeSemigroup_1094 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1094 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      du_isCommutativeSemigroup_454
      (coe d_'43''45'isCommutativeMonoid_968 (coe v1))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMagma
d_isMagma_1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeSemiringWithoutOne_1044 -> T_IsMagma_86
d_isMagma_1096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_isMagma_1096 v7
du_isMagma_1096 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsMagma_86
du_isMagma_1096 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMonoid
d_isMonoid_1098 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsMonoid_358
d_isMonoid_1098 v0
  = coe
      d_isMonoid_416
      (coe
         d_'43''45'isCommutativeMonoid_968
         (coe d_isSemiringWithoutOne_1056 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isSemigroup
d_isSemigroup_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsSemigroup_194
d_isSemigroup_1100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isSemigroup_1100 v7
du_isSemigroup_1100 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsSemigroup_194
du_isSemigroup_1100 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      d_isSemigroup_368
      (coe
         d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.distrib
d_distrib_1102 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1102 v0
  = coe d_distrib_972 (coe d_isSemiringWithoutOne_1056 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.distribʳ
d_distrib'691'_1104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_distrib'691'_1104 v7
du_distrib'691'_1104 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1104 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_972 (coe v1))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isEquivalence
d_isEquivalence_1106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isEquivalence_1106 v7
du_isEquivalence_1106 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1106 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1)))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isNearSemiring
d_isNearSemiring_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsNearSemiring_876
d_isNearSemiring_1108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_1108 v7
du_isNearSemiring_1108 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsNearSemiring_876
du_isNearSemiring_1108 v0
  = coe
      du_isNearSemiring_990 (coe d_isSemiringWithoutOne_1056 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_1110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1110 v7
du_isPartialEquivalence_1110 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1110 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    let v3 = d_'43''45'isMonoid_892 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    let v5 = d_isMagma_202 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v5))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.refl
d_refl_1112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
d_refl_1112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_1112 v7
du_refl_1112 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
du_refl_1112 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.reflexive
d_reflexive_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1114 v7
du_reflexive_1114 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1114 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    let v3 = d_'43''45'isMonoid_892 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    let v5 = d_isMagma_202 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v5)) v6
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.setoid
d_setoid_1116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1116 v7
du_setoid_1116 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1116 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    let v2 = coe du_isNearSemiring_990 (coe v1) in
    let v3 = d_'43''45'isMonoid_892 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.sym
d_sym_1118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_sym_1118 v7
du_sym_1118 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1118 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.trans
d_trans_1120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_trans_1120 v7
du_trans_1120 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1120 v0
  = let v1 = d_isSemiringWithoutOne_1056 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_968 (coe v1))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zero
d_zero_1122 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1122 v0
  = coe d_zero_974 (coe d_isSemiringWithoutOne_1056 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroʳ
d_zero'691'_1124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
d_zero'691'_1124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'691'_1124 v7
du_zero'691'_1124 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
du_zero'691'_1124 v0
  = coe du_zero'691'_988 (coe d_isSemiringWithoutOne_1056 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroˡ
d_zero'737'_1126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
d_zero'737'_1126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'737'_1126 v7
du_zero'737'_1126 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> AgdaAny -> AgdaAny
du_zero'737'_1126 v0
  = coe du_zero'737'_986 (coe d_isSemiringWithoutOne_1056 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 ->
  T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_1128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7
  = du_'42''45'isCommutativeSemigroup_1128 v7
du_'42''45'isCommutativeSemigroup_1128 ::
  T_IsCommutativeSemiringWithoutOne_1044 ->
  T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_1128 v0
  = coe
      C_IsCommutativeSemigroup'46'constructor_4999
      (coe
         d_'42''45'isSemigroup_970
         (coe d_isSemiringWithoutOne_1056 (coe v0)))
      (coe d_'42''45'comm_1058 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_1132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1132 v7
du_isCommutativeMagma_1132 ::
  T_IsCommutativeSemiringWithoutOne_1044 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_1132 v0
  = coe
      du_isCommutativeMagma_308
      (coe du_'42''45'isCommutativeSemigroup_1128 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_1142 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
data T_IsSemiringWithoutAnnihilatingZero_1142
  = C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677 T_IsCommutativeMonoid_406
                                                             T_IsMonoid_358
                                                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1158 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1158 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677 v1 v2 v3
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_1160 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> T_IsMonoid_358
d_'42''45'isMonoid_1160 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677 v1 v2 v3
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_1162 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1162 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677 v1 v2 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_1164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1164 v8
du_distrib'737'_1164 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1164 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_1162 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_1166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1166 v8
du_distrib'691'_1166 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1166 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_1162 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc
d_assoc_1170 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1170 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_1158 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.comm
d_comm_1172 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1172 v0
  = coe d_comm_418 (coe d_'43''45'isCommutativeMonoid_1158 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong
d_'8729''45'cong_1174 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1174 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_1158 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ
d_'8729''45'cong'691'_1176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1176 v8
du_'8729''45'cong'691'_1176 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1176 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1158 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ
d_'8729''45'cong'737'_1178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1178 v8
du_'8729''45'cong'737'_1178 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1178 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1158 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity
d_identity_1180 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1180 v0
  = coe
      d_identity_370
      (coe
         d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_1158 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ
d_identity'691'_1182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
d_identity'691'_1182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1182 v8
du_identity'691'_1182 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
du_identity'691'_1182 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1158 (coe v0) in
    coe du_identity'691'_400 (coe d_isMonoid_416 (coe v1))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ
d_identity'737'_1184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
d_identity'737'_1184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1184 v8
du_identity'737'_1184 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
du_identity'737'_1184 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1158 (coe v0) in
    coe du_identity'737'_398 (coe d_isMonoid_416 (coe v1))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isCommutativeMagma
d_isCommutativeMagma_1186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  T_IsCommutativeMagma_122
d_isCommutativeMagma_1186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1186 v8
du_isCommutativeMagma_1186 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  T_IsCommutativeMagma_122
du_isCommutativeMagma_1186 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1158 (coe v0) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v1))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isCommutativeSemigroup
d_isCommutativeSemigroup_1188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1188 v8
du_isCommutativeSemigroup_1188 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1188 v0
  = coe
      du_isCommutativeSemigroup_454
      (coe d_'43''45'isCommutativeMonoid_1158 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma
d_isMagma_1190 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> T_IsMagma_86
d_isMagma_1190 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_1158 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMonoid
d_isMonoid_1192 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> T_IsMonoid_358
d_isMonoid_1192 v0
  = coe
      d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_1158 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup
d_isSemigroup_1194 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> T_IsSemigroup_194
d_isSemigroup_1194 v0
  = coe
      d_isSemigroup_368
      (coe
         d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_1158 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isEquivalence
d_isEquivalence_1196 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1196 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416 (coe d_'43''45'isCommutativeMonoid_1158 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isPartialEquivalence
d_isPartialEquivalence_1198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1198 v8
du_isPartialEquivalence_1198 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1198 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1158 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v4))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.refl
d_refl_1200 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
d_refl_1200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe d_'43''45'isCommutativeMonoid_1158 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.reflexive
d_reflexive_1202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1202 v8
du_reflexive_1202 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1202 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1158 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    let v4 = d_isMagma_202 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v4)) v5
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.setoid
d_setoid_1204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1204 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1204 v8
du_setoid_1204 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1204 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1158 (coe v0) in
    let v2 = d_isMonoid_416 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.sym
d_sym_1206 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe d_'43''45'isCommutativeMonoid_1158 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.trans
d_trans_1208 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1208 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe d_'43''45'isCommutativeMonoid_1158 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc
d_assoc_1212 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1212 v0
  = coe
      d_assoc_204
      (coe d_isSemigroup_368 (coe d_'42''45'isMonoid_1160 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong
d_'8729''45'cong_1214 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1214 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe d_isSemigroup_368 (coe d_'42''45'isMonoid_1160 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ
d_'8729''45'cong'691'_1216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1216 v8
du_'8729''45'cong'691'_1216 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1216 v0
  = let v1 = d_'42''45'isMonoid_1160 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ
d_'8729''45'cong'737'_1218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1218 v8
du_'8729''45'cong'737'_1218 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1218 v0
  = let v1 = d_'42''45'isMonoid_1160 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity
d_identity_1220 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1220 v0
  = coe d_identity_370 (coe d_'42''45'isMonoid_1160 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ
d_identity'691'_1222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
d_identity'691'_1222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1222 v8
du_identity'691'_1222 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
du_identity'691'_1222 v0
  = coe du_identity'691'_400 (coe d_'42''45'isMonoid_1160 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ
d_identity'737'_1224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
d_identity'737'_1224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1224 v8
du_identity'737'_1224 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> AgdaAny -> AgdaAny
du_identity'737'_1224 v0
  = coe du_identity'737'_398 (coe d_'42''45'isMonoid_1160 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma
d_isMagma_1226 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> T_IsMagma_86
d_isMagma_1226 v0
  = coe
      d_isMagma_202
      (coe d_isSemigroup_368 (coe d_'42''45'isMonoid_1160 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup
d_isSemigroup_1228 ::
  T_IsSemiringWithoutAnnihilatingZero_1142 -> T_IsSemigroup_194
d_isSemigroup_1228 v0
  = coe d_isSemigroup_368 (coe d_'42''45'isMonoid_1160 (coe v0))
-- Algebra.Structures.IsSemiring
d_IsSemiring_1238 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsSemiring_1238
  = C_IsSemiring'46'constructor_32891 T_IsSemiringWithoutAnnihilatingZero_1142
                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1252 ::
  T_IsSemiring_1238 -> T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_1252 v0
  = case coe v0 of
      C_IsSemiring'46'constructor_32891 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiring.zero
d_zero_1254 ::
  T_IsSemiring_1238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1254 v0
  = case coe v0 of
      C_IsSemiring'46'constructor_32891 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiring._.assoc
d_assoc_1258 ::
  T_IsSemiring_1238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1258 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_'42''45'isMonoid_1160
            (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))))
-- Algebra.Structures.IsSemiring._.∙-cong
d_'8729''45'cong_1260 ::
  T_IsSemiring_1238 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1260 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_'42''45'isMonoid_1160
               (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))))
-- Algebra.Structures.IsSemiring._.∙-congʳ
d_'8729''45'cong'691'_1262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1262 v8
du_'8729''45'cong'691'_1262 ::
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1262 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'42''45'isMonoid_1160 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsSemiring._.∙-congˡ
d_'8729''45'cong'737'_1264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1264 v8
du_'8729''45'cong'737'_1264 ::
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1264 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'42''45'isMonoid_1160 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsSemiring._.identity
d_identity_1266 ::
  T_IsSemiring_1238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1266 v0
  = coe
      d_identity_370
      (coe
         d_'42''45'isMonoid_1160
         (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))
-- Algebra.Structures.IsSemiring._.identityʳ
d_identity'691'_1268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1238 -> AgdaAny -> AgdaAny
d_identity'691'_1268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1268 v8
du_identity'691'_1268 :: T_IsSemiring_1238 -> AgdaAny -> AgdaAny
du_identity'691'_1268 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    coe du_identity'691'_400 (coe d_'42''45'isMonoid_1160 (coe v1))
-- Algebra.Structures.IsSemiring._.identityˡ
d_identity'737'_1270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1238 -> AgdaAny -> AgdaAny
d_identity'737'_1270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1270 v8
du_identity'737'_1270 :: T_IsSemiring_1238 -> AgdaAny -> AgdaAny
du_identity'737'_1270 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    coe du_identity'737'_398 (coe d_'42''45'isMonoid_1160 (coe v1))
-- Algebra.Structures.IsSemiring._.isMagma
d_isMagma_1272 :: T_IsSemiring_1238 -> T_IsMagma_86
d_isMagma_1272 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_'42''45'isMonoid_1160
            (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))))
-- Algebra.Structures.IsSemiring._.*-isMonoid
d_'42''45'isMonoid_1274 :: T_IsSemiring_1238 -> T_IsMonoid_358
d_'42''45'isMonoid_1274 v0
  = coe
      d_'42''45'isMonoid_1160
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))
-- Algebra.Structures.IsSemiring._.isSemigroup
d_isSemigroup_1276 :: T_IsSemiring_1238 -> T_IsSemigroup_194
d_isSemigroup_1276 v0
  = coe
      d_isSemigroup_368
      (coe
         d_'42''45'isMonoid_1160
         (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))
-- Algebra.Structures.IsSemiring._.assoc
d_assoc_1278 ::
  T_IsSemiring_1238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1278 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416
            (coe
               d_'43''45'isCommutativeMonoid_1158
               (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))))
-- Algebra.Structures.IsSemiring._.comm
d_comm_1280 :: T_IsSemiring_1238 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1280 v0
  = coe
      d_comm_418
      (coe
         d_'43''45'isCommutativeMonoid_1158
         (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))
-- Algebra.Structures.IsSemiring._.∙-cong
d_'8729''45'cong_1282 ::
  T_IsSemiring_1238 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1282 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416
               (coe
                  d_'43''45'isCommutativeMonoid_1158
                  (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))))))
-- Algebra.Structures.IsSemiring._.∙-congʳ
d_'8729''45'cong'691'_1284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1284 v8
du_'8729''45'cong'691'_1284 ::
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1284 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_1158 (coe v1) in
    let v3 = d_isMonoid_416 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsSemiring._.∙-congˡ
d_'8729''45'cong'737'_1286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1286 v8
du_'8729''45'cong'737'_1286 ::
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1286 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_1158 (coe v1) in
    let v3 = d_isMonoid_416 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsSemiring._.identity
d_identity_1288 ::
  T_IsSemiring_1238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1288 v0
  = coe
      d_identity_370
      (coe
         d_isMonoid_416
         (coe
            d_'43''45'isCommutativeMonoid_1158
            (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))))
-- Algebra.Structures.IsSemiring._.identityʳ
d_identity'691'_1290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1238 -> AgdaAny -> AgdaAny
d_identity'691'_1290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1290 v8
du_identity'691'_1290 :: T_IsSemiring_1238 -> AgdaAny -> AgdaAny
du_identity'691'_1290 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_1158 (coe v1) in
    coe du_identity'691'_400 (coe d_isMonoid_416 (coe v2))
-- Algebra.Structures.IsSemiring._.identityˡ
d_identity'737'_1292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1238 -> AgdaAny -> AgdaAny
d_identity'737'_1292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1292 v8
du_identity'737'_1292 :: T_IsSemiring_1238 -> AgdaAny -> AgdaAny
du_identity'737'_1292 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_1158 (coe v1) in
    coe du_identity'737'_398 (coe d_isMonoid_416 (coe v2))
-- Algebra.Structures.IsSemiring._.isCommutativeMagma
d_isCommutativeMagma_1294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1238 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_1294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1294 v8
du_isCommutativeMagma_1294 ::
  T_IsSemiring_1238 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_1294 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_1158 (coe v1) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v2))
-- Algebra.Structures.IsSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1296 ::
  T_IsSemiring_1238 -> T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1296 v0
  = coe
      d_'43''45'isCommutativeMonoid_1158
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))
-- Algebra.Structures.IsSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsSemiring_1238 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1298 v8
du_isCommutativeSemigroup_1298 ::
  T_IsSemiring_1238 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1298 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    coe
      du_isCommutativeSemigroup_454
      (coe d_'43''45'isCommutativeMonoid_1158 (coe v1))
-- Algebra.Structures.IsSemiring._.isMagma
d_isMagma_1300 :: T_IsSemiring_1238 -> T_IsMagma_86
d_isMagma_1300 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416
            (coe
               d_'43''45'isCommutativeMonoid_1158
               (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))))
-- Algebra.Structures.IsSemiring._.isMonoid
d_isMonoid_1302 :: T_IsSemiring_1238 -> T_IsMonoid_358
d_isMonoid_1302 v0
  = coe
      d_isMonoid_416
      (coe
         d_'43''45'isCommutativeMonoid_1158
         (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))
-- Algebra.Structures.IsSemiring._.isSemigroup
d_isSemigroup_1304 :: T_IsSemiring_1238 -> T_IsSemigroup_194
d_isSemigroup_1304 v0
  = coe
      d_isSemigroup_368
      (coe
         d_isMonoid_416
         (coe
            d_'43''45'isCommutativeMonoid_1158
            (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))))
-- Algebra.Structures.IsSemiring._.distrib
d_distrib_1306 ::
  T_IsSemiring_1238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1306 v0
  = coe
      d_distrib_1162
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))
-- Algebra.Structures.IsSemiring._.distribʳ
d_distrib'691'_1308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1308 v8
du_distrib'691'_1308 ::
  T_IsSemiring_1238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1308 v0
  = coe
      du_distrib'691'_1166
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))
-- Algebra.Structures.IsSemiring._.distribˡ
d_distrib'737'_1310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1310 v8
du_distrib'737'_1310 ::
  T_IsSemiring_1238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1310 v0
  = coe
      du_distrib'737'_1164
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))
-- Algebra.Structures.IsSemiring._.isEquivalence
d_isEquivalence_1312 ::
  T_IsSemiring_1238 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1312 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416
               (coe
                  d_'43''45'isCommutativeMonoid_1158
                  (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))))))
-- Algebra.Structures.IsSemiring._.isPartialEquivalence
d_isPartialEquivalence_1314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1314 v8
du_isPartialEquivalence_1314 ::
  T_IsSemiring_1238 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1314 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_1158 (coe v1) in
    let v3 = d_isMonoid_416 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    let v5 = d_isMagma_202 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v5))
-- Algebra.Structures.IsSemiring._.refl
d_refl_1316 :: T_IsSemiring_1238 -> AgdaAny -> AgdaAny
d_refl_1316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))))))
-- Algebra.Structures.IsSemiring._.reflexive
d_reflexive_1318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1318 v8
du_reflexive_1318 ::
  T_IsSemiring_1238 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1318 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_1158 (coe v1) in
    let v3 = d_isMonoid_416 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    let v5 = d_isMagma_202 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v5)) v6
-- Algebra.Structures.IsSemiring._.setoid
d_setoid_1320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1238 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1320 v8
du_setoid_1320 ::
  T_IsSemiring_1238 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1320 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v0) in
    let v2 = d_'43''45'isCommutativeMonoid_1158 (coe v1) in
    let v3 = d_isMonoid_416 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsSemiring._.sym
d_sym_1322 ::
  T_IsSemiring_1238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))))))
-- Algebra.Structures.IsSemiring._.trans
d_trans_1324 ::
  T_IsSemiring_1238 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1324 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))))))
-- Algebra.Structures.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsSemiring_1238 -> T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1326 v8
du_isSemiringWithoutOne_1326 ::
  T_IsSemiring_1238 -> T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_1326 v0
  = coe
      C_IsSemiringWithoutOne'46'constructor_24269
      (coe
         d_'43''45'isCommutativeMonoid_1158
         (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))
      (coe
         d_isSemigroup_368
         (coe
            d_'42''45'isMonoid_1160
            (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0))))
      (coe
         d_distrib_1162
         (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v0)))
      (coe d_zero_1254 (coe v0))
-- Algebra.Structures.IsSemiring._.isNearSemiring
d_isNearSemiring_1330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1238 -> T_IsNearSemiring_876
d_isNearSemiring_1330 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1330 v8
du_isNearSemiring_1330 :: T_IsSemiring_1238 -> T_IsNearSemiring_876
du_isNearSemiring_1330 v0
  = coe
      du_isNearSemiring_990 (coe du_isSemiringWithoutOne_1326 (coe v0))
-- Algebra.Structures.IsSemiring._.zeroʳ
d_zero'691'_1332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1238 -> AgdaAny -> AgdaAny
d_zero'691'_1332 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1332 v8
du_zero'691'_1332 :: T_IsSemiring_1238 -> AgdaAny -> AgdaAny
du_zero'691'_1332 v0
  = coe du_zero'691'_988 (coe du_isSemiringWithoutOne_1326 (coe v0))
-- Algebra.Structures.IsSemiring._.zeroˡ
d_zero'737'_1334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1238 -> AgdaAny -> AgdaAny
d_zero'737'_1334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1334 v8
du_zero'737'_1334 :: T_IsSemiring_1238 -> AgdaAny -> AgdaAny
du_zero'737'_1334 v0
  = coe du_zero'737'_986 (coe du_isSemiringWithoutOne_1326 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring
d_IsCommutativeSemiring_1344 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring_1344
  = C_IsCommutativeSemiring'46'constructor_36165 T_IsSemiring_1238
                                                 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemiring.isSemiring
d_isSemiring_1358 ::
  T_IsCommutativeSemiring_1344 -> T_IsSemiring_1238
d_isSemiring_1358 v0
  = case coe v0 of
      C_IsCommutativeSemiring'46'constructor_36165 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiring.*-comm
d_'42''45'comm_1360 ::
  T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1360 v0
  = case coe v0 of
      C_IsCommutativeSemiring'46'constructor_36165 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiring._.assoc
d_assoc_1364 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1364 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_'42''45'isMonoid_1160
            (coe
               d_isSemiringWithoutAnnihilatingZero_1252
               (coe d_isSemiring_1358 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-cong
d_'8729''45'cong_1366 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1366 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_'42''45'isMonoid_1160
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1252
                  (coe d_isSemiring_1358 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1368 v8
du_'8729''45'cong'691'_1368 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1368 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'42''45'isMonoid_1160 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1370 v8
du_'8729''45'cong'737'_1370 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1370 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'42''45'isMonoid_1160 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsCommutativeSemiring._.identity
d_identity_1372 ::
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1372 v0
  = coe
      d_identity_370
      (coe
         d_'42''45'isMonoid_1160
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1358 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiring._.identityʳ
d_identity'691'_1374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
d_identity'691'_1374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1374 v8
du_identity'691'_1374 ::
  T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
du_identity'691'_1374 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    coe du_identity'691'_400 (coe d_'42''45'isMonoid_1160 (coe v2))
-- Algebra.Structures.IsCommutativeSemiring._.identityˡ
d_identity'737'_1376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
d_identity'737'_1376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1376 v8
du_identity'737'_1376 ::
  T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
du_identity'737'_1376 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    coe du_identity'737'_398 (coe d_'42''45'isMonoid_1160 (coe v2))
-- Algebra.Structures.IsCommutativeSemiring._.isMagma
d_isMagma_1378 :: T_IsCommutativeSemiring_1344 -> T_IsMagma_86
d_isMagma_1378 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_'42''45'isMonoid_1160
            (coe
               d_isSemiringWithoutAnnihilatingZero_1252
               (coe d_isSemiring_1358 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiring._.*-isMonoid
d_'42''45'isMonoid_1380 ::
  T_IsCommutativeSemiring_1344 -> T_IsMonoid_358
d_'42''45'isMonoid_1380 v0
  = coe
      d_'42''45'isMonoid_1160
      (coe
         d_isSemiringWithoutAnnihilatingZero_1252
         (coe d_isSemiring_1358 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.isSemigroup
d_isSemigroup_1382 ::
  T_IsCommutativeSemiring_1344 -> T_IsSemigroup_194
d_isSemigroup_1382 v0
  = coe
      d_isSemigroup_368
      (coe
         d_'42''45'isMonoid_1160
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1358 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiring._.assoc
d_assoc_1384 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1384 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416
            (coe
               d_'43''45'isCommutativeMonoid_1158
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1252
                  (coe d_isSemiring_1358 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiring._.comm
d_comm_1386 ::
  T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1386 v0
  = coe
      d_comm_418
      (coe
         d_'43''45'isCommutativeMonoid_1158
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1358 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-cong
d_'8729''45'cong_1388 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1388 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416
               (coe
                  d_'43''45'isCommutativeMonoid_1158
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1252
                     (coe d_isSemiring_1358 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1390 v8
du_'8729''45'cong'691'_1390 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1390 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'43''45'isCommutativeMonoid_1158 (coe v2) in
    let v4 = d_isMonoid_416 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v5))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1392 v8
du_'8729''45'cong'737'_1392 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1392 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'43''45'isCommutativeMonoid_1158 (coe v2) in
    let v4 = d_isMonoid_416 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v5))
-- Algebra.Structures.IsCommutativeSemiring._.identity
d_identity_1394 ::
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1394 v0
  = coe
      d_identity_370
      (coe
         d_isMonoid_416
         (coe
            d_'43''45'isCommutativeMonoid_1158
            (coe
               d_isSemiringWithoutAnnihilatingZero_1252
               (coe d_isSemiring_1358 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiring._.identityʳ
d_identity'691'_1396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
d_identity'691'_1396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1396 v8
du_identity'691'_1396 ::
  T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
du_identity'691'_1396 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'43''45'isCommutativeMonoid_1158 (coe v2) in
    coe du_identity'691'_400 (coe d_isMonoid_416 (coe v3))
-- Algebra.Structures.IsCommutativeSemiring._.identityˡ
d_identity'737'_1398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
d_identity'737'_1398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1398 v8
du_identity'737'_1398 ::
  T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
du_identity'737'_1398 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'43''45'isCommutativeMonoid_1158 (coe v2) in
    coe du_identity'737'_398 (coe d_isMonoid_416 (coe v3))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_1400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1400 v8
du_isCommutativeMagma_1400 ::
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_1400 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'43''45'isCommutativeMonoid_1158 (coe v2) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v3))
-- Algebra.Structures.IsCommutativeSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1402 ::
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1402 v0
  = coe
      d_'43''45'isCommutativeMonoid_1158
      (coe
         d_isSemiringWithoutAnnihilatingZero_1252
         (coe d_isSemiring_1358 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1404 v8
du_isCommutativeSemigroup_1404 ::
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1404 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    coe
      du_isCommutativeSemigroup_454
      (coe d_'43''45'isCommutativeMonoid_1158 (coe v2))
-- Algebra.Structures.IsCommutativeSemiring._.isMagma
d_isMagma_1406 :: T_IsCommutativeSemiring_1344 -> T_IsMagma_86
d_isMagma_1406 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416
            (coe
               d_'43''45'isCommutativeMonoid_1158
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1252
                  (coe d_isSemiring_1358 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiring._.isMonoid
d_isMonoid_1408 :: T_IsCommutativeSemiring_1344 -> T_IsMonoid_358
d_isMonoid_1408 v0
  = coe
      d_isMonoid_416
      (coe
         d_'43''45'isCommutativeMonoid_1158
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1358 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiring._.isSemigroup
d_isSemigroup_1410 ::
  T_IsCommutativeSemiring_1344 -> T_IsSemigroup_194
d_isSemigroup_1410 v0
  = coe
      d_isSemigroup_368
      (coe
         d_isMonoid_416
         (coe
            d_'43''45'isCommutativeMonoid_1158
            (coe
               d_isSemiringWithoutAnnihilatingZero_1252
               (coe d_isSemiring_1358 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiring._.distrib
d_distrib_1412 ::
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1412 v0
  = coe
      d_distrib_1162
      (coe
         d_isSemiringWithoutAnnihilatingZero_1252
         (coe d_isSemiring_1358 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.distribʳ
d_distrib'691'_1414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1414 v8
du_distrib'691'_1414 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1414 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    coe
      du_distrib'691'_1166
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v1))
-- Algebra.Structures.IsCommutativeSemiring._.distribˡ
d_distrib'737'_1416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1416 v8
du_distrib'737'_1416 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1416 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    coe
      du_distrib'737'_1164
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v1))
-- Algebra.Structures.IsCommutativeSemiring._.isEquivalence
d_isEquivalence_1418 ::
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1418 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416
               (coe
                  d_'43''45'isCommutativeMonoid_1158
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1252
                     (coe d_isSemiring_1358 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiring._.isNearSemiring
d_isNearSemiring_1420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> T_IsNearSemiring_876
d_isNearSemiring_1420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1420 v8
du_isNearSemiring_1420 ::
  T_IsCommutativeSemiring_1344 -> T_IsNearSemiring_876
du_isNearSemiring_1420 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    coe
      du_isNearSemiring_990 (coe du_isSemiringWithoutOne_1326 (coe v1))
-- Algebra.Structures.IsCommutativeSemiring._.isPartialEquivalence
d_isPartialEquivalence_1422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1422 v8
du_isPartialEquivalence_1422 ::
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1422 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'43''45'isCommutativeMonoid_1158 (coe v2) in
    let v4 = d_isMonoid_416 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    let v6 = d_isMagma_202 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v6))
-- Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1424 ::
  T_IsCommutativeSemiring_1344 ->
  T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_1424 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1252
      (coe d_isSemiring_1358 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_1426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 -> T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1426 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1426 v8
du_isSemiringWithoutOne_1426 ::
  T_IsCommutativeSemiring_1344 -> T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_1426 v0
  = coe du_isSemiringWithoutOne_1326 (coe d_isSemiring_1358 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.refl
d_refl_1428 :: T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
d_refl_1428 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1252
                        (coe d_isSemiring_1358 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.reflexive
d_reflexive_1430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1430 v8
du_reflexive_1430 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1430 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'43''45'isCommutativeMonoid_1158 (coe v2) in
    let v4 = d_isMonoid_416 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    let v6 = d_isMagma_202 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v6)) v7
-- Algebra.Structures.IsCommutativeSemiring._.setoid
d_setoid_1432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1432 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1432 v8
du_setoid_1432 ::
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1432 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    let v2 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v1) in
    let v3 = d_'43''45'isCommutativeMonoid_1158 (coe v2) in
    let v4 = d_isMonoid_416 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v5))
-- Algebra.Structures.IsCommutativeSemiring._.sym
d_sym_1434 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1434 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1252
                        (coe d_isSemiring_1358 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.trans
d_trans_1436 ::
  T_IsCommutativeSemiring_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1436 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1252
                        (coe d_isSemiring_1358 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.zero
d_zero_1438 ::
  T_IsCommutativeSemiring_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1438 v0 = coe d_zero_1254 (coe d_isSemiring_1358 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.zeroʳ
d_zero'691'_1440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
d_zero'691'_1440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1440 v8
du_zero'691'_1440 ::
  T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
du_zero'691'_1440 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    coe du_zero'691'_988 (coe du_isSemiringWithoutOne_1326 (coe v1))
-- Algebra.Structures.IsCommutativeSemiring._.zeroˡ
d_zero'737'_1442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
d_zero'737'_1442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1442 v8
du_zero'737'_1442 ::
  T_IsCommutativeSemiring_1344 -> AgdaAny -> AgdaAny
du_zero'737'_1442 v0
  = let v1 = d_isSemiring_1358 (coe v0) in
    coe du_zero'737'_986 (coe du_isSemiringWithoutOne_1326 (coe v1))
-- Algebra.Structures.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 ->
  T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_1444 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 v8
  = du_isCommutativeSemiringWithoutOne_1444 v8
du_isCommutativeSemiringWithoutOne_1444 ::
  T_IsCommutativeSemiring_1344 ->
  T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_1444 v0
  = coe
      C_IsCommutativeSemiringWithoutOne'46'constructor_27189
      (coe du_isSemiringWithoutOne_1326 (coe d_isSemiring_1358 (coe v0)))
      (coe d_'42''45'comm_1360 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1344 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_1448 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1448 v8
du_isCommutativeMagma_1448 ::
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_1448 v0
  = let v1 = coe du_isCommutativeSemiringWithoutOne_1444 (coe v0) in
    coe
      du_isCommutativeMagma_308
      (coe du_'42''45'isCommutativeSemigroup_1128 (coe v1))
-- Algebra.Structures.IsCommutativeSemiring._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_1450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 v8
  = du_'42''45'isCommutativeSemigroup_1450 v8
du_'42''45'isCommutativeSemigroup_1450 ::
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_1450 v0
  = coe
      du_'42''45'isCommutativeSemigroup_1128
      (coe du_isCommutativeSemiringWithoutOne_1444 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_1452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   v8
  = du_'42''45'isCommutativeMonoid_1452 v8
du_'42''45'isCommutativeMonoid_1452 ::
  T_IsCommutativeSemiring_1344 -> T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_1452 v0
  = coe
      C_IsCommutativeMonoid'46'constructor_8363
      (coe
         d_'42''45'isMonoid_1160
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe d_isSemiring_1358 (coe v0))))
      (coe d_'42''45'comm_1360 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_1462 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
data T_IsCancellativeCommutativeSemiring_1462
  = C_IsCancellativeCommutativeSemiring'46'constructor_39923 T_IsCommutativeSemiring_1344
                                                             (AgdaAny ->
                                                              AgdaAny ->
                                                              AgdaAny ->
                                                              (AgdaAny ->
                                                               MAlonzo.Code.Data.Empty.T_'8869'_4) ->
                                                              AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_1476 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_1476 v0
  = case coe v0 of
      C_IsCancellativeCommutativeSemiring'46'constructor_39923 v1 v2
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_1478 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> AgdaAny
d_'42''45'cancel'737''45'nonZero_1478 v0
  = case coe v0 of
      C_IsCancellativeCommutativeSemiring'46'constructor_39923 v1 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.assoc
d_assoc_1482 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1482 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_'42''45'isMonoid_1160
            (coe
               d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-comm
d_'42''45'comm_1484 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1484 v0
  = coe
      d_'42''45'comm_1360 (coe d_isCommutativeSemiring_1476 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-cong
d_'8729''45'cong_1486 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1486 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_'42''45'isMonoid_1160
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1488 v8
du_'8729''45'cong'691'_1488 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1488 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'42''45'isMonoid_1160 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v5))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1490 v8
du_'8729''45'cong'737'_1490 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1490 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'42''45'isMonoid_1160 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v5))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identity
d_identity_1492 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1492 v0
  = coe
      d_identity_370
      (coe
         d_'42''45'isMonoid_1160
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityʳ
d_identity'691'_1494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
d_identity'691'_1494 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1494 v8
du_identity'691'_1494 ::
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
du_identity'691'_1494 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    coe du_identity'691'_400 (coe d_'42''45'isMonoid_1160 (coe v3))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityˡ
d_identity'737'_1496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
d_identity'737'_1496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1496 v8
du_identity'737'_1496 ::
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
du_identity'737'_1496 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    coe du_identity'737'_398 (coe d_'42''45'isMonoid_1160 (coe v3))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeMagma_122
d_isCommutativeMagma_1498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1498 v8
du_isCommutativeMagma_1498 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeMagma_122
du_isCommutativeMagma_1498 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = coe du_isCommutativeSemiringWithoutOne_1444 (coe v1) in
    coe
      du_isCommutativeMagma_308
      (coe du_'42''45'isCommutativeSemigroup_1128 (coe v2))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_1500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   v8
  = du_'42''45'isCommutativeMonoid_1500 v8
du_'42''45'isCommutativeMonoid_1500 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_1500 v0
  = coe
      du_'42''45'isCommutativeMonoid_1452
      (coe d_isCommutativeSemiring_1476 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_1502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 v8
  = du_'42''45'isCommutativeSemigroup_1502 v8
du_'42''45'isCommutativeSemigroup_1502 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_1502 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    coe
      du_'42''45'isCommutativeSemigroup_1128
      (coe du_isCommutativeSemiringWithoutOne_1444 (coe v1))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isMagma
d_isMagma_1504 ::
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsMagma_86
d_isMagma_1504 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_'42''45'isMonoid_1160
            (coe
               d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isMonoid
d_'42''45'isMonoid_1506 ::
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsMonoid_358
d_'42''45'isMonoid_1506 v0
  = coe
      d_'42''45'isMonoid_1160
      (coe
         d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemigroup
d_isSemigroup_1508 ::
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsSemigroup_194
d_isSemigroup_1508 v0
  = coe
      d_isSemigroup_368
      (coe
         d_'42''45'isMonoid_1160
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.assoc
d_assoc_1510 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1510 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416
            (coe
               d_'43''45'isCommutativeMonoid_1158
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.comm
d_comm_1512 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1512 v0
  = coe
      d_comm_418
      (coe
         d_'43''45'isCommutativeMonoid_1158
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-cong
d_'8729''45'cong_1514 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1514 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416
               (coe
                  d_'43''45'isCommutativeMonoid_1158
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1516 v8
du_'8729''45'cong'691'_1516 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1516 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'43''45'isCommutativeMonoid_1158 (coe v3) in
    let v5 = d_isMonoid_416 (coe v4) in
    let v6 = d_isSemigroup_368 (coe v5) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v6))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1518 v8
du_'8729''45'cong'737'_1518 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1518 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'43''45'isCommutativeMonoid_1158 (coe v3) in
    let v5 = d_isMonoid_416 (coe v4) in
    let v6 = d_isSemigroup_368 (coe v5) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v6))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identity
d_identity_1520 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1520 v0
  = coe
      d_identity_370
      (coe
         d_isMonoid_416
         (coe
            d_'43''45'isCommutativeMonoid_1158
            (coe
               d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityʳ
d_identity'691'_1522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
d_identity'691'_1522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1522 v8
du_identity'691'_1522 ::
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
du_identity'691'_1522 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'43''45'isCommutativeMonoid_1158 (coe v3) in
    coe du_identity'691'_400 (coe d_isMonoid_416 (coe v4))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityˡ
d_identity'737'_1524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
d_identity'737'_1524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1524 v8
du_identity'737'_1524 ::
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
du_identity'737'_1524 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'43''45'isCommutativeMonoid_1158 (coe v3) in
    coe du_identity'737'_398 (coe d_isMonoid_416 (coe v4))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeMagma_122
d_isCommutativeMagma_1526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1526 v8
du_isCommutativeMagma_1526 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeMagma_122
du_isCommutativeMagma_1526 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'43''45'isCommutativeMonoid_1158 (coe v3) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v4))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1528 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1528 v0
  = coe
      d_'43''45'isCommutativeMonoid_1158
      (coe
         d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1530 v8
du_isCommutativeSemigroup_1530 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1530 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    coe
      du_isCommutativeSemigroup_454
      (coe d_'43''45'isCommutativeMonoid_1158 (coe v3))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isMagma
d_isMagma_1532 ::
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsMagma_86
d_isMagma_1532 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_416
            (coe
               d_'43''45'isCommutativeMonoid_1158
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1252
                  (coe
                     d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isMonoid
d_isMonoid_1534 ::
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsMonoid_358
d_isMonoid_1534 v0
  = coe
      d_isMonoid_416
      (coe
         d_'43''45'isCommutativeMonoid_1158
         (coe
            d_isSemiringWithoutAnnihilatingZero_1252
            (coe
               d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemigroup
d_isSemigroup_1536 ::
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsSemigroup_194
d_isSemigroup_1536 v0
  = coe
      d_isSemigroup_368
      (coe
         d_isMonoid_416
         (coe
            d_'43''45'isCommutativeMonoid_1158
            (coe
               d_isSemiringWithoutAnnihilatingZero_1252
               (coe
                  d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distrib
d_distrib_1538 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1538 v0
  = coe
      d_distrib_1162
      (coe
         d_isSemiringWithoutAnnihilatingZero_1252
         (coe
            d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distribʳ
d_distrib'691'_1540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1540 v8
du_distrib'691'_1540 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1540 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    coe
      du_distrib'691'_1166
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v2))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distribˡ
d_distrib'737'_1542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1542 v8
du_distrib'737'_1542 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1542 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    coe
      du_distrib'737'_1164
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v2))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_1544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 v8
  = du_isCommutativeSemiringWithoutOne_1544 v8
du_isCommutativeSemiringWithoutOne_1544 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_1544 v0
  = coe
      du_isCommutativeSemiringWithoutOne_1444
      (coe d_isCommutativeSemiring_1476 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isEquivalence
d_isEquivalence_1546 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1546 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_416
               (coe
                  d_'43''45'isCommutativeMonoid_1158
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1252
                     (coe
                        d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isNearSemiring
d_isNearSemiring_1548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsNearSemiring_876
d_isNearSemiring_1548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1548 v8
du_isNearSemiring_1548 ::
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsNearSemiring_876
du_isNearSemiring_1548 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    coe
      du_isNearSemiring_990 (coe du_isSemiringWithoutOne_1326 (coe v2))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isPartialEquivalence
d_isPartialEquivalence_1550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1550 v8
du_isPartialEquivalence_1550 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1550 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'43''45'isCommutativeMonoid_1158 (coe v3) in
    let v5 = d_isMonoid_416 (coe v4) in
    let v6 = d_isSemigroup_368 (coe v5) in
    let v7 = d_isMagma_202 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v7))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiring
d_isSemiring_1552 ::
  T_IsCancellativeCommutativeSemiring_1462 -> T_IsSemiring_1238
d_isSemiring_1552 v0
  = coe d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1554 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_1554 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1252
      (coe d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_1556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1556 v8
du_isSemiringWithoutOne_1556 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_1556 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    coe du_isSemiringWithoutOne_1326 (coe d_isSemiring_1358 (coe v1))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.refl
d_refl_1558 ::
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
d_refl_1558 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           d_isSemiring_1358
                           (coe d_isCommutativeSemiring_1476 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.reflexive
d_reflexive_1560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1560 v8
du_reflexive_1560 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1560 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'43''45'isCommutativeMonoid_1158 (coe v3) in
    let v5 = d_isMonoid_416 (coe v4) in
    let v6 = d_isSemigroup_368 (coe v5) in
    let v7 = d_isMagma_202 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v7)) v8
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.setoid
d_setoid_1562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1562 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1562 v8
du_setoid_1562 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1562 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    let v3 = d_isSemiringWithoutAnnihilatingZero_1252 (coe v2) in
    let v4 = d_'43''45'isCommutativeMonoid_1158 (coe v3) in
    let v5 = d_isMonoid_416 (coe v4) in
    let v6 = d_isSemigroup_368 (coe v5) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v6))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.sym
d_sym_1564 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           d_isSemiring_1358
                           (coe d_isCommutativeSemiring_1476 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.trans
d_trans_1566 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1566 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_416
                  (coe
                     d_'43''45'isCommutativeMonoid_1158
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1252
                        (coe
                           d_isSemiring_1358
                           (coe d_isCommutativeSemiring_1476 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zero
d_zero_1568 ::
  T_IsCancellativeCommutativeSemiring_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1568 v0
  = coe
      d_zero_1254
      (coe d_isSemiring_1358 (coe d_isCommutativeSemiring_1476 (coe v0)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zeroʳ
d_zero'691'_1570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
d_zero'691'_1570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1570 v8
du_zero'691'_1570 ::
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
du_zero'691'_1570 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    coe du_zero'691'_988 (coe du_isSemiringWithoutOne_1326 (coe v2))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zeroˡ
d_zero'737'_1572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
d_zero'737'_1572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1572 v8
du_zero'737'_1572 ::
  T_IsCancellativeCommutativeSemiring_1462 -> AgdaAny -> AgdaAny
du_zero'737'_1572 v0
  = let v1 = d_isCommutativeSemiring_1476 (coe v0) in
    let v2 = d_isSemiring_1358 (coe v1) in
    coe du_zero'737'_986 (coe du_isSemiringWithoutOne_1326 (coe v2))
-- Algebra.Structures.IsRing
d_IsRing_1584 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsRing_1584
  = C_IsRing'46'constructor_43503 T_IsAbelianGroup_662 T_IsMonoid_358
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_1604 ::
  T_IsRing_1584 -> T_IsAbelianGroup_662
d_'43''45'isAbelianGroup_1604 v0
  = case coe v0 of
      C_IsRing'46'constructor_43503 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.*-isMonoid
d_'42''45'isMonoid_1606 :: T_IsRing_1584 -> T_IsMonoid_358
d_'42''45'isMonoid_1606 v0
  = case coe v0 of
      C_IsRing'46'constructor_43503 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.distrib
d_distrib_1608 ::
  T_IsRing_1584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1608 v0
  = case coe v0 of
      C_IsRing'46'constructor_43503 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.zero
d_zero_1610 ::
  T_IsRing_1584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1610 v0
  = case coe v0 of
      C_IsRing'46'constructor_43503 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing._._-_
d__'45'__1614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__1614 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'45'__1614 v4 v6
du__'45'__1614 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__1614 v0 v1 = coe du__'45'__634 (coe v0) (coe v1)
-- Algebra.Structures.IsRing._.assoc
d_assoc_1616 ::
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1616 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_594
            (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0)))))
-- Algebra.Structures.IsRing._.comm
d_comm_1618 :: T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1618 v0
  = coe d_comm_676 (coe d_'43''45'isAbelianGroup_1604 (coe v0))
-- Algebra.Structures.IsRing._.∙-cong
d_'8729''45'cong_1620 ::
  T_IsRing_1584 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1620 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_594
               (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0))))))
-- Algebra.Structures.IsRing._.∙-congʳ
d_'8729''45'cong'691'_1622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1622 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_1622 v9
du_'8729''45'cong'691'_1622 ::
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1622 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    let v2 = d_isGroup_674 (coe v1) in
    let v3 = d_isMonoid_594 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsRing._.∙-congˡ
d_'8729''45'cong'737'_1624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1624 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_1624 v9
du_'8729''45'cong'737'_1624 ::
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1624 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    let v2 = d_isGroup_674 (coe v1) in
    let v3 = d_isMonoid_594 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsRing._.identity
d_identity_1626 ::
  T_IsRing_1584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1626 v0
  = coe
      d_identity_370
      (coe
         d_isMonoid_594
         (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0))))
-- Algebra.Structures.IsRing._.identityʳ
d_identity'691'_1628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny
d_identity'691'_1628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_1628 v9
du_identity'691'_1628 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
du_identity'691'_1628 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    let v2 = d_isGroup_674 (coe v1) in
    coe du_identity'691'_400 (coe d_isMonoid_594 (coe v2))
-- Algebra.Structures.IsRing._.identityˡ
d_identity'737'_1630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny
d_identity'737'_1630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_1630 v9
du_identity'737'_1630 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
du_identity'737'_1630 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    let v2 = d_isGroup_674 (coe v1) in
    coe du_identity'737'_398 (coe d_isMonoid_594 (coe v2))
-- Algebra.Structures.IsRing._.isCommutativeMagma
d_isCommutativeMagma_1632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_1632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_1632 v9
du_isCommutativeMagma_1632 ::
  T_IsRing_1584 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_1632 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    let v2 = coe du_isCommutativeMonoid_728 (coe v1) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v2))
-- Algebra.Structures.IsRing._.isCommutativeMonoid
d_isCommutativeMonoid_1634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> T_IsCommutativeMonoid_406
d_isCommutativeMonoid_1634 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_1634 v9
du_isCommutativeMonoid_1634 ::
  T_IsRing_1584 -> T_IsCommutativeMonoid_406
du_isCommutativeMonoid_1634 v0
  = coe
      du_isCommutativeMonoid_728
      (coe d_'43''45'isAbelianGroup_1604 (coe v0))
-- Algebra.Structures.IsRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_1636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_1636 v9
du_isCommutativeSemigroup_1636 ::
  T_IsRing_1584 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1636 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    coe
      du_isCommutativeSemigroup_454
      (coe du_isCommutativeMonoid_728 (coe v1))
-- Algebra.Structures.IsRing._.isGroup
d_isGroup_1638 :: T_IsRing_1584 -> T_IsGroup_580
d_isGroup_1638 v0
  = coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0))
-- Algebra.Structures.IsRing._.isMagma
d_isMagma_1640 :: T_IsRing_1584 -> T_IsMagma_86
d_isMagma_1640 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_594
            (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0)))))
-- Algebra.Structures.IsRing._.isMonoid
d_isMonoid_1642 :: T_IsRing_1584 -> T_IsMonoid_358
d_isMonoid_1642 v0
  = coe
      d_isMonoid_594
      (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0)))
-- Algebra.Structures.IsRing._.isSemigroup
d_isSemigroup_1644 :: T_IsRing_1584 -> T_IsSemigroup_194
d_isSemigroup_1644 v0
  = coe
      d_isSemigroup_368
      (coe
         d_isMonoid_594
         (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0))))
-- Algebra.Structures.IsRing._.⁻¹-cong
d_'8315''185''45'cong_1646 ::
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_1646 v0
  = coe
      d_'8315''185''45'cong_598
      (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0)))
-- Algebra.Structures.IsRing._.inverse
d_inverse_1648 ::
  T_IsRing_1584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1648 v0
  = coe
      d_inverse_596
      (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0)))
-- Algebra.Structures.IsRing._.inverseʳ
d_inverse'691'_1650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny
d_inverse'691'_1650 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_1650 v9
du_inverse'691'_1650 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
du_inverse'691'_1650 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    coe du_inverse'691'_642 (coe d_isGroup_674 (coe v1))
-- Algebra.Structures.IsRing._.inverseˡ
d_inverse'737'_1652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny
d_inverse'737'_1652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_1652 v9
du_inverse'737'_1652 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
du_inverse'737'_1652 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    coe du_inverse'737'_640 (coe d_isGroup_674 (coe v1))
-- Algebra.Structures.IsRing._.isEquivalence
d_isEquivalence_1654 ::
  T_IsRing_1584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1654 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_594
               (coe d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0))))))
-- Algebra.Structures.IsRing._.isPartialEquivalence
d_isPartialEquivalence_1656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_1656 v9
du_isPartialEquivalence_1656 ::
  T_IsRing_1584 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1656 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    let v2 = d_isGroup_674 (coe v1) in
    let v3 = d_isMonoid_594 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    let v5 = d_isMagma_202 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v5))
-- Algebra.Structures.IsRing._.refl
d_refl_1658 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
d_refl_1658 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_594
                  (coe
                     d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0)))))))
-- Algebra.Structures.IsRing._.reflexive
d_reflexive_1660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1660 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_1660 v9
du_reflexive_1660 ::
  T_IsRing_1584 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1660 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    let v2 = d_isGroup_674 (coe v1) in
    let v3 = d_isMonoid_594 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    let v5 = d_isMagma_202 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v5)) v6
-- Algebra.Structures.IsRing._.setoid
d_setoid_1662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_1662 v9
du_setoid_1662 ::
  T_IsRing_1584 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1662 v0
  = let v1 = d_'43''45'isAbelianGroup_1604 (coe v0) in
    let v2 = d_isGroup_674 (coe v1) in
    let v3 = d_isMonoid_594 (coe v2) in
    let v4 = d_isSemigroup_368 (coe v3) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v4))
-- Algebra.Structures.IsRing._.sym
d_sym_1664 ::
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1664 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_594
                  (coe
                     d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0)))))))
-- Algebra.Structures.IsRing._.trans
d_trans_1666 ::
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1666 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_594
                  (coe
                     d_isGroup_674 (coe d_'43''45'isAbelianGroup_1604 (coe v0)))))))
-- Algebra.Structures.IsRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_1668 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_1668 v4 v6 v7 v9
du_unique'691''45''8315''185'_1668 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_1668 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_1604 (coe v3) in
    coe
      du_unique'691''45''8315''185'_654 (coe v0) (coe v2) (coe v1)
      (coe d_isGroup_674 (coe v4))
-- Algebra.Structures.IsRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_1670 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_1670 v4 v6 v7 v9
du_unique'737''45''8315''185'_1670 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_1670 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_1604 (coe v3) in
    coe
      du_unique'737''45''8315''185'_648 (coe v0) (coe v2) (coe v1)
      (coe d_isGroup_674 (coe v4))
-- Algebra.Structures.IsRing._.assoc
d_assoc_1674 ::
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1674 v0
  = coe
      d_assoc_204
      (coe d_isSemigroup_368 (coe d_'42''45'isMonoid_1606 (coe v0)))
-- Algebra.Structures.IsRing._.∙-cong
d_'8729''45'cong_1676 ::
  T_IsRing_1584 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1676 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe d_isSemigroup_368 (coe d_'42''45'isMonoid_1606 (coe v0))))
-- Algebra.Structures.IsRing._.∙-congʳ
d_'8729''45'cong'691'_1678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_1678 v9
du_'8729''45'cong'691'_1678 ::
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1678 v0
  = let v1 = d_'42''45'isMonoid_1606 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsRing._.∙-congˡ
d_'8729''45'cong'737'_1680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_1680 v9
du_'8729''45'cong'737'_1680 ::
  T_IsRing_1584 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1680 v0
  = let v1 = d_'42''45'isMonoid_1606 (coe v0) in
    let v2 = d_isSemigroup_368 (coe v1) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v2))
-- Algebra.Structures.IsRing._.identity
d_identity_1682 ::
  T_IsRing_1584 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1682 v0
  = coe d_identity_370 (coe d_'42''45'isMonoid_1606 (coe v0))
-- Algebra.Structures.IsRing._.identityʳ
d_identity'691'_1684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny
d_identity'691'_1684 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_1684 v9
du_identity'691'_1684 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
du_identity'691'_1684 v0
  = coe du_identity'691'_400 (coe d_'42''45'isMonoid_1606 (coe v0))
-- Algebra.Structures.IsRing._.identityˡ
d_identity'737'_1686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny
d_identity'737'_1686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_1686 v9
du_identity'737'_1686 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
du_identity'737'_1686 v0
  = coe du_identity'737'_398 (coe d_'42''45'isMonoid_1606 (coe v0))
-- Algebra.Structures.IsRing._.isMagma
d_isMagma_1688 :: T_IsRing_1584 -> T_IsMagma_86
d_isMagma_1688 v0
  = coe
      d_isMagma_202
      (coe d_isSemigroup_368 (coe d_'42''45'isMonoid_1606 (coe v0)))
-- Algebra.Structures.IsRing._.isSemigroup
d_isSemigroup_1690 :: T_IsRing_1584 -> T_IsSemigroup_194
d_isSemigroup_1690 v0
  = coe d_isSemigroup_368 (coe d_'42''45'isMonoid_1606 (coe v0))
-- Algebra.Structures.IsRing.zeroˡ
d_zero'737'_1692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny
d_zero'737'_1692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_1692 v9
du_zero'737'_1692 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
du_zero'737'_1692 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_zero_1610 (coe v0))
-- Algebra.Structures.IsRing.zeroʳ
d_zero'691'_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> AgdaAny -> AgdaAny
d_zero'691'_1694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_1694 v9
du_zero'691'_1694 :: T_IsRing_1584 -> AgdaAny -> AgdaAny
du_zero'691'_1694 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_zero_1610 (coe v0))
-- Algebra.Structures.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 -> T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_1696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutAnnihilatingZero_1696 v9
du_isSemiringWithoutAnnihilatingZero_1696 ::
  T_IsRing_1584 -> T_IsSemiringWithoutAnnihilatingZero_1142
du_isSemiringWithoutAnnihilatingZero_1696 v0
  = coe
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677
      (coe
         du_isCommutativeMonoid_728
         (coe d_'43''45'isAbelianGroup_1604 (coe v0)))
      (coe d_'42''45'isMonoid_1606 (coe v0))
      (coe d_distrib_1608 (coe v0))
-- Algebra.Structures.IsRing.isSemiring
d_isSemiring_1698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> T_IsSemiring_1238
d_isSemiring_1698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiring_1698 v9
du_isSemiring_1698 :: T_IsRing_1584 -> T_IsSemiring_1238
du_isSemiring_1698 v0
  = coe
      C_IsSemiring'46'constructor_32891
      (coe du_isSemiringWithoutAnnihilatingZero_1696 (coe v0))
      (coe d_zero_1610 (coe v0))
-- Algebra.Structures.IsRing._.distribʳ
d_distrib'691'_1702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_1702 v9
du_distrib'691'_1702 ::
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1702 v0
  = let v1 = coe du_isSemiring_1698 (coe v0) in
    coe
      du_distrib'691'_1166
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v1))
-- Algebra.Structures.IsRing._.distribˡ
d_distrib'737'_1704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_1704 v9
du_distrib'737'_1704 ::
  T_IsRing_1584 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1704 v0
  = let v1 = coe du_isSemiring_1698 (coe v0) in
    coe
      du_distrib'737'_1164
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v1))
-- Algebra.Structures.IsRing._.isNearSemiring
d_isNearSemiring_1706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> T_IsNearSemiring_876
d_isNearSemiring_1706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isNearSemiring_1706 v9
du_isNearSemiring_1706 :: T_IsRing_1584 -> T_IsNearSemiring_876
du_isNearSemiring_1706 v0
  = let v1 = coe du_isSemiring_1698 (coe v0) in
    coe
      du_isNearSemiring_990 (coe du_isSemiringWithoutOne_1326 (coe v1))
-- Algebra.Structures.IsRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_1708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_1584 -> T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutOne_1708 v9
du_isSemiringWithoutOne_1708 ::
  T_IsRing_1584 -> T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_1708 v0
  = coe
      du_isSemiringWithoutOne_1326 (coe du_isSemiring_1698 (coe v0))
-- Algebra.Structures.IsCommutativeRing
d_IsCommutativeRing_1720 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsCommutativeRing_1720
  = C_IsCommutativeRing'46'constructor_48707 T_IsRing_1584
                                             (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeRing.isRing
d_isRing_1736 :: T_IsCommutativeRing_1720 -> T_IsRing_1584
d_isRing_1736 v0
  = case coe v0 of
      C_IsCommutativeRing'46'constructor_48707 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeRing.*-comm
d_'42''45'comm_1738 ::
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1738 v0
  = case coe v0 of
      C_IsCommutativeRing'46'constructor_48707 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeRing._._-_
d__'45'__1742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__1742 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'45'__1742 v4 v6
du__'45'__1742 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__1742 v0 v1 = coe du__'45'__634 (coe v0) (coe v1)
-- Algebra.Structures.IsCommutativeRing._.assoc
d_assoc_1744 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1744 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe d_'42''45'isMonoid_1606 (coe d_isRing_1736 (coe v0))))
-- Algebra.Structures.IsCommutativeRing._.∙-cong
d_'8729''45'cong_1746 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1746 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe d_'42''45'isMonoid_1606 (coe d_isRing_1736 (coe v0)))))
-- Algebra.Structures.IsCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_1748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_1748 v9
du_'8729''45'cong'691'_1748 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1748 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'42''45'isMonoid_1606 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_1750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_1750 v9
du_'8729''45'cong'737'_1750 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1750 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'42''45'isMonoid_1606 (coe v1) in
    let v3 = d_isSemigroup_368 (coe v2) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v3))
-- Algebra.Structures.IsCommutativeRing._.identity
d_identity_1752 ::
  T_IsCommutativeRing_1720 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1752 v0
  = coe
      d_identity_370
      (coe d_'42''45'isMonoid_1606 (coe d_isRing_1736 (coe v0)))
-- Algebra.Structures.IsCommutativeRing._.identityʳ
d_identity'691'_1754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_identity'691'_1754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_1754 v9
du_identity'691'_1754 ::
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
du_identity'691'_1754 v0
  = let v1 = d_isRing_1736 (coe v0) in
    coe du_identity'691'_400 (coe d_'42''45'isMonoid_1606 (coe v1))
-- Algebra.Structures.IsCommutativeRing._.identityˡ
d_identity'737'_1756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_identity'737'_1756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_1756 v9
du_identity'737'_1756 ::
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
du_identity'737'_1756 v0
  = let v1 = d_isRing_1736 (coe v0) in
    coe du_identity'737'_398 (coe d_'42''45'isMonoid_1606 (coe v1))
-- Algebra.Structures.IsCommutativeRing._.isMagma
d_isMagma_1758 :: T_IsCommutativeRing_1720 -> T_IsMagma_86
d_isMagma_1758 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe d_'42''45'isMonoid_1606 (coe d_isRing_1736 (coe v0))))
-- Algebra.Structures.IsCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_1760 ::
  T_IsCommutativeRing_1720 -> T_IsMonoid_358
d_'42''45'isMonoid_1760 v0
  = coe d_'42''45'isMonoid_1606 (coe d_isRing_1736 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isSemigroup
d_isSemigroup_1762 :: T_IsCommutativeRing_1720 -> T_IsSemigroup_194
d_isSemigroup_1762 v0
  = coe
      d_isSemigroup_368
      (coe d_'42''45'isMonoid_1606 (coe d_isRing_1736 (coe v0)))
-- Algebra.Structures.IsCommutativeRing._.assoc
d_assoc_1764 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1764 v0
  = coe
      d_assoc_204
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_594
            (coe
               d_isGroup_674
               (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))))))
-- Algebra.Structures.IsCommutativeRing._.comm
d_comm_1766 ::
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1766 v0
  = coe
      d_comm_676
      (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0)))
-- Algebra.Structures.IsCommutativeRing._.∙-cong
d_'8729''45'cong_1768 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1768 v0
  = coe
      d_'8729''45'cong_96
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_594
               (coe
                  d_isGroup_674
                  (coe
                     d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0)))))))
-- Algebra.Structures.IsCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_1770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1770 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_1770 v9
du_'8729''45'cong'691'_1770 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1770 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    let v3 = d_isGroup_674 (coe v2) in
    let v4 = d_isMonoid_594 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    coe du_'8729''45'cong'691'_116 (coe d_isMagma_202 (coe v5))
-- Algebra.Structures.IsCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_1772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1772 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_1772 v9
du_'8729''45'cong'737'_1772 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1772 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    let v3 = d_isGroup_674 (coe v2) in
    let v4 = d_isMonoid_594 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    coe du_'8729''45'cong'737'_112 (coe d_isMagma_202 (coe v5))
-- Algebra.Structures.IsCommutativeRing._.identity
d_identity_1774 ::
  T_IsCommutativeRing_1720 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1774 v0
  = coe
      d_identity_370
      (coe
         d_isMonoid_594
         (coe
            d_isGroup_674
            (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0)))))
-- Algebra.Structures.IsCommutativeRing._.identityʳ
d_identity'691'_1776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_identity'691'_1776 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_1776 v9
du_identity'691'_1776 ::
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
du_identity'691'_1776 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    let v3 = d_isGroup_674 (coe v2) in
    coe du_identity'691'_400 (coe d_isMonoid_594 (coe v3))
-- Algebra.Structures.IsCommutativeRing._.identityˡ
d_identity'737'_1778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_identity'737'_1778 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_1778 v9
du_identity'737'_1778 ::
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
du_identity'737'_1778 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    let v3 = d_isGroup_674 (coe v2) in
    coe du_identity'737'_398 (coe d_isMonoid_594 (coe v3))
-- Algebra.Structures.IsCommutativeRing._.+-isAbelianGroup
d_'43''45'isAbelianGroup_1780 ::
  T_IsCommutativeRing_1720 -> T_IsAbelianGroup_662
d_'43''45'isAbelianGroup_1780 v0
  = coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_1782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_1782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_1782 v9
du_isCommutativeMagma_1782 ::
  T_IsCommutativeRing_1720 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_1782 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    let v3 = coe du_isCommutativeMonoid_728 (coe v2) in
    coe
      du_isCommutativeMagma_308
      (coe du_isCommutativeSemigroup_454 (coe v3))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_1784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsCommutativeMonoid_406
d_isCommutativeMonoid_1784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_1784 v9
du_isCommutativeMonoid_1784 ::
  T_IsCommutativeRing_1720 -> T_IsCommutativeMonoid_406
du_isCommutativeMonoid_1784 v0
  = let v1 = d_isRing_1736 (coe v0) in
    coe
      du_isCommutativeMonoid_728
      (coe d_'43''45'isAbelianGroup_1604 (coe v1))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_1786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsCommutativeSemigroup_270
d_isCommutativeSemigroup_1786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_1786 v9
du_isCommutativeSemigroup_1786 ::
  T_IsCommutativeRing_1720 -> T_IsCommutativeSemigroup_270
du_isCommutativeSemigroup_1786 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    coe
      du_isCommutativeSemigroup_454
      (coe du_isCommutativeMonoid_728 (coe v2))
-- Algebra.Structures.IsCommutativeRing._.isGroup
d_isGroup_1788 :: T_IsCommutativeRing_1720 -> T_IsGroup_580
d_isGroup_1788 v0
  = coe
      d_isGroup_674
      (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0)))
-- Algebra.Structures.IsCommutativeRing._.isMagma
d_isMagma_1790 :: T_IsCommutativeRing_1720 -> T_IsMagma_86
d_isMagma_1790 v0
  = coe
      d_isMagma_202
      (coe
         d_isSemigroup_368
         (coe
            d_isMonoid_594
            (coe
               d_isGroup_674
               (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))))))
-- Algebra.Structures.IsCommutativeRing._.isMonoid
d_isMonoid_1792 :: T_IsCommutativeRing_1720 -> T_IsMonoid_358
d_isMonoid_1792 v0
  = coe
      d_isMonoid_594
      (coe
         d_isGroup_674
         (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))))
-- Algebra.Structures.IsCommutativeRing._.isSemigroup
d_isSemigroup_1794 :: T_IsCommutativeRing_1720 -> T_IsSemigroup_194
d_isSemigroup_1794 v0
  = coe
      d_isSemigroup_368
      (coe
         d_isMonoid_594
         (coe
            d_isGroup_674
            (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0)))))
-- Algebra.Structures.IsCommutativeRing._.⁻¹-cong
d_'8315''185''45'cong_1796 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_1796 v0
  = coe
      d_'8315''185''45'cong_598
      (coe
         d_isGroup_674
         (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))))
-- Algebra.Structures.IsCommutativeRing._.inverse
d_inverse_1798 ::
  T_IsCommutativeRing_1720 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1798 v0
  = coe
      d_inverse_596
      (coe
         d_isGroup_674
         (coe d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))))
-- Algebra.Structures.IsCommutativeRing._.inverseʳ
d_inverse'691'_1800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_inverse'691'_1800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_1800 v9
du_inverse'691'_1800 ::
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
du_inverse'691'_1800 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    coe du_inverse'691'_642 (coe d_isGroup_674 (coe v2))
-- Algebra.Structures.IsCommutativeRing._.inverseˡ
d_inverse'737'_1802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_inverse'737'_1802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_1802 v9
du_inverse'737'_1802 ::
  T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
du_inverse'737'_1802 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    coe du_inverse'737'_640 (coe d_isGroup_674 (coe v2))
-- Algebra.Structures.IsCommutativeRing._.distrib
d_distrib_1804 ::
  T_IsCommutativeRing_1720 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1804 v0 = coe d_distrib_1608 (coe d_isRing_1736 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.distribʳ
d_distrib'691'_1806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_1806 v9
du_distrib'691'_1806 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1806 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = coe du_isSemiring_1698 (coe v1) in
    coe
      du_distrib'691'_1166
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v2))
-- Algebra.Structures.IsCommutativeRing._.distribˡ
d_distrib'737'_1808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_1808 v9
du_distrib'737'_1808 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1808 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = coe du_isSemiring_1698 (coe v1) in
    coe
      du_distrib'737'_1164
      (coe d_isSemiringWithoutAnnihilatingZero_1252 (coe v2))
-- Algebra.Structures.IsCommutativeRing._.isEquivalence
d_isEquivalence_1810 ::
  T_IsCommutativeRing_1720 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1810 v0
  = coe
      d_isEquivalence_94
      (coe
         d_isMagma_202
         (coe
            d_isSemigroup_368
            (coe
               d_isMonoid_594
               (coe
                  d_isGroup_674
                  (coe
                     d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0)))))))
-- Algebra.Structures.IsCommutativeRing._.isNearSemiring
d_isNearSemiring_1812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsNearSemiring_876
d_isNearSemiring_1812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isNearSemiring_1812 v9
du_isNearSemiring_1812 ::
  T_IsCommutativeRing_1720 -> T_IsNearSemiring_876
du_isNearSemiring_1812 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = coe du_isSemiring_1698 (coe v1) in
    coe
      du_isNearSemiring_990 (coe du_isSemiringWithoutOne_1326 (coe v2))
-- Algebra.Structures.IsCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_1814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_1814 v9
du_isPartialEquivalence_1814 ::
  T_IsCommutativeRing_1720 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1814 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    let v3 = d_isGroup_674 (coe v2) in
    let v4 = d_isMonoid_594 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    let v6 = d_isMagma_202 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_94 (coe v6))
-- Algebra.Structures.IsCommutativeRing._.isSemiring
d_isSemiring_1816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_1720 -> T_IsSemiring_1238
d_isSemiring_1816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiring_1816 v9
du_isSemiring_1816 :: T_IsCommutativeRing_1720 -> T_IsSemiring_1238
du_isSemiring_1816 v0
  = coe du_isSemiring_1698 (coe d_isRing_1736 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  T_IsSemiringWithoutAnnihilatingZero_1142
d_isSemiringWithoutAnnihilatingZero_1818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutAnnihilatingZero_1818 v9
du_isSemiringWithoutAnnihilatingZero_1818 ::
  T_IsCommutativeRing_1720 ->
  T_IsSemiringWithoutAnnihilatingZero_1142
du_isSemiringWithoutAnnihilatingZero_1818 v0
  = coe
      du_isSemiringWithoutAnnihilatingZero_1696
      (coe d_isRing_1736 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_1820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsSemiringWithoutOne_952
d_isSemiringWithoutOne_1820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutOne_1820 v9
du_isSemiringWithoutOne_1820 ::
  T_IsCommutativeRing_1720 -> T_IsSemiringWithoutOne_952
du_isSemiringWithoutOne_1820 v0
  = let v1 = d_isRing_1736 (coe v0) in
    coe du_isSemiringWithoutOne_1326 (coe du_isSemiring_1698 (coe v1))
-- Algebra.Structures.IsCommutativeRing._.refl
d_refl_1822 :: T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_refl_1822 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_594
                  (coe
                     d_isGroup_674
                     (coe
                        d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))))))))
-- Algebra.Structures.IsCommutativeRing._.reflexive
d_reflexive_1824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_1824 v9
du_reflexive_1824 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1824 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    let v3 = d_isGroup_674 (coe v2) in
    let v4 = d_isMonoid_594 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    let v6 = d_isMagma_202 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_94 (coe v6)) v7
-- Algebra.Structures.IsCommutativeRing._.setoid
d_setoid_1826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_1826 v9
du_setoid_1826 ::
  T_IsCommutativeRing_1720 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1826 v0
  = let v1 = d_isRing_1736 (coe v0) in
    let v2 = d_'43''45'isAbelianGroup_1604 (coe v1) in
    let v3 = d_isGroup_674 (coe v2) in
    let v4 = d_isMonoid_594 (coe v3) in
    let v5 = d_isSemigroup_368 (coe v4) in
    coe du_setoid_110 (coe d_isMagma_202 (coe v5))
-- Algebra.Structures.IsCommutativeRing._.sym
d_sym_1828 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1828 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_594
                  (coe
                     d_isGroup_674
                     (coe
                        d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))))))))
-- Algebra.Structures.IsCommutativeRing._.trans
d_trans_1830 ::
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1830 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_94
         (coe
            d_isMagma_202
            (coe
               d_isSemigroup_368
               (coe
                  d_isMonoid_594
                  (coe
                     d_isGroup_674
                     (coe
                        d_'43''45'isAbelianGroup_1604 (coe d_isRing_1736 (coe v0))))))))
-- Algebra.Structures.IsCommutativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_1832 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_1832 v4 v6 v7 v9
du_unique'691''45''8315''185'_1832 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_1832 v0 v1 v2 v3
  = let v4 = d_isRing_1736 (coe v3) in
    let v5 = d_'43''45'isAbelianGroup_1604 (coe v4) in
    coe
      du_unique'691''45''8315''185'_654 (coe v0) (coe v2) (coe v1)
      (coe d_isGroup_674 (coe v5))
-- Algebra.Structures.IsCommutativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_1834 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_1834 v4 v6 v7 v9
du_unique'737''45''8315''185'_1834 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_1720 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_1834 v0 v1 v2 v3
  = let v4 = d_isRing_1736 (coe v3) in
    let v5 = d_'43''45'isAbelianGroup_1604 (coe v4) in
    coe
      du_unique'737''45''8315''185'_648 (coe v0) (coe v2) (coe v1)
      (coe d_isGroup_674 (coe v5))
-- Algebra.Structures.IsCommutativeRing._.zero
d_zero_1836 ::
  T_IsCommutativeRing_1720 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1836 v0 = coe d_zero_1610 (coe d_isRing_1736 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.zeroʳ
d_zero'691'_1838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_zero'691'_1838 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_1838 v9
du_zero'691'_1838 :: T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
du_zero'691'_1838 v0
  = coe du_zero'691'_1694 (coe d_isRing_1736 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.zeroˡ
d_zero'737'_1840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
d_zero'737'_1840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_1840 v9
du_zero'737'_1840 :: T_IsCommutativeRing_1720 -> AgdaAny -> AgdaAny
du_zero'737'_1840 v0
  = coe du_zero'737'_1692 (coe d_isRing_1736 (coe v0))
-- Algebra.Structures.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_1842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_1842 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeSemiring_1842 v9
du_isCommutativeSemiring_1842 ::
  T_IsCommutativeRing_1720 -> T_IsCommutativeSemiring_1344
du_isCommutativeSemiring_1842 v0
  = coe
      C_IsCommutativeSemiring'46'constructor_36165
      (coe du_isSemiring_1698 (coe d_isRing_1736 (coe v0)))
      (coe d_'42''45'comm_1738 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_1846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsCommutativeMagma_122
d_isCommutativeMagma_1846 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_1846 v9
du_isCommutativeMagma_1846 ::
  T_IsCommutativeRing_1720 -> T_IsCommutativeMagma_122
du_isCommutativeMagma_1846 v0
  = let v1 = coe du_isCommutativeSemiring_1842 (coe v0) in
    let v2 = coe du_isCommutativeSemiringWithoutOne_1444 (coe v1) in
    coe
      du_isCommutativeMagma_308
      (coe du_'42''45'isCommutativeSemigroup_1128 (coe v2))
-- Algebra.Structures.IsCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_1848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9
  = du_'42''45'isCommutativeMonoid_1848 v9
du_'42''45'isCommutativeMonoid_1848 ::
  T_IsCommutativeRing_1720 -> T_IsCommutativeMonoid_406
du_'42''45'isCommutativeMonoid_1848 v0
  = coe
      du_'42''45'isCommutativeMonoid_1452
      (coe du_isCommutativeSemiring_1842 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_1720 -> T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_1850 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 ~v8 v9
  = du_'42''45'isCommutativeSemigroup_1850 v9
du_'42''45'isCommutativeSemigroup_1850 ::
  T_IsCommutativeRing_1720 -> T_IsCommutativeSemigroup_270
du_'42''45'isCommutativeSemigroup_1850 v0
  = let v1 = coe du_isCommutativeSemiring_1842 (coe v0) in
    coe
      du_'42''45'isCommutativeSemigroup_1128
      (coe du_isCommutativeSemiringWithoutOne_1444 (coe v1))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_1720 -> T_IsCommutativeSemiringWithoutOne_1044
d_isCommutativeSemiringWithoutOne_1852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 ~v8 v9
  = du_isCommutativeSemiringWithoutOne_1852 v9
du_isCommutativeSemiringWithoutOne_1852 ::
  T_IsCommutativeRing_1720 -> T_IsCommutativeSemiringWithoutOne_1044
du_isCommutativeSemiringWithoutOne_1852 v0
  = coe
      du_isCommutativeSemiringWithoutOne_1444
      (coe du_isCommutativeSemiring_1842 (coe v0))
-- Algebra.Structures.IsBooleanAlgebra
d_IsBooleanAlgebra_1864 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsBooleanAlgebra_1864
  = C_IsBooleanAlgebra'46'constructor_53651 T_IsDistributiveLattice_814
                                            (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
                                            (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsBooleanAlgebra.isDistributiveLattice
d_isDistributiveLattice_1884 ::
  T_IsBooleanAlgebra_1864 -> T_IsDistributiveLattice_814
d_isDistributiveLattice_1884 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_53651 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanAlgebra.∨-complementʳ
d_'8744''45'complement'691'_1886 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny
d_'8744''45'complement'691'_1886 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_53651 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanAlgebra.∧-complementʳ
d_'8743''45'complement'691'_1888 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny
d_'8743''45'complement'691'_1888 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_53651 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanAlgebra.¬-cong
d_'172''45'cong_1890 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'cong_1890 v0
  = case coe v0 of
      C_IsBooleanAlgebra'46'constructor_53651 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanAlgebra._.absorptive
d_absorptive_1894 ::
  T_IsBooleanAlgebra_1864 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_absorptive_1894 v0
  = coe
      d_absorptive_776
      (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0)))
-- Algebra.Structures.IsBooleanAlgebra._.isEquivalence
d_isEquivalence_1896 ::
  T_IsBooleanAlgebra_1864 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1896 v0
  = coe
      d_isEquivalence_762
      (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0)))
-- Algebra.Structures.IsBooleanAlgebra._.isLattice
d_isLattice_1898 :: T_IsBooleanAlgebra_1864 -> T_IsLattice_740
d_isLattice_1898 v0
  = coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0))
-- Algebra.Structures.IsBooleanAlgebra._.isPartialEquivalence
d_isPartialEquivalence_1900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1864 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1900 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_1900 v9
du_isPartialEquivalence_1900 ::
  T_IsBooleanAlgebra_1864 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1900 v0
  = let v1 = d_isDistributiveLattice_1884 (coe v0) in
    let v2 = d_isLattice_824 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_762 (coe v2))
-- Algebra.Structures.IsBooleanAlgebra._.refl
d_refl_1902 :: T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny
d_refl_1902 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_762
         (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0))))
-- Algebra.Structures.IsBooleanAlgebra._.reflexive
d_reflexive_1904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1864 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1904 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_1904 v9
du_reflexive_1904 ::
  T_IsBooleanAlgebra_1864 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1904 v0
  = let v1 = d_isDistributiveLattice_1884 (coe v0) in
    let v2 = d_isLattice_824 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
        (coe d_isEquivalence_762 (coe v2)) v3
-- Algebra.Structures.IsBooleanAlgebra._.sym
d_sym_1906 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1906 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_762
         (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0))))
-- Algebra.Structures.IsBooleanAlgebra._.trans
d_trans_1908 ::
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1908 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_762
         (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0))))
-- Algebra.Structures.IsBooleanAlgebra._.∧-absorbs-∨
d_'8743''45'absorbs'45''8744'_1910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'absorbs'45''8744'_1910 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9
  = du_'8743''45'absorbs'45''8744'_1910 v9
du_'8743''45'absorbs'45''8744'_1910 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'absorbs'45''8744'_1910 v0
  = let v1 = d_isDistributiveLattice_1884 (coe v0) in
    coe
      du_'8743''45'absorbs'45''8744'_792 (coe d_isLattice_824 (coe v1))
-- Algebra.Structures.IsBooleanAlgebra._.∧-assoc
d_'8743''45'assoc_1912 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'assoc_1912 v0
  = coe
      d_'8743''45'assoc_772
      (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0)))
-- Algebra.Structures.IsBooleanAlgebra._.∧-comm
d_'8743''45'comm_1914 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'comm_1914 v0
  = coe
      d_'8743''45'comm_770
      (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0)))
-- Algebra.Structures.IsBooleanAlgebra._.∧-cong
d_'8743''45'cong_1916 ::
  T_IsBooleanAlgebra_1864 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong_1916 v0
  = coe
      d_'8743''45'cong_774
      (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0)))
-- Algebra.Structures.IsBooleanAlgebra._.∧-congʳ
d_'8743''45'cong'691'_1918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'691'_1918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'691'_1918 v9
du_'8743''45'cong'691'_1918 ::
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'691'_1918 v0
  = let v1 = d_isDistributiveLattice_1884 (coe v0) in
    coe du_'8743''45'cong'691'_798 (coe d_isLattice_824 (coe v1))
-- Algebra.Structures.IsBooleanAlgebra._.∧-congˡ
d_'8743''45'cong'737'_1920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'cong'737'_1920 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8743''45'cong'737'_1920 v9
du_'8743''45'cong'737'_1920 ::
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'cong'737'_1920 v0
  = let v1 = d_isDistributiveLattice_1884 (coe v0) in
    coe du_'8743''45'cong'737'_794 (coe d_isLattice_824 (coe v1))
-- Algebra.Structures.IsBooleanAlgebra._.∨-absorbs-∧
d_'8744''45'absorbs'45''8743'_1922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'absorbs'45''8743'_1922 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   ~v8 v9
  = du_'8744''45'absorbs'45''8743'_1922 v9
du_'8744''45'absorbs'45''8743'_1922 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'absorbs'45''8743'_1922 v0
  = let v1 = d_isDistributiveLattice_1884 (coe v0) in
    coe
      du_'8744''45'absorbs'45''8743'_790 (coe d_isLattice_824 (coe v1))
-- Algebra.Structures.IsBooleanAlgebra._.∨-assoc
d_'8744''45'assoc_1924 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'assoc_1924 v0
  = coe
      d_'8744''45'assoc_766
      (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0)))
-- Algebra.Structures.IsBooleanAlgebra._.∨-comm
d_'8744''45'comm_1926 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'comm_1926 v0
  = coe
      d_'8744''45'comm_764
      (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0)))
-- Algebra.Structures.IsBooleanAlgebra._.∨-cong
d_'8744''45'cong_1928 ::
  T_IsBooleanAlgebra_1864 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong_1928 v0
  = coe
      d_'8744''45'cong_768
      (coe d_isLattice_824 (coe d_isDistributiveLattice_1884 (coe v0)))
-- Algebra.Structures.IsBooleanAlgebra._.∨-congʳ
d_'8744''45'cong'691'_1930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'691'_1930 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'691'_1930 v9
du_'8744''45'cong'691'_1930 ::
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'691'_1930 v0
  = let v1 = d_isDistributiveLattice_1884 (coe v0) in
    coe du_'8744''45'cong'691'_806 (coe d_isLattice_824 (coe v1))
-- Algebra.Structures.IsBooleanAlgebra._.∨-congˡ
d_'8744''45'cong'737'_1932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'cong'737'_1932 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8744''45'cong'737'_1932 v9
du_'8744''45'cong'737'_1932 ::
  T_IsBooleanAlgebra_1864 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'cong'737'_1932 v0
  = let v1 = d_isDistributiveLattice_1884 (coe v0) in
    coe du_'8744''45'cong'737'_802 (coe d_isLattice_824 (coe v1))
-- Algebra.Structures.IsBooleanAlgebra._.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_1934 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'691''45''8743'_1934 v0
  = coe
      d_'8744''45'distrib'691''45''8743'_826
      (coe d_isDistributiveLattice_1884 (coe v0))
-- Algebra.Structures.IsBooleanAlgebra._.∨-∧-distribʳ
d_'8744''45''8743''45'distrib'691'_1936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45''8743''45'distrib'691'_1936 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                        ~v7 ~v8 v9
  = du_'8744''45''8743''45'distrib'691'_1936 v9
du_'8744''45''8743''45'distrib'691'_1936 ::
  T_IsBooleanAlgebra_1864 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45''8743''45'distrib'691'_1936 v0
  = coe
      du_'8744''45''8743''45'distrib'691'_868
      (coe d_isDistributiveLattice_1884 (coe v0))
