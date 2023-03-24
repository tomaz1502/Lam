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

module MAlonzo.Code.Category.Functor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

-- Category.Functor.RawFunctor
d_RawFunctor_24 a0 a1 a2 = ()
newtype T_RawFunctor_24
  = C_RawFunctor'46'constructor_181 (() ->
                                     () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Category.Functor.RawFunctor._<$>_
d__'60''36''62'__30 ::
  T_RawFunctor_24 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62'__30 v0
  = case coe v0 of
      C_RawFunctor'46'constructor_181 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Category.Functor.RawFunctor._<$_
d__'60''36'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_RawFunctor_24 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36'__32 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7
  = du__'60''36'__32 v3 v6 v7
du__'60''36'__32 ::
  T_RawFunctor_24 -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''36'__32 v0 v1 v2
  = coe d__'60''36''62'__30 v0 erased erased (\ v3 -> v1) v2
-- Category.Functor.RawFunctor._<&>_
d__'60''38''62'__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  T_RawFunctor_24 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'60''38''62'__38 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7
  = du__'60''38''62'__38 v3 v6 v7
du__'60''38''62'__38 ::
  T_RawFunctor_24 -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'60''38''62'__38 v0 v1 v2
  = coe d__'60''36''62'__30 v0 erased erased v2 v1
-- Category.Functor.Morphism
d_Morphism_54 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T_Morphism_54
  = C_Morphism'46'constructor_2357 (() -> AgdaAny -> AgdaAny)
-- Category.Functor.Morphism.op
d_op_72 :: T_Morphism_54 -> () -> AgdaAny -> AgdaAny
d_op_72 v0
  = case coe v0 of
      C_Morphism'46'constructor_2357 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Category.Functor.Morphism.op-<$>
d_op'45''60''36''62'_78 ::
  T_Morphism_54 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_op'45''60''36''62'_78 = erased
