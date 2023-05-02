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

module MAlonzo.Code.Algebra.Properties.BooleanAlgebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Properties.DistributiveLattice
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.BooleanAlgebra._.IsAbelianGroup
d_IsAbelianGroup_92 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Properties.BooleanAlgebra._.IsBooleanAlgebra
d_IsBooleanAlgebra_96 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Properties.BooleanAlgebra._.IsCommutativeMonoid
d_IsCommutativeMonoid_104 a0 a1 a2 a3 a4 = ()
-- Algebra.Properties.BooleanAlgebra._.IsCommutativeRing
d_IsCommutativeRing_106 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Properties.BooleanAlgebra._.IsCommutativeSemiring
d_IsCommutativeSemiring_110 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Properties.BooleanAlgebra._.IsGroup
d_IsGroup_116 a0 a1 a2 a3 a4 a5 = ()
-- Algebra.Properties.BooleanAlgebra._.IsMagma
d_IsMagma_122 a0 a1 a2 a3 = ()
-- Algebra.Properties.BooleanAlgebra._.IsMonoid
d_IsMonoid_124 a0 a1 a2 a3 a4 = ()
-- Algebra.Properties.BooleanAlgebra._.IsRing
d_IsRing_128 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Algebra.Properties.BooleanAlgebra._.IsSemigroup
d_IsSemigroup_132 a0 a1 a2 a3 = ()
-- Algebra.Properties.BooleanAlgebra._.IsSemiring
d_IsSemiring_136 a0 a1 a2 a3 a4 a5 a6 = ()
-- Algebra.Properties.BooleanAlgebra._._DistributesOver_
d__DistributesOver__1518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__1518 = erased
-- Algebra.Properties.BooleanAlgebra._._DistributesOverʳ_
d__DistributesOver'691'__1520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__1520 = erased
-- Algebra.Properties.BooleanAlgebra._._DistributesOverˡ_
d__DistributesOver'737'__1522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__1522 = erased
-- Algebra.Properties.BooleanAlgebra._.Associative
d_Associative_1534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_1534 = erased
-- Algebra.Properties.BooleanAlgebra._.Commutative
d_Commutative_1538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_1538 = erased
-- Algebra.Properties.BooleanAlgebra._.Congruent₂
d_Congruent'8322'_1542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_1542 = erased
-- Algebra.Properties.BooleanAlgebra._.Identity
d_Identity_1550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_1550 = erased
-- Algebra.Properties.BooleanAlgebra._.Inverse
d_Inverse_1554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_1554 = erased
-- Algebra.Properties.BooleanAlgebra._.Involutive
d_Involutive_1556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny) -> ()
d_Involutive_1556 = erased
-- Algebra.Properties.BooleanAlgebra._.LeftIdentity
d_LeftIdentity_1564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_1564 = erased
-- Algebra.Properties.BooleanAlgebra._.LeftInverse
d_LeftInverse_1566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_1566 = erased
-- Algebra.Properties.BooleanAlgebra._.LeftZero
d_LeftZero_1568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_1568 = erased
-- Algebra.Properties.BooleanAlgebra._.RightIdentity
d_RightIdentity_1576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_1576 = erased
-- Algebra.Properties.BooleanAlgebra._.RightInverse
d_RightInverse_1578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_1578 = erased
-- Algebra.Properties.BooleanAlgebra._.RightZero
d_RightZero_1580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_1580 = erased
-- Algebra.Properties.BooleanAlgebra._.Zero
d_Zero_1584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_1584 = erased
-- Algebra.Properties.BooleanAlgebra._.isOrderTheoreticLattice
d_isOrderTheoreticLattice_1656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
d_isOrderTheoreticLattice_1656 ~v0 ~v1 v2
  = du_isOrderTheoreticLattice_1656 v2
du_isOrderTheoreticLattice_1656 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
du_isOrderTheoreticLattice_1656 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_isOrderTheoreticLattice_1712
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.orderTheoreticLattice
d_orderTheoreticLattice_1658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
d_orderTheoreticLattice_1658 ~v0 ~v1 v2
  = du_orderTheoreticLattice_1658 v2
du_orderTheoreticLattice_1658 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
du_orderTheoreticLattice_1658 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_orderTheoreticLattice_1714
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.poset
d_poset_1660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_1660 ~v0 ~v1 v2 = du_poset_1660 v2
du_poset_1660 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_1660 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_poset_162
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∧-distrib-∨
d_'8743''45'distrib'45''8744'_1662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_1662 ~v0 ~v1 v2
  = du_'8743''45'distrib'45''8744'_1662 v2
du_'8743''45'distrib'45''8744'_1662 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8744'_1662 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45'distrib'45''8744'_258
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_1664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_1664 ~v0 ~v1 v2
  = du_'8743''45'distrib'691''45''8744'_1664 v2
du_'8743''45'distrib'691''45''8744'_1664 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_1664 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45'distrib'691''45''8744'_250
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_1666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_1666 ~v0 ~v1 v2
  = du_'8743''45'distrib'737''45''8744'_1666 v2
du_'8743''45'distrib'737''45''8744'_1666 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_1666 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45'distrib'737''45''8744'_242
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∧-idem
d_'8743''45'idem_1668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8743''45'idem_1668 ~v0 ~v1 v2 = du_'8743''45'idem_1668 v2
du_'8743''45'idem_1668 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8743''45'idem_1668 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'idem_1588
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-idempotent
d_'8743''45'idempotent_1670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8743''45'idempotent_1670 ~v0 ~v1 v2
  = du_'8743''45'idempotent_1670 v2
du_'8743''45'idempotent_1670 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8743''45'idempotent_1670 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'idempotent_1708
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-isBand
d_'8743''45'isBand_1672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8743''45'isBand_1672 ~v0 ~v1 v2 = du_'8743''45'isBand_1672 v2
du_'8743''45'isBand_1672 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8743''45'isBand_1672 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isBand_1596
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-isMagma
d_'8743''45'isMagma_1674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8743''45'isMagma_1674 ~v0 ~v1 v2 = du_'8743''45'isMagma_1674 v2
du_'8743''45'isMagma_1674 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8743''45'isMagma_1674 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isMagma_1592
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_1676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
d_'8743''45'isOrderTheoreticJoinSemilattice_1676 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_1676 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_1676 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
du_'8743''45'isOrderTheoreticJoinSemilattice_1676 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_1678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
d_'8743''45'isOrderTheoreticMeetSemilattice_1678 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_1678 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_1678 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
du_'8743''45'isOrderTheoreticMeetSemilattice_1678 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∧-isSemigroup
d_'8743''45'isSemigroup_1680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8743''45'isSemigroup_1680 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_1680 v2
du_'8743''45'isSemigroup_1680 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8743''45'isSemigroup_1680 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isSemigroup_1594
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-isSemilattice
d_'8743''45'isSemilattice_1682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8743''45'isSemilattice_1682 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_1682 v2
du_'8743''45'isSemilattice_1682 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8743''45'isSemilattice_1682 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isSemilattice_1598
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_1684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
d_'8743''45'orderTheoreticJoinSemilattice_1684 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_1684 v2
du_'8743''45'orderTheoreticJoinSemilattice_1684 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
du_'8743''45'orderTheoreticJoinSemilattice_1684 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_1686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
d_'8743''45'orderTheoreticMeetSemilattice_1686 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_1686 v2
du_'8743''45'orderTheoreticMeetSemilattice_1686 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
du_'8743''45'orderTheoreticMeetSemilattice_1686 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∧-semilattice
d_'8743''45'semilattice_1688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8743''45'semilattice_1688 ~v0 ~v1 v2
  = du_'8743''45'semilattice_1688 v2
du_'8743''45'semilattice_1688 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8743''45'semilattice_1688 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-∨-distrib
d_'8743''45''8744''45'distrib_1690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45''8744''45'distrib_1690 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distrib_1690 v2
du_'8743''45''8744''45'distrib_1690 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45''8744''45'distrib_1690 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib_272
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∧-∨-distributiveLattice
d_'8743''45''8744''45'distributiveLattice_1692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_'8743''45''8744''45'distributiveLattice_1692 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distributiveLattice_1692 v2
du_'8743''45''8744''45'distributiveLattice_1692 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
du_'8743''45''8744''45'distributiveLattice_1692 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distributiveLattice_262
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∧-∨-distribʳ
d_'8743''45''8744''45'distrib'691'_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45''8744''45'distrib'691'_1694 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distrib'691'_1694 v2
du_'8743''45''8744''45'distrib'691'_1694 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45''8744''45'distrib'691'_1694 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'691'_270
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∧-∨-distribˡ
d_'8743''45''8744''45'distrib'737'_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45''8744''45'distrib'737'_1696 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distrib'737'_1696 v2
du_'8743''45''8744''45'distrib'737'_1696 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45''8744''45'distrib'737'_1696 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'737'_268
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∧-∨-isDistributiveLattice
d_'8743''45''8744''45'isDistributiveLattice_1698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_'8743''45''8744''45'isDistributiveLattice_1698 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isDistributiveLattice_1698 v2
du_'8743''45''8744''45'isDistributiveLattice_1698 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
du_'8743''45''8744''45'isDistributiveLattice_1698 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'isDistributiveLattice_260
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_1700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_'8743''45''8744''45'isLattice_1700 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_1700 v2
du_'8743''45''8744''45'isLattice_1700 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
du_'8743''45''8744''45'isLattice_1700 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45''8744''45'isLattice_1636
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-∨-lattice
d_'8743''45''8744''45'lattice_1702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_'8743''45''8744''45'lattice_1702 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_1702 v2
du_'8743''45''8744''45'lattice_1702 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
du_'8743''45''8744''45'lattice_1702 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45''8744''45'lattice_1638
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∨-distrib-∧
d_'8744''45'distrib'45''8743'_1704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_1704 ~v0 ~v1 v2
  = du_'8744''45'distrib'45''8743'_1704 v2
du_'8744''45'distrib'45''8743'_1704 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'distrib'45''8743'_1704 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8744''45'distrib'45''8743'_240
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_1706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_1706 ~v0 ~v1 v2
  = du_'8744''45'distrib'737''45''8743'_1706 v2
du_'8744''45'distrib'737''45''8743'_1706 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_1706 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8744''45'distrib'737''45''8743'_232
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∨-idem
d_'8744''45'idem_1708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8744''45'idem_1708 ~v0 ~v1 v2 = du_'8744''45'idem_1708 v2
du_'8744''45'idem_1708 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8744''45'idem_1708 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'idem_1612
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∨-idempotent
d_'8744''45'idempotent_1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8744''45'idempotent_1710 ~v0 ~v1 v2
  = du_'8744''45'idempotent_1710 v2
du_'8744''45'idempotent_1710 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8744''45'idempotent_1710 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'idempotent_1710
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∨-isBand
d_'8744''45'isBand_1712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8744''45'isBand_1712 ~v0 ~v1 v2 = du_'8744''45'isBand_1712 v2
du_'8744''45'isBand_1712 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8744''45'isBand_1712 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isBand_1620
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∨-isMagma
d_'8744''45'isMagma_1714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8744''45'isMagma_1714 ~v0 ~v1 v2 = du_'8744''45'isMagma_1714 v2
du_'8744''45'isMagma_1714 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8744''45'isMagma_1714 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isMagma_1616
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_1716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
d_'8743''45'isOrderTheoreticJoinSemilattice_1716 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_1716 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_1716 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
du_'8743''45'isOrderTheoreticJoinSemilattice_1716 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_1718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
d_'8743''45'isOrderTheoreticMeetSemilattice_1718 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_1718 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_1718 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
du_'8743''45'isOrderTheoreticMeetSemilattice_1718 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∨-isSemigroup
d_'8744''45'isSemigroup_1720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8744''45'isSemigroup_1720 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_1720 v2
du_'8744''45'isSemigroup_1720 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8744''45'isSemigroup_1720 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isSemigroup_1618
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∨-isSemilattice
d_'8744''45'isSemilattice_1722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8744''45'isSemilattice_1722 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_1722 v2
du_'8744''45'isSemilattice_1722 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8744''45'isSemilattice_1722 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isSemilattice_1622
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_1724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
d_'8743''45'orderTheoreticJoinSemilattice_1724 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_1724 v2
du_'8743''45'orderTheoreticJoinSemilattice_1724 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
du_'8743''45'orderTheoreticJoinSemilattice_1724 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_1726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
d_'8743''45'orderTheoreticMeetSemilattice_1726 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_1726 v2
du_'8743''45'orderTheoreticMeetSemilattice_1726 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
du_'8743''45'orderTheoreticMeetSemilattice_1726 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    let v2
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
         (coe v2))
-- Algebra.Properties.BooleanAlgebra._.∨-semilattice
d_'8744''45'semilattice_1728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8744''45'semilattice_1728 ~v0 ~v1 v2
  = du_'8744''45'semilattice_1728 v2
du_'8744''45'semilattice_1728 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8744''45'semilattice_1728 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∨-∧-distrib
d_'8744''45''8743''45'distrib_1730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45''8743''45'distrib_1730 ~v0 ~v1 v2
  = du_'8744''45''8743''45'distrib_1730 v2
du_'8744''45''8743''45'distrib_1730 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45''8743''45'distrib_1730 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8744''45''8743''45'distrib_266
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∨-∧-distribˡ
d_'8744''45''8743''45'distrib'737'_1732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45''8743''45'distrib'737'_1732 ~v0 ~v1 v2
  = du_'8744''45''8743''45'distrib'737'_1732 v2
du_'8744''45''8743''45'distrib'737'_1732 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45''8743''45'distrib'737'_1732 v0
  = coe
      MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8744''45''8743''45'distrib'737'_264
      (coe
         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
-- Algebra.Properties.BooleanAlgebra._.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_1734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
d_'8744''45''8743''45'isOrderTheoreticLattice_1734 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_1734 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_1734 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
du_'8744''45''8743''45'isOrderTheoreticLattice_1734 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45''8743''45'isOrderTheoreticLattice_1650
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra._.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_1736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
d_'8744''45''8743''45'orderTheoreticLattice_1736 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_1736 v2
du_'8744''45''8743''45'orderTheoreticLattice_1736 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
du_'8744''45''8743''45'orderTheoreticLattice_1736 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45''8743''45'orderTheoreticLattice_1706
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1))
-- Algebra.Properties.BooleanAlgebra.∨-complementˡ
d_'8744''45'complement'737'_1738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8744''45'complement'737'_1738 ~v0 ~v1 v2
  = du_'8744''45'complement'737'_1738 v2
du_'8744''45'complement'737'_1738 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8744''45'complement'737'_1738 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'inv'691''8658'inv'737'_242
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du_setoid_1218
         (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))
-- Algebra.Properties.BooleanAlgebra.∨-complement
d_'8744''45'complement_1740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'complement_1740 ~v0 ~v1 v2
  = du_'8744''45'complement_1740 v2
du_'8744''45'complement_1740 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'complement_1740 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'complement'737'_1738 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))
-- Algebra.Properties.BooleanAlgebra.∧-complementˡ
d_'8743''45'complement'737'_1742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8743''45'complement'737'_1742 ~v0 ~v1 v2
  = du_'8743''45'complement'737'_1742 v2
du_'8743''45'complement'737'_1742 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8743''45'complement'737'_1742 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'inv'691''8658'inv'737'_242
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du_setoid_1218
         (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))
-- Algebra.Properties.BooleanAlgebra.∧-complement
d_'8743''45'complement_1744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'complement_1744 ~v0 ~v1 v2
  = du_'8743''45'complement_1744 v2
du_'8743''45'complement_1744 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'complement_1744 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'complement'737'_1742 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))
-- Algebra.Properties.BooleanAlgebra.∧-∨-isBooleanAlgebra
d_'8743''45''8744''45'isBooleanAlgebra_1746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanAlgebra_1864
d_'8743''45''8744''45'isBooleanAlgebra_1746 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isBooleanAlgebra_1746 v2
du_'8743''45''8744''45'isBooleanAlgebra_1746 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsBooleanAlgebra_1864
du_'8743''45''8744''45'isBooleanAlgebra_1746 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBooleanAlgebra'46'constructor_53651
      (coe
         MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'isDistributiveLattice_260
         (coe
            MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))
-- Algebra.Properties.BooleanAlgebra.∧-∨-booleanAlgebra
d_'8743''45''8744''45'booleanAlgebra_1748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920
d_'8743''45''8744''45'booleanAlgebra_1748 ~v0 ~v1 v2
  = du_'8743''45''8744''45'booleanAlgebra_1748 v2
du_'8743''45''8744''45'booleanAlgebra_1748 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920
du_'8743''45''8744''45'booleanAlgebra_1748 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_BooleanAlgebra'46'constructor_44759
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (coe du_'8743''45''8744''45'isBooleanAlgebra_1746 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∧-identityʳ
d_'8743''45'identity'691'_1750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8743''45'identity'691'_1750 ~v0 ~v1 v2 v3
  = du_'8743''45'identity'691'_1750 v2 v3
du_'8743''45'identity'691'_1750 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8743''45'identity'691'_1750 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v2
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v2
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
            v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))))
               (coe v1))
            (let v2
                   = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
             let v3
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe v2) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'absorbs'45''8744'_792
               (MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3)) v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
          let v3
                = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                    (coe v2) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
            (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
            (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
                  (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                  v1))))
-- Algebra.Properties.BooleanAlgebra.∧-identityˡ
d_'8743''45'identity'737'_1754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8743''45'identity'737'_1754 ~v0 ~v1 v2
  = du_'8743''45'identity'737'_1754 v2
du_'8743''45'identity'737'_1754 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8743''45'identity'737'_1754 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'id'691''8658'id'737'_178
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du_setoid_1218
         (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (coe du_'8743''45'identity'691'_1750 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∧-identity
d_'8743''45'identity_1756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'identity_1756 ~v0 ~v1 v2
  = du_'8743''45'identity_1756 v2
du_'8743''45'identity_1756 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'identity_1756 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'identity'737'_1754 (coe v0))
      (coe du_'8743''45'identity'691'_1750 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∨-identityʳ
d_'8744''45'identity'691'_1758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8744''45'identity'691'_1758 ~v0 ~v1 v2 v3
  = du_'8744''45'identity'691'_1758 v2 v3
du_'8744''45'identity'691'_1758 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8744''45'identity'691'_1758 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v2
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v2
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
            v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v2
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))))
               (coe v1))
            (let v2
                   = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
             let v3
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe v2) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
               (MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3)) v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
            (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v2))
            (coe v1) (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
                  (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                  v1))))
-- Algebra.Properties.BooleanAlgebra.∨-identityˡ
d_'8744''45'identity'737'_1762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8744''45'identity'737'_1762 ~v0 ~v1 v2
  = du_'8744''45'identity'737'_1762 v2
du_'8744''45'identity'737'_1762 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8744''45'identity'737'_1762 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'id'691''8658'id'737'_178
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du_setoid_1218
         (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (coe du_'8744''45'identity'691'_1758 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∨-identity
d_'8744''45'identity_1764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'identity_1764 ~v0 ~v1 v2
  = du_'8744''45'identity_1764 v2
du_'8744''45'identity_1764 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'identity_1764 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'identity'737'_1762 (coe v0))
      (coe du_'8744''45'identity'691'_1758 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∧-zeroʳ
d_'8743''45'zero'691'_1766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8743''45'zero'691'_1766 ~v0 ~v1 v2 v3
  = du_'8743''45'zero'691'_1766 v2 v3
du_'8743''45'zero'691'_1766 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8743''45'zero'691'_1766 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v2
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (let v2
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v2
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v2
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
                     (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                     v1))
               (let v2
                      = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                let v3
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe v2) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v1)
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'idempotent_1708
                     (coe
                        MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                        (coe
                           MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0)))
                     v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
               (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
               v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
          let v3
                = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                    (coe v2) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
            (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
               (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
               v1)))
-- Algebra.Properties.BooleanAlgebra.∧-zeroˡ
d_'8743''45'zero'737'_1770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8743''45'zero'737'_1770 ~v0 ~v1 v2
  = du_'8743''45'zero'737'_1770 v2
du_'8743''45'zero'737'_1770 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8743''45'zero'737'_1770 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'691''8658'ze'737'_190
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du_setoid_1218
         (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (coe du_'8743''45'zero'691'_1766 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∧-zero
d_'8743''45'zero_1772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'zero_1772 ~v0 ~v1 v2 = du_'8743''45'zero_1772 v2
du_'8743''45'zero_1772 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'zero_1772 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'zero'737'_1770 (coe v0))
      (coe du_'8743''45'zero'691'_1766 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∨-zeroʳ
d_'8744''45'zero'691'_1776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8744''45'zero'691'_1776 ~v0 ~v1 v2 v3
  = du_'8744''45'zero'691'_1776 v2 v3
du_'8744''45'zero'691'_1776 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8744''45'zero'691'_1776 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v2
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
            (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (let v2
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v2
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v2
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v2
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v2)))))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
                     (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                     v1))
               (let v2
                      = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                let v3
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe v2) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v1)
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'idempotent_1710
                     (coe
                        MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                        (coe
                           MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0)))
                     v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
               (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
               v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         (let v2
                = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
          let v3
                = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                    (coe v2) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
            (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
               (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
               v1)))
-- Algebra.Properties.BooleanAlgebra.∨-zeroˡ
d_'8744''45'zero'737'_1780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8744''45'zero'737'_1780 ~v0 ~v1 v2
  = du_'8744''45'zero'737'_1780 v2
du_'8744''45'zero'737'_1780 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8744''45'zero'737'_1780 v0
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'ze'691''8658'ze'737'_190
      (let v1
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du_setoid_1218
         (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v1)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (coe du_'8744''45'zero'691'_1776 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∨-zero
d_'8744''45'zero_1782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'zero_1782 ~v0 ~v1 v2 = du_'8744''45'zero_1782 v2
du_'8744''45'zero_1782 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'zero_1782 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'zero'737'_1780 (coe v0))
      (coe du_'8744''45'zero'691'_1776 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∨-⊥-isMonoid
d_'8744''45''8869''45'isMonoid_1784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8744''45''8869''45'isMonoid_1784 ~v0 ~v1 v2
  = du_'8744''45''8869''45'isMonoid_1784 v2
du_'8744''45''8869''45'isMonoid_1784 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'8744''45''8869''45'isMonoid_1784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isSemigroup_1618
         (coe
            MAlonzo.Code.Algebra.Bundles.du_lattice_1300
            (coe
               MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
               (coe v0))))
      (coe du_'8744''45'identity_1764 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∧-⊤-isMonoid
d_'8743''45''8868''45'isMonoid_1786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8743''45''8868''45'isMonoid_1786 ~v0 ~v1 v2
  = du_'8743''45''8868''45'isMonoid_1786 v2
du_'8743''45''8868''45'isMonoid_1786 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'8743''45''8868''45'isMonoid_1786 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isSemigroup_1594
         (coe
            MAlonzo.Code.Algebra.Bundles.du_lattice_1300
            (coe
               MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
               (coe v0))))
      (coe du_'8743''45'identity_1756 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∨-⊥-isCommutativeMonoid
d_'8744''45''8869''45'isCommutativeMonoid_1788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'8744''45''8869''45'isCommutativeMonoid_1788 ~v0 ~v1 v2
  = du_'8744''45''8869''45'isCommutativeMonoid_1788 v2
du_'8744''45''8869''45'isCommutativeMonoid_1788 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'8744''45''8869''45'isCommutativeMonoid_1788 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe du_'8744''45''8869''45'isMonoid_1784 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
-- Algebra.Properties.BooleanAlgebra.∧-⊤-isCommutativeMonoid
d_'8743''45''8868''45'isCommutativeMonoid_1790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
d_'8743''45''8868''45'isCommutativeMonoid_1790 ~v0 ~v1 v2
  = du_'8743''45''8868''45'isCommutativeMonoid_1790 v2
du_'8743''45''8868''45'isCommutativeMonoid_1790 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeMonoid_406
du_'8743''45''8868''45'isCommutativeMonoid_1790 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeMonoid'46'constructor_8363
      (coe du_'8743''45''8868''45'isMonoid_1786 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
-- Algebra.Properties.BooleanAlgebra.∨-∧-isSemiring
d_'8744''45''8743''45'isSemiring_1792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_'8744''45''8743''45'isSemiring_1792 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isSemiring_1792 v2
du_'8744''45''8743''45'isSemiring_1792 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
du_'8744''45''8743''45'isSemiring_1792 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_32891
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677
         (coe du_'8744''45''8869''45'isCommutativeMonoid_1788 (coe v0))
         (coe du_'8743''45''8868''45'isMonoid_1786 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib_272
            (coe
               MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
               (coe v0))))
      (coe du_'8743''45'zero_1772 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∧-∨-isSemiring
d_'8743''45''8744''45'isSemiring_1794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
d_'8743''45''8744''45'isSemiring_1794 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isSemiring_1794 v2
du_'8743''45''8744''45'isSemiring_1794 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemiring_1238
du_'8743''45''8744''45'isSemiring_1794 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemiring'46'constructor_32891
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsSemiringWithoutAnnihilatingZero'46'constructor_29677
         (coe du_'8743''45''8868''45'isCommutativeMonoid_1790 (coe v0))
         (coe du_'8744''45''8869''45'isMonoid_1784 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8744''45''8743''45'distrib_266
            (coe
               MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
               (coe v0))))
      (coe du_'8744''45'zero_1782 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∨-∧-isCommutativeSemiring
d_'8744''45''8743''45'isCommutativeSemiring_1796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_'8744''45''8743''45'isCommutativeSemiring_1796 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isCommutativeSemiring_1796 v2
du_'8744''45''8743''45'isCommutativeSemiring_1796 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
du_'8744''45''8743''45'isCommutativeSemiring_1796 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_36165
      (coe du_'8744''45''8743''45'isSemiring_1792 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
-- Algebra.Properties.BooleanAlgebra.∧-∨-isCommutativeSemiring
d_'8743''45''8744''45'isCommutativeSemiring_1798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
d_'8743''45''8744''45'isCommutativeSemiring_1798 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isCommutativeSemiring_1798 v2
du_'8743''45''8744''45'isCommutativeSemiring_1798 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemiring_1344
du_'8743''45''8744''45'isCommutativeSemiring_1798 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeSemiring'46'constructor_36165
      (coe du_'8743''45''8744''45'isSemiring_1794 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
-- Algebra.Properties.BooleanAlgebra.∨-∧-commutativeSemiring
d_'8744''45''8743''45'commutativeSemiring_1800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_'8744''45''8743''45'commutativeSemiring_1800 ~v0 ~v1 v2
  = du_'8744''45''8743''45'commutativeSemiring_1800 v2
du_'8744''45''8743''45'commutativeSemiring_1800 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
du_'8744''45''8743''45'commutativeSemiring_1800 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_32013
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (coe du_'8744''45''8743''45'isCommutativeSemiring_1796 (coe v0))
-- Algebra.Properties.BooleanAlgebra.∧-∨-commutativeSemiring
d_'8743''45''8744''45'commutativeSemiring_1802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
d_'8743''45''8744''45'commutativeSemiring_1802 ~v0 ~v1 v2
  = du_'8743''45''8744''45'commutativeSemiring_1802 v2
du_'8743''45''8744''45'commutativeSemiring_1802 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeSemiring_2094
du_'8743''45''8744''45'commutativeSemiring_1802 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeSemiring'46'constructor_32013
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (coe du_'8743''45''8744''45'isCommutativeSemiring_1798 (coe v0))
-- Algebra.Properties.BooleanAlgebra.lemma
d_lemma_1808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma_1808 ~v0 ~v1 v2 v3 v4 v5 v6 = du_lemma_1808 v2 v3 v4 v5 v6
du_lemma_1808 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma_1808 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
         (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
            (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
         (coe v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
            (coe v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                  v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                           v2)
                        (coe v2)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                           (let v5
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                              v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)) v2)
                           v2
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                              (let v5
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                         (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                 (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)) v2)
                              v2 v2
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v5
                                              = coe
                                                  MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                                  (coe v0) in
                                        coe
                                          MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                                             (coe v5)))))
                                 (coe v2))
                              (coe du_'8743''45'identity'737'_1754 v0 v2))
                           (let v5
                                  = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                         (coe v0)) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
                              (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                              (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
                                 (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                                 v1)))
                        (coe
                           MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'691'_270
                           (coe
                              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
                           v2 v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
                     (let v5
                            = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                      let v6
                            = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                (coe v5) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
                        (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v6))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (coe v3)))
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
                     (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                     (coe du_'8743''45'complement'737'_1742 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'737'_268
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1 v2))
            (let v5
                   = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
             let v6
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe v5) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v6))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
               (coe v4)))
         (coe
            du_'8743''45'identity'691'_1750 (coe v0)
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
-- Algebra.Properties.BooleanAlgebra.⊥≉⊤
d_'8869''8777''8868'_1818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 -> AgdaAny
d_'8869''8777''8868'_1818 ~v0 ~v1 v2
  = du_'8869''8777''8868'_1818 v2
du_'8869''8777''8868'_1818 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 -> AgdaAny
du_'8869''8777''8868'_1818 v0
  = coe
      du_lemma_1808 (coe v0)
      (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (coe
         du_'8743''45'identity'691'_1750 (coe v0)
         (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
      (coe
         du_'8744''45'zero'691'_1776 (coe v0)
         (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
-- Algebra.Properties.BooleanAlgebra.⊤≉⊥
d_'8868''8777''8869'_1820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 -> AgdaAny
d_'8868''8777''8869'_1820 ~v0 ~v1 v2
  = du_'8868''8777''8869'_1820 v2
du_'8868''8777''8869'_1820 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 -> AgdaAny
du_'8868''8777''8869'_1820 v0
  = coe
      du_lemma_1808 (coe v0)
      (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (coe
         du_'8743''45'zero'691'_1766 (coe v0)
         (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
      (coe
         du_'8744''45'identity'691'_1758 (coe v0)
         (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
-- Algebra.Properties.BooleanAlgebra.¬-involutive
d_'172''45'involutive_1822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'172''45'involutive_1822 ~v0 ~v1 v2 v3
  = du_'172''45'involutive_1822 v2 v3
du_'172''45'involutive_1822 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'172''45'involutive_1822 v0 v1
  = coe
      du_lemma_1808 (coe v0)
      (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) (coe v1)
      (coe du_'8743''45'complement'737'_1742 v0 v1)
      (coe du_'8744''45'complement'737'_1738 v0 v1)
-- Algebra.Properties.BooleanAlgebra.deMorgan₁
d_deMorgan'8321'_1830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deMorgan'8321'_1830 ~v0 ~v1 v2 v3 v4
  = du_deMorgan'8321'_1830 v2 v3 v4
du_deMorgan'8321'_1830 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_deMorgan'8321'_1830 v0 v1 v2
  = coe
      du_lemma_1808 (coe v0)
      (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
         (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
         (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
      (coe du_lem'8321'_1840 (coe v0) (coe v1) (coe v2))
      (coe du_lem'8322'_1844 (coe v0) (coe v1) (coe v2))
-- Algebra.Properties.BooleanAlgebra._.lem₁
d_lem'8321'_1840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_1840 ~v0 ~v1 v2 v3 v4 = du_lem'8321'_1840 v2 v3 v4
du_lem'8321'_1840 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_1840 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
         (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
               (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                        (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))))
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                     (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                        (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                            (coe v0) in
                                  coe
                                    MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                    (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))))
                           (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                        (coe
                           du_'8744''45'identity'691'_1758 (coe v0)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                        (coe du_'8743''45'zero'691'_1766 (coe v0) (coe v2))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                           (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                              (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                              (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                        (coe du_'8743''45'zero'691'_1766 (coe v0) (coe v1))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                        (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
                        (coe v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
                           (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                           v1))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2)
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v3 v4 -> v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1)
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v3 v4 -> v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                        (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
                           (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                           v2))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v2 v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
            (let v3
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (\ v4 v5 -> v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                  (\ v4 v5 -> v5)
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1))
               (let v4
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v4))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'737'_268
            (coe
               MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
-- Algebra.Properties.BooleanAlgebra._.lem₃
d_lem'8323'_1842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_1842 ~v0 ~v1 v2 v3 v4 = du_lem'8323'_1842 v2 v3 v4
du_lem'8323'_1842 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_1842 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v2 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
               (coe
                  du_'8743''45'identity'737'_1754 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))))
            (let v3
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
                  (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                  v1)))
         (let v3
                = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8744''45''8743''45'distrib'691'_868
            (MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe v3))
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1 v2))
-- Algebra.Properties.BooleanAlgebra._.lem₂
d_lem'8322'_1844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_1844 ~v0 ~v1 v2 v3 v4 = du_lem'8322'_1844 v2 v3 v4
du_lem'8322'_1844 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_1844 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
         (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
            (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
                     (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                     (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                         (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                 (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
                     (coe
                        du_'8744''45'zero'691'_1776 (coe v0)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
                  (let v3
                         = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
                     (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
                        (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                        v2)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            (let v3
                   = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
             let v4
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe v3) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v4))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
               (coe du_lem'8323'_1842 (coe v0) (coe v1) (coe v2))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
            (MAlonzo.Code.Algebra.Structures.d_isLattice_824
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
-- Algebra.Properties.BooleanAlgebra.deMorgan₂
d_deMorgan'8322'_1850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deMorgan'8322'_1850 ~v0 ~v1 v2 v3 v4
  = du_deMorgan'8322'_1850 v2 v3 v4
du_deMorgan'8322'_1850 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_deMorgan'8322'_1850 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v3
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  du_'172''45'involutive_1822 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
               (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  du_deMorgan'8321'_1830 (coe v0)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
            (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
               (coe du_'172''45'involutive_1822 (coe v0) (coe v1))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  v2)
               (coe du_'172''45'involutive_1822 (coe v0) (coe v2)))))
-- Algebra.Properties.BooleanAlgebra.XorRing._⊕_
d__'8853'__1866 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8853'__1866 ~v0 v1 ~v2 = du__'8853'__1866 v1
du__'8853'__1866 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8853'__1866 v0 = coe v0
-- Algebra.Properties.BooleanAlgebra.XorRing.helper
d_helper_1876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_helper_1876 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_helper_1876 v2 v5 v6 v7 v8 v9 v10
du_helper_1876 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_helper_1876 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__250 (coe v5)
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
         (MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
         v1 v2
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
            (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
            (\ v7 v8 -> v7) v3 v4)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
            (\ v7 v8 -> v8)
            (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0)) v3 v4))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
         (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) v3
         v4 v6)
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-cong
d_'8853''45'cong_1882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'cong_1882 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_'8853''45'cong_1882 v2 v3 v4 v5 v6 v7 v8 v9 v10
du_'8853''45'cong_1882 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'cong_1882 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v9
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v9)))
         (coe v1 v3 v5)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v5)
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5)))
         (coe v1 v4 v6)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v9
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v9)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v6)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v6)))
            (coe v1 v4 v6)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
               (let v9
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v9)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v6)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v6)))
               (coe v1 v4 v6) (coe v1 v4 v6)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v9
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v9)))))
                  (coe v1 v4 v6))
               (coe v2 v4 v6))
            (coe
               du_helper_1876 (coe v0)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v6)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v6)
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__250 (coe v7)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v3 v4 v5 v6)
                  (coe v8))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__250 (coe v7)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v3 v4 v5 v6)
                  (coe v8))))
         (coe v2 v3 v5))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-comm
d_'8853''45'comm_1896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'comm_1896 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8853''45'comm_1896 v2 v3 v4 v5 v6
du_'8853''45'comm_1896 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'comm_1896 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
         (coe v1 v4 v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))
            (coe v1 v4 v3)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))
               (coe v1 v4 v3) (coe v1 v4 v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))))
                  (coe v1 v4 v3))
               (coe v2 v4 v3))
            (coe
               du_helper_1876 (coe v0)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v3)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  v3 v4)))
         (coe v2 v3 v4))
-- Algebra.Properties.BooleanAlgebra.XorRing.¬-distribˡ-⊕
d_'172''45'distrib'737''45''8853'_1906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'737''45''8853'_1906 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'172''45'distrib'737''45''8853'_1906 v2 v3 v4 v5 v6
du_'172''45'distrib'737''45''8853'_1906 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'737''45''8853'_1906 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
         (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 (coe v1 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4))))
         (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))))
            (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))))
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v5
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                  (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                     (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                        (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                           (let v5
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)))
                           (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                              (let v5
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                         (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                 (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)))
                              (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                              (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                       (let v5
                                              = coe
                                                  MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                                  (coe v0) in
                                        coe
                                          MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                                             (coe v5)))))
                                 (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4))
                              (coe v2 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4))
                           (coe
                              du_helper_1876 (coe v0)
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                                 (\ v5 v6 -> v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 v4)
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                                 (\ v5 v6 -> v6)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 v4)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                            (coe v0)) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
                                 (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 (coe v4) (coe du_'172''45'involutive_1822 (coe v0) (coe v4)))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                                 (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                          (coe v0))))
                                 v4 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                        (let v5
                               = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                      (coe v0)) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
                           (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)))
                           (coe
                              du_deMorgan'8321'_1830 (coe v0) (coe v3)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))))
                     (coe
                        du_deMorgan'8322'_1850 (coe v0)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
                     (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                        (coe du_lem_1920 (coe v0) (coe v3) (coe v4))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                           (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                        (coe du_lem_1920 (coe v0) (coe v4) (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
                  (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4))))
                     (\ v5 v6 -> v5)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                     (\ v5 v6 -> v6)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4))))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4)
                        (\ v5 v6 -> v5)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                        (\ v5 v6 -> v6)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (\ v5 v6 -> v5)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v5 v6 -> v6)
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))))
                  (let v5
                         = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                             (coe
                                MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
                     (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4)
                        (\ v6 v7 -> v6)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (\ v6 v7 -> v6)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v6 v7 -> v7)
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                        (\ v6 v7 -> v7)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (\ v6 v7 -> v6)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v6 v7 -> v7)
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)))
                     (let v6
                            = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                        (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v6))
                        (coe v4)
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (\ v7 v8 -> v7)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v7 v8 -> v8)
                           (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
                           (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v3)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                              (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                       (coe v0))))
                              v3 v4))))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
               (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4))))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'691'_270
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4))
                  v3 v4)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
            (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
            (coe v1 v3 v4)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)))
            (coe v2 v3 v4)))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem
d_lem_1920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem_1920 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_lem_1920 v2 v7 v8
du_lem_1920 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem_1920 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v3
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                  (coe
                     du_'8744''45'identity'737'_1762 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
                     (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                     v1)))
            (coe
               MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'737'_268
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
               v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
         (let v3
                = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
            (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
            (coe du_deMorgan'8321'_1830 (coe v0) (coe v1) (coe v2))))
-- Algebra.Properties.BooleanAlgebra.XorRing.¬-distribʳ-⊕
d_'172''45'distrib'691''45''8853'_1930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'691''45''8853'_1930 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'172''45'distrib'691''45''8853'_1930 v2 v3 v4 v5 v6
du_'172''45'distrib'691''45''8853'_1930 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'691''45''8853'_1930 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
         (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 (coe v1 v3 v4))
         (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 (coe v1 v4 v3))
         (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 (coe v1 v4 v3))
            (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4) v3)
            (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4) v3)
               (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
               (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))))
                  (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)))
               (coe
                  du_'8853''45'comm_1896 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4) (coe v3)))
            (coe
               du_'172''45'distrib'737''45''8853'_1906 (coe v0) (coe v1) (coe v2)
               (coe v4) (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
            (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
            (coe v1 v3 v4) (coe v1 v4 v3)
            (coe
               du_'8853''45'comm_1896 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v4))))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-annihilates-¬
d_'8853''45'annihilates'45''172'_1940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'annihilates'45''172'_1940 ~v0 ~v1 v2 v3 v4 v5 v6
  = du_'8853''45'annihilates'45''172'_1940 v2 v3 v4 v5 v6
du_'8853''45'annihilates'45''172'_1940 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'annihilates'45''172'_1940 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
         (coe v1 v3 v4)
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 (coe v1 v3 v4)))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 (coe v1 v3 v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v5
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v5
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))))
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)))
               (coe
                  du_'172''45'distrib'691''45''8853'_1930 (coe v0) (coe v1) (coe v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
               (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 (coe v1 v3 v4))
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
               (coe
                  du_'172''45'distrib'737''45''8853'_1906 (coe v0) (coe v1) (coe v2)
                  (coe v3) (coe v4))))
         (coe du_'172''45'involutive_1822 (coe v0) (coe v1 v3 v4)))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-identityˡ
d_'8853''45'identity'737'_1946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'identity'737'_1946 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'identity'737'_1946 v2 v3 v4 v5
du_'8853''45'identity'737'_1946 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'identity'737'_1946 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe v1 (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3)))
         v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))))
            v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
               v3
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                     (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
                  v3 v3
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v4
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                     (coe v3))
                  (coe du_'8743''45'identity'691'_1750 (coe v0) (coe v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                let v5
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
                  (coe v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                  (coe du_'8869''8777''8868'_1818 (coe v0))))
            (coe
               du_helper_1876 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3)
               (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3)
               (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
               (coe du_'8744''45'identity'737'_1762 v0 v3)
               (coe du_'8743''45'zero'737'_1770 v0 v3)))
         (coe v2 (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-identityʳ
d_'8853''45'identity'691'_1950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'identity'691'_1950 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'identity'691'_1950 v2 v3 v4 v5
du_'8853''45'identity'691'_1950 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'identity'691'_1950 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
      (coe
         du_'8853''45'comm_1896 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLattice_824
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
         (coe v1 v3 (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
         (coe v1 (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)) v3)
         v3)
      (coe
         du_'8853''45'identity'737'_1946 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-identity
d_'8853''45'identity_1952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'identity_1952 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'identity_1952 v2 v3 v4
du_'8853''45'identity_1952 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'identity_1952 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8853''45'identity'737'_1946 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'identity'691'_1950 (coe v0) (coe v1) (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverseˡ
d_'8853''45'inverse'737'_1954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'inverse'737'_1954 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'inverse'737'_1954 v2 v3 v4 v5
du_'8853''45'inverse'737'_1954 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'inverse'737'_1954 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe v1 v3 v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v3)))
         (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
            (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
               (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
               (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
                  (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                  v3))
            (coe
               du_helper_1876 (coe v0)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v3)
               (coe v3)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v3)
               (coe v3)
               (coe
                  MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'idempotent_1710
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                     (coe
                        MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0)))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'idempotent_1708
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                     (coe
                        MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0)))
                  v3)))
         (coe v2 v3 v3))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverseʳ
d_'8853''45'inverse'691'_1958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_'8853''45'inverse'691'_1958 ~v0 ~v1 v2 v3 v4 v5
  = du_'8853''45'inverse'691'_1958 v2 v3 v4 v5
du_'8853''45'inverse'691'_1958 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_'8853''45'inverse'691'_1958 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
      (coe
         du_'8853''45'comm_1896 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v3))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLattice_824
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
         (coe v1 v3 v3) (coe v1 v3 v3)
         (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
      (coe
         du_'8853''45'inverse'737'_1954 (coe v0) (coe v1) (coe v2) (coe v3))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverse
d_'8853''45'inverse_1960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'inverse_1960 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'inverse_1960 v2 v3 v4
du_'8853''45'inverse_1960 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'inverse_1960 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8853''45'inverse'737'_1954 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'inverse'691'_1958 (coe v0) (coe v1) (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.∧-distribˡ-⊕
d_'8743''45'distrib'737''45''8853'_1962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8853'_1962 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8743''45'distrib'737''45''8853'_1962 v2 v3 v4 v5 v6 v7
du_'8743''45'distrib'737''45''8853'_1962 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8853'_1962 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v6
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 (coe v1 v4 v5))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
         (coe
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5)))
            (coe
               v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                  (coe
                     v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                        (coe
                           v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                           (let v6
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                              (let v6
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                         (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                 (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
                              (coe
                                 v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                 (let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                            (coe v0) in
                                  coe
                                    MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                    (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4
                                             v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                             v5))))
                                 (coe
                                    v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                                    (let v6
                                           = coe
                                               MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                               (coe v0) in
                                     coe
                                       MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                       (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v5))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v5))))
                                    (coe
                                       v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                                       (let v6
                                              = coe
                                                  MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                                  (coe v0) in
                                        coe
                                          MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v5))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                                   v3 v4)
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                                   v3 v5))))
                                       (coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                                       (coe
                                          v1
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                                (let v6
                                                       = coe
                                                           MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                                           (coe v0) in
                                                 coe
                                                   MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                                                      (coe v6)))))
                                          (coe
                                             v1
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v5)))
                                       (coe
                                          v2
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                             v5)))
                                    (let v6
                                           = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                               (coe
                                                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                                  (coe v0)) in
                                     coe
                                       MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v6))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v5)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'737'_268
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                             (coe v0))
                                          v3 v4 v5)))
                                 (coe
                                    du_helper_1876 (coe v0)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v5))
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                       (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4
                                             v5)))
                                    (coe du_lem'8321'_1976 (coe v0) (coe v3) (coe v4) (coe v5))))
                              (let v6
                                     = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                         (coe v0) in
                               let v7
                                     = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                         (coe v6) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                                 (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v7))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5)))
                                 (coe
                                    du_deMorgan'8321'_1830 (coe v0) (coe v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                         (coe v0)) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                              (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v6))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                                 (\ v7 v8 -> v7)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
                              (coe
                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                                 (\ v7 v8 -> v8)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
                              (let v7
                                     = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                         (coe v0) in
                               let v8
                                     = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                         (coe v7) in
                               coe
                                 MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
                                 (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v8))
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                                 (coe du_deMorgan'8321'_1830 (coe v0) (coe v4) (coe v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8743''45''8744''45'distrib'737'_268
                           (coe
                              MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                     (let v6
                            = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                      let v7
                            = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                (coe v6) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
                        (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v7))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                        (coe du_lem'8323'_1978 (coe v0) (coe v3) (coe v4) (coe v5))))
                  (coe
                     du_'8744''45'identity'737'_1762 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))))
               (let v6
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v6))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                  (coe du_deMorgan'8321'_1830 (coe v0) (coe v4) (coe v5))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
               (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
               v3 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
         (let v6
                = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
            (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v6))
            (coe v3) (coe v1 v4 v5)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5)))
            (coe v2 v4 v5)))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₂
d_lem'8322'_1974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_1974 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8322'_1974 v2 v5 v6 v7
du_lem'8322'_1974 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_1974 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  v2 v1 v3))
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v4))
               (coe v3)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v1)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
            (MAlonzo.Code.Algebra.Structures.d_isLattice_824
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
            v1 v2 v3))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₁
d_lem'8321'_1976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_1976 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8321'_1976 v2 v5 v6 v7
du_lem'8321'_1976 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_1976 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v4
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                let v5
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe v4) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
                  (coe v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v3))
                  (coe du_lem'8322'_1974 (coe v0) (coe v1) (coe v2) (coe v3))))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
               (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
               v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3)))
         (let v4
                = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
          let v5
                = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                    (coe v4) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
            (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v1)
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'idempotent_1708
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0)))
               v1)))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₃
d_lem'8323'_1978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_1978 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8323'_1978 v2 v5 v6 v7
du_lem'8323'_1978 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_1978 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
            (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
               (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3) v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3) v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (let v4
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3) v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3) v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isLattice_824
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                    (coe v0)))))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3) v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)))
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
             let v5
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1))
               (coe MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
                  (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                  v1)))
         (coe
            du_'8743''45'zero'691'_1766 (coe v0)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)))
-- Algebra.Properties.BooleanAlgebra.XorRing.∧-distribʳ-⊕
d_'8743''45'distrib'691''45''8853'_1980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8853'_1980 ~v0 ~v1 v2 v3 v4
  = du_'8743''45'distrib'691''45''8853'_1980 v2 v3 v4
du_'8743''45'distrib'691''45''8853'_1980 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8853'_1980 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'43'distr'737''8658'distr'691'_312
      (let v3
             = coe
                 MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Bundles.du_setoid_1218
         (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (coe v1) (coe du_'8853''45'cong_1882 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe
         du_'8743''45'distrib'737''45''8853'_1962 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.∧-distrib-⊕
d_'8743''45'distrib'45''8853'_1982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8853'_1982 ~v0 ~v1 v2 v3 v4
  = du_'8743''45'distrib'45''8853'_1982 v2 v3 v4
du_'8743''45'distrib'45''8853'_1982 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8853'_1982 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8743''45'distrib'737''45''8853'_1962 (coe v0) (coe v1)
         (coe v2))
      (coe
         du_'8743''45'distrib'691''45''8853'_1980 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.lemma₂
d_lemma'8322'_1992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma'8322'_1992 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_lemma'8322'_1992 v2 v5 v6 v7 v8
du_lemma'8322'_1992 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma'8322'_1992 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3 v4))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v4))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v3)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v4)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v4)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v5
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v4))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v4)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v5
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v5)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v4))))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
               (let v5
                      = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8744''45''8743''45'distrib'691'_868
                  (MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                     (coe v5))
                  v3 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v4)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v4)))
               (let v5
                      = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8744''45''8743''45'distrib'691'_868
                  (MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                     (coe v5))
                  v4 v1 v2)))
         (coe
            MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8744''45''8743''45'distrib'737'_264
            (coe
               MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2) v3 v4))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-assoc
d_'8853''45'assoc_2002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'assoc_2002 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_'8853''45'assoc_2002 v2 v3 v4 v5 v6 v7
du_'8853''45'assoc_2002 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'assoc_2002 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v6
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
            (coe v1 v3 (coe v1 v4 v5))
            (coe
               v1 v3
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
            (coe v1 (coe v1 v3 v4) v5)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v6
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
               (coe
                  v1 v3
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))))
               (coe v1 (coe v1 v3 v4) v5)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v6
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                           v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                  (coe v1 (coe v1 v3 v4) v5)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v6
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))))
                     (coe v1 (coe v1 v3 v4) v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                        (let v6
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))))
                        (coe v1 (coe v1 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                           (let v6
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                              (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                    v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                           (coe v1 (coe v1 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                              (let v6
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                         (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                 (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                       v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                             v4)))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)))
                                       v5)))
                              (coe v1 (coe v1 v3 v4) v5)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                                 (let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                            (coe v0) in
                                  coe
                                    MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                    (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)))
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                                   v3 v4)))
                                          v5)))
                                 (coe
                                    v1
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                             v4)))
                                    v5)
                                 (coe v1 (coe v1 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                                    (let v6
                                           = coe
                                               MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                               (coe v0) in
                                     coe
                                       MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                       (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v6)))
                                    (coe
                                       v1
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)))
                                       v5)
                                    (coe v1 (coe v1 v3 v4) v5) (coe v1 (coe v1 v3 v4) v5)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                             (let v6
                                                    = coe
                                                        MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                                        (coe v0) in
                                              coe
                                                MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.du_lattice_1300
                                                   (coe v6)))))
                                       (coe v1 (coe v1 v3 v4) v5))
                                    (coe
                                       MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                       (coe v2 v3 v4)
                                       (coe
                                          du_'8853''45'cong_1882 (coe v0) (coe v1) (coe v2)
                                          (coe v1 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                                   v3 v4)))
                                          (coe v5) (coe v5))
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                          (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                                (coe
                                                   MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                                      (coe v0)))))
                                          v5)))
                                 (coe
                                    v2
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                             v4)))
                                    v5))
                              (coe
                                 MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                                 (coe du_lem'8321'_2014 (coe v0) (coe v3) (coe v4) (coe v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                                    (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                          v5)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                             (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                          v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                                                v4)))
                                       v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                             (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                             v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                                v4)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                                   v3 v4)))
                                          v5)))
                                 (coe du_lem'8322'_2018 (coe v0) (coe v3) (coe v4) (coe v5))))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                              (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))))
                        (let v6
                               = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                         let v7
                               = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                   (coe v6) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                           (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v7))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                           (coe du_lem'8325'_2026 (coe v0) (coe v3) (coe v4) (coe v5))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                     (coe du_lem'8323'_2020 (coe v0) (coe v3) (coe v4) (coe v5))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5)))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v4))
                              v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3) v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v5))))
                     (coe du_lem'8324'_2024 (coe v0) (coe v3) (coe v4) (coe v5))))
               (coe
                  v2 v3
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5)))))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
                  v3)
               (coe
                  du_'8853''45'cong_1882 (coe v0) (coe v1) (coe v2) (coe v3) (coe v3)
                  (coe v1 v4 v5)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v4 v5))))
               (coe v2 v4 v5))))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₁
d_lem'8321'_2014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8321'_2014 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8321'_2014 v2 v5 v6 v7
du_lem'8321'_2014 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8321'_2014 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            v3)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
            v3)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
               v3)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
                  v3))
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v4))
               (coe v3)
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
                  (\ v5 v6 -> v5)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                  (\ v5 v6 -> v6)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (let v5
                      = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
                let v6
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe v5) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v6))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe du_deMorgan'8321'_1830 (coe v0) (coe v1) (coe v2)))))
         (let v4
                = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8744''45''8743''45'distrib'691'_868
            (MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe v4))
            v3 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₂′
d_lem'8322''8242'_2016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322''8242'_2016 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 ~v7
  = du_lem'8322''8242'_2016 v2 v5 v6
du_lem'8322''8242'_2016 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322''8242'_2016 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
               (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                         (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                 (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
                     (coe
                        du_deMorgan'8321'_1830 (coe v0)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                     (coe du_deMorgan'8322'_1850 (coe v0) (coe v1) (coe v2))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
                     (coe
                        du_'172''45'involutive_1822 (coe v0)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
               (coe
                  du_lemma'8322'_1992 (coe v0)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) (coe v1)
                  (coe v2)))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                  (coe du_'8744''45'complement'737'_1738 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                     (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                  (coe
                     MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                     (\ v3 v4 -> v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)
                     (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
                  (coe
                     MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                     (\ v3 v4 -> v4)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)
                     (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                  (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                  (coe du_'8744''45'complement'737'_1738 v0 v2))))
         (coe
            MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
            (coe
               du_'8743''45'identity'737'_1754 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
               (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
            (coe
               du_'8743''45'identity'691'_1750 (coe v0)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₂
d_lem'8322'_2018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8322'_2018 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8322'_2018 v2 v5 v6 v7
du_lem'8322'_2018 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8322'_2018 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
               v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
                  v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
                     v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
                        v3)))
               (coe
                  du_deMorgan'8321'_1830 (coe v0)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
                  (coe v3)))
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
             let v5
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'691'_806
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
               (coe du_lem'8322''8242'_2016 (coe v0) (coe v1) (coe v2))))
         (let v4
                = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8744''45''8743''45'distrib'691'_868
            (MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe v4))
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₃
d_lem'8323'_2020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8323'_2020 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8323'_2020 v2 v5 v6 v7
du_lem'8323'_2020 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8323'_2020 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2) v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2) v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v1 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2) v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                     v1 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
            (coe
               MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8744''45''8743''45'distrib'737'_264
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
               v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
         (let v4
                = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
          coe
            MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
            (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v4))
            (coe v1)
            (coe
               MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
               (\ v5 v6 -> v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
            (coe
               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
               (\ v5 v6 -> v6)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
            (let v5
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
               (coe du_deMorgan'8321'_1830 (coe v0) (coe v2) (coe v3)))))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₄′
d_lem'8324''8242'_2022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8324''8242'_2022 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7
  = du_lem'8324''8242'_2022 v2 v6 v7
du_lem'8324''8242'_2022 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lem'8324''8242'_2022 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v3
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v3
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (let v3
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                        (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v3
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                           (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v3
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                         (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                 (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v3)))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)))
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                        (coe
                           du_'8743''45'identity'737'_1754 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                           (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                              (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                        (coe
                           du_'8743''45'identity'691'_1750 (coe v0)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                     (coe
                        MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                        (coe du_'8744''45'complement'737'_1738 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                           (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                           (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                           (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2)))
                        (coe
                           MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                           (\ v3 v4 -> v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)
                           (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0)))
                        (coe
                           MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                           (\ v3 v4 -> v4)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)
                           (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                        (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
                        (coe du_'8744''45'complement'737'_1738 v0 v2))))
               (coe
                  du_lemma'8322'_1992 (coe v0)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) (coe v1)
                  (coe v2)))
            (coe
               MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
               (coe du_deMorgan'8322'_1850 (coe v0) (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
               (coe
                  du_'172''45'involutive_1822 (coe v0)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
         (coe
            du_deMorgan'8321'_1830 (coe v0)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₄
d_lem'8324'_2024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8324'_2024 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8324'_2024 v2 v5 v6 v7
du_lem'8324'_2024 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8324'_2024 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
            (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3)))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3)))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
                  (let v4
                         = coe
                             MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                             (coe v0) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (let v4
                            = coe
                                MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                (coe v0) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                              (let v4
                                     = coe
                                         MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                         (coe v0) in
                               coe
                                 MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                                 (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                              v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           v3)))
                  (coe
                     MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v3)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
                        (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v3)))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_'8744''45''8743''45'distrib'737'_264
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v3)))
            (let v4
                   = MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0) in
             let v5
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe v4) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v5))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2) v3))
               (coe du_lem'8324''8242'_2022 (coe v0) (coe v2) (coe v3))))
         (coe
            du_deMorgan'8321'_1830 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2 v3)))))
-- Algebra.Properties.BooleanAlgebra.XorRing._.lem₅
d_lem'8325'_2026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lem'8325'_2026 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_lem'8325'_2026 v2 v5 v6 v7
du_lem'8325'_2026 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lem'8325'_2026 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776''728'_66
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                    (coe v0) in
          coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (let v4
                   = coe
                       MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                       (coe v0) in
             coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (let v4
                      = coe
                          MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                        (let v4
                               = coe
                                   MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012
                                   (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v4)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
            (let v4
                   = MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) in
             coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
               (coe MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                     v3))))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
            (MAlonzo.Code.Algebra.Structures.d_isLattice_824
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
               v3)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v1) v2)
               (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v3))))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-isMagma
d_'8853''45'isMagma_2028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8853''45'isMagma_2028 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'isMagma_2028 v2 v3 v4
du_'8853''45'isMagma_2028 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8853''45'isMagma_2028 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_447
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
      (coe du_'8853''45'cong_1882 (coe v0) (coe v1) (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-isSemigroup
d_'8853''45'isSemigroup_2030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8853''45'isSemigroup_2030 ~v0 ~v1 v2 v3 v4
  = du_'8853''45'isSemigroup_2030 v2 v3 v4
du_'8853''45'isSemigroup_2030 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8853''45'isSemigroup_2030 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_3427
      (coe du_'8853''45'isMagma_2028 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'assoc_2002 (coe v0) (coe v1) (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isMonoid
d_'8853''45''8869''45'isMonoid_2032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8853''45''8869''45'isMonoid_2032 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isMonoid_2032 v2 v3 v4
du_'8853''45''8869''45'isMonoid_2032 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'8853''45''8869''45'isMonoid_2032 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMonoid'46'constructor_6889
      (coe du_'8853''45'isSemigroup_2030 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'identity_1952 (coe v0) (coe v1) (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isGroup
d_'8853''45''8869''45'isGroup_2034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_580
d_'8853''45''8869''45'isGroup_2034 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isGroup_2034 v2 v3 v4
du_'8853''45''8869''45'isGroup_2034 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_580
du_'8853''45''8869''45'isGroup_2034 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsGroup'46'constructor_11639
      (coe
         du_'8853''45''8869''45'isMonoid_2032 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'inverse_1960 (coe v0) (coe v1) (coe v2))
      (coe (\ v3 v4 v5 -> v5))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isAbelianGroup
d_'8853''45''8869''45'isAbelianGroup_2036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
d_'8853''45''8869''45'isAbelianGroup_2036 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8869''45'isAbelianGroup_2036 v2 v3 v4
du_'8853''45''8869''45'isAbelianGroup_2036 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
du_'8853''45''8869''45'isAbelianGroup_2036 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsAbelianGroup'46'constructor_15267
      (coe
         du_'8853''45''8869''45'isGroup_2034 (coe v0) (coe v1) (coe v2))
      (coe du_'8853''45'comm_1896 (coe v0) (coe v1) (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-isRing
d_'8853''45''8743''45'isRing_2038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_1584
d_'8853''45''8743''45'isRing_2038 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isRing_2038 v2 v3 v4
du_'8853''45''8743''45'isRing_2038 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_1584
du_'8853''45''8743''45'isRing_2038 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsRing'46'constructor_43503
      (coe
         du_'8853''45''8869''45'isAbelianGroup_2036 (coe v0) (coe v1)
         (coe v2))
      (coe du_'8743''45''8868''45'isMonoid_1786 (coe v0))
      (coe
         du_'8743''45'distrib'45''8853'_1982 (coe v0) (coe v1) (coe v2))
      (coe du_'8743''45'zero_1772 (coe v0))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-isCommutativeRing
d_'8853''45''8743''45'isCommutativeRing_2040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
d_'8853''45''8743''45'isCommutativeRing_2040 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'isCommutativeRing_2040 v2 v3 v4
du_'8853''45''8743''45'isCommutativeRing_2040 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
du_'8853''45''8743''45'isCommutativeRing_2040 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsCommutativeRing'46'constructor_48707
      (coe du_'8853''45''8743''45'isRing_2038 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe
            MAlonzo.Code.Algebra.Structures.d_isLattice_824
            (coe
               MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-commutativeRing
d_'8853''45''8743''45'commutativeRing_2042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
d_'8853''45''8743''45'commutativeRing_2042 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''8743''45'commutativeRing_2042 v2 v3 v4
du_'8853''45''8743''45'commutativeRing_2042 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
du_'8853''45''8743''45'commutativeRing_2042 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeRing'46'constructor_41415
      v1 (MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (\ v3 -> v3) (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (coe
         du_'8853''45''8743''45'isCommutativeRing_2040 (coe v0) (coe v1)
         (coe v2))
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-¬-distribˡ
d_'8853''45''172''45'distrib'737'_2044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45''172''45'distrib'737'_2044 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''172''45'distrib'737'_2044 v2 v3 v4
du_'8853''45''172''45'distrib'737'_2044 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45''172''45'distrib'737'_2044 v0 v1 v2
  = coe
      du_'172''45'distrib'737''45''8853'_1906 (coe v0) (coe v1) (coe v2)
-- Algebra.Properties.BooleanAlgebra.XorRing.⊕-¬-distribʳ
d_'8853''45''172''45'distrib'691'_2046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45''172''45'distrib'691'_2046 ~v0 ~v1 v2 v3 v4
  = du_'8853''45''172''45'distrib'691'_2046 v2 v3 v4
du_'8853''45''172''45'distrib'691'_2046 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45''172''45'distrib'691'_2046 v0 v1 v2
  = coe
      du_'172''45'distrib'691''45''8853'_1930 (coe v0) (coe v1) (coe v2)
-- Algebra.Properties.BooleanAlgebra.XorRing.isCommutativeRing
d_isCommutativeRing_2048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
d_isCommutativeRing_2048 ~v0 ~v1 v2 v3 v4
  = du_isCommutativeRing_2048 v2 v3 v4
du_isCommutativeRing_2048 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
du_isCommutativeRing_2048 v0 v1 v2
  = coe
      du_'8853''45''8743''45'isCommutativeRing_2040 (coe v0) (coe v1)
      (coe v2)
-- Algebra.Properties.BooleanAlgebra.XorRing.commutativeRing
d_commutativeRing_2050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
d_commutativeRing_2050 ~v0 ~v1 v2 v3 v4
  = du_commutativeRing_2050 v2 v3 v4
du_commutativeRing_2050 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
du_commutativeRing_2050 v0 v1 v2
  = coe
      du_'8853''45''8743''45'commutativeRing_2042 (coe v0) (coe v1)
      (coe v2)
-- Algebra.Properties.BooleanAlgebra._⊕_
d__'8853'__2052 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8853'__2052 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
      (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.commutativeRing
d_commutativeRing_2064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
d_commutativeRing_2064 ~v0 ~v1 v2 = du_commutativeRing_2064 v2
du_commutativeRing_2064 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
du_commutativeRing_2064 v0
  = coe
      du_commutativeRing_2050 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.isCommutativeRing
d_isCommutativeRing_2066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
d_isCommutativeRing_2066 ~v0 ~v1 v2 = du_isCommutativeRing_2066 v2
du_isCommutativeRing_2066 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
du_isCommutativeRing_2066 v0
  = coe
      du_isCommutativeRing_2048 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.¬-distribʳ-⊕
d_'172''45'distrib'691''45''8853'_2068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'691''45''8853'_2068 ~v0 ~v1 v2
  = du_'172''45'distrib'691''45''8853'_2068 v2
du_'172''45'distrib'691''45''8853'_2068 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'691''45''8853'_2068 v0
  = coe
      du_'172''45'distrib'691''45''8853'_1930 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.¬-distribˡ-⊕
d_'172''45'distrib'737''45''8853'_2070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'172''45'distrib'737''45''8853'_2070 ~v0 ~v1 v2
  = du_'172''45'distrib'737''45''8853'_2070 v2
du_'172''45'distrib'737''45''8853'_2070 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'172''45'distrib'737''45''8853'_2070 v0
  = coe
      du_'172''45'distrib'737''45''8853'_1906 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distrib-⊕
d_'8743''45'distrib'45''8853'_2072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8853'_2072 ~v0 ~v1 v2
  = du_'8743''45'distrib'45''8853'_2072 v2
du_'8743''45'distrib'45''8853'_2072 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8853'_2072 v0
  = coe
      du_'8743''45'distrib'45''8853'_1982 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distribʳ-⊕
d_'8743''45'distrib'691''45''8853'_2074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8853'_2074 ~v0 ~v1 v2
  = du_'8743''45'distrib'691''45''8853'_2074 v2
du_'8743''45'distrib'691''45''8853'_2074 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8853'_2074 v0
  = coe
      du_'8743''45'distrib'691''45''8853'_1980 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distribˡ-⊕
d_'8743''45'distrib'737''45''8853'_2076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8853'_2076 ~v0 ~v1 v2
  = du_'8743''45'distrib'737''45''8853'_2076 v2
du_'8743''45'distrib'737''45''8853'_2076 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8853'_2076 v0
  = coe
      du_'8743''45'distrib'737''45''8853'_1962 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-annihilates-¬
d_'8853''45'annihilates'45''172'_2078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'annihilates'45''172'_2078 ~v0 ~v1 v2
  = du_'8853''45'annihilates'45''172'_2078 v2
du_'8853''45'annihilates'45''172'_2078 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'annihilates'45''172'_2078 v0
  = coe
      du_'8853''45'annihilates'45''172'_1940 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-assoc
d_'8853''45'assoc_2080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'assoc_2080 ~v0 ~v1 v2 = du_'8853''45'assoc_2080 v2
du_'8853''45'assoc_2080 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'assoc_2080 v0
  = coe
      du_'8853''45'assoc_2002 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-comm
d_'8853''45'comm_2082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'comm_2082 ~v0 ~v1 v2 = du_'8853''45'comm_2082 v2
du_'8853''45'comm_2082 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'comm_2082 v0
  = coe
      du_'8853''45'comm_1896 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-cong
d_'8853''45'cong_2084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45'cong_2084 ~v0 ~v1 v2 = du_'8853''45'cong_2084 v2
du_'8853''45'cong_2084 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45'cong_2084 v0
  = coe
      du_'8853''45'cong_1882 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identity
d_'8853''45'identity_2086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'identity_2086 ~v0 ~v1 v2
  = du_'8853''45'identity_2086 v2
du_'8853''45'identity_2086 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'identity_2086 v0
  = coe
      du_'8853''45'identity_1952 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityʳ
d_'8853''45'identity'691'_2088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8853''45'identity'691'_2088 ~v0 ~v1 v2
  = du_'8853''45'identity'691'_2088 v2
du_'8853''45'identity'691'_2088 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8853''45'identity'691'_2088 v0
  = coe
      du_'8853''45'identity'691'_1950 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityˡ
d_'8853''45'identity'737'_2090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8853''45'identity'737'_2090 ~v0 ~v1 v2
  = du_'8853''45'identity'737'_2090 v2
du_'8853''45'identity'737'_2090 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8853''45'identity'737'_2090 v0
  = coe
      du_'8853''45'identity'737'_1946 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverse
d_'8853''45'inverse_2092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8853''45'inverse_2092 ~v0 ~v1 v2 = du_'8853''45'inverse_2092 v2
du_'8853''45'inverse_2092 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8853''45'inverse_2092 v0
  = coe
      du_'8853''45'inverse_1960 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseʳ
d_'8853''45'inverse'691'_2094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8853''45'inverse'691'_2094 ~v0 ~v1 v2
  = du_'8853''45'inverse'691'_2094 v2
du_'8853''45'inverse'691'_2094 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8853''45'inverse'691'_2094 v0
  = coe
      du_'8853''45'inverse'691'_1958 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseˡ
d_'8853''45'inverse'737'_2096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
d_'8853''45'inverse'737'_2096 ~v0 ~v1 v2
  = du_'8853''45'inverse'737'_2096 v2
du_'8853''45'inverse'737'_2096 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny
du_'8853''45'inverse'737'_2096 v0
  = coe
      du_'8853''45'inverse'737'_1954 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-isMagma
d_'8853''45'isMagma_2098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8853''45'isMagma_2098 ~v0 ~v1 v2 = du_'8853''45'isMagma_2098 v2
du_'8853''45'isMagma_2098 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8853''45'isMagma_2098 v0
  = coe
      du_'8853''45'isMagma_2028 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-isSemigroup
d_'8853''45'isSemigroup_2100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8853''45'isSemigroup_2100 ~v0 ~v1 v2
  = du_'8853''45'isSemigroup_2100 v2
du_'8853''45'isSemigroup_2100 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8853''45'isSemigroup_2100 v0
  = coe
      du_'8853''45'isSemigroup_2030 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-¬-distribʳ
d_'8853''45''172''45'distrib'691'_2102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45''172''45'distrib'691'_2102 ~v0 ~v1 v2
  = du_'8853''45''172''45'distrib'691'_2102 v2
du_'8853''45''172''45'distrib'691'_2102 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45''172''45'distrib'691'_2102 v0
  = coe
      du_'8853''45''172''45'distrib'691'_2046 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-¬-distribˡ
d_'8853''45''172''45'distrib'737'_2104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'8853''45''172''45'distrib'737'_2104 ~v0 ~v1 v2
  = du_'8853''45''172''45'distrib'737'_2104 v2
du_'8853''45''172''45'distrib'737'_2104 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8853''45''172''45'distrib'737'_2104 v0
  = coe
      du_'8853''45''172''45'distrib'737'_2044 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-commutativeRing
d_'8853''45''8743''45'commutativeRing_2106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
d_'8853''45''8743''45'commutativeRing_2106 ~v0 ~v1 v2
  = du_'8853''45''8743''45'commutativeRing_2106 v2
du_'8853''45''8743''45'commutativeRing_2106 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeRing_2704
du_'8853''45''8743''45'commutativeRing_2106 v0
  = coe
      du_'8853''45''8743''45'commutativeRing_2042 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isCommutativeRing
d_'8853''45''8743''45'isCommutativeRing_2108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
d_'8853''45''8743''45'isCommutativeRing_2108 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isCommutativeRing_2108 v2
du_'8853''45''8743''45'isCommutativeRing_2108 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeRing_1720
du_'8853''45''8743''45'isCommutativeRing_2108 v0
  = coe
      du_'8853''45''8743''45'isCommutativeRing_2040 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isRing
d_'8853''45''8743''45'isRing_2110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_1584
d_'8853''45''8743''45'isRing_2110 ~v0 ~v1 v2
  = du_'8853''45''8743''45'isRing_2110 v2
du_'8853''45''8743''45'isRing_2110 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsRing_1584
du_'8853''45''8743''45'isRing_2110 v0
  = coe
      du_'8853''45''8743''45'isRing_2038 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isAbelianGroup
d_'8853''45''8869''45'isAbelianGroup_2112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
d_'8853''45''8869''45'isAbelianGroup_2112 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isAbelianGroup_2112 v2
du_'8853''45''8869''45'isAbelianGroup_2112 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsAbelianGroup_662
du_'8853''45''8869''45'isAbelianGroup_2112 v0
  = coe
      du_'8853''45''8869''45'isAbelianGroup_2036 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isGroup
d_'8853''45''8869''45'isGroup_2114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_580
d_'8853''45''8869''45'isGroup_2114 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isGroup_2114 v2
du_'8853''45''8869''45'isGroup_2114 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsGroup_580
du_'8853''45''8869''45'isGroup_2114 v0
  = coe
      du_'8853''45''8869''45'isGroup_2034 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isMonoid
d_'8853''45''8869''45'isMonoid_2116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
d_'8853''45''8869''45'isMonoid_2116 ~v0 ~v1 v2
  = du_'8853''45''8869''45'isMonoid_2116 v2
du_'8853''45''8869''45'isMonoid_2116 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  MAlonzo.Code.Algebra.Structures.T_IsMonoid_358
du_'8853''45''8869''45'isMonoid_2116 v0
  = coe
      du_'8853''45''8869''45'isMonoid_2032 (coe v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
              (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2))))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
              (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                    (coe
                       MAlonzo.Code.Algebra.Structures.d_isDistributiveLattice_1884
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)))))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v1 v2)))))
-- Algebra.Properties.BooleanAlgebra.¬⊥=⊤
d_'172''8869''61''8868'_2118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 -> AgdaAny
d_'172''8869''61''8868'_2118 ~v0 ~v1 v2
  = du_'172''8869''61''8868'_2118 v2
du_'172''8869''61''8868'_2118 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 -> AgdaAny
du_'172''8869''61''8868'_2118 v0
  = coe du_'8869''8777''8868'_1818 (coe v0)
-- Algebra.Properties.BooleanAlgebra.¬⊤=⊥
d_'172''8868''61''8869'_2120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 -> AgdaAny
d_'172''8868''61''8869'_2120 ~v0 ~v1 v2
  = du_'172''8868''61''8869'_2120 v2
du_'172''8868''61''8869'_2120 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 -> AgdaAny
du_'172''8868''61''8869'_2120 v0
  = coe du_'8868''8777''8869'_1820 (coe v0)
-- Algebra.Properties.BooleanAlgebra.replace-equality
d_replace'45'equality_2128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16) ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920
d_replace'45'equality_2128 ~v0 ~v1 v2 ~v3 v4
  = du_replace'45'equality_2128 v2 v4
du_replace'45'equality_2128 ::
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16) ->
  MAlonzo.Code.Algebra.Bundles.T_BooleanAlgebra_2920
du_replace'45'equality_2128 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_BooleanAlgebra'46'constructor_44759
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsBooleanAlgebra'46'constructor_53651
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
            (coe
               MAlonzo.Code.Algebra.Properties.DistributiveLattice.du_replace'45'equality_280
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_distributiveLattice_3012 (coe v0))
               (coe v1)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'8744'__2946 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                       (MAlonzo.Code.Algebra.Bundles.d_'8868'_2952 (coe v0))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8744''45'complement'691'_1886
                    (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                    v2)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'8743'__2948 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d_'172'__2950 v0 v2))
                       (MAlonzo.Code.Algebra.Bundles.d_'8869'_2954 (coe v0))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8743''45'complement'691'_1888
                    (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0))
                    v2)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                          (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0))
                          (\ v5 v6 -> v5) v2 v3)
                       (coe
                          MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                          (\ v5 v6 -> v6)
                          (MAlonzo.Code.Algebra.Bundles.d_'172'__2950 (coe v0)) v2 v3)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'172''45'cong_1890
                    (MAlonzo.Code.Algebra.Bundles.d_isBooleanAlgebra_2956 (coe v0)) v2
                    v3
                    (coe
                       MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                       (MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1 v2 v3))
                       v4)))))
