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

module MAlonzo.Code.Defs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.String

type Id = Data.Text.Text

data Type = U | Arrow Type Type
  deriving Eq

data Expr =
    Var Integer
  | Lam Id Type Expr
  | App Expr Expr
  deriving Eq
-- Defs.Id
d_Id_2 :: ()
d_Id_2 = erased
-- Defs.Type
d_Type_4 = ()
type T_Type_4 = Type
pattern C_U_6 = U
pattern C__'8658'__8 a0 a1 = Arrow a0 a1
check_U_6 :: T_Type_4
check_U_6 = U
check__'8658'__8 :: T_Type_4 -> T_Type_4 -> T_Type_4
check__'8658'__8 = Arrow
cover_Type_4 :: Type -> ()
cover_Type_4 x
  = case x of
      U -> ()
      Arrow _ _ -> ()
-- Defs.Expr
d_Expr_10 = ()
type T_Expr_10 = Expr
pattern C_Var_12 a0 = Var a0
pattern C_Lam_14 a0 a1 a2 = Lam a0 a1 a2
pattern C_App_16 a0 a1 = App a0 a1
check_Var_12 :: Integer -> T_Expr_10
check_Var_12 = Var
check_Lam_14 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  T_Type_4 -> T_Expr_10 -> T_Expr_10
check_Lam_14 = Lam
check_App_16 :: T_Expr_10 -> T_Expr_10 -> T_Expr_10
check_App_16 = App
cover_Expr_10 :: Expr -> ()
cover_Expr_10 x
  = case x of
      Var _ -> ()
      Lam _ _ _ -> ()
      App _ _ -> ()
