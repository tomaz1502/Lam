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

module MAlonzo.Code.Relation.Nullary where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Empty.Irrelevant

-- Relation.Nullary.¬_
d_'172'__6 :: MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()
d_'172'__6 = erased
-- Relation.Nullary.Reflects
d_Reflects_14 a0 a1 a2 = ()
data T_Reflects_14 = C_of'696'_22 AgdaAny | C_of'8319'_26
-- Relation.Nullary.Dec
d_Dec_32 a0 a1 = ()
data T_Dec_32 = C__because__46 Bool T_Reflects_14
-- Relation.Nullary.Dec.does
d_does_42 :: T_Dec_32 -> Bool
d_does_42 v0
  = case coe v0 of
      C__because__46 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Dec.proof
d_proof_44 :: T_Dec_32 -> T_Reflects_14
d_proof_44 v0
  = case coe v0 of
      C__because__46 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.recompute
d_recompute_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Dec_32 -> AgdaAny -> AgdaAny
d_recompute_60 ~v0 ~v1 v2 ~v3 = du_recompute_60 v2
du_recompute_60 :: T_Dec_32 -> AgdaAny
du_recompute_60 v0
  = case coe v0 of
      C__because__46 v1 v2
        -> if coe v1
             then case coe v2 of
                    C_of'696'_22 v3 -> coe v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v2)
                    (coe MAlonzo.Code.Data.Empty.Irrelevant.du_'8869''45'elim_10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Irrelevant
d_Irrelevant_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()
d_Irrelevant_70 = erased
