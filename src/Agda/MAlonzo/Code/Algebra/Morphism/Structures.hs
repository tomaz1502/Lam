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

module MAlonzo.Code.Algebra.Morphism.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

-- Algebra.Morphism.Structures.MagmaMorphisms._._∙_
d__'8729'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__30 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8729'__30 v4
du__'8729'__30 ::
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__30 v0
  = coe MAlonzo.Code.Algebra.Bundles.d__'8729'__24 (coe v0)
-- Algebra.Morphism.Structures.MagmaMorphisms._._≈_
d__'8776'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__32 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms._.Carrier
d_Carrier_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 -> ()
d_Carrier_36 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms._.Homomorphic₂
d_Homomorphic'8322'_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_54 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms._.Injective
d_Injective_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  (AgdaAny -> AgdaAny) -> ()
d_Injective_64 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms._.Surjective
d_Surjective_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> ()
d_Surjective_72 = erased
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism
d_IsMagmaHomomorphism_76 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaHomomorphism_76
  = C_IsMagmaHomomorphism'46'constructor_769 MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
                                             (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_84 ::
  T_IsMagmaHomomorphism_76 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_84 v0
  = case coe v0 of
      C_IsMagmaHomomorphism'46'constructor_769 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.homo
d_homo_86 ::
  T_IsMagmaHomomorphism_76 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_86 v0
  = case coe v0 of
      C_IsMagmaHomomorphism'46'constructor_769 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism._.cong
d_cong_90 ::
  T_IsMagmaHomomorphism_76 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_90 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_84 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism
d_IsMagmaMonomorphism_94 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaMonomorphism_94
  = C_IsMagmaMonomorphism'46'constructor_1403 T_IsMagmaHomomorphism_76
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_102 ::
  T_IsMagmaMonomorphism_94 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_102 v0
  = case coe v0 of
      C_IsMagmaMonomorphism'46'constructor_1403 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.injective
d_injective_104 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_104 v0
  = case coe v0 of
      C_IsMagmaMonomorphism'46'constructor_1403 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.homo
d_homo_108 ::
  T_IsMagmaMonomorphism_94 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_108 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_110 ::
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_110 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.cong
d_cong_112 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_112 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_114 v7
du_isRelMonomorphism_114 ::
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_114 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelMonomorphism'46'constructor_1081
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0)))
      (coe d_injective_104 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism
d_IsMagmaIsomorphism_118 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMagmaIsomorphism_118
  = C_IsMagmaIsomorphism'46'constructor_2385 T_IsMagmaMonomorphism_94
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_126 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_126 v0
  = case coe v0 of
      C_IsMagmaIsomorphism'46'constructor_2385 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.surjective
d_surjective_128 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_128 v0
  = case coe v0 of
      C_IsMagmaIsomorphism'46'constructor_2385 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.homo
d_homo_132 ::
  T_IsMagmaIsomorphism_118 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_132 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.injective
d_injective_134 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_134 v0
  = coe d_injective_104 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_136 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_136 v0
  = coe
      d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_138 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_138 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_140 v7
du_isRelMonomorphism_140 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_140 v0
  = coe
      du_isRelMonomorphism_114 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.cong
d_cong_142 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_102
            (coe d_isMagmaMonomorphism_126 (coe v0))))
-- Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_144 v7
du_isRelIsomorphism_144 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_144 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelIsomorphism'46'constructor_2251
      (coe
         du_isRelMonomorphism_114 (coe d_isMagmaMonomorphism_126 (coe v0)))
      (coe d_surjective_128 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.Carrier
d_Carrier_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 -> ()
d_Carrier_168 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.ε
d_ε_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 -> AgdaAny
d_ε_172 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ε_172 v4
du_ε_172 :: MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 -> AgdaAny
du_ε_172 v0 = coe MAlonzo.Code.Algebra.Bundles.d_ε_494 (coe v0)
-- Algebra.Morphism.Structures.MonoidMorphisms._.Homomorphic₀
d_Homomorphic'8320'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_190 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.Injective
d_Injective_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) -> ()
d_Injective_204 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.Surjective
d_Surjective_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> ()
d_Surjective_212 = erased
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism
d_IsMagmaHomomorphism_216 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism
d_IsMagmaIsomorphism_218 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_220 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.homo
d_homo_224 ::
  T_IsMagmaHomomorphism_76 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_224 = coe d_homo_86
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_226 ::
  T_IsMagmaHomomorphism_76 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_226 = coe d_isRelHomomorphism_84
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.cong
d_cong_228 ::
  T_IsMagmaHomomorphism_76 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_228 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_84 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.homo
d_homo_232 ::
  T_IsMagmaIsomorphism_118 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_232 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.injective
d_injective_234 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_234 v0
  = coe d_injective_104 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_236 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_236 v0
  = coe
      d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_238 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_238 = coe d_isMagmaMonomorphism_126
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_240 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_240 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_242
du_isRelIsomorphism_242 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_242 v0 v1 = coe du_isRelIsomorphism_144 v1
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_244 v7
du_isRelMonomorphism_244 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_244 v0
  = coe
      du_isRelMonomorphism_114 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.surjective
d_surjective_246 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_246 = coe d_surjective_128
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.cong
d_cong_248 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_248 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_102
            (coe d_isMagmaMonomorphism_126 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.homo
d_homo_252 ::
  T_IsMagmaMonomorphism_94 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_252 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.injective
d_injective_254 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_254 = coe d_injective_104
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_256 ::
  T_IsMagmaMonomorphism_94 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_256 = coe d_isMagmaHomomorphism_102
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_258 ::
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_258 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_260
du_isRelMonomorphism_260 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_260 v0 v1 = coe du_isRelMonomorphism_114 v1
-- Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.cong
d_cong_262 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_262 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism
d_IsMonoidHomomorphism_266 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidHomomorphism_266
  = C_IsMonoidHomomorphism'46'constructor_4491 T_IsMagmaHomomorphism_76
                                               AgdaAny
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_274 ::
  T_IsMonoidHomomorphism_266 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_274 v0
  = case coe v0 of
      C_IsMonoidHomomorphism'46'constructor_4491 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_276 :: T_IsMonoidHomomorphism_266 -> AgdaAny
d_ε'45'homo_276 v0
  = case coe v0 of
      C_IsMonoidHomomorphism'46'constructor_4491 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.homo
d_homo_280 ::
  T_IsMonoidHomomorphism_266 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_280 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_282 ::
  T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_282 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.cong
d_cong_284 ::
  T_IsMonoidHomomorphism_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_284 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism
d_IsMonoidMonomorphism_288 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidMonomorphism_288
  = C_IsMonoidMonomorphism'46'constructor_4945 T_IsMonoidHomomorphism_266
                                               (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_296 ::
  T_IsMonoidMonomorphism_288 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_296 v0
  = case coe v0 of
      C_IsMonoidMonomorphism'46'constructor_4945 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.injective
d_injective_298 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_298 v0
  = case coe v0 of
      C_IsMonoidMonomorphism'46'constructor_4945 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.homo
d_homo_302 ::
  T_IsMonoidMonomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_302 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_304 ::
  T_IsMonoidMonomorphism_288 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_304 v0
  = coe
      d_isMagmaHomomorphism_274 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_306 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_306 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.ε-homo
d_ε'45'homo_308 :: T_IsMonoidMonomorphism_288 -> AgdaAny
d_ε'45'homo_308 v0
  = coe d_ε'45'homo_276 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.cong
d_cong_310 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_isMonoidHomomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_312 v7
du_isMagmaMonomorphism_312 ::
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_312 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1403
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
      (coe d_injective_298 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_316 v7
du_isRelMonomorphism_316 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_316 v0
  = coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism
d_IsMonoidIsomorphism_320 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidIsomorphism_320
  = C_IsMonoidIsomorphism'46'constructor_5925 T_IsMonoidMonomorphism_288
                                              (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_328 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_328 v0
  = case coe v0 of
      C_IsMonoidIsomorphism'46'constructor_5925 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.surjective
d_surjective_330 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_330 v0
  = case coe v0 of
      C_IsMonoidIsomorphism'46'constructor_5925 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.homo
d_homo_334 ::
  T_IsMonoidIsomorphism_320 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_334 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.injective
d_injective_336 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_336 v0
  = coe d_injective_298 (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_338 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_338 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaMonomorphism
d_isMagmaMonomorphism_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_340 v7
du_isMagmaMonomorphism_340 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_340 v0
  = coe
      du_isMagmaMonomorphism_312
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_342 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_342 v0
  = coe
      d_isMonoidHomomorphism_296
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_344 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_344 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_346 v7
du_isRelMonomorphism_346 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_346 v0
  = let v1 = d_isMonoidMonomorphism_328 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.ε-homo
d_ε'45'homo_348 :: T_IsMonoidIsomorphism_320 -> AgdaAny
d_ε'45'homo_348 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.cong
d_cong_350 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_350 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_296
               (coe d_isMonoidMonomorphism_328 (coe v0)))))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaIsomorphism_352 v7
du_isMagmaIsomorphism_352 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_352 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_2385
      (coe
         du_isMagmaMonomorphism_312
         (coe d_isMonoidMonomorphism_328 (coe v0)))
      (coe d_surjective_330 (coe v0))
-- Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_356 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_356 v7
du_isRelIsomorphism_356 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_356 v0
  = coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._._⁻¹
d__'8315''185'_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 -> AgdaAny -> AgdaAny
d__'8315''185'_374 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8315''185'_374 v4
du__'8315''185'_374 ::
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 -> AgdaAny -> AgdaAny
du__'8315''185'_374 v0
  = coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_876 (coe v0)
-- Algebra.Morphism.Structures.GroupMorphisms._.Carrier
d_Carrier_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 -> ()
d_Carrier_382 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.Homomorphic₁
d_Homomorphic'8321'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_412 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.Injective
d_Injective_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) -> ()
d_Injective_424 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.Surjective
d_Surjective_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> ()
d_Surjective_432 = erased
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism
d_IsMagmaHomomorphism_436 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism
d_IsMagmaIsomorphism_438 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism
d_IsMagmaMonomorphism_440 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.homo
d_homo_444 ::
  T_IsMagmaHomomorphism_76 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_444 = coe d_homo_86
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_446 ::
  T_IsMagmaHomomorphism_76 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_446 = coe d_isRelHomomorphism_84
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.cong
d_cong_448 ::
  T_IsMagmaHomomorphism_76 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_448 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_84 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.homo
d_homo_452 ::
  T_IsMagmaIsomorphism_118 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_452 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.injective
d_injective_454 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_454 v0
  = coe d_injective_104 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_456 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_456 v0
  = coe
      d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_458 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_458 = coe d_isMagmaMonomorphism_126
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_460 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_460 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_462
du_isRelIsomorphism_462 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_462 v0 v1 = coe du_isRelIsomorphism_144 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_464 v7
du_isRelMonomorphism_464 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_464 v0
  = coe
      du_isRelMonomorphism_114 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.surjective
d_surjective_466 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_466 = coe d_surjective_128
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.cong
d_cong_468 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_468 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_102
            (coe d_isMagmaMonomorphism_126 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.homo
d_homo_472 ::
  T_IsMagmaMonomorphism_94 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_472 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.injective
d_injective_474 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_474 = coe d_injective_104
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_476 ::
  T_IsMagmaMonomorphism_94 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_476 = coe d_isMagmaHomomorphism_102
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_478 ::
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_478 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_480 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_480
du_isRelMonomorphism_480 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_480 v0 v1 = coe du_isRelMonomorphism_114 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.cong
d_cong_482 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_482 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_486 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_488 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_490 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.homo
d_homo_494 ::
  T_IsMonoidHomomorphism_266 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_494 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_496 ::
  T_IsMonoidHomomorphism_266 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_496 = coe d_isMagmaHomomorphism_274
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_498 ::
  T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_498 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_500 :: T_IsMonoidHomomorphism_266 -> AgdaAny
d_ε'45'homo_500 = coe d_ε'45'homo_276
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.cong
d_cong_502 ::
  T_IsMonoidHomomorphism_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_502 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.homo
d_homo_506 ::
  T_IsMonoidIsomorphism_320 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_506 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.injective
d_injective_508 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_508 v0
  = coe d_injective_298 (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_510 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_510 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_512 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_512
du_isMagmaIsomorphism_512 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_512 v0 v1 = coe du_isMagmaIsomorphism_352 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_514 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_514 v7
du_isMagmaMonomorphism_514 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_514 v0
  = coe
      du_isMagmaMonomorphism_312
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_516 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_516 v0
  = coe
      d_isMonoidHomomorphism_296
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_518 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_518 = coe d_isMonoidMonomorphism_328
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_520 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_520 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_522 v7
du_isRelIsomorphism_522 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_522 v0
  = coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_524 v7
du_isRelMonomorphism_524 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_524 v0
  = let v1 = d_isMonoidMonomorphism_328 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.surjective
d_surjective_526 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_526 = coe d_surjective_330
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_528 :: T_IsMonoidIsomorphism_320 -> AgdaAny
d_ε'45'homo_528 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.cong
d_cong_530 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_530 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_296
               (coe d_isMonoidMonomorphism_328 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.homo
d_homo_534 ::
  T_IsMonoidMonomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_534 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.injective
d_injective_536 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_536 = coe d_injective_298
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_538 ::
  T_IsMonoidMonomorphism_288 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_538 v0
  = coe
      d_isMagmaHomomorphism_274 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_540
du_isMagmaMonomorphism_540 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_540 v0 v1
  = coe du_isMagmaMonomorphism_312 v1
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_542 ::
  T_IsMonoidMonomorphism_288 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_542 = coe d_isMonoidHomomorphism_296
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_544 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_544 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_546 v7
du_isRelMonomorphism_546 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_546 v0
  = coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_548 :: T_IsMonoidMonomorphism_288 -> AgdaAny
d_ε'45'homo_548 v0
  = coe d_ε'45'homo_276 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.cong
d_cong_550 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_550 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_isMonoidHomomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism
d_IsGroupHomomorphism_554 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupHomomorphism_554
  = C_IsGroupHomomorphism'46'constructor_8781 T_IsMonoidHomomorphism_266
                                              (AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_562 ::
  T_IsGroupHomomorphism_554 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_562 v0
  = case coe v0 of
      C_IsGroupHomomorphism'46'constructor_8781 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_564 ::
  T_IsGroupHomomorphism_554 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_564 v0
  = case coe v0 of
      C_IsGroupHomomorphism'46'constructor_8781 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.homo
d_homo_568 ::
  T_IsGroupHomomorphism_554 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_568 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_562 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_570 ::
  T_IsGroupHomomorphism_554 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_570 v0
  = coe
      d_isMagmaHomomorphism_274 (coe d_isMonoidHomomorphism_562 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_572 ::
  T_IsGroupHomomorphism_554 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_572 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_562 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.ε-homo
d_ε'45'homo_574 :: T_IsGroupHomomorphism_554 -> AgdaAny
d_ε'45'homo_574 v0
  = coe d_ε'45'homo_276 (coe d_isMonoidHomomorphism_562 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.cong
d_cong_576 ::
  T_IsGroupHomomorphism_554 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_576 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_isMonoidHomomorphism_562 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism
d_IsGroupMonomorphism_580 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupMonomorphism_580
  = C_IsGroupMonomorphism'46'constructor_9361 T_IsGroupHomomorphism_554
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_588 ::
  T_IsGroupMonomorphism_580 -> T_IsGroupHomomorphism_554
d_isGroupHomomorphism_588 v0
  = case coe v0 of
      C_IsGroupMonomorphism'46'constructor_9361 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.injective
d_injective_590 ::
  T_IsGroupMonomorphism_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_590 v0
  = case coe v0 of
      C_IsGroupMonomorphism'46'constructor_9361 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_594 ::
  T_IsGroupMonomorphism_580 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_594 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_562
         (coe d_isGroupHomomorphism_588 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_596 ::
  T_IsGroupMonomorphism_580 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_596 v0
  = coe
      d_isMonoidHomomorphism_562 (coe d_isGroupHomomorphism_588 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_598 ::
  T_IsGroupMonomorphism_580 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_598 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe d_isGroupHomomorphism_588 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.ε-homo
d_ε'45'homo_600 :: T_IsGroupMonomorphism_580 -> AgdaAny
d_ε'45'homo_600 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_562
         (coe d_isGroupHomomorphism_588 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.⁻¹-homo
d_'8315''185''45'homo_602 ::
  T_IsGroupMonomorphism_580 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_602 v0
  = coe
      d_'8315''185''45'homo_564 (coe d_isGroupHomomorphism_588 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.homo
d_homo_604 ::
  T_IsGroupMonomorphism_580 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_604 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe d_isGroupHomomorphism_588 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.cong
d_cong_606 ::
  T_IsGroupMonomorphism_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_562
               (coe d_isGroupHomomorphism_588 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_580 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_608 v7
du_isMonoidMonomorphism_608 ::
  T_IsGroupMonomorphism_580 -> T_IsMonoidMonomorphism_288
du_isMonoidMonomorphism_608 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_4945
      (coe
         d_isMonoidHomomorphism_562
         (coe d_isGroupHomomorphism_588 (coe v0)))
      (coe d_injective_590 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_580 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_612 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_612 v7
du_isRelMonomorphism_612 ::
  T_IsGroupMonomorphism_580 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_612 v0
  = let v1 = coe du_isMonoidMonomorphism_608 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism
d_IsGroupIsomorphism_616 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroupIsomorphism_616
  = C_IsGroupIsomorphism'46'constructor_10469 T_IsGroupMonomorphism_580
                                              (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_624 ::
  T_IsGroupIsomorphism_616 -> T_IsGroupMonomorphism_580
d_isGroupMonomorphism_624 v0
  = case coe v0 of
      C_IsGroupIsomorphism'46'constructor_10469 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.surjective
d_surjective_626 ::
  T_IsGroupIsomorphism_616 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_626 v0
  = case coe v0 of
      C_IsGroupIsomorphism'46'constructor_10469 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.injective
d_injective_630 ::
  T_IsGroupIsomorphism_616 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_630 v0
  = coe d_injective_590 (coe d_isGroupMonomorphism_624 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isGroupHomomorphism
d_isGroupHomomorphism_632 ::
  T_IsGroupIsomorphism_616 -> T_IsGroupHomomorphism_554
d_isGroupHomomorphism_632 v0
  = coe
      d_isGroupHomomorphism_588 (coe d_isGroupMonomorphism_624 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_634 ::
  T_IsGroupIsomorphism_616 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_634 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_562
         (coe
            d_isGroupHomomorphism_588
            (coe d_isGroupMonomorphism_624 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_636 ::
  T_IsGroupIsomorphism_616 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_636 v0
  = coe
      d_isMonoidHomomorphism_562
      (coe
         d_isGroupHomomorphism_588 (coe d_isGroupMonomorphism_624 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMonoidMonomorphism
d_isMonoidMonomorphism_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_638 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_638 v7
du_isMonoidMonomorphism_638 ::
  T_IsGroupIsomorphism_616 -> T_IsMonoidMonomorphism_288
du_isMonoidMonomorphism_638 v0
  = coe
      du_isMonoidMonomorphism_608
      (coe d_isGroupMonomorphism_624 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_640 ::
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_640 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe
               d_isGroupHomomorphism_588
               (coe d_isGroupMonomorphism_624 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_642 v7
du_isRelMonomorphism_642 ::
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_642 v0
  = let v1 = d_isGroupMonomorphism_624 (coe v0) in
    let v2 = coe du_isMonoidMonomorphism_608 (coe v1) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v2))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.ε-homo
d_ε'45'homo_644 :: T_IsGroupIsomorphism_616 -> AgdaAny
d_ε'45'homo_644 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_562
         (coe
            d_isGroupHomomorphism_588
            (coe d_isGroupMonomorphism_624 (coe v0))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.⁻¹-homo
d_'8315''185''45'homo_646 ::
  T_IsGroupIsomorphism_616 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_646 v0
  = coe
      d_'8315''185''45'homo_564
      (coe
         d_isGroupHomomorphism_588 (coe d_isGroupMonomorphism_624 (coe v0)))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.homo
d_homo_648 ::
  T_IsGroupIsomorphism_616 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_648 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe
               d_isGroupHomomorphism_588
               (coe d_isGroupMonomorphism_624 (coe v0)))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.cong
d_cong_650 ::
  T_IsGroupIsomorphism_616 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_650 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_562
               (coe
                  d_isGroupHomomorphism_588
                  (coe d_isGroupMonomorphism_624 (coe v0))))))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 -> T_IsMonoidIsomorphism_320
d_isMonoidIsomorphism_652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidIsomorphism_652 v7
du_isMonoidIsomorphism_652 ::
  T_IsGroupIsomorphism_616 -> T_IsMonoidIsomorphism_320
du_isMonoidIsomorphism_652 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_5925
      (coe
         du_isMonoidMonomorphism_608
         (coe d_isGroupMonomorphism_624 (coe v0)))
      (coe d_surjective_626 (coe v0))
-- Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  MAlonzo.Code.Algebra.Bundles.T_RawGroup_852 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_656 v7
du_isRelIsomorphism_656 ::
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_656 v0
  = let v1 = coe du_isMonoidIsomorphism_652 (coe v0) in
    coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v1))
-- Algebra.Morphism.Structures.NearSemiringMorphisms._.Carrier
d_Carrier_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 -> ()
d_Carrier_690 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism
d_IsMonoidHomomorphism_714 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism
d_IsMonoidIsomorphism_716 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism
d_IsMonoidMonomorphism_718 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.homo
d_homo_722 ::
  T_IsMonoidHomomorphism_266 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_722 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_724 ::
  T_IsMonoidHomomorphism_266 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_724 = coe d_isMagmaHomomorphism_274
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_726 ::
  T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_726 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_728 :: T_IsMonoidHomomorphism_266 -> AgdaAny
d_ε'45'homo_728 = coe d_ε'45'homo_276
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidHomomorphism.cong
d_cong_730 ::
  T_IsMonoidHomomorphism_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_730 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.homo
d_homo_734 ::
  T_IsMonoidIsomorphism_320 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_734 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.injective
d_injective_736 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_736 v0
  = coe d_injective_298 (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_738 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_738 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_740
du_isMagmaIsomorphism_740 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_740 v0 v1 = coe du_isMagmaIsomorphism_352 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_742 v7
du_isMagmaMonomorphism_742 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_742 v0
  = coe
      du_isMagmaMonomorphism_312
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_744 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_744 v0
  = coe
      d_isMonoidHomomorphism_296
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_746 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_746 = coe d_isMonoidMonomorphism_328
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_748 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_748 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_750 v7
du_isRelIsomorphism_750 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_750 v0
  = coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_752 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_752 v7
du_isRelMonomorphism_752 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_752 v0
  = let v1 = d_isMonoidMonomorphism_328 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.surjective
d_surjective_754 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_754 = coe d_surjective_330
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_756 :: T_IsMonoidIsomorphism_320 -> AgdaAny
d_ε'45'homo_756 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidIsomorphism.cong
d_cong_758 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_758 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_296
               (coe d_isMonoidMonomorphism_328 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.homo
d_homo_762 ::
  T_IsMonoidMonomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_762 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.injective
d_injective_764 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_764 = coe d_injective_298
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_766 ::
  T_IsMonoidMonomorphism_288 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_766 v0
  = coe
      d_isMagmaHomomorphism_274 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_768 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_768
du_isMagmaMonomorphism_768 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_768 v0 v1
  = coe du_isMagmaMonomorphism_312 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_770 ::
  T_IsMonoidMonomorphism_288 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_770 = coe d_isMonoidHomomorphism_296
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_772 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_772 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_774 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_774 v7
du_isRelMonomorphism_774 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_774 v0
  = coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_776 :: T_IsMonoidMonomorphism_288 -> AgdaAny
d_ε'45'homo_776 v0
  = coe d_ε'45'homo_276 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.+.IsMonoidMonomorphism.cong
d_cong_778 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_778 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_isMonoidHomomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism
d_IsMagmaHomomorphism_782 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism
d_IsMagmaIsomorphism_784 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism
d_IsMagmaMonomorphism_786 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.homo
d_homo_790 ::
  T_IsMagmaHomomorphism_76 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_790 = coe d_homo_86
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_792 ::
  T_IsMagmaHomomorphism_76 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_792 = coe d_isRelHomomorphism_84
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaHomomorphism.cong
d_cong_794 ::
  T_IsMagmaHomomorphism_76 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_794 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_84 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.homo
d_homo_798 ::
  T_IsMagmaIsomorphism_118 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_798 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.injective
d_injective_800 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_800 v0
  = coe d_injective_104 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_802 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_802 v0
  = coe
      d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_804 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_804 = coe d_isMagmaMonomorphism_126
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_806 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_806 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_808
du_isRelIsomorphism_808 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_808 v0 v1 = coe du_isRelIsomorphism_144 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_810 v7
du_isRelMonomorphism_810 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_810 v0
  = coe
      du_isRelMonomorphism_114 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.surjective
d_surjective_812 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_812 = coe d_surjective_128
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaIsomorphism.cong
d_cong_814 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_814 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_102
            (coe d_isMagmaMonomorphism_126 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.homo
d_homo_818 ::
  T_IsMagmaMonomorphism_94 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_818 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.injective
d_injective_820 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_820 = coe d_injective_104
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_822 ::
  T_IsMagmaMonomorphism_94 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_822 = coe d_isMagmaHomomorphism_102
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_824 ::
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_824 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_826
du_isRelMonomorphism_826 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_826 v0 v1 = coe du_isRelMonomorphism_114 v1
-- Algebra.Morphism.Structures.NearSemiringMorphisms.*.IsMagmaMonomorphism.cong
d_cong_828 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_828 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms._.Injective
d_Injective_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) -> ()
d_Injective_846 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms._.Surjective
d_Surjective_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> ()
d_Surjective_854 = erased
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism
d_IsNearSemiringHomomorphism_858 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringHomomorphism_858
  = C_IsNearSemiringHomomorphism'46'constructor_13239 T_IsMonoidHomomorphism_266
                                                      T_IsMagmaHomomorphism_76
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_866 ::
  T_IsNearSemiringHomomorphism_858 -> T_IsMonoidHomomorphism_266
d_'43''45'isMonoidHomomorphism_866 v0
  = case coe v0 of
      C_IsNearSemiringHomomorphism'46'constructor_13239 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_868 ::
  T_IsNearSemiringHomomorphism_858 -> T_IsMagmaHomomorphism_76
d_'42''45'isMagmaHomomorphism_868 v0
  = case coe v0 of
      C_IsNearSemiringHomomorphism'46'constructor_13239 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.homo
d_homo_872 ::
  T_IsNearSemiringHomomorphism_858 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_872 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_'43''45'isMonoidHomomorphism_866 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.ε-homo
d_ε'45'homo_874 :: T_IsNearSemiringHomomorphism_858 -> AgdaAny
d_ε'45'homo_874 v0
  = coe
      d_ε'45'homo_276 (coe d_'43''45'isMonoidHomomorphism_866 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_876 ::
  T_IsNearSemiringHomomorphism_858 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_876 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe d_'43''45'isMonoidHomomorphism_866 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_878 ::
  T_IsNearSemiringHomomorphism_858 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_878 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_'43''45'isMonoidHomomorphism_866 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.cong
d_cong_880 ::
  T_IsNearSemiringHomomorphism_858 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_880 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_'43''45'isMonoidHomomorphism_866 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.homo
d_homo_884 ::
  T_IsNearSemiringHomomorphism_858 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_884 v0
  = coe d_homo_86 (coe d_'42''45'isMagmaHomomorphism_868 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_886 ::
  T_IsNearSemiringHomomorphism_858 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_886 v0
  = coe
      d_isRelHomomorphism_84
      (coe d_'42''45'isMagmaHomomorphism_868 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringHomomorphism._.cong
d_cong_888 ::
  T_IsNearSemiringHomomorphism_858 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_888 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe d_'42''45'isMagmaHomomorphism_868 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism
d_IsNearSemiringMonomorphism_892 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringMonomorphism_892
  = C_IsNearSemiringMonomorphism'46'constructor_14059 T_IsNearSemiringHomomorphism_858
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_900 ::
  T_IsNearSemiringMonomorphism_892 ->
  T_IsNearSemiringHomomorphism_858
d_isNearSemiringHomomorphism_900 v0
  = case coe v0 of
      C_IsNearSemiringMonomorphism'46'constructor_14059 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.injective
d_injective_902 ::
  T_IsNearSemiringMonomorphism_892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_902 v0
  = case coe v0 of
      C_IsNearSemiringMonomorphism'46'constructor_14059 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.homo
d_homo_906 ::
  T_IsNearSemiringMonomorphism_892 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_906 v0
  = coe
      d_homo_86
      (coe
         d_'42''45'isMagmaHomomorphism_868
         (coe d_isNearSemiringHomomorphism_900 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_908 ::
  T_IsNearSemiringMonomorphism_892 -> T_IsMagmaHomomorphism_76
d_'42''45'isMagmaHomomorphism_908 v0
  = coe
      d_'42''45'isMagmaHomomorphism_868
      (coe d_isNearSemiringHomomorphism_900 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.homo
d_homo_910 ::
  T_IsNearSemiringMonomorphism_892 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_910 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'43''45'isMonoidHomomorphism_866
            (coe d_isNearSemiringHomomorphism_900 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_912 ::
  T_IsNearSemiringMonomorphism_892 -> T_IsMonoidHomomorphism_266
d_'43''45'isMonoidHomomorphism_912 v0
  = coe
      d_'43''45'isMonoidHomomorphism_866
      (coe d_isNearSemiringHomomorphism_900 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.ε-homo
d_ε'45'homo_914 :: T_IsNearSemiringMonomorphism_892 -> AgdaAny
d_ε'45'homo_914 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_'43''45'isMonoidHomomorphism_866
         (coe d_isNearSemiringHomomorphism_900 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_916 ::
  T_IsNearSemiringMonomorphism_892 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_916 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_'43''45'isMonoidHomomorphism_866
         (coe d_isNearSemiringHomomorphism_900 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_918 ::
  T_IsNearSemiringMonomorphism_892 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_918 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'43''45'isMonoidHomomorphism_866
            (coe d_isNearSemiringHomomorphism_900 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_920 ::
  T_IsNearSemiringMonomorphism_892 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_920 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_'42''45'isMagmaHomomorphism_868
         (coe d_isNearSemiringHomomorphism_900 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.cong
d_cong_922 ::
  T_IsNearSemiringMonomorphism_892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_922 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_'43''45'isMonoidHomomorphism_866
               (coe d_isNearSemiringHomomorphism_900 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.cong
d_cong_924 ::
  T_IsNearSemiringMonomorphism_892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_924 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_'42''45'isMagmaHomomorphism_868
            (coe d_isNearSemiringHomomorphism_900 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_892 -> T_IsMonoidMonomorphism_288
d_'43''45'isMonoidMonomorphism_926 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_926 v7
du_'43''45'isMonoidMonomorphism_926 ::
  T_IsNearSemiringMonomorphism_892 -> T_IsMonoidMonomorphism_288
du_'43''45'isMonoidMonomorphism_926 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_4945
      (coe
         d_'43''45'isMonoidHomomorphism_866
         (coe d_isNearSemiringHomomorphism_900 (coe v0)))
      (coe d_injective_902 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_892 -> T_IsMagmaMonomorphism_94
d_'42''45'isMagmaMonomorphism_928 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_928 v7
du_'42''45'isMagmaMonomorphism_928 ::
  T_IsNearSemiringMonomorphism_892 -> T_IsMagmaMonomorphism_94
du_'42''45'isMagmaMonomorphism_928 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1403
      (coe
         d_'42''45'isMagmaHomomorphism_868
         (coe d_isNearSemiringHomomorphism_900 (coe v0)))
      (coe d_injective_902 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringMonomorphism_892 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_932 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_932 v7
du_isRelMonomorphism_932 ::
  T_IsNearSemiringMonomorphism_892 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_932 v0
  = coe
      du_isRelMonomorphism_114
      (coe du_'42''45'isMagmaMonomorphism_928 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism
d_IsNearSemiringIsomorphism_936 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiringIsomorphism_936
  = C_IsNearSemiringIsomorphism'46'constructor_15613 T_IsNearSemiringMonomorphism_892
                                                     (AgdaAny ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.isNearSemiringMonomorphism
d_isNearSemiringMonomorphism_944 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsNearSemiringMonomorphism_892
d_isNearSemiringMonomorphism_944 v0
  = case coe v0 of
      C_IsNearSemiringIsomorphism'46'constructor_15613 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.surjective
d_surjective_946 ::
  T_IsNearSemiringIsomorphism_936 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_946 v0
  = case coe v0 of
      C_IsNearSemiringIsomorphism'46'constructor_15613 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.homo
d_homo_950 ::
  T_IsNearSemiringIsomorphism_936 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_950 v0
  = coe
      d_homo_86
      (coe
         d_'42''45'isMagmaHomomorphism_868
         (coe
            d_isNearSemiringHomomorphism_900
            (coe d_isNearSemiringMonomorphism_944 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.*-isMagmaHomomorphism
d_'42''45'isMagmaHomomorphism_952 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsMagmaHomomorphism_76
d_'42''45'isMagmaHomomorphism_952 v0
  = coe
      d_'42''45'isMagmaHomomorphism_868
      (coe
         d_isNearSemiringHomomorphism_900
         (coe d_isNearSemiringMonomorphism_944 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.*-isMagmaMonomorphism
d_'42''45'isMagmaMonomorphism_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_936 -> T_IsMagmaMonomorphism_94
d_'42''45'isMagmaMonomorphism_954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaMonomorphism_954 v7
du_'42''45'isMagmaMonomorphism_954 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsMagmaMonomorphism_94
du_'42''45'isMagmaMonomorphism_954 v0
  = coe
      du_'42''45'isMagmaMonomorphism_928
      (coe d_isNearSemiringMonomorphism_944 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.homo
d_homo_956 ::
  T_IsNearSemiringIsomorphism_936 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_956 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'43''45'isMonoidHomomorphism_866
            (coe
               d_isNearSemiringHomomorphism_900
               (coe d_isNearSemiringMonomorphism_944 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_958 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsMonoidHomomorphism_266
d_'43''45'isMonoidHomomorphism_958 v0
  = coe
      d_'43''45'isMonoidHomomorphism_866
      (coe
         d_isNearSemiringHomomorphism_900
         (coe d_isNearSemiringMonomorphism_944 (coe v0)))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_936 -> T_IsMonoidMonomorphism_288
d_'43''45'isMonoidMonomorphism_960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_960 v7
du_'43''45'isMonoidMonomorphism_960 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsMonoidMonomorphism_288
du_'43''45'isMonoidMonomorphism_960 v0
  = coe
      du_'43''45'isMonoidMonomorphism_926
      (coe d_isNearSemiringMonomorphism_944 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.ε-homo
d_ε'45'homo_962 :: T_IsNearSemiringIsomorphism_936 -> AgdaAny
d_ε'45'homo_962 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_'43''45'isMonoidHomomorphism_866
         (coe
            d_isNearSemiringHomomorphism_900
            (coe d_isNearSemiringMonomorphism_944 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.injective
d_injective_964 ::
  T_IsNearSemiringIsomorphism_936 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_964 v0
  = coe
      d_injective_902 (coe d_isNearSemiringMonomorphism_944 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_966 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_966 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_'43''45'isMonoidHomomorphism_866
         (coe
            d_isNearSemiringHomomorphism_900
            (coe d_isNearSemiringMonomorphism_944 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isNearSemiringHomomorphism
d_isNearSemiringHomomorphism_968 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsNearSemiringHomomorphism_858
d_isNearSemiringHomomorphism_968 v0
  = coe
      d_isNearSemiringHomomorphism_900
      (coe d_isNearSemiringMonomorphism_944 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_970 ::
  T_IsNearSemiringIsomorphism_936 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_970 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'43''45'isMonoidHomomorphism_866
            (coe
               d_isNearSemiringHomomorphism_900
               (coe d_isNearSemiringMonomorphism_944 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_972 ::
  T_IsNearSemiringIsomorphism_936 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_972 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_'42''45'isMagmaHomomorphism_868
         (coe
            d_isNearSemiringHomomorphism_900
            (coe d_isNearSemiringMonomorphism_944 (coe v0))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_936 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_974 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_974 v7
du_isRelMonomorphism_974 ::
  T_IsNearSemiringIsomorphism_936 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_974 v0
  = let v1 = d_isNearSemiringMonomorphism_944 (coe v0) in
    coe
      du_isRelMonomorphism_114
      (coe du_'42''45'isMagmaMonomorphism_928 (coe v1))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.cong
d_cong_976 ::
  T_IsNearSemiringIsomorphism_936 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_976 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_'43''45'isMonoidHomomorphism_866
               (coe
                  d_isNearSemiringHomomorphism_900
                  (coe d_isNearSemiringMonomorphism_944 (coe v0))))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.cong
d_cong_978 ::
  T_IsNearSemiringIsomorphism_936 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_978 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_'42''45'isMagmaHomomorphism_868
            (coe
               d_isNearSemiringHomomorphism_900
               (coe d_isNearSemiringMonomorphism_944 (coe v0)))))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_936 -> T_IsMonoidIsomorphism_320
d_'43''45'isMonoidIsomorphism_980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_980 v7
du_'43''45'isMonoidIsomorphism_980 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsMonoidIsomorphism_320
du_'43''45'isMonoidIsomorphism_980 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_5925
      (coe
         du_'43''45'isMonoidMonomorphism_926
         (coe d_isNearSemiringMonomorphism_944 (coe v0)))
      (coe d_surjective_946 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism.*-isMagmaIsomorphism
d_'42''45'isMagmaIsomorphism_982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_936 -> T_IsMagmaIsomorphism_118
d_'42''45'isMagmaIsomorphism_982 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagmaIsomorphism_982 v7
du_'42''45'isMagmaIsomorphism_982 ::
  T_IsNearSemiringIsomorphism_936 -> T_IsMagmaIsomorphism_118
du_'42''45'isMagmaIsomorphism_982 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_2385
      (coe
         du_'42''45'isMagmaMonomorphism_928
         (coe d_isNearSemiringMonomorphism_944 (coe v0)))
      (coe d_surjective_946 (coe v0))
-- Algebra.Morphism.Structures.NearSemiringMorphisms.IsNearSemiringIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  MAlonzo.Code.Algebra.Bundles.T_RawNearSemiring_1314 ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearSemiringIsomorphism_936 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_986 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_986 v7
du_isRelIsomorphism_986 ::
  T_IsNearSemiringIsomorphism_936 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_986 v0
  = coe
      du_isRelIsomorphism_144
      (coe du_'42''45'isMagmaIsomorphism_982 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms._.Carrier
d_Carrier_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 -> ()
d_Carrier_1024 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1056 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1058 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1060 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidHomomorphism.homo
d_homo_1064 ::
  T_IsMonoidHomomorphism_266 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1064 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1066 ::
  T_IsMonoidHomomorphism_266 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1066 = coe d_isMagmaHomomorphism_274
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1068 ::
  T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1068 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1070 :: T_IsMonoidHomomorphism_266 -> AgdaAny
d_ε'45'homo_1070 = coe d_ε'45'homo_276
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidHomomorphism.cong
d_cong_1072 ::
  T_IsMonoidHomomorphism_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1072 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.homo
d_homo_1076 ::
  T_IsMonoidIsomorphism_320 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1076 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.injective
d_injective_1078 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1078 v0
  = coe d_injective_298 (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1080 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1080 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_1082 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_1082
du_isMagmaIsomorphism_1082 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_1082 v0 v1 = coe du_isMagmaIsomorphism_352 v1
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1084 v7
du_isMagmaMonomorphism_1084 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1084 v0
  = coe
      du_isMagmaMonomorphism_312
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1086 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1086 v0
  = coe
      d_isMonoidHomomorphism_296
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1088 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_1088 = coe d_isMonoidMonomorphism_328
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1090 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1090 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1092 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1092 v7
du_isRelIsomorphism_1092 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1092 v0
  = coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1094 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1094 v7
du_isRelMonomorphism_1094 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1094 v0
  = let v1 = d_isMonoidMonomorphism_328 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.surjective
d_surjective_1096 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1096 = coe d_surjective_330
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1098 :: T_IsMonoidIsomorphism_320 -> AgdaAny
d_ε'45'homo_1098 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidIsomorphism.cong
d_cong_1100 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1100 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_296
               (coe d_isMonoidMonomorphism_328 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.homo
d_homo_1104 ::
  T_IsMonoidMonomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1104 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.injective
d_injective_1106 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1106 = coe d_injective_298
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1108 ::
  T_IsMonoidMonomorphism_288 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1108 v0
  = coe
      d_isMagmaHomomorphism_274 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_1110
du_isMagmaMonomorphism_1110 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1110 v0 v1
  = coe du_isMagmaMonomorphism_312 v1
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1112 ::
  T_IsMonoidMonomorphism_288 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1112 = coe d_isMonoidHomomorphism_296
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1114 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1114 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1116 v7
du_isRelMonomorphism_1116 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1116 v0
  = coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1118 :: T_IsMonoidMonomorphism_288 -> AgdaAny
d_ε'45'homo_1118 v0
  = coe d_ε'45'homo_276 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.+.IsMonoidMonomorphism.cong
d_cong_1120 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1120 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_isMonoidHomomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1124 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1126 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1128 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.homo
d_homo_1132 ::
  T_IsMonoidHomomorphism_266 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1132 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1134 ::
  T_IsMonoidHomomorphism_266 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1134 = coe d_isMagmaHomomorphism_274
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1136 ::
  T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1136 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1138 :: T_IsMonoidHomomorphism_266 -> AgdaAny
d_ε'45'homo_1138 = coe d_ε'45'homo_276
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidHomomorphism.cong
d_cong_1140 ::
  T_IsMonoidHomomorphism_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1140 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.homo
d_homo_1144 ::
  T_IsMonoidIsomorphism_320 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1144 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.injective
d_injective_1146 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1146 v0
  = coe d_injective_298 (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1148 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1148 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_1150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_1150
du_isMagmaIsomorphism_1150 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_1150 v0 v1 = coe du_isMagmaIsomorphism_352 v1
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1152 v7
du_isMagmaMonomorphism_1152 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1152 v0
  = coe
      du_isMagmaMonomorphism_312
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1154 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1154 v0
  = coe
      d_isMonoidHomomorphism_296
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1156 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_1156 = coe d_isMonoidMonomorphism_328
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1158 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1158 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1160 v7
du_isRelIsomorphism_1160 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1160 v0
  = coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1162 v7
du_isRelMonomorphism_1162 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1162 v0
  = let v1 = d_isMonoidMonomorphism_328 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.surjective
d_surjective_1164 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1164 = coe d_surjective_330
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1166 :: T_IsMonoidIsomorphism_320 -> AgdaAny
d_ε'45'homo_1166 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidIsomorphism.cong
d_cong_1168 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_296
               (coe d_isMonoidMonomorphism_328 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.homo
d_homo_1172 ::
  T_IsMonoidMonomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1172 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.injective
d_injective_1174 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1174 = coe d_injective_298
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1176 ::
  T_IsMonoidMonomorphism_288 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1176 v0
  = coe
      d_isMagmaHomomorphism_274 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_1178
du_isMagmaMonomorphism_1178 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1178 v0 v1
  = coe du_isMagmaMonomorphism_312 v1
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1180 ::
  T_IsMonoidMonomorphism_288 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1180 = coe d_isMonoidHomomorphism_296
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1182 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1182 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1184 v7
du_isRelMonomorphism_1184 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1184 v0
  = coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1186 :: T_IsMonoidMonomorphism_288 -> AgdaAny
d_ε'45'homo_1186 v0
  = coe d_ε'45'homo_276 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.*.IsMonoidMonomorphism.cong
d_cong_1188 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1188 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_isMonoidHomomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms._.Injective
d_Injective_1206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) -> ()
d_Injective_1206 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms._.Surjective
d_Surjective_1214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> ()
d_Surjective_1214 = erased
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism
d_IsSemiringHomomorphism_1218 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringHomomorphism_1218
  = C_IsSemiringHomomorphism'46'constructor_18927 T_IsMonoidHomomorphism_266
                                                  T_IsMonoidHomomorphism_266
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1226 ::
  T_IsSemiringHomomorphism_1218 -> T_IsMonoidHomomorphism_266
d_'43''45'isMonoidHomomorphism_1226 v0
  = case coe v0 of
      C_IsSemiringHomomorphism'46'constructor_18927 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1228 ::
  T_IsSemiringHomomorphism_1218 -> T_IsMonoidHomomorphism_266
d_'42''45'isMonoidHomomorphism_1228 v0
  = case coe v0 of
      C_IsSemiringHomomorphism'46'constructor_18927 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.homo
d_homo_1232 ::
  T_IsSemiringHomomorphism_1218 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1232 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_'43''45'isMonoidHomomorphism_1226 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.ε-homo
d_ε'45'homo_1234 :: T_IsSemiringHomomorphism_1218 -> AgdaAny
d_ε'45'homo_1234 v0
  = coe
      d_ε'45'homo_276 (coe d_'43''45'isMonoidHomomorphism_1226 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1236 ::
  T_IsSemiringHomomorphism_1218 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1236 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe d_'43''45'isMonoidHomomorphism_1226 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1238 ::
  T_IsSemiringHomomorphism_1218 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1238 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_'43''45'isMonoidHomomorphism_1226 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.cong
d_cong_1240 ::
  T_IsSemiringHomomorphism_1218 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1240 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_'43''45'isMonoidHomomorphism_1226 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.homo
d_homo_1244 ::
  T_IsSemiringHomomorphism_1218 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1244 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_'42''45'isMonoidHomomorphism_1228 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.ε-homo
d_ε'45'homo_1246 :: T_IsSemiringHomomorphism_1218 -> AgdaAny
d_ε'45'homo_1246 v0
  = coe
      d_ε'45'homo_276 (coe d_'42''45'isMonoidHomomorphism_1228 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1248 ::
  T_IsSemiringHomomorphism_1218 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1248 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe d_'42''45'isMonoidHomomorphism_1228 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1250 ::
  T_IsSemiringHomomorphism_1218 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1250 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_'42''45'isMonoidHomomorphism_1228 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringHomomorphism._.cong
d_cong_1252 ::
  T_IsSemiringHomomorphism_1218 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1252 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_'42''45'isMonoidHomomorphism_1228 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism
d_IsSemiringMonomorphism_1256 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringMonomorphism_1256
  = C_IsSemiringMonomorphism'46'constructor_19871 T_IsSemiringHomomorphism_1218
                                                  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.isSemiringHomomorphism
d_isSemiringHomomorphism_1264 ::
  T_IsSemiringMonomorphism_1256 -> T_IsSemiringHomomorphism_1218
d_isSemiringHomomorphism_1264 v0
  = case coe v0 of
      C_IsSemiringMonomorphism'46'constructor_19871 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.injective
d_injective_1266 ::
  T_IsSemiringMonomorphism_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1266 v0
  = case coe v0 of
      C_IsSemiringMonomorphism'46'constructor_19871 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.homo
d_homo_1270 ::
  T_IsSemiringMonomorphism_1256 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1270 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'42''45'isMonoidHomomorphism_1228
            (coe d_isSemiringHomomorphism_1264 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1272 ::
  T_IsSemiringMonomorphism_1256 -> T_IsMonoidHomomorphism_266
d_'42''45'isMonoidHomomorphism_1272 v0
  = coe
      d_'42''45'isMonoidHomomorphism_1228
      (coe d_isSemiringHomomorphism_1264 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.homo
d_homo_1274 ::
  T_IsSemiringMonomorphism_1256 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1274 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'43''45'isMonoidHomomorphism_1226
            (coe d_isSemiringHomomorphism_1264 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1276 ::
  T_IsSemiringMonomorphism_1256 -> T_IsMonoidHomomorphism_266
d_'43''45'isMonoidHomomorphism_1276 v0
  = coe
      d_'43''45'isMonoidHomomorphism_1226
      (coe d_isSemiringHomomorphism_1264 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.ε-homo
d_ε'45'homo_1278 :: T_IsSemiringMonomorphism_1256 -> AgdaAny
d_ε'45'homo_1278 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_'43''45'isMonoidHomomorphism_1226
         (coe d_isSemiringHomomorphism_1264 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.ε-homo
d_ε'45'homo_1280 :: T_IsSemiringMonomorphism_1256 -> AgdaAny
d_ε'45'homo_1280 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_'42''45'isMonoidHomomorphism_1228
         (coe d_isSemiringHomomorphism_1264 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1282 ::
  T_IsSemiringMonomorphism_1256 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1282 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_'43''45'isMonoidHomomorphism_1226
         (coe d_isSemiringHomomorphism_1264 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1284 ::
  T_IsSemiringMonomorphism_1256 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1284 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_'42''45'isMonoidHomomorphism_1228
         (coe d_isSemiringHomomorphism_1264 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1286 ::
  T_IsSemiringMonomorphism_1256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1286 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'43''45'isMonoidHomomorphism_1226
            (coe d_isSemiringHomomorphism_1264 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1288 ::
  T_IsSemiringMonomorphism_1256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1288 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'42''45'isMonoidHomomorphism_1228
            (coe d_isSemiringHomomorphism_1264 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.cong
d_cong_1290 ::
  T_IsSemiringMonomorphism_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1290 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_'43''45'isMonoidHomomorphism_1226
               (coe d_isSemiringHomomorphism_1264 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.cong
d_cong_1292 ::
  T_IsSemiringMonomorphism_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_'42''45'isMonoidHomomorphism_1228
               (coe d_isSemiringHomomorphism_1264 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1256 -> T_IsMonoidMonomorphism_288
d_'43''45'isMonoidMonomorphism_1294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1294 v7
du_'43''45'isMonoidMonomorphism_1294 ::
  T_IsSemiringMonomorphism_1256 -> T_IsMonoidMonomorphism_288
du_'43''45'isMonoidMonomorphism_1294 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_4945
      (coe
         d_'43''45'isMonoidHomomorphism_1226
         (coe d_isSemiringHomomorphism_1264 (coe v0)))
      (coe d_injective_1266 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1256 -> T_IsMonoidMonomorphism_288
d_'42''45'isMonoidMonomorphism_1296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1296 v7
du_'42''45'isMonoidMonomorphism_1296 ::
  T_IsSemiringMonomorphism_1256 -> T_IsMonoidMonomorphism_288
du_'42''45'isMonoidMonomorphism_1296 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_4945
      (coe
         d_'42''45'isMonoidHomomorphism_1228
         (coe d_isSemiringHomomorphism_1264 (coe v0)))
      (coe d_injective_1266 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_1300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringMonomorphism_1256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1300 v7
du_isRelMonomorphism_1300 ::
  T_IsSemiringMonomorphism_1256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1300 v0
  = let v1 = coe du_'42''45'isMonoidMonomorphism_1296 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism
d_IsSemiringIsomorphism_1304 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringIsomorphism_1304
  = C_IsSemiringIsomorphism'46'constructor_21549 T_IsSemiringMonomorphism_1256
                                                 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.isSemiringMonomorphism
d_isSemiringMonomorphism_1312 ::
  T_IsSemiringIsomorphism_1304 -> T_IsSemiringMonomorphism_1256
d_isSemiringMonomorphism_1312 v0
  = case coe v0 of
      C_IsSemiringIsomorphism'46'constructor_21549 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.surjective
d_surjective_1314 ::
  T_IsSemiringIsomorphism_1304 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1314 v0
  = case coe v0 of
      C_IsSemiringIsomorphism'46'constructor_21549 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.homo
d_homo_1318 ::
  T_IsSemiringIsomorphism_1304 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1318 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'42''45'isMonoidHomomorphism_1228
            (coe
               d_isSemiringHomomorphism_1264
               (coe d_isSemiringMonomorphism_1312 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1320 ::
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidHomomorphism_266
d_'42''45'isMonoidHomomorphism_1320 v0
  = coe
      d_'42''45'isMonoidHomomorphism_1228
      (coe
         d_isSemiringHomomorphism_1264
         (coe d_isSemiringMonomorphism_1312 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidMonomorphism_288
d_'42''45'isMonoidMonomorphism_1322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1322 v7
du_'42''45'isMonoidMonomorphism_1322 ::
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidMonomorphism_288
du_'42''45'isMonoidMonomorphism_1322 v0
  = coe
      du_'42''45'isMonoidMonomorphism_1296
      (coe d_isSemiringMonomorphism_1312 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.homo
d_homo_1324 ::
  T_IsSemiringIsomorphism_1304 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1324 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'43''45'isMonoidHomomorphism_1226
            (coe
               d_isSemiringHomomorphism_1264
               (coe d_isSemiringMonomorphism_1312 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.+-isMonoidHomomorphism
d_'43''45'isMonoidHomomorphism_1326 ::
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidHomomorphism_266
d_'43''45'isMonoidHomomorphism_1326 v0
  = coe
      d_'43''45'isMonoidHomomorphism_1226
      (coe
         d_isSemiringHomomorphism_1264
         (coe d_isSemiringMonomorphism_1312 (coe v0)))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.+-isMonoidMonomorphism
d_'43''45'isMonoidMonomorphism_1328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidMonomorphism_288
d_'43''45'isMonoidMonomorphism_1328 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidMonomorphism_1328 v7
du_'43''45'isMonoidMonomorphism_1328 ::
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidMonomorphism_288
du_'43''45'isMonoidMonomorphism_1328 v0
  = coe
      du_'43''45'isMonoidMonomorphism_1294
      (coe d_isSemiringMonomorphism_1312 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.ε-homo
d_ε'45'homo_1330 :: T_IsSemiringIsomorphism_1304 -> AgdaAny
d_ε'45'homo_1330 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_'43''45'isMonoidHomomorphism_1226
         (coe
            d_isSemiringHomomorphism_1264
            (coe d_isSemiringMonomorphism_1312 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.ε-homo
d_ε'45'homo_1332 :: T_IsSemiringIsomorphism_1304 -> AgdaAny
d_ε'45'homo_1332 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_'42''45'isMonoidHomomorphism_1228
         (coe
            d_isSemiringHomomorphism_1264
            (coe d_isSemiringMonomorphism_1312 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.injective
d_injective_1334 ::
  T_IsSemiringIsomorphism_1304 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1334 v0
  = coe d_injective_1266 (coe d_isSemiringMonomorphism_1312 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1336 ::
  T_IsSemiringIsomorphism_1304 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1336 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_'43''45'isMonoidHomomorphism_1226
         (coe
            d_isSemiringHomomorphism_1264
            (coe d_isSemiringMonomorphism_1312 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1338 ::
  T_IsSemiringIsomorphism_1304 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1338 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_'42''45'isMonoidHomomorphism_1228
         (coe
            d_isSemiringHomomorphism_1264
            (coe d_isSemiringMonomorphism_1312 (coe v0))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_1340 ::
  T_IsSemiringIsomorphism_1304 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1340 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'43''45'isMonoidHomomorphism_1226
            (coe
               d_isSemiringHomomorphism_1264
               (coe d_isSemiringMonomorphism_1312 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_1342 ::
  T_IsSemiringIsomorphism_1304 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1342 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'42''45'isMonoidHomomorphism_1228
            (coe
               d_isSemiringHomomorphism_1264
               (coe d_isSemiringMonomorphism_1312 (coe v0)))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_1344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1304 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1344 v7
du_isRelMonomorphism_1344 ::
  T_IsSemiringIsomorphism_1304 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1344 v0
  = let v1 = d_isSemiringMonomorphism_1312 (coe v0) in
    let v2 = coe du_'42''45'isMonoidMonomorphism_1296 (coe v1) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v2))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isSemiringHomomorphism
d_isSemiringHomomorphism_1346 ::
  T_IsSemiringIsomorphism_1304 -> T_IsSemiringHomomorphism_1218
d_isSemiringHomomorphism_1346 v0
  = coe
      d_isSemiringHomomorphism_1264
      (coe d_isSemiringMonomorphism_1312 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.cong
d_cong_1348 ::
  T_IsSemiringIsomorphism_1304 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1348 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_'43''45'isMonoidHomomorphism_1226
               (coe
                  d_isSemiringHomomorphism_1264
                  (coe d_isSemiringMonomorphism_1312 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.cong
d_cong_1350 ::
  T_IsSemiringIsomorphism_1304 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1350 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_'42''45'isMonoidHomomorphism_1228
               (coe
                  d_isSemiringHomomorphism_1264
                  (coe d_isSemiringMonomorphism_1312 (coe v0))))))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.+-isMonoidIsomorphism
d_'43''45'isMonoidIsomorphism_1352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidIsomorphism_320
d_'43''45'isMonoidIsomorphism_1352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isMonoidIsomorphism_1352 v7
du_'43''45'isMonoidIsomorphism_1352 ::
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidIsomorphism_320
du_'43''45'isMonoidIsomorphism_1352 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_5925
      (coe
         du_'43''45'isMonoidMonomorphism_1294
         (coe d_isSemiringMonomorphism_1312 (coe v0)))
      (coe d_surjective_1314 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_1354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidIsomorphism_320
d_'42''45'isMonoidIsomorphism_1354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidIsomorphism_1354 v7
du_'42''45'isMonoidIsomorphism_1354 ::
  T_IsSemiringIsomorphism_1304 -> T_IsMonoidIsomorphism_320
du_'42''45'isMonoidIsomorphism_1354 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_5925
      (coe
         du_'42''45'isMonoidMonomorphism_1296
         (coe d_isSemiringMonomorphism_1312 (coe v0)))
      (coe d_surjective_1314 (coe v0))
-- Algebra.Morphism.Structures.SemiringMorphisms.IsSemiringIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_1358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  MAlonzo.Code.Algebra.Bundles.T_RawSemiring_1738 ->
  (AgdaAny -> AgdaAny) ->
  T_IsSemiringIsomorphism_1304 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1358 v7
du_isRelIsomorphism_1358 ::
  T_IsSemiringIsomorphism_1304 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1358 v0
  = let v1 = coe du_'42''45'isMonoidIsomorphism_1354 (coe v0) in
    coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v1))
-- Algebra.Morphism.Structures.RingMorphisms._.Carrier
d_Carrier_1400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 -> ()
d_Carrier_1400 = erased
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism
d_IsGroupHomomorphism_1436 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism
d_IsGroupIsomorphism_1438 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism
d_IsGroupMonomorphism_1440 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.homo
d_homo_1444 ::
  T_IsGroupHomomorphism_554 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1444 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_562 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1446 ::
  T_IsGroupHomomorphism_554 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1446 v0
  = coe
      d_isMagmaHomomorphism_274 (coe d_isMonoidHomomorphism_562 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1448 ::
  T_IsGroupHomomorphism_554 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1448 = coe d_isMonoidHomomorphism_562
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1450 ::
  T_IsGroupHomomorphism_554 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1450 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_562 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.ε-homo
d_ε'45'homo_1452 :: T_IsGroupHomomorphism_554 -> AgdaAny
d_ε'45'homo_1452 v0
  = coe d_ε'45'homo_276 (coe d_isMonoidHomomorphism_562 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.⁻¹-homo
d_'8315''185''45'homo_1454 ::
  T_IsGroupHomomorphism_554 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1454 = coe d_'8315''185''45'homo_564
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.cong
d_cong_1456 ::
  T_IsGroupHomomorphism_554 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1456 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_isMonoidHomomorphism_562 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.injective
d_injective_1460 ::
  T_IsGroupIsomorphism_616 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1460 v0
  = coe d_injective_590 (coe d_isGroupMonomorphism_624 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1462 ::
  T_IsGroupIsomorphism_616 -> T_IsGroupHomomorphism_554
d_isGroupHomomorphism_1462 v0
  = coe
      d_isGroupHomomorphism_588 (coe d_isGroupMonomorphism_624 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isGroupMonomorphism
d_isGroupMonomorphism_1464 ::
  T_IsGroupIsomorphism_616 -> T_IsGroupMonomorphism_580
d_isGroupMonomorphism_1464 = coe d_isGroupMonomorphism_624
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1466 ::
  T_IsGroupIsomorphism_616 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1466 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_562
         (coe
            d_isGroupHomomorphism_588
            (coe d_isGroupMonomorphism_624 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1468 ::
  T_IsGroupIsomorphism_616 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1468 v0
  = coe
      d_isMonoidHomomorphism_562
      (coe
         d_isGroupHomomorphism_588 (coe d_isGroupMonomorphism_624 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidIsomorphism
d_isMonoidIsomorphism_1470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 -> T_IsMonoidIsomorphism_320
d_isMonoidIsomorphism_1470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidIsomorphism_1470
du_isMonoidIsomorphism_1470 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 -> T_IsMonoidIsomorphism_320
du_isMonoidIsomorphism_1470 v0 v1
  = coe du_isMonoidIsomorphism_652 v1
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_1472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMonoidMonomorphism_1472 v7
du_isMonoidMonomorphism_1472 ::
  T_IsGroupIsomorphism_616 -> T_IsMonoidMonomorphism_288
du_isMonoidMonomorphism_1472 v0
  = coe
      du_isMonoidMonomorphism_608
      (coe d_isGroupMonomorphism_624 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1474 ::
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1474 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe
               d_isGroupHomomorphism_588
               (coe d_isGroupMonomorphism_624 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1476 v7
du_isRelIsomorphism_1476 ::
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1476 v0
  = let v1 = coe du_isMonoidIsomorphism_652 (coe v0) in
    coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v1))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1478 v7
du_isRelMonomorphism_1478 ::
  T_IsGroupIsomorphism_616 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1478 v0
  = let v1 = d_isGroupMonomorphism_624 (coe v0) in
    let v2 = coe du_isMonoidMonomorphism_608 (coe v1) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v2))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.surjective
d_surjective_1480 ::
  T_IsGroupIsomorphism_616 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1480 = coe d_surjective_626
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.ε-homo
d_ε'45'homo_1482 :: T_IsGroupIsomorphism_616 -> AgdaAny
d_ε'45'homo_1482 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_562
         (coe
            d_isGroupHomomorphism_588
            (coe d_isGroupMonomorphism_624 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.⁻¹-homo
d_'8315''185''45'homo_1484 ::
  T_IsGroupIsomorphism_616 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1484 v0
  = coe
      d_'8315''185''45'homo_564
      (coe
         d_isGroupHomomorphism_588 (coe d_isGroupMonomorphism_624 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.homo
d_homo_1486 ::
  T_IsGroupIsomorphism_616 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1486 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe
               d_isGroupHomomorphism_588
               (coe d_isGroupMonomorphism_624 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.cong
d_cong_1488 ::
  T_IsGroupIsomorphism_616 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1488 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_562
               (coe
                  d_isGroupHomomorphism_588
                  (coe d_isGroupMonomorphism_624 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.injective
d_injective_1492 ::
  T_IsGroupMonomorphism_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1492 = coe d_injective_590
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isGroupHomomorphism
d_isGroupHomomorphism_1494 ::
  T_IsGroupMonomorphism_580 -> T_IsGroupHomomorphism_554
d_isGroupHomomorphism_1494 = coe d_isGroupHomomorphism_588
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1496 ::
  T_IsGroupMonomorphism_580 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1496 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_562
         (coe d_isGroupHomomorphism_588 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1498 ::
  T_IsGroupMonomorphism_580 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1498 v0
  = coe
      d_isMonoidHomomorphism_562 (coe d_isGroupHomomorphism_588 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_580 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_1500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMonoidMonomorphism_1500
du_isMonoidMonomorphism_1500 ::
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_580 -> T_IsMonoidMonomorphism_288
du_isMonoidMonomorphism_1500 v0 v1
  = coe du_isMonoidMonomorphism_608 v1
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1502 ::
  T_IsGroupMonomorphism_580 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1502 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe d_isGroupHomomorphism_588 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroupMonomorphism_580 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1504 v7
du_isRelMonomorphism_1504 ::
  T_IsGroupMonomorphism_580 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1504 v0
  = let v1 = coe du_isMonoidMonomorphism_608 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.ε-homo
d_ε'45'homo_1506 :: T_IsGroupMonomorphism_580 -> AgdaAny
d_ε'45'homo_1506 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_562
         (coe d_isGroupHomomorphism_588 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.⁻¹-homo
d_'8315''185''45'homo_1508 ::
  T_IsGroupMonomorphism_580 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1508 v0
  = coe
      d_'8315''185''45'homo_564 (coe d_isGroupHomomorphism_588 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.homo
d_homo_1510 ::
  T_IsGroupMonomorphism_580 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1510 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe d_isGroupHomomorphism_588 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.cong
d_cong_1512 ::
  T_IsGroupMonomorphism_580 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1512 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_562
               (coe d_isGroupHomomorphism_588 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1516 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1518 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1520 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.homo
d_homo_1524 ::
  T_IsMonoidHomomorphism_266 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1524 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1526 ::
  T_IsMonoidHomomorphism_266 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1526 = coe d_isMagmaHomomorphism_274
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1528 ::
  T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1528 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1530 :: T_IsMonoidHomomorphism_266 -> AgdaAny
d_ε'45'homo_1530 = coe d_ε'45'homo_276
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.cong
d_cong_1532 ::
  T_IsMonoidHomomorphism_266 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1532 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_274 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.homo
d_homo_1536 ::
  T_IsMonoidIsomorphism_320 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1536 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.injective
d_injective_1538 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1538 v0
  = coe d_injective_298 (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1540 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1540 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_1542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaIsomorphism_1542
du_isMagmaIsomorphism_1542 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_1542 v0 v1 = coe du_isMagmaIsomorphism_352 v1
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isMagmaMonomorphism_1544 v7
du_isMagmaMonomorphism_1544 ::
  T_IsMonoidIsomorphism_320 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1544 v0
  = coe
      du_isMagmaMonomorphism_312
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1546 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1546 v0
  = coe
      d_isMonoidHomomorphism_296
      (coe d_isMonoidMonomorphism_328 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1548 ::
  T_IsMonoidIsomorphism_320 -> T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_1548 = coe d_isMonoidMonomorphism_328
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1550 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1550 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_296
            (coe d_isMonoidMonomorphism_328 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1552 v7
du_isRelIsomorphism_1552 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1552 v0
  = coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1554 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1554 v7
du_isRelMonomorphism_1554 ::
  T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1554 v0
  = let v1 = d_isMonoidMonomorphism_328 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.surjective
d_surjective_1556 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1556 = coe d_surjective_330
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1558 :: T_IsMonoidIsomorphism_320 -> AgdaAny
d_ε'45'homo_1558 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_296
         (coe d_isMonoidMonomorphism_328 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.cong
d_cong_1560 ::
  T_IsMonoidIsomorphism_320 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1560 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_296
               (coe d_isMonoidMonomorphism_328 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.homo
d_homo_1564 ::
  T_IsMonoidMonomorphism_288 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1564 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.injective
d_injective_1566 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1566 = coe d_injective_298
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1568 ::
  T_IsMonoidMonomorphism_288 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1568 v0
  = coe
      d_isMagmaHomomorphism_274 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isMagmaMonomorphism_1570
du_isMagmaMonomorphism_1570 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 -> T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_1570 v0 v1
  = coe du_isMagmaMonomorphism_312 v1
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1572 ::
  T_IsMonoidMonomorphism_288 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1572 = coe d_isMonoidHomomorphism_296
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1574 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1574 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_isMonoidHomomorphism_296 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1576 v7
du_isRelMonomorphism_1576 ::
  T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1576 v0
  = coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1578 :: T_IsMonoidMonomorphism_288 -> AgdaAny
d_ε'45'homo_1578 v0
  = coe d_ε'45'homo_276 (coe d_isMonoidHomomorphism_296 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.cong
d_cong_1580 ::
  T_IsMonoidMonomorphism_288 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1580 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_isMonoidHomomorphism_296 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms._.Injective
d_Injective_1598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) -> ()
d_Injective_1598 = erased
-- Algebra.Morphism.Structures.RingMorphisms._.Surjective
d_Surjective_1606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> ()
d_Surjective_1606 = erased
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism
d_IsRingHomomorphism_1610 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingHomomorphism_1610
  = C_IsRingHomomorphism'46'constructor_25081 T_IsGroupHomomorphism_554
                                              T_IsMonoidHomomorphism_266
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1618 ::
  T_IsRingHomomorphism_1610 -> T_IsGroupHomomorphism_554
d_'43''45'isGroupHomomorphism_1618 v0
  = case coe v0 of
      C_IsRingHomomorphism'46'constructor_25081 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1620 ::
  T_IsRingHomomorphism_1610 -> T_IsMonoidHomomorphism_266
d_'42''45'isMonoidHomomorphism_1620 v0
  = case coe v0 of
      C_IsRingHomomorphism'46'constructor_25081 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.homo
d_homo_1624 ::
  T_IsRingHomomorphism_1610 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1624 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe d_'43''45'isGroupHomomorphism_1618 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.ε-homo
d_ε'45'homo_1626 :: T_IsRingHomomorphism_1610 -> AgdaAny
d_ε'45'homo_1626 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_562
         (coe d_'43''45'isGroupHomomorphism_1618 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1628 ::
  T_IsRingHomomorphism_1610 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1628 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_562
         (coe d_'43''45'isGroupHomomorphism_1618 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1630 ::
  T_IsRingHomomorphism_1610 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1630 v0
  = coe
      d_isMonoidHomomorphism_562
      (coe d_'43''45'isGroupHomomorphism_1618 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1632 ::
  T_IsRingHomomorphism_1610 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1632 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe d_'43''45'isGroupHomomorphism_1618 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.⁻¹-homo
d_'8315''185''45'homo_1634 ::
  T_IsRingHomomorphism_1610 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1634 v0
  = coe
      d_'8315''185''45'homo_564
      (coe d_'43''45'isGroupHomomorphism_1618 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.cong
d_cong_1636 ::
  T_IsRingHomomorphism_1610 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1636 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_562
               (coe d_'43''45'isGroupHomomorphism_1618 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.homo
d_homo_1640 ::
  T_IsRingHomomorphism_1610 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1640 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe d_'42''45'isMonoidHomomorphism_1620 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.ε-homo
d_ε'45'homo_1642 :: T_IsRingHomomorphism_1610 -> AgdaAny
d_ε'45'homo_1642 v0
  = coe
      d_ε'45'homo_276 (coe d_'42''45'isMonoidHomomorphism_1620 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1644 ::
  T_IsRingHomomorphism_1610 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1644 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe d_'42''45'isMonoidHomomorphism_1620 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1646 ::
  T_IsRingHomomorphism_1610 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1646 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe d_'42''45'isMonoidHomomorphism_1620 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.cong
d_cong_1648 ::
  T_IsRingHomomorphism_1610 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1648 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe d_'42''45'isMonoidHomomorphism_1620 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism
d_IsRingMonomorphism_1652 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingMonomorphism_1652
  = C_IsRingMonomorphism'46'constructor_26153 T_IsRingHomomorphism_1610
                                              (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.isRingHomomorphism
d_isRingHomomorphism_1660 ::
  T_IsRingMonomorphism_1652 -> T_IsRingHomomorphism_1610
d_isRingHomomorphism_1660 v0
  = case coe v0 of
      C_IsRingMonomorphism'46'constructor_26153 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.injective
d_injective_1662 ::
  T_IsRingMonomorphism_1652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1662 v0
  = case coe v0 of
      C_IsRingMonomorphism'46'constructor_26153 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.homo
d_homo_1666 ::
  T_IsRingMonomorphism_1652 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1666 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'42''45'isMonoidHomomorphism_1620
            (coe d_isRingHomomorphism_1660 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1668 ::
  T_IsRingMonomorphism_1652 -> T_IsMonoidHomomorphism_266
d_'42''45'isMonoidHomomorphism_1668 v0
  = coe
      d_'42''45'isMonoidHomomorphism_1620
      (coe d_isRingHomomorphism_1660 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.homo
d_homo_1670 ::
  T_IsRingMonomorphism_1652 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1670 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe
               d_'43''45'isGroupHomomorphism_1618
               (coe d_isRingHomomorphism_1660 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1672 ::
  T_IsRingMonomorphism_1652 -> T_IsGroupHomomorphism_554
d_'43''45'isGroupHomomorphism_1672 v0
  = coe
      d_'43''45'isGroupHomomorphism_1618
      (coe d_isRingHomomorphism_1660 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.ε-homo
d_ε'45'homo_1674 :: T_IsRingMonomorphism_1652 -> AgdaAny
d_ε'45'homo_1674 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_562
         (coe
            d_'43''45'isGroupHomomorphism_1618
            (coe d_isRingHomomorphism_1660 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.ε-homo
d_ε'45'homo_1676 :: T_IsRingMonomorphism_1652 -> AgdaAny
d_ε'45'homo_1676 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_'42''45'isMonoidHomomorphism_1620
         (coe d_isRingHomomorphism_1660 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1678 ::
  T_IsRingMonomorphism_1652 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1678 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_562
         (coe
            d_'43''45'isGroupHomomorphism_1618
            (coe d_isRingHomomorphism_1660 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1680 ::
  T_IsRingMonomorphism_1652 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1680 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_'42''45'isMonoidHomomorphism_1620
         (coe d_isRingHomomorphism_1660 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1682 ::
  T_IsRingMonomorphism_1652 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1682 v0
  = coe
      d_isMonoidHomomorphism_562
      (coe
         d_'43''45'isGroupHomomorphism_1618
         (coe d_isRingHomomorphism_1660 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1684 ::
  T_IsRingMonomorphism_1652 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1684 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe
               d_'43''45'isGroupHomomorphism_1618
               (coe d_isRingHomomorphism_1660 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1686 ::
  T_IsRingMonomorphism_1652 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1686 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'42''45'isMonoidHomomorphism_1620
            (coe d_isRingHomomorphism_1660 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.⁻¹-homo
d_'8315''185''45'homo_1688 ::
  T_IsRingMonomorphism_1652 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1688 v0
  = coe
      d_'8315''185''45'homo_564
      (coe
         d_'43''45'isGroupHomomorphism_1618
         (coe d_isRingHomomorphism_1660 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.cong
d_cong_1690 ::
  T_IsRingMonomorphism_1652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1690 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_562
               (coe
                  d_'43''45'isGroupHomomorphism_1618
                  (coe d_isRingHomomorphism_1660 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.cong
d_cong_1692 ::
  T_IsRingMonomorphism_1652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1692 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_'42''45'isMonoidHomomorphism_1620
               (coe d_isRingHomomorphism_1660 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_1652 -> T_IsGroupMonomorphism_580
d_'43''45'isGroupMonomorphism_1694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_1694 v7
du_'43''45'isGroupMonomorphism_1694 ::
  T_IsRingMonomorphism_1652 -> T_IsGroupMonomorphism_580
du_'43''45'isGroupMonomorphism_1694 v0
  = coe
      C_IsGroupMonomorphism'46'constructor_9361
      (coe
         d_'43''45'isGroupHomomorphism_1618
         (coe d_isRingHomomorphism_1660 (coe v0)))
      (coe d_injective_1662 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_1652 -> T_IsMonoidMonomorphism_288
d_'42''45'isMonoidMonomorphism_1696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1696 v7
du_'42''45'isMonoidMonomorphism_1696 ::
  T_IsRingMonomorphism_1652 -> T_IsMonoidMonomorphism_288
du_'42''45'isMonoidMonomorphism_1696 v0
  = coe
      C_IsMonoidMonomorphism'46'constructor_4945
      (coe
         d_'42''45'isMonoidHomomorphism_1620
         (coe d_isRingHomomorphism_1660 (coe v0)))
      (coe d_injective_1662 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_1700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingMonomorphism_1652 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1700 v7
du_isRelMonomorphism_1700 ::
  T_IsRingMonomorphism_1652 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1700 v0
  = let v1 = coe du_'42''45'isMonoidMonomorphism_1696 (coe v0) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v1))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism
d_IsRingIsomorphism_1704 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingIsomorphism_1704
  = C_IsRingIsomorphism'46'constructor_27959 T_IsRingMonomorphism_1652
                                             (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.isRingMonomorphism
d_isRingMonomorphism_1712 ::
  T_IsRingIsomorphism_1704 -> T_IsRingMonomorphism_1652
d_isRingMonomorphism_1712 v0
  = case coe v0 of
      C_IsRingIsomorphism'46'constructor_27959 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.surjective
d_surjective_1714 ::
  T_IsRingIsomorphism_1704 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1714 v0
  = case coe v0 of
      C_IsRingIsomorphism'46'constructor_27959 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.homo
d_homo_1718 ::
  T_IsRingIsomorphism_1704 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1718 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'42''45'isMonoidHomomorphism_1620
            (coe
               d_isRingHomomorphism_1660
               (coe d_isRingMonomorphism_1712 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMonoidHomomorphism
d_'42''45'isMonoidHomomorphism_1720 ::
  T_IsRingIsomorphism_1704 -> T_IsMonoidHomomorphism_266
d_'42''45'isMonoidHomomorphism_1720 v0
  = coe
      d_'42''45'isMonoidHomomorphism_1620
      (coe
         d_isRingHomomorphism_1660 (coe d_isRingMonomorphism_1712 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMonoidMonomorphism
d_'42''45'isMonoidMonomorphism_1722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_1704 -> T_IsMonoidMonomorphism_288
d_'42''45'isMonoidMonomorphism_1722 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidMonomorphism_1722 v7
du_'42''45'isMonoidMonomorphism_1722 ::
  T_IsRingIsomorphism_1704 -> T_IsMonoidMonomorphism_288
du_'42''45'isMonoidMonomorphism_1722 v0
  = coe
      du_'42''45'isMonoidMonomorphism_1696
      (coe d_isRingMonomorphism_1712 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.homo
d_homo_1724 ::
  T_IsRingIsomorphism_1704 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1724 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe
               d_'43''45'isGroupHomomorphism_1618
               (coe
                  d_isRingHomomorphism_1660
                  (coe d_isRingMonomorphism_1712 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isGroupHomomorphism
d_'43''45'isGroupHomomorphism_1726 ::
  T_IsRingIsomorphism_1704 -> T_IsGroupHomomorphism_554
d_'43''45'isGroupHomomorphism_1726 v0
  = coe
      d_'43''45'isGroupHomomorphism_1618
      (coe
         d_isRingHomomorphism_1660 (coe d_isRingMonomorphism_1712 (coe v0)))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isGroupMonomorphism
d_'43''45'isGroupMonomorphism_1728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_1704 -> T_IsGroupMonomorphism_580
d_'43''45'isGroupMonomorphism_1728 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupMonomorphism_1728 v7
du_'43''45'isGroupMonomorphism_1728 ::
  T_IsRingIsomorphism_1704 -> T_IsGroupMonomorphism_580
du_'43''45'isGroupMonomorphism_1728 v0
  = coe
      du_'43''45'isGroupMonomorphism_1694
      (coe d_isRingMonomorphism_1712 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.ε-homo
d_ε'45'homo_1730 :: T_IsRingIsomorphism_1704 -> AgdaAny
d_ε'45'homo_1730 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_isMonoidHomomorphism_562
         (coe
            d_'43''45'isGroupHomomorphism_1618
            (coe
               d_isRingHomomorphism_1660
               (coe d_isRingMonomorphism_1712 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.ε-homo
d_ε'45'homo_1732 :: T_IsRingIsomorphism_1704 -> AgdaAny
d_ε'45'homo_1732 v0
  = coe
      d_ε'45'homo_276
      (coe
         d_'42''45'isMonoidHomomorphism_1620
         (coe
            d_isRingHomomorphism_1660
            (coe d_isRingMonomorphism_1712 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.injective
d_injective_1734 ::
  T_IsRingIsomorphism_1704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1734 v0
  = coe d_injective_1662 (coe d_isRingMonomorphism_1712 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1736 ::
  T_IsRingIsomorphism_1704 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1736 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_isMonoidHomomorphism_562
         (coe
            d_'43''45'isGroupHomomorphism_1618
            (coe
               d_isRingHomomorphism_1660
               (coe d_isRingMonomorphism_1712 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaHomomorphism
d_isMagmaHomomorphism_1738 ::
  T_IsRingIsomorphism_1704 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1738 v0
  = coe
      d_isMagmaHomomorphism_274
      (coe
         d_'42''45'isMonoidHomomorphism_1620
         (coe
            d_isRingHomomorphism_1660
            (coe d_isRingMonomorphism_1712 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMonoidHomomorphism
d_isMonoidHomomorphism_1740 ::
  T_IsRingIsomorphism_1704 -> T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_1740 v0
  = coe
      d_isMonoidHomomorphism_562
      (coe
         d_'43''45'isGroupHomomorphism_1618
         (coe
            d_isRingHomomorphism_1660
            (coe d_isRingMonomorphism_1712 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_1742 ::
  T_IsRingIsomorphism_1704 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1742 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_isMonoidHomomorphism_562
            (coe
               d_'43''45'isGroupHomomorphism_1618
               (coe
                  d_isRingHomomorphism_1660
                  (coe d_isRingMonomorphism_1712 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_1744 ::
  T_IsRingIsomorphism_1704 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1744 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_274
         (coe
            d_'42''45'isMonoidHomomorphism_1620
            (coe
               d_isRingHomomorphism_1660
               (coe d_isRingMonomorphism_1712 (coe v0)))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_1746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_1704 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1746 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1746 v7
du_isRelMonomorphism_1746 ::
  T_IsRingIsomorphism_1704 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1746 v0
  = let v1 = d_isRingMonomorphism_1712 (coe v0) in
    let v2 = coe du_'42''45'isMonoidMonomorphism_1696 (coe v1) in
    coe
      du_isRelMonomorphism_114 (coe du_isMagmaMonomorphism_312 (coe v2))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRingHomomorphism
d_isRingHomomorphism_1748 ::
  T_IsRingIsomorphism_1704 -> T_IsRingHomomorphism_1610
d_isRingHomomorphism_1748 v0
  = coe
      d_isRingHomomorphism_1660 (coe d_isRingMonomorphism_1712 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.⁻¹-homo
d_'8315''185''45'homo_1750 ::
  T_IsRingIsomorphism_1704 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1750 v0
  = coe
      d_'8315''185''45'homo_564
      (coe
         d_'43''45'isGroupHomomorphism_1618
         (coe
            d_isRingHomomorphism_1660
            (coe d_isRingMonomorphism_1712 (coe v0))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.cong
d_cong_1752 ::
  T_IsRingIsomorphism_1704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1752 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_isMonoidHomomorphism_562
               (coe
                  d_'43''45'isGroupHomomorphism_1618
                  (coe
                     d_isRingHomomorphism_1660
                     (coe d_isRingMonomorphism_1712 (coe v0)))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.cong
d_cong_1754 ::
  T_IsRingIsomorphism_1704 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1754 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_274
            (coe
               d_'42''45'isMonoidHomomorphism_1620
               (coe
                  d_isRingHomomorphism_1660
                  (coe d_isRingMonomorphism_1712 (coe v0))))))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.+-isGroupIsomorphism
d_'43''45'isGroupIsomorphism_1756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_1704 -> T_IsGroupIsomorphism_616
d_'43''45'isGroupIsomorphism_1756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'43''45'isGroupIsomorphism_1756 v7
du_'43''45'isGroupIsomorphism_1756 ::
  T_IsRingIsomorphism_1704 -> T_IsGroupIsomorphism_616
du_'43''45'isGroupIsomorphism_1756 v0
  = coe
      C_IsGroupIsomorphism'46'constructor_10469
      (coe
         du_'43''45'isGroupMonomorphism_1694
         (coe d_isRingMonomorphism_1712 (coe v0)))
      (coe d_surjective_1714 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.*-isMonoidIsomorphism
d_'42''45'isMonoidIsomorphism_1758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_1704 -> T_IsMonoidIsomorphism_320
d_'42''45'isMonoidIsomorphism_1758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMonoidIsomorphism_1758 v7
du_'42''45'isMonoidIsomorphism_1758 ::
  T_IsRingIsomorphism_1704 -> T_IsMonoidIsomorphism_320
du_'42''45'isMonoidIsomorphism_1758 v0
  = coe
      C_IsMonoidIsomorphism'46'constructor_5925
      (coe
         du_'42''45'isMonoidMonomorphism_1696
         (coe d_isRingMonomorphism_1712 (coe v0)))
      (coe d_surjective_1714 (coe v0))
-- Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_1762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  MAlonzo.Code.Algebra.Bundles.T_RawRing_2460 ->
  (AgdaAny -> AgdaAny) ->
  T_IsRingIsomorphism_1704 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1762 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_1762 v7
du_isRelIsomorphism_1762 ::
  T_IsRingIsomorphism_1704 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1762 v0
  = let v1 = coe du_'42''45'isMonoidIsomorphism_1758 (coe v0) in
    coe
      du_isRelIsomorphism_144 (coe du_isMagmaIsomorphism_352 (coe v1))
-- Algebra.Morphism.Structures.LatticeMorphisms._.Carrier
d_Carrier_1788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 -> ()
d_Carrier_1788 = erased
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaHomomorphism
d_IsMagmaHomomorphism_1812 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism
d_IsMagmaIsomorphism_1814 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism
d_IsMagmaMonomorphism_1816 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaHomomorphism.homo
d_homo_1820 ::
  T_IsMagmaHomomorphism_76 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1820 = coe d_homo_86
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1822 ::
  T_IsMagmaHomomorphism_76 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1822 = coe d_isRelHomomorphism_84
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaHomomorphism.cong
d_cong_1824 ::
  T_IsMagmaHomomorphism_76 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1824 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_84 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.homo
d_homo_1828 ::
  T_IsMagmaIsomorphism_118 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1828 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.injective
d_injective_1830 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1830 v0
  = coe d_injective_104 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1832 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1832 v0
  = coe
      d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1834 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1834 = coe d_isMagmaMonomorphism_126
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1836 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1836 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1838 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_1838
du_isRelIsomorphism_1838 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1838 v0 v1 = coe du_isRelIsomorphism_144 v1
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1840 v7
du_isRelMonomorphism_1840 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1840 v0
  = coe
      du_isRelMonomorphism_114 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.surjective
d_surjective_1842 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1842 = coe d_surjective_128
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaIsomorphism.cong
d_cong_1844 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1844 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_102
            (coe d_isMagmaMonomorphism_126 (coe v0))))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.homo
d_homo_1848 ::
  T_IsMagmaMonomorphism_94 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1848 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.injective
d_injective_1850 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1850 = coe d_injective_104
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1852 ::
  T_IsMagmaMonomorphism_94 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1852 = coe d_isMagmaHomomorphism_102
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1854 ::
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1854 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_1856
du_isRelMonomorphism_1856 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1856 v0 v1 = coe du_isRelMonomorphism_114 v1
-- Algebra.Morphism.Structures.LatticeMorphisms.∨.IsMagmaMonomorphism.cong
d_cong_1858 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1858 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaHomomorphism
d_IsMagmaHomomorphism_1862 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism
d_IsMagmaIsomorphism_1864 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism
d_IsMagmaMonomorphism_1866 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaHomomorphism.homo
d_homo_1870 ::
  T_IsMagmaHomomorphism_76 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1870 = coe d_homo_86
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1872 ::
  T_IsMagmaHomomorphism_76 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1872 = coe d_isRelHomomorphism_84
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaHomomorphism.cong
d_cong_1874 ::
  T_IsMagmaHomomorphism_76 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1874 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe d_isRelHomomorphism_84 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.homo
d_homo_1878 ::
  T_IsMagmaIsomorphism_118 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1878 v0
  = coe
      d_homo_86
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.injective
d_injective_1880 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1880 v0
  = coe d_injective_104 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1882 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1882 v0
  = coe
      d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1884 ::
  T_IsMagmaIsomorphism_118 -> T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_1884 = coe d_isMagmaMonomorphism_126
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1886 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1886 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_isMagmaHomomorphism_102 (coe d_isMagmaMonomorphism_126 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1888 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelIsomorphism_1888
du_isRelIsomorphism_1888 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1888 v0 v1 = coe du_isRelIsomorphism_144 v1
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1890 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_1890 v7
du_isRelMonomorphism_1890 ::
  T_IsMagmaIsomorphism_118 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1890 v0
  = coe
      du_isRelMonomorphism_114 (coe d_isMagmaMonomorphism_126 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.surjective
d_surjective_1892 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1892 = coe d_surjective_128
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaIsomorphism.cong
d_cong_1894 ::
  T_IsMagmaIsomorphism_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1894 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_isMagmaHomomorphism_102
            (coe d_isMagmaMonomorphism_126 (coe v0))))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.homo
d_homo_1898 ::
  T_IsMagmaMonomorphism_94 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1898 v0
  = coe d_homo_86 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.injective
d_injective_1900 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1900 = coe d_injective_104
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1902 ::
  T_IsMagmaMonomorphism_94 -> T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_1902 = coe d_isMagmaHomomorphism_102
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1904 ::
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1904 v0
  = coe
      d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1906 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isRelMonomorphism_1906
du_isRelMonomorphism_1906 ::
  (AgdaAny -> AgdaAny) ->
  T_IsMagmaMonomorphism_94 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1906 v0 v1 = coe du_isRelMonomorphism_114 v1
-- Algebra.Morphism.Structures.LatticeMorphisms.∧.IsMagmaMonomorphism.cong
d_cong_1908 ::
  T_IsMagmaMonomorphism_94 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1908 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84 (coe d_isMagmaHomomorphism_102 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms._.Injective
d_Injective_1926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) -> ()
d_Injective_1926 = erased
-- Algebra.Morphism.Structures.LatticeMorphisms._.Surjective
d_Surjective_1934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> ()
d_Surjective_1934 = erased
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism
d_IsLatticeHomomorphism_1938 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLatticeHomomorphism_1938
  = C_IsLatticeHomomorphism'46'constructor_31241 T_IsMagmaHomomorphism_76
                                                 T_IsMagmaHomomorphism_76
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism.∨-isMagmaHomomorphism
d_'8744''45'isMagmaHomomorphism_1946 ::
  T_IsLatticeHomomorphism_1938 -> T_IsMagmaHomomorphism_76
d_'8744''45'isMagmaHomomorphism_1946 v0
  = case coe v0 of
      C_IsLatticeHomomorphism'46'constructor_31241 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism.∧-isMagmaHomomorphism
d_'8743''45'isMagmaHomomorphism_1948 ::
  T_IsLatticeHomomorphism_1938 -> T_IsMagmaHomomorphism_76
d_'8743''45'isMagmaHomomorphism_1948 v0
  = case coe v0 of
      C_IsLatticeHomomorphism'46'constructor_31241 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1952 ::
  T_IsLatticeHomomorphism_1938 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1952 v0
  = coe
      d_isRelHomomorphism_84
      (coe d_'8744''45'isMagmaHomomorphism_1946 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism._.homo
d_homo_1954 ::
  T_IsLatticeHomomorphism_1938 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1954 v0
  = coe d_homo_86 (coe d_'8744''45'isMagmaHomomorphism_1946 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism._.cong
d_cong_1956 ::
  T_IsLatticeHomomorphism_1938 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1956 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe d_'8744''45'isMagmaHomomorphism_1946 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism._.isRelHomomorphism
d_isRelHomomorphism_1960 ::
  T_IsLatticeHomomorphism_1938 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1960 v0
  = coe
      d_isRelHomomorphism_84
      (coe d_'8743''45'isMagmaHomomorphism_1948 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism._.homo
d_homo_1962 ::
  T_IsLatticeHomomorphism_1938 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1962 v0
  = coe d_homo_86 (coe d_'8743''45'isMagmaHomomorphism_1948 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeHomomorphism._.cong
d_cong_1964 ::
  T_IsLatticeHomomorphism_1938 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1964 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe d_'8743''45'isMagmaHomomorphism_1948 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism
d_IsLatticeMonomorphism_1968 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLatticeMonomorphism_1968
  = C_IsLatticeMonomorphism'46'constructor_31937 T_IsLatticeHomomorphism_1938
                                                 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism.isLatticeHomomorphism
d_isLatticeHomomorphism_1976 ::
  T_IsLatticeMonomorphism_1968 -> T_IsLatticeHomomorphism_1938
d_isLatticeHomomorphism_1976 v0
  = case coe v0 of
      C_IsLatticeMonomorphism'46'constructor_31937 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism.injective
d_injective_1978 ::
  T_IsLatticeMonomorphism_1968 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_1978 v0
  = case coe v0 of
      C_IsLatticeMonomorphism'46'constructor_31937 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1982 ::
  T_IsLatticeMonomorphism_1968 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1982 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_'8744''45'isMagmaHomomorphism_1946
         (coe d_isLatticeHomomorphism_1976 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.isRelHomomorphism
d_isRelHomomorphism_1984 ::
  T_IsLatticeMonomorphism_1968 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1984 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_'8743''45'isMagmaHomomorphism_1948
         (coe d_isLatticeHomomorphism_1976 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.homo
d_homo_1986 ::
  T_IsLatticeMonomorphism_1968 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1986 v0
  = coe
      d_homo_86
      (coe
         d_'8743''45'isMagmaHomomorphism_1948
         (coe d_isLatticeHomomorphism_1976 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.∧-isMagmaHomomorphism
d_'8743''45'isMagmaHomomorphism_1988 ::
  T_IsLatticeMonomorphism_1968 -> T_IsMagmaHomomorphism_76
d_'8743''45'isMagmaHomomorphism_1988 v0
  = coe
      d_'8743''45'isMagmaHomomorphism_1948
      (coe d_isLatticeHomomorphism_1976 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.homo
d_homo_1990 ::
  T_IsLatticeMonomorphism_1968 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_1990 v0
  = coe
      d_homo_86
      (coe
         d_'8744''45'isMagmaHomomorphism_1946
         (coe d_isLatticeHomomorphism_1976 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.∨-isMagmaHomomorphism
d_'8744''45'isMagmaHomomorphism_1992 ::
  T_IsLatticeMonomorphism_1968 -> T_IsMagmaHomomorphism_76
d_'8744''45'isMagmaHomomorphism_1992 v0
  = coe
      d_'8744''45'isMagmaHomomorphism_1946
      (coe d_isLatticeHomomorphism_1976 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.cong
d_cong_1994 ::
  T_IsLatticeMonomorphism_1968 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1994 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_'8744''45'isMagmaHomomorphism_1946
            (coe d_isLatticeHomomorphism_1976 (coe v0))))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.cong
d_cong_1996 ::
  T_IsLatticeMonomorphism_1968 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_1996 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_'8743''45'isMagmaHomomorphism_1948
            (coe d_isLatticeHomomorphism_1976 (coe v0))))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism.∨-isMagmaMonomorphism
d_'8744''45'isMagmaMonomorphism_1998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeMonomorphism_1968 -> T_IsMagmaMonomorphism_94
d_'8744''45'isMagmaMonomorphism_1998 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaMonomorphism_1998 v7
du_'8744''45'isMagmaMonomorphism_1998 ::
  T_IsLatticeMonomorphism_1968 -> T_IsMagmaMonomorphism_94
du_'8744''45'isMagmaMonomorphism_1998 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1403
      (coe
         d_'8744''45'isMagmaHomomorphism_1946
         (coe d_isLatticeHomomorphism_1976 (coe v0)))
      (coe d_injective_1978 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism.∧-isMagmaMonomorphism
d_'8743''45'isMagmaMonomorphism_2000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeMonomorphism_1968 -> T_IsMagmaMonomorphism_94
d_'8743''45'isMagmaMonomorphism_2000 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaMonomorphism_2000 v7
du_'8743''45'isMagmaMonomorphism_2000 ::
  T_IsLatticeMonomorphism_1968 -> T_IsMagmaMonomorphism_94
du_'8743''45'isMagmaMonomorphism_2000 v0
  = coe
      C_IsMagmaMonomorphism'46'constructor_1403
      (coe
         d_'8743''45'isMagmaHomomorphism_1948
         (coe d_isLatticeHomomorphism_1976 (coe v0)))
      (coe d_injective_1978 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeMonomorphism._.isRelMonomorphism
d_isRelMonomorphism_2004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeMonomorphism_1968 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2004 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2004 v7
du_isRelMonomorphism_2004 ::
  T_IsLatticeMonomorphism_1968 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2004 v0
  = coe
      du_isRelMonomorphism_114
      (coe du_'8743''45'isMagmaMonomorphism_2000 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism
d_IsLatticeIsomorphism_2008 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsLatticeIsomorphism_2008
  = C_IsLatticeIsomorphism'46'constructor_33367 T_IsLatticeMonomorphism_1968
                                                (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism.isLatticeMonomorphism
d_isLatticeMonomorphism_2016 ::
  T_IsLatticeIsomorphism_2008 -> T_IsLatticeMonomorphism_1968
d_isLatticeMonomorphism_2016 v0
  = case coe v0 of
      C_IsLatticeIsomorphism'46'constructor_33367 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism.surjective
d_surjective_2018 ::
  T_IsLatticeIsomorphism_2008 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2018 v0
  = case coe v0 of
      C_IsLatticeIsomorphism'46'constructor_33367 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.injective
d_injective_2022 ::
  T_IsLatticeIsomorphism_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_injective_2022 v0
  = coe d_injective_1978 (coe d_isLatticeMonomorphism_2016 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isLatticeHomomorphism
d_isLatticeHomomorphism_2024 ::
  T_IsLatticeIsomorphism_2008 -> T_IsLatticeHomomorphism_1938
d_isLatticeHomomorphism_2024 v0
  = coe
      d_isLatticeHomomorphism_1976
      (coe d_isLatticeMonomorphism_2016 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_2026 ::
  T_IsLatticeIsomorphism_2008 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2026 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_'8744''45'isMagmaHomomorphism_1946
         (coe
            d_isLatticeHomomorphism_1976
            (coe d_isLatticeMonomorphism_2016 (coe v0))))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isRelHomomorphism
d_isRelHomomorphism_2028 ::
  T_IsLatticeIsomorphism_2008 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2028 v0
  = coe
      d_isRelHomomorphism_84
      (coe
         d_'8743''45'isMagmaHomomorphism_1948
         (coe
            d_isLatticeHomomorphism_1976
            (coe d_isLatticeMonomorphism_2016 (coe v0))))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isRelMonomorphism
d_isRelMonomorphism_2030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_2008 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2030 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelMonomorphism_2030 v7
du_isRelMonomorphism_2030 ::
  T_IsLatticeIsomorphism_2008 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2030 v0
  = let v1 = d_isLatticeMonomorphism_2016 (coe v0) in
    coe
      du_isRelMonomorphism_114
      (coe du_'8743''45'isMagmaMonomorphism_2000 (coe v1))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.homo
d_homo_2032 ::
  T_IsLatticeIsomorphism_2008 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2032 v0
  = coe
      d_homo_86
      (coe
         d_'8743''45'isMagmaHomomorphism_1948
         (coe
            d_isLatticeHomomorphism_1976
            (coe d_isLatticeMonomorphism_2016 (coe v0))))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∧-isMagmaHomomorphism
d_'8743''45'isMagmaHomomorphism_2034 ::
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaHomomorphism_76
d_'8743''45'isMagmaHomomorphism_2034 v0
  = coe
      d_'8743''45'isMagmaHomomorphism_1948
      (coe
         d_isLatticeHomomorphism_1976
         (coe d_isLatticeMonomorphism_2016 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∧-isMagmaMonomorphism
d_'8743''45'isMagmaMonomorphism_2036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaMonomorphism_94
d_'8743''45'isMagmaMonomorphism_2036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaMonomorphism_2036 v7
du_'8743''45'isMagmaMonomorphism_2036 ::
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaMonomorphism_94
du_'8743''45'isMagmaMonomorphism_2036 v0
  = coe
      du_'8743''45'isMagmaMonomorphism_2000
      (coe d_isLatticeMonomorphism_2016 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.homo
d_homo_2038 ::
  T_IsLatticeIsomorphism_2008 -> AgdaAny -> AgdaAny -> AgdaAny
d_homo_2038 v0
  = coe
      d_homo_86
      (coe
         d_'8744''45'isMagmaHomomorphism_1946
         (coe
            d_isLatticeHomomorphism_1976
            (coe d_isLatticeMonomorphism_2016 (coe v0))))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∨-isMagmaHomomorphism
d_'8744''45'isMagmaHomomorphism_2040 ::
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaHomomorphism_76
d_'8744''45'isMagmaHomomorphism_2040 v0
  = coe
      d_'8744''45'isMagmaHomomorphism_1946
      (coe
         d_isLatticeHomomorphism_1976
         (coe d_isLatticeMonomorphism_2016 (coe v0)))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.∨-isMagmaMonomorphism
d_'8744''45'isMagmaMonomorphism_2042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaMonomorphism_94
d_'8744''45'isMagmaMonomorphism_2042 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaMonomorphism_2042 v7
du_'8744''45'isMagmaMonomorphism_2042 ::
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaMonomorphism_94
du_'8744''45'isMagmaMonomorphism_2042 v0
  = coe
      du_'8744''45'isMagmaMonomorphism_1998
      (coe d_isLatticeMonomorphism_2016 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.cong
d_cong_2044 ::
  T_IsLatticeIsomorphism_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2044 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_'8744''45'isMagmaHomomorphism_1946
            (coe
               d_isLatticeHomomorphism_1976
               (coe d_isLatticeMonomorphism_2016 (coe v0)))))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.cong
d_cong_2046 ::
  T_IsLatticeIsomorphism_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_2046 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d_cong_52
      (coe
         d_isRelHomomorphism_84
         (coe
            d_'8743''45'isMagmaHomomorphism_1948
            (coe
               d_isLatticeHomomorphism_1976
               (coe d_isLatticeMonomorphism_2016 (coe v0)))))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism.∨-isMagmaIsomorphism
d_'8744''45'isMagmaIsomorphism_2048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaIsomorphism_118
d_'8744''45'isMagmaIsomorphism_2048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8744''45'isMagmaIsomorphism_2048 v7
du_'8744''45'isMagmaIsomorphism_2048 ::
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaIsomorphism_118
du_'8744''45'isMagmaIsomorphism_2048 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_2385
      (coe
         du_'8744''45'isMagmaMonomorphism_1998
         (coe d_isLatticeMonomorphism_2016 (coe v0)))
      (coe d_surjective_2018 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism.∧-isMagmaIsomorphism
d_'8743''45'isMagmaIsomorphism_2050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaIsomorphism_118
d_'8743''45'isMagmaIsomorphism_2050 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8743''45'isMagmaIsomorphism_2050 v7
du_'8743''45'isMagmaIsomorphism_2050 ::
  T_IsLatticeIsomorphism_2008 -> T_IsMagmaIsomorphism_118
du_'8743''45'isMagmaIsomorphism_2050 v0
  = coe
      C_IsMagmaIsomorphism'46'constructor_2385
      (coe
         du_'8743''45'isMagmaMonomorphism_2000
         (coe d_isLatticeMonomorphism_2016 (coe v0)))
      (coe d_surjective_2018 (coe v0))
-- Algebra.Morphism.Structures.LatticeMorphisms.IsLatticeIsomorphism._.isRelIsomorphism
d_isRelIsomorphism_2054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  MAlonzo.Code.Algebra.Bundles.T_RawLattice_1110 ->
  (AgdaAny -> AgdaAny) ->
  T_IsLatticeIsomorphism_2008 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2054 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isRelIsomorphism_2054 v7
du_isRelIsomorphism_2054 ::
  T_IsLatticeIsomorphism_2008 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2054 v0
  = coe
      du_isRelIsomorphism_144
      (coe du_'8743''45'isMagmaIsomorphism_2050 (coe v0))
