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

module MAlonzo.Code.Evaluator where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Defs
import qualified MAlonzo.Code.Utils

-- Evaluator.shiftUp'
d_shiftUp''_2 ::
  Integer ->
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10
d_shiftUp''_2 v0 v1
  = case coe v1 of
      MAlonzo.Code.Defs.C_Var_12 v2
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
             (coe ltInt (coe v2) (coe v0)) (coe v1)
             (coe
                MAlonzo.Code.Defs.C_Var_12
                (coe addInt (coe (1 :: Integer)) (coe v2)))
      MAlonzo.Code.Defs.C_Lam_14 v2 v3 v4
        -> coe
             MAlonzo.Code.Defs.C_Lam_14 (coe v2) (coe v3)
             (coe
                d_shiftUp''_2 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v4))
      MAlonzo.Code.Defs.C_App_16 v2 v3
        -> coe
             MAlonzo.Code.Defs.C_App_16 (coe d_shiftUp''_2 (coe v0) (coe v2))
             (coe d_shiftUp''_2 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Evaluator.shiftUp
d_shiftUp_22 ::
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10
d_shiftUp_22 = coe d_shiftUp''_2 (coe (0 :: Integer))
-- Evaluator.shiftDown'
d_shiftDown''_24 ::
  Integer ->
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10
d_shiftDown''_24 v0 v1
  = case coe v1 of
      MAlonzo.Code.Defs.C_Var_12 v2
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
             (coe ltInt (coe v2) (coe v0)) (coe v1)
             (coe
                MAlonzo.Code.Defs.C_Var_12
                (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v2 (1 :: Integer)))
      MAlonzo.Code.Defs.C_Lam_14 v2 v3 v4
        -> coe
             MAlonzo.Code.Defs.C_Lam_14 (coe v2) (coe v3)
             (coe
                d_shiftDown''_24 (coe addInt (coe (1 :: Integer)) (coe v0))
                (coe v4))
      MAlonzo.Code.Defs.C_App_16 v2 v3
        -> coe
             MAlonzo.Code.Defs.C_App_16 (coe d_shiftDown''_24 (coe v0) (coe v2))
             (coe d_shiftDown''_24 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Evaluator.shiftDown
d_shiftDown_44 ::
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10
d_shiftDown_44 = coe d_shiftDown''_24 (coe (0 :: Integer))
-- Evaluator.substitute
d_substitute_46 ::
  Integer ->
  MAlonzo.Code.Defs.T_Expr_10 ->
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10
d_substitute_46 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Defs.C_Var_12 v3
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
             (coe eqInt (coe v0) (coe v3)) (coe v1) (coe v2)
      MAlonzo.Code.Defs.C_Lam_14 v3 v4 v5
        -> coe
             MAlonzo.Code.Defs.C_Lam_14 (coe v3) (coe v4)
             (coe
                d_substitute_46 (coe addInt (coe (1 :: Integer)) (coe v0))
                (coe d_shiftUp_22 v1) (coe v5))
      MAlonzo.Code.Defs.C_App_16 v3 v4
        -> coe
             MAlonzo.Code.Defs.C_App_16
             (coe d_substitute_46 (coe v0) (coe v1) (coe v3))
             (coe d_substitute_46 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Evaluator.smallStep
d_smallStep_72 ::
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10
d_smallStep_72 v0
  = case coe v0 of
      MAlonzo.Code.Defs.C_Var_12 v1 -> coe v0
      MAlonzo.Code.Defs.C_Lam_14 v1 v2 v3
        -> coe
             MAlonzo.Code.Defs.C_Lam_14 (coe v1) (coe v2)
             (coe d_smallStep_72 (coe v3))
      MAlonzo.Code.Defs.C_App_16 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                     (coe
                        MAlonzo.Code.Utils.d__'61''61'__12 (coe d_smallStep_72 (coe v1))
                        (coe v1))
                     (coe
                        MAlonzo.Code.Defs.C_App_16 (coe v1) (coe d_smallStep_72 (coe v2)))
                     (coe
                        MAlonzo.Code.Defs.C_App_16 (coe d_smallStep_72 (coe v1))
                        (coe v2)) in
           case coe v1 of
             MAlonzo.Code.Defs.C_Lam_14 v4 v5 v6
               -> coe
                    d_shiftDown_44
                    (d_substitute_46
                       (coe (0 :: Integer)) (coe d_shiftUp_22 v2) (coe v6))
             _ -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Evaluator.eval
d_eval_92 ::
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10
d_eval_92 v0
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
      (coe
         MAlonzo.Code.Utils.d__'61''61'__12 (coe d_smallStep_72 (coe v0))
         (coe v0))
      (coe d_smallStep_72 (coe v0))
      (coe d_eval_92 (coe d_smallStep_72 (coe v0)))
-- Evaluator.evalWithGas
d_evalWithGas_98 ::
  Integer ->
  MAlonzo.Code.Defs.T_Expr_10 -> MAlonzo.Code.Defs.T_Expr_10
d_evalWithGas_98 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
             (coe
                MAlonzo.Code.Utils.d__'61''61'__12 (coe d_smallStep_72 (coe v1))
                (coe v1))
             (coe d_smallStep_72 (coe v1))
             (coe d_evalWithGas_98 (coe v2) (coe d_smallStep_72 (coe v1)))
