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

module MAlonzo.Code.Data.List.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Unary.Properties

-- Data.List.Base.map
d_map_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_22 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_map_22 v4 v5
du_map_22 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_map_22 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v2)
             (coe du_map_22 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.mapMaybe
d_mapMaybe_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapMaybe_32 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_mapMaybe_32 v4 v5
du_mapMaybe_32 ::
  (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_mapMaybe_32 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                    (coe du_mapMaybe_32 (coe v0) (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe du_mapMaybe_32 (coe v0) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base._++_
d__'43''43'__60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'43''43'__60 ~v0 ~v1 v2 v3 = du__'43''43'__60 v2 v3
du__'43''43'__60 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'43''43'__60 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe du__'43''43'__60 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.intersperse
d_intersperse_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> [AgdaAny] -> [AgdaAny]
d_intersperse_70 ~v0 ~v1 v2 v3 = du_intersperse_70 v2 v3
du_intersperse_70 :: AgdaAny -> [AgdaAny] -> [AgdaAny]
du_intersperse_70 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                        (coe du_intersperse_70 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v1
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.intercalate
d_intercalate_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
d_intercalate_84 ~v0 ~v1 v2 v3 = du_intercalate_84 v2 v3
du_intercalate_84 :: [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
du_intercalate_84 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     du__'43''43'__60 (coe v2)
                     (coe
                        du__'43''43'__60 (coe v0)
                        (coe du_intercalate_84 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v2
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.cartesianProductWith
d_cartesianProductWith_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_cartesianProductWith_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_cartesianProductWith_98 v6 v7 v8
du_cartesianProductWith_98 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_cartesianProductWith_98 v0 v1 v2
  = case coe v1 of
      [] -> coe v1
      (:) v3 v4
        -> coe
             du__'43''43'__60 (coe du_map_22 (coe v0 v3) (coe v2))
             (coe du_cartesianProductWith_98 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.cartesianProduct
d_cartesianProduct_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_cartesianProduct_110 ~v0 ~v1 ~v2 ~v3 = du_cartesianProduct_110
du_cartesianProduct_110 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_cartesianProduct_110
  = coe
      du_cartesianProductWith_98
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.List.Base.alignWith
d_alignWith_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_alignWith_112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_alignWith_112 v6 v7 v8
du_alignWith_112 ::
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_alignWith_112 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             du_map_22
             (coe
                MAlonzo.Code.Function.Base.du__'8728''8242'__226 (coe v0)
                (coe MAlonzo.Code.Data.These.Base.C_that_50))
             (coe v2)
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    du_map_22
                    (coe
                       MAlonzo.Code.Function.Base.du__'8728''8242'__226 (coe v0)
                       (coe MAlonzo.Code.Data.These.Base.C_this_48))
                    (coe v1)
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       v0 (coe MAlonzo.Code.Data.These.Base.C_these_52 (coe v3) (coe v5)))
                    (coe du_alignWith_112 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.zipWith
d_zipWith_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_zipWith_132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_zipWith_132 v6 v7 v8
du_zipWith_132 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_zipWith_132 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    case coe v1 of
      (:) v4 v5
        -> case coe v2 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v4 v6)
                    (coe du_zipWith_132 (coe v0) (coe v5) (coe v7))
             _ -> coe v3
      _ -> coe v3
-- Data.List.Base.unalignWith
d_unalignWith_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unalignWith_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_unalignWith_146 v6 v7
du_unalignWith_146 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unalignWith_146 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.These.Base.C_this_48 v5
               -> coe
                    MAlonzo.Code.Data.Product.du_map'8321'_158
                    (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5))
                    (coe du_unalignWith_146 (coe v0) (coe v3))
             MAlonzo.Code.Data.These.Base.C_that_50 v5
               -> coe
                    MAlonzo.Code.Data.Product.du_map'8322'_170
                    (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5))
                    (coe du_unalignWith_146 (coe v0) (coe v3))
             MAlonzo.Code.Data.These.Base.C_these_52 v5 v6
               -> coe
                    MAlonzo.Code.Data.Product.du_map_148
                    (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5))
                    (coe
                       (\ v7 ->
                          coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)))
                    (coe du_unalignWith_146 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.unzipWith
d_unzipWith_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzipWith_194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_unzipWith_194 v6 v7
du_unzipWith_194 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzipWith_194 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du_zip_218
             (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22)
             (coe (\ v4 v5 -> coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
             (coe v0 v2) (coe du_unzipWith_194 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.partitionSumsWith
d_partitionSumsWith_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partitionSumsWith_204 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_partitionSumsWith_204 v6
du_partitionSumsWith_204 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partitionSumsWith_204 v0
  = coe
      du_unalignWith_146
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__226
         (coe MAlonzo.Code.Data.These.Base.du_fromSum_54) (coe v0))
-- Data.List.Base.align
d_align_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T_These_38]
d_align_208 ~v0 ~v1 ~v2 ~v3 = du_align_208
du_align_208 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T_These_38]
du_align_208 = coe du_alignWith_112 (coe (\ v0 -> v0))
-- Data.List.Base.zip
d_zip_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_zip_210 ~v0 ~v1 ~v2 ~v3 = du_zip_210
du_zip_210 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_zip_210
  = coe
      du_zipWith_132 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.List.Base.unalign
d_unalign_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [MAlonzo.Code.Data.These.Base.T_These_38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unalign_212 ~v0 ~v1 ~v2 ~v3 = du_unalign_212
du_unalign_212 ::
  [MAlonzo.Code.Data.These.Base.T_These_38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unalign_212 = coe du_unalignWith_146 (coe (\ v0 -> v0))
-- Data.List.Base.unzip
d_unzip_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzip_214 ~v0 ~v1 ~v2 ~v3 = du_unzip_214
du_unzip_214 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzip_214 = coe du_unzipWith_194 (coe (\ v0 -> v0))
-- Data.List.Base.partitionSums
d_partitionSums_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partitionSums_216 ~v0 ~v1 ~v2 ~v3 = du_partitionSums_216
du_partitionSums_216 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partitionSums_216
  = coe du_partitionSumsWith_204 (coe (\ v0 -> v0))
-- Data.List.Base.merge
d_merge_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_merge_220 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_merge_220 v4 v5 v6
du_merge_220 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_merge_220 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v2 of
             [] -> coe v1
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                    (coe MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v3 v5))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                       (coe du_merge_220 (coe v0) (coe v4) (coe v2)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                       (coe du_merge_220 (coe v0) (coe v1) (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.foldr
d_foldr_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldr_240 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldr_240 v4 v5 v6
du_foldr_240 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldr_240 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4
        -> coe v0 v3 (coe du_foldr_240 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.foldl
d_foldl_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldl_254 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldl_254 v4 v5 v6
du_foldl_254 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldl_254 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe du_foldl_254 (coe v0) (coe v0 v1 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.concat
d_concat_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [[AgdaAny]] -> [AgdaAny]
d_concat_268 ~v0 ~v1 = du_concat_268
du_concat_268 :: [[AgdaAny]] -> [AgdaAny]
du_concat_268
  = coe
      du_foldr_240 (coe du__'43''43'__60)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base.concatMap
d_concatMap_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap_270 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_concatMap_270 v4 v5
du_concatMap_270 ::
  (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du_concatMap_270 v0 v1
  = coe du_concat_268 (coe du_map_22 (coe v0) (coe v1))
-- Data.List.Base.null
d_null_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> [AgdaAny] -> Bool
d_null_274 ~v0 ~v1 v2 = du_null_274 v2
du_null_274 :: [AgdaAny] -> Bool
du_null_274 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.and
d_and_280 :: [Bool] -> Bool
d_and_280
  = coe
      du_foldr_240 (coe MAlonzo.Code.Data.Bool.Base.d__'8743'__24)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
-- Data.List.Base.or
d_or_282 :: [Bool] -> Bool
d_or_282
  = coe
      du_foldr_240 (coe MAlonzo.Code.Data.Bool.Base.d__'8744'__30)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
-- Data.List.Base.any
d_any_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d_any_284 ~v0 ~v1 v2 v3 = du_any_284 v2 v3
du_any_284 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du_any_284 v0 v1 = coe d_or_282 (coe du_map_22 (coe v0) (coe v1))
-- Data.List.Base.all
d_all_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d_all_288 ~v0 ~v1 v2 v3 = du_all_288 v2 v3
du_all_288 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du_all_288 v0 v1 = coe d_and_280 (coe du_map_22 (coe v0) (coe v1))
-- Data.List.Base.sum
d_sum_292 :: [Integer] -> Integer
d_sum_292 = coe du_foldr_240 (coe addInt) (coe (0 :: Integer))
-- Data.List.Base.product
d_product_294 :: [Integer] -> Integer
d_product_294 = coe du_foldr_240 (coe mulInt) (coe (1 :: Integer))
-- Data.List.Base.length
d_length_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Integer
d_length_296 ~v0 ~v1 = du_length_296
du_length_296 :: [AgdaAny] -> Integer
du_length_296
  = coe
      du_foldr_240
      (let v0 = \ v0 -> addInt (coe (1 :: Integer)) (coe v0) in
       coe (\ v1 -> v0))
      (coe (0 :: Integer))
-- Data.List.Base.[_]
d_'91'_'93'_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> [AgdaAny]
d_'91'_'93'_298 ~v0 ~v1 v2 = du_'91'_'93'_298 v2
du_'91'_'93'_298 :: AgdaAny -> [AgdaAny]
du_'91'_'93'_298 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base.fromMaybe
d_fromMaybe_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Maybe AgdaAny -> [AgdaAny]
d_fromMaybe_302 ~v0 ~v1 v2 = du_fromMaybe_302 v2
du_fromMaybe_302 :: Maybe AgdaAny -> [AgdaAny]
du_fromMaybe_302 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe du_'91'_'93'_298 (coe v1)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.replicate
d_replicate_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> AgdaAny -> [AgdaAny]
d_replicate_306 ~v0 ~v1 v2 v3 = du_replicate_306 v2 v3
du_replicate_306 :: Integer -> AgdaAny -> [AgdaAny]
du_replicate_306 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
             (coe du_replicate_306 (coe v2) (coe v1))
-- Data.List.Base.inits
d_inits_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [[AgdaAny]]
d_inits_314 ~v0 ~v1 v2 = du_inits_314 v2
du_inits_314 :: [AgdaAny] -> [[AgdaAny]]
du_inits_314 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
             (coe
                du_map_22
                (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1))
                (coe du_inits_314 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.tails
d_tails_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [[AgdaAny]]
d_tails_322 ~v0 ~v1 v2 = du_tails_322 v2
du_tails_322 :: [AgdaAny] -> [[AgdaAny]]
du_tails_322 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
             (coe du_tails_322 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.scanr
d_scanr_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d_scanr_328 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_scanr_328 v4 v5 v6
du_scanr_328 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du_scanr_328 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5 = coe du_scanr_328 (coe v0) (coe v1) (coe v4) in
           case coe v5 of
             [] -> coe v5
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v3 v6)
                    (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.scanl
d_scanl_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d_scanl_366 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_scanl_366 v4 v5 v6
du_scanl_366 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du_scanl_366 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
             (coe du_scanl_366 (coe v0) (coe v0 v1 v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.applyUpTo
d_applyUpTo_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d_applyUpTo_380 ~v0 ~v1 v2 v3 = du_applyUpTo_380 v2 v3
du_applyUpTo_380 :: (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du_applyUpTo_380 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe v0 (0 :: Integer))
             (coe
                du_applyUpTo_380
                (coe (\ v3 -> coe v0 (addInt (coe (1 :: Integer)) (coe v3))))
                (coe v2))
-- Data.List.Base.applyDownFrom
d_applyDownFrom_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d_applyDownFrom_388 ~v0 ~v1 v2 v3 = du_applyDownFrom_388 v2 v3
du_applyDownFrom_388 ::
  (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du_applyDownFrom_388 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v2)
             (coe du_applyDownFrom_388 (coe v0) (coe v2))
-- Data.List.Base.tabulate
d_tabulate_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) -> [AgdaAny]
d_tabulate_400 ~v0 ~v1 v2 v3 = du_tabulate_400 v2 v3
du_tabulate_400 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) -> [AgdaAny]
du_tabulate_400 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_10))
             (coe
                du_tabulate_400 (coe v2)
                (coe
                   (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3))))
-- Data.List.Base.lookup
d_lookup_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny
d_lookup_410 ~v0 ~v1 v2 v3 = du_lookup_410 v2 v3
du_lookup_410 ::
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny
du_lookup_410 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10 -> coe v2
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe du_lookup_410 (coe v3) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.upTo
d_upTo_422 :: Integer -> [Integer]
d_upTo_422 = coe du_applyUpTo_380 (coe (\ v0 -> v0))
-- Data.List.Base.downFrom
d_downFrom_424 :: Integer -> [Integer]
d_downFrom_424 = coe du_applyDownFrom_388 (coe (\ v0 -> v0))
-- Data.List.Base.allFin
d_allFin_428 :: Integer -> [MAlonzo.Code.Data.Fin.Base.T_Fin_6]
d_allFin_428 v0 = coe du_tabulate_400 (coe v0) (coe (\ v1 -> v1))
-- Data.List.Base.unfold
d_unfold_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (Integer -> ()) ->
  (Integer ->
   AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  Integer -> AgdaAny -> [AgdaAny]
d_unfold_440 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_unfold_440 v4 v5 v6
du_unfold_440 ::
  (Integer ->
   AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  Integer -> AgdaAny -> [AgdaAny]
du_unfold_440 v0 v1 v2
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           let v4 = coe v0 v3 v2 in
           case coe v4 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                           (coe du_unfold_440 (coe v0) (coe v3) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.uncons
d_uncons_480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncons_480 ~v0 ~v1 v2 = du_uncons_480 v2
du_uncons_480 ::
  [AgdaAny] -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncons_480 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.head
d_head_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Maybe AgdaAny
d_head_486 ~v0 ~v1 v2 = du_head_486 v2
du_head_486 :: [AgdaAny] -> Maybe AgdaAny
du_head_486 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.tail
d_tail_490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Maybe [AgdaAny]
d_tail_490 ~v0 ~v1 v2 = du_tail_490 v2
du_tail_490 :: [AgdaAny] -> Maybe [AgdaAny]
du_tail_490 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.last
d_last_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Maybe AgdaAny
d_last_494 ~v0 ~v1 v2 = du_last_494 v2
du_last_494 :: [AgdaAny] -> Maybe AgdaAny
du_last_494 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2
        -> let v3 = coe du_last_494 (coe v2) in
           case coe v2 of
             [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
             _ -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.take
d_take_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d_take_500 ~v0 ~v1 v2 v3 = du_take_500 v2 v3
du_take_500 :: Integer -> [AgdaAny] -> [AgdaAny]
du_take_500 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                    (coe du_take_500 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.drop
d_drop_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d_drop_512 ~v0 ~v1 v2 v3 = du_drop_512 v2 v3
du_drop_512 :: Integer -> [AgdaAny] -> [AgdaAny]
du_drop_512 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4 -> coe du_drop_512 (coe v2) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.splitAt
d_splitAt_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_splitAt_524 ~v0 ~v1 v2 v3 = du_splitAt_524 v2 v3
du_splitAt_524 ::
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_splitAt_524 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             []
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
             (:) v3 v4
               -> let v5 = coe du_splitAt_524 (coe v2) (coe v4) in
                  case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3) (coe v6))
                           (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.takeWhile
d_takeWhile_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
d_takeWhile_552 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_takeWhile_552 v4 v5
du_takeWhile_552 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
du_takeWhile_552 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                    (coe du_takeWhile_552 (coe v0) (coe v3))
             else coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.dropWhile
d_dropWhile_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
d_dropWhile_580 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_dropWhile_580 v4 v5
du_dropWhile_580 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
du_dropWhile_580 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v2) in
           if coe v4 then coe du_dropWhile_580 (coe v0) (coe v3) else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.filter
d_filter_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
d_filter_608 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_filter_608 v4 v5
du_filter_608 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
du_filter_608 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                    (coe du_filter_608 (coe v0) (coe v3))
             else coe du_filter_608 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.partition
d_partition_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partition_636 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_partition_636 v4 v5
du_partition_636 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partition_636 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v2) in
           let v5 = coe du_partition_636 (coe v0) (coe v3) in
           if coe v4
             then case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v6))
                           (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v7))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.span
d_span_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_span_672 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_span_672 v4 v5
du_span_672 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_span_672 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Product.du_map_148
                    (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2))
                    (coe (\ v5 v6 -> v6)) (coe du_span_672 (coe v0) (coe v3))
             else coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.break
d_break_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_break_702 ~v0 ~v1 ~v2 ~v3 v4 = du_break_702 v4
du_break_702 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_break_702 v0
  = coe
      du_span_672
      (coe
         MAlonzo.Code.Relation.Unary.Properties.du_'8705''63'_74 (coe v0))
-- Data.List.Base.derun
d_derun_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
d_derun_708 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_derun_708 v4 v5
du_derun_708 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
du_derun_708 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v3 of
             [] -> coe v1
             (:) v4 v5
               -> let v6
                        = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v2 v4) in
                  let v7 = coe du_derun_708 (coe v0) (coe v3) in
                  if coe v6
                    then coe v7
                    else coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.deduplicate
d_deduplicate_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
d_deduplicate_750 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_deduplicate_750 v4 v5
du_deduplicate_750 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny]
du_deduplicate_750 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe
                du_filter_608
                (coe
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_'172''63'_64
                        (coe v0 v2 v4)))
                (coe du_deduplicate_750 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base._[_]%=_
d__'91'_'93''37''61'__762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny]
d__'91'_'93''37''61'__762 ~v0 ~v1 v2 v3 v4
  = du__'91'_'93''37''61'__762 v2 v3 v4
du__'91'_'93''37''61'__762 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny]
du__'91'_'93''37''61'__762 v0 v1 v2
  = case coe v0 of
      (:) v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2 v3) (coe v4)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                    (coe du__'91'_'93''37''61'__762 (coe v4) (coe v6) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base._[_]∷=_
d__'91'_'93''8759''61'__780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny -> [AgdaAny]
d__'91'_'93''8759''61'__780 ~v0 ~v1 v2 v3 v4
  = du__'91'_'93''8759''61'__780 v2 v3 v4
du__'91'_'93''8759''61'__780 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny -> [AgdaAny]
du__'91'_'93''8759''61'__780 v0 v1 v2
  = coe
      du__'91'_'93''37''61'__762 (coe v0) (coe v1) (coe (\ v3 -> v2))
-- Data.List.Base._─_
d__'9472'__790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> [AgdaAny]
d__'9472'__790 ~v0 ~v1 v2 v3 = du__'9472'__790 v2 v3
du__'9472'__790 ::
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> [AgdaAny]
du__'9472'__790 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_10 -> coe v3
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                    (coe du__'9472'__790 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.reverseAcc
d_reverseAcc_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_reverseAcc_802 ~v0 ~v1 = du_reverseAcc_802
du_reverseAcc_802 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_reverseAcc_802
  = coe
      du_foldl_254
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0)))
-- Data.List.Base.reverse
d_reverse_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [AgdaAny]
d_reverse_804 ~v0 ~v1 = du_reverse_804
du_reverse_804 :: [AgdaAny] -> [AgdaAny]
du_reverse_804
  = coe
      du_reverseAcc_802
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base._ʳ++_
d__'691''43''43'__806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'691''43''43'__806 ~v0 ~v1 v2 v3 = du__'691''43''43'__806 v2 v3
du__'691''43''43'__806 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'691''43''43'__806 v0 v1 = coe du_reverseAcc_802 v1 v0
-- Data.List.Base._∷ʳ_
d__'8759''691'__808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> AgdaAny -> [AgdaAny]
d__'8759''691'__808 ~v0 ~v1 v2 v3 = du__'8759''691'__808 v2 v3
du__'8759''691'__808 :: [AgdaAny] -> AgdaAny -> [AgdaAny]
du__'8759''691'__808 v0 v1
  = coe du__'43''43'__60 (coe v0) (coe du_'91'_'93'_298 (coe v1))
-- Data.List.Base._?∷_
d__'63''8759'__814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> Maybe AgdaAny -> [AgdaAny] -> [AgdaAny]
d__'63''8759'__814 ~v0 ~v1 = du__'63''8759'__814
du__'63''8759'__814 :: Maybe AgdaAny -> [AgdaAny] -> [AgdaAny]
du__'63''8759'__814
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_48
      (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22) (\ v0 -> v0)
-- Data.List.Base._∷ʳ?_
d__'8759''691''63'__816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Maybe AgdaAny -> [AgdaAny]
d__'8759''691''63'__816 ~v0 ~v1 v2 v3
  = du__'8759''691''63'__816 v2 v3
du__'8759''691''63'__816 :: [AgdaAny] -> Maybe AgdaAny -> [AgdaAny]
du__'8759''691''63'__816 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_48
      (coe du__'8759''691'__808 (coe v0)) v0 v1
-- Data.List.Base.InitLast
d_InitLast_828 a0 a1 a2 = ()
data T_InitLast_828
  = C_'91''93'_832 | C__'8759''691''8242'__838 [AgdaAny] AgdaAny
-- Data.List.Base.initLast
d_initLast_842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> T_InitLast_828
d_initLast_842 ~v0 ~v1 v2 = du_initLast_842 v2
du_initLast_842 :: [AgdaAny] -> T_InitLast_828
du_initLast_842 v0
  = case coe v0 of
      [] -> coe C_'91''93'_832
      (:) v1 v2
        -> let v3 = coe du_initLast_842 (coe v2) in
           case coe v3 of
             C_'91''93'_832
               -> coe
                    C__'8759''691''8242'__838
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
             C__'8759''691''8242'__838 v4 v5
               -> coe
                    C__'8759''691''8242'__838
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v4))
                    (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.unsnoc
d_unsnoc_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unsnoc_864 ~v0 ~v1 v2 = du_unsnoc_864 v2
du_unsnoc_864 ::
  [AgdaAny] -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unsnoc_864 v0
  = let v1 = coe du_initLast_842 (coe v0) in
    case coe v1 of
      C_'91''93'_832 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C__'8759''691''8242'__838 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.linesBy
d_linesBy_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [[AgdaAny]]
d_linesBy_882 ~v0 ~v1 ~v2 ~v3 v4 = du_linesBy_882 v4
du_linesBy_882 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [[AgdaAny]]
du_linesBy_882 v0
  = coe
      du_go_892 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
-- Data.List.Base._.go
d_go_892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Maybe [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
d_go_892 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_go_892 v4 v5 v6
du_go_892 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Maybe [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
du_go_892 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_48
             (coe
                MAlonzo.Code.Function.Base.du__'8728''8242'__226
                (coe du_'91'_'93'_298) (coe du_reverse_804))
             v2 v1
      (:) v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v3) in
           if coe v5
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       du_reverse_804
                       (coe
                          MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_50
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) v1))
                    (coe
                       du_go_892 (coe v0)
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) (coe v4))
             else coe
                    du_go_892 (coe v0)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                          (coe
                             MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_50
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) v1)))
                    (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.wordsBy
d_wordsBy_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [[AgdaAny]]
d_wordsBy_920 ~v0 ~v1 ~v2 ~v3 v4 = du_wordsBy_920 v4
du_wordsBy_920 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [[AgdaAny]]
du_wordsBy_920 v0
  = coe
      du_go_938 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base._.cons
d_cons_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [[AgdaAny]] -> [[AgdaAny]]
d_cons_930 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_cons_930 v5 v6
du_cons_930 :: [AgdaAny] -> [[AgdaAny]] -> [[AgdaAny]]
du_cons_930 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
              (coe du_reverse_804 v0) (coe v1) in
    case coe v0 of
      [] -> coe v1
      _ -> coe v2
-- Data.List.Base._.go
d_go_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
d_go_938 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_go_938 v4 v5 v6
du_go_938 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
du_go_938 v0 v1 v2
  = case coe v2 of
      [] -> coe du_cons_930 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d_does_42 (coe v0 v3) in
           if coe v5
             then coe
                    du_cons_930 (coe v1)
                    (coe
                       du_go_938 (coe v0)
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v4))
             else coe
                    du_go_938 (coe v0)
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3) (coe v1))
                    (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.gfilter
d_gfilter_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_gfilter_964 v0 v1 v2 v3 v4 v5 = coe du_mapMaybe_32 v4 v5
-- Data.List.Base.boolFilter
d_boolFilter_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_boolFilter_966 ~v0 ~v1 v2 = du_boolFilter_966 v2
du_boolFilter_966 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_boolFilter_966 v0
  = coe
      du_mapMaybe_32
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v0 v1)
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1))
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
-- Data.List.Base.boolPartition
d_boolPartition_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_boolPartition_972 ~v0 ~v1 v2 v3 = du_boolPartition_972 v2 v3
du_boolPartition_972 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_boolPartition_972 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du_boolPartition_972 (coe v0) (coe v3) in
           if coe v4
             then case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v6))
                           (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v7))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.boolTakeWhile
d_boolTakeWhile_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_boolTakeWhile_1006 ~v0 ~v1 v2 v3 = du_boolTakeWhile_1006 v2 v3
du_boolTakeWhile_1006 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_boolTakeWhile_1006 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                    (coe du_boolTakeWhile_1006 (coe v0) (coe v3))
             else coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.boolDropWhile
d_boolDropWhile_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_boolDropWhile_1032 ~v0 ~v1 v2 v3 = du_boolDropWhile_1032 v2 v3
du_boolDropWhile_1032 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_boolDropWhile_1032 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe du_boolDropWhile_1032 (coe v0) (coe v3)
             else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.boolSpan
d_boolSpan_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_boolSpan_1058 ~v0 ~v1 v2 v3 = du_boolSpan_1058 v2 v3
du_boolSpan_1058 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_boolSpan_1058 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Product.du_map_148
                    (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2))
                    (coe (\ v5 v6 -> v6)) (coe du_boolSpan_1058 (coe v0) (coe v3))
             else coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.boolBreak
d_boolBreak_1086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_boolBreak_1086 ~v0 ~v1 v2 = du_boolBreak_1086 v2
du_boolBreak_1086 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_boolBreak_1086 v0
  = coe
      du_boolSpan_1058
      (coe (\ v1 -> MAlonzo.Code.Data.Bool.Base.d_not_22 (coe v0 v1)))
-- Data.List.Base._∷ʳ'_
d__'8759''691'''__1094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> AgdaAny -> T_InitLast_828
d__'8759''691'''__1094 ~v0 ~v1 = du__'8759''691'''__1094
du__'8759''691'''__1094 :: [AgdaAny] -> AgdaAny -> T_InitLast_828
du__'8759''691'''__1094 = coe C__'8759''691''8242'__838
