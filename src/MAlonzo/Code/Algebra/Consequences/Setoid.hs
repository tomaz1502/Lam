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

module MAlonzo.Code.Algebra.Consequences.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Consequences.Setoid._._DistributesOverʳ_
d__DistributesOver'691'__40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__40 = erased
-- Algebra.Consequences.Setoid._._DistributesOverˡ_
d__DistributesOver'737'__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__42 = erased
-- Algebra.Consequences.Setoid._.AlmostLeftCancellative
d_AlmostLeftCancellative_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostLeftCancellative_50 = erased
-- Algebra.Consequences.Setoid._.AlmostRightCancellative
d_AlmostRightCancellative_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostRightCancellative_52 = erased
-- Algebra.Consequences.Setoid._.Associative
d_Associative_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_54 = erased
-- Algebra.Consequences.Setoid._.Commutative
d_Commutative_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_58 = erased
-- Algebra.Consequences.Setoid._.Congruent₂
d_Congruent'8322'_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_62 = erased
-- Algebra.Consequences.Setoid._.Identity
d_Identity_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_70 = erased
-- Algebra.Consequences.Setoid._.LeftCancellative
d_LeftCancellative_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_78 = erased
-- Algebra.Consequences.Setoid._.LeftIdentity
d_LeftIdentity_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_84 = erased
-- Algebra.Consequences.Setoid._.LeftInverse
d_LeftInverse_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_86 = erased
-- Algebra.Consequences.Setoid._.LeftZero
d_LeftZero_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_88 = erased
-- Algebra.Consequences.Setoid._.RightCancellative
d_RightCancellative_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_90 = erased
-- Algebra.Consequences.Setoid._.RightIdentity
d_RightIdentity_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_96 = erased
-- Algebra.Consequences.Setoid._.RightInverse
d_RightInverse_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_98 = erased
-- Algebra.Consequences.Setoid._.RightZero
d_RightZero_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_100 = erased
-- Algebra.Consequences.Setoid._.comm+cancelˡ⇒cancelʳ
d_comm'43'cancel'737''8658'cancel'691'_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'cancel'737''8658'cancel'691'_138 ~v0 ~v1 v2 v3 v4 v5 v6
                                           v7 v8 v9
  = du_comm'43'cancel'737''8658'cancel'691'_138
      v2 v3 v4 v5 v6 v7 v8 v9
du_comm'43'cancel'737''8658'cancel'691'_138 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'cancel'737''8658'cancel'691'_138 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      v3 v4 v5 v6
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v4 v5) (coe v1 v5 v4) (coe v1 v4 v6)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0 (coe v1 v5 v4) (coe v1 v6 v4) (coe v1 v4 v6)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  v0 (coe v1 v6 v4) (coe v1 v4 v6) (coe v1 v4 v6)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                     (coe v1 v4 v6))
                  (coe v2 v6 v4))
               v7)
            (coe v2 v4 v5)))
-- Algebra.Consequences.Setoid._.comm+cancelʳ⇒cancelˡ
d_comm'43'cancel'691''8658'cancel'737'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'cancel'691''8658'cancel'737'_150 ~v0 ~v1 v2 v3 v4 v5 v6
                                           v7 v8 v9
  = du_comm'43'cancel'691''8658'cancel'737'_150
      v2 v3 v4 v5 v6 v7 v8 v9
du_comm'43'cancel'691''8658'cancel'737'_150 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'cancel'691''8658'cancel'737'_150 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      v3 v4 v5 v6
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v5 v4) (coe v1 v4 v5) (coe v1 v6 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0 (coe v1 v4 v5) (coe v1 v4 v6) (coe v1 v6 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  v0 (coe v1 v4 v6) (coe v1 v6 v4) (coe v1 v6 v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                     (coe v1 v6 v4))
                  (coe v2 v4 v6))
               v7)
            (coe v2 v5 v4)))
-- Algebra.Consequences.Setoid._.comm+idˡ⇒idʳ
d_comm'43'id'737''8658'id'691'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'id'737''8658'id'691'_172 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'43'id'737''8658'id'691'_172 v2 v3 v4 v5 v6 v7
du_comm'43'id'737''8658'id'691'_172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'id'737''8658'id'691'_172 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v1 v5 v3) (coe v1 v3 v5) v5
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v3 v5) v5 v5
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
               (coe v5))
            (coe v4 v5))
         (coe v2 v5 v3))
-- Algebra.Consequences.Setoid._.comm+idʳ⇒idˡ
d_comm'43'id'691''8658'id'737'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'id'691''8658'id'737'_178 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'43'id'691''8658'id'737'_178 v2 v3 v4 v5 v6 v7
du_comm'43'id'691''8658'id'737'_178 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'id'691''8658'id'737'_178 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v1 v3 v5) (coe v1 v5 v3) v5
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v5 v3) v5 v5
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
               (coe v5))
            (coe v4 v5))
         (coe v2 v3 v5))
-- Algebra.Consequences.Setoid._.comm+zeˡ⇒zeʳ
d_comm'43'ze'737''8658'ze'691'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'ze'737''8658'ze'691'_184 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'43'ze'737''8658'ze'691'_184 v2 v3 v4 v5 v6 v7
du_comm'43'ze'737''8658'ze'691'_184 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'ze'737''8658'ze'691'_184 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v1 v5 v3) (coe v1 v3 v5) v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v3 v5) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
               (coe v3))
            (coe v4 v5))
         (coe v2 v5 v3))
-- Algebra.Consequences.Setoid._.comm+zeʳ⇒zeˡ
d_comm'43'ze'691''8658'ze'737'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'ze'691''8658'ze'737'_190 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_comm'43'ze'691''8658'ze'737'_190 v2 v3 v4 v5 v6 v7
du_comm'43'ze'691''8658'ze'737'_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'ze'691''8658'ze'737'_190 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v1 v3 v5) (coe v1 v5 v3) v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v5 v3) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
               (coe v3))
            (coe v4 v5))
         (coe v2 v3 v5))
-- Algebra.Consequences.Setoid._.comm+almostCancelˡ⇒almostCancelʳ
d_comm'43'almostCancel'737''8658'almostCancel'691'_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> AgdaAny
d_comm'43'almostCancel'737''8658'almostCancel'691'_196 ~v0 ~v1 v2
                                                       v3 v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_comm'43'almostCancel'737''8658'almostCancel'691'_196
      v2 v3 v4 v6 v7 v8 v9 v10 v11
du_comm'43'almostCancel'737''8658'almostCancel'691'_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> AgdaAny
du_comm'43'almostCancel'737''8658'almostCancel'691'_196 v0 v1 v2 v3
                                                        v4 v5 v6 v7 v8
  = coe
      v3 v4 v5 v6 v7
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v4 v5) (coe v1 v5 v4) (coe v1 v4 v6)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0 (coe v1 v5 v4) (coe v1 v6 v4) (coe v1 v4 v6)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  v0 (coe v1 v6 v4) (coe v1 v4 v6) (coe v1 v4 v6)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                     (coe v1 v4 v6))
                  (coe v2 v6 v4))
               v8)
            (coe v2 v4 v5)))
-- Algebra.Consequences.Setoid._.comm+almostCancelʳ⇒almostCancelˡ
d_comm'43'almostCancel'691''8658'almostCancel'737'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> AgdaAny
d_comm'43'almostCancel'691''8658'almostCancel'737'_210 ~v0 ~v1 v2
                                                       v3 v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_comm'43'almostCancel'691''8658'almostCancel'737'_210
      v2 v3 v4 v6 v7 v8 v9 v10 v11
du_comm'43'almostCancel'691''8658'almostCancel'737'_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> AgdaAny
du_comm'43'almostCancel'691''8658'almostCancel'737'_210 v0 v1 v2 v3
                                                        v4 v5 v6 v7 v8
  = coe
      v3 v4 v5 v6 v7
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v5 v4) (coe v1 v4 v5) (coe v1 v6 v4)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0 (coe v1 v4 v5) (coe v1 v4 v6) (coe v1 v6 v4)
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  v0 (coe v1 v4 v6) (coe v1 v6 v4) (coe v1 v6 v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                     (coe v1 v6 v4))
                  (coe v2 v4 v6))
               v8)
            (coe v2 v5 v4)))
-- Algebra.Consequences.Setoid._.comm+invˡ⇒invʳ
d_comm'43'inv'737''8658'inv'691'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'inv'737''8658'inv'691'_236 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_comm'43'inv'737''8658'inv'691'_236 v2 v3 v4 v5 v6 v7 v8
du_comm'43'inv'737''8658'inv'691'_236 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'inv'737''8658'inv'691'_236 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v1 v6 (coe v2 v6)) (coe v1 (coe v2 v6) v6) v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 (coe v2 v6) v6) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
               (coe v3))
            (coe v5 v6))
         (coe v4 v6 (coe v2 v6)))
-- Algebra.Consequences.Setoid._.comm+invʳ⇒invˡ
d_comm'43'inv'691''8658'inv'737'_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_comm'43'inv'691''8658'inv'737'_242 ~v0 ~v1 v2 v3 v4 v5 v6 v7 v8
  = du_comm'43'inv'691''8658'inv'737'_242 v2 v3 v4 v5 v6 v7 v8
du_comm'43'inv'691''8658'inv'737'_242 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_comm'43'inv'691''8658'inv'737'_242 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v1 (coe v2 v6) v6) (coe v1 v6 (coe v2 v6)) v3
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v6 (coe v2 v6)) v3 v3
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
               (coe v3))
            (coe v5 v6))
         (coe v4 (coe v2 v6) v6))
-- Algebra.Consequences.Setoid._.assoc+id+invʳ⇒invˡ-unique
d_assoc'43'id'43'inv'691''8658'inv'737''45'unique_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc'43'id'43'inv'691''8658'inv'737''45'unique_264 ~v0 ~v1 v2 v3
                                                      v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_assoc'43'id'43'inv'691''8658'inv'737''45'unique_264
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_assoc'43'id'43'inv'691''8658'inv'737''45'unique_264 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc'43'id'43'inv'691''8658'inv'737''45'unique_264 v0 v1 v2 v3
                                                       v4 v5 v6 v7 v8 v9 v10
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                v0 v8 (coe v1 v8 v3) (coe v2 v9)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                   v0 (coe v1 v8 v3) (coe v1 v8 (coe v1 v9 (coe v2 v9))) (coe v2 v9)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                      v0 (coe v1 v8 (coe v1 v9 (coe v2 v9)))
                      (coe v1 (coe v1 v8 v9) (coe v2 v9)) (coe v2 v9)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                         v0 (coe v1 (coe v1 v8 v9) (coe v2 v9)) (coe v1 v3 (coe v2 v9))
                         (coe v2 v9)
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                            v0 (coe v1 v3 (coe v2 v9)) (coe v2 v9) (coe v2 v9)
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                     (coe v0)))
                               (coe v2 v9))
                            (coe v11 (coe v2 v9)))
                         (coe
                            v4 (coe v1 v8 v9) v3 (coe v2 v9) (coe v2 v9) v10
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                               (coe v2 v9))))
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                         (coe v1 (coe v1 v8 v9) (coe v2 v9))
                         (coe v1 v8 (coe v1 v9 (coe v2 v9))) (coe v5 v8 v9 (coe v2 v9))))
                   (coe
                      v4 v8 v8 v3 (coe v1 v9 (coe v2 v9))
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                         v8)
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                         (coe v1 v9 (coe v2 v9)) v3 (coe v7 v9))))
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                   (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                   (coe v1 v8 v3) v8 (coe v12 v8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._.assoc+id+invˡ⇒invʳ-unique
d_assoc'43'id'43'inv'737''8658'inv'691''45'unique_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc'43'id'43'inv'737''8658'inv'691''45'unique_284 ~v0 ~v1 v2 v3
                                                      v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_assoc'43'id'43'inv'737''8658'inv'691''45'unique_284
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_assoc'43'id'43'inv'737''8658'inv'691''45'unique_284 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc'43'id'43'inv'737''8658'inv'691''45'unique_284 v0 v1 v2 v3
                                                       v4 v5 v6 v7 v8 v9 v10
  = case coe v6 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                v0 v9 (coe v1 v3 v9) (coe v2 v8)
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                   v0 (coe v1 v3 v9) (coe v1 (coe v1 (coe v2 v8) v8) v9) (coe v2 v8)
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                      v0 (coe v1 (coe v1 (coe v2 v8) v8) v9)
                      (coe v1 (coe v2 v8) (coe v1 v8 v9)) (coe v2 v8)
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                         v0 (coe v1 (coe v2 v8) (coe v1 v8 v9)) (coe v1 (coe v2 v8) v3)
                         (coe v2 v8)
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                            v0 (coe v1 (coe v2 v8) v3) (coe v2 v8) (coe v2 v8)
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                     (coe v0)))
                               (coe v2 v8))
                            (coe v12 (coe v2 v8)))
                         (coe
                            v4 (coe v2 v8) (coe v2 v8) (coe v1 v8 v9) v3
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                               (coe v2 v8))
                            v10))
                      (coe v5 (coe v2 v8) v8 v9))
                   (coe
                      v4 v3 (coe v1 (coe v2 v8) v8) v9 v9
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                         (coe v1 (coe v2 v8) v8) v3 (coe v7 v8))
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                         v9)))
                (coe
                   MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                   (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                   (coe v1 v3 v9) v9 (coe v11 v9)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Consequences.Setoid._.comm+distrˡ⇒distrʳ
d_comm'43'distr'737''8658'distr'691'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'distr'737''8658'distr'691'_312 ~v0 ~v1 v2 v3 v4 v5 v6 v7
                                         v8 v9 v10
  = du_comm'43'distr'737''8658'distr'691'_312
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_comm'43'distr'737''8658'distr'691'_312 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'distr'737''8658'distr'691'_312 v0 v1 v2 v3 v4 v5 v6 v7
                                          v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v1 (coe v2 v7 v8) v6) (coe v1 v6 (coe v2 v7 v8))
         (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 v6 (coe v2 v7 v8))
            (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
            (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0 (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
               (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
               (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                  (coe v2 (coe v1 v7 v6) (coe v1 v8 v6)))
               (coe
                  v3 (coe v1 v6 v7) (coe v1 v7 v6) (coe v1 v6 v8) (coe v1 v8 v6)
                  (coe v4 v6 v7) (coe v4 v6 v8)))
            (coe v5 v6 v7 v8))
         (coe v4 (coe v2 v7 v8) v6))
-- Algebra.Consequences.Setoid._.comm+distrʳ⇒distrˡ
d_comm'43'distr'691''8658'distr'737'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'43'distr'691''8658'distr'737'_322 ~v0 ~v1 v2 v3 v4 v5 v6 v7
                                         v8 v9 v10
  = du_comm'43'distr'691''8658'distr'737'_322
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_comm'43'distr'691''8658'distr'737'_322 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'43'distr'691''8658'distr'737'_322 v0 v1 v2 v3 v4 v5 v6 v7
                                          v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v1 v6 (coe v2 v7 v8)) (coe v1 (coe v2 v7 v8) v6)
         (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 (coe v2 v7 v8) v6)
            (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
            (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0 (coe v2 (coe v1 v7 v6) (coe v1 v8 v6))
               (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
               (coe v2 (coe v1 v6 v7) (coe v1 v6 v8))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                  (coe v2 (coe v1 v6 v7) (coe v1 v6 v8)))
               (coe
                  v3 (coe v1 v7 v6) (coe v1 v6 v7) (coe v1 v8 v6) (coe v1 v6 v8)
                  (coe v4 v7 v6) (coe v4 v8 v6)))
            (coe v5 v6 v7 v8))
         (coe v4 v6 (coe v2 v7 v8)))
-- Algebra.Consequences.Setoid._.comm⇒sym[distribˡ]
d_comm'8658'sym'91'distrib'737''93'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_comm'8658'sym'91'distrib'737''93'_338 ~v0 ~v1 v2 v3 v4 v5 v6 v7
                                        v8 v9 v10
  = du_comm'8658'sym'91'distrib'737''93'_338
      v2 v3 v4 v5 v6 v7 v8 v9 v10
du_comm'8658'sym'91'distrib'737''93'_338 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_comm'8658'sym'91'distrib'737''93'_338 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v2 v5 (coe v1 v7 v6)) (coe v2 v5 (coe v1 v6 v7))
         (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v2 v5 (coe v1 v6 v7))
            (coe v1 (coe v2 v5 v6) (coe v2 v5 v7))
            (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0 (coe v1 (coe v2 v5 v6) (coe v2 v5 v7))
               (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
               (coe v1 (coe v2 v5 v7) (coe v2 v5 v6))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                  (coe v1 (coe v2 v5 v7) (coe v2 v5 v6)))
               (coe v4 (coe v2 v5 v6) (coe v2 v5 v7)))
            v8)
         (coe
            v3 v5 v5 (coe v1 v7 v6) (coe v1 v6 v7)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
               v5)
            (coe v4 v7 v6)))
-- Algebra.Consequences.Setoid._.assoc+distribʳ+idʳ+invʳ⇒zeˡ
d_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_364 ~v0
                                                                ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
                                                                v12 v13
  = du_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_364
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
du_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_364 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_assoc'43'distrib'691''43'id'691''43'inv'691''8658'ze'737'_364 v0
                                                                 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v2 v4 v11) (coe v1 (coe v2 v4 v11) v4) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 (coe v2 v4 v11) v4)
            (coe
               v1 (coe v2 v4 v11)
               (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))))
            v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0
               (coe
                  v1 (coe v2 v4 v11)
                  (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))))
               (coe
                  v1 (coe v1 (coe v2 v4 v11) (coe v2 v4 v11))
                  (coe v3 (coe v2 v4 v11)))
               v4
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  v0
                  (coe
                     v1 (coe v1 (coe v2 v4 v11) (coe v2 v4 v11))
                     (coe v3 (coe v2 v4 v11)))
                  (coe v1 (coe v2 (coe v1 v4 v4) v11) (coe v3 (coe v2 v4 v11))) v4
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     v0 (coe v1 (coe v2 (coe v1 v4 v4) v11) (coe v3 (coe v2 v4 v11)))
                     (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))) v4
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                        v0 (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))) v4 v4
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                           (coe v4))
                        (coe v10 (coe v2 v4 v11)))
                     (coe
                        v5 (coe v2 (coe v1 v4 v4) v11) (coe v2 v4 v11)
                        (coe v3 (coe v2 v4 v11)) (coe v3 (coe v2 v4 v11))
                        (coe
                           v6 (coe v1 v4 v4) v4 v11 v11 (coe v9 v4)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                              v11))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                           (coe v3 (coe v2 v4 v11)))))
                  (coe
                     v5 (coe v1 (coe v2 v4 v11) (coe v2 v4 v11))
                     (coe v2 (coe v1 v4 v4) v11) (coe v3 (coe v2 v4 v11))
                     (coe v3 (coe v2 v4 v11))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                        (coe v2 (coe v1 v4 v4) v11)
                        (coe v1 (coe v2 v4 v11) (coe v2 v4 v11)) (coe v8 v11 v4 v4))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                        (coe v3 (coe v2 v4 v11)))))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                  (coe
                     v1 (coe v1 (coe v2 v4 v11) (coe v2 v4 v11))
                     (coe v3 (coe v2 v4 v11)))
                  (coe
                     v1 (coe v2 v4 v11)
                     (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))))
                  (coe v7 (coe v2 v4 v11) (coe v2 v4 v11) (coe v3 (coe v2 v4 v11)))))
            (coe
               v5 (coe v2 v4 v11) (coe v2 v4 v11) v4
               (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                  (coe v2 v4 v11))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                  (coe v1 (coe v2 v4 v11) (coe v3 (coe v2 v4 v11))) v4
                  (coe v10 (coe v2 v4 v11)))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
            (coe v1 (coe v2 v4 v11) v4) (coe v2 v4 v11)
            (coe v9 (coe v2 v4 v11))))
-- Algebra.Consequences.Setoid._.assoc+distribˡ+idʳ+invʳ⇒zeʳ
d_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_376 ~v0
                                                                ~v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
                                                                v12 v13
  = du_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_376
      v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
du_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_376 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_assoc'43'distrib'737''43'id'691''43'inv'691''8658'ze'691'_376 v0
                                                                 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d_begin__40
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
         v0 (coe v2 v11 v4) (coe v1 (coe v2 v11 v4) v4) v4
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
            v0 (coe v1 (coe v2 v11 v4) v4)
            (coe
               v1 (coe v2 v11 v4)
               (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))))
            v4
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
               v0
               (coe
                  v1 (coe v2 v11 v4)
                  (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))))
               (coe
                  v1 (coe v1 (coe v2 v11 v4) (coe v2 v11 v4))
                  (coe v3 (coe v2 v11 v4)))
               v4
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                  v0
                  (coe
                     v1 (coe v1 (coe v2 v11 v4) (coe v2 v11 v4))
                     (coe v3 (coe v2 v11 v4)))
                  (coe v1 (coe v2 v11 (coe v1 v4 v4)) (coe v3 (coe v2 v11 v4))) v4
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                     v0 (coe v1 (coe v2 v11 (coe v1 v4 v4)) (coe v3 (coe v2 v11 v4)))
                     (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))) v4
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du_step'45''8776'_58
                        v0 (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))) v4 v4
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du__'8718'_86
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
                           (coe v4))
                        (coe v10 (coe v2 v11 v4)))
                     (coe
                        v5 (coe v2 v11 (coe v1 v4 v4)) (coe v2 v11 v4)
                        (coe v3 (coe v2 v11 v4)) (coe v3 (coe v2 v11 v4))
                        (coe
                           v6 v11 v11 (coe v1 v4 v4) v4
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                              (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                              v11)
                           (coe v9 v4))
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                           (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                           (coe v3 (coe v2 v11 v4)))))
                  (coe
                     v5 (coe v1 (coe v2 v11 v4) (coe v2 v11 v4))
                     (coe v2 v11 (coe v1 v4 v4)) (coe v3 (coe v2 v11 v4))
                     (coe v3 (coe v2 v11 v4))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                        (coe v2 v11 (coe v1 v4 v4))
                        (coe v1 (coe v2 v11 v4) (coe v2 v11 v4)) (coe v8 v11 v4 v4))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                        (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                        (coe v3 (coe v2 v11 v4)))))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                  (coe
                     v1 (coe v1 (coe v2 v11 v4) (coe v2 v11 v4))
                     (coe v3 (coe v2 v11 v4)))
                  (coe
                     v1 (coe v2 v11 v4)
                     (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))))
                  (coe v7 (coe v2 v11 v4) (coe v2 v11 v4) (coe v3 (coe v2 v11 v4)))))
            (coe
               v5 (coe v2 v11 v4) (coe v2 v11 v4) v4
               (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                  (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                  (coe v2 v11 v4))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                  (coe v1 (coe v2 v11 v4) (coe v3 (coe v2 v11 v4))) v4
                  (coe v10 (coe v2 v11 v4)))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
            (coe v1 (coe v2 v11 v4) v4) (coe v2 v11 v4)
            (coe v9 (coe v2 v11 v4))))
-- Algebra.Consequences.Setoid._.subst+comm⇒sym
d_subst'43'comm'8658'sym_406 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_subst'43'comm'8658'sym_406 ~v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_subst'43'comm'8658'sym_406 v2 v3 v4 v5 v6 v7
du_subst'43'comm'8658'sym_406 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_subst'43'comm'8658'sym_406 v0 v1 v2 v3 v4 v5
  = coe v2 v1 (coe v0 v4 v5) (coe v0 v5 v4) (coe v3 v4 v5)
-- Algebra.Consequences.Setoid._.wlog
d_wlog_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_wlog_420 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 ~v9 v10
  = du_wlog_420 v4 v5 v6 v7 v10
du_wlog_420 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_wlog_420 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du_wlog_682 (coe v4)
      (coe
         (\ v5 v6 ->
            coe v2 v1 (coe v0 v5 v6) (coe v0 v6 v5) (coe v3 v5 v6)))
