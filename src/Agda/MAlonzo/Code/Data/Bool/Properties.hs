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

module MAlonzo.Code.Data.Bool.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.BooleanAlgebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Data.Bool.Properties._._Absorbs_
d__Absorbs__8 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__Absorbs__8 = erased
-- Data.Bool.Properties._._DistributesOver_
d__DistributesOver__10 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__DistributesOver__10 = erased
-- Data.Bool.Properties._._DistributesOverʳ_
d__DistributesOver'691'__12 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__DistributesOver'691'__12 = erased
-- Data.Bool.Properties._._DistributesOverˡ_
d__DistributesOver'737'__14 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d__DistributesOver'737'__14 = erased
-- Data.Bool.Properties._.Absorptive
d_Absorptive_18 ::
  (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Absorptive_18 = erased
-- Data.Bool.Properties._.Associative
d_Associative_26 :: (Bool -> Bool -> Bool) -> ()
d_Associative_26 = erased
-- Data.Bool.Properties._.Commutative
d_Commutative_30 :: (Bool -> Bool -> Bool) -> ()
d_Commutative_30 = erased
-- Data.Bool.Properties._.Idempotent
d_Idempotent_38 :: (Bool -> Bool -> Bool) -> ()
d_Idempotent_38 = erased
-- Data.Bool.Properties._.Identity
d_Identity_42 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Identity_42 = erased
-- Data.Bool.Properties._.Inverse
d_Inverse_46 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_Inverse_46 = erased
-- Data.Bool.Properties._.Involutive
d_Involutive_48 :: (Bool -> Bool) -> ()
d_Involutive_48 = erased
-- Data.Bool.Properties._.LeftIdentity
d_LeftIdentity_56 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftIdentity_56 = erased
-- Data.Bool.Properties._.LeftInverse
d_LeftInverse_58 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_LeftInverse_58 = erased
-- Data.Bool.Properties._.LeftZero
d_LeftZero_60 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_LeftZero_60 = erased
-- Data.Bool.Properties._.RightIdentity
d_RightIdentity_68 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightIdentity_68 = erased
-- Data.Bool.Properties._.RightInverse
d_RightInverse_70 ::
  Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d_RightInverse_70 = erased
-- Data.Bool.Properties._.RightZero
d_RightZero_72 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_RightZero_72 = erased
-- Data.Bool.Properties._.Selective
d_Selective_74 :: (Bool -> Bool -> Bool) -> ()
d_Selective_74 = erased
-- Data.Bool.Properties._.Zero
d_Zero_76 :: Bool -> (Bool -> Bool -> Bool) -> ()
d_Zero_76 = erased
-- Data.Bool.Properties._.IsBand
d_IsBand_82 a0 = ()
-- Data.Bool.Properties._.IsBooleanAlgebra
d_IsBooleanAlgebra_84 a0 a1 a2 a3 a4 = ()
-- Data.Bool.Properties._.IsCommutativeMonoid
d_IsCommutativeMonoid_92 a0 a1 = ()
-- Data.Bool.Properties._.IsCommutativeSemiring
d_IsCommutativeSemiring_98 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._.IsDistributiveLattice
d_IsDistributiveLattice_102 a0 a1 = ()
-- Data.Bool.Properties._.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_106 a0 a1 = ()
-- Data.Bool.Properties._.IsLattice
d_IsLattice_108 a0 a1 = ()
-- Data.Bool.Properties._.IsMagma
d_IsMagma_110 a0 = ()
-- Data.Bool.Properties._.IsMonoid
d_IsMonoid_112 a0 a1 = ()
-- Data.Bool.Properties._.IsSemigroup
d_IsSemigroup_120 a0 = ()
-- Data.Bool.Properties._.IsSemilattice
d_IsSemilattice_122 a0 = ()
-- Data.Bool.Properties._.IsSemiring
d_IsSemiring_124 a0 a1 a2 a3 = ()
-- Data.Bool.Properties._≟_
d__'8799'__1510 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__1510 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Relation.Nullary.C__because__46 (coe v1)
                    (coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 erased)
             else coe
                    MAlonzo.Code.Relation.Nullary.C__because__46 (coe v1)
                    (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
      else (if coe v1
              then coe
                     MAlonzo.Code.Relation.Nullary.C__because__46 (coe v0)
                     (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
              else coe
                     MAlonzo.Code.Relation.Nullary.C__because__46
                     (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                     (coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 erased))
-- Data.Bool.Properties.≡-setoid
d_'8801''45'setoid_1512 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_1512
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250
-- Data.Bool.Properties.≡-decSetoid
d_'8801''45'decSetoid_1514 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_1514
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_254
      (coe d__'8799'__1510)
-- Data.Bool.Properties.≤-reflexive
d_'8804''45'reflexive_1516 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'reflexive_1516 ~v0 ~v1 ~v2
  = du_'8804''45'reflexive_1516
du_'8804''45'reflexive_1516 ::
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'reflexive_1516
  = coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
-- Data.Bool.Properties.≤-refl
d_'8804''45'refl_1518 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'refl_1518 ~v0 = du_'8804''45'refl_1518
du_'8804''45'refl_1518 :: MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'refl_1518 = coe du_'8804''45'reflexive_1516
-- Data.Bool.Properties.≤-trans
d_'8804''45'trans_1520 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'trans_1520 ~v0 ~v1 ~v2 v3 v4
  = du_'8804''45'trans_1520 v3 v4
du_'8804''45'trans_1520 ::
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10
du_'8804''45'trans_1520 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
        -> coe seq (coe v1) (coe v0)
      MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Bool.Properties.≤-antisym
d_'8804''45'antisym_1524 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_1524 = erased
-- Data.Bool.Properties.≤-minimum
d_'8804''45'minimum_1526 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'minimum_1526 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
      else coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
-- Data.Bool.Properties.≤-maximum
d_'8804''45'maximum_1528 ::
  Bool -> MAlonzo.Code.Data.Bool.Base.T__'8804'__10
d_'8804''45'maximum_1528 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16
      else coe MAlonzo.Code.Data.Bool.Base.C_f'8804't_12
-- Data.Bool.Properties.≤-total
d_'8804''45'total_1530 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_1530 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe d_'8804''45'maximum_1528 (coe v1))
      else coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
             (coe d_'8804''45'minimum_1526 (coe v1))
-- Data.Bool.Properties._≤?_
d__'8804''63'__1536 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''63'__1536 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Relation.Nullary.C__because__46 (coe v1)
                    (coe
                       MAlonzo.Code.Relation.Nullary.C_of'696'_22
                       (coe MAlonzo.Code.Data.Bool.Base.C_b'8804'b_16))
             else coe
                    MAlonzo.Code.Relation.Nullary.C__because__46 (coe v1)
                    (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
      else coe
             MAlonzo.Code.Relation.Nullary.C__because__46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.C_of'696'_22
                (coe d_'8804''45'minimum_1526 (coe v1)))
-- Data.Bool.Properties.≤-irrelevant
d_'8804''45'irrelevant_1540 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'irrelevant_1540 = erased
-- Data.Bool.Properties.≤-isPreorder
d_'8804''45'isPreorder_1542 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_1542
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (\ v0 v1 v2 -> coe du_'8804''45'reflexive_1516)
      (\ v0 v1 v2 v3 v4 -> coe du_'8804''45'trans_1520 v3 v4)
-- Data.Bool.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_1544 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8804''45'isPartialOrder_1544
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe d_'8804''45'isPreorder_1542) erased
-- Data.Bool.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_1546 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_'8804''45'isTotalOrder_1546
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_15387
      (coe d_'8804''45'isPartialOrder_1544) (coe d_'8804''45'total_1530)
-- Data.Bool.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_1548 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_'8804''45'isDecTotalOrder_1548
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
      (coe d_'8804''45'isTotalOrder_1546) (coe d__'8799'__1510)
      (coe d__'8804''63'__1536)
-- Data.Bool.Properties.≤-poset
d_'8804''45'poset_1550 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_'8804''45'poset_1550
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      d_'8804''45'isPartialOrder_1544
-- Data.Bool.Properties.≤-preorder
d_'8804''45'preorder_1552 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_1552
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      d_'8804''45'isPreorder_1542
-- Data.Bool.Properties.≤-totalOrder
d_'8804''45'totalOrder_1554 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
d_'8804''45'totalOrder_1554
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_10811
      d_'8804''45'isTotalOrder_1546
-- Data.Bool.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_1556 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_'8804''45'decTotalOrder_1556
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      d_'8804''45'isDecTotalOrder_1548
-- Data.Bool.Properties.<-irrefl
d_'60''45'irrefl_1558 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''45'irrefl_1558 = erased
-- Data.Bool.Properties.<-asym
d_'60''45'asym_1560 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''45'asym_1560 = erased
-- Data.Bool.Properties.<-trans
d_'60''45'trans_1562 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans_1562 = erased
-- Data.Bool.Properties.<-transʳ
d_'60''45'trans'691'_1564 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans'691'_1564 = erased
-- Data.Bool.Properties.<-transˡ
d_'60''45'trans'737'_1566 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18
d_'60''45'trans'737'_1566 = erased
-- Data.Bool.Properties.<-cmp
d_'60''45'cmp_1568 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_'60''45'cmp_1568 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 erased
             else coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166 erased
      else (if coe v1
              then coe
                     MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150 erased
              else coe
                     MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 erased)
-- Data.Bool.Properties._<?_
d__'60''63'__1570 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'60''63'__1570 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Relation.Nullary.C__because__46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
      else (if coe v1
              then coe
                     MAlonzo.Code.Relation.Nullary.C__because__46 (coe v1)
                     (coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 erased)
              else coe
                     MAlonzo.Code.Relation.Nullary.C__because__46 (coe v1)
                     (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26))
-- Data.Bool.Properties.<-resp₂-≡
d_'60''45'resp'8322''45''8801'_1572 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'8322''45''8801'_1572
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.Bool.Properties.<-irrelevant
d_'60''45'irrelevant_1578 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Data.Bool.Base.T__'60'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'60''45'irrelevant_1578 = erased
-- Data.Bool.Properties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_1580 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_'60''45'isStrictPartialOrder_1580
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_9921
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased d_'60''45'resp'8322''45''8801'_1572
-- Data.Bool.Properties.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_1582 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
d_'60''45'isStrictTotalOrder_1582
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_19043
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased (coe d_'60''45'cmp_1568)
-- Data.Bool.Properties.<-strictPartialOrder
d_'60''45'strictPartialOrder_1584 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
d_'60''45'strictPartialOrder_1584
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_7693
      d_'60''45'isStrictPartialOrder_1580
-- Data.Bool.Properties.<-strictTotalOrder
d_'60''45'strictTotalOrder_1586 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_'60''45'strictTotalOrder_1586
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_14573
      d_'60''45'isStrictTotalOrder_1582
-- Data.Bool.Properties.∨-assoc
d_'8744''45'assoc_1588 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'assoc_1588 = erased
-- Data.Bool.Properties.∨-comm
d_'8744''45'comm_1598 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'comm_1598 = erased
-- Data.Bool.Properties.∨-identityˡ
d_'8744''45'identity'737'_1600 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'identity'737'_1600 = erased
-- Data.Bool.Properties.∨-identityʳ
d_'8744''45'identity'691'_1602 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'identity'691'_1602 = erased
-- Data.Bool.Properties.∨-identity
d_'8744''45'identity_1604 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'identity_1604
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-zeroˡ
d_'8744''45'zero'737'_1606 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'zero'737'_1606 = erased
-- Data.Bool.Properties.∨-zeroʳ
d_'8744''45'zero'691'_1608 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'zero'691'_1608 = erased
-- Data.Bool.Properties.∨-zero
d_'8744''45'zero_1610 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'zero_1610
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-inverseˡ
d_'8744''45'inverse'737'_1612 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'inverse'737'_1612 = erased
-- Data.Bool.Properties.∨-inverseʳ
d_'8744''45'inverse'691'_1614 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'inverse'691'_1614 = erased
-- Data.Bool.Properties.∨-inverse
d_'8744''45'inverse_1618 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'inverse_1618
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-idem
d_'8744''45'idem_1620 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'idem_1620 = erased
-- Data.Bool.Properties.∨-sel
d_'8744''45'sel_1622 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8744''45'sel_1622 v0 ~v1 = du_'8744''45'sel_1622 v0
du_'8744''45'sel_1622 ::
  Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8744''45'sel_1622 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      else coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
-- Data.Bool.Properties.∨-isMagma
d_'8744''45'isMagma_1628 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8744''45'isMagma_1628
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_447
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased
-- Data.Bool.Properties.∨-magma
d_'8744''45'magma_1630 :: MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8744''45'magma_1630
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_447
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30 d_'8744''45'isMagma_1628
-- Data.Bool.Properties.∨-isSemigroup
d_'8744''45'isSemigroup_1632 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8744''45'isSemigroup_1632
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_3427
      (coe d_'8744''45'isMagma_1628) erased
-- Data.Bool.Properties.∨-semigroup
d_'8744''45'semigroup_1634 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'8744''45'semigroup_1634
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_3121
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      d_'8744''45'isSemigroup_1632
-- Data.Bool.Properties.∨-isBand
d_'8744''45'isBand_1636 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8744''45'isBand_1636
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_4163
      (coe d_'8744''45'isSemigroup_1632) erased
-- Data.Bool.Properties.∨-band
d_'8744''45'band_1638 :: MAlonzo.Code.Algebra.Bundles.T_Band_266
d_'8744''45'band_1638
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_4059
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30 d_'8744''45'isBand_1636
-- Data.Bool.Properties.∨-isSemilattice
d_'8744''45'isSemilattice_1640 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8744''45'isSemilattice_1640
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemilattice'46'constructor_5951
      (coe d_'8744''45'isBand_1636) erased
-- Data.Bool.Properties.∨-semilattice
d_'8744''45'semilattice_1642 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8744''45'semilattice_1642
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semilattice'46'constructor_6221
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      d_'8744''45'isSemilattice_1640
-- Data.Bool.Properties.∨-isMonoid
d_'8744''45'isMonoid_1644 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8744''45'isMonoid_1644
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
      (coe d_'8744''45'isSemigroup_1632) (coe d_'8744''45'identity_1604)
-- Data.Bool.Properties.∨-isCommutativeMonoid
d_'8744''45'isCommutativeMonoid_1646 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'8744''45'isCommutativeMonoid_1646
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe d_'8744''45'isMonoid_1644) erased
-- Data.Bool.Properties.∨-commutativeMonoid
d_'8744''45'commutativeMonoid_1648 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'8744''45'commutativeMonoid_1648
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_8947
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45'isCommutativeMonoid_1646
-- Data.Bool.Properties.∨-isIdempotentCommutativeMonoid
d_'8744''45'isIdempotentCommutativeMonoid_1650 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_464
d_'8744''45'isIdempotentCommutativeMonoid_1650
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsIdempotentCommutativeMonoid'46'constructor_9755
      (coe d_'8744''45'isCommutativeMonoid_1646) erased
-- Data.Bool.Properties.∨-idempotentCommutativeMonoid
d_'8744''45'idempotentCommutativeMonoid_1652 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674
d_'8744''45'idempotentCommutativeMonoid_1652
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentCommutativeMonoid'46'constructor_10489
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45'isIdempotentCommutativeMonoid_1650
-- Data.Bool.Properties.∧-assoc
d_'8743''45'assoc_1654 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'assoc_1654 = erased
-- Data.Bool.Properties.∧-comm
d_'8743''45'comm_1664 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'comm_1664 = erased
-- Data.Bool.Properties.∧-identityˡ
d_'8743''45'identity'737'_1666 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'identity'737'_1666 = erased
-- Data.Bool.Properties.∧-identityʳ
d_'8743''45'identity'691'_1668 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'identity'691'_1668 = erased
-- Data.Bool.Properties.∧-identity
d_'8743''45'identity_1670 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'identity_1670
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-zeroˡ
d_'8743''45'zero'737'_1672 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'zero'737'_1672 = erased
-- Data.Bool.Properties.∧-zeroʳ
d_'8743''45'zero'691'_1674 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'zero'691'_1674 = erased
-- Data.Bool.Properties.∧-zero
d_'8743''45'zero_1676 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'zero_1676
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-inverseˡ
d_'8743''45'inverse'737'_1678 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'inverse'737'_1678 = erased
-- Data.Bool.Properties.∧-inverseʳ
d_'8743''45'inverse'691'_1680 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'inverse'691'_1680 = erased
-- Data.Bool.Properties.∧-inverse
d_'8743''45'inverse_1684 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'inverse_1684
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-idem
d_'8743''45'idem_1686 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'idem_1686 = erased
-- Data.Bool.Properties.∧-sel
d_'8743''45'sel_1688 ::
  Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8743''45'sel_1688 v0 ~v1 = du_'8743''45'sel_1688 v0
du_'8743''45'sel_1688 ::
  Bool -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8743''45'sel_1688 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
      else coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
-- Data.Bool.Properties.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_1694 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'737''45''8744'_1694 = erased
-- Data.Bool.Properties.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_1704 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'distrib'691''45''8744'_1704 = erased
-- Data.Bool.Properties.∧-distrib-∨
d_'8743''45'distrib'45''8744'_1712 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_1712
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_1714 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'737''45''8743'_1714 = erased
-- Data.Bool.Properties.∨-distribʳ-∧
d_'8744''45'distrib'691''45''8743'_1724 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'distrib'691''45''8743'_1724 = erased
-- Data.Bool.Properties.∨-distrib-∧
d_'8744''45'distrib'45''8743'_1732 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_1732
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-abs-∨
d_'8743''45'abs'45''8744'_1734 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45'abs'45''8744'_1734 = erased
-- Data.Bool.Properties.∨-abs-∧
d_'8744''45'abs'45''8743'_1740 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45'abs'45''8743'_1740 = erased
-- Data.Bool.Properties.∨-∧-absorptive
d_'8744''45''8743''45'absorptive_1746 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45''8743''45'absorptive_1746
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Bool.Properties.∧-isMagma
d_'8743''45'isMagma_1748 ::
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8743''45'isMagma_1748
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_447
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased
-- Data.Bool.Properties.∧-magma
d_'8743''45'magma_1750 :: MAlonzo.Code.Algebra.Bundles.T_Magma_36
d_'8743''45'magma_1750
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Magma'46'constructor_447
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24 d_'8743''45'isMagma_1748
-- Data.Bool.Properties.∧-isSemigroup
d_'8743''45'isSemigroup_1752 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8743''45'isSemigroup_1752
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_3427
      (coe d_'8743''45'isMagma_1748) erased
-- Data.Bool.Properties.∧-semigroup
d_'8743''45'semigroup_1754 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206
d_'8743''45'semigroup_1754
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semigroup'46'constructor_3121
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8743''45'isSemigroup_1752
-- Data.Bool.Properties.∧-isBand
d_'8743''45'isBand_1756 ::
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8743''45'isBand_1756
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_4163
      (coe d_'8743''45'isSemigroup_1752) erased
-- Data.Bool.Properties.∧-band
d_'8743''45'band_1758 :: MAlonzo.Code.Algebra.Bundles.T_Band_266
d_'8743''45'band_1758
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Band'46'constructor_4059
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24 d_'8743''45'isBand_1756
-- Data.Bool.Properties.∧-isSemilattice
d_'8743''45'isSemilattice_1760 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8743''45'isSemilattice_1760
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemilattice'46'constructor_5951
      (coe d_'8743''45'isBand_1756) erased
-- Data.Bool.Properties.∧-semilattice
d_'8743''45'semilattice_1762 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8743''45'semilattice_1762
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semilattice'46'constructor_6221
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8743''45'isSemilattice_1760
-- Data.Bool.Properties.∧-isMonoid
d_'8743''45'isMonoid_1764 ::
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8743''45'isMonoid_1764
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
      (coe d_'8743''45'isSemigroup_1752) (coe d_'8743''45'identity_1670)
-- Data.Bool.Properties.∧-isCommutativeMonoid
d_'8743''45'isCommutativeMonoid_1766 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'8743''45'isCommutativeMonoid_1766
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe d_'8743''45'isMonoid_1764) erased
-- Data.Bool.Properties.∧-commutativeMonoid
d_'8743''45'commutativeMonoid_1768 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_582
d_'8743''45'commutativeMonoid_1768
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_8947
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8743''45'isCommutativeMonoid_1766
-- Data.Bool.Properties.∧-isIdempotentCommutativeMonoid
d_'8743''45'isIdempotentCommutativeMonoid_1770 ::
  MAlonzo.Code.Algebra.Structures.T_IsIdempotentCommutativeMonoid_464
d_'8743''45'isIdempotentCommutativeMonoid_1770
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsIdempotentCommutativeMonoid'46'constructor_9755
      (coe d_'8743''45'isCommutativeMonoid_1766) erased
-- Data.Bool.Properties.∧-idempotentCommutativeMonoid
d_'8743''45'idempotentCommutativeMonoid_1772 ::
  MAlonzo.Code.Algebra.Bundles.T_IdempotentCommutativeMonoid_674
d_'8743''45'idempotentCommutativeMonoid_1772
  = coe
      MAlonzo.Code.Algebra.Bundles.C_IdempotentCommutativeMonoid'46'constructor_10489
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8743''45'isIdempotentCommutativeMonoid_1770
-- Data.Bool.Properties.∨-∧-isSemiring
d_'8744''45''8743''45'isSemiring_1774 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_'8744''45''8743''45'isSemiring_1774
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_32891
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677
         (coe d_'8744''45'isCommutativeMonoid_1646)
         (coe d_'8743''45'isMonoid_1764)
         (coe d_'8743''45'distrib'45''8744'_1712))
      (coe d_'8743''45'zero_1676)
-- Data.Bool.Properties.∨-∧-isCommutativeSemiring
d_'8744''45''8743''45'isCommutativeSemiring_1776 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_'8744''45''8743''45'isCommutativeSemiring_1776
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_36165
      (coe d_'8744''45''8743''45'isSemiring_1774) erased
-- Data.Bool.Properties.∨-∧-commutativeSemiring
d_'8744''45''8743''45'commutativeSemiring_1778 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_'8744''45''8743''45'commutativeSemiring_1778
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_32013
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      d_'8744''45''8743''45'isCommutativeSemiring_1776
-- Data.Bool.Properties.∧-∨-isSemiring
d_'8743''45''8744''45'isSemiring_1780 ::
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_'8743''45''8744''45'isSemiring_1780
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_32891
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677
         (coe d_'8743''45'isCommutativeMonoid_1766)
         (coe d_'8744''45'isMonoid_1644)
         (coe d_'8744''45'distrib'45''8743'_1732))
      (coe d_'8744''45'zero_1610)
-- Data.Bool.Properties.∧-∨-isCommutativeSemiring
d_'8743''45''8744''45'isCommutativeSemiring_1782 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_'8743''45''8744''45'isCommutativeSemiring_1782
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_36165
      (coe d_'8743''45''8744''45'isSemiring_1780) erased
-- Data.Bool.Properties.∧-∨-commutativeSemiring
d_'8743''45''8744''45'commutativeSemiring_1784 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_'8743''45''8744''45'commutativeSemiring_1784
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_32013
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8743''45''8744''45'isCommutativeSemiring_1782
-- Data.Bool.Properties.∨-∧-isLattice
d_'8744''45''8743''45'isLattice_1786 ::
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_'8744''45''8743''45'isLattice_1786
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsLattice'46'constructor_17577
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased erased erased erased erased erased
      (coe d_'8744''45''8743''45'absorptive_1746)
-- Data.Bool.Properties.∨-∧-lattice
d_'8744''45''8743''45'lattice_1788 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_'8744''45''8743''45'lattice_1788
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Lattice'46'constructor_16803
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8744''45''8743''45'isLattice_1786
-- Data.Bool.Properties.∨-∧-isDistributiveLattice
d_'8744''45''8743''45'isDistributiveLattice_1790 ::
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_'8744''45''8743''45'isDistributiveLattice_1790
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsDistributiveLattice'46'constructor_20873
      (coe d_'8744''45''8743''45'isLattice_1786) erased
-- Data.Bool.Properties.∨-∧-distributiveLattice
d_'8744''45''8743''45'distributiveLattice_1792 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_'8744''45''8743''45'distributiveLattice_1792
  = coe
      MAlonzo.Code.Algebra.Bundles.C_DistributiveLattice'46'constructor_18235
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      d_'8744''45''8743''45'isDistributiveLattice_1790
-- Data.Bool.Properties.∨-∧-isBooleanAlgebra
d_'8744''45''8743''45'isBooleanAlgebra_1794 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanAlgebra_1864
d_'8744''45''8743''45'isBooleanAlgebra_1794
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBooleanAlgebra'46'constructor_53651
      (coe d_'8744''45''8743''45'isDistributiveLattice_1790) erased
      erased erased
-- Data.Bool.Properties.∨-∧-booleanAlgebra
d_'8744''45''8743''45'booleanAlgebra_1796 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920
d_'8744''45''8743''45'booleanAlgebra_1796
  = coe
      MAlonzo.Code.Algebra.Bundles.C_BooleanAlgebra'46'constructor_44759
      MAlonzo.Code.Data.Bool.Base.d__'8744'__30
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      MAlonzo.Code.Data.Bool.Base.d_not_22
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      d_'8744''45''8743''45'isBooleanAlgebra_1794
-- Data.Bool.Properties.xor-is-ok
d_xor'45'is'45'ok_1802 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_xor'45'is'45'ok_1802 = erased
-- Data.Bool.Properties.xor-∧-commutativeRing
d_xor'45''8743''45'commutativeRing_1808 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
d_xor'45''8743''45'commutativeRing_1808
  = coe
      MAlonzo.Code.Algebra.Properties.BooleanAlgebra.du_commutativeRing_2050
      (coe d_'8744''45''8743''45'booleanAlgebra_1796)
      (coe MAlonzo.Code.Data.Bool.Base.d__xor__36) erased
-- Data.Bool.Properties.not-involutive
d_not'45'involutive_2140 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'involutive_2140 = erased
-- Data.Bool.Properties.not-injective
d_not'45'injective_2146 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45'injective_2146 = erased
-- Data.Bool.Properties.not-¬
d_not'45''172'_2156 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_not'45''172'_2156 = erased
-- Data.Bool.Properties.¬-not
d_'172''45'not_2162 ::
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'172''45'not_2162 = erased
-- Data.Bool.Properties.⇔→≡
d_'8660''8594''8801'_2174 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Function.Equivalence.T_Equivalence_16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8660''8594''8801'_2174 = erased
-- Data.Bool.Properties.T-≡
d_T'45''8801'_2190 ::
  Bool -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16
d_T'45''8801'_2190 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Equivalence.du_equivalence_56 erased
             (let v1 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (\ v2 -> v1))
      else coe
             MAlonzo.Code.Function.Equivalence.du_equivalence_56 erased erased
-- Data.Bool.Properties.T-not-≡
d_T'45'not'45''8801'_2194 ::
  Bool -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16
d_T'45'not'45''8801'_2194 v0
  = if coe v0
      then coe
             MAlonzo.Code.Function.Equivalence.du_equivalence_56 erased erased
      else coe
             MAlonzo.Code.Function.Equivalence.du_equivalence_56 erased
             (let v1 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (\ v2 -> v1))
-- Data.Bool.Properties.T-∧
d_T'45''8743'_2200 ::
  Bool -> Bool -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16
d_T'45''8743'_2200 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    MAlonzo.Code.Function.Equivalence.du_equivalence_56
                    (let v2
                           = coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
                     coe (\ v3 -> v2))
                    (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                     coe (\ v3 -> v2))
             else coe
                    MAlonzo.Code.Function.Equivalence.du_equivalence_56 erased
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30)
      else coe
             MAlonzo.Code.Function.Equivalence.du_equivalence_56 erased
             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28)
-- Data.Bool.Properties.T-∨
d_T'45''8744'_2206 ::
  Bool -> Bool -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16
d_T'45''8744'_2206 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Function.Equivalence.du_equivalence_56
             (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
             (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe (\ v3 -> v2))
      else (if coe v1
              then coe
                     MAlonzo.Code.Function.Equivalence.du_equivalence_56
                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
                     (let v2 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                      coe (\ v3 -> v2))
              else coe
                     MAlonzo.Code.Function.Equivalence.du_equivalence_56
                     (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                     (coe
                        MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52 (coe (\ v2 -> v2))
                        (coe (\ v2 -> v2))))
-- Data.Bool.Properties.T-irrelevant
d_T'45'irrelevant_2208 ::
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_T'45'irrelevant_2208 = erased
-- Data.Bool.Properties.T?
d_T'63'_2210 :: Bool -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_T'63'_2210 v0
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46 (coe v0)
      (if coe v0
         then coe
                MAlonzo.Code.Relation.Nullary.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
         else coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
-- Data.Bool.Properties.T?-diag
d_T'63''45'diag_2216 :: Bool -> AgdaAny -> AgdaAny
d_T'63''45'diag_2216 v0 ~v1 = du_T'63''45'diag_2216 v0
du_T'63''45'diag_2216 :: Bool -> AgdaAny
du_T'63''45'diag_2216 v0
  = coe seq (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Bool.Properties.push-function-into-if
d_push'45'function'45'into'45'if_2226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_push'45'function'45'into'45'if_2226 = erased
-- Data.Bool.Properties.∧-∨-distˡ
d_'8743''45''8744''45'dist'737'_2228 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45''8744''45'dist'737'_2228 = erased
-- Data.Bool.Properties.∧-∨-distʳ
d_'8743''45''8744''45'dist'691'_2230 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45''8744''45'dist'691'_2230 = erased
-- Data.Bool.Properties.distrib-∧-∨
d_distrib'45''8743''45''8744'_2232 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib'45''8743''45''8744'_2232
  = coe d_'8743''45'distrib'45''8744'_1712
-- Data.Bool.Properties.∨-∧-distˡ
d_'8744''45''8743''45'dist'737'_2234 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45''8743''45'dist'737'_2234 = erased
-- Data.Bool.Properties.∨-∧-distʳ
d_'8744''45''8743''45'dist'691'_2236 ::
  Bool ->
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45''8743''45'dist'691'_2236 = erased
-- Data.Bool.Properties.∨-∧-distrib
d_'8744''45''8743''45'distrib_2238 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45''8743''45'distrib_2238
  = coe d_'8744''45'distrib'45''8743'_1732
-- Data.Bool.Properties.∨-∧-abs
d_'8744''45''8743''45'abs_2240 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8744''45''8743''45'abs_2240 = erased
-- Data.Bool.Properties.∧-∨-abs
d_'8743''45''8744''45'abs_2242 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8743''45''8744''45'abs_2242 = erased
-- Data.Bool.Properties.not-∧-inverseˡ
d_not'45''8743''45'inverse'737'_2244 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45''8743''45'inverse'737'_2244 = erased
-- Data.Bool.Properties.not-∧-inverseʳ
d_not'45''8743''45'inverse'691'_2246 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45''8743''45'inverse'691'_2246 = erased
-- Data.Bool.Properties.not-∧-inverse
d_not'45''8743''45'inverse_2248 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_not'45''8743''45'inverse_2248 = coe d_'8743''45'inverse_1684
-- Data.Bool.Properties.not-∨-inverseˡ
d_not'45''8744''45'inverse'737'_2250 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45''8744''45'inverse'737'_2250 = erased
-- Data.Bool.Properties.not-∨-inverseʳ
d_not'45''8744''45'inverse'691'_2252 ::
  Bool -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_not'45''8744''45'inverse'691'_2252 = erased
-- Data.Bool.Properties.not-∨-inverse
d_not'45''8744''45'inverse_2254 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_not'45''8744''45'inverse_2254 = coe d_'8744''45'inverse_1618
-- Data.Bool.Properties.isCommutativeSemiring-∨-∧
d_isCommutativeSemiring'45''8744''45''8743'_2256 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring'45''8744''45''8743'_2256
  = coe d_'8744''45''8743''45'isCommutativeSemiring_1776
-- Data.Bool.Properties.commutativeSemiring-∨-∧
d_commutativeSemiring'45''8744''45''8743'_2258 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_commutativeSemiring'45''8744''45''8743'_2258
  = coe d_'8744''45''8743''45'commutativeSemiring_1778
-- Data.Bool.Properties.isCommutativeSemiring-∧-∨
d_isCommutativeSemiring'45''8743''45''8744'_2260 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_isCommutativeSemiring'45''8743''45''8744'_2260
  = coe d_'8743''45''8744''45'isCommutativeSemiring_1782
-- Data.Bool.Properties.commutativeSemiring-∧-∨
d_commutativeSemiring'45''8743''45''8744'_2262 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_commutativeSemiring'45''8743''45''8744'_2262
  = coe d_'8743''45''8744''45'commutativeSemiring_1784
-- Data.Bool.Properties.isBooleanAlgebra
d_isBooleanAlgebra_2264 ::
  MAlonzo.Code.Algebra.Structures.T_IsBooleanAlgebra_1864
d_isBooleanAlgebra_2264
  = coe d_'8744''45''8743''45'isBooleanAlgebra_1794
-- Data.Bool.Properties.booleanAlgebra
d_booleanAlgebra_2266 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920
d_booleanAlgebra_2266
  = coe d_'8744''45''8743''45'booleanAlgebra_1796
-- Data.Bool.Properties.commutativeRing-xor-∧
d_commutativeRing'45'xor'45''8743'_2268 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
d_commutativeRing'45'xor'45''8743'_2268
  = coe d_xor'45''8743''45'commutativeRing_1808
-- Data.Bool.Properties.proof-irrelevance
d_proof'45'irrelevance_2270 ::
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_proof'45'irrelevance_2270 = erased
-- Data.Bool.Properties.T-irrelevance
d_T'45'irrelevance_2272 ::
  Bool ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_T'45'irrelevance_2272 = erased
