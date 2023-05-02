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

module MAlonzo.Code.Algebra.Morphism where

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

-- Algebra.Morphism.Definitions._.Homomorphic₀
d_Homomorphic'8320'_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_32 = erased
-- Algebra.Morphism.Definitions._.Homomorphic₁
d_Homomorphic'8321'_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_34 = erased
-- Algebra.Morphism.Definitions._.Homomorphic₂
d_Homomorphic'8322'_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_36 = erased
-- Algebra.Morphism.Definitions._.Morphism
d_Morphism_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> ()
d_Morphism_38 = erased
-- Algebra.Morphism._.F._∙_
d__'8729'__58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__58 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8729'__58 v4
du__'8729'__58 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__58 v0
  = coe MAlonzo.Code.Algebra.Bundles.d__'8729'__224 (coe v0)
-- Algebra.Morphism._.F._≈_
d__'8776'__60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__60 = erased
-- Algebra.Morphism._._.Homomorphic₀
d_Homomorphic'8320'_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_138 = erased
-- Algebra.Morphism._._.Homomorphic₁
d_Homomorphic'8321'_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_140 = erased
-- Algebra.Morphism._._.Homomorphic₂
d_Homomorphic'8322'_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_142 = erased
-- Algebra.Morphism._._.Morphism
d_Morphism_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 -> ()
d_Morphism_144 = erased
-- Algebra.Morphism._.IsSemigroupMorphism
d_IsSemigroupMorphism_148 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemigroupMorphism_148
  = C_IsSemigroupMorphism'46'constructor_771 (AgdaAny ->
                                              AgdaAny -> AgdaAny -> AgdaAny)
                                             (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Morphism._.IsSemigroupMorphism.⟦⟧-cong
d_'10214''10215''45'cong_156 ::
  T_IsSemigroupMorphism_148 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214''10215''45'cong_156 v0
  = case coe v0 of
      C_IsSemigroupMorphism'46'constructor_771 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsSemigroupMorphism.∙-homo
d_'8729''45'homo_158 ::
  T_IsSemigroupMorphism_148 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_158 v0
  = case coe v0 of
      C_IsSemigroupMorphism'46'constructor_771 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsSemigroupMorphism-syntax
d_IsSemigroupMorphism'45'syntax_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  (AgdaAny -> AgdaAny) -> ()
d_IsSemigroupMorphism'45'syntax_160 = erased
-- Algebra.Morphism._.F.semigroup
d_semigroup_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_216 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_semigroup_216 v4
du_semigroup_216 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_216 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v0)
-- Algebra.Morphism._.F.ε
d_ε_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 -> AgdaAny
d_ε_224 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_ε_224 v4
du_ε_224 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_506 -> AgdaAny
du_ε_224 v0 = coe MAlonzo.Code.Algebra.Bundles.d_ε_528 (coe v0)
-- Algebra.Morphism._.T.semigroup
d_semigroup_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_semigroup_270 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_semigroup_270 v5
du_semigroup_270 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
du_semigroup_270 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v0)
-- Algebra.Morphism._._.Homomorphic₀
d_Homomorphic'8320'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_288 = erased
-- Algebra.Morphism._._.Homomorphic₁
d_Homomorphic'8321'_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_290 = erased
-- Algebra.Morphism._._.Homomorphic₂
d_Homomorphic'8322'_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_292 = erased
-- Algebra.Morphism._._.Morphism
d_Morphism_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 -> ()
d_Morphism_294 = erased
-- Algebra.Morphism._.IsMonoidMorphism
d_IsMonoidMorphism_298 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsMonoidMorphism_298
  = C_IsMonoidMorphism'46'constructor_1593 T_IsSemigroupMorphism_148
                                           AgdaAny
-- Algebra.Morphism._.IsMonoidMorphism.sm-homo
d_sm'45'homo_306 ::
  T_IsMonoidMorphism_298 -> T_IsSemigroupMorphism_148
d_sm'45'homo_306 v0
  = case coe v0 of
      C_IsMonoidMorphism'46'constructor_1593 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsMonoidMorphism.ε-homo
d_ε'45'homo_308 :: T_IsMonoidMorphism_298 -> AgdaAny
d_ε'45'homo_308 v0
  = case coe v0 of
      C_IsMonoidMorphism'46'constructor_1593 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsMonoidMorphism._.∙-homo
d_'8729''45'homo_312 ::
  T_IsMonoidMorphism_298 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_312 v0
  = coe d_'8729''45'homo_158 (coe d_sm'45'homo_306 (coe v0))
-- Algebra.Morphism._.IsMonoidMorphism._.⟦⟧-cong
d_'10214''10215''45'cong_314 ::
  T_IsMonoidMorphism_298 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214''10215''45'cong_314 v0
  = coe d_'10214''10215''45'cong_156 (coe d_sm'45'homo_306 (coe v0))
-- Algebra.Morphism._.IsMonoidMorphism-syntax
d_IsMonoidMorphism'45'syntax_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506 ->
  (AgdaAny -> AgdaAny) -> ()
d_IsMonoidMorphism'45'syntax_316 = erased
-- Algebra.Morphism._.F.monoid
d_monoid_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_376 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_monoid_376 v4
du_monoid_376 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_376 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v0)
-- Algebra.Morphism._.T.monoid
d_monoid_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_444 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_monoid_444 v5
du_monoid_444 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_444 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_monoid_650 (coe v0)
-- Algebra.Morphism._._.Homomorphic₀
d_Homomorphic'8320'_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_472 = erased
-- Algebra.Morphism._._.Homomorphic₁
d_Homomorphic'8321'_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_474 = erased
-- Algebra.Morphism._._.Homomorphic₂
d_Homomorphic'8322'_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_476 = erased
-- Algebra.Morphism._._.Morphism
d_Morphism_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 -> ()
d_Morphism_478 = erased
-- Algebra.Morphism._.IsCommutativeMonoidMorphism
d_IsCommutativeMonoidMorphism_482 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_IsCommutativeMonoidMorphism_482
  = C_IsCommutativeMonoidMorphism'46'constructor_2821 T_IsMonoidMorphism_298
-- Algebra.Morphism._.IsCommutativeMonoidMorphism.mn-homo
d_mn'45'homo_488 ::
  T_IsCommutativeMonoidMorphism_482 -> T_IsMonoidMorphism_298
d_mn'45'homo_488 v0
  = case coe v0 of
      C_IsCommutativeMonoidMorphism'46'constructor_2821 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsCommutativeMonoidMorphism._.sm-homo
d_sm'45'homo_492 ::
  T_IsCommutativeMonoidMorphism_482 -> T_IsSemigroupMorphism_148
d_sm'45'homo_492 v0
  = coe d_sm'45'homo_306 (coe d_mn'45'homo_488 (coe v0))
-- Algebra.Morphism._.IsCommutativeMonoidMorphism._.ε-homo
d_ε'45'homo_494 :: T_IsCommutativeMonoidMorphism_482 -> AgdaAny
d_ε'45'homo_494 v0
  = coe d_ε'45'homo_308 (coe d_mn'45'homo_488 (coe v0))
-- Algebra.Morphism._.IsCommutativeMonoidMorphism._.∙-homo
d_'8729''45'homo_496 ::
  T_IsCommutativeMonoidMorphism_482 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_496 v0
  = coe
      d_'8729''45'homo_158
      (coe d_sm'45'homo_306 (coe d_mn'45'homo_488 (coe v0)))
-- Algebra.Morphism._.IsCommutativeMonoidMorphism._.⟦⟧-cong
d_'10214''10215''45'cong_498 ::
  T_IsCommutativeMonoidMorphism_482 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214''10215''45'cong_498 v0
  = coe
      d_'10214''10215''45'cong_156
      (coe d_sm'45'homo_306 (coe d_mn'45'homo_488 (coe v0)))
-- Algebra.Morphism._.IsCommutativeMonoidMorphism-syntax
d_IsCommutativeMonoidMorphism'45'syntax_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582 ->
  (AgdaAny -> AgdaAny) -> ()
d_IsCommutativeMonoidMorphism'45'syntax_500 = erased
-- Algebra.Morphism._.F.commutativeMonoid
d_commutativeMonoid_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_commutativeMonoid_534 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_commutativeMonoid_534 v4
du_commutativeMonoid_534 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_commutativeMonoid_534 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_commutativeMonoid_746 (coe v0)
-- Algebra.Morphism._.F.monoid
d_monoid_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_566 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_monoid_566 v4
du_monoid_566 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_566 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_650
      (coe
         MAlonzo.Code.Algebra.Bundles.du_commutativeMonoid_746 (coe v0))
-- Algebra.Morphism._.T.commutativeMonoid
d_commutativeMonoid_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_commutativeMonoid_608 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_commutativeMonoid_608 v5
du_commutativeMonoid_608 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
du_commutativeMonoid_608 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_commutativeMonoid_746 (coe v0)
-- Algebra.Morphism._.T.monoid
d_monoid_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_640 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_monoid_640 v5
du_monoid_640 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_640 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_650
      (coe
         MAlonzo.Code.Algebra.Bundles.du_commutativeMonoid_746 (coe v0))
-- Algebra.Morphism._._.Homomorphic₀
d_Homomorphic'8320'_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_668 = erased
-- Algebra.Morphism._._.Homomorphic₁
d_Homomorphic'8321'_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_670 = erased
-- Algebra.Morphism._._.Homomorphic₂
d_Homomorphic'8322'_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_672 = erased
-- Algebra.Morphism._._.Morphism
d_Morphism_674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  ()
d_Morphism_674 = erased
-- Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism
d_IsIdempotentCommutativeMonoidMorphism_678 a0 a1 a2 a3 a4 a5 a6
  = ()
newtype T_IsIdempotentCommutativeMonoidMorphism_678
  = C_IsIdempotentCommutativeMonoidMorphism'46'constructor_4141 T_IsMonoidMorphism_298
-- Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.mn-homo
d_mn'45'homo_684 ::
  T_IsIdempotentCommutativeMonoidMorphism_678 ->
  T_IsMonoidMorphism_298
d_mn'45'homo_684 v0
  = case coe v0 of
      C_IsIdempotentCommutativeMonoidMorphism'46'constructor_4141 v1
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.sm-homo
d_sm'45'homo_688 ::
  T_IsIdempotentCommutativeMonoidMorphism_678 ->
  T_IsSemigroupMorphism_148
d_sm'45'homo_688 v0
  = coe d_sm'45'homo_306 (coe d_mn'45'homo_684 (coe v0))
-- Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.ε-homo
d_ε'45'homo_690 ::
  T_IsIdempotentCommutativeMonoidMorphism_678 -> AgdaAny
d_ε'45'homo_690 v0
  = coe d_ε'45'homo_308 (coe d_mn'45'homo_684 (coe v0))
-- Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.∙-homo
d_'8729''45'homo_692 ::
  T_IsIdempotentCommutativeMonoidMorphism_678 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_692 v0
  = coe
      d_'8729''45'homo_158
      (coe d_sm'45'homo_306 (coe d_mn'45'homo_684 (coe v0)))
-- Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.⟦⟧-cong
d_'10214''10215''45'cong_694 ::
  T_IsIdempotentCommutativeMonoidMorphism_678 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214''10215''45'cong_694 v0
  = coe
      d_'10214''10215''45'cong_156
      (coe d_sm'45'homo_306 (coe d_mn'45'homo_684 (coe v0)))
-- Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.isCommutativeMonoidMorphism
d_isCommutativeMonoidMorphism_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  (AgdaAny -> AgdaAny) ->
  T_IsIdempotentCommutativeMonoidMorphism_678 ->
  T_IsCommutativeMonoidMorphism_482
d_isCommutativeMonoidMorphism_696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMonoidMorphism_696 v7
du_isCommutativeMonoidMorphism_696 ::
  T_IsIdempotentCommutativeMonoidMorphism_678 ->
  T_IsCommutativeMonoidMorphism_482
du_isCommutativeMonoidMorphism_696 v0
  = coe
      C_IsCommutativeMonoidMorphism'46'constructor_2821
      (coe d_mn'45'homo_684 (coe v0))
-- Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism-syntax
d_IsIdempotentCommutativeMonoidMorphism'45'syntax_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674 ->
  (AgdaAny -> AgdaAny) -> ()
d_IsIdempotentCommutativeMonoidMorphism'45'syntax_698 = erased
-- Algebra.Morphism._.F._⁻¹
d__'8315''185'_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 -> AgdaAny -> AgdaAny
d__'8315''185'_720 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du__'8315''185'_720 v4
du__'8315''185'_720 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_890 -> AgdaAny -> AgdaAny
du__'8315''185'_720 v0
  = coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 (coe v0)
-- Algebra.Morphism._.F.monoid
d_monoid_758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_758 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_monoid_758 v4
du_monoid_758 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_758 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_monoid_972 (coe v0)
-- Algebra.Morphism._.T.monoid
d_monoid_834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_monoid_834 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_monoid_834 v5
du_monoid_834 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_monoid_834 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_monoid_972 (coe v0)
-- Algebra.Morphism._._.Homomorphic₀
d_Homomorphic'8320'_870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_870 = erased
-- Algebra.Morphism._._.Homomorphic₁
d_Homomorphic'8321'_872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_872 = erased
-- Algebra.Morphism._._.Homomorphic₂
d_Homomorphic'8322'_874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_874 = erased
-- Algebra.Morphism._._.Morphism
d_Morphism_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 -> ()
d_Morphism_876 = erased
-- Algebra.Morphism._.IsGroupMorphism
d_IsGroupMorphism_880 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_IsGroupMorphism_880
  = C_IsGroupMorphism'46'constructor_5835 T_IsMonoidMorphism_298
-- Algebra.Morphism._.IsGroupMorphism.mn-homo
d_mn'45'homo_886 :: T_IsGroupMorphism_880 -> T_IsMonoidMorphism_298
d_mn'45'homo_886 v0
  = case coe v0 of
      C_IsGroupMorphism'46'constructor_5835 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsGroupMorphism._.sm-homo
d_sm'45'homo_890 ::
  T_IsGroupMorphism_880 -> T_IsSemigroupMorphism_148
d_sm'45'homo_890 v0
  = coe d_sm'45'homo_306 (coe d_mn'45'homo_886 (coe v0))
-- Algebra.Morphism._.IsGroupMorphism._.ε-homo
d_ε'45'homo_892 :: T_IsGroupMorphism_880 -> AgdaAny
d_ε'45'homo_892 v0
  = coe d_ε'45'homo_308 (coe d_mn'45'homo_886 (coe v0))
-- Algebra.Morphism._.IsGroupMorphism._.∙-homo
d_'8729''45'homo_894 ::
  T_IsGroupMorphism_880 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_894 v0
  = coe
      d_'8729''45'homo_158
      (coe d_sm'45'homo_306 (coe d_mn'45'homo_886 (coe v0)))
-- Algebra.Morphism._.IsGroupMorphism._.⟦⟧-cong
d_'10214''10215''45'cong_896 ::
  T_IsGroupMorphism_880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214''10215''45'cong_896 v0
  = coe
      d_'10214''10215''45'cong_156
      (coe d_sm'45'homo_306 (coe d_mn'45'homo_886 (coe v0)))
-- Algebra.Morphism._.IsGroupMorphism.⁻¹-homo
d_'8315''185''45'homo_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  (AgdaAny -> AgdaAny) -> T_IsGroupMorphism_880 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_898 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'8315''185''45'homo_898 v4 v5 v6 v7 v8
du_'8315''185''45'homo_898 ::
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  (AgdaAny -> AgdaAny) -> T_IsGroupMorphism_880 -> AgdaAny -> AgdaAny
du_'8315''185''45'homo_898 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du_unique'737''45''8315''185'_648
      (MAlonzo.Code.Algebra.Bundles.d__'8729'__912 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d_isGroup_918 (coe v1))
      (coe
         v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 v0 v4))
      (coe v2 v4)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_918 (coe v1) in
             let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
             let v7
                   = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
             coe
               MAlonzo.Code.Algebra.Structures.du_setoid_110
               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8729'__912 v1
               (coe
                  v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 v0 v4))
               (coe v2 v4))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__912 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 v0 v4) v4))
            (MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_918 (coe v1) in
                let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                let v7
                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_setoid_110
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
               (coe
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__912 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 v0 v4) v4))
               (coe v2 (MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v0)))
               (MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_918 (coe v1) in
                   let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                   let v7
                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_setoid_110
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))
                  (coe v2 (MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v0)))
                  (MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v1))
                  (MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v5 = MAlonzo.Code.Algebra.Bundles.d_isGroup_918 (coe v1) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v5) in
                            let v7
                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v6) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_setoid_110
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v7)))))
                     (coe MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v1)))
                  (d_ε'45'homo_308 (coe d_mn'45'homo_886 (coe v3))))
               (coe
                  d_'10214''10215''45'cong_156
                  (d_sm'45'homo_306 (coe d_mn'45'homo_886 (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__912 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 v0 v4) v4)
                  (MAlonzo.Code.Algebra.Bundles.d_ε_914 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_inverse'737'_640
                     (MAlonzo.Code.Algebra.Bundles.d_isGroup_918 (coe v0)) v4)))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isMagma_202
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                           (coe MAlonzo.Code.Algebra.Bundles.d_isGroup_918 (coe v1))))))
               (coe
                  v2
                  (let v5
                         = let v5
                                 = coe MAlonzo.Code.Algebra.Bundles.du_monoid_972 (coe v0) in
                           coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v5) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.d__'8729'__224 v5
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 v0 v4) v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8729'__224
                  (let v5
                         = coe MAlonzo.Code.Algebra.Bundles.du_monoid_972 (coe v1) in
                   coe MAlonzo.Code.Algebra.Bundles.du_semigroup_566 (coe v5))
                  (coe
                     v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 v0 v4))
                  (coe v2 v4))
               (coe
                  d_'8729''45'homo_158
                  (d_sm'45'homo_306 (coe d_mn'45'homo_886 (coe v3)))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8315''185'_916 v0 v4) v4))))
-- Algebra.Morphism._.IsGroupMorphism-syntax
d_IsGroupMorphism'45'syntax_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890 ->
  (AgdaAny -> AgdaAny) -> ()
d_IsGroupMorphism'45'syntax_926 = erased
-- Algebra.Morphism._.F.group
d_group_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890
d_group_968 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_group_968 v4
du_group_968 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890
du_group_968 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0)
-- Algebra.Morphism._.T.group
d_group_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890
d_group_1062 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_group_1062 v5
du_group_1062 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_Group_890
du_group_1062 v0
  = coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0)
-- Algebra.Morphism._._.Homomorphic₀
d_Homomorphic'8320'_1134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_1134 = erased
-- Algebra.Morphism._._.Homomorphic₁
d_Homomorphic'8321'_1136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_1136 = erased
-- Algebra.Morphism._._.Homomorphic₂
d_Homomorphic'8322'_1138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_1138 = erased
-- Algebra.Morphism._._.Morphism
d_Morphism_1140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 -> ()
d_Morphism_1140 = erased
-- Algebra.Morphism._.IsAbelianGroupMorphism
d_IsAbelianGroupMorphism_1144 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_IsAbelianGroupMorphism_1144
  = C_IsAbelianGroupMorphism'46'constructor_8913 T_IsGroupMorphism_880
-- Algebra.Morphism._.IsAbelianGroupMorphism.gp-homo
d_gp'45'homo_1150 ::
  T_IsAbelianGroupMorphism_1144 -> T_IsGroupMorphism_880
d_gp'45'homo_1150 v0
  = case coe v0 of
      C_IsAbelianGroupMorphism'46'constructor_8913 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsAbelianGroupMorphism._.mn-homo
d_mn'45'homo_1154 ::
  T_IsAbelianGroupMorphism_1144 -> T_IsMonoidMorphism_298
d_mn'45'homo_1154 v0
  = coe d_mn'45'homo_886 (coe d_gp'45'homo_1150 (coe v0))
-- Algebra.Morphism._.IsAbelianGroupMorphism._.sm-homo
d_sm'45'homo_1156 ::
  T_IsAbelianGroupMorphism_1144 -> T_IsSemigroupMorphism_148
d_sm'45'homo_1156 v0
  = coe
      d_sm'45'homo_306
      (coe d_mn'45'homo_886 (coe d_gp'45'homo_1150 (coe v0)))
-- Algebra.Morphism._.IsAbelianGroupMorphism._.ε-homo
d_ε'45'homo_1158 :: T_IsAbelianGroupMorphism_1144 -> AgdaAny
d_ε'45'homo_1158 v0
  = coe
      d_ε'45'homo_308
      (coe d_mn'45'homo_886 (coe d_gp'45'homo_1150 (coe v0)))
-- Algebra.Morphism._.IsAbelianGroupMorphism._.⁻¹-homo
d_'8315''185''45'homo_1160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroupMorphism_1144 -> AgdaAny -> AgdaAny
d_'8315''185''45'homo_1160 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8315''185''45'homo_1160 v4 v5 v6 v7
du_'8315''185''45'homo_1160 ::
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroupMorphism_1144 -> AgdaAny -> AgdaAny
du_'8315''185''45'homo_1160 v0 v1 v2 v3
  = coe
      du_'8315''185''45'homo_898
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.du_group_1080 (coe v1)) (coe v2)
      (coe d_gp'45'homo_1150 (coe v3))
-- Algebra.Morphism._.IsAbelianGroupMorphism._.∙-homo
d_'8729''45'homo_1162 ::
  T_IsAbelianGroupMorphism_1144 -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'homo_1162 v0
  = coe
      d_'8729''45'homo_158
      (coe
         d_sm'45'homo_306
         (coe d_mn'45'homo_886 (coe d_gp'45'homo_1150 (coe v0))))
-- Algebra.Morphism._.IsAbelianGroupMorphism._.⟦⟧-cong
d_'10214''10215''45'cong_1164 ::
  T_IsAbelianGroupMorphism_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'10214''10215''45'cong_1164 v0
  = coe
      d_'10214''10215''45'cong_156
      (coe
         d_sm'45'homo_306
         (coe d_mn'45'homo_886 (coe d_gp'45'homo_1150 (coe v0))))
-- Algebra.Morphism._.IsAbelianGroupMorphism-syntax
d_IsAbelianGroupMorphism'45'syntax_1166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990 ->
  (AgdaAny -> AgdaAny) -> ()
d_IsAbelianGroupMorphism'45'syntax_1166 = erased
-- Algebra.Morphism._.F.*-monoid
d_'42''45'monoid_1218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'42''45'monoid_1218 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'42''45'monoid_1218 v4
du_'42''45'monoid_1218 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'42''45'monoid_1218 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2656 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v1))
-- Algebra.Morphism._.F.+-abelianGroup
d_'43''45'abelianGroup_1226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990
d_'43''45'abelianGroup_1226 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'43''45'abelianGroup_1226 v4
du_'43''45'abelianGroup_1226 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990
du_'43''45'abelianGroup_1226 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654 (coe v0)
-- Algebra.Morphism._.T.*-monoid
d_'42''45'monoid_1378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'42''45'monoid_1378 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'42''45'monoid_1378 v5
du_'42''45'monoid_1378 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
du_'42''45'monoid_1378 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_semiring_2656 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_'42''45'monoid_1916
      (coe
         MAlonzo.Code.Algebra.Bundles.du_semiringWithoutAnnihilatingZero_2048
         (coe v1))
-- Algebra.Morphism._.T.+-abelianGroup
d_'43''45'abelianGroup_1386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990
d_'43''45'abelianGroup_1386 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'43''45'abelianGroup_1386 v5
du_'43''45'abelianGroup_1386 ::
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_AbelianGroup_990
du_'43''45'abelianGroup_1386 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_'43''45'abelianGroup_2654 (coe v0)
-- Algebra.Morphism._._.Homomorphic₀
d_Homomorphic'8320'_1506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_Homomorphic'8320'_1506 = erased
-- Algebra.Morphism._._.Homomorphic₁
d_Homomorphic'8321'_1508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8321'_1508 = erased
-- Algebra.Morphism._._.Homomorphic₂
d_Homomorphic'8322'_1510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Homomorphic'8322'_1510 = erased
-- Algebra.Morphism._._.Morphism
d_Morphism_1512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 -> ()
d_Morphism_1512 = erased
-- Algebra.Morphism._.IsRingMorphism
d_IsRingMorphism_1516 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsRingMorphism_1516
  = C_IsRingMorphism'46'constructor_10683 T_IsAbelianGroupMorphism_1144
                                          T_IsMonoidMorphism_298
-- Algebra.Morphism._.IsRingMorphism.+-abgp-homo
d_'43''45'abgp'45'homo_1524 ::
  T_IsRingMorphism_1516 -> T_IsAbelianGroupMorphism_1144
d_'43''45'abgp'45'homo_1524 v0
  = case coe v0 of
      C_IsRingMorphism'46'constructor_10683 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsRingMorphism.*-mn-homo
d_'42''45'mn'45'homo_1526 ::
  T_IsRingMorphism_1516 -> T_IsMonoidMorphism_298
d_'42''45'mn'45'homo_1526 v0
  = case coe v0 of
      C_IsRingMorphism'46'constructor_10683 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Morphism._.IsRingMorphism-syntax
d_IsRingMorphism'45'syntax_1528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  MAlonzo.Code.Algebra.Bundles.T_Ring_2514 ->
  (AgdaAny -> AgdaAny) -> ()
d_IsRingMorphism'45'syntax_1528 = erased
