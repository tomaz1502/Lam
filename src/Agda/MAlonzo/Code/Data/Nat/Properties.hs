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

module MAlonzo.Code.Data.Nat.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Algebra.Morphism
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.Metric.Nat.Bundles
import qualified MAlonzo.Code.Function.Metric.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Nat.Properties._._DistributesOver_
d__DistributesOver__10 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver__10 = erased
-- Data.Nat.Properties._._DistributesOverʳ_
d__DistributesOver'691'__12 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'691'__12 = erased
-- Data.Nat.Properties._._DistributesOverˡ_
d__DistributesOver'737'__14 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'737'__14 = erased
-- Data.Nat.Properties._.Associative
d_Associative_26 :: (Integer -> Integer -> Integer) -> ()
d_Associative_26 = erased
-- Data.Nat.Properties._.Commutative
d_Commutative_28 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_28 = erased
-- Data.Nat.Properties._.Identity
d_Identity_40 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_40 = erased
-- Data.Nat.Properties._.LeftIdentity
d_LeftIdentity_52 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_52 = erased
-- Data.Nat.Properties._.LeftZero
d_LeftZero_56 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_56 = erased
-- Data.Nat.Properties._.RightIdentity
d_RightIdentity_62 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_62 = erased
-- Data.Nat.Properties._.RightZero
d_RightZero_66 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_66 = erased
-- Data.Nat.Properties._.Zero
d_Zero_70 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Zero_70 = erased
-- Data.Nat.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_86 a0 a1 = ()
-- Data.Nat.Properties._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_90 a0 = ()
-- Data.Nat.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_92 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_94 a0 a1 a2 = ()
-- Data.Nat.Properties._.IsMagma
d_IsMagma_104 a0 = ()
-- Data.Nat.Properties._.IsMonoid
d_IsMonoid_106 a0 a1 = ()
-- Data.Nat.Properties._.IsSemigroup
d_IsSemigroup_114 a0 = ()
-- Data.Nat.Properties._.IsSemiring
d_IsSemiring_118 a0 a1 a2 a3 = ()
-- Data.Nat.Properties._.IsSemiringWithoutOne
d_IsSemiringWithoutOne_122 a0 a1 a2 = ()
-- Data.Nat.Properties.suc-injective
d_suc'45'injective_1500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'45'injective_1500 = erased
-- Data.Nat.Properties.≡ᵇ⇒≡
d_'8801''7495''8658''8801'_1506 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7495''8658''8801'_1506 = erased
-- Data.Nat.Properties.≡⇒≡ᵇ
d_'8801''8658''8801''7495'_1518 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8658''8801''7495'_1518 v0 ~v1 ~v2
  = du_'8801''8658''8801''7495'_1518 v0
du_'8801''8658''8801''7495'_1518 :: Integer -> AgdaAny
du_'8801''8658''8801''7495'_1518 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du_'8801''8658''8801''7495'_1518 (coe v1)
-- Data.Nat.Properties._≟_
d__'8799'__1528 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__1528 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      erased
      (coe
         MAlonzo.Code.Data.Bool.Properties.d_T'63'_2210
         (coe eqInt (coe v0) (coe v1)))
-- Data.Nat.Properties.≡-irrelevant
d_'8801''45'irrelevant_1534 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'irrelevant_1534 = erased
-- Data.Nat.Properties.≟-diag
d_'8799''45'diag_1542 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8799''45'diag_1542 = erased
-- Data.Nat.Properties.≡-isDecEquivalence
d_'8801''45'isDecEquivalence_1544 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_'8801''45'isDecEquivalence_1544
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_1689
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (coe d__'8799'__1528)
-- Data.Nat.Properties.≡-decSetoid
d_'8801''45'decSetoid_1546 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_1546
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1131
      d_'8801''45'isDecEquivalence_1544
-- Data.Nat.Properties.0≢1+n
d_0'8802'1'43'n_1550 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_0'8802'1'43'n_1550 = erased
-- Data.Nat.Properties.1+n≢0
d_1'43'n'8802'0_1554 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_1'43'n'8802'0_1554 = erased
-- Data.Nat.Properties.1+n≢n
d_1'43'n'8802'n_1558 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_1'43'n'8802'n_1558 = erased
-- Data.Nat.Properties.<ᵇ⇒<
d_'60''7495''8658''60'_1566 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''7495''8658''60'_1566 v0 ~v1 ~v2
  = du_'60''7495''8658''60'_1566 v0
du_'60''7495''8658''60'_1566 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''7495''8658''60'_1566 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_'60''7495''8658''60'_1566 (coe v1))
-- Data.Nat.Properties.<⇒<ᵇ
d_'60''8658''60''7495'_1582 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> AgdaAny
d_'60''8658''60''7495'_1582 ~v0 ~v1 v2
  = du_'60''8658''60''7495'_1582 v2
du_'60''8658''60''7495'_1582 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> AgdaAny
du_'60''8658''60''7495'_1582 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
               -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6
               -> coe
                    du_'60''8658''60''7495'_1582
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<ᵇ-reflects-<
d_'60''7495''45'reflects'45''60'_1590 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Reflects_14
d_'60''7495''45'reflects'45''60'_1590 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Reflects.du_fromEquivalence_28
      (coe ltInt (coe v0) (coe v1))
      (\ v2 -> coe du_'60''7495''8658''60'_1566 (coe v0))
-- Data.Nat.Properties.≤ᵇ⇒≤
d_'8804''7495''8658''8804'_1600 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''7495''8658''8804'_1600 v0 ~v1 ~v2
  = du_'8804''7495''8658''8804'_1600 v0
du_'8804''7495''8658''8804'_1600 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''7495''8658''8804'_1600 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du_'60''7495''8658''60'_1566 (coe v1)
-- Data.Nat.Properties.≤⇒≤ᵇ
d_'8804''8658''8804''7495'_1616 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> AgdaAny
d_'8804''8658''8804''7495'_1616 ~v0 ~v1 v2
  = du_'8804''8658''8804''7495'_1616 v2
du_'8804''8658''8804''7495'_1616 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> AgdaAny
du_'8804''8658''8804''7495'_1616 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v3
        -> coe
             du_'60''8658''60''7495'_1582
             (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤ᵇ-reflects-≤
d_'8804''7495''45'reflects'45''8804'_1624 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Reflects_14
d_'8804''7495''45'reflects'45''8804'_1624 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Reflects.du_fromEquivalence_28
      (coe
         MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__10 (coe v0) (coe v1))
      (\ v2 -> coe du_'8804''7495''8658''8804'_1600 (coe v0))
-- Data.Nat.Properties.≤-reflexive
d_'8804''45'reflexive_1630 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'reflexive_1630 v0 ~v1 ~v2
  = du_'8804''45'reflexive_1630 v0
du_'8804''45'reflexive_1630 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'reflexive_1630 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_'8804''45'reflexive_1630 (coe v1))
-- Data.Nat.Properties.≤-refl
d_'8804''45'refl_1634 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'refl_1634 v0 = coe du_'8804''45'reflexive_1630 (coe v0)
-- Data.Nat.Properties.≤-antisym
d_'8804''45'antisym_1636 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_1636 = erased
-- Data.Nat.Properties.≤-trans
d_'8804''45'trans_1642 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'trans_1642 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_1642 v3 v4
du_'8804''45'trans_1642 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'trans_1642 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_'8804''45'trans_1642 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤-total
d_'8804''45'total_1648 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_1648 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  let v4 = d_'8804''45'total_1648 (coe v2) (coe v3) in
                  case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5)
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤-irrelevant
d_'8804''45'irrelevant_1670 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_1670 = erased
-- Data.Nat.Properties._≤?_
d__'8804''63'__1676 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''63'__1676 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (\ v2 -> coe du_'8804''7495''8658''8804'_1600 (coe v0))
      (coe
         MAlonzo.Code.Data.Bool.Properties.d_T'63'_2210
         (coe
            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__10 (coe v0) (coe v1)))
-- Data.Nat.Properties._≥?_
d__'8805''63'__1682 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8805''63'__1682 v0 v1
  = coe d__'8804''63'__1676 (coe v1) (coe v0)
-- Data.Nat.Properties.≤-isPreorder
d_'8804''45'isPreorder_1684 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_1684
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_1630 v0)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_1642 v3 v4)
-- Data.Nat.Properties.≤-isTotalPreorder
d_'8804''45'isTotalPreorder_1686 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_118
d_'8804''45'isTotalPreorder_1686
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_5447
      (coe d_'8804''45'isPreorder_1684) (coe d_'8804''45'total_1648)
-- Data.Nat.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_1688 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8804''45'isPartialOrder_1688
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe d_'8804''45'isPreorder_1684) erased
-- Data.Nat.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_1690 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_'8804''45'isTotalOrder_1690
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_15387
      (coe d_'8804''45'isPartialOrder_1688) (coe d_'8804''45'total_1648)
-- Data.Nat.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_1692 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_'8804''45'isDecTotalOrder_1692
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
      (coe d_'8804''45'isTotalOrder_1690) (coe d__'8799'__1528)
      (coe d__'8804''63'__1676)
-- Data.Nat.Properties.≤-preorder
d_'8804''45'preorder_1694 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_1694
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      d_'8804''45'isPreorder_1684
-- Data.Nat.Properties.≤-totalPreorder
d_'8804''45'totalPreorder_1696 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204
d_'8804''45'totalPreorder_1696
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_3061
      d_'8804''45'isTotalPreorder_1686
-- Data.Nat.Properties.≤-poset
d_'8804''45'poset_1698 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_'8804''45'poset_1698
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      d_'8804''45'isPartialOrder_1688
-- Data.Nat.Properties.≤-totalOrder
d_'8804''45'totalOrder_1700 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
d_'8804''45'totalOrder_1700
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_10811
      d_'8804''45'isTotalOrder_1690
-- Data.Nat.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_1702 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_'8804''45'decTotalOrder_1702
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      d_'8804''45'isDecTotalOrder_1692
-- Data.Nat.Properties.s≤s-injective
d_s'8804's'45'injective_1712 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_s'8804's'45'injective_1712 = erased
-- Data.Nat.Properties.≤-step
d_'8804''45'step_1718 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'step_1718 ~v0 ~v1 v2 = du_'8804''45'step_1718 v2
du_'8804''45'step_1718 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'step_1718 v0 = coe v0
-- Data.Nat.Properties.n≤1+n
d_n'8804'1'43'n_1724 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8804'1'43'n_1724 v0 = coe d_'8804''45'refl_1634 (coe v0)
-- Data.Nat.Properties.1+n≰n
d_1'43'n'8816'n_1728 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_1'43'n'8816'n_1728 = erased
-- Data.Nat.Properties.n≤0⇒n≡0
d_n'8804'0'8658'n'8801'0_1734 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8804'0'8658'n'8801'0_1734 = erased
-- Data.Nat.Properties.<⇒≤
d_'60''8658''8804'_1736 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''8658''8804'_1736 ~v0 v1 v2 = du_'60''8658''8804'_1736 v1 v2
du_'60''8658''8804'_1736 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''8658''8804'_1736 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             du_'8804''45'trans_1642 (coe v4)
             (coe d_'8804''45'refl_1634 (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<⇒≢
d_'60''8658''8802'_1740 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''8658''8802'_1740 = erased
-- Data.Nat.Properties.>⇒≢
d_'62''8658''8802'_1744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'62''8658''8802'_1744 = erased
-- Data.Nat.Properties.≤⇒≯
d_'8804''8658''8815'_1746 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8804''8658''8815'_1746 = erased
-- Data.Nat.Properties.<⇒≱
d_'60''8658''8817'_1752 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''8658''8817'_1752 = erased
-- Data.Nat.Properties.<⇒≯
d_'60''8658''8815'_1758 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''8658''8815'_1758 = erased
-- Data.Nat.Properties.≰⇒≮
d_'8816''8658''8814'_1764 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8816''8658''8814'_1764 = erased
-- Data.Nat.Properties.≰⇒>
d_'8816''8658''62'_1770 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8816''8658''62'_1770 v0 v1 ~v2 = du_'8816''8658''62'_1770 v0 v1
du_'8816''8658''62'_1770 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8816''8658''62'_1770 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_'8816''8658''62'_1770 (coe v2) (coe v3))
-- Data.Nat.Properties.≰⇒≥
d_'8816''8658''8805'_1782 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8816''8658''8805'_1782 v0 v1 ~v2
  = du_'8816''8658''8805'_1782 v0 v1
du_'8816''8658''8805'_1782 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8816''8658''8805'_1782 v0 v1
  = coe
      du_'60''8658''8804'_1736 (coe v0)
      (coe du_'8816''8658''62'_1770 (coe v0) (coe v1))
-- Data.Nat.Properties.≮⇒≥
d_'8814''8658''8805'_1784 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8814''8658''8805'_1784 v0 v1 ~v2
  = du_'8814''8658''8805'_1784 v0 v1
du_'8814''8658''8805'_1784 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8814''8658''8805'_1784 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_'8814''8658''8805'_1784 (coe v3) (coe v2))
-- Data.Nat.Properties.≤∧≢⇒<
d_'8804''8743''8802''8658''60'_1800 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''8743''8802''8658''60'_1800 ~v0 v1 v2 ~v3
  = du_'8804''8743''8802''8658''60'_1800 v1 v2
du_'8804''8743''8802''8658''60'_1800 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''8743''8802''8658''60'_1800 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_'8804''8743''8802''8658''60'_1800 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤∧≮⇒≡
d_'8804''8743''8814''8658''8801'_1818 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8743''8814''8658''8801'_1818 = erased
-- Data.Nat.Properties.≤-<-connex
d_'8804''45''60''45'connex_1824 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45''60''45'connex_1824 v0 v1
  = let v2 = d__'8804''63'__1676 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C_of'696'_22 v5
                      -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                       (coe du_'8816''8658''62'_1770 (coe v0) (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≥->-connex
d_'8805''45''62''45'connex_1846 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8805''45''62''45'connex_1846 v0 v1
  = coe d_'8804''45''60''45'connex_1824 (coe v1) (coe v0)
-- Data.Nat.Properties.<-≤-connex
d_'60''45''8804''45'connex_1848 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'60''45''8804''45'connex_1848
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_flip'45'Connex_788
      (coe d_'8804''45''60''45'connex_1824)
-- Data.Nat.Properties.>-≥-connex
d_'62''45''8805''45'connex_1850 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'62''45''8805''45'connex_1850
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_flip'45'Connex_788
      (coe d_'8805''45''62''45'connex_1846)
-- Data.Nat.Properties.<-irrefl
d_'60''45'irrefl_1852 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''45'irrefl_1852 = erased
-- Data.Nat.Properties.<-asym
d_'60''45'asym_1856 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''45'asym_1856 = erased
-- Data.Nat.Properties.<-trans
d_'60''45'trans_1862 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''45'trans_1862 ~v0 v1 ~v2 v3 v4
  = du_'60''45'trans_1862 v1 v3 v4
du_'60''45'trans_1862 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''45'trans_1862 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe
                       du_'8804''45'trans_1642 (coe v5)
                       (coe
                          du_'8804''45'trans_1642 (coe d_n'8804'1'43'n_1724 (coe v6))
                          (coe v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-transʳ
d_'60''45'trans'691'_1868 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''45'trans'691'_1868 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45'trans'691'_1868 v3 v4
du_'60''45'trans'691'_1868 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''45'trans'691'_1868 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_'8804''45'trans_1642 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-transˡ
d_'60''45'trans'737'_1874 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''45'trans'737'_1874 ~v0 ~v1 ~v2 v3 v4
  = du_'60''45'trans'737'_1874 v3 v4
du_'60''45'trans'737'_1874 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''45'trans'737'_1874 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_'8804''45'trans_1642 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.<-cmp
d_'60''45'cmp_1880 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_'60''45'cmp_1880 v0 v1
  = let v2 = d__'8799'__1528 (coe v0) (coe v1) in
    let v3
          = MAlonzo.Code.Data.Bool.Properties.d_T'63'_2210
              (coe ltInt (coe v0) (coe v1)) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v4 v5
        -> if coe v4
             then case coe v5 of
                    MAlonzo.Code.Relation.Nullary.C_of'696'_22 v6
                      -> coe MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 v6
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v5)
                    (case coe v3 of
                       MAlonzo.Code.Relation.Nullary.C__because__46 v6 v7
                         -> if coe v6
                              then coe
                                     seq (coe v7)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150
                                        (coe du_'60''7495''8658''60'_1566 (coe v0)))
                              else coe
                                     seq (coe v7)
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166
                                        (coe
                                           du_'8804''8743''8802''8658''60'_1800 (coe v0)
                                           (coe du_'8814''8658''8805'_1784 (coe v0) (coe v1))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties._<?_
d__'60''63'__1912 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'60''63'__1912 v0 v1
  = coe
      d__'8804''63'__1676 (coe addInt (coe (1 :: Integer)) (coe v0))
      (coe v1)
-- Data.Nat.Properties._>?_
d__'62''63'__1918 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'62''63'__1918 v0 v1 = coe d__'60''63'__1912 (coe v1) (coe v0)
-- Data.Nat.Properties.<-irrelevant
d_'60''45'irrelevant_1920 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_1920 = erased
-- Data.Nat.Properties.<-resp₂-≡
d_'60''45'resp'8322''45''8801'_1922 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_1922
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Nat.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_1928 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_'60''45'isStrictPartialOrder_1928
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_9921
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_1862 v1 v3 v4)
      d_'60''45'resp'8322''45''8801'_1922
-- Data.Nat.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_1930 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
d_'60''45'isStrictTotalOrder_1930
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_19043
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_1862 v1 v3 v4)
      (coe d_'60''45'cmp_1880)
-- Data.Nat.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_1932 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
d_'60''45'strictPartialOrder_1932
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_7693
      d_'60''45'isStrictPartialOrder_1928
-- Data.Nat.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_1934 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_'60''45'strictTotalOrder_1934
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_14573
      d_'60''45'isStrictTotalOrder_1930
-- Data.Nat.Properties.n≮n
d_n'8814'n_1938 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_n'8814'n_1938 = erased
-- Data.Nat.Properties.0<1+n
d_0'60'1'43'n_1944 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_0'60'1'43'n_1944 ~v0 = du_0'60'1'43'n_1944
du_0'60'1'43'n_1944 :: MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_0'60'1'43'n_1944
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
-- Data.Nat.Properties.n<1+n
d_n'60'1'43'n_1948 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'60'1'43'n_1948 v0
  = coe
      d_'8804''45'refl_1634 (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.n<1⇒n≡0
d_n'60'1'8658'n'8801'0_1954 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'60'1'8658'n'8801'0_1954 = erased
-- Data.Nat.Properties.n≢0⇒n>0
d_n'8802'0'8658'n'62'0_1960 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8802'0'8658'n'62'0_1960 v0 ~v1
  = du_n'8802'0'8658'n'62'0_1960 v0
du_n'8802'0'8658'n'62'0_1960 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_n'8802'0'8658'n'62'0_1960 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
      _ -> coe du_0'60'1'43'n_1944
-- Data.Nat.Properties.m<n⇒0<n
d_m'60'n'8658'0'60'n_1970 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8658'0'60'n_1970 ~v0 ~v1 = du_m'60'n'8658'0'60'n_1970
du_m'60'n'8658'0'60'n_1970 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60'n'8658'0'60'n_1970
  = coe du_'8804''45'trans_1642 (coe du_0'60'1'43'n_1944)
-- Data.Nat.Properties.m<n⇒n≢0
d_m'60'n'8658'n'8802'0_1976 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'60'n'8658'n'8802'0_1976 = erased
-- Data.Nat.Properties.m<n⇒m≤1+n
d_m'60'n'8658'm'8804'1'43'n_1984 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8658'm'8804'1'43'n_1984 ~v0 v1 v2
  = du_m'60'n'8658'm'8804'1'43'n_1984 v1 v2
du_m'60'n'8658'm'8804'1'43'n_1984 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60'n'8658'm'8804'1'43'n_1984 v0 v1
  = coe du_'60''8658''8804'_1736 (coe v0) (coe v1)
-- Data.Nat.Properties.∀[m≤n⇒m≢o]⇒n<o
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_1992 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_1992 v0 v1 ~v2
  = du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_1992 v0 v1
du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_1992 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_1992 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe du_0'60'1'43'n_1944
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe
                       du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_1992 (coe v3)
                       (coe v2))
-- Data.Nat.Properties._.rec
d_rec_2010 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_rec_2010 = erased
-- Data.Nat.Properties.∀[m<n⇒m≢o]⇒n≤o
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_2020 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_2020 v0 v1 ~v2
  = du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_2020 v0 v1
du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_2020 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_2020 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe
                       du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_2020 (coe v2)
                       (coe v3))
-- Data.Nat.Properties._.rec
d_rec_2040 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_rec_2040 = erased
-- Data.Nat.Properties.≤-Reasoning._._IsRelatedTo_
d__IsRelatedTo__2048 a0 a1 = ()
-- Data.Nat.Properties.≤-Reasoning._._∎
d__'8718'_2050 ::
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70
d__'8718'_2050
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
      (coe d_'8804''45'isPreorder_1684)
-- Data.Nat.Properties.≤-Reasoning._._≡⟨⟩_
d__'8801''10216''10217'__2052 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70
d__'8801''10216''10217'__2052 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.IsEquality
d_IsEquality_2054 a0 a1 a2 = ()
-- Data.Nat.Properties.≤-Reasoning._.IsEquality?
d_IsEquality'63'_2056 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_IsEquality'63'_2056 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_142
      v2
-- Data.Nat.Properties.≤-Reasoning._.IsStrict
d_IsStrict_2058 a0 a1 a2 = ()
-- Data.Nat.Properties.≤-Reasoning._.IsStrict?
d_IsStrict'63'_2060 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_IsStrict'63'_2060 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_108
      v2
-- Data.Nat.Properties.≤-Reasoning._.begin_
d_begin__2062 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_begin__2062
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
      (coe d_'8804''45'isPreorder_1684)
      (\ v0 v1 v2 -> coe du_'60''8658''8804'_1736 v1 v2)
-- Data.Nat.Properties.≤-Reasoning._.begin-equality_
d_begin'45'equality__2064 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_begin'45'equality__2064 = erased
-- Data.Nat.Properties.≤-Reasoning._.begin-strict_
d_begin'45'strict__2066 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_begin'45'strict__2066 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin'45'strict__176
      v2
-- Data.Nat.Properties.≤-Reasoning._.extractEquality
d_extractEquality_2070 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_126 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_extractEquality_2070 = erased
-- Data.Nat.Properties.≤-Reasoning._.extractStrict
d_extractStrict_2072 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_92 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_extractStrict_2072 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_118
      v2 v3
-- Data.Nat.Properties.≤-Reasoning._.step-<
d_step'45''60'_2080 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70
d_step'45''60'_2080
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''60'_202
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans_1862 v1 v3 v4)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans'737'_1874 v3 v4)
-- Data.Nat.Properties.≤-Reasoning._.step-≡
d_step'45''8801'_2082 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70
d_step'45''8801'_2082 ~v0 ~v1 ~v2 v3 ~v4
  = du_step'45''8801'_2082 v3
du_step'45''8801'_2082 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70
du_step'45''8801'_2082 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.step-≡˘
d_step'45''8801''728'_2084 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70
d_step'45''8801''728'_2084 ~v0 ~v1 ~v2 v3 ~v4
  = du_step'45''8801''728'_2084 v3
du_step'45''8801''728'_2084 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70
du_step'45''8801''728'_2084 v0 = coe v0
-- Data.Nat.Properties.≤-Reasoning._.step-≤
d_step'45''8804'_2086 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__70
d_step'45''8804'_2086
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
      (coe d_'8804''45'isPreorder_1684)
      (\ v0 v1 v2 v3 v4 -> coe du_'60''45'trans'691'_1868 v3 v4)
-- Data.Nat.Properties.+-suc
d_'43''45'suc_2110 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'suc_2110 = erased
-- Data.Nat.Properties.+-assoc
d_'43''45'assoc_2118 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'assoc_2118 = erased
-- Data.Nat.Properties.+-identityˡ
d_'43''45'identity'737'_2126 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'737'_2126 = erased
-- Data.Nat.Properties.+-identityʳ
d_'43''45'identity'691'_2128 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'identity'691'_2128 = erased
-- Data.Nat.Properties.+-identity
d_'43''45'identity_2132 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'identity_2132
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.+-comm
d_'43''45'comm_2134 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'comm_2134 = erased
-- Data.Nat.Properties.+-cancelˡ-≡
d_'43''45'cancel'737''45''8801'_2142 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'737''45''8801'_2142 = erased
-- Data.Nat.Properties.+-cancelʳ-≡
d_'43''45'cancel'691''45''8801'_2150 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'cancel'691''45''8801'_2150 = erased
-- Data.Nat.Properties.+-cancel-≡
d_'43''45'cancel'45''8801'_2152 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''8801'_2152
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.+-isMagma
d_'43''45'isMagma_2154 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'43''45'isMagma_2154
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_447
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased
-- Data.Nat.Properties.+-isSemigroup
d_'43''45'isSemigroup_2156 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'43''45'isSemigroup_2156
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_3427
      (coe d_'43''45'isMagma_2154) erased
-- Data.Nat.Properties.+-isCommutativeSemigroup
d_'43''45'isCommutativeSemigroup_2158 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'43''45'isCommutativeSemigroup_2158
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_4999
      (coe d_'43''45'isSemigroup_2156) erased
-- Data.Nat.Properties.+-0-isMonoid
d_'43''45'0'45'isMonoid_2160 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'43''45'0'45'isMonoid_2160
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
      (coe d_'43''45'isSemigroup_2156) (coe d_'43''45'identity_2132)
-- Data.Nat.Properties.+-0-isCommutativeMonoid
d_'43''45'0'45'isCommutativeMonoid_2162 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'43''45'0'45'isCommutativeMonoid_2162
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe d_'43''45'0'45'isMonoid_2160) erased
-- Data.Nat.Properties.+-rawMagma
d_'43''45'rawMagma_2164 ::
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8
d_'43''45'rawMagma_2164
  = coe
      MAlonzo.Code.Algebra.Bundles.C_RawMagma'46'constructor_47 addInt
-- Data.Nat.Properties.+-0-rawMonoid
d_'43''45'0'45'rawMonoid_2166 ::
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474
d_'43''45'0'45'rawMonoid_2166
  = coe
      MAlonzo.Code.Algebra.Bundles.C_RawMonoid'46'constructor_7223 addInt
      (0 :: Integer)
-- Data.Nat.Properties.+-magma
d_'43''45'magma_2168 :: MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'43''45'magma_2168
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_447 addInt
      d_'43''45'isMagma_2154
-- Data.Nat.Properties.+-semigroup
d_'43''45'semigroup_2170 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'43''45'semigroup_2170
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_3121 addInt
      d_'43''45'isSemigroup_2156
-- Data.Nat.Properties.+-commutativeSemigroup
d_'43''45'commutativeSemigroup_2172 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_'43''45'commutativeSemigroup_2172
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_5063
      addInt d_'43''45'isCommutativeSemigroup_2158
-- Data.Nat.Properties.+-0-monoid
d_'43''45'0'45'monoid_2174 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'43''45'0'45'monoid_2174
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_7649 addInt
      (0 :: Integer) d_'43''45'0'45'isMonoid_2160
-- Data.Nat.Properties.+-0-commutativeMonoid
d_'43''45'0'45'commutativeMonoid_2176 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'43''45'0'45'commutativeMonoid_2176
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_8947
      addInt (0 :: Integer) d_'43''45'0'45'isCommutativeMonoid_2162
-- Data.Nat.Properties.∸-magma
d_'8760''45'magma_2178 :: MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8760''45'magma_2178
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Algebra.du_magma_20
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22)
-- Data.Nat.Properties.m≢1+m+n
d_m'8802'1'43'm'43'n_2184 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'8802'1'43'm'43'n_2184 = erased
-- Data.Nat.Properties.m≢1+n+m
d_m'8802'1'43'n'43'm_2194 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'8802'1'43'n'43'm_2194 = erased
-- Data.Nat.Properties.m+1+n≢m
d_m'43'1'43'n'8802'm_2204 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'43'1'43'n'8802'm_2204 = erased
-- Data.Nat.Properties.m+1+n≢0
d_m'43'1'43'n'8802'0_2212 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'43'1'43'n'8802'0_2212 = erased
-- Data.Nat.Properties.m+n≡0⇒m≡0
d_m'43'n'8801'0'8658'm'8801'0_2226 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8801'0'8658'm'8801'0_2226 = erased
-- Data.Nat.Properties.m+n≡0⇒n≡0
d_m'43'n'8801'0'8658'n'8801'0_2234 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8801'0'8658'n'8801'0_2234 = erased
-- Data.Nat.Properties.+-cancelˡ-≤
d_'43''45'cancel'737''45''8804'_2242 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'cancel'737''45''8804'_2242 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'737''45''8804'_2242 v0 v3
du_'43''45'cancel'737''45''8804'_2242 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'cancel'737''45''8804'_2242 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
               -> coe du_'43''45'cancel'737''45''8804'_2242 (coe v2) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-cancelʳ-≤
d_'43''45'cancel'691''45''8804'_2250 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'cancel'691''45''8804'_2250 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'691''45''8804'_2250 v0 v3
du_'43''45'cancel'691''45''8804'_2250 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'cancel'691''45''8804'_2250 v0 v1
  = coe du_'43''45'cancel'737''45''8804'_2242 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancel-≤
d_'43''45'cancel'45''8804'_2260 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''8804'_2260
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'737''45''8804'_2242 v0 v3)
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'691''45''8804'_2250 v0 v3)
-- Data.Nat.Properties.+-cancelˡ-<
d_'43''45'cancel'737''45''60'_2262 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'cancel'737''45''60'_2262 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'737''45''60'_2262 v0 v3
du_'43''45'cancel'737''45''60'_2262 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'cancel'737''45''60'_2262 v0 v1
  = coe du_'43''45'cancel'737''45''8804'_2242 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancelʳ-<
d_'43''45'cancel'691''45''60'_2272 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'cancel'691''45''60'_2272 v0 ~v1 ~v2 v3
  = du_'43''45'cancel'691''45''60'_2272 v0 v3
du_'43''45'cancel'691''45''60'_2272 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'cancel'691''45''60'_2272 v0 v1
  = coe du_'43''45'cancel'691''45''8804'_2250 (coe v0) (coe v1)
-- Data.Nat.Properties.+-cancel-<
d_'43''45'cancel'45''60'_2280 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel'45''60'_2280
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'737''45''60'_2262 v0 v3)
      (\ v0 v1 v2 v3 -> coe du_'43''45'cancel'691''45''60'_2272 v0 v3)
-- Data.Nat.Properties.≤-stepsˡ
d_'8804''45'steps'737'_2288 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'steps'737'_2288 ~v0 ~v1 ~v2 v3
  = du_'8804''45'steps'737'_2288 v3
du_'8804''45'steps'737'_2288 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'steps'737'_2288 v0 = coe v0
-- Data.Nat.Properties.≤-stepsʳ
d_'8804''45'steps'691'_2302 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'steps'691'_2302 ~v0 ~v1 ~v2 v3
  = du_'8804''45'steps'691'_2302 v3
du_'8804''45'steps'691'_2302 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'steps'691'_2302 v0 = coe v0
-- Data.Nat.Properties.m≤m+n
d_m'8804'm'43'n_2316 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8804'm'43'n_2316 v0 ~v1 = du_m'8804'm'43'n_2316 v0
du_m'8804'm'43'n_2316 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'8804'm'43'n_2316 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_m'8804'm'43'n_2316 (coe v1))
-- Data.Nat.Properties.m≤n+m
d_m'8804'n'43'm_2328 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8804'n'43'm_2328 v0 ~v1 = du_m'8804'n'43'm_2328 v0
du_m'8804'n'43'm_2328 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'8804'n'43'm_2328 v0 = coe du_m'8804'm'43'n_2316 (coe v0)
-- Data.Nat.Properties.m≤n⇒m<n∨m≡n
d_m'8804'n'8658'm'60'n'8744'm'8801'n_2340 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'8804'n'8658'm'60'n'8744'm'8801'n_2340 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
             _ -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe du_0'60'1'43'n_1944)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           let v4 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v7
               -> let v8
                        = d_m'8804'n'8658'm'60'n'8744'm'8801'n_2340
                            (coe v3) (coe v4) (coe v7) in
                  case coe v8 of
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9)
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                      -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m+n≤o⇒m≤o
d_m'43'n'8804'o'8658'm'8804'o_2376 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'43'n'8804'o'8658'm'8804'o_2376 v0 ~v1 ~v2 v3
  = du_m'43'n'8804'o'8658'm'8804'o_2376 v0 v3
du_m'43'n'8804'o'8658'm'8804'o_2376 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'43'n'8804'o'8658'm'8804'o_2376 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_m'43'n'8804'o'8658'm'8804'o_2376 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m+n≤o⇒n≤o
d_m'43'n'8804'o'8658'n'8804'o_2390 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'43'n'8804'o'8658'n'8804'o_2390 v0 ~v1 v2 v3
  = du_m'43'n'8804'o'8658'n'8804'o_2390 v0 v2 v3
du_m'43'n'8804'o'8658'n'8804'o_2390 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'43'n'8804'o'8658'n'8804'o_2390 v0 v1 v2
  = case coe v0 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             du_m'43'n'8804'o'8658'n'8804'o_2390 (coe v3) (coe v1)
             (coe du_'60''8658''8804'_1736 (coe v1) (coe v2))
-- Data.Nat.Properties.+-mono-≤
d_'43''45'mono'45''8804'_2398 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'mono'45''8804'_2398 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'43''45'mono'45''8804'_2398 v3 v4 v5
du_'43''45'mono'45''8804'_2398 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'mono'45''8804'_2398 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> coe
             du_'8804''45'trans_1642 (coe v2)
             (coe du_m'8804'n'43'm_2328 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_'43''45'mono'45''8804'_2398 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-monoˡ-≤
d_'43''45'mono'737''45''8804'_2412 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'mono'737''45''8804'_2412 v0 ~v1 ~v2 v3
  = du_'43''45'mono'737''45''8804'_2412 v0 v3
du_'43''45'mono'737''45''8804'_2412 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'mono'737''45''8804'_2412 v0 v1
  = coe
      du_'43''45'mono'45''8804'_2398 (coe v0) (coe v1)
      (coe d_'8804''45'refl_1634 (coe v0))
-- Data.Nat.Properties.+-monoʳ-≤
d_'43''45'mono'691''45''8804'_2422 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'mono'691''45''8804'_2422 v0 ~v1 v2 v3
  = du_'43''45'mono'691''45''8804'_2422 v0 v2 v3
du_'43''45'mono'691''45''8804'_2422 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'mono'691''45''8804'_2422 v0 v1 v2
  = coe
      du_'43''45'mono'45''8804'_2398 (coe v1)
      (coe d_'8804''45'refl_1634 (coe v0)) (coe v2)
-- Data.Nat.Properties.+-mono-<-≤
d_'43''45'mono'45''60''45''8804'_2428 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'mono'45''60''45''8804'_2428 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'43''45'mono'45''60''45''8804'_2428 v4 v5
du_'43''45'mono'45''60''45''8804'_2428 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'mono'45''60''45''8804'_2428 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
               -> coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v1
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v7
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe
                       du_'43''45'mono'45''60''45''8804'_2428
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v7) (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-mono-≤-<
d_'43''45'mono'45''8804''45''60'_2438 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'mono'45''8804''45''60'_2438 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'43''45'mono'45''8804''45''60'_2438 v3 v4 v5
du_'43''45'mono'45''8804''45''60'_2438 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'mono'45''8804''45''60'_2438 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> coe
             du_'8804''45'trans_1642 (coe v2)
             (coe du_m'8804'n'43'm_2328 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe
                du_'43''45'mono'45''8804''45''60'_2438 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-mono-<
d_'43''45'mono'45''60'_2448 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'mono'45''60'_2448 ~v0 v1 ~v2 v3 v4
  = du_'43''45'mono'45''60'_2448 v1 v3 v4
du_'43''45'mono'45''60'_2448 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'mono'45''60'_2448 v0 v1 v2
  = coe
      du_'43''45'mono'45''8804''45''60'_2438 (coe v1)
      (coe du_'60''8658''8804'_1736 (coe v0) (coe v2))
-- Data.Nat.Properties.+-monoˡ-<
d_'43''45'mono'737''45''60'_2456 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'mono'737''45''60'_2456 v0 ~v1 ~v2
  = du_'43''45'mono'737''45''60'_2456 v0
du_'43''45'mono'737''45''60'_2456 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'mono'737''45''60'_2456 v0
  = coe du_'43''45'mono'737''45''8804'_2412 (coe v0)
-- Data.Nat.Properties.+-monoʳ-<
d_'43''45'mono'691''45''60'_2464 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'43''45'mono'691''45''60'_2464 v0 ~v1 ~v2 v3
  = du_'43''45'mono'691''45''60'_2464 v0 v3
du_'43''45'mono'691''45''60'_2464 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'43''45'mono'691''45''60'_2464 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_'43''45'mono'691''45''60'_2464 (coe v2) (coe v1))
-- Data.Nat.Properties.m+1+n≰m
d_m'43'1'43'n'8816'm_2476 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'43'1'43'n'8816'm_2476 = erased
-- Data.Nat.Properties.m<m+n
d_m'60'm'43'n_2486 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'm'43'n_2486 v0 ~v1 v2 = du_m'60'm'43'n_2486 v0 v2
du_m'60'm'43'n_2486 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60'm'43'n_2486 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_m'60'm'43'n_2486 (coe v2) (coe v1))
-- Data.Nat.Properties.m<n+m
d_m'60'n'43'm_2498 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'43'm_2498 v0 ~v1 v2 = du_m'60'n'43'm_2498 v0 v2
du_m'60'n'43'm_2498 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60'n'43'm_2498 v0 v1
  = coe du_m'60'm'43'n_2486 (coe v0) (coe v1)
-- Data.Nat.Properties.m+n≮n
d_m'43'n'8814'n_2514 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'43'n'8814'n_2514 = erased
-- Data.Nat.Properties.m+n≮m
d_m'43'n'8814'm_2528 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'43'n'8814'm_2528 = erased
-- Data.Nat.Properties.*-suc
d_'42''45'suc_2540 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'suc_2540 = erased
-- Data.Nat.Properties.*-identityˡ
d_'42''45'identity'737'_2552 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'737'_2552 = erased
-- Data.Nat.Properties.*-identityʳ
d_'42''45'identity'691'_2556 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'identity'691'_2556 = erased
-- Data.Nat.Properties.*-identity
d_'42''45'identity_2560 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2560
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-zeroˡ
d_'42''45'zero'737'_2562 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'737'_2562 = erased
-- Data.Nat.Properties.*-zeroʳ
d_'42''45'zero'691'_2564 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'zero'691'_2564 = erased
-- Data.Nat.Properties.*-zero
d_'42''45'zero_2568 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'zero_2568
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-comm
d_'42''45'comm_2570 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'comm_2570 = erased
-- Data.Nat.Properties.*-distribʳ-+
d_'42''45'distrib'691''45''43'_2580 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''43'_2580 = erased
-- Data.Nat.Properties.*-distribˡ-+
d_'42''45'distrib'737''45''43'_2594 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''43'_2594 = erased
-- Data.Nat.Properties.*-distrib-+
d_'42''45'distrib'45''43'_2596 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''43'_2596
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.*-assoc
d_'42''45'assoc_2598 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'assoc_2598 = erased
-- Data.Nat.Properties.*-isMagma
d_'42''45'isMagma_2612 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'42''45'isMagma_2612
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_447
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased
-- Data.Nat.Properties.*-isSemigroup
d_'42''45'isSemigroup_2614 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'42''45'isSemigroup_2614
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_3427
      (coe d_'42''45'isMagma_2612) erased
-- Data.Nat.Properties.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_2616 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'42''45'isCommutativeSemigroup_2616
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemigroup'46'constructor_4999
      (coe d_'42''45'isSemigroup_2614) erased
-- Data.Nat.Properties.*-1-isMonoid
d_'42''45'1'45'isMonoid_2618 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'42''45'1'45'isMonoid_2618
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
      (coe d_'42''45'isSemigroup_2614) (coe d_'42''45'identity_2560)
-- Data.Nat.Properties.*-1-isCommutativeMonoid
d_'42''45'1'45'isCommutativeMonoid_2620 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'42''45'1'45'isCommutativeMonoid_2620
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe d_'42''45'1'45'isMonoid_2618) erased
-- Data.Nat.Properties.+-*-isSemiring
d_'43''45''42''45'isSemiring_2622 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_'43''45''42''45'isSemiring_2622
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_32891
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677
         (coe d_'43''45'0'45'isCommutativeMonoid_2162)
         (coe d_'42''45'1'45'isMonoid_2618)
         (coe d_'42''45'distrib'45''43'_2596))
      (coe d_'42''45'zero_2568)
-- Data.Nat.Properties.+-*-isCommutativeSemiring
d_'43''45''42''45'isCommutativeSemiring_2624 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_'43''45''42''45'isCommutativeSemiring_2624
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_36165
      (coe d_'43''45''42''45'isSemiring_2622) erased
-- Data.Nat.Properties.*-rawMagma
d_'42''45'rawMagma_2626 ::
  MAlonzo.Code.Algebra.Bundles.T_RawMagma_8
d_'42''45'rawMagma_2626
  = coe
      MAlonzo.Code.Algebra.Bundles.C_RawMagma'46'constructor_47 mulInt
-- Data.Nat.Properties.*-1-rawMonoid
d_'42''45'1'45'rawMonoid_2628 ::
  MAlonzo.Code.Algebra.Bundles.T_RawMonoid_474
d_'42''45'1'45'rawMonoid_2628
  = coe
      MAlonzo.Code.Algebra.Bundles.C_RawMonoid'46'constructor_7223 mulInt
      (1 :: Integer)
-- Data.Nat.Properties.*-magma
d_'42''45'magma_2630 :: MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'42''45'magma_2630
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_447 mulInt
      d_'42''45'isMagma_2612
-- Data.Nat.Properties.*-semigroup
d_'42''45'semigroup_2632 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'42''45'semigroup_2632
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_3121 mulInt
      d_'42''45'isSemigroup_2614
-- Data.Nat.Properties.*-commutativeSemigroup
d_'42''45'commutativeSemigroup_2634 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_'42''45'commutativeSemigroup_2634
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemigroup'46'constructor_5063
      mulInt d_'42''45'isCommutativeSemigroup_2616
-- Data.Nat.Properties.*-1-monoid
d_'42''45'1'45'monoid_2636 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'42''45'1'45'monoid_2636
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_7649 mulInt
      (1 :: Integer) d_'42''45'1'45'isMonoid_2618
-- Data.Nat.Properties.*-1-commutativeMonoid
d_'42''45'1'45'commutativeMonoid_2638 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'42''45'1'45'commutativeMonoid_2638
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_8947
      mulInt (1 :: Integer) d_'42''45'1'45'isCommutativeMonoid_2620
-- Data.Nat.Properties.+-*-semiring
d_'43''45''42''45'semiring_2640 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
d_'43''45''42''45'semiring_2640
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semiring'46'constructor_29415 addInt
      mulInt (0 :: Integer) (1 :: Integer)
      d_'43''45''42''45'isSemiring_2622
-- Data.Nat.Properties.+-*-commutativeSemiring
d_'43''45''42''45'commutativeSemiring_2642 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_'43''45''42''45'commutativeSemiring_2642
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_32013
      addInt mulInt (0 :: Integer) (1 :: Integer)
      d_'43''45''42''45'isCommutativeSemiring_2624
-- Data.Nat.Properties.*-cancelʳ-≡
d_'42''45'cancel'691''45''8801'_2650 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'691''45''8801'_2650 = erased
-- Data.Nat.Properties.*-cancelˡ-≡
d_'42''45'cancel'737''45''8801'_2668 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'cancel'737''45''8801'_2668 = erased
-- Data.Nat.Properties.m*n≡0⇒m≡0∨n≡0
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_2682 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_2682 v0 ~v1 ~v2
  = du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_2682 v0
du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_2682 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_2682 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Properties.m*n≡1⇒m≡1
d_m'42'n'8801'1'8658'm'8801'1_2696 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'1'8658'm'8801'1_2696 = erased
-- Data.Nat.Properties.m*n≡1⇒n≡1
d_m'42'n'8801'1'8658'n'8801'1_2710 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8801'1'8658'n'8801'1_2710 = erased
-- Data.Nat.Properties.[m*n]*[o*p]≡[m*o]*[n*p]
d_'91'm'42'n'93''42''91'o'42'p'93''8801''91'm'42'o'93''42''91'n'42'p'93'_2726 ::
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'42'n'93''42''91'o'42'p'93''8801''91'm'42'o'93''42''91'n'42'p'93'_2726
  = erased
-- Data.Nat.Properties.*-cancelʳ-≤
d_'42''45'cancel'691''45''8804'_2792 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'cancel'691''45''8804'_2792 v0 ~v1 ~v2 ~v3
  = du_'42''45'cancel'691''45''8804'_2792 v0
du_'42''45'cancel'691''45''8804'_2792 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'42''45'cancel'691''45''8804'_2792 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_'42''45'cancel'691''45''8804'_2792 (coe v1))
-- Data.Nat.Properties.*-cancelˡ-≤
d_'42''45'cancel'737''45''8804'_2808 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'cancel'737''45''8804'_2808 v0 ~v1 ~v2
  = du_'42''45'cancel'737''45''8804'_2808 v0
du_'42''45'cancel'737''45''8804'_2808 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'42''45'cancel'737''45''8804'_2808 v0 v1
  = coe du_'42''45'cancel'691''45''8804'_2792 (coe v0)
-- Data.Nat.Properties.*-mono-≤
d_'42''45'mono'45''8804'_2824 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'mono'45''8804'_2824 ~v0 v1 ~v2 v3 v4 v5
  = du_'42''45'mono'45''8804'_2824 v1 v3 v4 v5
du_'42''45'mono'45''8804'_2824 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'42''45'mono'45''8804'_2824 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             du_'43''45'mono'45''8804'_2398 (coe mulInt (coe v7) (coe v1))
             (coe v3)
             (coe
                du_'42''45'mono'45''8804'_2824 (coe v7) (coe v1) (coe v6) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoˡ-≤
d_'42''45'mono'737''45''8804'_2834 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'mono'737''45''8804'_2834 v0 ~v1 v2 v3
  = du_'42''45'mono'737''45''8804'_2834 v0 v2 v3
du_'42''45'mono'737''45''8804'_2834 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'42''45'mono'737''45''8804'_2834 v0 v1 v2
  = coe
      du_'42''45'mono'45''8804'_2824 (coe v1) (coe v0) (coe v2)
      (coe d_'8804''45'refl_1634 (coe v0))
-- Data.Nat.Properties.*-monoʳ-≤
d_'42''45'mono'691''45''8804'_2844 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'mono'691''45''8804'_2844 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''8804'_2844 v0 v2 v3
du_'42''45'mono'691''45''8804'_2844 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'42''45'mono'691''45''8804'_2844 v0 v1 v2
  = coe
      du_'42''45'mono'45''8804'_2824 (coe v0) (coe v1)
      (coe d_'8804''45'refl_1634 (coe v0)) (coe v2)
-- Data.Nat.Properties.*-mono-<
d_'42''45'mono'45''60'_2850 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'mono'45''60'_2850 ~v0 v1 ~v2 v3 v4 v5
  = du_'42''45'mono'45''60'_2850 v1 v3 v4 v5
du_'42''45'mono'45''60'_2850 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'42''45'mono'45''60'_2850 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
               -> coe
                    seq (coe v3)
                    (coe
                       MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                       (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v12
                      -> coe
                           du_'43''45'mono'45''60'_2448 v1
                           (mulInt (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1))
                           (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v12)
                           (coe
                              du_'42''45'mono'45''60'_2850
                              (coe subInt (coe v0) (coe (1 :: Integer))) (coe v1)
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9)
                              (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoˡ-<
d_'42''45'mono'737''45''60'_2862 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'mono'737''45''60'_2862 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9
               -> let v10 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    du_'43''45'mono'45''8804''45''60'_2438
                    (coe
                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                       (\ v11 v12 -> v12)
                       (\ v11 ->
                          mulInt (coe v11) (coe addInt (coe (1 :: Integer)) (coe v0)))
                       v10 (subInt (coe v2) (coe (1 :: Integer))))
                    (coe
                       d_'8804''45'refl_1634 (coe addInt (coe (1 :: Integer)) (coe v0)))
                    (coe
                       d_'42''45'mono'737''45''60'_2862 (coe v0) (coe v10)
                       (coe subInt (coe v2) (coe (1 :: Integer)))
                       (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-monoʳ-<
d_'42''45'mono'691''45''60'_2874 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'mono'691''45''60'_2874 v0 ~v1 v2 v3
  = du_'42''45'mono'691''45''60'_2874 v0 v2 v3
du_'42''45'mono'691''45''60'_2874 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'42''45'mono'691''45''60'_2874 v0 v1 v2
  = case coe v0 of
      0 -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
               -> coe
                    du_'43''45'mono'45''8804'_2398 (coe (0 :: Integer))
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5)
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6
               -> coe
                    du_'43''45'mono'45''8804'_2398 (coe mulInt (coe v0) (coe v1))
                    (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6)
                    (coe
                       du_'60''8658''8804'_1736 (coe mulInt (coe v0) (coe v1))
                       (coe
                          du_'42''45'mono'691''45''60'_2874 (coe v3) (coe v1)
                          (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m≤m*n
d_m'8804'm'42'n_2886 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8804'm'42'n_2886 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
      (coe d_'8804''45'isPreorder_1684)
      (\ v3 v4 v5 -> coe du_'60''8658''8804'_1736 v4 v5) (coe v0)
      (coe mulInt (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
         (coe d_'8804''45'isPreorder_1684)
         (\ v3 v4 v5 v6 v7 -> coe du_'60''45'trans'691'_1868 v6 v7)
         (coe mulInt (coe v0) (coe (1 :: Integer)))
         (coe mulInt (coe v0) (coe v1)) (coe mulInt (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
            (coe d_'8804''45'isPreorder_1684) (coe mulInt (coe v0) (coe v1)))
         (coe
            du_'42''45'mono'691''45''8804'_2844 (coe v0) (coe v1) (coe v2)))
-- Data.Nat.Properties.m≤n*m
d_m'8804'n'42'm_2898 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8804'n'42'm_2898 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
      (coe d_'8804''45'isPreorder_1684)
      (\ v3 v4 v5 -> coe du_'60''8658''8804'_1736 v4 v5) (coe v0)
      (coe mulInt (coe v1) (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
         (coe d_'8804''45'isPreorder_1684)
         (\ v3 v4 v5 v6 v7 -> coe du_'60''45'trans'691'_1868 v6 v7) (coe v0)
         (coe mulInt (coe v0) (coe v1)) (coe mulInt (coe v1) (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
            (coe d_'8804''45'isPreorder_1684) (coe mulInt (coe v1) (coe v0)))
         (coe d_m'8804'm'42'n_2886 (coe v0) (coe v1) (coe v2)))
-- Data.Nat.Properties.m<m*n
d_m'60'm'42'n_2910 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'm'42'n_2910 v0 v1 v2 v3
  = let v4 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      seq (coe v2)
      (case coe v3 of
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v7
           -> coe
                seq (coe v7)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin'45'strict__176
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''60'_202
                      (\ v8 v9 v10 v11 v12 -> coe du_'60''45'trans_1862 v9 v11 v12)
                      (coe
                         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                      (\ v8 v9 v10 v11 v12 -> coe du_'60''45'trans'737'_1874 v11 v12)
                      (coe v0) (coe addInt (coe v1) (coe v4))
                      (coe mulInt (coe v0) (coe v1))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
                         (coe d_'8804''45'isPreorder_1684)
                         (\ v8 v9 v10 v11 v12 -> coe du_'60''45'trans'691'_1868 v11 v12)
                         (coe addInt (coe v1) (coe v4))
                         (coe addInt (coe v1) (coe mulInt (coe v4) (coe v1)))
                         (coe mulInt (coe v0) (coe v1))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
                            (coe d_'8804''45'isPreorder_1684) (coe mulInt (coe v0) (coe v1)))
                         (coe
                            du_'43''45'mono'691''45''8804'_2422 (coe v1)
                            (coe mulInt (coe v4) (coe v1))
                            (coe
                               d_m'8804'm'42'n_2886 (coe v4) (coe v1) (coe du_0'60'1'43'n_1944))))
                      (coe
                         MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                         (coe
                            MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                            (coe du_m'8804'n'43'm_2328 (coe v4))))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.Properties.*-cancelʳ-<
d_'42''45'cancel'691''45''60'_2920 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'cancel'691''45''60'_2920 v0 v1 v2 ~v3
  = du_'42''45'cancel'691''45''60'_2920 v0 v1 v2
du_'42''45'cancel'691''45''60'_2920 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'42''45'cancel'691''45''60'_2920 v0 v1 v2
  = let v3
          = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
            let v4 = subInt (coe v2) (coe (1 :: Integer)) in
            coe
              MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
              (coe
                 du_'42''45'cancel'691''45''60'_2920 (coe v0) (coe v3) (coe v4)) in
    coe
      seq (coe v0)
      (case coe v1 of
         0 -> case coe v2 of
                _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                    coe du_0'60'1'43'n_1944
                _ -> coe v3
         _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
              case coe v2 of
                _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                    let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                    coe
                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                      (coe
                         du_'42''45'cancel'691''45''60'_2920 (coe v0) (coe v4) (coe v5))
                _ -> coe v3)
-- Data.Nat.Properties.*-cancelˡ-<
d_'42''45'cancel'737''45''60'_2936 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'42''45'cancel'737''45''60'_2936 v0 v1 v2 v3
  = coe
      du_'42''45'cancel'691''45''60'_2920 (coe v0) (coe v1) (coe v2)
-- Data.Nat.Properties.*-cancel-<
d_'42''45'cancel'45''60'_2952 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'cancel'45''60'_2952
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_'42''45'cancel'737''45''60'_2936)
      (\ v0 v1 v2 v3 -> coe du_'42''45'cancel'691''45''60'_2920 v0 v1 v2)
-- Data.Nat.Properties.^-identityʳ
d_'94''45'identity'691'_2954 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'identity'691'_2954 = erased
-- Data.Nat.Properties.^-zeroˡ
d_'94''45'zero'737'_2958 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'zero'737'_2958 = erased
-- Data.Nat.Properties.^-distribˡ-+-*
d_'94''45'distrib'737''45''43''45''42'_2968 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45'distrib'737''45''43''45''42'_2968 = erased
-- Data.Nat.Properties.^-semigroup-morphism
d_'94''45'semigroup'45'morphism_2986 ::
  Integer -> MAlonzo.Code.Algebra.Morphism.T_IsSemigroupMorphism_148
d_'94''45'semigroup'45'morphism_2986 ~v0
  = du_'94''45'semigroup'45'morphism_2986
du_'94''45'semigroup'45'morphism_2986 ::
  MAlonzo.Code.Algebra.Morphism.T_IsSemigroupMorphism_148
du_'94''45'semigroup'45'morphism_2986
  = coe
      MAlonzo.Code.Algebra.Morphism.C_IsSemigroupMorphism'46'constructor_771
      erased erased
-- Data.Nat.Properties.^-monoid-morphism
d_'94''45'monoid'45'morphism_2994 ::
  Integer -> MAlonzo.Code.Algebra.Morphism.T_IsMonoidMorphism_298
d_'94''45'monoid'45'morphism_2994 ~v0
  = du_'94''45'monoid'45'morphism_2994
du_'94''45'monoid'45'morphism_2994 ::
  MAlonzo.Code.Algebra.Morphism.T_IsMonoidMorphism_298
du_'94''45'monoid'45'morphism_2994
  = coe
      MAlonzo.Code.Algebra.Morphism.C_IsMonoidMorphism'46'constructor_1593
      (coe du_'94''45'semigroup'45'morphism_2986) erased
-- Data.Nat.Properties.^-*-assoc
d_'94''45''42''45'assoc_3002 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'94''45''42''45'assoc_3002 = erased
-- Data.Nat.Properties.m^n≡0⇒m≡0
d_m'94'n'8801'0'8658'm'8801'0_3024 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'94'n'8801'0'8658'm'8801'0_3024 = erased
-- Data.Nat.Properties.m^n≡1⇒n≡0∨m≡1
d_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_3036 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_3036 ~v0 v1 ~v2
  = du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_3036 v1
du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_3036 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_3036 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Nat.Properties.m≤n⇒m⊔n≡n
d_m'8804'n'8658'm'8852'n'8801'n_3050 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8852'n'8801'n_3050 = erased
-- Data.Nat.Properties.m≥n⇒m⊔n≡m
d_m'8805'n'8658'm'8852'n'8801'm_3060 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8852'n'8801'm_3060 = erased
-- Data.Nat.Properties.m≤n⇒m⊓n≡m
d_m'8804'n'8658'm'8851'n'8801'm_3074 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8851'n'8801'm_3074 = erased
-- Data.Nat.Properties.m≥n⇒m⊓n≡n
d_m'8805'n'8658'm'8851'n'8801'n_3084 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8805'n'8658'm'8851'n'8801'n_3084 = erased
-- Data.Nat.Properties.⊓-operator
d_'8851''45'operator_3094 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MinOperator_84
d_'8851''45'operator_3094
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MinOperator'46'constructor_719
      (coe MAlonzo.Code.Data.Nat.Base.d__'8851'__116) erased erased
-- Data.Nat.Properties.⊔-operator
d_'8852''45'operator_3096 ::
  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.T_MaxOperator_114
d_'8852''45'operator_3096
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.C_MaxOperator'46'constructor_1087
      (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__106) erased erased
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_3108 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8804'x_3108
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_3110 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8804'y'8658'x'8851'z'8804'y_3110
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_1982
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_3112 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8804'y'8658'z'8851'x'8804'y_3112
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_1994
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒x⊓z≤y
d_x'8804'y'8658'x'8851'z'8804'y_3114 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8804'y'8658'x'8851'z'8804'y_3114
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_1982
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⇒z⊓x≤y
d_x'8804'y'8658'z'8851'x'8804'y_3116 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8804'y'8658'z'8851'x'8804'y_3116
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_1994
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_3118 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8804'y'8851'z'8658'x'8804'y_3118
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_2006
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_3120 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8804'y'8851'z'8658'x'8804'z_3120
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_2020
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_3122 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8804'y_3122
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_3124 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8776'x'8658'x'8804'y_3124
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_3126 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8776'y'8658'y'8804'x_3126
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x
d_x'8851'y'8804'x_3128 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8804'x_3128
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤x⊔y
d_x'8851'y'8804'x'8852'y_3130 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8804'x'8852'y_3130
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_x'8851'y'8804'x'8852'y_2072
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≤y
d_x'8851'y'8804'y_3132 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8804'y_3132
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈x⇒x≤y
d_x'8851'y'8776'x'8658'x'8804'y_3134 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8776'x'8658'x'8804'y_3134
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.x⊓y≈y⇒y≤x
d_x'8851'y'8776'y'8658'y'8804'x_3136 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8851'y'8776'y'8658'y'8804'x_3136
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤y
d_x'8804'y'8851'z'8658'x'8804'y_3138 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8804'y'8851'z'8658'x'8804'y_3138
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_2006
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.x≤y⊓z⇒x≤z
d_x'8804'y'8851'z'8658'x'8804'z_3140 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_x'8804'y'8851'z'8658'x'8804'z_3140
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_2020
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-absorbs-⊔
d_'8851''45'absorbs'45''8852'_3142 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'absorbs'45''8852'_3142 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_3144 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_3144 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_3146 :: MAlonzo.Code.Algebra.Bundles.T_Band_266
d_'8851''45'band_3146
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_1872
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_3148 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_3148 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_3150 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_'8851''45'commutativeSemigroup_3150
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_1874
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distrib-⊔
d_'8851''45'distrib'45''8852'_3158 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'distrib'45''8852'_3158
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_1876
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distribʳ-⊔
d_'8851''45'distrib'691''45''8852'_3160 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'691''45''8852'_3160 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-distribˡ-⊔
d_'8851''45'distrib'737''45''8852'_3162 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'distrib'737''45''8852'_3162 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_3164 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'glb_3164
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_3166 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_3166 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_3174 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8851''45'isBand_3174
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_1852
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_3176 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'8851''45'isCommutativeSemigroup_3176
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_1854
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_3178 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8851''45'isMagma_3178
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_1848
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_3182 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
d_'8851''45'isSelectiveMagma_3182
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_3184 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8851''45'isSemigroup_3184
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_1850
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemilattice
d_'8851''45'isSemilattice_3186 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8851''45'isSemilattice_3186
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_1856
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_3188 :: MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8851''45'magma_3188
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_1868
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_3190 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'mono'45''8804'_3190
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_2028
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_3194 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'mono'691''45''8804'_3194
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_3196 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'mono'737''45''8804'_3196
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_2078
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_3200 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_3200
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_3202 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
d_'8851''45'selectiveMagma_3202
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_1878
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_3204 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'8851''45'semigroup_3204
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_1870
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semilattice
d_'8851''45'semilattice_3206 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8851''45'semilattice_3206
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_1876
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_3208 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_3208 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-⊔-absorptive
d_'8851''45''8852''45'absorptive_3216 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45''8852''45'absorptive_3216
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'absorptive_1956
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-⊔-distributiveLattice
d_'8851''45''8852''45'distributiveLattice_3218 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_'8851''45''8852''45'distributiveLattice_3218
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_1972
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-⊔-isDistributiveLattice
d_'8851''45''8852''45'isDistributiveLattice_3220 ::
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_'8851''45''8852''45'isDistributiveLattice_3220
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_1962
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-⊔-isLattice
d_'8851''45''8852''45'isLattice_3222 ::
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_'8851''45''8852''45'isLattice_3222
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isLattice_1960
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊓-⊔-lattice
d_'8851''45''8852''45'lattice_3224 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_'8851''45''8852''45'lattice_3224
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'lattice_1968
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-absorbs-⊓
d_'8852''45'absorbs'45''8851'_3226 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'absorbs'45''8851'_3226 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-assoc
d_'8851''45'assoc_3228 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'assoc_3228 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-band
d_'8851''45'band_3230 :: MAlonzo.Code.Algebra.Bundles.T_Band_266
d_'8851''45'band_3230
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'band_1872
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-comm
d_'8851''45'comm_3232 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'comm_3232 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-commutativeSemigroup
d_'8851''45'commutativeSemigroup_3234 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemigroup_332
d_'8851''45'commutativeSemigroup_3234
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'commutativeSemigroup_1874
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distrib-⊓
d_'8852''45'distrib'45''8851'_3242 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'distrib'45''8851'_3242
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45'distrib'45''8851'_1908
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distribʳ-⊓
d_'8852''45'distrib'691''45''8851'_3244 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'691''45''8851'_3244 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-distribˡ-⊓
d_'8852''45'distrib'737''45''8851'_3246 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'distrib'737''45''8851'_3246 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-idem
d_'8851''45'idem_3248 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'idem_3248 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isBand
d_'8851''45'isBand_3256 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8851''45'isBand_3256
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isBand_1852
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isCommutativeSemigroup
d_'8851''45'isCommutativeSemigroup_3258 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_270
d_'8851''45'isCommutativeSemigroup_3258
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isCommutativeSemigroup_1854
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isMagma
d_'8851''45'isMagma_3260 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8851''45'isMagma_3260
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isMagma_1848
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSelectiveMagma
d_'8851''45'isSelectiveMagma_3264 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_158
d_'8851''45'isSelectiveMagma_3264
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemigroup
d_'8851''45'isSemigroup_3266 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8851''45'isSemigroup_3266
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_1850
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-isSemilattice
d_'8851''45'isSemilattice_3268 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8851''45'isSemilattice_3268
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemilattice_1856
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-glb
d_'8851''45'glb_3270 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'glb_3270
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-magma
d_'8851''45'magma_3272 :: MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8851''45'magma_3272
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'magma_1868
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-mono-≤
d_'8851''45'mono'45''8804'_3274 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'mono'45''8804'_3274
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_2028
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoʳ-≤
d_'8851''45'mono'691''45''8804'_3278 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'mono'691''45''8804'_3278
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'691''45''8804'_2088
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-monoˡ-≤
d_'8851''45'mono'737''45''8804'_3280 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'mono'737''45''8804'_3280
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'737''45''8804'_2078
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-sel
d_'8851''45'sel_3282 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''45'sel_3282
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-selectiveMagma
d_'8851''45'selectiveMagma_3284 ::
  MAlonzo.Code.Algebra.Bundles.T_SelectiveMagma_90
d_'8851''45'selectiveMagma_3284
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'selectiveMagma_1878
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semigroup
d_'8851''45'semigroup_3286 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'8851''45'semigroup_3286
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semigroup_1870
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-semilattice
d_'8851''45'semilattice_3288 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8851''45'semilattice_3288
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'semilattice_1876
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-⊔-properties.⊓-triangulate
d_'8851''45'triangulate_3290 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'triangulate_3290 = erased
-- Data.Nat.Properties.⊓-⊔-properties.⊔-⊓-absorptive
d_'8852''45''8851''45'absorptive_3298 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45''8851''45'absorptive_3298
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'absorptive_1954
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-⊓-distributiveLattice
d_'8852''45''8851''45'distributiveLattice_3300 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_'8852''45''8851''45'distributiveLattice_3300
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'distributiveLattice_1970
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-⊓-isDistributiveLattice
d_'8852''45''8851''45'isDistributiveLattice_3302 ::
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_'8852''45''8851''45'isDistributiveLattice_3302
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isDistributiveLattice_1964
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-⊓-isLattice
d_'8852''45''8851''45'isLattice_3304 ::
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_'8852''45''8851''45'isLattice_3304
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'isLattice_1958
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊓-⊔-properties.⊔-⊓-lattice
d_'8852''45''8851''45'lattice_3306 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_'8852''45''8851''45'lattice_3306
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8852''45''8851''45'lattice_1966
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊔-identityˡ
d_'8852''45'identity'737'_3308 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'identity'737'_3308 = erased
-- Data.Nat.Properties.⊔-identityʳ
d_'8852''45'identity'691'_3310 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'identity'691'_3310 = erased
-- Data.Nat.Properties.⊔-identity
d_'8852''45'identity_3314 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''45'identity_3314
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊔-0-isMonoid
d_'8852''45'0'45'isMonoid_3316 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8852''45'0'45'isMonoid_3316
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
      (let v0 = d_'8804''45'totalPreorder_1696 in
       let v1 = d_'8852''45'operator_3096 in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_1850
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v1)))
      (coe d_'8852''45'identity_3314)
-- Data.Nat.Properties.⊔-0-isCommutativeMonoid
d_'8852''45'0'45'isCommutativeMonoid_3318 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'8852''45'0'45'isCommutativeMonoid_3318
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe d_'8852''45'0'45'isMonoid_3316)
      (let v0 = d_'8804''45'totalPreorder_1696 in
       let v1 = d_'8852''45'operator_3096 in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v1)))
-- Data.Nat.Properties.⊔-0-monoid
d_'8852''45'0'45'monoid_3320 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_506
d_'8852''45'0'45'monoid_3320
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_7649
      MAlonzo.Code.Data.Nat.Base.d__'8852'__106 (0 :: Integer)
      d_'8852''45'0'45'isMonoid_3316
-- Data.Nat.Properties.⊔-0-commutativeMonoid
d_'8852''45'0'45'commutativeMonoid_3322 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'8852''45'0'45'commutativeMonoid_3322
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_8947
      MAlonzo.Code.Data.Nat.Base.d__'8852'__106 (0 :: Integer)
      d_'8852''45'0'45'isCommutativeMonoid_3318
-- Data.Nat.Properties.mono-≤-distrib-⊔
d_mono'45''8804''45'distrib'45''8852'_3330 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8852'_3330 = erased
-- Data.Nat.Properties.mono-≤-distrib-⊓
d_mono'45''8804''45'distrib'45''8851'_3340 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mono'45''8804''45'distrib'45''8851'_3340 = erased
-- Data.Nat.Properties.antimono-≤-distrib-⊓
d_antimono'45''8804''45'distrib'45''8851'_3350 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8851'_3350 = erased
-- Data.Nat.Properties.antimono-≤-distrib-⊔
d_antimono'45''8804''45'distrib'45''8852'_3360 ::
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_antimono'45''8804''45'distrib'45''8852'_3360 = erased
-- Data.Nat.Properties.m<n⇒m<n⊔o
d_m'60'n'8658'm'60'n'8852'o_3370 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8658'm'60'n'8852'o_3370 v0 v1
  = let v2 = d_'8804''45'totalPreorder_1696 in
    let v3 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'x'8851'z'8804'y_1982
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v3))
      (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m<n⇒m<o⊔n
d_m'60'n'8658'm'60'o'8852'n_3378 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8658'm'60'o'8852'n_3378 v0 v1
  = let v2 = d_'8804''45'totalPreorder_1696 in
    let v3 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8658'z'8851'x'8804'y_1994
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v2))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v3))
      (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m⊔n<o⇒m<o
d_m'8852'n'60'o'8658'm'60'o_3386 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8852'n'60'o'8658'm'60'o_3386 v0 v1 ~v2 v3
  = du_m'8852'n'60'o'8658'm'60'o_3386 v0 v1 v3
du_m'8852'n'60'o'8658'm'60'o_3386 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'8852'n'60'o'8658'm'60'o_3386 v0 v1 v2
  = coe
      du_'60''45'trans'691'_1868
      (let v3 = d_'8804''45'totalPreorder_1696 in
       let v4 = d_'8852''45'operator_3096 in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v3))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v4))
         (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.Properties.m⊔n<o⇒n<o
d_m'8852'n'60'o'8658'n'60'o_3400 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8852'n'60'o'8658'n'60'o_3400 v0 v1 ~v2 v3
  = du_m'8852'n'60'o'8658'n'60'o_3400 v0 v1 v3
du_m'8852'n'60'o'8658'n'60'o_3400 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'8852'n'60'o'8658'n'60'o_3400 v0 v1 v2
  = coe
      du_'60''45'trans'691'_1868
      (let v3 = d_'8804''45'totalPreorder_1696 in
       let v4 = d_'8852''45'operator_3096 in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v3))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v4))
         (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.Properties.⊔-mono-<
d_'8852''45'mono'45''60'_3408 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8852''45'mono'45''60'_3408 v0 v1 v2 v3
  = let v4 = d_'8804''45'totalPreorder_1696 in
    let v5 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_2028
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v4))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v5))
      (coe v1) (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v3)
      (coe addInt (coe (1 :: Integer)) (coe v2))
-- Data.Nat.Properties.⊔-pres-<m
d_'8852''45'pres'45''60'm_3416 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8852''45'pres'45''60'm_3416 v0 v1 v2 v3 v4
  = coe d_'8852''45'mono'45''60'_3408 v1 v0 v2 v0 v3 v4
-- Data.Nat.Properties.+-distribˡ-⊔
d_'43''45'distrib'737''45''8852'_3426 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'737''45''8852'_3426 = erased
-- Data.Nat.Properties.+-distribʳ-⊔
d_'43''45'distrib'691''45''8852'_3438 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'691''45''8852'_3438 = erased
-- Data.Nat.Properties.+-distrib-⊔
d_'43''45'distrib'45''8852'_3440 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'distrib'45''8852'_3440
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m⊔n≤m+n
d_m'8852'n'8804'm'43'n_3446 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8852'n'8804'm'43'n_3446 v0 v1
  = let v2
          = let v2 = d_'8804''45'totalPreorder_1696 in
            let v3 = d_'8852''45'operator_3096 in
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
              (coe
                 MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                 (coe v2))
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                 (coe v3))
              (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe du_m'8804'm'43'n_2316 (coe v0)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe du_m'8804'n'43'm_2328 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-distribˡ-⊔
d_'42''45'distrib'737''45''8852'_3476 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8852'_3476 = erased
-- Data.Nat.Properties.*-distribʳ-⊔
d_'42''45'distrib'691''45''8852'_3498 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8852'_3498 = erased
-- Data.Nat.Properties.*-distrib-⊔
d_'42''45'distrib'45''8852'_3500 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8852'_3500
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊓-zeroˡ
d_'8851''45'zero'737'_3502 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'737'_3502 = erased
-- Data.Nat.Properties.⊓-zeroʳ
d_'8851''45'zero'691'_3504 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'zero'691'_3504 = erased
-- Data.Nat.Properties.⊓-zero
d_'8851''45'zero_3508 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''45'zero_3508
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.⊔-⊓-isSemiringWithoutOne
d_'8852''45''8851''45'isSemiringWithoutOne_3510 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_'8852''45''8851''45'isSemiringWithoutOne_3510
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutOne'46'constructor_24269
      (coe d_'8852''45'0'45'isCommutativeMonoid_3318)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSemigroup_1850
         (coe d_'8804''45'totalPreorder_1696)
         (coe d_'8851''45'operator_3094))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45'distrib'45''8852'_1876
         (coe d_'8804''45'totalPreorder_1696)
         (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096))
      (coe d_'8851''45'zero_3508)
-- Data.Nat.Properties.⊔-⊓-isCommutativeSemiringWithoutOne
d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_3512 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_3512
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiringWithoutOne'46'constructor_27189
      (coe d_'8852''45''8851''45'isSemiringWithoutOne_3510)
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'comm_1674
         (coe d_'8804''45'totalPreorder_1696)
         (coe d_'8851''45'operator_3094))
-- Data.Nat.Properties.⊔-⊓-commutativeSemiringWithoutOne
d_'8852''45''8851''45'commutativeSemiringWithoutOne_3514 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiringWithoutOne_1598
d_'8852''45''8851''45'commutativeSemiringWithoutOne_3514
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiringWithoutOne'46'constructor_24395
      MAlonzo.Code.Data.Nat.Base.d__'8852'__106
      MAlonzo.Code.Data.Nat.Base.d__'8851'__116 (0 :: Integer)
      d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_3512
-- Data.Nat.Properties.m<n⇒m⊓o<n
d_m'60'n'8658'm'8851'o'60'n_3522 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8658'm'8851'o'60'n_3522 v0 ~v1 v2 v3
  = du_m'60'n'8658'm'8851'o'60'n_3522 v0 v2 v3
du_m'60'n'8658'm'8851'o'60'n_3522 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60'n'8658'm'8851'o'60'n_3522 v0 v1 v2
  = coe
      du_'60''45'trans'691'_1868
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'x_1626
         (coe d_'8804''45'totalPreorder_1696)
         (coe d_'8851''45'operator_3094) (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.Properties.m<n⇒o⊓m<n
d_m'60'n'8658'o'8851'm'60'n_3534 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8658'o'8851'm'60'n_3534 v0 ~v1 v2 v3
  = du_m'60'n'8658'o'8851'm'60'n_3534 v0 v2 v3
du_m'60'n'8658'o'8851'm'60'n_3534 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60'n'8658'o'8851'm'60'n_3534 v0 v1 v2
  = coe
      du_'60''45'trans'691'_1868
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
         (coe d_'8804''45'totalPreorder_1696)
         (coe d_'8851''45'operator_3094) (coe v1) (coe v0))
      (coe v2)
-- Data.Nat.Properties.m<n⊓o⇒m<n
d_m'60'n'8851'o'8658'm'60'n_3546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8851'o'8658'm'60'n_3546 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'y_2006
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094)
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.m<n⊓o⇒m<o
d_m'60'n'8851'o'8658'm'60'o_3554 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8851'o'8658'm'60'o_3554 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8804'y'8851'z'8658'x'8804'z_2020
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094)
      (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Properties.⊓-mono-<
d_'8851''45'mono'45''60'_3556 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'mono'45''60'_3556 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'mono'45''8804'_2028
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094)
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
      (coe addInt (coe (1 :: Integer)) (coe v2)) (coe v3)
-- Data.Nat.Properties.⊓-pres-m<
d_'8851''45'pres'45'm'60'_3564 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'pres'45'm'60'_3564 v0 v1 v2 v3 v4
  = coe d_'8851''45'mono'45''60'_3556 v0 v1 v0 v2 v3 v4
-- Data.Nat.Properties.+-distribˡ-⊓
d_'43''45'distrib'737''45''8851'_3574 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'737''45''8851'_3574 = erased
-- Data.Nat.Properties.+-distribʳ-⊓
d_'43''45'distrib'691''45''8851'_3586 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'691''45''8851'_3586 = erased
-- Data.Nat.Properties.+-distrib-⊓
d_'43''45'distrib'45''8851'_3588 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'distrib'45''8851'_3588
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m⊓n≤m+n
d_m'8851'n'8804'm'43'n_3594 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8851'n'8804'm'43'n_3594 v0 v1
  = let v2
          = let v2 = d_'8804''45'totalPreorder_1696 in
            let v3 = d_'8851''45'operator_3094 in
            coe
              MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
              (coe v2) (coe v3) (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe du_m'8804'm'43'n_2316 (coe v0)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe du_m'8804'n'43'm_2328 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-distribˡ-⊓
d_'42''45'distrib'737''45''8851'_3624 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8851'_3624 = erased
-- Data.Nat.Properties.*-distribʳ-⊓
d_'42''45'distrib'691''45''8851'_3646 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8851'_3646 = erased
-- Data.Nat.Properties.*-distrib-⊓
d_'42''45'distrib'45''8851'_3648 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8851'_3648
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.0∸n≡0
d_0'8760'n'8801'0_3650 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'8760'n'8801'0_3650 = erased
-- Data.Nat.Properties.n∸n≡0
d_n'8760'n'8801'0_3654 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8760'n'8801'0_3654 = erased
-- Data.Nat.Properties.pred[m∸n]≡m∸[1+n]
d_pred'91'm'8760'n'93''8801'm'8760''91'1'43'n'93'_3662 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pred'91'm'8760'n'93''8801'm'8760''91'1'43'n'93'_3662 = erased
-- Data.Nat.Properties.m∸n≤m
d_m'8760'n'8804'm_3676 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8760'n'8804'm_3676 v0 v1
  = case coe v1 of
      0 -> coe
             d_'8804''45'refl_1634
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (0 :: Integer))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe
                    d_'8804''45'refl_1634
                    (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 (0 :: Integer) v1)
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    du_'8804''45'trans_1642
                    (coe d_m'8760'n'8804'm_3676 (coe v3) (coe v2))
                    (coe d_n'8804'1'43'n_1724 (coe v3))
-- Data.Nat.Properties.m≮m∸n
d_m'8814'm'8760'n_3690 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'8814'm'8760'n_3690 = erased
-- Data.Nat.Properties.1+m≢m∸n
d_1'43'm'8802'm'8760'n_3702 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_1'43'm'8802'm'8760'n_3702 = erased
-- Data.Nat.Properties.∸-mono
d_'8760''45'mono_3710 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8760''45'mono_3710 v0 v1 v2 v3 v4 v5
  = let v6
          = seq
              (coe v5)
              (coe
                 du_'8804''45'trans_1642
                 (coe d_m'8760'n'8804'm_3676 (coe v0) (coe v2)) (coe v4)) in
    case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v10
               -> case coe v2 of
                    _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                        case coe v3 of
                          _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                              coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
                          _ -> coe v6
                    _ -> coe v6
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
               -> coe
                    du_'8804''45'trans_1642
                    (coe d_m'8760'n'8804'm_3676 (coe v0) (coe v2))
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9
        -> case coe v0 of
             _ | coe geqInt (coe v0) (coe (1 :: Integer)) ->
                 let v10 = subInt (coe v0) (coe (1 :: Integer)) in
                 case coe v1 of
                   _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                       let v11 = subInt (coe v1) (coe (1 :: Integer)) in
                       case coe v5 of
                         MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v14
                           -> case coe v2 of
                                _ | coe geqInt (coe v2) (coe (1 :: Integer)) ->
                                    let v15 = subInt (coe v2) (coe (1 :: Integer)) in
                                    case coe v3 of
                                      _ | coe geqInt (coe v3) (coe (1 :: Integer)) ->
                                          let v16 = subInt (coe v3) (coe (1 :: Integer)) in
                                          coe
                                            d_'8760''45'mono_3710 (coe v10) (coe v11) (coe v15)
                                            (coe v16) (coe v9) (coe v14)
                                      _ -> coe v6
                                _ -> coe v6
                         MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
                           -> coe
                                du_'8804''45'trans_1642
                                (coe d_m'8760'n'8804'm_3676 (coe v0) (coe v2))
                                (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9)
                         _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> coe v6
             _ -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∸-monoˡ-≤
d_'8760''45'mono'737''45''8804'_3728 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8760''45'mono'737''45''8804'_3728 v0 v1 v2 v3
  = coe
      d_'8760''45'mono_3710 (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
      (coe d_'8804''45'refl_1634 (coe v2))
-- Data.Nat.Properties.∸-monoʳ-≤
d_'8760''45'mono'691''45''8804'_3740 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8760''45'mono'691''45''8804'_3740 v0 v1 v2 v3
  = coe
      d_'8760''45'mono_3710 (coe v2) (coe v2) (coe v1) (coe v0)
      (coe d_'8804''45'refl_1634 (coe v2)) (coe v3)
-- Data.Nat.Properties.∸-monoʳ-<
d_'8760''45'mono'691''45''60'_3750 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8760''45'mono'691''45''60'_3750 v0 v1 v2 v3 v4
  = let v5 = subInt (coe v1) (coe (1 :: Integer)) in
    case coe v2 of
      0 -> coe
             seq (coe v3)
             (coe
                seq (coe v4)
                (coe
                   MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                   (d_m'8760'n'8804'm_3676
                      (coe subInt (coe v0) (coe (1 :: Integer))) (coe v5))))
      _ -> let v6 = subInt (coe v2) (coe (1 :: Integer)) in
           case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v9
               -> case coe v4 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v12
                      -> let v13 = subInt (coe v0) (coe (1 :: Integer)) in
                         coe
                           d_'8760''45'mono'691''45''60'_3750 (coe v13) (coe v5) (coe v6)
                           (coe v9) (coe v12)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∸-cancelʳ-≤
d_'8760''45'cancel'691''45''8804'_3772 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8760''45'cancel'691''45''8804'_3772 ~v0 v1 ~v2 v3 ~v4
  = du_'8760''45'cancel'691''45''8804'_3772 v1 v3
du_'8760''45'cancel'691''45''8804'_3772 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8760''45'cancel'691''45''8804'_3772 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
        -> case coe v0 of
             0 -> coe
                    MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
             _ -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_'8760''45'cancel'691''45''8804'_3772 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∸-cancelʳ-<
d_'8760''45'cancel'691''45''60'_3792 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8760''45'cancel'691''45''60'_3792 v0 v1 ~v2 ~v3
  = du_'8760''45'cancel'691''45''60'_3792 v0 v1
du_'8760''45'cancel'691''45''60'_3792 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8760''45'cancel'691''45''60'_3792 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe du_0'60'1'43'n_1944
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_'8760''45'cancel'691''45''60'_3792 (coe v2) (coe v3))
-- Data.Nat.Properties.∸-cancelˡ-≡
d_'8760''45'cancel'737''45''8801'_3818 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'cancel'737''45''8801'_3818 = erased
-- Data.Nat.Properties.∸-cancelʳ-≡
d_'8760''45'cancel'691''45''8801'_3840 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'cancel'691''45''8801'_3840 = erased
-- Data.Nat.Properties.m∸n≡0⇒m≤n
d_m'8760'n'8801'0'8658'm'8804'n_3854 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8760'n'8801'0'8658'm'8804'n_3854 v0 ~v1 ~v2
  = du_m'8760'n'8801'0'8658'm'8804'n_3854 v0
du_m'8760'n'8801'0'8658'm'8804'n_3854 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'8760'n'8801'0'8658'm'8804'n_3854 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe du_m'8760'n'8801'0'8658'm'8804'n_3854 (coe v1))
-- Data.Nat.Properties.m≤n⇒m∸n≡0
d_m'8804'n'8658'm'8760'n'8801'0_3866 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'8760'n'8801'0_3866 = erased
-- Data.Nat.Properties.m<n⇒0<n∸m
d_m'60'n'8658'0'60'n'8760'm_3876 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'8658'0'60'n'8760'm_3876 v0 ~v1 v2
  = du_m'60'n'8658'0'60'n'8760'm_3876 v0 v2
du_m'60'n'8658'0'60'n'8760'm_3876 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60'n'8658'0'60'n'8760'm_3876 v0 v1
  = case coe v0 of
      0 -> coe du_0'60'1'43'n_1944
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v5
               -> coe du_m'60'n'8658'0'60'n'8760'm_3876 (coe v2) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m∸n≢0⇒n<m
d_m'8760'n'8802'0'8658'n'60'm_3890 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8760'n'8802'0'8658'n'60'm_3890 v0 v1 ~v2
  = du_m'8760'n'8802'0'8658'n'60'm_3890 v0 v1
du_m'8760'n'8802'0'8658'n'60'm_3890 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'8760'n'8802'0'8658'n'60'm_3890 v0 v1
  = let v2 = d__'60''63'__1912 (coe v1) (coe v0) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C_of'696'_22 v5 -> coe v5
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.m>n⇒m∸n≢0
d_m'62'n'8658'm'8760'n'8802'0_3922 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_m'62'n'8658'm'8760'n'8802'0_3922 = erased
-- Data.Nat.Properties.+-∸-comm
d_'43''45''8760''45'comm_3934 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''8760''45'comm_3934 = erased
-- Data.Nat.Properties.∸-+-assoc
d_'8760''45''43''45'assoc_3952 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45''43''45'assoc_3952 = erased
-- Data.Nat.Properties.+-∸-assoc
d_'43''45''8760''45'assoc_3976 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''8760''45'assoc_3976 = erased
-- Data.Nat.Properties.m≤n+m∸n
d_m'8804'n'43'm'8760'n_3996 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8804'n'43'm'8760'n_3996 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe d_'8804''45'refl_1634 (coe v0)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (d_m'8804'n'43'm'8760'n_3996 (coe v2) (coe v3))
-- Data.Nat.Properties.m+n∸n≡m
d_m'43'n'8760'n'8801'm_4010 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8760'n'8801'm_4010 = erased
-- Data.Nat.Properties.m+n∸m≡n
d_m'43'n'8760'm'8801'n_4022 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43'n'8760'm'8801'n_4022 = erased
-- Data.Nat.Properties.m+[n∸m]≡n
d_m'43''91'n'8760'm'93''8801'n_4034 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'43''91'n'8760'm'93''8801'n_4034 = erased
-- Data.Nat.Properties.m∸n+n≡m
d_m'8760'n'43'n'8801'm_4048 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760'n'43'n'8801'm_4048 = erased
-- Data.Nat.Properties.m∸[m∸n]≡n
d_m'8760''91'm'8760'n'93''8801'n_4060 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8760''91'm'8760'n'93''8801'n_4060 = erased
-- Data.Nat.Properties.[m+n]∸[m+o]≡n∸o
d_'91'm'43'n'93''8760''91'm'43'o'93''8801'n'8760'o_4076 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'43'n'93''8760''91'm'43'o'93''8801'n'8760'o_4076 = erased
-- Data.Nat.Properties.*-distribʳ-∸
d_'42''45'distrib'691''45''8760'_4088 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8760'_4088 = erased
-- Data.Nat.Properties.*-distribˡ-∸
d_'42''45'distrib'737''45''8760'_4108 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8760'_4108 = erased
-- Data.Nat.Properties.*-distrib-∸
d_'42''45'distrib'45''8760'_4110 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8760'_4110
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.even≢odd
d_even'8802'odd_4116 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_even'8802'odd_4116 = erased
-- Data.Nat.Properties.m⊓n+n∸m≡n
d_m'8851'n'43'n'8760'm'8801'n_4132 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8851'n'43'n'8760'm'8801'n_4132 = erased
-- Data.Nat.Properties.[m∸n]⊓[n∸m]≡0
d_'91'm'8760'n'93''8851''91'n'8760'm'93''8801'0_4146 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'8760'n'93''8851''91'n'8760'm'93''8801'0_4146 = erased
-- Data.Nat.Properties.∸-distribˡ-⊓-⊔
d_'8760''45'distrib'737''45''8851''45''8852'_4162 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'737''45''8851''45''8852'_4162 = erased
-- Data.Nat.Properties.∸-distribʳ-⊓
d_'8760''45'distrib'691''45''8851'_4170 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'691''45''8851'_4170 = erased
-- Data.Nat.Properties.∸-distribˡ-⊔-⊓
d_'8760''45'distrib'737''45''8852''45''8851'_4184 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'737''45''8852''45''8851'_4184 = erased
-- Data.Nat.Properties.∸-distribʳ-⊔
d_'8760''45'distrib'691''45''8852'_4192 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8760''45'distrib'691''45''8852'_4192 = erased
-- Data.Nat.Properties.pred-mono
d_pred'45'mono_4200 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_pred'45'mono_4200 v0 v1 v2
  = coe
      d_'8760''45'mono_3710 (coe v0) (coe v1) (coe (1 :: Integer))
      (coe (1 :: Integer)) (coe v2)
      (coe d_'8804''45'refl_1634 (coe (1 :: Integer)))
-- Data.Nat.Properties.pred[n]≤n
d_pred'91'n'93''8804'n_4206 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_pred'91'n'93''8804'n_4206 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d_n'8804'1'43'n_1724 (coe v1)
-- Data.Nat.Properties.≤pred⇒≤
d_'8804'pred'8658''8804'_4214 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804'pred'8658''8804'_4214 ~v0 v1 v2
  = du_'8804'pred'8658''8804'_4214 v1 v2
du_'8804'pred'8658''8804'_4214 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804'pred'8658''8804'_4214 v0 v1 = coe seq (coe v0) (coe v1)
-- Data.Nat.Properties.≤⇒pred≤
d_'8804''8658'pred'8804'_4230 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''8658'pred'8804'_4230 v0 ~v1 v2
  = du_'8804''8658'pred'8804'_4230 v0 v2
du_'8804''8658'pred'8804'_4230 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''8658'pred'8804'_4230 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             du_'8804''45'trans_1642 (coe d_n'8804'1'43'n_1724 (coe v2))
             (coe v1)
-- Data.Nat.Properties.<⇒≤pred
d_'60''8658''8804'pred_4242 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'60''8658''8804'pred_4242 ~v0 ~v1 v2
  = du_'60''8658''8804'pred_4242 v2
du_'60''8658''8804'pred_4242 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'60''8658''8804'pred_4242 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.suc[pred[n]]≡n
d_suc'91'pred'91'n'93''93''8801'n_4248 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_suc'91'pred'91'n'93''93''8801'n_4248 = erased
-- Data.Nat.Properties.m≡n⇒∣m-n∣≡0
d_m'8801'n'8658''8739'm'45'n'8739''8801'0_4260 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'n'8658''8739'm'45'n'8739''8801'0_4260 = erased
-- Data.Nat.Properties.∣m-n∣≡0⇒m≡n
d_'8739'm'45'n'8739''8801'0'8658'm'8801'n_4268 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'n'8739''8801'0'8658'm'8801'n_4268 = erased
-- Data.Nat.Properties.m≤n⇒∣n-m∣≡n∸m
d_m'8804'n'8658''8739'n'45'm'8739''8801'n'8760'm_4282 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658''8739'n'45'm'8739''8801'n'8760'm_4282 = erased
-- Data.Nat.Properties.∣m-n∣≡m∸n⇒n≤m
d_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_4292 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_4292 v0 v1 ~v2
  = du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_4292 v0 v1
du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_4292 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_4292 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe
                       du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_4292 (coe v2)
                       (coe v3))
-- Data.Nat.Properties.∣n-n∣≡0
d_'8739'n'45'n'8739''8801'0_4308 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'45'n'8739''8801'0_4308 = erased
-- Data.Nat.Properties.∣m-m+n∣≡n
d_'8739'm'45'm'43'n'8739''8801'n_4316 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'45'm'43'n'8739''8801'n_4316 = erased
-- Data.Nat.Properties.∣m+n-m+o∣≡∣n-o∣
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'8739'_4330 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'8739'_4330
  = erased
-- Data.Nat.Properties.m∸n≤∣m-n∣
d_m'8760'n'8804''8739'm'45'n'8739'_4346 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8760'n'8804''8739'm'45'n'8739'_4346 v0 v1
  = let v2 = d_'8804''45'total_1648 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe
             d_'8804''45'refl_1634
             (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.∣m-n∣≤m⊔n
d_'8739'm'45'n'8739''8804'm'8852'n_4376 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8739'm'45'n'8739''8804'm'8852'n_4376 v0 v1
  = case coe v0 of
      0 -> coe
             d_'8804''45'refl_1634
             (coe
                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142
                (coe (0 :: Integer)) (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    d_'8804''45'refl_1634
                    (coe
                       MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                       (coe (0 :: Integer)))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d_'8739'm'45'n'8739''8804'm'8852'n_4376 (coe v2) (coe v3)
-- Data.Nat.Properties.∣-∣-identityˡ
d_'8739''45''8739''45'identity'737'_4386 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'identity'737'_4386 = erased
-- Data.Nat.Properties.∣-∣-identityʳ
d_'8739''45''8739''45'identity'691'_4390 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'identity'691'_4390 = erased
-- Data.Nat.Properties.∣-∣-identity
d_'8739''45''8739''45'identity_4394 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8739''45''8739''45'identity_4394
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.∣-∣-comm
d_'8739''45''8739''45'comm_4396 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739''45''8739''45'comm_4396 = erased
-- Data.Nat.Properties.∣m-n∣≡[m∸n]∨[n∸m]
d_'8739'm'45'n'8739''8801''91'm'8760'n'93''8744''91'n'8760'm'93'_4410 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'm'45'n'8739''8801''91'm'8760'n'93''8744''91'n'8760'm'93'_4410 v0
                                                                      v1
  = let v2 = d_'8804''45'total_1648 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin'45'equality__190
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
                   (coe d_'8804''45'isPreorder_1684)
                   (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.*-distribˡ-∣-∣-aux
d_'42''45'distrib'737''45''8739''45''8739''45'aux_4438 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8739''45''8739''45'aux_4438 = erased
-- Data.Nat.Properties.*-distribˡ-∣-∣
d_'42''45'distrib'737''45''8739''45''8739'_4450 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'737''45''8739''45''8739'_4450 = erased
-- Data.Nat.Properties.*-distribʳ-∣-∣
d_'42''45'distrib'691''45''8739''45''8739'_4480 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'691''45''8739''45''8739'_4480 = erased
-- Data.Nat.Properties.*-distrib-∣-∣
d_'42''45'distrib'45''8739''45''8739'_4482 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'distrib'45''8739''45''8739'_4482
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.Properties.m≤n+∣n-m∣
d_m'8804'n'43''8739'n'45'm'8739'_4488 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8804'n'43''8739'n'45'm'8739'_4488 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe d_'8804''45'refl_1634 (coe v0)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (d_m'8804'n'43''8739'n'45'm'8739'_4488 (coe v2) (coe v3))
-- Data.Nat.Properties.m≤n+∣m-n∣
d_m'8804'n'43''8739'm'45'n'8739'_4502 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8804'n'43''8739'm'45'n'8739'_4502 v0 v1
  = coe d_m'8804'n'43''8739'n'45'm'8739'_4488 (coe v0) (coe v1)
-- Data.Nat.Properties.m≤∣m-n∣+n
d_m'8804''8739'm'45'n'8739''43'n_4516 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8804''8739'm'45'n'8739''43'n_4516 v0 v1
  = coe d_m'8804'n'43''8739'm'45'n'8739'_4502 (coe v0) (coe v1)
-- Data.Nat.Properties.∣-∣-triangle
d_'8739''45''8739''45'triangle_4524 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8739''45''8739''45'triangle_4524 v0 v1 v2
  = case coe v0 of
      0 -> coe d_m'8804'n'43''8739'n'45'm'8739'_4488 (coe v2) (coe v1)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
                    (coe d_'8804''45'isPreorder_1684)
                    (\ v4 v5 v6 -> coe du_'60''8658''8804'_1736 v5 v6)
                    (coe
                       MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                       (coe v2))
                    (coe
                       addInt
                       (coe
                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142
                          (coe (0 :: Integer)) (coe v2))
                       (coe
                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                          (coe (0 :: Integer))))
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
                       (coe d_'8804''45'isPreorder_1684)
                       (\ v4 v5 v6 v7 v8 -> coe du_'60''45'trans'691'_1868 v7 v8)
                       (coe
                          MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                          (coe v2))
                       (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__106 (coe v0) (coe v2))
                       (coe
                          addInt
                          (coe
                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142
                             (coe (0 :: Integer)) (coe v2))
                          (coe
                             MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                             (coe (0 :: Integer))))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
                          (coe d_'8804''45'isPreorder_1684)
                          (\ v4 v5 v6 v7 v8 -> coe du_'60''45'trans'691'_1868 v7 v8)
                          (coe MAlonzo.Code.Data.Nat.Base.d__'8852'__106 (coe v0) (coe v2))
                          (coe addInt (coe v0) (coe v2))
                          (coe
                             addInt
                             (coe
                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142
                                (coe (0 :: Integer)) (coe v2))
                             (coe
                                MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                                (coe (0 :: Integer))))
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
                             (coe d_'8804''45'isPreorder_1684)
                             (coe
                                addInt
                                (coe
                                   MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                                   (coe (0 :: Integer)))
                                (coe v2)))
                          (coe d_m'8852'n'8804'm'43'n_3446 (coe v0) (coe v2)))
                       (coe d_'8739'm'45'n'8739''8804'm'8852'n_4376 (coe v0) (coe v2)))
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  case coe v2 of
                    0 -> coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin__160
                           (coe d_'8804''45'isPreorder_1684)
                           (\ v5 v6 v7 -> coe du_'60''8658''8804'_1736 v6 v7)
                           (coe
                              MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                              (coe (0 :: Integer)))
                           (coe
                              addInt
                              (coe
                                 MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                                 (coe v1))
                              (coe
                                 MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v1)
                                 (coe (0 :: Integer))))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_step'45''8804'_228
                              (coe d_'8804''45'isPreorder_1684)
                              (\ v5 v6 v7 v8 v9 -> coe du_'60''45'trans'691'_1868 v8 v9) (coe v0)
                              (coe
                                 addInt
                                 (coe
                                    MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                                    (coe v1))
                                 (coe v1))
                              (coe
                                 addInt
                                 (coe
                                    MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v1)
                                    (coe (0 :: Integer))))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
                                 (coe d_'8804''45'isPreorder_1684)
                                 (coe
                                    addInt
                                    (coe
                                       MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v0)
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142 (coe v1)
                                       (coe (0 :: Integer)))))
                              (coe d_m'8804''8739'm'45'n'8739''43'n_4516 (coe v0) (coe v1)))
                    _ -> let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                         coe d_'8739''45''8739''45'triangle_4524 (coe v3) (coe v4) (coe v5)
-- Data.Nat.Properties.∣-∣-isProtoMetric
d_'8739''45''8739''45'isProtoMetric_4552 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsProtoMetric_30
d_'8739''45''8739''45'isProtoMetric_4552
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsProtoMetric'46'constructor_1309
      (coe d_'8804''45'isPartialOrder_1688)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22))
-- Data.Nat.Properties.∣-∣-isPreMetric
d_'8739''45''8739''45'isPreMetric_4554 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsPreMetric_96
d_'8739''45''8739''45'isPreMetric_4554
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsPreMetric'46'constructor_4743
      (coe d_'8739''45''8739''45'isProtoMetric_4552) erased
-- Data.Nat.Properties.∣-∣-isQuasiSemiMetric
d_'8739''45''8739''45'isQuasiSemiMetric_4556 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsQuasiSemiMetric_162
d_'8739''45''8739''45'isQuasiSemiMetric_4556
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsQuasiSemiMetric'46'constructor_7947
      (coe d_'8739''45''8739''45'isPreMetric_4554) erased
-- Data.Nat.Properties.∣-∣-isSemiMetric
d_'8739''45''8739''45'isSemiMetric_4558 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsSemiMetric_232
d_'8739''45''8739''45'isSemiMetric_4558
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsSemiMetric'46'constructor_11297
      (coe d_'8739''45''8739''45'isQuasiSemiMetric_4556) erased
-- Data.Nat.Properties.∣-∣-isMetric
d_'8739''45''8739''45'isMetric_4560 ::
  MAlonzo.Code.Function.Metric.Structures.T_IsGeneralMetric_308
d_'8739''45''8739''45'isMetric_4560
  = coe
      MAlonzo.Code.Function.Metric.Structures.C_IsGeneralMetric'46'constructor_14943
      (coe d_'8739''45''8739''45'isSemiMetric_4558)
      (coe d_'8739''45''8739''45'triangle_4524)
-- Data.Nat.Properties.∣-∣-quasiSemiMetric
d_'8739''45''8739''45'quasiSemiMetric_4562 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_QuasiSemiMetric_174
d_'8739''45''8739''45'quasiSemiMetric_4562
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_QuasiSemiMetric'46'constructor_2655
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142
      d_'8739''45''8739''45'isQuasiSemiMetric_4556
-- Data.Nat.Properties.∣-∣-semiMetric
d_'8739''45''8739''45'semiMetric_4564 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_SemiMetric_266
d_'8739''45''8739''45'semiMetric_4564
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_SemiMetric'46'constructor_4105
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142
      d_'8739''45''8739''45'isSemiMetric_4558
-- Data.Nat.Properties.∣-∣-preMetric
d_'8739''45''8739''45'preMetric_4566 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_PreMetric_90
d_'8739''45''8739''45'preMetric_4566
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_PreMetric'46'constructor_1303
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142
      d_'8739''45''8739''45'isPreMetric_4554
-- Data.Nat.Properties.∣-∣-metric
d_'8739''45''8739''45'metric_4568 ::
  MAlonzo.Code.Function.Metric.Nat.Bundles.T_Metric_364
d_'8739''45''8739''45'metric_4568
  = coe
      MAlonzo.Code.Function.Metric.Nat.Bundles.C_Metric'46'constructor_5625
      MAlonzo.Code.Data.Nat.Base.d_'8739'_'45'_'8739'_142
      d_'8739''45''8739''45'isMetric_4560
-- Data.Nat.Properties.⌊n/2⌋-mono
d_'8970'n'47'2'8971''45'mono_4570 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8970'n'47'2'8971''45'mono_4570 ~v0 ~v1 v2
  = du_'8970'n'47'2'8971''45'mono_4570 v2
du_'8970'n'47'2'8971''45'mono_4570 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8970'n'47'2'8971''45'mono_4570 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
               -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v6
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_'8970'n'47'2'8971''45'mono_4570 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.⌈n/2⌉-mono
d_'8968'n'47'2'8969''45'mono_4574 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8968'n'47'2'8969''45'mono_4574 ~v0 ~v1 v2
  = du_'8968'n'47'2'8969''45'mono_4574 v2
du_'8968'n'47'2'8969''45'mono_4574 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8968'n'47'2'8969''45'mono_4574 v0
  = coe
      du_'8970'n'47'2'8971''45'mono_4570
      (coe MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v0)
-- Data.Nat.Properties.⌊n/2⌋≤⌈n/2⌉
d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_4580 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_4580 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (d_'8970'n'47'2'8971''8804''8968'n'47'2'8969'_4580 (coe v1))
-- Data.Nat.Properties.⌊n/2⌋+⌈n/2⌉≡n
d_'8970'n'47'2'8971''43''8968'n'47'2'8969''8801'n_4586 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8970'n'47'2'8971''43''8968'n'47'2'8969''8801'n_4586 = erased
-- Data.Nat.Properties.⌊n/2⌋≤n
d_'8970'n'47'2'8971''8804'n_4592 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8970'n'47'2'8971''8804'n_4592 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (d_'8970'n'47'2'8971''8804'n_4592 (coe v1))
-- Data.Nat.Properties.⌊n/2⌋<n
d_'8970'n'47'2'8971''60'n_4598 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8970'n'47'2'8971''60'n_4598 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (coe
                MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                (d_'8970'n'47'2'8971''8804'n_4592 (coe v1)))
-- Data.Nat.Properties.⌈n/2⌉≤n
d_'8968'n'47'2'8969''8804'n_4604 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8968'n'47'2'8969''8804'n_4604 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
             (d_'8970'n'47'2'8971''8804'n_4592 (coe v1))
-- Data.Nat.Properties.⌈n/2⌉<n
d_'8968'n'47'2'8969''60'n_4610 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8968'n'47'2'8969''60'n_4610 v0
  = coe
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
      (d_'8970'n'47'2'8971''60'n_4598 (coe v0))
-- Data.Nat.Properties.≤′-trans
d_'8804''8242''45'trans_4614 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_'8804''8242''45'trans_4614 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''8242''45'trans_4614 v3 v4
du_'8804''8242''45'trans_4614 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
du_'8804''8242''45'trans_4614 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_158 -> coe v0
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_164 v3
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_164
             (coe du_'8804''8242''45'trans_4614 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.z≤′n
d_z'8804''8242'n_4624 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_z'8804''8242'n_4624 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_158
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_164
             (d_z'8804''8242'n_4624 (coe v1))
-- Data.Nat.Properties.s≤′s
d_s'8804''8242's_4632 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_s'8804''8242's_4632 ~v0 ~v1 v2 = du_s'8804''8242's_4632 v2
du_s'8804''8242's_4632 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
du_s'8804''8242's_4632 v0 = coe v0
-- Data.Nat.Properties.≤′⇒≤
d_'8804''8242''8658''8804'_4636 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''8242''8658''8804'_4636 v0 ~v1 v2
  = du_'8804''8242''8658''8804'_4636 v0 v2
du_'8804''8242''8658''8804'_4636 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''8242''8658''8804'_4636 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_158
        -> coe d_'8804''45'refl_1634 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_164 v3
        -> coe du_'8804''8242''8658''8804'_4636 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤⇒≤′
d_'8804''8658''8804''8242'_4640 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_'8804''8658''8804''8242'_4640 ~v0 v1 v2
  = du_'8804''8658''8804''8242'_4640 v1 v2
du_'8804''8658''8804''8242'_4640 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
du_'8804''8658''8804''8242'_4640 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
        -> coe d_z'8804''8242'n_4624 (coe v0)
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du_'8804''8658''8804''8242'_4640 (coe v5) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤′-step-injective
d_'8804''8242''45'step'45'injective_4652 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8242''45'step'45'injective_4652 = erased
-- Data.Nat.Properties._≤′?_
d__'8804''8242''63'__4654 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''8242''63'__4654 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (coe du_'8804''8658''8804''8242'_4640 (coe v1))
      (coe d__'8804''63'__1676 (coe v0) (coe v1))
-- Data.Nat.Properties._<′?_
d__'60''8242''63'__4660 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'60''8242''63'__4660 v0 v1
  = coe
      d__'8804''8242''63'__4654
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Nat.Properties._≥′?_
d__'8805''8242''63'__4666 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8805''8242''63'__4666 v0 v1
  = coe d__'8804''8242''63'__4654 (coe v1) (coe v0)
-- Data.Nat.Properties._>′?_
d__'62''8242''63'__4668 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'62''8242''63'__4668 v0 v1
  = coe d__'60''8242''63'__4660 (coe v1) (coe v0)
-- Data.Nat.Properties.m≤′m+n
d_m'8804''8242'm'43'n_4674 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_m'8804''8242'm'43'n_4674 v0 v1
  = coe
      du_'8804''8658''8804''8242'_4640 (coe addInt (coe v0) (coe v1))
      (coe du_m'8804'm'43'n_2316 (coe v0))
-- Data.Nat.Properties.n≤′m+n
d_n'8804''8242'm'43'n_4684 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_n'8804''8242'm'43'n_4684 v0 ~v1 = du_n'8804''8242'm'43'n_4684 v0
du_n'8804''8242'm'43'n_4684 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
du_n'8804''8242'm'43'n_4684 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_158
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_164
             (coe du_n'8804''8242'm'43'n_4684 (coe v1))
-- Data.Nat.Properties.⌈n/2⌉≤′n
d_'8968'n'47'2'8969''8804''8242'n_4694 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_'8968'n'47'2'8969''8804''8242'n_4694 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_158
      1 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_158
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_164
             (d_'8968'n'47'2'8969''8804''8242'n_4694 (coe v1))
-- Data.Nat.Properties.⌊n/2⌋≤′n
d_'8970'n'47'2'8971''8804''8242'n_4700 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__154
d_'8970'n'47'2'8971''8804''8242'n_4700 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'refl_158
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8242''45'step_164
             (d_'8968'n'47'2'8969''8804''8242'n_4694 (coe v1))
-- Data.Nat.Properties.m<ᵇn⇒1+m+[n-1+m]≡n
d_m'60''7495'n'8658'1'43'm'43''91'n'45'1'43'm'93''8801'n_4708 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'60''7495'n'8658'1'43'm'43''91'n'45'1'43'm'93''8801'n_4708
  = erased
-- Data.Nat.Properties.m<ᵇ1+m+n
d_m'60''7495'1'43'm'43'n_4720 :: Integer -> Integer -> AgdaAny
d_m'60''7495'1'43'm'43'n_4720 v0 ~v1
  = du_m'60''7495'1'43'm'43'n_4720 v0
du_m'60''7495'1'43'm'43'n_4720 :: Integer -> AgdaAny
du_m'60''7495'1'43'm'43'n_4720 v0
  = coe
      du_'60''8658''60''7495'_1582
      (coe
         du_m'8804'm'43'n_2316 (coe addInt (coe (1 :: Integer)) (coe v0)))
-- Data.Nat.Properties.<ᵇ⇒<″
d_'60''7495''8658''60''8243'_4728 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188
d_'60''7495''8658''60''8243'_4728 v0 v1 ~v2
  = du_'60''7495''8658''60''8243'_4728 v0 v1
du_'60''7495''8658''60''8243'_4728 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188
du_'60''7495''8658''60''8243'_4728 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1
         (addInt (coe (1 :: Integer)) (coe v0)))
-- Data.Nat.Properties.<″⇒<ᵇ
d_'60''8243''8658''60''7495'_4740 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 -> AgdaAny
d_'60''8243''8658''60''7495'_4740 v0 ~v1 v2
  = du_'60''8243''8658''60''7495'_4740 v0 v2
du_'60''8243''8658''60''7495'_4740 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 -> AgdaAny
du_'60''8243''8658''60''7495'_4740 v0 v1
  = coe
      seq (coe v1)
      (coe
         du_'60''8658''60''7495'_1582
         (coe
            du_m'8804'm'43'n_2316 (coe addInt (coe (1 :: Integer)) (coe v0))))
-- Data.Nat.Properties.≤″⇒≤
d_'8804''8243''8658''8804'_4744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''8243''8658''8804'_4744 v0 ~v1 v2
  = du_'8804''8243''8658''8804'_4744 v0 v2
du_'8804''8243''8658''8804'_4744 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''8243''8658''8804'_4744 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202 v3
               -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe
                       du_'8804''8243''8658''8804'_4744 (coe v2)
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202 v3))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.≤⇒≤″
d_'8804''8658''8804''8243'_4748 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188
d_'8804''8658''8804''8243'_4748 v0 v1 ~v2
  = du_'8804''8658''8804''8243'_4748 v0 v1
du_'8804''8658''8804''8243'_4748 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188
du_'8804''8658''8804''8243'_4748 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202
      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v1 v0)
-- Data.Nat.Properties._<″?_
d__'60''8243''63'__4750 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'60''8243''63'__4750 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (\ v2 -> coe du_'60''7495''8658''60''8243'_4728 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Data.Bool.Properties.d_T'63'_2210
         (coe ltInt (coe v0) (coe v1)))
-- Data.Nat.Properties._≤″?_
d__'8804''8243''63'__4756 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''8243''63'__4756 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.C__because__46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.C_of'696'_22
                (coe
                   MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202 v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d__'60''8243''63'__4750 (coe v2) (coe v1)
-- Data.Nat.Properties._≥″?_
d__'8805''8243''63'__4764 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8805''8243''63'__4764 v0 v1
  = coe d__'8804''8243''63'__4756 (coe v1) (coe v0)
-- Data.Nat.Properties._>″?_
d__'62''8243''63'__4766 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'62''8243''63'__4766 v0 v1
  = coe d__'60''8243''63'__4750 (coe v1) (coe v0)
-- Data.Nat.Properties.≤″-irrelevant
d_'8804''8243''45'irrelevant_4768 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''8243''45'irrelevant_4768 = erased
-- Data.Nat.Properties.<″-irrelevant
d_'60''8243''45'irrelevant_4786 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''8243''45'irrelevant_4786 = erased
-- Data.Nat.Properties.>″-irrelevant
d_'62''8243''45'irrelevant_4788 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'62''8243''45'irrelevant_4788 = erased
-- Data.Nat.Properties.≥″-irrelevant
d_'8805''8243''45'irrelevant_4790 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8805''8243''45'irrelevant_4790 = erased
-- Data.Nat.Properties.≤‴⇒≤″
d_'8804''8244''8658''8804''8243'_4796 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188
d_'8804''8244''8658''8804''8243'_4796 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'refl_226
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202
             (0 :: Integer)
      MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'step_232 v5
        -> coe
             MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202
             (addInt
                (coe (1 :: Integer))
                (coe
                   MAlonzo.Code.Data.Nat.Base.d_k_198
                   (coe d_ind_4808 (coe v0) (coe v1) (coe v5))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties._.ind
d_ind_4808 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188
d_ind_4808 v0 v1 v2
  = coe
      d_'8804''8244''8658''8804''8243'_4796
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2)
-- Data.Nat.Properties.m≤‴m+k
d_m'8804''8244'm'43'k_4816 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
d_m'8804''8244'm'43'k_4816 ~v0 ~v1 v2 ~v3
  = du_m'8804''8244'm'43'k_4816 v2
du_m'8804''8244'm'43'k_4816 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
du_m'8804''8244'm'43'k_4816 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'refl_226
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Nat.Base.C_'8804''8244''45'step_232
             (coe du_m'8804''8244'm'43'k_4816 (coe v1))
-- Data.Nat.Properties.≤″⇒≤‴
d_'8804''8243''8658''8804''8244'_4832 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
d_'8804''8243''8658''8804''8244'_4832 ~v0 ~v1 v2
  = du_'8804''8243''8658''8804''8244'_4832 v2
du_'8804''8243''8658''8804''8244'_4832 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
du_'8804''8243''8658''8804''8244'_4832 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202 v1
        -> coe du_m'8804''8244'm'43'k_4816 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.0≤‴n
d_0'8804''8244'n_4840 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
d_0'8804''8244'n_4840 v0 = coe du_m'8804''8244'm'43'k_4816 (coe v0)
-- Data.Nat.Properties.<ᵇ⇒<‴
d_'60''7495''8658''60''8244'_4848 ::
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
d_'60''7495''8658''60''8244'_4848 v0 v1 ~v2
  = du_'60''7495''8658''60''8244'_4848 v0 v1
du_'60''7495''8658''60''8244'_4848 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
du_'60''7495''8658''60''8244'_4848 v0 v1
  = coe
      du_'8804''8243''8658''8804''8244'_4832
      (coe du_'60''7495''8658''60''8243'_4728 (coe v0) (coe v1))
-- Data.Nat.Properties.<‴⇒<ᵇ
d_'60''8244''8658''60''7495'_4860 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222 -> AgdaAny
d_'60''8244''8658''60''7495'_4860 v0 v1 v2
  = coe
      du_'60''8243''8658''60''7495'_4740 (coe v0)
      (coe
         d_'8804''8244''8658''8804''8243'_4796
         (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1) (coe v2))
-- Data.Nat.Properties._<‴?_
d__'60''8244''63'__4864 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'60''8244''63'__4864 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      (\ v2 -> coe du_'60''7495''8658''60''8244'_4848 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Data.Bool.Properties.d_T'63'_2210
         (coe ltInt (coe v0) (coe v1)))
-- Data.Nat.Properties._≤‴?_
d__'8804''8244''63'__4870 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''8244''63'__4870 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.C__because__46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.C_of'696'_22
                (coe d_0'8804''8244'n_4840 (coe v1)))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d__'60''8244''63'__4864 (coe v2) (coe v1)
-- Data.Nat.Properties._≥‴?_
d__'8805''8244''63'__4878 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8805''8244''63'__4878 v0 v1
  = coe d__'8804''8244''63'__4870 (coe v1) (coe v0)
-- Data.Nat.Properties._>‴?_
d__'62''8244''63'__4880 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'62''8244''63'__4880 v0 v1
  = coe d__'60''8244''63'__4864 (coe v1) (coe v0)
-- Data.Nat.Properties.≤⇒≤‴
d_'8804''8658''8804''8244'_4882 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
d_'8804''8658''8804''8244'_4882 v0 v1 ~v2
  = du_'8804''8658''8804''8244'_4882 v0 v1
du_'8804''8658''8804''8244'_4882 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222
du_'8804''8658''8804''8244'_4882 v0 v1
  = coe
      du_'8804''8243''8658''8804''8244'_4832
      (coe du_'8804''8658''8804''8243'_4748 (coe v0) (coe v1))
-- Data.Nat.Properties.≤‴⇒≤
d_'8804''8244''8658''8804'_4884 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8244'__222 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''8244''8658''8804'_4884 v0 v1 v2
  = coe
      du_'8804''8243''8658''8804'_4744 (coe v0)
      (coe
         d_'8804''8244''8658''8804''8243'_4796 (coe v0) (coe v1) (coe v2))
-- Data.Nat.Properties.eq?
d_eq'63'_4890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Function.Injection.T_Injection_88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_eq'63'_4890 ~v0 ~v1 v2 = du_eq'63'_4890 v2
du_eq'63'_4890 ::
  MAlonzo.Code.Function.Injection.T_Injection_88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_eq'63'_4890 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_via'45'injection_68
      (coe v0) (coe d__'8799'__1528)
-- Data.Nat.Properties._*-mono_
d__'42''45'mono__4894 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d__'42''45'mono__4894 v0 v1 v2 v3 v4 v5
  = coe du_'42''45'mono'45''8804'_2824 v1 v3 v4 v5
-- Data.Nat.Properties._+-mono_
d__'43''45'mono__4896 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d__'43''45'mono__4896 v0 v1 v2 v3 v4 v5
  = coe du_'43''45'mono'45''8804'_2398 v3 v4 v5
-- Data.Nat.Properties.+-right-identity
d_'43''45'right'45'identity_4898 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'right'45'identity_4898 = erased
-- Data.Nat.Properties.*-right-zero
d_'42''45'right'45'zero_4900 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'right'45'zero_4900 = erased
-- Data.Nat.Properties.distribʳ-*-+
d_distrib'691''45''42''45''43'_4902 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_distrib'691''45''42''45''43'_4902 = erased
-- Data.Nat.Properties.*-distrib-∸ʳ
d_'42''45'distrib'45''8760''691'_4904 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45'distrib'45''8760''691'_4904 = erased
-- Data.Nat.Properties.cancel-+-left
d_cancel'45''43''45'left_4906 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cancel'45''43''45'left_4906 = erased
-- Data.Nat.Properties.cancel-+-left-≤
d_cancel'45''43''45'left'45''8804'_4908 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_cancel'45''43''45'left'45''8804'_4908 v0 v1 v2 v3
  = coe du_'43''45'cancel'737''45''8804'_2242 v0 v3
-- Data.Nat.Properties.cancel-*-right
d_cancel'45''42''45'right_4910 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cancel'45''42''45'right_4910 = erased
-- Data.Nat.Properties.cancel-*-right-≤
d_cancel'45''42''45'right'45''8804'_4912 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_cancel'45''42''45'right'45''8804'_4912 v0 v1 v2 v3
  = coe du_'42''45'cancel'691''45''8804'_2792 v0
-- Data.Nat.Properties.strictTotalOrder
d_strictTotalOrder_4914 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_strictTotalOrder_4914 = coe d_'60''45'strictTotalOrder_1934
-- Data.Nat.Properties.isCommutativeSemiring
d_isCommutativeSemiring_4916 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring_4916
  = coe d_'43''45''42''45'isCommutativeSemiring_2624
-- Data.Nat.Properties.commutativeSemiring
d_commutativeSemiring_4918 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_commutativeSemiring_4918
  = coe d_'43''45''42''45'commutativeSemiring_2642
-- Data.Nat.Properties.isDistributiveLattice
d_isDistributiveLattice_4920 ::
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_isDistributiveLattice_4920
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'isDistributiveLattice_1962
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.distributiveLattice
d_distributiveLattice_4922 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_distributiveLattice_4922
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinMaxOp.du_'8851''45''8852''45'distributiveLattice_1972
      (coe d_'8804''45'totalPreorder_1696)
      (coe d_'8851''45'operator_3094) (coe d_'8852''45'operator_3096)
-- Data.Nat.Properties.⊔-⊓-0-isSemiringWithoutOne
d_'8852''45''8851''45'0'45'isSemiringWithoutOne_4924 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiringWithoutOne_952
d_'8852''45''8851''45'0'45'isSemiringWithoutOne_4924
  = coe d_'8852''45''8851''45'isSemiringWithoutOne_3510
-- Data.Nat.Properties.⊔-⊓-0-isCommutativeSemiringWithoutOne
d_'8852''45''8851''45'0'45'isCommutativeSemiringWithoutOne_4926 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiringWithoutOne_1044
d_'8852''45''8851''45'0'45'isCommutativeSemiringWithoutOne_4926
  = coe d_'8852''45''8851''45'isCommutativeSemiringWithoutOne_3512
-- Data.Nat.Properties.⊔-⊓-0-commutativeSemiringWithoutOne
d_'8852''45''8851''45'0'45'commutativeSemiringWithoutOne_4928 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiringWithoutOne_1598
d_'8852''45''8851''45'0'45'commutativeSemiringWithoutOne_4928
  = coe d_'8852''45''8851''45'commutativeSemiringWithoutOne_3514
-- Data.Nat.Properties.¬i+1+j≤i
d_'172'i'43'1'43'j'8804'i_4930 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'172'i'43'1'43'j'8804'i_4930 = erased
-- Data.Nat.Properties.≤-steps
d_'8804''45'steps_4932 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''45'steps_4932 ~v0 ~v1 ~v2 v3 = du_'8804''45'steps_4932 v3
du_'8804''45'steps_4932 ::
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804''45'steps_4932 v0 = coe v0
-- Data.Nat.Properties.i∸k∸j+j∸k≡i+j∸k
d_i'8760'k'8760'j'43'j'8760'k'8801'i'43'j'8760'k_4940 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'8760'k'8760'j'43'j'8760'k'8801'i'43'j'8760'k_4940 = erased
-- Data.Nat.Properties.im≡jm+n⇒[i∸j]m≡n
d_im'8801'jm'43'n'8658''91'i'8760'j'93'm'8801'n_4976 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_im'8801'jm'43'n'8658''91'i'8760'j'93'm'8801'n_4976 = erased
-- Data.Nat.Properties.≤+≢⇒<
d_'8804''43''8802''8658''60'_4992 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804''43''8802''8658''60'_4992 v0 v1 v2 v3
  = coe du_'8804''8743''8802''8658''60'_1800 v1 v2
-- Data.Nat.Properties.≤-irrelevance
d_'8804''45'irrelevance_4994 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevance_4994 = erased
-- Data.Nat.Properties.<-irrelevance
d_'60''45'irrelevance_4996 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevance_4996 = erased
-- Data.Nat.Properties.i+1+j≢i
d_i'43'1'43'j'8802'i_4998 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_i'43'1'43'j'8802'i_4998 = erased
-- Data.Nat.Properties.i+j≡0⇒i≡0
d_i'43'j'8801'0'8658'i'8801'0_5000 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'43'j'8801'0'8658'i'8801'0_5000 = erased
-- Data.Nat.Properties.i+j≡0⇒j≡0
d_i'43'j'8801'0'8658'j'8801'0_5002 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'43'j'8801'0'8658'j'8801'0_5002 = erased
-- Data.Nat.Properties.i+1+j≰i
d_i'43'1'43'j'8816'i_5004 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_i'43'1'43'j'8816'i_5004 = erased
-- Data.Nat.Properties.i*j≡0⇒i≡0∨j≡0
d_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5006 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_i'42'j'8801'0'8658'i'8801'0'8744'j'8801'0_5006 v0 v1 v2
  = coe du_m'42'n'8801'0'8658'm'8801'0'8744'n'8801'0_2682 v0
-- Data.Nat.Properties.i*j≡1⇒i≡1
d_i'42'j'8801'1'8658'i'8801'1_5008 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'42'j'8801'1'8658'i'8801'1_5008 = erased
-- Data.Nat.Properties.i*j≡1⇒j≡1
d_i'42'j'8801'1'8658'j'8801'1_5010 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'42'j'8801'1'8658'j'8801'1_5010 = erased
-- Data.Nat.Properties.i^j≡0⇒i≡0
d_i'94'j'8801'0'8658'i'8801'0_5012 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_i'94'j'8801'0'8658'i'8801'0_5012 = erased
-- Data.Nat.Properties.i^j≡1⇒j≡0∨i≡1
d_i'94'j'8801'1'8658'j'8801'0'8744'i'8801'1_5014 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_i'94'j'8801'1'8658'j'8801'0'8744'i'8801'1_5014 v0 v1 v2
  = coe du_m'94'n'8801'1'8658'n'8801'0'8744'm'8801'1_3036 v1
-- Data.Nat.Properties.[i+j]∸[i+k]≡j∸k
d_'91'i'43'j'93''8760''91'i'43'k'93''8801'j'8760'k_5016 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'i'43'j'93''8760''91'i'43'k'93''8801'j'8760'k_5016 = erased
-- Data.Nat.Properties.m≢0⇒suc[pred[m]]≡m
d_m'8802'0'8658'suc'91'pred'91'm'93''93''8801'm_5018 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8802'0'8658'suc'91'pred'91'm'93''93''8801'm_5018 = erased
-- Data.Nat.Properties.n≡m⇒∣n-m∣≡0
d_n'8801'm'8658''8739'n'45'm'8739''8801'0_5020 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'8801'm'8658''8739'n'45'm'8739''8801'0_5020 = erased
-- Data.Nat.Properties.∣n-m∣≡0⇒n≡m
d_'8739'n'45'm'8739''8801'0'8658'n'8801'm_5022 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'45'm'8739''8801'0'8658'n'8801'm_5022 = erased
-- Data.Nat.Properties.∣n-m∣≡n∸m⇒m≤n
d_'8739'n'45'm'8739''8801'n'8760'm'8658'm'8804'n_5024 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8739'n'45'm'8739''8801'n'8760'm'8658'm'8804'n_5024 v0 v1 v2
  = coe du_'8739'm'45'n'8739''8801'm'8760'n'8658'n'8804'm_4292 v0 v1
-- Data.Nat.Properties.∣n-n+m∣≡m
d_'8739'n'45'n'43'm'8739''8801'm_5026 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'45'n'43'm'8739''8801'm_5026 = erased
-- Data.Nat.Properties.∣n+m-n+o∣≡∣m-o|
d_'8739'n'43'm'45'n'43'o'8739''8801''8739'm'45'o'124'_5028 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'n'43'm'45'n'43'o'8739''8801''8739'm'45'o'124'_5028 = erased
-- Data.Nat.Properties.∣m+n-m+o∣≡∣n-o|
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'124'_5030 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8739'm'43'n'45'm'43'o'8739''8801''8739'n'45'o'124'_5030 = erased
-- Data.Nat.Properties.n∸m≤∣n-m∣
d_n'8760'm'8804''8739'n'45'm'8739'_5032 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8760'm'8804''8739'n'45'm'8739'_5032
  = coe d_m'8760'n'8804''8739'm'45'n'8739'_4346
-- Data.Nat.Properties.∣n-m∣≤n⊔m
d_'8739'n'45'm'8739''8804'n'8852'm_5034 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8739'n'45'm'8739''8804'n'8852'm_5034
  = coe d_'8739'm'45'n'8739''8804'm'8852'n_4376
-- Data.Nat.Properties.n≤m+n
d_n'8804'm'43'n_5040 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8804'm'43'n_5040 ~v0 v1 = du_n'8804'm'43'n_5040 v1
du_n'8804'm'43'n_5040 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_n'8804'm'43'n_5040 v0 = coe du_m'8804'm'43'n_2316 (coe v0)
-- Data.Nat.Properties.n≤m+n∸m
d_n'8804'm'43'n'8760'm_5052 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8804'm'43'n'8760'm_5052 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe d_'8804''45'refl_1634 (coe v1)
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (d_n'8804'm'43'n'8760'm_5052 (coe v3) (coe v2))
-- Data.Nat.Properties.∣n-m∣≡[n∸m]∨[m∸n]
d_'8739'n'45'm'8739''8801''91'n'8760'm'93''8744''91'm'8760'n'93'_5066 ::
  Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8739'n'45'm'8739''8801''91'n'8760'm'93''8744''91'm'8760'n'93'_5066 v0
                                                                      v1
  = let v2 = d_'8804''45'total_1648 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_begin'45'equality__190
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du__'8718'_346
                   (coe d_'8804''45'isPreorder_1684)
                   (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Properties.+-*-suc
d_'43''45''42''45'suc_5088 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45''42''45'suc_5088 = erased
-- Data.Nat.Properties.n∸m≤n
d_n'8760'm'8804'n_5094 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8760'm'8804'n_5094 v0 v1
  = coe d_m'8760'n'8804'm_3676 (coe v1) (coe v0)
-- Data.Nat.Properties.∀[m≤n⇒m≢o]⇒o<n
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'o'60'n_5106 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8704''91'm'8804'n'8658'm'8802'o'93''8658'o'60'n_5106 v0 v1 v2
  = coe
      du_'8704''91'm'8804'n'8658'm'8802'o'93''8658'n'60'o_1992 v0 v1
-- Data.Nat.Properties.∀[m<n⇒m≢o]⇒o≤n
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'o'8804'n_5114 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8704''91'm'60'n'8658'm'8802'o'93''8658'o'8804'n_5114 v0 v1 v2
  = coe
      du_'8704''91'm'60'n'8658'm'8802'o'93''8658'n'8804'o_2020 v0 v1
-- Data.Nat.Properties.*-+-isSemiring
d_'42''45''43''45'isSemiring_5116 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_'42''45''43''45'isSemiring_5116
  = coe d_'43''45''42''45'isSemiring_2622
-- Data.Nat.Properties.*-+-isCommutativeSemiring
d_'42''45''43''45'isCommutativeSemiring_5118 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_'42''45''43''45'isCommutativeSemiring_5118
  = coe d_'43''45''42''45'isCommutativeSemiring_2624
-- Data.Nat.Properties.*-+-semiring
d_'42''45''43''45'semiring_5120 ::
  MAlonzo.Code.Algebra.Bundles.T_Semiring_1932
d_'42''45''43''45'semiring_5120
  = coe d_'43''45''42''45'semiring_2640
-- Data.Nat.Properties.*-+-commutativeSemiring
d_'42''45''43''45'commutativeSemiring_5122 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_'42''45''43''45'commutativeSemiring_5122
  = coe d_'43''45''42''45'commutativeSemiring_2642
-- Data.Nat.Properties.m≤n⇒n⊔m≡n
d_m'8804'n'8658'n'8852'm'8801'n_5124 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'n'8852'm'8801'n_5124 = erased
-- Data.Nat.Properties.m≤n⇒n⊓m≡m
d_m'8804'n'8658'n'8851'm'8801'm_5126 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'n'8851'm'8801'm_5126 = erased
-- Data.Nat.Properties.n⊔m≡m⇒n≤m
d_n'8852'm'8801'm'8658'n'8804'm_5128 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8852'm'8801'm'8658'n'8804'm_5128
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.n⊔m≡n⇒m≤n
d_n'8852'm'8801'n'8658'm'8804'n_5130 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8852'm'8801'n'8658'm'8804'n_5130
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.n≤m⊔n
d_n'8804'm'8852'n_5132 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8804'm'8852'n_5132
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8804'y_1652
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊔-least
d_'8852''45'least_5134 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8852''45'least_5134
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-greatest
d_'8851''45'greatest_5136 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'greatest_5136
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊔-pres-≤m
d_'8852''45'pres'45''8804'm_5138 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8852''45'pres'45''8804'm_5138
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8852''45'operator_3096 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe
         MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
         (coe v0))
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
         (coe v1))
-- Data.Nat.Properties.⊓-pres-m≤
d_'8851''45'pres'45'm'8804'_5140 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8851''45'pres'45'm'8804'_5140
  = let v0 = d_'8804''45'totalPreorder_1696 in
    let v1 = d_'8851''45'operator_3094 in
    coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'glb_2100
      (coe v0) (coe v1)
-- Data.Nat.Properties.⊔-abs-⊓
d_'8852''45'abs'45''8851'_5142 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8852''45'abs'45''8851'_5142 = erased
-- Data.Nat.Properties.⊓-abs-⊔
d_'8851''45'abs'45''8852'_5144 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8851''45'abs'45''8852'_5144 = erased
