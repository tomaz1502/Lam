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

module MAlonzo.Code.Algebra.Structures.Biased where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Structures

-- Algebra.Structures.Biased._._DistributesOver_
d__DistributesOver__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__18 = erased
-- Algebra.Structures.Biased._._DistributesOverʳ_
d__DistributesOver'691'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__20 = erased
-- Algebra.Structures.Biased._._DistributesOverˡ_
d__DistributesOver'737'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__22 = erased
-- Algebra.Structures.Biased._.Commutative
d_Commutative_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_38 = erased
-- Algebra.Structures.Biased._.Identity
d_Identity_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_50 = erased
-- Algebra.Structures.Biased._.LeftIdentity
d_LeftIdentity_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_64 = erased
-- Algebra.Structures.Biased._.LeftZero
d_LeftZero_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_68 = erased
-- Algebra.Structures.Biased._.RightIdentity
d_RightIdentity_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_76 = erased
-- Algebra.Structures.Biased._.RightZero
d_RightZero_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_80 = erased
-- Algebra.Structures.Biased._.Zero
d_Zero_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_84 = erased
-- Algebra.Structures.Biased._.IsAbelianGroup
d_IsAbelianGroup_88 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Structures.Biased._.IsCommutativeMonoid
d_IsCommutativeMonoid_100 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Structures.Biased._.IsCommutativeSemiring
d_IsCommutativeSemiring_106 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Structures.Biased._.IsMonoid
d_IsMonoid_120 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Structures.Biased._.IsRing
d_IsRing_124 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Algebra.Structures.Biased._.IsSemigroup
d_IsSemigroup_128 a0 a1 a2 a3 a4 = ()
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ
d_IsCommutativeMonoid'737'_1514 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid'737'_1514
  = C_IsCommutativeMonoid'737''46'constructor_17973 MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
                                                    (AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.isSemigroup
d_isSemigroup_1526 ::
  T_IsCommutativeMonoid'737'_1514 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1526 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_17973 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityˡ
d_identity'737'_1528 ::
  T_IsCommutativeMonoid'737'_1514 -> AgdaAny -> AgdaAny
d_identity'737'_1528 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_17973 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.comm
d_comm_1530 ::
  T_IsCommutativeMonoid'737'_1514 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1530 v0
  = case coe v0 of
      C_IsCommutativeMonoid'737''46'constructor_17973 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityʳ
d_identity'691'_1558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid'737'_1514 -> AgdaAny -> AgdaAny
d_identity'691'_1558 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_identity'691'_1558 v4 v5 v6
du_identity'691'_1558 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid'737'_1514 -> AgdaAny -> AgdaAny
du_identity'691'_1558 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'id'737''8658'id'691'_172
      (let v3 = d_isSemigroup_1526 (coe v2) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3)))
      (coe v0) (coe d_comm_1530 (coe v2)) (coe v1)
      (coe d_identity'737'_1528 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.identity
d_identity_1560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1560 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_identity_1560 v4 v5 v6
du_identity_1560 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_1514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1560 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_identity'737'_1528 (coe v2))
      (coe du_identity'691'_1558 (coe v0) (coe v1) (coe v2))
-- Algebra.Structures.Biased.IsCommutativeMonoidˡ.isCommutativeMonoid
d_isCommutativeMonoid_1562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_1514 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_isCommutativeMonoid_1562 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCommutativeMonoid_1562 v4 v5 v6
du_isCommutativeMonoid_1562 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'737'_1514 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_isCommutativeMonoid_1562 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
         (coe d_isSemigroup_1526 (coe v2))
         (coe du_identity_1560 (coe v0) (coe v1) (coe v2)))
      (coe d_comm_1530 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ
d_IsCommutativeMonoid'691'_1568 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid'691'_1568
  = C_IsCommutativeMonoid'691''46'constructor_19541 MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
                                                    (AgdaAny -> AgdaAny)
                                                    (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.isSemigroup
d_isSemigroup_1580 ::
  T_IsCommutativeMonoid'691'_1568 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_isSemigroup_1580 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_19541 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityʳ
d_identity'691'_1582 ::
  T_IsCommutativeMonoid'691'_1568 -> AgdaAny -> AgdaAny
d_identity'691'_1582 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_19541 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.comm
d_comm_1584 ::
  T_IsCommutativeMonoid'691'_1568 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1584 v0
  = case coe v0 of
      C_IsCommutativeMonoid'691''46'constructor_19541 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityˡ
d_identity'737'_1612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid'691'_1568 -> AgdaAny -> AgdaAny
d_identity'737'_1612 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_identity'737'_1612 v4 v5 v6
du_identity'737'_1612 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid'691'_1568 -> AgdaAny -> AgdaAny
du_identity'737'_1612 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'id'691''8658'id'737'_178
      (let v3 = d_isSemigroup_1580 (coe v2) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v3)))
      (coe v0) (coe d_comm_1584 (coe v2)) (coe v1)
      (coe d_identity'691'_1582 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.identity
d_identity_1614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_1568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1614 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_identity_1614 v4 v5 v6
du_identity_1614 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_1568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_1614 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_identity'737'_1612 (coe v0) (coe v1) (coe v2))
      (coe d_identity'691'_1582 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeMonoidʳ.isCommutativeMonoid
d_isCommutativeMonoid_1616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_1568 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_isCommutativeMonoid_1616 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_isCommutativeMonoid_1616 v4 v5 v6
du_isCommutativeMonoid_1616 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid'691'_1568 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_isCommutativeMonoid_1616 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
         (coe d_isSemigroup_1580 (coe v2))
         (coe du_identity_1614 (coe v0) (coe v1) (coe v2)))
      (coe d_comm_1584 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ
d_IsCommutativeSemiring'737'_1626 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring'737'_1626
  = C_IsCommutativeSemiring'737''46'constructor_21127 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
                                                      MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                      (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1644 ::
  T_IsCommutativeSemiring'737'_1626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1644 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_21127 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1646 ::
  T_IsCommutativeSemiring'737'_1626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_1646 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_21127 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribʳ
d_distrib'691'_1648 ::
  T_IsCommutativeSemiring'737'_1626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1648 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_21127 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroˡ
d_zero'737'_1650 ::
  T_IsCommutativeSemiring'737'_1626 -> AgdaAny -> AgdaAny
d_zero'737'_1650 v0
  = case coe v0 of
      C_IsCommutativeSemiring'737''46'constructor_21127 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-CM.comm
d_comm_1698 ::
  T_IsCommutativeSemiring'737'_1626 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1698 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe d_'42''45'isCommutativeMonoid_1646 (coe v0))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribˡ
d_distrib'737'_1736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_1626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1736 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8
  = du_distrib'737'_1736 v4 v5 v8
du_distrib'737'_1736 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemiring'737'_1626 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1736 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'691''8658'distr'737'_322
      (let v3 = d_'43''45'isCommutativeMonoid_1644 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
       let v5
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
      (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe d_'43''45'isCommutativeMonoid_1644 (coe v2))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_418
         (coe d_'42''45'isCommutativeMonoid_1646 (coe v2)))
      (coe d_distrib'691'_1648 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.distrib
d_distrib_1738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_1626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1738 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8
  = du_distrib_1738 v4 v5 v8
du_distrib_1738 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemiring'737'_1626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_1738 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_distrib'737'_1736 (coe v0) (coe v1) (coe v2))
      (coe d_distrib'691'_1648 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroʳ
d_zero'691'_1740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring'737'_1626 -> AgdaAny -> AgdaAny
d_zero'691'_1740 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 v8
  = du_zero'691'_1740 v5 v6 v8
du_zero'691'_1740 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeSemiring'737'_1626 -> AgdaAny -> AgdaAny
du_zero'691'_1740 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'737''8658'ze'691'_184
      (let v3 = d_'43''45'isCommutativeMonoid_1644 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
       let v5
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
      (coe v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_418
         (coe d_'42''45'isCommutativeMonoid_1646 (coe v2)))
      (coe v1) (coe d_zero'737'_1650 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.zero
d_zero_1742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_1626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1742 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 v8
  = du_zero_1742 v5 v6 v8
du_zero_1742 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_1626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_1742 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_zero'737'_1650 (coe v2))
      (coe du_zero'691'_1740 (coe v0) (coe v1) (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringˡ.isCommutativeSemiring
d_isCommutativeSemiring_1744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_1626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_1744 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_isCommutativeSemiring_1744 v4 v5 v6 v8
du_isCommutativeSemiring_1744 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'737'_1626 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
du_isCommutativeSemiring_1744 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_36165
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_32891
         (coe
            MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677
            (coe d_'43''45'isCommutativeMonoid_1644 (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe d_'42''45'isCommutativeMonoid_1646 (coe v3)))
            (coe du_distrib_1738 (coe v0) (coe v1) (coe v3)))
         (coe du_zero_1742 (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_418
         (coe d_'42''45'isCommutativeMonoid_1646 (coe v3)))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ
d_IsCommutativeSemiring'691'_1754 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring'691'_1754
  = C_IsCommutativeSemiring'691''46'constructor_26003 MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
                                                      MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
                                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                      (AgdaAny -> AgdaAny)
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1772 ::
  T_IsCommutativeSemiring'691'_1754 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'isCommutativeMonoid_1772 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_26003 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1774 ::
  T_IsCommutativeSemiring'691'_1754 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'isCommutativeMonoid_1774 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_26003 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribˡ
d_distrib'737'_1776 ::
  T_IsCommutativeSemiring'691'_1754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1776 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_26003 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroʳ
d_zero'691'_1778 ::
  T_IsCommutativeSemiring'691'_1754 -> AgdaAny -> AgdaAny
d_zero'691'_1778 v0
  = case coe v0 of
      C_IsCommutativeSemiring'691''46'constructor_26003 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-CM.comm
d_comm_1826 ::
  T_IsCommutativeSemiring'691'_1754 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1826 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d_comm_418
      (coe d_'42''45'isCommutativeMonoid_1774 (coe v0))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribʳ
d_distrib'691'_1864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_1754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1864 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8
  = du_distrib'691'_1864 v4 v5 v8
du_distrib'691'_1864 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemiring'691'_1754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1864 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr'691'_312
      (let v3 = d_'43''45'isCommutativeMonoid_1772 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
       let v5
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
      (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_416
                  (coe d_'43''45'isCommutativeMonoid_1772 (coe v2))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_418
         (coe d_'42''45'isCommutativeMonoid_1774 (coe v2)))
      (coe d_distrib'737'_1776 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.distrib
d_distrib_1866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_1754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1866 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8
  = du_distrib_1866 v4 v5 v8
du_distrib_1866 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemiring'691'_1754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_distrib_1866 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_distrib'737'_1776 (coe v2))
      (coe du_distrib'691'_1864 (coe v0) (coe v1) (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroˡ
d_zero'737'_1868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring'691'_1754 -> AgdaAny -> AgdaAny
d_zero'737'_1868 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 v8
  = du_zero'737'_1868 v5 v6 v8
du_zero'737'_1868 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeSemiring'691'_1754 -> AgdaAny -> AgdaAny
du_zero'737'_1868 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'691''8658'ze'737'_190
      (let v3 = d_'43''45'isCommutativeMonoid_1772 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d_isMonoid_416 (coe v3) in
       let v5
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v5)))
      (coe v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_418
         (coe d_'42''45'isCommutativeMonoid_1774 (coe v2)))
      (coe v1) (coe d_zero'691'_1778 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.zero
d_zero_1870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_1754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1870 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 v8
  = du_zero_1870 v5 v6 v8
du_zero_1870 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_1754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_1870 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_zero'737'_1868 (coe v0) (coe v1) (coe v2))
      (coe d_zero'691'_1778 (coe v2))
-- Algebra.Structures.Biased.IsCommutativeSemiringʳ.isCommutativeSemiring
d_isCommutativeSemiring_1872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_1754 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_1872 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_isCommutativeSemiring_1872 v4 v5 v6 v8
du_isCommutativeSemiring_1872 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiring'691'_1754 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
du_isCommutativeSemiring_1872 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_36165
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_32891
         (coe
            MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677
            (coe d_'43''45'isCommutativeMonoid_1772 (coe v3))
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_416
               (coe d_'42''45'isCommutativeMonoid_1774 (coe v3)))
            (coe du_distrib_1866 (coe v0) (coe v1) (coe v3)))
         (coe du_zero_1870 (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_comm_418
         (coe d_'42''45'isCommutativeMonoid_1774 (coe v3)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero
d_IsRingWithoutAnnihilatingZero_1884 a0 a1 a2 a3 a4 a5 a6 a7 a8
  = ()
data T_IsRingWithoutAnnihilatingZero_1884
  = C_IsRingWithoutAnnihilatingZero'46'constructor_30905 MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
                                                         MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
                                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+-isAbelianGroup
d_'43''45'isAbelianGroup_1902 ::
  T_IsRingWithoutAnnihilatingZero_1884 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
d_'43''45'isAbelianGroup_1902 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_30905 v1 v2 v3
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_1904 ::
  T_IsRingWithoutAnnihilatingZero_1884 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'isMonoid_1904 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_30905 v1 v2 v3
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.distrib
d_distrib_1906 ::
  T_IsRingWithoutAnnihilatingZero_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1906 v0
  = case coe v0 of
      C_IsRingWithoutAnnihilatingZero'46'constructor_30905 v1 v2 v3
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroˡ
d_zero'737'_2002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_1884 -> AgdaAny -> AgdaAny
d_zero'737'_2002 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_2002 v4 v5 v6 v7 v9
du_zero'737'_2002 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_1884 -> AgdaAny -> AgdaAny
du_zero'737'_2002 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_364
      (let v5 = d_'43''45'isAbelianGroup_1902 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v6) in
       let v8
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v7) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v8)))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe d_'43''45'isAbelianGroup_1902 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe d_'42''45'isMonoid_1904 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe d_'43''45'isAbelianGroup_1902 (coe v4))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_distrib_1906 (coe v4)))
      (let v5 = d_'43''45'isAbelianGroup_1902 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v5) in
       coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_400
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v6)))
      (let v5 = d_'43''45'isAbelianGroup_1902 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v5)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroʳ
d_zero'691'_2004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_1884 -> AgdaAny -> AgdaAny
d_zero'691'_2004 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_2004 v4 v5 v6 v7 v9
du_zero'691'_2004 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_1884 -> AgdaAny -> AgdaAny
du_zero'691'_2004 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_376
      (let v5 = d_'43''45'isAbelianGroup_1902 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v6) in
       let v8
             = MAlonzo.Code.Algebra.Structures.d_isSemigroup_368 (coe v7) in
       coe
         MAlonzo.Code.Algebra.Structures.du_setoid_110
         (coe MAlonzo.Code.Algebra.Structures.d_isMagma_202 (coe v8)))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_594
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isGroup_674
                     (coe d_'43''45'isAbelianGroup_1902 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_96
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
               (coe d_'42''45'isMonoid_1904 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (coe
            MAlonzo.Code.Algebra.Structures.d_isSemigroup_368
            (coe
               MAlonzo.Code.Algebra.Structures.d_isMonoid_594
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isGroup_674
                  (coe d_'43''45'isAbelianGroup_1902 (coe v4))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe d_distrib_1906 (coe v4)))
      (let v5 = d_'43''45'isAbelianGroup_1902 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v5) in
       coe
         MAlonzo.Code.Algebra.Structures.du_identity'691'_400
         (coe MAlonzo.Code.Algebra.Structures.d_isMonoid_594 (coe v6)))
      (let v5 = d_'43''45'isAbelianGroup_1902 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du_inverse'691'_642
         (coe MAlonzo.Code.Algebra.Structures.d_isGroup_674 (coe v5)))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zero
d_zero_2006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2006 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_2006 v4 v5 v6 v7 v9
du_zero_2006 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_1884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2006 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_zero'737'_2002 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_zero'691'_2004 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.isRing
d_isRing_2008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_1884 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_1584
d_isRing_2008 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isRing_2008 v4 v5 v6 v7 v9
du_isRing_2008 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutAnnihilatingZero_1884 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_1584
du_isRing_2008 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_43503
      (coe d_'43''45'isAbelianGroup_1902 (coe v4))
      (coe d_'42''45'isMonoid_1904 (coe v4))
      (coe d_distrib_1906 (coe v4))
      (coe du_zero_2006 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
