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

module MAlonzo.Code.Algebra.Properties.Lattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Lattice._.IsBand
d_IsBand_72 a0 a1 a2 a3 = ()
-- Algebra.Properties.Lattice._.IsLattice
d_IsLattice_98 a0 a1 a2 a3 a4 = ()
-- Algebra.Properties.Lattice._.IsMagma
d_IsMagma_100 a0 a1 a2 a3 = ()
-- Algebra.Properties.Lattice._.IsSemigroup
d_IsSemigroup_110 a0 a1 a2 a3 = ()
-- Algebra.Properties.Lattice._.IsSemilattice
d_IsSemilattice_112 a0 a1 a2 a3 = ()
-- Algebra.Properties.Lattice._.Idempotent
d_Idempotent_1524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_1524 = erased
-- Algebra.Properties.Lattice.∧-idem
d_'8743''45'idem_1588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 -> AgdaAny -> AgdaAny
d_'8743''45'idem_1588 ~v0 ~v1 v2 v3 = du_'8743''45'idem_1588 v2 v3
du_'8743''45'idem_1588 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 -> AgdaAny -> AgdaAny
du_'8743''45'idem_1588 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1)))
            v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))))
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'absorbs'45''8744'_792
               (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1)))
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
            (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))
            (coe v1) (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                  (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1))
               v1
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
                  (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v1 v1))))
-- Algebra.Properties.Lattice.∧-isMagma
d_'8743''45'isMagma_1592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8743''45'isMagma_1592 ~v0 ~v1 v2 = du_'8743''45'isMagma_1592 v2
du_'8743''45'isMagma_1592 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8743''45'isMagma_1592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_447
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
-- Algebra.Properties.Lattice.∧-isSemigroup
d_'8743''45'isSemigroup_1594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8743''45'isSemigroup_1594 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_1594 v2
du_'8743''45'isSemigroup_1594 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8743''45'isSemigroup_1594 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_3427
      (coe du_'8743''45'isMagma_1592 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
-- Algebra.Properties.Lattice.∧-isBand
d_'8743''45'isBand_1596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8743''45'isBand_1596 ~v0 ~v1 v2 = du_'8743''45'isBand_1596 v2
du_'8743''45'isBand_1596 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8743''45'isBand_1596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_4163
      (coe du_'8743''45'isSemigroup_1594 (coe v0))
      (coe du_'8743''45'idem_1588 (coe v0))
-- Algebra.Properties.Lattice.∧-isSemilattice
d_'8743''45'isSemilattice_1598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8743''45'isSemilattice_1598 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_1598 v2
du_'8743''45'isSemilattice_1598 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8743''45'isSemilattice_1598 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemilattice'46'constructor_5951
      (coe du_'8743''45'isBand_1596 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
-- Algebra.Properties.Lattice.∧-semilattice
d_'8743''45'semilattice_1600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8743''45'semilattice_1600 ~v0 ~v1 v2
  = du_'8743''45'semilattice_1600 v2
du_'8743''45'semilattice_1600 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8743''45'semilattice_1600 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semilattice'46'constructor_6221
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 (coe v0))
      (coe du_'8743''45'isSemilattice_1598 (coe v0))
-- Algebra.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_1604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
d_'8743''45'isOrderTheoreticJoinSemilattice_1604 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_1604 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_1604 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
du_'8743''45'isOrderTheoreticJoinSemilattice_1604 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
      (coe du_'8743''45'semilattice_1600 (coe v0))
-- Algebra.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_1606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
d_'8743''45'isOrderTheoreticMeetSemilattice_1606 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_1606 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_1606 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
du_'8743''45'isOrderTheoreticMeetSemilattice_1606 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
      (coe du_'8743''45'semilattice_1600 (coe v0))
-- Algebra.Properties.Lattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_1608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
d_'8743''45'orderTheoreticJoinSemilattice_1608 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_1608 v2
du_'8743''45'orderTheoreticJoinSemilattice_1608 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
du_'8743''45'orderTheoreticJoinSemilattice_1608 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
      (coe du_'8743''45'semilattice_1600 (coe v0))
-- Algebra.Properties.Lattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_1610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
d_'8743''45'orderTheoreticMeetSemilattice_1610 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_1610 v2
du_'8743''45'orderTheoreticMeetSemilattice_1610 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
du_'8743''45'orderTheoreticMeetSemilattice_1610 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
      (coe du_'8743''45'semilattice_1600 (coe v0))
-- Algebra.Properties.Lattice.∨-idem
d_'8744''45'idem_1612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 -> AgdaAny -> AgdaAny
d_'8744''45'idem_1612 ~v0 ~v1 v2 v3 = du_'8744''45'idem_1612 v2 v3
du_'8744''45'idem_1612 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 -> AgdaAny -> AgdaAny
du_'8744''45'idem_1612 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1 v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1))
            v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                     (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))))
               (coe v1))
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
               (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v1 v1))
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
            (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))
            (coe v1) (coe v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                  (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v1) v1
               (coe du_'8743''45'idem_1588 (coe v0) (coe v1)))))
-- Algebra.Properties.Lattice.∨-isMagma
d_'8744''45'isMagma_1616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8744''45'isMagma_1616 ~v0 ~v1 v2 = du_'8744''45'isMagma_1616 v2
du_'8744''45'isMagma_1616 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8744''45'isMagma_1616 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_447
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
-- Algebra.Properties.Lattice.∨-isSemigroup
d_'8744''45'isSemigroup_1618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8744''45'isSemigroup_1618 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_1618 v2
du_'8744''45'isSemigroup_1618 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8744''45'isSemigroup_1618 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_3427
      (coe du_'8744''45'isMagma_1616 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
-- Algebra.Properties.Lattice.∨-isBand
d_'8744''45'isBand_1620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8744''45'isBand_1620 ~v0 ~v1 v2 = du_'8744''45'isBand_1620 v2
du_'8744''45'isBand_1620 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8744''45'isBand_1620 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_4163
      (coe du_'8744''45'isSemigroup_1618 (coe v0))
      (coe du_'8744''45'idem_1612 (coe v0))
-- Algebra.Properties.Lattice.∨-isSemilattice
d_'8744''45'isSemilattice_1622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8744''45'isSemilattice_1622 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_1622 v2
du_'8744''45'isSemilattice_1622 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8744''45'isSemilattice_1622 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemilattice'46'constructor_5951
      (coe du_'8744''45'isBand_1620 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
-- Algebra.Properties.Lattice.∨-semilattice
d_'8744''45'semilattice_1624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8744''45'semilattice_1624 ~v0 ~v1 v2
  = du_'8744''45'semilattice_1624 v2
du_'8744''45'semilattice_1624 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8744''45'semilattice_1624 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Semilattice'46'constructor_6221
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 (coe v0))
      (coe du_'8744''45'isSemilattice_1622 (coe v0))
-- Algebra.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_1628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
d_'8743''45'isOrderTheoreticJoinSemilattice_1628 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_1628 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_1628 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
du_'8743''45'isOrderTheoreticJoinSemilattice_1628 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
      (coe du_'8744''45'semilattice_1624 (coe v0))
-- Algebra.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_1630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
d_'8743''45'isOrderTheoreticMeetSemilattice_1630 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_1630 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_1630 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
du_'8743''45'isOrderTheoreticMeetSemilattice_1630 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
      (coe du_'8744''45'semilattice_1624 (coe v0))
-- Algebra.Properties.Lattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_1632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
d_'8743''45'orderTheoreticJoinSemilattice_1632 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_1632 v2
du_'8743''45'orderTheoreticJoinSemilattice_1632 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
du_'8743''45'orderTheoreticJoinSemilattice_1632 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
      (coe du_'8744''45'semilattice_1624 (coe v0))
-- Algebra.Properties.Lattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_1634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
d_'8743''45'orderTheoreticMeetSemilattice_1634 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_1634 v2
du_'8743''45'orderTheoreticMeetSemilattice_1634 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
du_'8743''45'orderTheoreticMeetSemilattice_1634 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
      (coe du_'8744''45'semilattice_1624 (coe v0))
-- Algebra.Properties.Lattice.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_1636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_'8743''45''8744''45'isLattice_1636 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_1636 v2
du_'8743''45''8744''45'isLattice_1636 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
du_'8743''45''8744''45'isLattice_1636 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsLattice'46'constructor_17577
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe
         MAlonzo.Code.Data.Product.du_swap_386
         (coe
            MAlonzo.Code.Algebra.Structures.d_absorptive_776
            (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))))
-- Algebra.Properties.Lattice.∧-∨-lattice
d_'8743''45''8744''45'lattice_1638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_'8743''45''8744''45'lattice_1638 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_1638 v2
du_'8743''45''8744''45'lattice_1638 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
du_'8743''45''8744''45'lattice_1638 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Lattice'46'constructor_16803
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 (coe v0))
      (coe du_'8743''45''8744''45'isLattice_1636 (coe v0))
-- Algebra.Properties.Lattice._.poset
d_poset_1642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_1642 ~v0 ~v1 v2 = du_poset_1642 v2
du_poset_1642 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_1642 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_poset_162
      (coe du_'8743''45'semilattice_1600 (coe v0))
-- Algebra.Properties.Lattice._._≤_
d__'8804'__1646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> ()
d__'8804'__1646 = erased
-- Algebra.Properties.Lattice.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_1650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
d_'8744''45''8743''45'isOrderTheoreticLattice_1650 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_1650 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_1650 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
du_'8744''45''8743''45'isOrderTheoreticLattice_1650 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C_IsLattice'46'constructor_21159
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
         (coe
            MAlonzo.Code.Algebra.Properties.Semilattice.du_poset_162
            (coe du_'8743''45'semilattice_1600 (coe v0))))
      (coe du_supremum_1694 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du_infimum_2002
         (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 (coe v0))
         (coe du_'8743''45'isSemilattice_1598 (coe v0)))
-- Algebra.Properties.Lattice._._._≤_
d__'8804'__1662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> ()
d__'8804'__1662 = erased
-- Algebra.Properties.Lattice._.sound
d_sound_1674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sound_1674 ~v0 ~v1 v2 v3 v4 v5 = du_sound_1674 v2 v3 v4 v5
du_sound_1674 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sound_1674 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v2) v1
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v2)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v1))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1 v2))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1 v2))
                  v1 v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                           (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))))
                     (coe v1))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8743''45'absorbs'45''8744'_792
                     (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                  (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))
                  (coe v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                     (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
               (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))
               (coe v1) (coe v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v1)
               (coe v3))))
-- Algebra.Properties.Lattice._.complete
d_complete_1686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_complete_1686 ~v0 ~v1 v2 v3 v4 v5 = du_complete_1686 v2 v3 v4 v5
du_complete_1686 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_complete_1686 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
         (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
      (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v1) v2
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v2))
            v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2 v1))
               v2
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (coe MAlonzo.Code.Algebra.Bundles.du_setoid_1218 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2 v1))
                  v2 v2
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                           (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))))
                     (coe v2))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
                     (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
                  (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))
                  (coe v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                     (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v1 v2)))
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8744''45'cong'737'_802
               (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0))
               (coe v2) (coe v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v1 v2)
               (coe v3))))
-- Algebra.Properties.Lattice._.supremum
d_supremum_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_supremum_1694 ~v0 ~v1 v2 v3 v4 = du_supremum_1694 v2 v3 v4
du_supremum_1694 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_supremum_1694 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_sound_1674 (coe v0) (coe v1)
         (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Lattice.du_x'8804'x'8744'y_96
            (coe
               MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
               (coe du_'8744''45'semilattice_1624 (coe v0)))
            (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_sound_1674 (coe v0) (coe v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Lattice.du_y'8804'x'8744'y_108
               (coe
                  MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
                  (coe du_'8744''45'semilattice_1624 (coe v0)))
               (coe v1) (coe v2)))
         (coe
            (\ v3 v4 v5 ->
               coe
                 du_sound_1674 (coe v0)
                 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v1 v2)
                 (coe v3)
                 (coe
                    MAlonzo.Code.Relation.Binary.Lattice.du_'8744''45'least_122
                    (coe
                       MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
                       (coe du_'8744''45'semilattice_1624 (coe v0)))
                    v1 v2 v3 (coe du_complete_1686 (coe v0) (coe v1) (coe v3) (coe v4))
                    (coe du_complete_1686 (coe v0) (coe v2) (coe v3) (coe v5))))))
-- Algebra.Properties.Lattice.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_1706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
d_'8744''45''8743''45'orderTheoreticLattice_1706 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_1706 v2
du_'8744''45''8743''45'orderTheoreticLattice_1706 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
du_'8744''45''8743''45'orderTheoreticLattice_1706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C_Lattice'46'constructor_24851
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 (coe v0))
      (coe du_'8744''45''8743''45'isOrderTheoreticLattice_1650 (coe v0))
-- Algebra.Properties.Lattice.∧-idempotent
d_'8743''45'idempotent_1708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 -> AgdaAny -> AgdaAny
d_'8743''45'idempotent_1708 ~v0 ~v1 v2
  = du_'8743''45'idempotent_1708 v2
du_'8743''45'idempotent_1708 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 -> AgdaAny -> AgdaAny
du_'8743''45'idempotent_1708 v0
  = coe du_'8743''45'idem_1588 (coe v0)
-- Algebra.Properties.Lattice.∨-idempotent
d_'8744''45'idempotent_1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 -> AgdaAny -> AgdaAny
d_'8744''45'idempotent_1710 ~v0 ~v1 v2
  = du_'8744''45'idempotent_1710 v2
du_'8744''45'idempotent_1710 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 -> AgdaAny -> AgdaAny
du_'8744''45'idempotent_1710 v0
  = coe du_'8744''45'idem_1612 (coe v0)
-- Algebra.Properties.Lattice.isOrderTheoreticLattice
d_isOrderTheoreticLattice_1712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
d_isOrderTheoreticLattice_1712 ~v0 ~v1 v2
  = du_isOrderTheoreticLattice_1712 v2
du_isOrderTheoreticLattice_1712 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
du_isOrderTheoreticLattice_1712 v0
  = coe du_'8744''45''8743''45'isOrderTheoreticLattice_1650 (coe v0)
-- Algebra.Properties.Lattice.orderTheoreticLattice
d_orderTheoreticLattice_1714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
d_orderTheoreticLattice_1714 ~v0 ~v1 v2
  = du_orderTheoreticLattice_1714 v2
du_orderTheoreticLattice_1714 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
du_orderTheoreticLattice_1714 v0
  = coe du_'8744''45''8743''45'orderTheoreticLattice_1706 (coe v0)
-- Algebra.Properties.Lattice.replace-equality
d_replace'45'equality_1722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16) ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_replace'45'equality_1722 ~v0 ~v1 v2 ~v3 v4
  = du_replace'45'equality_1722 v2 v4
du_replace'45'equality_1722 ::
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16) ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
du_replace'45'equality_1722 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_Lattice'46'constructor_16803
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsLattice'46'constructor_17577
         (coe
            MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                    (MAlonzo.Code.Function.Equivalence.d_to_34 (coe v1 v2 v2))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                       (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                          (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
                       v2)))
            (coe
               (\ v2 v3 v4 ->
                  coe
                    MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                    (MAlonzo.Code.Function.Equivalence.d_to_34 (coe v1 v3 v2))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                       (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                          (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
                       v2 v3
                       (coe
                          MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                          (MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1 v2 v3)) v4))))
            (coe
               (\ v2 v3 v4 v5 v6 ->
                  coe
                    MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                    (MAlonzo.Code.Function.Equivalence.d_to_34 (coe v1 v2 v4))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                       (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                          (coe MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)))
                       v2 v3 v4
                       (coe
                          MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                          (MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1 v2 v3)) v5)
                       (coe
                          MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                          (MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1 v3 v4))
                          v6)))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v3)
                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v3 v2)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                    (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v3)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v3) v4)
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v3 v4))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8744''45'assoc_766
                    (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v3
                    v4)))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v4)
                       (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v3 v5)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                    (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v3 v4
                    v5
                    (coe
                       MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                       (MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1 v2 v3)) v6)
                    (coe
                       MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                       (MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1 v4 v5)) v7))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2 v3)
                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v3 v2)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                    (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v3)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2 v3) v4)
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v3 v4))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                    (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v3
                    v4)))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2 v4)
                       (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v3 v5)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                    (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v3 v4
                    v5
                    (coe
                       MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                       (MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1 v2 v3)) v6)
                    (coe
                       MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                       (MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1 v4 v5)) v7))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                    (MAlonzo.Code.Function.Equivalence.d_to_34
                       (coe
                          v1
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2
                             (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2 v3))
                          v2))
                    (coe
                       MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
                       (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v3)))
            (coe
               (\ v2 v3 ->
                  coe
                    MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                    (MAlonzo.Code.Function.Equivalence.d_to_34
                       (coe
                          v1
                          (coe
                             MAlonzo.Code.Algebra.Bundles.d__'8743'__1166 v0 v2
                             (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1164 v0 v2 v3))
                          v2))
                    (coe
                       MAlonzo.Code.Algebra.Structures.du_'8743''45'absorbs'45''8744'_792
                       (MAlonzo.Code.Algebra.Bundles.d_isLattice_1168 (coe v0)) v2 v3)))))
