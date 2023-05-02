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

module MAlonzo.Code.Data.List.NonEmpty.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Base

-- Data.List.NonEmpty.Base.List⁺
d_List'8314'_24 a0 a1 = ()
data T_List'8314'_24 = C__'8759'__36 AgdaAny [AgdaAny]
-- Data.List.NonEmpty.Base.List⁺.head
d_head_32 :: T_List'8314'_24 -> AgdaAny
d_head_32 v0
  = case coe v0 of
      C__'8759'__36 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.List⁺.tail
d_tail_34 :: T_List'8314'_24 -> [AgdaAny]
d_tail_34 v0
  = case coe v0 of
      C__'8759'__36 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.uncons
d_uncons_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncons_38 ~v0 ~v1 v2 = du_uncons_38 v2
du_uncons_38 ::
  T_List'8314'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncons_38 v0
  = case coe v0 of
      C__'8759'__36 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.[_]
d_'91'_'93'_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> T_List'8314'_24
d_'91'_'93'_44 ~v0 ~v1 v2 = du_'91'_'93'_44 v2
du_'91'_'93'_44 :: AgdaAny -> T_List'8314'_24
du_'91'_'93'_44 v0
  = coe
      C__'8759'__36 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.NonEmpty.Base._∷⁺_
d__'8759''8314'__48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> T_List'8314'_24 -> T_List'8314'_24
d__'8759''8314'__48 ~v0 ~v1 v2 v3 = du__'8759''8314'__48 v2 v3
du__'8759''8314'__48 ::
  AgdaAny -> T_List'8314'_24 -> T_List'8314'_24
du__'8759''8314'__48 v0 v1
  = case coe v1 of
      C__'8759'__36 v2 v3
        -> coe
             C__'8759'__36 (coe v0)
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.length
d_length_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> Integer
d_length_56 ~v0 ~v1 v2 = du_length_56 v2
du_length_56 :: T_List'8314'_24 -> Integer
du_length_56 v0
  = case coe v0 of
      C__'8759'__36 v1 v2
        -> coe
             addInt (coe (1 :: Integer))
             (coe MAlonzo.Code.Data.List.Base.du_length_296 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.toList
d_toList_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> [AgdaAny]
d_toList_62 ~v0 ~v1 v2 = du_toList_62 v2
du_toList_62 :: T_List'8314'_24 -> [AgdaAny]
du_toList_62 v0
  = case coe v0 of
      C__'8759'__36 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.fromList
d_fromList_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Maybe T_List'8314'_24
d_fromList_68 ~v0 ~v1 v2 = du_fromList_68 v2
du_fromList_68 :: [AgdaAny] -> Maybe T_List'8314'_24
du_fromList_68 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe C__'8759'__36 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.fromVec
d_fromVec_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> T_List'8314'_24
d_fromVec_76 ~v0 ~v1 ~v2 v3 = du_fromVec_76 v3
du_fromVec_76 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_24 -> T_List'8314'_24
du_fromVec_76 v0
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v2 v3
        -> coe
             C__'8759'__36 (coe v2)
             (coe MAlonzo.Code.Data.Vec.Base.du_toList_652 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.toVec
d_toVec_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24
d_toVec_84 ~v0 ~v1 v2 = du_toVec_84 v2
du_toVec_84 ::
  T_List'8314'_24 -> MAlonzo.Code.Data.Vec.Base.T_Vec_24
du_toVec_84 v0
  = case coe v0 of
      C__'8759'__36 v1 v2
        -> coe
             MAlonzo.Code.Data.Vec.Base.C__'8759'__36 v1
             (coe MAlonzo.Code.Data.Vec.Base.du_fromList_660 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.lift
d_lift_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T_Vec_24 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_List'8314'_24 -> T_List'8314'_24
d_lift_94 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_lift_94 v4 v5
du_lift_94 ::
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T_Vec_24 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_List'8314'_24 -> T_List'8314'_24
du_lift_94 v0 v1
  = coe
      du_fromVec_76
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe
            v0
            (coe
               MAlonzo.Code.Data.List.Base.du_foldr_240
               (let v2 = \ v2 -> addInt (coe (1 :: Integer)) (coe v2) in
                coe (\ v3 -> v2))
               (coe (0 :: Integer)) (coe d_tail_34 (coe v1)))
            (coe du_toVec_84 (coe v1))))
-- Data.List.NonEmpty.Base.map
d_map_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> T_List'8314'_24 -> T_List'8314'_24
d_map_100 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_map_100 v4 v5
du_map_100 ::
  (AgdaAny -> AgdaAny) -> T_List'8314'_24 -> T_List'8314'_24
du_map_100 v0 v1
  = case coe v1 of
      C__'8759'__36 v2 v3
        -> coe
             C__'8759'__36 (coe v0 v2)
             (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.replicate
d_replicate_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny -> T_List'8314'_24
d_replicate_110 ~v0 ~v1 v2 ~v3 v4 = du_replicate_110 v2 v4
du_replicate_110 :: Integer -> AgdaAny -> T_List'8314'_24
du_replicate_110 v0 v1
  = coe
      C__'8759'__36 (coe v1)
      (coe
         MAlonzo.Code.Data.List.Base.du_replicate_306
         (coe MAlonzo.Code.Data.Nat.Base.d_pred_94 (coe v0)) (coe v1))
-- Data.List.NonEmpty.Base.foldr
d_foldr_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_List'8314'_24 -> AgdaAny
d_foldr_118 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldr_118 v4 v5 v6
du_foldr_118 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_List'8314'_24 -> AgdaAny
du_foldr_118 v0 v1 v2
  = case coe v2 of
      C__'8759'__36 v3 v4
        -> coe du_foldr'8242'_136 (coe v0) (coe v1) (coe v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base._.foldr′
d_foldr'8242'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldr'8242'_136 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 v9
  = du_foldr'8242'_136 v4 v5 v8 v9
du_foldr'8242'_136 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldr'8242'_136 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v1 v2
      (:) v4 v5
        -> coe
             v0 v2 (coe du_foldr'8242'_136 (coe v0) (coe v1) (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.foldr₁
d_foldr'8321'_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T_List'8314'_24 -> AgdaAny
d_foldr'8321'_146 ~v0 ~v1 v2 = du_foldr'8321'_146 v2
du_foldr'8321'_146 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_List'8314'_24 -> AgdaAny
du_foldr'8321'_146 v0
  = coe du_foldr_118 (coe v0) (coe (\ v1 -> v1))
-- Data.List.NonEmpty.Base.foldl
d_foldl_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_List'8314'_24 -> AgdaAny
d_foldl_150 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldl_150 v4 v5 v6
du_foldl_150 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T_List'8314'_24 -> AgdaAny
du_foldl_150 v0 v1 v2
  = case coe v2 of
      C__'8759'__36 v3 v4
        -> coe
             MAlonzo.Code.Data.List.Base.du_foldl_254 (coe v0) (coe v1 v3)
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.foldl₁
d_foldl'8321'_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T_List'8314'_24 -> AgdaAny
d_foldl'8321'_160 ~v0 ~v1 v2 = du_foldl'8321'_160 v2
du_foldl'8321'_160 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_List'8314'_24 -> AgdaAny
du_foldl'8321'_160 v0
  = coe du_foldl_150 (coe v0) (coe (\ v1 -> v1))
-- Data.List.NonEmpty.Base._⁺++⁺_
d__'8314''43''43''8314'__164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
d__'8314''43''43''8314'__164 ~v0 ~v1 v2 v3
  = du__'8314''43''43''8314'__164 v2 v3
du__'8314''43''43''8314'__164 ::
  T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
du__'8314''43''43''8314'__164 v0 v1
  = case coe v0 of
      C__'8759'__36 v2 v3
        -> case coe v1 of
             C__'8759'__36 v4 v5
               -> coe
                    C__'8759'__36 (coe v2)
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__60 (coe v3)
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4) (coe v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base._⁺++_
d__'8314''43''43'__174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> [AgdaAny] -> T_List'8314'_24
d__'8314''43''43'__174 ~v0 ~v1 v2 v3
  = du__'8314''43''43'__174 v2 v3
du__'8314''43''43'__174 ::
  T_List'8314'_24 -> [AgdaAny] -> T_List'8314'_24
du__'8314''43''43'__174 v0 v1
  = case coe v0 of
      C__'8759'__36 v2 v3
        -> coe
             C__'8759'__36 (coe v2)
             (coe
                MAlonzo.Code.Data.List.Base.du__'43''43'__60 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base._++⁺_
d__'43''43''8314'__182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> T_List'8314'_24 -> T_List'8314'_24
d__'43''43''8314'__182 ~v0 ~v1 v2 v3
  = du__'43''43''8314'__182 v2 v3
du__'43''43''8314'__182 ::
  [AgdaAny] -> T_List'8314'_24 -> T_List'8314'_24
du__'43''43''8314'__182 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_240 (coe du__'8759''8314'__48)
      (coe v1) (coe v0)
-- Data.List.NonEmpty.Base.concat
d_concat_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> T_List'8314'_24
d_concat_188 ~v0 ~v1 v2 = du_concat_188 v2
du_concat_188 :: T_List'8314'_24 -> T_List'8314'_24
du_concat_188 v0
  = case coe v0 of
      C__'8759'__36 v1 v2
        -> coe
             du__'8314''43''43'__174 (coe v1)
             (coe
                MAlonzo.Code.Data.List.Base.du_concat_268
                (coe
                   MAlonzo.Code.Data.List.Base.du_map_22 (coe du_toList_62) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.concatMap
d_concatMap_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> T_List'8314'_24) -> T_List'8314'_24 -> T_List'8314'_24
d_concatMap_194 ~v0 ~v1 ~v2 ~v3 v4 = du_concatMap_194 v4
du_concatMap_194 ::
  (AgdaAny -> T_List'8314'_24) -> T_List'8314'_24 -> T_List'8314'_24
du_concatMap_194 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__226
      (coe du_concat_188) (coe du_map_100 (coe v0))
-- Data.List.NonEmpty.Base.reverse
d_reverse_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> T_List'8314'_24
d_reverse_198 ~v0 ~v1 = du_reverse_198
du_reverse_198 :: T_List'8314'_24 -> T_List'8314'_24
du_reverse_198
  = coe
      du_lift_94
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__226
              (coe MAlonzo.Code.Data.Product.du_'45''44'__112 (coe v0))
              (coe MAlonzo.Code.Data.Vec.Base.du_reverse_668)))
-- Data.List.NonEmpty.Base.alignWith
d_alignWith_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
d_alignWith_200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_alignWith_200 v6 v7 v8
du_alignWith_200 ::
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
du_alignWith_200 v0 v1 v2
  = case coe v1 of
      C__'8759'__36 v3 v4
        -> case coe v2 of
             C__'8759'__36 v5 v6
               -> coe
                    C__'8759'__36
                    (coe
                       v0 (coe MAlonzo.Code.Data.These.Base.C_these_52 (coe v3) (coe v5)))
                    (coe
                       MAlonzo.Code.Data.List.Base.du_alignWith_112 (coe v0) (coe v4)
                       (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.zipWith
d_zipWith_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
d_zipWith_212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_zipWith_212 v6 v7 v8
du_zipWith_212 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
du_zipWith_212 v0 v1 v2
  = case coe v1 of
      C__'8759'__36 v3 v4
        -> case coe v2 of
             C__'8759'__36 v5 v6
               -> coe
                    C__'8759'__36 (coe v0 v3 v5)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_zipWith_132 (coe v0) (coe v4)
                       (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.unalignWith
d_unalignWith_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  T_List'8314'_24 -> MAlonzo.Code.Data.These.Base.T_These_38
d_unalignWith_224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_unalignWith_224 v6
du_unalignWith_224 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  T_List'8314'_24 -> MAlonzo.Code.Data.These.Base.T_These_38
du_unalignWith_224 v0
  = coe
      du_foldr_118
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__226
         (coe
            MAlonzo.Code.Data.These.Base.du_alignWith_130 (coe du_mcons_236)
            (coe du_mcons_236))
         (coe v0))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__226
         (coe
            MAlonzo.Code.Data.These.Base.du_map_60 (coe du_'91'_'93'_44)
            (coe du_'91'_'93'_44))
         (coe v0))
-- Data.List.NonEmpty.Base._.mcons
d_mcons_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> MAlonzo.Code.Data.These.Base.T_These_38 -> T_List'8314'_24
d_mcons_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_mcons_236
du_mcons_236 ::
  MAlonzo.Code.Data.These.Base.T_These_38 -> T_List'8314'_24
du_mcons_236
  = coe
      MAlonzo.Code.Data.These.Base.du_fold_92 (coe du_'91'_'93'_44)
      (coe (\ v0 -> v0)) (coe du__'8759''8314'__48)
-- Data.List.NonEmpty.Base.unzipWith
d_unzipWith_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_List'8314'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzipWith_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_unzipWith_238 v6 v7
du_unzipWith_238 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  T_List'8314'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzipWith_238 v0 v1
  = case coe v1 of
      C__'8759'__36 v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du_zip_218 (coe C__'8759'__36)
             (coe (\ v4 v5 -> coe C__'8759'__36)) (coe v0 v2)
             (coe
                MAlonzo.Code.Data.List.Base.du_unzipWith_194 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.align
d_align_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
d_align_246 ~v0 ~v1 ~v2 ~v3 = du_align_246
du_align_246 ::
  T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
du_align_246 = coe du_alignWith_200 (coe (\ v0 -> v0))
-- Data.List.NonEmpty.Base.zip
d_zip_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
d_zip_248 ~v0 ~v1 ~v2 ~v3 = du_zip_248
du_zip_248 :: T_List'8314'_24 -> T_List'8314'_24 -> T_List'8314'_24
du_zip_248
  = coe
      du_zipWith_212 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.List.NonEmpty.Base.unalign
d_unalign_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> MAlonzo.Code.Data.These.Base.T_These_38
d_unalign_250 ~v0 ~v1 ~v2 ~v3 = du_unalign_250
du_unalign_250 ::
  T_List'8314'_24 -> MAlonzo.Code.Data.These.Base.T_These_38
du_unalign_250 = coe du_unalignWith_224 (coe (\ v0 -> v0))
-- Data.List.NonEmpty.Base.unzip
d_unzip_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzip_252 ~v0 ~v1 ~v2 ~v3 = du_unzip_252
du_unzip_252 ::
  T_List'8314'_24 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzip_252 = coe du_unzipWith_238 (coe (\ v0 -> v0))
-- Data.List.NonEmpty.Base._∷ʳ_
d__'8759''691'__254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> AgdaAny -> T_List'8314'_24
d__'8759''691'__254 ~v0 ~v1 v2 v3 = du__'8759''691'__254 v2 v3
du__'8759''691'__254 :: [AgdaAny] -> AgdaAny -> T_List'8314'_24
du__'8759''691'__254 v0 v1
  = case coe v0 of
      [] -> coe du_'91'_'93'_44 (coe v1)
      (:) v2 v3
        -> coe
             C__'8759'__36 (coe v2)
             (coe
                MAlonzo.Code.Data.List.Base.du__'8759''691'__808 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base._⁺∷ʳ_
d__'8314''8759''691'__264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> AgdaAny -> T_List'8314'_24
d__'8314''8759''691'__264 ~v0 ~v1 v2 v3
  = du__'8314''8759''691'__264 v2 v3
du__'8314''8759''691'__264 ::
  T_List'8314'_24 -> AgdaAny -> T_List'8314'_24
du__'8314''8759''691'__264 v0 v1
  = coe du__'8759''691'__254 (coe du_toList_62 (coe v0)) (coe v1)
-- Data.List.NonEmpty.Base.SnocView
d_SnocView_274 a0 a1 a2 = ()
data T_SnocView_274 = C__'8759''691''8242'__282 [AgdaAny] AgdaAny
-- Data.List.NonEmpty.Base.snocView
d_snocView_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> T_SnocView_274
d_snocView_286 ~v0 ~v1 v2 = du_snocView_286 v2
du_snocView_286 :: T_List'8314'_24 -> T_SnocView_274
du_snocView_286 v0
  = case coe v0 of
      C__'8759'__36 v1 v2
        -> let v3
                 = coe MAlonzo.Code.Data.List.Base.du_initLast_842 (coe v2) in
           case coe v3 of
             MAlonzo.Code.Data.List.Base.C_'91''93'_832
               -> coe
                    C__'8759''691''8242'__282
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
             MAlonzo.Code.Data.List.Base.C__'8759''691''8242'__838 v4 v5
               -> coe
                    C__'8759''691''8242'__282
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v4))
                    (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.Base.last
d_last_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_List'8314'_24 -> AgdaAny
d_last_304 ~v0 ~v1 v2 = du_last_304 v2
du_last_304 :: T_List'8314'_24 -> AgdaAny
du_last_304 v0
  = let v1 = coe du_snocView_286 (coe v0) in
    case coe v1 of
      C__'8759''691''8242'__282 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
