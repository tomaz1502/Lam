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

module MAlonzo.Code.Data.Nat.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Empty

-- Data.Nat.Base._≤ᵇ_
d__'8804''7495'__10 :: Integer -> Integer -> Bool
d__'8804''7495'__10 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe ltInt (coe v2) (coe v1)
-- Data.Nat.Base._≤_
d__'8804'__18 a0 a1 = ()
data T__'8804'__18 = C_z'8804'n_22 | C_s'8804's_30 T__'8804'__18
-- Data.Nat.Base._<_
d__'60'__32 :: Integer -> Integer -> ()
d__'60'__32 = erased
-- Data.Nat.Base._≥_
d__'8805'__38 :: Integer -> Integer -> ()
d__'8805'__38 = erased
-- Data.Nat.Base._>_
d__'62'__44 :: Integer -> Integer -> ()
d__'62'__44 = erased
-- Data.Nat.Base._≰_
d__'8816'__50 :: Integer -> Integer -> ()
d__'8816'__50 = erased
-- Data.Nat.Base._≮_
d__'8814'__56 :: Integer -> Integer -> ()
d__'8814'__56 = erased
-- Data.Nat.Base._≱_
d__'8817'__62 :: Integer -> Integer -> ()
d__'8817'__62 = erased
-- Data.Nat.Base._≯_
d__'8815'__68 :: Integer -> Integer -> ()
d__'8815'__68 = erased
-- Data.Nat.Base.NonZero
d_NonZero_74 :: Integer -> ()
d_NonZero_74 = erased
-- Data.Nat.Base.≢-nonZero
d_'8802''45'nonZero_80 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny
d_'8802''45'nonZero_80 v0 v1
  = case coe v0 of
      0 -> coe v1 erased
      _ -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Data.Nat.Base.>-nonZero
d_'62''45'nonZero_90 :: Integer -> T__'8804'__18 -> AgdaAny
d_'62''45'nonZero_90 ~v0 v1 = du_'62''45'nonZero_90 v1
du_'62''45'nonZero_90 :: T__'8804'__18 -> AgdaAny
du_'62''45'nonZero_90 v0
  = coe seq (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Base.pred
d_pred_94 :: Integer -> Integer
d_pred_94 v0
  = coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (1 :: Integer)
-- Data.Nat.Base._+⋎_
d__'43''8910'__98 :: Integer -> Integer -> Integer
d__'43''8910'__98 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             addInt (coe (1 :: Integer))
             (coe d__'43''8910'__98 (coe v1) (coe v2))
-- Data.Nat.Base._⊔_
d__'8852'__106 :: Integer -> Integer -> Integer
d__'8852'__106 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    addInt (coe (1 :: Integer)) (coe d__'8852'__106 (coe v2) (coe v3))
-- Data.Nat.Base._⊓_
d__'8851'__116 :: Integer -> Integer -> Integer
d__'8851'__116 v0 v1
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (0 :: Integer)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    addInt (coe (1 :: Integer)) (coe d__'8851'__116 (coe v2) (coe v3))
-- Data.Nat.Base.⌊_/2⌋
d_'8970'_'47'2'8971'_126 :: Integer -> Integer
d_'8970'_'47'2'8971'_126 v0
  = case coe v0 of
      0 -> coe (0 :: Integer)
      1 -> coe (0 :: Integer)
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             addInt (coe (1 :: Integer)) (coe d_'8970'_'47'2'8971'_126 (coe v1))
-- Data.Nat.Base.⌈_/2⌉
d_'8968'_'47'2'8969'_130 :: Integer -> Integer
d_'8968'_'47'2'8969'_130 v0
  = coe
      d_'8970'_'47'2'8971'_126 (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Base._^_
d__'94'__134 :: Integer -> Integer -> Integer
d__'94'__134 v0 v1
  = case coe v1 of
      0 -> coe (1 :: Integer)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe mulInt (coe v0) (coe d__'94'__134 (coe v0) (coe v2))
-- Data.Nat.Base.∣_-_∣
d_'8739'_'45'_'8739'_142 :: Integer -> Integer -> Integer
d_'8739'_'45'_'8739'_142 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d_'8739'_'45'_'8739'_142 (coe v2) (coe v3)
-- Data.Nat.Base._≤′_
d__'8804''8242'__154 a0 a1 = ()
data T__'8804''8242'__154
  = C_'8804''8242''45'refl_158 |
    C_'8804''8242''45'step_164 T__'8804''8242'__154
-- Data.Nat.Base._<′_
d__'60''8242'__166 :: Integer -> Integer -> ()
d__'60''8242'__166 = erased
-- Data.Nat.Base._≥′_
d__'8805''8242'__172 :: Integer -> Integer -> ()
d__'8805''8242'__172 = erased
-- Data.Nat.Base._>′_
d__'62''8242'__178 :: Integer -> Integer -> ()
d__'62''8242'__178 = erased
-- Data.Nat.Base._≤″_
d__'8804''8243'__188 a0 a1 = ()
newtype T__'8804''8243'__188
  = C_less'45'than'45'or'45'equal_202 Integer
-- Data.Nat.Base._≤″_.k
d_k_198 :: T__'8804''8243'__188 -> Integer
d_k_198 v0
  = case coe v0 of
      C_less'45'than'45'or'45'equal_202 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Base._≤″_.proof
d_proof_200 ::
  T__'8804''8243'__188 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_proof_200 = erased
-- Data.Nat.Base._<″_
d__'60''8243'__204 :: Integer -> Integer -> ()
d__'60''8243'__204 = erased
-- Data.Nat.Base._≥″_
d__'8805''8243'__210 :: Integer -> Integer -> ()
d__'8805''8243'__210 = erased
-- Data.Nat.Base._>″_
d__'62''8243'__216 :: Integer -> Integer -> ()
d__'62''8243'__216 = erased
-- Data.Nat.Base._≤‴_
d__'8804''8244'__222 a0 a1 = ()
data T__'8804''8244'__222
  = C_'8804''8244''45'refl_226 |
    C_'8804''8244''45'step_232 T__'8804''8244'__222
-- Data.Nat.Base._<‴_
d__'60''8244'__234 :: Integer -> Integer -> ()
d__'60''8244'__234 = erased
-- Data.Nat.Base._≥‴_
d__'8805''8244'__240 :: Integer -> Integer -> ()
d__'8805''8244'__240 = erased
-- Data.Nat.Base._>‴_
d__'62''8244'__246 :: Integer -> Integer -> ()
d__'62''8244'__246 = erased
-- Data.Nat.Base.Ordering
d_Ordering_252 a0 a1 = ()
data T_Ordering_252
  = C_less_258 Integer | C_equal_262 | C_greater_268 Integer
-- Data.Nat.Base.compare
d_compare_274 :: Integer -> Integer -> T_Ordering_252
d_compare_274 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe C_equal_262
             _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe C_less_258 v2
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe C_greater_268 v2
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d_compare_274 (coe v2) (coe v3)
