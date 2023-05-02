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

module MAlonzo.Code.Data.List.NonEmpty where

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
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence

-- Data.List.NonEmpty.split
d_split_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_split_20 ~v0 ~v1 v2 v3 = du_split_20 v2 v3
du_split_20 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_split_20 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du_split_20 (coe v0) (coe v3) in
           if coe v4
             then let v6
                        = coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                            (coe
                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                               (coe
                                  MAlonzo.Code.Data.List.NonEmpty.Base.du_'91'_'93'_44
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                     (coe
                                        MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                                        (MAlonzo.Code.Function.Equivalence.d_from_36
                                           (coe
                                              MAlonzo.Code.Data.Bool.Properties.d_T'45''8801'_2190
                                              (coe v4)))
                                        erased))))
                            (coe v5) in
                  case coe v5 of
                    (:) v7 v8
                      -> case coe v7 of
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                     (coe
                                        MAlonzo.Code.Data.List.NonEmpty.Base.du__'8759''8314'__48
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                           (coe
                                              MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                                              (MAlonzo.Code.Function.Equivalence.d_from_36
                                                 (coe
                                                    MAlonzo.Code.Data.Bool.Properties.d_T'45''8801'_2190
                                                    (coe v4)))
                                              erased))
                                        (coe v9)))
                                  (coe v8)
                           _ -> coe v6
                    _ -> coe v6
             else (let v6
                         = coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                (coe
                                   MAlonzo.Code.Data.List.NonEmpty.Base.du_'91'_'93'_44
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                      (coe
                                         MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                                         (MAlonzo.Code.Function.Equivalence.d_from_36
                                            (coe
                                               MAlonzo.Code.Data.Bool.Properties.d_T'45'not'45''8801'_2194
                                               (coe v4)))
                                         erased))))
                             (coe v5) in
                   case coe v5 of
                     (:) v7 v8
                       -> case coe v7 of
                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                              -> coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                      (coe
                                         MAlonzo.Code.Data.List.NonEmpty.Base.du__'8759''8314'__48
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                            (coe
                                               MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                                               (MAlonzo.Code.Function.Equivalence.d_from_36
                                                  (coe
                                                     MAlonzo.Code.Data.Bool.Properties.d_T'45'not'45''8801'_2194
                                                     (coe v4)))
                                               erased))
                                         (coe v9)))
                                   (coe v8)
                            _ -> coe v6
                     _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.NonEmpty.flatten
d_flatten_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_flatten_86 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_flatten_86 v6
du_flatten_86 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_flatten_86 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_concat_268
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe
            MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.List.NonEmpty.Base.du_toList_62
                    (coe
                       MAlonzo.Code.Data.List.NonEmpty.Base.du_map_100
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28) (coe v1))))
            (coe
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.List.NonEmpty.Base.du_toList_62
                    (coe
                       MAlonzo.Code.Data.List.NonEmpty.Base.du_map_100
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28) (coe v1)))))
         (coe v0))
-- Data.List.NonEmpty.flatten-split
d_flatten'45'split_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flatten'45'split_92 = erased
-- Data.List.NonEmpty.wordsBy
d_wordsBy_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> [MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_24]
d_wordsBy_154 ~v0 ~v1 v2 v3 = du_wordsBy_154 v2 v3
du_wordsBy_154 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> [MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_24]
du_wordsBy_154 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_mapMaybe_32
      (coe
         MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
         (let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
          coe (\ v3 -> v2))
         (coe
            MAlonzo.Code.Function.Base.du__'8728''8242'__226
            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
            (coe
               MAlonzo.Code.Data.List.NonEmpty.Base.du_map_100
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28))))
      (coe du_split_20 (coe v0) (coe v1))
