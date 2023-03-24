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

module MAlonzo.Code.Data.Fin.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base

-- Data.Fin.Base.Fin
d_Fin_6 a0 = ()
data T_Fin_6 = C_zero_10 | C_suc_16 T_Fin_6
-- Data.Fin.Base.toℕ
d_toℕ_20 :: Integer -> T_Fin_6 -> Integer
d_toℕ_20 ~v0 v1 = du_toℕ_20 v1
du_toℕ_20 :: T_Fin_6 -> Integer
du_toℕ_20 v0
  = case coe v0 of
      C_zero_10 -> coe (0 :: Integer)
      C_suc_16 v2
        -> coe addInt (coe (1 :: Integer)) (coe du_toℕ_20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.Fin′
d_Fin'8242'_26 :: Integer -> T_Fin_6 -> ()
d_Fin'8242'_26 = erased
-- Data.Fin.Base.cast
d_cast_36 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_Fin_6 -> T_Fin_6
d_cast_36 v0 ~v1 ~v2 v3 = du_cast_36 v0 v3
du_cast_36 :: Integer -> T_Fin_6 -> T_Fin_6
du_cast_36 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> case coe v1 of
             C_zero_10 -> coe C_zero_10
             C_suc_16 v3
               -> coe
                    C_suc_16
                    (coe
                       du_cast_36
                       (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (1 :: Integer))
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.fromℕ
d_fromℕ_58 :: Integer -> T_Fin_6
d_fromℕ_58 v0
  = case coe v0 of
      0 -> coe C_zero_10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C_suc_16 (d_fromℕ_58 (coe v1))
-- Data.Fin.Base.fromℕ<
d_fromℕ'60'_66 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> T_Fin_6
d_fromℕ'60'_66 v0 ~v1 ~v2 = du_fromℕ'60'_66 v0
du_fromℕ'60'_66 :: Integer -> T_Fin_6
du_fromℕ'60'_66 v0
  = case coe v0 of
      0 -> coe C_zero_10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C_suc_16 (coe du_fromℕ'60'_66 (coe v1))
-- Data.Fin.Base.fromℕ<″
d_fromℕ'60''8243'_82 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 -> T_Fin_6
d_fromℕ'60''8243'_82 v0 ~v1 v2 = du_fromℕ'60''8243'_82 v0 v2
du_fromℕ'60''8243'_82 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 -> T_Fin_6
du_fromℕ'60''8243'_82 v0 v1
  = case coe v0 of
      0 -> coe seq (coe v1) (coe C_zero_10)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202 v3
               -> coe
                    C_suc_16
                    (coe
                       du_fromℕ'60''8243'_82 (coe v2)
                       (coe
                          MAlonzo.Code.Data.Nat.Base.C_less'45'than'45'or'45'equal_202 v3))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.raise
d_raise_90 :: Integer -> Integer -> T_Fin_6 -> T_Fin_6
d_raise_90 ~v0 v1 v2 = du_raise_90 v1 v2
du_raise_90 :: Integer -> T_Fin_6 -> T_Fin_6
du_raise_90 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C_suc_16 (coe du_raise_90 (coe v2) (coe v1))
-- Data.Fin.Base.reduce≥
d_reduce'8805'_106 ::
  Integer ->
  Integer ->
  T_Fin_6 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> T_Fin_6
d_reduce'8805'_106 v0 ~v1 v2 v3 = du_reduce'8805'_106 v0 v2 v3
du_reduce'8805'_106 ::
  Integer ->
  T_Fin_6 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> T_Fin_6
du_reduce'8805'_106 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C_suc_16 v5
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v8
                      -> coe du_reduce'8805'_106 (coe v3) (coe v5) (coe v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.inject
d_inject_122 :: Integer -> T_Fin_6 -> T_Fin_6 -> T_Fin_6
d_inject_122 ~v0 v1 v2 = du_inject_122 v1 v2
du_inject_122 :: T_Fin_6 -> T_Fin_6 -> T_Fin_6
du_inject_122 v0 v1
  = case coe v0 of
      C_suc_16 v3
        -> case coe v1 of
             C_zero_10 -> coe C_zero_10
             C_suc_16 v5 -> coe C_suc_16 (coe du_inject_122 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.inject!
d_inject'33'_134 :: Integer -> T_Fin_6 -> T_Fin_6 -> T_Fin_6
d_inject'33'_134 ~v0 v1 v2 = du_inject'33'_134 v1 v2
du_inject'33'_134 :: T_Fin_6 -> T_Fin_6 -> T_Fin_6
du_inject'33'_134 v0 v1
  = case coe v0 of
      C_suc_16 v3
        -> case coe v1 of
             C_zero_10 -> coe C_zero_10
             C_suc_16 v5
               -> coe C_suc_16 (coe du_inject'33'_134 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.inject+
d_inject'43'_142 :: Integer -> Integer -> T_Fin_6 -> T_Fin_6
d_inject'43'_142 ~v0 ~v1 v2 = du_inject'43'_142 v2
du_inject'43'_142 :: T_Fin_6 -> T_Fin_6
du_inject'43'_142 v0 = coe v0
-- Data.Fin.Base.inject₁
d_inject'8321'_152 :: Integer -> T_Fin_6 -> T_Fin_6
d_inject'8321'_152 ~v0 v1 = du_inject'8321'_152 v1
du_inject'8321'_152 :: T_Fin_6 -> T_Fin_6
du_inject'8321'_152 v0 = coe v0
-- Data.Fin.Base.inject≤
d_inject'8804'_160 ::
  Integer ->
  Integer ->
  T_Fin_6 -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> T_Fin_6
d_inject'8804'_160 ~v0 ~v1 v2 ~v3 = du_inject'8804'_160 v2
du_inject'8804'_160 :: T_Fin_6 -> T_Fin_6
du_inject'8804'_160 v0 = coe v0
-- Data.Fin.Base.lower₁
d_lower'8321'_176 ::
  Integer ->
  T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  T_Fin_6
d_lower'8321'_176 v0 v1 ~v2 = du_lower'8321'_176 v0 v1
du_lower'8321'_176 :: Integer -> T_Fin_6 -> T_Fin_6
du_lower'8321'_176 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C_zero_10 -> coe C_zero_10
             C_suc_16 v4
               -> coe C_suc_16 (coe du_lower'8321'_176 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.strengthen
d_strengthen_194 :: Integer -> T_Fin_6 -> T_Fin_6
d_strengthen_194 ~v0 v1 = du_strengthen_194 v1
du_strengthen_194 :: T_Fin_6 -> T_Fin_6
du_strengthen_194 v0 = coe v0
-- Data.Fin.Base.splitAt
d_splitAt_202 ::
  Integer ->
  Integer -> T_Fin_6 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_splitAt_202 v0 ~v1 v2 = du_splitAt_202 v0 v2
du_splitAt_202 ::
  Integer -> T_Fin_6 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_splitAt_202 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C_zero_10
               -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe C_zero_10)
             C_suc_16 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du_map_84 (coe C_suc_16) (\ v5 -> v5)
                    (coe du_splitAt_202 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.join
d_join_216 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Fin_6
d_join_216 v0 ~v1 = du_join_216 v0
du_join_216 ::
  Integer -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Fin_6
du_join_216 v0
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (\ v1 -> v1)
      (coe du_raise_90 (coe v0))
-- Data.Fin.Base.quotRem
d_quotRem_226 ::
  Integer ->
  Integer -> T_Fin_6 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_quotRem_226 ~v0 v1 v2 = du_quotRem_226 v1 v2
du_quotRem_226 ::
  Integer -> T_Fin_6 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_quotRem_226 v0 v1
  = let v2 = coe du_splitAt_202 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
             (coe C_zero_10)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> coe
             MAlonzo.Code.Data.Product.du_map'8322'_170 (\ v4 -> coe C_suc_16)
             (coe du_quotRem_226 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.remQuot
d_remQuot_258 ::
  Integer ->
  Integer -> T_Fin_6 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_remQuot_258 ~v0 v1 v2 = du_remQuot_258 v1 v2
du_remQuot_258 ::
  Integer -> T_Fin_6 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_remQuot_258 v0 v1
  = coe
      MAlonzo.Code.Data.Product.du_swap_386
      (coe du_quotRem_226 (coe v0) (coe v1))
-- Data.Fin.Base.combine
d_combine_266 ::
  Integer -> Integer -> T_Fin_6 -> T_Fin_6 -> T_Fin_6
d_combine_266 ~v0 v1 v2 v3 = du_combine_266 v1 v2 v3
du_combine_266 :: Integer -> T_Fin_6 -> T_Fin_6 -> T_Fin_6
du_combine_266 v0 v1 v2
  = case coe v1 of
      C_zero_10 -> coe v2
      C_suc_16 v4
        -> coe
             du_raise_90 (coe v0)
             (coe du_combine_266 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.fold
d_fold_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T_Fin_6 -> AgdaAny
d_fold_292 ~v0 ~v1 v2 v3 v4 v5 = du_fold_292 v2 v3 v4 v5
du_fold_292 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T_Fin_6 -> AgdaAny
du_fold_292 v0 v1 v2 v3
  = case coe v3 of
      C_zero_10
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in coe v2 v5
      C_suc_16 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe v1 v6 (coe du_fold_292 (coe v6) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.fold′
d_fold'8242'_318 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (T_Fin_6 -> ()) ->
  (T_Fin_6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T_Fin_6 -> AgdaAny
d_fold'8242'_318 ~v0 ~v1 ~v2 v3 v4 v5 = du_fold'8242'_318 v3 v4 v5
du_fold'8242'_318 ::
  (T_Fin_6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T_Fin_6 -> AgdaAny
du_fold'8242'_318 v0 v1 v2
  = case coe v2 of
      C_zero_10 -> coe v1
      C_suc_16 v4
        -> coe
             v0 v4
             (coe du_fold'8242'_318 (coe (\ v5 -> coe v0 v5)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.lift
d_lift_342 ::
  Integer ->
  Integer -> Integer -> (T_Fin_6 -> T_Fin_6) -> T_Fin_6 -> T_Fin_6
d_lift_342 ~v0 ~v1 v2 v3 v4 = du_lift_342 v2 v3 v4
du_lift_342 ::
  Integer -> (T_Fin_6 -> T_Fin_6) -> T_Fin_6 -> T_Fin_6
du_lift_342 v0 v1 v2
  = case coe v0 of
      0 -> coe v1 v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             C_zero_10 -> coe C_zero_10
             C_suc_16 v5
               -> coe C_suc_16 (coe du_lift_342 (coe v3) (coe v1) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._+_
d__'43'__366 :: Integer -> Integer -> T_Fin_6 -> T_Fin_6 -> T_Fin_6
d__'43'__366 ~v0 ~v1 v2 v3 = du__'43'__366 v2 v3
du__'43'__366 :: T_Fin_6 -> T_Fin_6 -> T_Fin_6
du__'43'__366 v0 v1
  = case coe v0 of
      C_zero_10 -> coe v1
      C_suc_16 v3 -> coe C_suc_16 (coe du__'43'__366 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._-_
d__'45'__380 :: Integer -> T_Fin_6 -> T_Fin_6 -> T_Fin_6
d__'45'__380 ~v0 v1 v2 = du__'45'__380 v1 v2
du__'45'__380 :: T_Fin_6 -> T_Fin_6 -> T_Fin_6
du__'45'__380 v0 v1
  = case coe v1 of
      C_zero_10 -> coe v0
      C_suc_16 v3
        -> case coe v0 of
             C_suc_16 v5 -> coe du__'45'__380 (coe v5) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._ℕ-_
d__ℕ'45'__392 :: Integer -> T_Fin_6 -> T_Fin_6
d__ℕ'45'__392 v0 v1
  = case coe v1 of
      C_zero_10 -> coe d_fromℕ_58 (coe v0)
      C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d__ℕ'45'__392 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._ℕ-ℕ_
d__ℕ'45'ℕ__402 :: Integer -> T_Fin_6 -> Integer
d__ℕ'45'ℕ__402 v0 v1
  = case coe v1 of
      C_zero_10 -> coe v0
      C_suc_16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d__ℕ'45'ℕ__402 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.pred
d_pred_412 :: Integer -> T_Fin_6 -> T_Fin_6
d_pred_412 ~v0 v1 = du_pred_412 v1
du_pred_412 :: T_Fin_6 -> T_Fin_6
du_pred_412 v0
  = case coe v0 of
      C_zero_10 -> coe C_zero_10
      C_suc_16 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.opposite
d_opposite_418 :: Integer -> T_Fin_6 -> T_Fin_6
d_opposite_418 v0 v1
  = let v2 = subInt (coe v0) (coe (1 :: Integer)) in
    case coe v1 of
      C_zero_10 -> coe d_fromℕ_58 (coe v2)
      C_suc_16 v4 -> coe d_opposite_418 (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.punchOut
d_punchOut_432 ::
  Integer ->
  T_Fin_6 ->
  T_Fin_6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  T_Fin_6
d_punchOut_432 ~v0 v1 v2 ~v3 = du_punchOut_432 v1 v2
du_punchOut_432 :: T_Fin_6 -> T_Fin_6 -> T_Fin_6
du_punchOut_432 v0 v1
  = case coe v0 of
      C_zero_10
        -> case coe v1 of
             C_zero_10 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10
             C_suc_16 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      C_suc_16 v3
        -> case coe v1 of
             C_zero_10 -> coe C_zero_10
             C_suc_16 v5 -> coe C_suc_16 (coe du_punchOut_432 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.punchIn
d_punchIn_452 :: Integer -> T_Fin_6 -> T_Fin_6 -> T_Fin_6
d_punchIn_452 ~v0 v1 v2 = du_punchIn_452 v1 v2
du_punchIn_452 :: T_Fin_6 -> T_Fin_6 -> T_Fin_6
du_punchIn_452 v0 v1
  = case coe v0 of
      C_zero_10 -> coe C_suc_16 v1
      C_suc_16 v3
        -> case coe v1 of
             C_zero_10 -> coe C_zero_10
             C_suc_16 v5 -> coe C_suc_16 (coe du_punchIn_452 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.pinch
d_pinch_464 :: Integer -> T_Fin_6 -> T_Fin_6 -> T_Fin_6
d_pinch_464 ~v0 v1 v2 = du_pinch_464 v1 v2
du_pinch_464 :: T_Fin_6 -> T_Fin_6 -> T_Fin_6
du_pinch_464 v0 v1
  = case coe v1 of
      C_zero_10 -> coe C_zero_10
      C_suc_16 v3
        -> case coe v0 of
             C_zero_10 -> coe v3
             C_suc_16 v5 -> coe C_suc_16 (coe du_pinch_464 (coe v5) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base._≤_
d__'8804'__480 :: Integer -> T_Fin_6 -> T_Fin_6 -> ()
d__'8804'__480 = erased
-- Data.Fin.Base._≥_
d__'8805'__484 :: Integer -> T_Fin_6 -> T_Fin_6 -> ()
d__'8805'__484 = erased
-- Data.Fin.Base._<_
d__'60'__488 :: Integer -> T_Fin_6 -> T_Fin_6 -> ()
d__'60'__488 = erased
-- Data.Fin.Base._>_
d__'62'__492 :: Integer -> T_Fin_6 -> T_Fin_6 -> ()
d__'62'__492 = erased
-- Data.Fin.Base._≺_
d__'8826'__494 a0 a1 = ()
newtype T__'8826'__494 = C__'8827'toℕ__500 T_Fin_6
-- Data.Fin.Base.Ordering
d_Ordering_504 a0 a1 a2 = ()
data T_Ordering_504
  = C_less_512 T_Fin_6 | C_equal_516 | C_greater_522 T_Fin_6
-- Data.Fin.Base.compare
d_compare_530 :: Integer -> T_Fin_6 -> T_Fin_6 -> T_Ordering_504
d_compare_530 ~v0 v1 v2 = du_compare_530 v1 v2
du_compare_530 :: T_Fin_6 -> T_Fin_6 -> T_Ordering_504
du_compare_530 v0 v1
  = case coe v0 of
      C_zero_10
        -> case coe v1 of
             C_zero_10 -> coe C_equal_516
             C_suc_16 v4 -> coe C_less_512 (coe C_zero_10)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_suc_16 v3
        -> case coe v1 of
             C_zero_10 -> coe C_greater_522 (coe C_zero_10)
             C_suc_16 v5
               -> let v6 = coe du_compare_530 (coe v3) (coe v5) in
                  case coe v6 of
                    C_less_512 v8 -> coe C_less_512 (coe C_suc_16 v8)
                    C_equal_516 -> coe C_equal_516
                    C_greater_522 v8 -> coe C_greater_522 (coe C_suc_16 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Fin.Base.fromℕ≤
d_fromℕ'8804'_566 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> T_Fin_6
d_fromℕ'8804'_566 v0 v1 v2 = coe du_fromℕ'60'_66 v0
-- Data.Fin.Base.fromℕ≤″
d_fromℕ'8804''8243'_568 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804''8243'__188 -> T_Fin_6
d_fromℕ'8804''8243'_568 v0 v1 v2 = coe du_fromℕ'60''8243'_82 v0 v2
