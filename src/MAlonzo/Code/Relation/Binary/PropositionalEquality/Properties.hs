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

module MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Binary.PropositionalEquality.Properties.trans-reflʳ
d_trans'45'refl'691'_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans'45'refl'691'_24 = erased
-- Relation.Binary.PropositionalEquality.Properties.trans-assoc
d_trans'45'assoc_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans'45'assoc_40 = erased
-- Relation.Binary.PropositionalEquality.Properties.trans-symˡ
d_trans'45'sym'737'_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans'45'sym'737'_48 = erased
-- Relation.Binary.PropositionalEquality.Properties.trans-symʳ
d_trans'45'sym'691'_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans'45'sym'691'_56 = erased
-- Relation.Binary.PropositionalEquality.Properties.trans-injectiveˡ
d_trans'45'injective'737'_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans'45'injective'737'_70 = erased
-- Relation.Binary.PropositionalEquality.Properties.trans-injectiveʳ
d_trans'45'injective'691'_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans'45'injective'691'_84 = erased
-- Relation.Binary.PropositionalEquality.Properties.cong-id
d_cong'45'id_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong'45'id_94 = erased
-- Relation.Binary.PropositionalEquality.Properties.cong-∘
d_cong'45''8728'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong'45''8728'_106 = erased
-- Relation.Binary.PropositionalEquality.Properties.trans-cong
d_trans'45'cong_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_trans'45'cong_120 = erased
-- Relation.Binary.PropositionalEquality.Properties.cong₂-reflˡ
d_cong'8322''45'refl'737'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong'8322''45'refl'737'_134 = erased
-- Relation.Binary.PropositionalEquality.Properties.cong₂-reflʳ
d_cong'8322''45'refl'691'_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong'8322''45'refl'691'_148 = erased
-- Relation.Binary.PropositionalEquality.Properties._.subst-injective
d_subst'45'injective_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subst'45'injective_170 = erased
-- Relation.Binary.PropositionalEquality.Properties._.subst-subst
d_subst'45'subst_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subst'45'subst_182 = erased
-- Relation.Binary.PropositionalEquality.Properties._.subst-subst-sym
d_subst'45'subst'45'sym_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subst'45'subst'45'sym_188 = erased
-- Relation.Binary.PropositionalEquality.Properties._.subst-sym-subst
d_subst'45'sym'45'subst_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subst'45'sym'45'subst_194 = erased
-- Relation.Binary.PropositionalEquality.Properties.subst-∘
d_subst'45''8728'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subst'45''8728'_208 = erased
-- Relation.Binary.PropositionalEquality.Properties.subst-application
d_subst'45'application_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_subst'45'application_240 = erased
-- Relation.Binary.PropositionalEquality.Properties.isEquivalence
d_isEquivalence_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_242 ~v0 ~v1 = du_isEquivalence_242
du_isEquivalence_242 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_242
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
      erased erased erased
-- Relation.Binary.PropositionalEquality.Properties.isDecEquivalence
d_isDecEquivalence_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_244 ~v0 ~v1 v2 = du_isDecEquivalence_244 v2
du_isDecEquivalence_244 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_1689
      (coe du_isEquivalence_242) (coe v0)
-- Relation.Binary.PropositionalEquality.Properties.isPreorder
d_isPreorder_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_248 ~v0 ~v1 = du_isPreorder_248
du_isPreorder_248 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_248
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe du_isEquivalence_242) (coe (\ v0 v1 v2 -> v2)) erased
-- Relation.Binary.PropositionalEquality.Properties.setoid
d_setoid_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_250 ~v0 ~v1 = du_setoid_250
du_setoid_250 :: MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_250
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (coe du_isEquivalence_242)
-- Relation.Binary.PropositionalEquality.Properties.decSetoid
d_decSetoid_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_decSetoid_254 ~v0 ~v1 v2 = du_decSetoid_254 v2
du_decSetoid_254 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
du_decSetoid_254 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1131
      (coe du_isDecEquivalence_244 (coe v0))
-- Relation.Binary.PropositionalEquality.Properties.preorder
d_preorder_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_258 ~v0 ~v1 = du_preorder_258
du_preorder_258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_258
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe du_isPreorder_248)
