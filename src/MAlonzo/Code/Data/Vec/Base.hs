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

module MAlonzo.Code.Data.Vec.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Nullary

-- Data.Vec.Base.Vec
d_Vec_24 a0 a1 a2 = ()
data T_Vec_24 = C_'91''93'_28 | C__'8759'__36 AgdaAny T_Vec_24
-- Data.Vec.Base._[_]=_
d__'91'_'93''61'__44 a0 a1 a2 a3 a4 a5 = ()
data T__'91'_'93''61'__44
  = C_here_54 | C_there_68 T__'91'_'93''61'__44
-- Data.Vec.Base.length
d_length_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> Integer
d_length_72 ~v0 ~v1 v2 ~v3 = du_length_72 v2
du_length_72 :: Integer -> Integer
du_length_72 v0 = coe v0
-- Data.Vec.Base.head
d_head_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> AgdaAny
d_head_78 ~v0 ~v1 ~v2 v3 = du_head_78 v3
du_head_78 :: T_Vec_24 -> AgdaAny
du_head_78 v0
  = case coe v0 of
      C__'8759'__36 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.tail
d_tail_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> T_Vec_24
d_tail_86 ~v0 ~v1 ~v2 v3 = du_tail_86 v3
du_tail_86 :: T_Vec_24 -> T_Vec_24
du_tail_86 v0
  = case coe v0 of
      C__'8759'__36 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.lookup
d_lookup_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  T_Vec_24 -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny
d_lookup_94 ~v0 ~v1 ~v2 v3 v4 = du_lookup_94 v3 v4
du_lookup_94 ::
  T_Vec_24 -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny
du_lookup_94 v0 v1
  = case coe v0 of
      C__'8759'__36 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10 -> coe v3
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> coe du_lookup_94 (coe v4) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.insert
d_insert_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  T_Vec_24 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny -> T_Vec_24
d_insert_108 ~v0 ~v1 ~v2 v3 v4 v5 = du_insert_108 v3 v4 v5
du_insert_108 ::
  T_Vec_24 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny -> T_Vec_24
du_insert_108 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10 -> coe C__'8759'__36 v2 v0
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
        -> case coe v0 of
             C__'8759'__36 v6 v7
               -> coe
                    C__'8759'__36 v6 (coe du_insert_108 (coe v7) (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.remove
d_remove_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  T_Vec_24 -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> T_Vec_24
d_remove_124 ~v0 ~v1 ~v2 v3 v4 = du_remove_124 v3 v4
du_remove_124 ::
  T_Vec_24 -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> T_Vec_24
du_remove_124 v0 v1
  = case coe v0 of
      C__'8759'__36 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10 -> coe v4
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> case coe v4 of
                    C__'8759'__36 v8 v9
                      -> coe
                           C__'8759'__36 v3
                           (coe du_remove_124 (coe C__'8759'__36 v8 v9) (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.updateAt
d_updateAt_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (AgdaAny -> AgdaAny) -> T_Vec_24 -> T_Vec_24
d_updateAt_138 ~v0 ~v1 ~v2 v3 v4 v5 = du_updateAt_138 v3 v4 v5
du_updateAt_138 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (AgdaAny -> AgdaAny) -> T_Vec_24 -> T_Vec_24
du_updateAt_138 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C_zero_10
        -> case coe v2 of
             C__'8759'__36 v5 v6 -> coe C__'8759'__36 (coe v1 v5) v6
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
        -> case coe v2 of
             C__'8759'__36 v6 v7
               -> coe
                    C__'8759'__36 v6 (coe du_updateAt_138 (coe v4) (coe v1) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base._[_]%=_
d__'91'_'93''37''61'__156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  T_Vec_24 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (AgdaAny -> AgdaAny) -> T_Vec_24
d__'91'_'93''37''61'__156 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'91'_'93''37''61'__156 v3 v4 v5
du__'91'_'93''37''61'__156 ::
  T_Vec_24 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (AgdaAny -> AgdaAny) -> T_Vec_24
du__'91'_'93''37''61'__156 v0 v1 v2
  = coe du_updateAt_138 (coe v1) (coe v2) (coe v0)
-- Data.Vec.Base._[_]≔_
d__'91'_'93''8788'__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  T_Vec_24 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny -> T_Vec_24
d__'91'_'93''8788'__166 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'91'_'93''8788'__166 v3 v4 v5
du__'91'_'93''8788'__166 ::
  T_Vec_24 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny -> T_Vec_24
du__'91'_'93''8788'__166 v0 v1 v2
  = coe
      du__'91'_'93''37''61'__156 (coe v0) (coe v1) (coe (\ v3 -> v2))
-- Data.Vec.Base.map
d_map_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> (AgdaAny -> AgdaAny) -> T_Vec_24 -> T_Vec_24
d_map_176 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_map_176 v5 v6
du_map_176 :: (AgdaAny -> AgdaAny) -> T_Vec_24 -> T_Vec_24
du_map_176 v0 v1
  = case coe v1 of
      C_'91''93'_28 -> coe v1
      C__'8759'__36 v3 v4
        -> coe C__'8759'__36 (coe v0 v3) (coe du_map_176 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base._++_
d__'43''43'__190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d__'43''43'__190 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'43''43'__190 v4 v5
du__'43''43'__190 :: T_Vec_24 -> T_Vec_24 -> T_Vec_24
du__'43''43'__190 v0 v1
  = case coe v0 of
      C_'91''93'_28 -> coe v1
      C__'8759'__36 v3 v4
        -> coe C__'8759'__36 v3 (coe du__'43''43'__190 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.concat
d_concat_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24
d_concat_204 ~v0 ~v1 ~v2 ~v3 v4 = du_concat_204 v4
du_concat_204 :: T_Vec_24 -> T_Vec_24
du_concat_204 v0
  = case coe v0 of
      C_'91''93'_28 -> coe v0
      C__'8759'__36 v2 v3
        -> coe du__'43''43'__190 (coe v2) (coe du_concat_204 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.alignWith
d_alignWith_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  T_Vec_24 -> T_Vec_24 -> T_Vec_24
d_alignWith_214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_alignWith_214 v8 v9 v10
du_alignWith_214 ::
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  T_Vec_24 -> T_Vec_24 -> T_Vec_24
du_alignWith_214 v0 v1 v2
  = case coe v1 of
      C_'91''93'_28
        -> coe
             du_map_176
             (coe
                MAlonzo.Code.Function.Base.du__'8728''8242'__226 (coe v0)
                (coe MAlonzo.Code.Data.These.Base.C_that_50))
             (coe v2)
      C__'8759'__36 v4 v5
        -> case coe v2 of
             C_'91''93'_28
               -> coe
                    du_map_176
                    (coe
                       MAlonzo.Code.Function.Base.du__'8728''8242'__226 (coe v0)
                       (coe MAlonzo.Code.Data.These.Base.C_this_48))
                    (coe C__'8759'__36 v4 v5)
             C__'8759'__36 v7 v8
               -> coe
                    C__'8759'__36
                    (coe
                       v0 (coe MAlonzo.Code.Data.These.Base.C_these_52 (coe v4) (coe v7)))
                    (coe du_alignWith_214 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.restrictWith
d_restrictWith_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d_restrictWith_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_restrictWith_238 v8 v9 v10
du_restrictWith_238 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
du_restrictWith_238 v0 v1 v2
  = case coe v1 of
      C_'91''93'_28 -> coe v1
      C__'8759'__36 v4 v5
        -> case coe v2 of
             C_'91''93'_28 -> coe v2
             C__'8759'__36 v7 v8
               -> coe
                    C__'8759'__36 (coe v0 v4 v7)
                    (coe du_restrictWith_238 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.zipWith
d_zipWith_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d_zipWith_258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_zipWith_258 v7 v8 v9
du_zipWith_258 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
du_zipWith_258 v0 v1 v2
  = case coe v1 of
      C_'91''93'_28 -> coe seq (coe v2) (coe v1)
      C__'8759'__36 v4 v5
        -> case coe v2 of
             C__'8759'__36 v7 v8
               -> coe
                    C__'8759'__36 (coe v0 v4 v7)
                    (coe du_zipWith_258 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.unzipWith
d_unzipWith_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzipWith_274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_unzipWith_274 v7 v8
du_unzipWith_274 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzipWith_274 v0 v1
  = case coe v1 of
      C_'91''93'_28
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      C__'8759'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.Product.du_zip_218 (coe C__'8759'__36)
             (coe (\ v5 v6 -> coe C__'8759'__36)) (coe v0 v3)
             (coe du_unzipWith_274 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.align
d_align_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d_align_288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_align_288
du_align_288 :: T_Vec_24 -> T_Vec_24 -> T_Vec_24
du_align_288 = coe du_alignWith_214 (coe (\ v0 -> v0))
-- Data.Vec.Base.restrict
d_restrict_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d_restrict_294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_restrict_294
du_restrict_294 :: T_Vec_24 -> T_Vec_24 -> T_Vec_24
du_restrict_294
  = coe
      du_restrictWith_238
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.Vec.Base.zip
d_zip_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d_zip_298 ~v0 ~v1 ~v2 ~v3 ~v4 = du_zip_298
du_zip_298 :: T_Vec_24 -> T_Vec_24 -> T_Vec_24
du_zip_298
  = coe
      du_zipWith_258 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.Vec.Base.unzip
d_unzip_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzip_302 ~v0 ~v1 ~v2 ~v3 ~v4 = du_unzip_302
du_unzip_302 :: T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzip_302 = coe du_unzipWith_274 (coe (\ v0 -> v0))
-- Data.Vec.Base._⋎_
d__'8910'__308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d__'8910'__308 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'8910'__308 v4 v5
du__'8910'__308 :: T_Vec_24 -> T_Vec_24 -> T_Vec_24
du__'8910'__308 v0 v1
  = case coe v0 of
      C_'91''93'_28 -> coe v1
      C__'8759'__36 v3 v4
        -> coe C__'8759'__36 v3 (coe du__'8910'__308 (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base._⊛_
d__'8859'__320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d__'8859'__320 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du__'8859'__320 v5 v6
du__'8859'__320 :: T_Vec_24 -> T_Vec_24 -> T_Vec_24
du__'8859'__320 v0 v1
  = case coe v0 of
      C_'91''93'_28 -> coe seq (coe v1) (coe v0)
      C__'8759'__36 v3 v4
        -> case coe v1 of
             C__'8759'__36 v6 v7
               -> coe
                    C__'8759'__36 (coe v3 v6) (coe du__'8859'__320 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base._>>=_
d__'62''62''61'__334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer -> Integer -> T_Vec_24 -> (AgdaAny -> T_Vec_24) -> T_Vec_24
d__'62''62''61'__334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'62''62''61'__334 v6 v7
du__'62''62''61'__334 ::
  T_Vec_24 -> (AgdaAny -> T_Vec_24) -> T_Vec_24
du__'62''62''61'__334 v0 v1
  = coe du_concat_204 (coe du_map_176 (coe v1) (coe v0))
-- Data.Vec.Base._⊛*_
d__'8859''42'__344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d__'8859''42'__344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'8859''42'__344 v6 v7
du__'8859''42'__344 :: T_Vec_24 -> T_Vec_24 -> T_Vec_24
du__'8859''42'__344 v0 v1
  = coe
      du__'62''62''61'__334 (coe v0)
      (coe (\ v2 -> coe du_map_176 (coe v2) (coe v1)))
-- Data.Vec.Base.allPairs
d_allPairs_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24 -> T_Vec_24
d_allPairs_356 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_allPairs_356 v6 v7
du_allPairs_356 :: T_Vec_24 -> T_Vec_24 -> T_Vec_24
du_allPairs_356 v0 v1
  = coe
      du__'8859''42'__344
      (coe
         du_map_176 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
         (coe v0))
      (coe v1)
-- Data.Vec.Base.foldr
d_foldr_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_Vec_24 -> AgdaAny
d_foldr_374 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 = du_foldr_374 v4 v5 v6 v7
du_foldr_374 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_Vec_24 -> AgdaAny
du_foldr_374 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_28 -> coe v2
      C__'8759'__36 v5 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe v1 v7 v5 (coe du_foldr_374 (coe v7) (coe v1) (coe v2) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.foldr₁
d_foldr'8321'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T_Vec_24 -> AgdaAny
d_foldr'8321'_394 ~v0 ~v1 ~v2 v3 v4 = du_foldr'8321'_394 v3 v4
du_foldr'8321'_394 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_Vec_24 -> AgdaAny
du_foldr'8321'_394 v0 v1
  = case coe v1 of
      C__'8759'__36 v3 v4
        -> case coe v4 of
             C_'91''93'_28 -> coe v3
             C__'8759'__36 v6 v7
               -> coe
                    v0 v3 (coe du_foldr'8321'_394 (coe v0) (coe C__'8759'__36 v6 v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.foldl
d_foldl_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_Vec_24 -> AgdaAny
d_foldl_420 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 = du_foldl_420 v5 v6 v7
du_foldl_420 ::
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_Vec_24 -> AgdaAny
du_foldl_420 v0 v1 v2
  = case coe v2 of
      C_'91''93'_28 -> coe v1
      C__'8759'__36 v4 v5
        -> coe
             du_foldl_420
             (coe (\ v6 -> coe v0 (addInt (coe (1 :: Integer)) (coe v6))))
             (coe v0 (0 :: Integer) v1 v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.foldl₁
d_foldl'8321'_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T_Vec_24 -> AgdaAny
d_foldl'8321'_442 ~v0 ~v1 ~v2 v3 v4 = du_foldl'8321'_442 v3 v4
du_foldl'8321'_442 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_Vec_24 -> AgdaAny
du_foldl'8321'_442 v0 v1
  = case coe v1 of
      C__'8759'__36 v3 v4
        -> coe du_foldl_420 (coe (\ v5 -> v0)) (coe v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.sum
d_sum_452 :: Integer -> T_Vec_24 -> Integer
d_sum_452 v0
  = coe
      du_foldr_374 (coe v0) (coe (\ v1 -> addInt)) (coe (0 :: Integer))
-- Data.Vec.Base.count
d_count_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Integer -> T_Vec_24 -> Integer
d_count_458 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_count_458 v4 v6
du_count_458 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  T_Vec_24 -> Integer
du_count_458 v0 v1
  = case coe v1 of
      C_'91''93'_28 -> coe (0 :: Integer)
      C__'8759'__36 v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v3) in
           if coe v5
             then coe
                    addInt (coe (1 :: Integer)) (coe du_count_458 (coe v0) (coe v4))
             else coe du_count_458 (coe v0) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.[_]
d_'91'_'93'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> T_Vec_24
d_'91'_'93'_484 ~v0 ~v1 v2 = du_'91'_'93'_484 v2
du_'91'_'93'_484 :: AgdaAny -> T_Vec_24
du_'91'_'93'_484 v0 = coe C__'8759'__36 v0 (coe C_'91''93'_28)
-- Data.Vec.Base.replicate
d_replicate_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> AgdaAny -> T_Vec_24
d_replicate_490 ~v0 ~v1 v2 v3 = du_replicate_490 v2 v3
du_replicate_490 :: Integer -> AgdaAny -> T_Vec_24
du_replicate_490 v0 v1
  = case coe v0 of
      0 -> coe C_'91''93'_28
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C__'8759'__36 v1 (coe du_replicate_490 (coe v2) (coe v1))
-- Data.Vec.Base.tabulate
d_tabulate_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) -> T_Vec_24
d_tabulate_500 ~v0 ~v1 v2 v3 = du_tabulate_500 v2 v3
du_tabulate_500 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) -> T_Vec_24
du_tabulate_500 v0 v1
  = case coe v0 of
      0 -> coe C_'91''93'_28
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             C__'8759'__36 (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10))
             (coe
                du_tabulate_500 (coe v2)
                (coe
                   (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3))))
-- Data.Vec.Base.allFin
d_allFin_510 :: Integer -> T_Vec_24
d_allFin_510 v0 = coe du_tabulate_500 (coe v0) (coe (\ v1 -> v1))
-- Data.Vec.Base.splitAt
d_splitAt_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_splitAt_522 ~v0 ~v1 v2 ~v3 v4 = du_splitAt_522 v2 v4
du_splitAt_522 ::
  Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_splitAt_522 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe C_'91''93'_28)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C__'8759'__36 v4 v5
               -> let v6 = coe du_splitAt_522 (coe v2) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C__'8759'__36 v4 v7)
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) erased)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.take
d_take_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24
d_take_548 ~v0 ~v1 v2 ~v3 v4 = du_take_548 v2 v4
du_take_548 :: Integer -> T_Vec_24 -> T_Vec_24
du_take_548 v0 v1
  = let v2 = coe du_splitAt_522 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe seq (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.drop
d_drop_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24
d_drop_568 ~v0 ~v1 v2 ~v3 v4 = du_drop_568 v2 v4
du_drop_568 :: Integer -> T_Vec_24 -> T_Vec_24
du_drop_568 v0 v1
  = let v2 = coe du_splitAt_522 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.group
d_group_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_group_592 ~v0 ~v1 v2 v3 v4 = du_group_592 v2 v3 v4
du_group_592 ::
  Integer ->
  Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_group_592 v0 v1 v2
  = case coe v0 of
      0 -> coe
             seq (coe v2)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe C_'91''93'_28)
                erased)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           let v4 = coe du_splitAt_522 (coe v1) (coe v2) in
           case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> let v9 = coe du_group_592 (coe v3) (coe v1) (coe v7) in
                         case coe v9 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C__'8759'__36 v5 v10) erased
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.split
d_split_628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_split_628 ~v0 ~v1 ~v2 v3 = du_split_628 v3
du_split_628 :: T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_split_628 v0
  = case coe v0 of
      C_'91''93'_28
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v0)
      C__'8759'__36 v2 v3
        -> case coe v3 of
             C_'91''93'_28
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C__'8759'__36 v2 v3) (coe v3)
             C__'8759'__36 v5 v6
               -> coe
                    MAlonzo.Code.Data.Product.du_map_148 (coe C__'8759'__36 (coe v2))
                    (coe (\ v7 -> coe C__'8759'__36 (coe v5)))
                    (coe du_split_628 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.uncons
d_uncons_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncons_644 ~v0 ~v1 ~v2 v3 = du_uncons_644 v3
du_uncons_644 :: T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncons_644 v0
  = case coe v0 of
      C__'8759'__36 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.toList
d_toList_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> [AgdaAny]
d_toList_652 ~v0 ~v1 ~v2 v3 = du_toList_652 v3
du_toList_652 :: T_Vec_24 -> [AgdaAny]
du_toList_652 v0
  = case coe v0 of
      C_'91''93'_28 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      C__'8759'__36 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe du_toList_652 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.fromList
d_fromList_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> T_Vec_24
d_fromList_660 ~v0 ~v1 v2 = du_fromList_660 v2
du_fromList_660 :: [AgdaAny] -> T_Vec_24
du_fromList_660 v0
  = case coe v0 of
      [] -> coe C_'91''93'_28
      (:) v1 v2 -> coe C__'8759'__36 v1 (coe du_fromList_660 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.reverse
d_reverse_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> T_Vec_24
d_reverse_668 ~v0 ~v1 ~v2 = du_reverse_668
du_reverse_668 :: T_Vec_24 -> T_Vec_24
du_reverse_668
  = coe
      du_foldl_420 (coe (\ v0 v1 v2 -> coe C__'8759'__36 v2 v1))
      (coe C_'91''93'_28)
-- Data.Vec.Base._∷ʳ_
d__'8759''691'__678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> AgdaAny -> T_Vec_24
d__'8759''691'__678 ~v0 ~v1 ~v2 v3 v4 = du__'8759''691'__678 v3 v4
du__'8759''691'__678 :: T_Vec_24 -> AgdaAny -> T_Vec_24
du__'8759''691'__678 v0 v1
  = case coe v0 of
      C_'91''93'_28 -> coe du_'91'_'93'_484 (coe v1)
      C__'8759'__36 v3 v4
        -> coe
             C__'8759'__36 v3 (coe du__'8759''691'__678 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.initLast
d_initLast_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_initLast_696 ~v0 ~v1 v2 v3 = du_initLast_696 v2 v3
du_initLast_696 ::
  Integer -> T_Vec_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_initLast_696 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             C__'8759'__36 v3 v4
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe C_'91''93'_28)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C__'8759'__36 v4 v5
               -> let v6 = coe du_initLast_696 (coe v2) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe C__'8759'__36 v4 v7)
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) erased)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.init
d_init_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> T_Vec_24
d_init_720 ~v0 ~v1 v2 v3 = du_init_720 v2 v3
du_init_720 :: Integer -> T_Vec_24 -> T_Vec_24
du_init_720 v0 v1
  = let v2 = coe du_initLast_696 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe seq (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.last
d_last_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> T_Vec_24 -> AgdaAny
d_last_734 ~v0 ~v1 v2 v3 = du_last_734 v2 v3
du_last_734 :: Integer -> T_Vec_24 -> AgdaAny
du_last_734 v0 v1
  = let v2 = coe du_initLast_696 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Base.transpose
d_transpose_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> Integer -> T_Vec_24 -> T_Vec_24
d_transpose_750 ~v0 ~v1 ~v2 v3 v4 = du_transpose_750 v3 v4
du_transpose_750 :: Integer -> T_Vec_24 -> T_Vec_24
du_transpose_750 v0 v1
  = case coe v1 of
      C_'91''93'_28 -> coe du_replicate_490 (coe v0) (coe v1)
      C__'8759'__36 v3 v4
        -> coe
             du__'8859'__320
             (coe
                du__'8859'__320 (coe du_replicate_490 (coe v0) (coe C__'8759'__36))
                (coe v3))
             (coe du_transpose_750 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
