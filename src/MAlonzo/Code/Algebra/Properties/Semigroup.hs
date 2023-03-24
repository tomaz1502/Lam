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

module MAlonzo.Code.Algebra.Properties.Semigroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.Semigroup.x∙yz≈xy∙z
d_x'8729'yz'8776'xy'8729'z_58 ::
  MAlonzo.Code.Algebra.Bundles.T_Semigroup_206 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_x'8729'yz'8776'xy'8729'z_58 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (MAlonzo.Code.Algebra.Structures.d_isEquivalence_94
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_202
            (coe MAlonzo.Code.Algebra.Bundles.d_isSemigroup_226 (coe v0))))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__224 v0
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__224 v0 v1 v2) v3)
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__224 v0 v1
         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__224 v0 v2 v3))
      (coe
         MAlonzo.Code.Algebra.Structures.d_assoc_204
         (MAlonzo.Code.Algebra.Bundles.d_isSemigroup_226 (coe v0)) v1 v2 v3)
