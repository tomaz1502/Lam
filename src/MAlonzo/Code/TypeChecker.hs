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

module MAlonzo.Code.TypeChecker where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Defs
import qualified MAlonzo.Code.Utils

-- TypeChecker.TypingContext
d_TypingContext_2 :: ()
d_TypingContext_2 = erased
-- TypeChecker.emptyTypingContext
d_emptyTypingContext_4 :: [MAlonzo.Code.Defs.T_Type_4]
d_emptyTypingContext_4
  = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
-- TypeChecker.typeCheck
d_typeCheck_6 ::
  [MAlonzo.Code.Defs.T_Type_4] ->
  MAlonzo.Code.Defs.T_Expr_10 -> Maybe MAlonzo.Code.Defs.T_Type_4
d_typeCheck_6 v0 v1
  = case coe v1 of
      MAlonzo.Code.Defs.C_Var_12 v2
        -> coe MAlonzo.Code.Utils.du_lookup'63'_32 (coe v2) (coe v0)
      MAlonzo.Code.Defs.C_Lam_14 v2 v3 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
             (coe
                d_typeCheck_6
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3) (coe v0))
                (coe v4))
             (coe
                (\ v5 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                     (coe MAlonzo.Code.Defs.C__'8658'__8 (coe v3) (coe v5))))
      MAlonzo.Code.Defs.C_App_16 v2 v3
        -> let v4 = d_typeCheck_6 (coe v0) (coe v2) in
           case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> case coe v5 of
                    MAlonzo.Code.Defs.C__'8658'__8 v6 v7
                      -> coe
                           MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
                           (coe d_typeCheck_6 (coe v0) (coe v3))
                           (coe
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                                   (coe MAlonzo.Code.Utils.d__'61''61''7511'__2 (coe v6) (coe v8))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v7))
                                   (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                    _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
