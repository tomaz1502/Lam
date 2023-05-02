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

module MAlonzo.Code.Relation.Binary.Properties.TotalOrder where

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
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset
import qualified MAlonzo.Code.Relation.Binary.Properties.Preorder
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Binary.Properties.TotalOrder.PosetProperties._<_
d__'60'__144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> ()
d__'60'__144 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties._≥_
d__'8805'__146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> ()
d__'8805'__146 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties._≰_
d__'8816'__148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> ()
d__'8816'__148 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.asym
d_asym_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_asym_150 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.irrefl
d_irrefl_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_irrefl_152 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_'60''45'isStrictPartialOrder_154 ~v0 ~v1 ~v2 v3
  = du_'60''45'isStrictPartialOrder_154 v3
du_'60''45'isStrictPartialOrder_154 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_'60''45'isStrictPartialOrder_154 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_180
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-resp-≈
d_'60''45'resp'45''8776'_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_156 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'45''8776'_156 v3
du_'60''45'resp'45''8776'_156 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'45''8776'_156 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_180
         (coe v1))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-respʳ-≈
d_'60''45'resp'691''45''8776'_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'691''45''8776'_158 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'691''45''8776'_158 v3
du_'60''45'resp'691''45''8776'_158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'691''45''8776'_158 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_182
              (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'691''45''8776'_304
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_494
         (coe v2))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-respˡ-≈
d_'60''45'resp'737''45''8776'_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'737''45''8776'_160 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'737''45''8776'_160 v3
du_'60''45'resp'737''45''8776'_160 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'737''45''8776'_160 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_182
              (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'737''45''8776'_306
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_494
         (coe v2))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<-strictPartialOrder
d_'60''45'strictPartialOrder_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
d_'60''45'strictPartialOrder_162 ~v0 ~v1 ~v2 v3
  = du_'60''45'strictPartialOrder_162 v3
du_'60''45'strictPartialOrder_162 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
du_'60''45'strictPartialOrder_162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'strictPartialOrder_182
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.trans
d_trans_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_164 ~v0 ~v1 ~v2 v3 = du_trans_164 v3
du_trans_164 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_164 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_282
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Poset.du_'60''45'isStrictPartialOrder_180
         (coe v1))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<⇒≉
d_'60''8658''8777'_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''8658''8777'_166 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.<⇒≱
d_'60''8658''8817'_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''8658''8817'_168 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≤⇒≯
d_'8804''8658''8815'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8804''8658''8815'_180 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8804''8743''8777''8658''60'_182 ~v0 ~v1 ~v2 ~v3
  = du_'8804''8743''8777''8658''60'_182
du_'8804''8743''8777''8658''60'_182 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8804''8743''8777''8658''60'_182 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8804''8743''8777''8658''60'_208
-- Relation.Binary.Properties.TotalOrder.PosetProperties.antisym
d_antisym_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_184 ~v0 ~v1 ~v2 v3 = du_antisym_184 v3
du_antisym_184 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_184 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
           (MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
              (coe v1))
           v2 v3 v5 v4)
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≥-isPartialOrder
d_'8805''45'isPartialOrder_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8805''45'isPartialOrder_186 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isPartialOrder_186 v3
du_'8805''45'isPartialOrder_186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_'8805''45'isPartialOrder_186 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'isPartialOrder_146
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.invIsPreorder
d_invIsPreorder_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_invIsPreorder_188 ~v0 ~v1 ~v2 v3 = du_invIsPreorder_188 v3
du_invIsPreorder_188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_invIsPreorder_188 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du_invIsPreorder_64
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326 (coe v1))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≥-poset
d_'8805''45'poset_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_'8805''45'poset_190 ~v0 ~v1 ~v2 v3 = du_'8805''45'poset_190 v3
du_'8805''45'poset_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_'8805''45'poset_190 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_148
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.invPreorder
d_invPreorder_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_invPreorder_192 ~v0 ~v1 ~v2 v3 = du_invPreorder_192 v3
du_invPreorder_192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_invPreorder_192 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du_invPreorder_66
      (coe MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326 (coe v1))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.refl
d_refl_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny
d_refl_194 ~v0 ~v1 ~v2 v3 = du_refl_194 v3
du_refl_194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny
du_refl_194 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du_'8805''45'poset_148
              (coe v1) in
    let v3
          = MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
              (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v3))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.reflexive
d_reflexive_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_196 ~v0 ~v1 ~v2 v3 = du_reflexive_196 v3
du_reflexive_196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_196 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
           (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
                 (coe v1)))
           v3 v2
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d_sym_36
              (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
                       (coe v1))))
              v2 v3 v4))
-- Relation.Binary.Properties.TotalOrder.PosetProperties.trans
d_trans_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_198 ~v0 ~v1 ~v2 v3 = du_trans_198 v3
du_trans_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_198 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
    coe
      (\ v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d_trans_84
           (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
                 (coe v1)))
           v4 v3 v2 v6 v5)
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≰-respʳ-≈
d_'8816''45'resp'691''45''8776'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8816''45'resp'691''45''8776'_200 = erased
-- Relation.Binary.Properties.TotalOrder.PosetProperties.≰-respˡ-≈
d_'8816''45'resp'737''45''8776'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8816''45'resp'737''45''8776'_202 = erased
-- Relation.Binary.Properties.TotalOrder.decTotalOrder
d_decTotalOrder_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_decTotalOrder_204 ~v0 ~v1 ~v2 v3 v4 = du_decTotalOrder_204 v3 v4
du_decTotalOrder_204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
du_decTotalOrder_204 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du_total'8743'dec'8658'dec_154
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674
                        (coe v0)))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_total_394
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0)))
            (coe v1)))
-- Relation.Binary.Properties.TotalOrder.≥-isTotalOrder
d_'8805''45'isTotalOrder_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_'8805''45'isTotalOrder_208 ~v0 ~v1 ~v2 v3
  = du_'8805''45'isTotalOrder_208 v3
du_'8805''45'isTotalOrder_208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
du_'8805''45'isTotalOrder_208 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.Converse.du_isTotalOrder_382
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))
-- Relation.Binary.Properties.TotalOrder.≥-totalOrder
d_'8805''45'totalOrder_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
d_'8805''45'totalOrder_210 ~v0 ~v1 ~v2 v3
  = du_'8805''45'totalOrder_210 v3
du_'8805''45'totalOrder_210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
du_'8805''45'totalOrder_210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_10811
      (coe du_'8805''45'isTotalOrder_208 (coe v0))
-- Relation.Binary.Properties.TotalOrder._.total
d_total_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_214 ~v0 ~v1 ~v2 v3 = du_total_214 v3
du_total_214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_total_394
      (coe du_'8805''45'isTotalOrder_208 (coe v0))
-- Relation.Binary.Properties.TotalOrder.≰⇒>
d_'8816''8658''62'_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8816''8658''62'_220 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8816''8658''62'_220 v3 v4 v5
du_'8816''8658''62'_220 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8816''8658''62'_220 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8816''8658''62'_76
      (let v3
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
       let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326 (coe v3) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v4))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674
                  (coe v0)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_total_394
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0)))
      (coe v1) (coe v2)
-- Relation.Binary.Properties.TotalOrder.≰⇒≥
d_'8816''8658''8805'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) -> AgdaAny
d_'8816''8658''8805'_226 ~v0 ~v1 ~v2 v3 v4 v5 ~v6
  = du_'8816''8658''8805'_226 v3 v4 v5
du_'8816''8658''8805'_226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_'8816''8658''8805'_226 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe du_'8816''8658''62'_220 v0 v1 v2 erased)
