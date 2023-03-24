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

module MAlonzo.Code.Algebra.Properties.Semilattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset

-- Algebra.Properties.Semilattice.poset
d_poset_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_162 ~v0 ~v1 v2 = du_poset_162 v2
du_poset_162 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du_poset_2146
      (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__420 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.d_isSemilattice_422 (coe v0))
-- Algebra.Properties.Semilattice._._≤_
d__'8804'__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8804'__166 = erased
-- Algebra.Properties.Semilattice._._≥_
d__'8805'__172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8805'__172 = erased
-- Algebra.Properties.Semilattice.∧-isOrderTheoreticMeetSemilattice
d_'8743''45'isOrderTheoreticMeetSemilattice_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
d_'8743''45'isOrderTheoreticMeetSemilattice_176 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticMeetSemilattice_176 v2
du_'8743''45'isOrderTheoreticMeetSemilattice_176 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
du_'8743''45'isOrderTheoreticMeetSemilattice_176 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C_IsMeetSemilattice'46'constructor_11215
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
         (coe du_poset_162 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du_infimum_2002
         (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__420 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_isSemilattice_422 (coe v0)))
-- Algebra.Properties.Semilattice.∧-isOrderTheoreticJoinSemilattice
d_'8743''45'isOrderTheoreticJoinSemilattice_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
d_'8743''45'isOrderTheoreticJoinSemilattice_178 ~v0 ~v1 v2
  = du_'8743''45'isOrderTheoreticJoinSemilattice_178 v2
du_'8743''45'isOrderTheoreticJoinSemilattice_178 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
du_'8743''45'isOrderTheoreticJoinSemilattice_178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C_IsJoinSemilattice'46'constructor_1461
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'isPartialOrder_146
         (coe du_poset_162 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du_infimum_2002
         (coe MAlonzo.Code.Algebra.Bundles.d__'8743'__420 (coe v0))
         (coe MAlonzo.Code.Algebra.Bundles.d_isSemilattice_422 (coe v0)))
-- Algebra.Properties.Semilattice.∧-orderTheoreticMeetSemilattice
d_'8743''45'orderTheoreticMeetSemilattice_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
d_'8743''45'orderTheoreticMeetSemilattice_180 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticMeetSemilattice_180 v2
du_'8743''45'orderTheoreticMeetSemilattice_180 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
du_'8743''45'orderTheoreticMeetSemilattice_180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C_MeetSemilattice'46'constructor_15011
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__420 (coe v0))
      (coe du_'8743''45'isOrderTheoreticMeetSemilattice_176 (coe v0))
-- Algebra.Properties.Semilattice.∧-orderTheoreticJoinSemilattice
d_'8743''45'orderTheoreticJoinSemilattice_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
d_'8743''45'orderTheoreticJoinSemilattice_182 ~v0 ~v1 v2
  = du_'8743''45'orderTheoreticJoinSemilattice_182 v2
du_'8743''45'orderTheoreticJoinSemilattice_182 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
du_'8743''45'orderTheoreticJoinSemilattice_182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.C_JoinSemilattice'46'constructor_5257
      (MAlonzo.Code.Algebra.Bundles.d__'8743'__420 (coe v0))
      (coe du_'8743''45'isOrderTheoreticJoinSemilattice_178 (coe v0))
-- Algebra.Properties.Semilattice.isOrderTheoreticMeetSemilattice
d_isOrderTheoreticMeetSemilattice_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
d_isOrderTheoreticMeetSemilattice_184 ~v0 ~v1 v2
  = du_isOrderTheoreticMeetSemilattice_184 v2
du_isOrderTheoreticMeetSemilattice_184 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsMeetSemilattice_438
du_isOrderTheoreticMeetSemilattice_184 v0
  = coe du_'8743''45'isOrderTheoreticMeetSemilattice_176 (coe v0)
-- Algebra.Properties.Semilattice.isOrderTheoreticJoinSemilattice
d_isOrderTheoreticJoinSemilattice_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
d_isOrderTheoreticJoinSemilattice_186 ~v0 ~v1 v2
  = du_isOrderTheoreticJoinSemilattice_186 v2
du_isOrderTheoreticJoinSemilattice_186 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_IsJoinSemilattice_68
du_isOrderTheoreticJoinSemilattice_186 v0
  = coe du_'8743''45'isOrderTheoreticJoinSemilattice_178 (coe v0)
-- Algebra.Properties.Semilattice.orderTheoreticMeetSemilattice
d_orderTheoreticMeetSemilattice_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
d_orderTheoreticMeetSemilattice_188 ~v0 ~v1 v2
  = du_orderTheoreticMeetSemilattice_188 v2
du_orderTheoreticMeetSemilattice_188 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_MeetSemilattice_540
du_orderTheoreticMeetSemilattice_188 v0
  = coe du_'8743''45'orderTheoreticMeetSemilattice_180 (coe v0)
-- Algebra.Properties.Semilattice.orderTheoreticJoinSemilattice
d_orderTheoreticJoinSemilattice_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
d_orderTheoreticJoinSemilattice_190 ~v0 ~v1 v2
  = du_orderTheoreticJoinSemilattice_190 v2
du_orderTheoreticJoinSemilattice_190 ::
  MAlonzo.Code.Algebra.Bundles.T_Semilattice_402 ->
  MAlonzo.Code.Relation.Binary.Lattice.T_JoinSemilattice_170
du_orderTheoreticJoinSemilattice_190 v0
  = coe du_'8743''45'orderTheoreticJoinSemilattice_182 (coe v0)
