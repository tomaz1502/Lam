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

module MAlonzo.Code.Relation.Binary.Construct.Converse where

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
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Binary.Construct.Converse._.refl
d_refl_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_refl_20 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_refl_20 v4 v5
du_refl_20 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_refl_20 v0 v1 = coe v0 v1
-- Relation.Binary.Construct.Converse._.sym
d_sym_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_24 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_sym_24 v4 v5 v6
du_sym_24 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_24 v0 v1 v2 = coe v0 v2 v1
-- Relation.Binary.Construct.Converse._.trans
d_trans_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_28 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_trans_28 v4 v5 v6 v7 v8 v9
du_trans_28 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_28 v0 v1 v2 v3 v4 v5 = coe v0 v3 v2 v1 v5 v4
-- Relation.Binary.Construct.Converse._.asym
d_asym_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_asym_32 = erased
-- Relation.Binary.Construct.Converse._.total
d_total_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_36 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_total_36 v4 v5 v6
du_total_36 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_36 v0 v1 v2 = coe v0 v2 v1
-- Relation.Binary.Construct.Converse._.resp
d_resp_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_resp_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_resp_48 v6 v7 v8 v9 v10
du_resp_48 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_resp_48 v0 v1 v2 v3 v4 = coe v1 v2 v3 (coe v0 v3 v2 v4)
-- Relation.Binary.Construct.Converse._.max
d_max_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_max_58 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_max_58 v5
du_max_58 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_max_58 v0 = coe v0
-- Relation.Binary.Construct.Converse._.min
d_min_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_min_64 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_min_64 v5
du_min_64 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_min_64 v0 = coe v0
-- Relation.Binary.Construct.Converse._.reflexive
d_reflexive_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_reflexive_84 v6 v7 v8 v9 v10
du_reflexive_84 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_84 v0 v1 v2 v3 v4 = coe v1 v3 v2 (coe v0 v2 v3 v4)
-- Relation.Binary.Construct.Converse._.irrefl
d_irrefl_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_irrefl_90 = erased
-- Relation.Binary.Construct.Converse._.antisym
d_antisym_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_antisym_100 v6 v7 v8 v9 v10
du_antisym_100 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_100 v0 v1 v2 v3 v4 = coe v0 v1 v2 v4 v3
-- Relation.Binary.Construct.Converse._.compare
d_compare_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_compare_104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_compare_104 v6 v7 v8
du_compare_104 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
du_compare_104 v0 v1 v2
  = let v3 = coe v0 v1 v2 in
    case coe v3 of
      MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150 v4
        -> coe MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166 v4
      MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 v5
        -> coe MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 v5
      MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166 v6
        -> coe MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150 v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Converse._.resp₂
d_resp'8322'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_resp'8322'_168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_resp'8322'_168 v6
du_resp'8322'_168 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_resp'8322'_168 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Converse._.dec
d_dec_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_dec_190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_dec_190 v6 v7 v8
du_dec_190 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_dec_190 v0 v1 v2 = coe v0 v2 v1
-- Relation.Binary.Construct.Converse._.isEquivalence
d_isEquivalence_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_206 ~v0 ~v1 ~v2 ~v3 v4 = du_isEquivalence_206 v4
du_isEquivalence_206 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
      (coe
         du_refl_20
         (coe MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v0)))
      (coe
         du_sym_24
         (coe MAlonzo.Code.Relation.Binary.Structures.d_sym_36 (coe v0)))
      (coe
         du_trans_28
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v0)))
-- Relation.Binary.Construct.Converse._.isDecEquivalence
d_isDecEquivalence_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_226 ~v0 ~v1 ~v2 ~v3 v4
  = du_isDecEquivalence_226 v4
du_isDecEquivalence_226 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_226 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_1689
      (coe
         du_isEquivalence_206
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
            (coe v0)))
      (coe
         du_dec_190
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__52 (coe v0)))
-- Relation.Binary.Construct.Converse._.isPreorder
d_isPreorder_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isPreorder_266 v6
du_isPreorder_266 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_266 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v0))
      (coe
         du_reflexive_84
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 (coe v0)))
      (coe
         du_trans_28
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_84 (coe v0)))
-- Relation.Binary.Construct.Converse._.isTotalPreorder
d_isTotalPreorder_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_118 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_118
d_isTotalPreorder_302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isTotalPreorder_302 v6
du_isTotalPreorder_302 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_118 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_118
du_isTotalPreorder_302 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalPreorder'46'constructor_5447
      (coe
         du_isPreorder_266
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_126 (coe v0)))
      (coe
         du_total_36
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_128 (coe v0)))
-- Relation.Binary.Construct.Converse._.isPartialOrder
d_isPartialOrder_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialOrder_342 v6
du_isPartialOrder_342 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_isPartialOrder_342 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe
         du_isPreorder_266
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v0)))
      (coe
         du_antisym_100
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_172 (coe v0)))
-- Relation.Binary.Construct.Converse._.isTotalOrder
d_isTotalOrder_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_isTotalOrder_382 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isTotalOrder_382 v6
du_isTotalOrder_382 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
du_isTotalOrder_382 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_15387
      (coe
         du_isPartialOrder_342
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
            (coe v0)))
      (coe
         du_total_36
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_394 (coe v0)))
-- Relation.Binary.Construct.Converse._.isDecTotalOrder
d_isDecTotalOrder_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_isDecTotalOrder_428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isDecTotalOrder_428 v6
du_isDecTotalOrder_428 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
du_isDecTotalOrder_428 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
      (coe
         du_isTotalOrder_382
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_444
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8799'__446 (coe v0))
      (coe
         du_dec_190
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__448
            (coe v0)))
-- Relation.Binary.Construct.Converse._.isStrictPartialOrder
d_isStrictPartialOrder_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_isStrictPartialOrder_488 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isStrictPartialOrder_488 v6
du_isStrictPartialOrder_488 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_isStrictPartialOrder_488 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_9921
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
         (coe v0))
      (coe
         du_trans_28
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_282 (coe v0)))
      (coe
         du_resp'8322'_168
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
            (coe v0)))
-- Relation.Binary.Construct.Converse._.isStrictTotalOrder
d_isStrictTotalOrder_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
d_isStrictTotalOrder_526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isStrictTotalOrder_526 v6
du_isStrictTotalOrder_526 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
du_isStrictTotalOrder_526 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_19043
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_512
         (coe v0))
      (coe
         du_trans_28
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_514 (coe v0)))
      (coe
         du_compare_104
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_516 (coe v0)))
-- Relation.Binary.Construct.Converse._.setoid
d_setoid_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_586 ~v0 ~v1 v2 = du_setoid_586 v2
du_setoid_586 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_586 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (coe
         du_isEquivalence_206
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
-- Relation.Binary.Construct.Converse._.decSetoid
d_decSetoid_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_decSetoid_616 ~v0 ~v1 v2 = du_decSetoid_616 v2
du_decSetoid_616 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
du_decSetoid_616 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1131
      (coe
         du_isDecEquivalence_226
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecEquivalence_100
            (coe v0)))
-- Relation.Binary.Construct.Converse._.preorder
d_preorder_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_662 ~v0 ~v1 ~v2 v3 = du_preorder_662 v3
du_preorder_662 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_662 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe
         du_isPreorder_266
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Relation.Binary.Construct.Converse._.totalPreorder
d_totalPreorder_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204
d_totalPreorder_718 ~v0 ~v1 ~v2 v3 = du_totalPreorder_718 v3
du_totalPreorder_718 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalPreorder_204
du_totalPreorder_718 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalPreorder'46'constructor_3061
      (coe
         du_isTotalPreorder_302
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalPreorder_226
            (coe v0)))
-- Relation.Binary.Construct.Converse._.poset
d_poset_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_780 ~v0 ~v1 ~v2 v3 = du_poset_780 v3
du_poset_780 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_780 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      (coe
         du_isPartialOrder_342
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
            (coe v0)))
-- Relation.Binary.Construct.Converse._.totalOrder
d_totalOrder_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
d_totalOrder_842 ~v0 ~v1 ~v2 v3 = du_totalOrder_842 v3
du_totalOrder_842 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
du_totalOrder_842 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_10811
      (coe
         du_isTotalOrder_382
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0)))
-- Relation.Binary.Construct.Converse._.decTotalOrder
d_decTotalOrder_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_decTotalOrder_914 ~v0 ~v1 ~v2 v3 = du_decTotalOrder_914 v3
du_decTotalOrder_914 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
du_decTotalOrder_914 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      (coe
         du_isDecTotalOrder_428
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_762
            (coe v0)))
-- Relation.Binary.Construct.Converse._.strictPartialOrder
d_strictPartialOrder_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
d_strictPartialOrder_1002 ~v0 ~v1 ~v2 v3
  = du_strictPartialOrder_1002 v3
du_strictPartialOrder_1002 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
du_strictPartialOrder_1002 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_7693
      (coe
         du_isStrictPartialOrder_488
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_494
            (coe v0)))
-- Relation.Binary.Construct.Converse._.strictTotalOrder
d_strictTotalOrder_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_strictTotalOrder_1060 ~v0 ~v1 ~v2 v3
  = du_strictTotalOrder_1060 v3
du_strictTotalOrder_1060 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
du_strictTotalOrder_1060 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_14573
      (coe
         du_isStrictTotalOrder_526
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_886
            (coe v0)))
