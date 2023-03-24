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

module MAlonzo.Code.Relation.Binary.Properties.Preorder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Relation.Binary.Properties.Preorder.invIsPreorder
d_invIsPreorder_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_invIsPreorder_64 ~v0 ~v1 ~v2 v3 = du_invIsPreorder_64 v3
du_invIsPreorder_64 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_invIsPreorder_64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
              (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)) v2
              v1
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                 (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
                 v1 v2 v3)))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_84
              (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)) v3
              v2 v1 v5 v4))
-- Relation.Binary.Properties.Preorder.invPreorder
d_invPreorder_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_invPreorder_66 ~v0 ~v1 ~v2 v3 = du_invPreorder_66 v3
du_invPreorder_66 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_invPreorder_66 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe du_invIsPreorder_64 (coe v0))
-- Relation.Binary.Properties.Preorder.InducedEquivalence
d_InducedEquivalence_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_InducedEquivalence_68 ~v0 ~v1 ~v2 v3
  = du_InducedEquivalence_68 v3
du_InducedEquivalence_68 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_InducedEquivalence_68 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0))
                    (coe v1))
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.du_refl_98
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0))
                    (coe v1))))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Data.Product.du_swap_386))
         (coe
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.du_zip_218
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                    (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)) v1
                    v2 v3)
                 (coe
                    (\ v4 v5 v6 v7 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                         (MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)) v3
                         v2 v1 v7 v6)))))
