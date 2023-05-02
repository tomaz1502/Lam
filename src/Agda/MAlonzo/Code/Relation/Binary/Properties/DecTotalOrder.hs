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

module MAlonzo.Code.Relation.Binary.Properties.DecTotalOrder where

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
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset
import qualified MAlonzo.Code.Relation.Binary.Properties.Preorder
import qualified MAlonzo.Code.Relation.Binary.Properties.TotalOrder
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties._<_
d__'60'__158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> ()
d__'60'__158 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties._≥_
d__'8805'__160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> ()
d__'8805'__160 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties._≰_
d__'8816'__162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> ()
d__'8816'__162 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.asym
d_asym_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_asym_164 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.irrefl
d_irrefl_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_irrefl_166 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_'60''45'isStrictPartialOrder_168 ~v0 ~v1 ~v2 v3
  = du_'60''45'isStrictPartialOrder_168 v3
du_'60''45'isStrictPartialOrder_168 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_'60''45'isStrictPartialOrder_168 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_180
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-resp-≈
d_'60''45'resp'45''8776'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_170 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'45''8776'_170 v3
du_'60''45'resp'45''8776'_170 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'45''8776'_170 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_180
         (coe v2))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-respʳ-≈
d_'60''45'resp'691''45''8776'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'691''45''8776'_172 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'691''45''8776'_172 v3
du_'60''45'resp'691''45''8776'_172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'691''45''8776'_172 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_182
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'691''45''8776'_304
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_494
         (coe v3))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-respˡ-≈
d_'60''45'resp'737''45''8776'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'737''45''8776'_174 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'737''45''8776'_174 v3
du_'60''45'resp'737''45''8776'_174 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'737''45''8776'_174 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_182
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'737''45''8776'_306
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_494
         (coe v3))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-strictPartialOrder
d_'60''45'strictPartialOrder_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
d_'60''45'strictPartialOrder_176 ~v0 ~v1 ~v2 v3
  = du_'60''45'strictPartialOrder_176 v3
du_'60''45'strictPartialOrder_176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
du_'60''45'strictPartialOrder_176 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_182
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.trans
d_trans_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_178 ~v0 ~v1 ~v2 v3 = du_trans_178 v3
du_trans_178 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_178 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_282
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_180
         (coe v2))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<⇒≉
d_'60''8658''8777'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''8658''8777'_180 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<⇒≱
d_'60''8658''8817'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''8658''8817'_182 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≤⇒≯
d_'8804''8658''8815'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8804''8658''8815'_186 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8804''8743''8777''8658''60'_188 ~v0 ~v1 ~v2 ~v3
  = du_'8804''8743''8777''8658''60'_188
du_'8804''8743''8777''8658''60'_188 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8804''8743''8777''8658''60'_188 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8804''8743''8777''8658''60'_208
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.antisym
d_antisym_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_190 ~v0 ~v1 ~v2 v3 = du_antisym_190 v3
du_antisym_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_190 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    coe
      (\ v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
           (MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
              (coe v2))
           v3 v4 v6 v5)
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-isPartialOrder
d_'8805''45'isPartialOrder_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8805''45'isPartialOrder_192 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isPartialOrder_192 v3
du_'8805''45'isPartialOrder_192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_'8805''45'isPartialOrder_192 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'isPartialOrder_146
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.invIsPreorder
d_invIsPreorder_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_invIsPreorder_194 ~v0 ~v1 ~v2 v3 = du_invIsPreorder_194 v3
du_invIsPreorder_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_invIsPreorder_194 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du_invIsPreorder_64
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326 (coe v2))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-isTotalOrder
d_'8805''45'isTotalOrder_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_'8805''45'isTotalOrder_196 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isTotalOrder_196 v3
du_'8805''45'isTotalOrder_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
du_'8805''45'isTotalOrder_196 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8805''45'isTotalOrder_208
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-poset
d_'8805''45'poset_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_'8805''45'poset_198 ~v0 ~v1 ~v2 v3 = du_'8805''45'poset_198 v3
du_'8805''45'poset_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_'8805''45'poset_198 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_148
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.invPreorder
d_invPreorder_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_invPreorder_200 ~v0 ~v1 ~v2 v3 = du_invPreorder_200 v3
du_invPreorder_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_invPreorder_200 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du_invPreorder_66
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326 (coe v2))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.refl
d_refl_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny
d_refl_202 ~v0 ~v1 ~v2 v3 = du_refl_202 v3
du_refl_202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny
du_refl_202 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_148
              (coe v2) in
    let v4
          = MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
              (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v4))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.reflexive
d_reflexive_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_204 ~v0 ~v1 ~v2 v3 = du_reflexive_204 v3
du_reflexive_204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_204 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
           (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
                 (coe v2)))
           v4 v3
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d_sym_36
              (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
                       (coe v2))))
              v3 v4 v5))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.total
d_total_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_206 ~v0 ~v1 ~v2 v3 = du_total_206 v3
du_total_206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_206 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_total_394
      (coe
         MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8805''45'isTotalOrder_208
         (coe v1))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-totalOrder
d_'8805''45'totalOrder_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
d_'8805''45'totalOrder_208 ~v0 ~v1 ~v2 v3
  = du_'8805''45'totalOrder_208 v3
du_'8805''45'totalOrder_208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
du_'8805''45'totalOrder_208 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8805''45'totalOrder_210
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.trans
d_trans_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_210 ~v0 ~v1 ~v2 v3 = du_trans_210 v3
du_trans_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_210 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0) in
    let v2
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v1) in
    coe
      (\ v3 v4 v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d_trans_84
           (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
                 (coe v2)))
           v5 v4 v3 v7 v6)
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰-respʳ-≈
d_'8816''45'resp'691''45''8776'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8816''45'resp'691''45''8776'_212 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰-respˡ-≈
d_'8816''45'resp'737''45''8776'_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8816''45'resp'737''45''8776'_214 = erased
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰⇒>
d_'8816''8658''62'_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8816''8658''62'_216 ~v0 ~v1 ~v2 v3 = du_'8816''8658''62'_216 v3
du_'8816''8658''62'_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8816''8658''62'_216 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8816''8658''62'_220
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰⇒≥
d_'8816''8658''8805'_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) -> AgdaAny
d_'8816''8658''8805'_218 ~v0 ~v1 ~v2 v3
  = du_'8816''8658''8805'_218 v3
du_'8816''8658''8805'_218 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) -> AgdaAny
du_'8816''8658''8805'_218 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du_'8816''8658''8805'_226
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_totalOrder_816 (coe v0))
      v1 v2
-- Relation.Binary.Properties.DecTotalOrder.≥-isDecTotalOrder
d_'8805''45'isDecTotalOrder_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_'8805''45'isDecTotalOrder_220 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isDecTotalOrder_220 v3
du_'8805''45'isDecTotalOrder_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
du_'8805''45'isDecTotalOrder_220 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.Converse.du_isDecTotalOrder_428
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_762
         (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.≥-decTotalOrder
d_'8805''45'decTotalOrder_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_'8805''45'decTotalOrder_222 ~v0 ~v1 ~v2 v3
  = du_'8805''45'decTotalOrder_222 v3
du_'8805''45'decTotalOrder_222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
du_'8805''45'decTotalOrder_222 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      (coe du_'8805''45'isDecTotalOrder_220 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder._._≤?_
d__'8804''63'__226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''63'__226 ~v0 ~v1 ~v2 v3 = du__'8804''63'__226 v3
du__'8804''63'__226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8804''63'__226 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__448
      (coe du_'8805''45'isDecTotalOrder_220 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
d_'60''45'isStrictTotalOrder_228 ~v0 ~v1 ~v2 v3
  = du_'60''45'isStrictTotalOrder_228 v3
du_'60''45'isStrictTotalOrder_228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
du_'60''45'isStrictTotalOrder_228 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'isStrictTotalOrder'8322'_578
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_762
         (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.<-strictTotalOrder
d_'60''45'strictTotalOrder_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_'60''45'strictTotalOrder_230 ~v0 ~v1 ~v2 v3
  = du_'60''45'strictTotalOrder_230 v3
du_'60''45'strictTotalOrder_230 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
du_'60''45'strictTotalOrder_230 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_14573
      (coe du_'60''45'isStrictTotalOrder_228 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder._.compare
d_compare_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_compare_234 ~v0 ~v1 ~v2 v3 = du_compare_234 v3
du_compare_234 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
du_compare_234 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_compare_516
      (coe du_'60''45'isStrictTotalOrder_228 (coe v0))
-- Relation.Binary.Properties.DecTotalOrder.≮⇒≥
d_'8814''8658''8805'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny
d_'8814''8658''8805'_240 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8814''8658''8805'_240 v3 v4 v5
du_'8814''8658''8805'_240 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny
du_'8814''8658''8805'_240 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8814''8658''8805'_126
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_decPoset_824 (coe v0) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_216
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isDecPartialOrder_382
                     (coe v4))))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8799'__446
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_762
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_444
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_762
                     (coe v0))))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_total_394
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_444
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_762
               (coe v0))))
      (coe v1) (coe v2)
-- Relation.Binary.Properties.DecTotalOrder.strictTotalOrder
d_strictTotalOrder_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_strictTotalOrder_242 ~v0 ~v1 ~v2 v3 = du_strictTotalOrder_242 v3
du_strictTotalOrder_242 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
du_strictTotalOrder_242 v0
  = coe du_'60''45'strictTotalOrder_230 (coe v0)
