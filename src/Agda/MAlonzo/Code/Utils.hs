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

module MAlonzo.Code.Utils where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Defs

-- Utils._==ᵗ_
d__'61''61''7511'__2 ::
  MAlonzo.Code.Defs.T_Type_4 -> MAlonzo.Code.Defs.T_Type_4 -> Bool
d__'61''61''7511'__2 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    case coe v0 of
      MAlonzo.Code.Defs.C_U_6
        -> case coe v1 of
             MAlonzo.Code.Defs.C_U_6
               -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
             _ -> coe v2
      MAlonzo.Code.Defs.C__'8658'__8 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Defs.C__'8658'__8 v5 v6
               -> coe
                    MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                    (coe d__'61''61''7511'__2 (coe v3) (coe v5))
                    (coe d__'61''61''7511'__2 (coe v4) (coe v6))
             _ -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Utils._==_
d__'61''61'__12 ::
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10 -> Bool
d__'61''61'__12 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    case coe v0 of
      MAlonzo.Code.Defs.C_Var_12 v3
        -> case coe v1 of
             MAlonzo.Code.Defs.C_Var_12 v4 -> coe eqInt (coe v3) (coe v4)
             _ -> coe v2
      MAlonzo.Code.Defs.C_Lam_14 v3 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Defs.C_Lam_14 v6 v7 v8
               -> coe d__'61''61'__12 (coe v5) (coe v8)
             _ -> coe v2
      MAlonzo.Code.Defs.C_App_16 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Defs.C_App_16 v5 v6
               -> coe
                    MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                    (coe d__'61''61'__12 (coe v3) (coe v4))
                    (coe d__'61''61'__12 (coe v5) (coe v6))
             _ -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Utils.lookup?
d_lookup'63'_32 :: () -> Integer -> [AgdaAny] -> Maybe AgdaAny
d_lookup'63'_32 ~v0 v1 v2 = du_lookup'63'_32 v1 v2
du_lookup'63'_32 :: Integer -> [AgdaAny] -> Maybe AgdaAny
du_lookup'63'_32 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v2 v3
        -> case coe v0 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
             _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe du_lookup'63'_32 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Utils.lookup≡
d_lookup'8801'_48 ::
  () ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8801'_48 = erased
-- Utils.==ᵗ-refl
d_'61''61''7511''45'refl_70 ::
  MAlonzo.Code.Defs.T_Type_4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'61''61''7511''45'refl_70 = erased
-- Utils.injection-maybe
d_injection'45'maybe_84 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_injection'45'maybe_84 = erased
-- Utils.lookup?<
d_lookup'63''60'_94 ::
  () ->
  [AgdaAny] ->
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_lookup'63''60'_94 ~v0 v1 v2 ~v3 ~v4 = du_lookup'63''60'_94 v1 v2
du_lookup'63''60'_94 ::
  [AgdaAny] -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_lookup'63''60'_94 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10
      (:) v2 v3
        -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                    (coe du_lookup'63''60'_94 (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Utils.iteAbs
d_iteAbs_126 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_iteAbs_126 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_iteAbs_126 v4 v6
du_iteAbs_126 ::
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_iteAbs_126 v0 v1
  = if coe v0
      then coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v1)
      else coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10
-- Utils.∧to×
d_'8743'to'215'_156 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8743'to'215'_156 v0 v1 ~v2 = du_'8743'to'215'_156 v0 v1
du_'8743'to'215'_156 ::
  Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8743'to'215'_156 v0 v1
  = coe
      seq (coe v0)
      (coe
         seq (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))
-- Utils.==ᵗto≡
d_'61''61''7511'to'8801'_164 ::
  MAlonzo.Code.Defs.T_Type_4 ->
  MAlonzo.Code.Defs.T_Type_4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'61''61''7511'to'8801'_164 = erased
