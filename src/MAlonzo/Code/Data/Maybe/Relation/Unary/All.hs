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

module MAlonzo.Code.Data.Maybe.Relation.Unary.All where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

-- Data.Maybe.Relation.Unary.All.All
d_All_18 a0 a1 a2 a3 a4 = ()
data T_All_18 = C_just_30 AgdaAny | C_nothing_32
-- Data.Maybe.Relation.Unary.All._.drop-just
d_drop'45'just_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> T_All_18 -> AgdaAny
d_drop'45'just_48 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_drop'45'just_48 v5
du_drop'45'just_48 :: T_All_18 -> AgdaAny
du_drop'45'just_48 v0
  = case coe v0 of
      C_just_30 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All._.just-equivalence
d_just'45'equivalence_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16
d_just'45'equivalence_54 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_just'45'equivalence_54
du_just'45'equivalence_54 ::
  MAlonzo.Code.Function.Equivalence.T_Equivalence_16
du_just'45'equivalence_54
  = coe
      MAlonzo.Code.Function.Equivalence.du_equivalence_56 (coe C_just_30)
      (coe du_drop'45'just_48)
-- Data.Maybe.Relation.Unary.All._.map
d_map_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Maybe AgdaAny -> T_All_18 -> T_All_18
d_map_60 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_map_60 v6 v7 v8
du_map_60 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Maybe AgdaAny -> T_All_18 -> T_All_18
du_map_60 v0 v1 v2
  = case coe v2 of
      C_just_30 v4
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> coe C_just_30 (coe v0 v5 v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_nothing_32 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All._.fromAny
d_fromAny_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 -> T_All_18
d_fromAny_68 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_fromAny_68 v5
du_fromAny_68 ::
  MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 -> T_All_18
du_fromAny_68 v0
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Relation.Unary.Any.C_just_30 v2
        -> coe C_just_30 v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All._.zipWith
d_zipWith_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  Maybe AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_All_18
d_zipWith_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_zipWith_92 v8 v9 v10
du_zipWith_92 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  Maybe AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_All_18
du_zipWith_92 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             C_just_30 v6
               -> case coe v1 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                      -> case coe v4 of
                           C_just_30 v9
                             -> coe
                                  C_just_30
                                  (coe
                                     v0 v7
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                        (coe v9)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             C_nothing_32 -> coe seq (coe v4) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All._.unzipWith
d_unzipWith_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  Maybe AgdaAny -> T_All_18 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzipWith_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_unzipWith_102 v8 v9 v10
du_unzipWith_102 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  Maybe AgdaAny -> T_All_18 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzipWith_102 v0 v1 v2
  = case coe v2 of
      C_just_30 v4
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> coe
                    MAlonzo.Code.Data.Product.du_map_148 (coe C_just_30)
                    (coe (\ v6 -> coe C_just_30)) (coe v0 v5 v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_nothing_32
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All._.zip
d_zip_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  Maybe AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_All_18
d_zip_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_zip_126 v6
du_zip_126 ::
  Maybe AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_All_18
du_zip_126 v0 = coe du_zipWith_92 (coe (\ v1 v2 -> v2)) (coe v0)
-- Data.Maybe.Relation.Unary.All._.unzip
d_unzip_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  Maybe AgdaAny -> T_All_18 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzip_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_unzip_128 v6
du_unzip_128 ::
  Maybe AgdaAny -> T_All_18 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzip_128 v0
  = coe du_unzipWith_102 (coe (\ v1 v2 -> v2)) (coe v0)
-- Data.Maybe.Relation.Unary.All._.sequenceA
d_sequenceA_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  Maybe AgdaAny -> T_All_18 -> AgdaAny
d_sequenceA_170 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 v7
  = du_sequenceA_170 v5 v7
du_sequenceA_170 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  T_All_18 -> AgdaAny
du_sequenceA_170 v0 v1
  = case coe v1 of
      C_just_30 v3
        -> let v4 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
           let v5 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
           coe
             MAlonzo.Code.Category.Functor.d__'60''36''62'__30
             (coe
                MAlonzo.Code.Category.Applicative.Indexed.du_rawFunctor_72 (coe v0)
                (coe v4) (coe v5))
             erased erased (coe C_just_30) v3
      C_nothing_32
        -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d_pure_58 v0 erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All._.mapA
d_mapA_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Maybe AgdaAny -> T_All_18 -> AgdaAny
d_mapA_178 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9
  = du_mapA_178 v5 v8 v9
du_mapA_178 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Maybe AgdaAny -> T_All_18 -> AgdaAny
du_mapA_178 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__226
      (coe du_sequenceA_170 (coe v0)) (coe du_map_60 (coe v1) (coe v2))
-- Data.Maybe.Relation.Unary.All._.forA
d_forA_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  Maybe AgdaAny ->
  T_All_18 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
d_forA_188 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9 v10
  = du_forA_188 v5 v8 v9 v10
du_forA_188 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  Maybe AgdaAny ->
  T_All_18 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
du_forA_188 v0 v1 v2 v3 = coe du_mapA_178 v0 v3 v1 v2
-- Data.Maybe.Relation.Unary.All._.App
d_App_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38
d_App_210 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_App_210 v5
du_App_210 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38
du_App_210 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122 (coe v0)
-- Data.Maybe.Relation.Unary.All._.sequenceM
d_sequenceM_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  Maybe AgdaAny -> T_All_18 -> AgdaAny
d_sequenceM_212 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_sequenceM_212 v5
du_sequenceM_212 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  T_All_18 -> AgdaAny
du_sequenceM_212 v0
  = coe du_sequenceA_170 (coe du_App_210 (coe v0))
-- Data.Maybe.Relation.Unary.All._.mapM
d_mapM_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Maybe AgdaAny -> T_All_18 -> AgdaAny
d_mapM_218 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 = du_mapM_218 v5
du_mapM_218 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Maybe AgdaAny -> T_All_18 -> AgdaAny
du_mapM_218 v0 = coe du_mapA_178 (coe du_App_210 (coe v0))
-- Data.Maybe.Relation.Unary.All._.forM
d_forM_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  Maybe AgdaAny ->
  T_All_18 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
d_forM_226 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 = du_forM_226 v5 v8
du_forM_226 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  Maybe AgdaAny ->
  T_All_18 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny
du_forM_226 v0 v1
  = coe du_forA_188 (coe du_App_210 (coe v0)) (coe v1)
-- Data.Maybe.Relation.Unary.All._.dec
d_dec_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Maybe AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_dec_240 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_dec_240 v4 v5
du_dec_240 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  Maybe AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_dec_240 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.du_map_14
             (coe du_just'45'equivalence_54) (coe v0 v2)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Relation.Nullary.C__because__46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 (coe C_nothing_32))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All._.universal
d_universal_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> Maybe AgdaAny -> T_All_18
d_universal_248 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_universal_248 v4 v5
du_universal_248 ::
  (AgdaAny -> AgdaAny) -> Maybe AgdaAny -> T_All_18
du_universal_248 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe C_just_30 (coe v0 v2)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe C_nothing_32
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Maybe.Relation.Unary.All._.irrelevant
d_irrelevant_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Maybe AgdaAny ->
  T_All_18 ->
  T_All_18 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_irrelevant_256 = erased
-- Data.Maybe.Relation.Unary.All._.satisfiable
d_satisfiable_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_satisfiable_266 ~v0 ~v1 ~v2 ~v3 = du_satisfiable_266
du_satisfiable_266 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_satisfiable_266
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe C_nothing_32)
