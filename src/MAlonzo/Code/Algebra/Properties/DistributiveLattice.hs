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

module MAlonzo.Code.Algebra.Properties.DistributiveLattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
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

-- Algebra.Properties.DistributiveLattice._._DistributesOver_
d__DistributesOver__80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__80 = erased
-- Algebra.Properties.DistributiveLattice._._DistributesOverʳ_
d__DistributesOver'691'__82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__82 = erased
-- Algebra.Properties.DistributiveLattice._._DistributesOverˡ_
d__DistributesOver'737'__84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__84 = erased
-- Algebra.Properties.DistributiveLattice._.isOrderTheoreticLattice
d_isOrderTheoreticLattice_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
d_isOrderTheoreticLattice_174 ~v0 ~v1 v2
  = du_isOrderTheoreticLattice_174 v2
du_isOrderTheoreticLattice_174 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
du_isOrderTheoreticLattice_174 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_isOrderTheoreticLattice_1712
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.orderTheoreticLattice
d_orderTheoreticLattice_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
d_orderTheoreticLattice_176 ~v0 ~v1 v2
  = du_orderTheoreticLattice_176 v2
du_orderTheoreticLattice_176 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
du_orderTheoreticLattice_176 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_orderTheoreticLattice_1714
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.poset
d_poset_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_178 ~v0 ~v1 v2 = du_poset_178 v2
du_poset_178 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_178 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_poset_162
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∧-idem
d_'8743''45'idem_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny
d_'8743''45'idem_180 ~v0 ~v1 v2 = du_'8743''45'idem_180 v2
du_'8743''45'idem_180 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny
du_'8743''45'idem_180 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'idem_1588
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-idempotent
d_'8743''45'idempotent_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny
d_'8743''45'idempotent_182 ~v0 ~v1 v2
  = du_'8743''45'idempotent_182 v2
du_'8743''45'idempotent_182 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny
du_'8743''45'idempotent_182 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'idempotent_1708
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-isBand
d_'8743''45'isBand_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8743''45'isBand_184 ~v0 ~v1 v2 = du_'8743''45'isBand_184 v2
du_'8743''45'isBand_184 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8743''45'isBand_184 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isBand_1596
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-isMagma
d_'8743''45'isMagma_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8743''45'isMagma_186 ~v0 ~v1 v2 = du_'8743''45'isMagma_186 v2
du_'8743''45'isMagma_186 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8743''45'isMagma_186 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isMagma_1592
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
d_'8743''45'isOrderTheoreticJoinSemilattice_188 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_188 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_188 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
du_'8743''45'isOrderTheoreticJoinSemilattice_188 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
d_'8743''45'isOrderTheoreticMeetSemilattice_190 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_190 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_190 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
du_'8743''45'isOrderTheoreticMeetSemilattice_190 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∧-isSemigroup
d_'8743''45'isSemigroup_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8743''45'isSemigroup_192 ~v0 ~v1 v2
  = du_'8743''45'isSemigroup_192 v2
du_'8743''45'isSemigroup_192 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8743''45'isSemigroup_192 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isSemigroup_1594
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-isSemilattice
d_'8743''45'isSemilattice_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8743''45'isSemilattice_194 ~v0 ~v1 v2
  = du_'8743''45'isSemilattice_194 v2
du_'8743''45'isSemilattice_194 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8743''45'isSemilattice_194 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'isSemilattice_1598
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
d_'8743''45'orderTheoreticJoinSemilattice_196 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_196 v2
du_'8743''45'orderTheoreticJoinSemilattice_196 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
du_'8743''45'orderTheoreticJoinSemilattice_196 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
d_'8743''45'orderTheoreticMeetSemilattice_198 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_198 v2
du_'8743''45'orderTheoreticMeetSemilattice_198 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
du_'8743''45'orderTheoreticMeetSemilattice_198 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∧-semilattice
d_'8743''45'semilattice_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8743''45'semilattice_200 ~v0 ~v1 v2
  = du_'8743''45'semilattice_200 v2
du_'8743''45'semilattice_200 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8743''45'semilattice_200 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45'semilattice_1600
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-∨-isLattice
d_'8743''45''8744''45'isLattice_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
d_'8743''45''8744''45'isLattice_202 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isLattice_202 v2
du_'8743''45''8744''45'isLattice_202 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsLattice_740
du_'8743''45''8744''45'isLattice_202 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45''8744''45'isLattice_1636
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-∨-lattice
d_'8743''45''8744''45'lattice_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
d_'8743''45''8744''45'lattice_204 ~v0 ~v1 v2
  = du_'8743''45''8744''45'lattice_204 v2
du_'8743''45''8744''45'lattice_204 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Bundles.T_Lattice_1144
du_'8743''45''8744''45'lattice_204 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45''8744''45'lattice_1638
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∨-idem
d_'8744''45'idem_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny
d_'8744''45'idem_206 ~v0 ~v1 v2 = du_'8744''45'idem_206 v2
du_'8744''45'idem_206 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny
du_'8744''45'idem_206 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'idem_1612
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∨-idempotent
d_'8744''45'idempotent_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny
d_'8744''45'idempotent_208 ~v0 ~v1 v2
  = du_'8744''45'idempotent_208 v2
du_'8744''45'idempotent_208 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny
du_'8744''45'idempotent_208 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'idempotent_1710
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∨-isBand
d_'8744''45'isBand_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
d_'8744''45'isBand_210 ~v0 ~v1 v2 = du_'8744''45'isBand_210 v2
du_'8744''45'isBand_210 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_230
du_'8744''45'isBand_210 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isBand_1620
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∨-isMagma
d_'8744''45'isMagma_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
d_'8744''45'isMagma_212 ~v0 ~v1 v2 = du_'8744''45'isMagma_212 v2
du_'8744''45'isMagma_212 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_86
du_'8744''45'isMagma_212 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isMagma_1616
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
d_'8743''45'isOrderTheoreticJoinSemilattice_214 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_214 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_214 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
du_'8743''45'isOrderTheoreticJoinSemilattice_214 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticJoinSemilattice_178
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
d_'8743''45'isOrderTheoreticMeetSemilattice_216 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_216 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_216 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
du_'8743''45'isOrderTheoreticMeetSemilattice_216 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'isOrderTheoreticMeetSemilattice_176
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∨-isSemigroup
d_'8744''45'isSemigroup_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
d_'8744''45'isSemigroup_218 ~v0 ~v1 v2
  = du_'8744''45'isSemigroup_218 v2
du_'8744''45'isSemigroup_218 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_194
du_'8744''45'isSemigroup_218 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isSemigroup_1618
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∨-isSemilattice
d_'8744''45'isSemilattice_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
d_'8744''45'isSemilattice_220 ~v0 ~v1 v2
  = du_'8744''45'isSemilattice_220 v2
du_'8744''45'isSemilattice_220 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemilattice_312
du_'8744''45'isSemilattice_220 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'isSemilattice_1622
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
d_'8743''45'orderTheoreticJoinSemilattice_222 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_222 v2
du_'8743''45'orderTheoreticJoinSemilattice_222 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
du_'8743''45'orderTheoreticJoinSemilattice_222 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticJoinSemilattice_182
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
d_'8743''45'orderTheoreticMeetSemilattice_224 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_224 v2
du_'8743''45'orderTheoreticMeetSemilattice_224 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
du_'8743''45'orderTheoreticMeetSemilattice_224 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Properties.Semilattice.du_'8743''45'orderTheoreticMeetSemilattice_180
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
         (coe v1))
-- Algebra.Properties.DistributiveLattice._.∨-semilattice
d_'8744''45'semilattice_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
d_'8744''45'semilattice_226 ~v0 ~v1 v2
  = du_'8744''45'semilattice_226 v2
du_'8744''45'semilattice_226 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402
du_'8744''45'semilattice_226 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45'semilattice_1624
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∨-∧-isOrderTheoreticLattice
d_'8744''45''8743''45'isOrderTheoreticLattice_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
d_'8744''45''8743''45'isOrderTheoreticLattice_228 ~v0 ~v1 v2
  = du_'8744''45''8743''45'isOrderTheoreticLattice_228 v2
du_'8744''45''8743''45'isOrderTheoreticLattice_228 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsLattice_810
du_'8744''45''8743''45'isOrderTheoreticLattice_228 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45''8743''45'isOrderTheoreticLattice_1650
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice._.∨-∧-orderTheoreticLattice
d_'8744''45''8743''45'orderTheoreticLattice_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
d_'8744''45''8743''45'orderTheoreticLattice_230 ~v0 ~v1 v2
  = du_'8744''45''8743''45'orderTheoreticLattice_230 v2
du_'8744''45''8743''45'orderTheoreticLattice_230 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_Lattice_898
du_'8744''45''8743''45'orderTheoreticLattice_230 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Lattice.du_'8744''45''8743''45'orderTheoreticLattice_1706
      (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
-- Algebra.Properties.DistributiveLattice.∨-distribˡ-∧
d_'8744''45'distrib'737''45''8743'_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45'distrib'737''45''8743'_232 ~v0 ~v1 v2 v3 v4 v5
  = du_'8744''45'distrib'737''45''8743'_232 v2 v3 v4 v5
du_'8744''45'distrib'737''45''8743'_232 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45'distrib'737''45''8743'_232 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v3) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v3) v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v3 v1))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v3 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                              (coe v0)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v3)))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                           (coe v0)))
                     v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'cong_774
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                           (coe v0)))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v3 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                           (coe v0)))
                     v3 v1)))
            (coe
               MAlonzo.Code.Algebra.Structures.d_'8744''45'distrib'691''45''8743'_826
               (MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                  (coe v0))
               v1 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
            (MAlonzo.Code.Algebra.Structures.d_isLattice_824
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                  (coe v0)))
            v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v3)))
-- Algebra.Properties.DistributiveLattice.∨-distrib-∧
d_'8744''45'distrib'45''8743'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45'distrib'45''8743'_240 ~v0 ~v1 v2
  = du_'8744''45'distrib'45''8743'_240 v2
du_'8744''45'distrib'45''8743'_240 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45'distrib'45''8743'_240 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8744''45'distrib'737''45''8743'_232 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.d_'8744''45'distrib'691''45''8743'_826
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
            (coe v0)))
-- Algebra.Properties.DistributiveLattice.∧-distribˡ-∨
d_'8743''45'distrib'737''45''8744'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'737''45''8744'_242 ~v0 ~v1 v2 v3 v4 v5
  = du_'8743''45'distrib'737''45''8744'_242 v2 v3 v4 v5
du_'8743''45'distrib'737''45''8744'_242 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'737''45''8744'_242 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1))
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  (coe
                     MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                     (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     (coe
                        MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                        (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                        (coe
                           MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                           (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                                       (coe v0)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3)))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_'8744''45'distrib'691''45''8743'_826
                              (MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                                 (coe v0))
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3) v1
                              v2)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                              (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                        (coe v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                           (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isLattice_824
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                           v1
                           (let v4
                                  = MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                                      (coe v0) in
                            coe
                              MAlonzo.Code.Algebra.Structures.du_'8744''45'absorbs'45''8743'_790
                              (MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v4)) v1
                              v3))))
                  (coe
                     MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                           (coe v0)))
                     (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isLattice_824
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
                        (coe
                           du_'8744''45'distrib'737''45''8743'_232 (coe v0) (coe v2) (coe v1)
                           (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d_'8743''45'assoc_772
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                        (coe v0)))
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3)))
            (coe
               MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isLattice_824
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                     (coe v0)))
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3)
               (coe
                  MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1)
                  (\ v4 v5 -> v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1))
               (coe
                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                  (\ v4 v5 -> v5)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'737'_794
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                        (coe v0)))
                  (coe v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v1)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'comm_764
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                           (coe v0)))
                     v1 v2))))
         (coe
            MAlonzo.Code.Algebra.Structures.du_'8743''45'cong'691'_798
            (coe
               MAlonzo.Code.Algebra.Structures.d_isLattice_824
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                  (coe v0)))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3)
            (coe v1)
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isLattice_824
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                        (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v1 v2))
               v1
               (let v4
                      = MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                          (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du_'8743''45'absorbs'45''8744'_792
                  (MAlonzo.Code.Algebra.Structures.d_isLattice_824 (coe v4)) v1
                  v2))))
-- Algebra.Properties.DistributiveLattice.∧-distribʳ-∨
d_'8743''45'distrib'691''45''8744'_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45'distrib'691''45''8744'_250 ~v0 ~v1 v2 v3 v4 v5
  = du_'8743''45'distrib'691''45''8744'_250 v2 v3 v4 v5
du_'8743''45'distrib'691''45''8744'_250 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45'distrib'691''45''8744'_250 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         (coe
            MAlonzo.Code.Algebra.Bundles.du_setoid_1218
            (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3) v1)
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v3 v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            (coe
               MAlonzo.Code.Algebra.Bundles.du_setoid_1218
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1
               (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
            (coe
               MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v1)
               (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v3 v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               (coe
                  MAlonzo.Code.Algebra.Bundles.du_setoid_1218
                  (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v3 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v3 v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_762
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isLattice_824
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                              (coe v0)))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v3 v1)))
               (coe
                  MAlonzo.Code.Function.Base.du__'10216'_'10217'__250
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                           (coe v0)))
                     v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8744''45'cong_768
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                           (coe v0)))
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v2 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v3 v1))
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
                     (MAlonzo.Code.Algebra.Structures.d_isLattice_824
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                           (coe v0)))
                     v1 v3)))
            (coe
               du_'8743''45'distrib'737''45''8744'_242 (coe v0) (coe v1) (coe v2)
               (coe v3)))
         (coe
            MAlonzo.Code.Algebra.Structures.d_'8743''45'comm_770
            (MAlonzo.Code.Algebra.Structures.d_isLattice_824
               (coe
                  MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                  (coe v0)))
            (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v2 v3) v1))
-- Algebra.Properties.DistributiveLattice.∧-distrib-∨
d_'8743''45'distrib'45''8744'_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45'distrib'45''8744'_258 ~v0 ~v1 v2
  = du_'8743''45'distrib'45''8744'_258 v2
du_'8743''45'distrib'45''8744'_258 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45'distrib'45''8744'_258 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8743''45'distrib'737''45''8744'_242 (coe v0))
      (coe du_'8743''45'distrib'691''45''8744'_250 (coe v0))
-- Algebra.Properties.DistributiveLattice.∧-∨-isDistributiveLattice
d_'8743''45''8744''45'isDistributiveLattice_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
d_'8743''45''8744''45'isDistributiveLattice_260 ~v0 ~v1 v2
  = du_'8743''45''8744''45'isDistributiveLattice_260 v2
du_'8743''45''8744''45'isDistributiveLattice_260 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Structures.T_IsDistributiveLattice_814
du_'8743''45''8744''45'isDistributiveLattice_260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsDistributiveLattice'46'constructor_20873
      (coe
         MAlonzo.Code.Algebra.Properties.Lattice.du_'8743''45''8744''45'isLattice_1636
         (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0)))
      (coe du_'8743''45'distrib'691''45''8744'_250 (coe v0))
-- Algebra.Properties.DistributiveLattice.∧-∨-distributiveLattice
d_'8743''45''8744''45'distributiveLattice_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_'8743''45''8744''45'distributiveLattice_262 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distributiveLattice_262 v2
du_'8743''45''8744''45'distributiveLattice_262 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
du_'8743''45''8744''45'distributiveLattice_262 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C_DistributiveLattice'46'constructor_18235
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 (coe v0))
      (coe du_'8743''45''8744''45'isDistributiveLattice_260 (coe v0))
-- Algebra.Properties.DistributiveLattice.∨-∧-distribˡ
d_'8744''45''8743''45'distrib'737'_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8744''45''8743''45'distrib'737'_264 ~v0 ~v1 v2
  = du_'8744''45''8743''45'distrib'737'_264 v2
du_'8744''45''8743''45'distrib'737'_264 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8744''45''8743''45'distrib'737'_264 v0
  = coe du_'8744''45'distrib'737''45''8743'_232 (coe v0)
-- Algebra.Properties.DistributiveLattice.∨-∧-distrib
d_'8744''45''8743''45'distrib_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8744''45''8743''45'distrib_266 ~v0 ~v1 v2
  = du_'8744''45''8743''45'distrib_266 v2
du_'8744''45''8743''45'distrib_266 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8744''45''8743''45'distrib_266 v0
  = coe du_'8744''45'distrib'45''8743'_240 (coe v0)
-- Algebra.Properties.DistributiveLattice.∧-∨-distribˡ
d_'8743''45''8744''45'distrib'737'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45''8744''45'distrib'737'_268 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distrib'737'_268 v2
du_'8743''45''8744''45'distrib'737'_268 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45''8744''45'distrib'737'_268 v0
  = coe du_'8743''45'distrib'737''45''8744'_242 (coe v0)
-- Algebra.Properties.DistributiveLattice.∧-∨-distribʳ
d_'8743''45''8744''45'distrib'691'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8743''45''8744''45'distrib'691'_270 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distrib'691'_270 v2
du_'8743''45''8744''45'distrib'691'_270 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8743''45''8744''45'distrib'691'_270 v0
  = coe du_'8743''45'distrib'691''45''8744'_250 (coe v0)
-- Algebra.Properties.DistributiveLattice.∧-∨-distrib
d_'8743''45''8744''45'distrib_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743''45''8744''45'distrib_272 ~v0 ~v1 v2
  = du_'8743''45''8744''45'distrib_272 v2
du_'8743''45''8744''45'distrib_272 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743''45''8744''45'distrib_272 v0
  = coe du_'8743''45'distrib'45''8744'_258 (coe v0)
-- Algebra.Properties.DistributiveLattice.replace-equality
d_replace'45'equality_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16) ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
d_replace'45'equality_280 ~v0 ~v1 v2 ~v3 v4
  = du_replace'45'equality_280 v2 v4
du_replace'45'equality_280 ::
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228 ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16) ->
  MAlonzo.Code.Algebra.Bundles.T_DistributiveLattice_1228
du_replace'45'equality_280 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C_DistributiveLattice'46'constructor_18235
      (MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 (coe v0))
      (coe
         MAlonzo.Code.Algebra.Structures.C_IsDistributiveLattice'46'constructor_20873
         (coe
            MAlonzo.Code.Algebra.Bundles.d_isLattice_1168
            (coe
               MAlonzo.Code.Algebra.Properties.Lattice.du_replace'45'equality_1722
               (coe MAlonzo.Code.Algebra.Bundles.du_lattice_1300 (coe v0))
               (coe v1)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                 (MAlonzo.Code.Function.Equivalence.d_to_34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0 v3 v4) v2)
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d__'8743'__1250 v0
                          (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v3 v2)
                          (coe MAlonzo.Code.Algebra.Bundles.d__'8744'__1248 v0 v4 v2))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d_'8744''45'distrib'691''45''8743'_826
                    (MAlonzo.Code.Algebra.Bundles.d_isDistributiveLattice_1252
                       (coe v0))
                    v2 v3 v4))))
