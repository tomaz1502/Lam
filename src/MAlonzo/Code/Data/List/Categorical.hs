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

module MAlonzo.Code.Data.List.Categorical where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Function.Base

-- Data.List.Categorical.functor
d_functor_8 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Category.Functor.T_RawFunctor_24
d_functor_8 ~v0 = du_functor_8
du_functor_8 :: MAlonzo.Code.Category.Functor.T_RawFunctor_24
du_functor_8
  = coe
      MAlonzo.Code.Category.Functor.C_RawFunctor'46'constructor_181
      (coe
         (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Data.List.Base.du_map_22 v2 v3))
-- Data.List.Categorical.applicative
d_applicative_12 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38
d_applicative_12 ~v0 = du_applicative_12
du_applicative_12 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38
du_applicative_12
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.C_RawIApplicative'46'constructor_517
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_298))
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Data.List.Base.du_concatMap_270
              (coe
                 (\ v7 ->
                    coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v7) (coe v6)))
              (coe v5)))
-- Data.List.Categorical.applicativeZero
d_applicativeZero_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicativeZero_156
d_applicativeZero_22 ~v0 = du_applicativeZero_22
du_applicativeZero_22 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicativeZero_156
du_applicativeZero_22
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.C_RawIApplicativeZero'46'constructor_7777
      (coe du_applicative_12)
      (coe
         (\ v0 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Data.List.Categorical.alternative
d_alternative_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIAlternative_210
d_alternative_26 ~v0 = du_alternative_26
du_alternative_26 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIAlternative_210
du_alternative_26
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.C_RawIAlternative'46'constructor_9171
      (coe du_applicativeZero_22)
      (coe
         (\ v0 v1 v2 -> coe MAlonzo.Code.Data.List.Base.du__'43''43'__60))
-- Data.List.Categorical.monad
d_monad_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32
d_monad_30 ~v0 = du_monad_30
du_monad_30 :: MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32
du_monad_30
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C_RawIMonad'46'constructor_459
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_298))
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Data.List.Base.du_concatMap_270 (coe v6) (coe v5)))
-- Data.List.Categorical.monadZero
d_monadZero_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonadZero_174
d_monadZero_34 ~v0 = du_monadZero_34
du_monadZero_34 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonadZero_174
du_monadZero_34
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C_RawIMonadZero'46'constructor_7839
      (coe du_monad_30) (coe du_applicativeZero_22)
-- Data.List.Categorical.monadPlus
d_monadPlus_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonadPlus_240
d_monadPlus_38 ~v0 = du_monadPlus_38
du_monadPlus_38 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonadPlus_240
du_monadPlus_38
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C_RawIMonadPlus'46'constructor_9847
      (coe du_monad_30) (coe du_alternative_26)
-- Data.List.Categorical.TraversableA.sequenceA
d_sequenceA_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  () -> [AgdaAny] -> AgdaAny
d_sequenceA_74 ~v0 ~v1 v2 ~v3 v4 = du_sequenceA_74 v2 v4
du_sequenceA_74 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  [AgdaAny] -> AgdaAny
du_sequenceA_74 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d_pure_58 v0 erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d__'8859'__66 v0 erased
             erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
             (let v4 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              let v5 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
              coe
                MAlonzo.Code.Category.Functor.d__'60''36''62'__30
                (coe
                   MAlonzo.Code.Category.Applicative.Indexed.du_rawFunctor_72 (coe v0)
                   (coe v4) (coe v5))
                erased erased (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22)
                v2)
             (coe du_sequenceA_74 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Categorical.TraversableA.mapA
d_mapA_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapA_86 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 = du_mapA_86 v2 v6 v7
du_mapA_86 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapA_86 v0 v1 v2
  = coe
      du_sequenceA_74 (coe v0)
      (coe MAlonzo.Code.Data.List.Base.du_map_22 (coe v1) (coe v2))
-- Data.List.Categorical.TraversableA.forA
d_forA_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_forA_96 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 = du_forA_96 v2 v6 v7
du_forA_96 ::
  MAlonzo.Code.Category.Applicative.Indexed.T_RawIApplicative_38 ->
  [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_forA_96 v0 v1 v2 = coe du_mapA_86 (coe v0) (coe v2) (coe v1)
-- Data.List.Categorical.TraversableM._.forA
d_forA_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_forA_148 ~v0 ~v1 v2 = du_forA_148 v2
du_forA_148 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_forA_148 v0 v1 v2 v3 v4 v5
  = coe
      du_forA_96
      (coe
         MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122
         (coe v0))
      v4 v5
-- Data.List.Categorical.TraversableM._.mapA
d_mapA_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapA_150 ~v0 ~v1 v2 = du_mapA_150 v2
du_mapA_150 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapA_150 v0 v1 v2 v3 v4 v5
  = coe
      du_mapA_86
      (coe
         MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122
         (coe v0))
      v4 v5
-- Data.List.Categorical.TraversableM._.sequenceA
d_sequenceA_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  () -> [AgdaAny] -> AgdaAny
d_sequenceA_152 ~v0 ~v1 v2 = du_sequenceA_152 v2
du_sequenceA_152 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  () -> [AgdaAny] -> AgdaAny
du_sequenceA_152 v0 v1 v2
  = coe
      du_sequenceA_74
      (coe
         MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122
         (coe v0))
      v2
-- Data.List.Categorical.monadT
d_monadT_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32
d_monadT_158 ~v0 ~v1 v2 = du_monadT_158 v2
du_monadT_158 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32
du_monadT_158 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C_RawIMonad'46'constructor_459
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__226
              (coe
                 MAlonzo.Code.Category.Monad.Indexed.d_return_52 v0 erased
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_298)))
      (coe
         (\ v1 v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Category.Monad.Indexed.d__'62''62''61'__60 v0 erased
              erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v6
              (\ v8 ->
                 let v9
                       = coe
                           MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122
                           (coe v0) in
                 let v10 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                 let v11 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8 in
                 coe
                   MAlonzo.Code.Category.Functor.d__'60''36''62'__30
                   (coe
                      MAlonzo.Code.Category.Applicative.Indexed.du_rawFunctor_72 (coe v9)
                      (coe v10) (coe v11))
                   erased erased (coe MAlonzo.Code.Data.List.Base.du_concat_268)
                   (coe
                      du_mapA_86
                      (coe
                         MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122
                         (coe v0))
                      (coe v7) (coe v8)))))
-- Data.List.Categorical._._.forA
d_forA_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d_forA_208 ~v0 ~v1 v2 = du_forA_208 v2
du_forA_208 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du_forA_208 v0 v1 v2 v3 v4 v5
  = coe
      du_forA_96
      (coe
         MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122
         (coe v0))
      v4 v5
-- Data.List.Categorical._._.mapA
d_mapA_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_mapA_210 ~v0 ~v1 v2 = du_mapA_210 v2
du_mapA_210 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_mapA_210 v0 v1 v2 v3 v4 v5
  = coe
      du_mapA_86
      (coe
         MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122
         (coe v0))
      v4 v5
-- Data.List.Categorical._._.sequenceA
d_sequenceA_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> () -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  () -> [AgdaAny] -> AgdaAny
d_sequenceA_212 ~v0 ~v1 v2 = du_sequenceA_212 v2
du_sequenceA_212 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32 ->
  () -> [AgdaAny] -> AgdaAny
du_sequenceA_212 v0 v1 v2
  = coe
      du_sequenceA_74
      (coe
         MAlonzo.Code.Category.Monad.Indexed.du_rawIApplicative_122
         (coe v0))
      v2
-- Data.List.Categorical.LMP._>>=_
d__'62''62''61'__240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d__'62''62''61'__240 ~v0 = du__'62''62''61'__240
du__'62''62''61'__240 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
du__'62''62''61'__240
  = let v0 = coe du_monadPlus_38 in
    coe
      MAlonzo.Code.Category.Monad.Indexed.d__'62''62''61'__60
      (coe MAlonzo.Code.Category.Monad.Indexed.d_monad_250 (coe v0))
-- Data.List.Categorical.LMP._∣_
d__'8739'__242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8739'__242 ~v0 = du__'8739'__242
du__'8739'__242 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8739'__242
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d__'8739'__230
      (coe
         MAlonzo.Code.Category.Monad.Indexed.d_alternative_252
         (coe du_monadPlus_38))
-- Data.List.Categorical.LMP._⊛_
d__'8859'__246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8859'__246 ~v0 = du__'8859'__246
du__'8859'__246 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8859'__246
  = let v0 = coe du_monadPlus_38 in
    let v1
          = MAlonzo.Code.Category.Monad.Indexed.d_monad_250 (coe v0) in
    coe
      (\ v2 v3 v4 v5 v6 v7 v8 ->
         coe
           MAlonzo.Code.Category.Monad.Indexed.d__'62''62''61'__60 v1 erased
           erased v4 v5 v6 v7
           (\ v9 ->
              coe
                MAlonzo.Code.Category.Monad.Indexed.d__'62''62''61'__60 v1 erased
                erased v5 v6 v6 v8
                (\ v10 ->
                   coe
                     MAlonzo.Code.Category.Monad.Indexed.d_return_52 v1 erased v6
                     (coe v9 v10))))
-- Data.List.Categorical.LMP.return
d_return_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> [AgdaAny]
d_return_264 ~v0 = du_return_264
du_return_264 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> [AgdaAny]
du_return_264
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d_return_52
      (coe
         MAlonzo.Code.Category.Monad.Indexed.d_monad_250
         (coe du_monadPlus_38))
-- Data.List.Categorical.LMP.∅
d_'8709'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> [AgdaAny]
d_'8709'_270 ~v0 = du_'8709'_270
du_'8709'_270 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> [AgdaAny]
du_'8709'_270
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d_'8709'_176
      (coe
         MAlonzo.Code.Category.Applicative.Indexed.d_applicativeZero_224
         (coe
            MAlonzo.Code.Category.Monad.Indexed.d_alternative_252
            (coe du_monadPlus_38)))
-- Data.List.Categorical.MonadProperties.left-identity
d_left'45'identity_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'identity_284 = erased
-- Data.List.Categorical.MonadProperties.right-identity
d_right'45'identity_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'identity_296 = erased
-- Data.List.Categorical.MonadProperties.left-zero
d_left'45'zero_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'zero_312 = erased
-- Data.List.Categorical.MonadProperties.right-zero
d_right'45'zero_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'zero_324 = erased
-- Data.List.Categorical.MonadProperties.right-distributive
d_right'45'distributive_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'distributive_352 = erased
-- Data.List.Categorical.MonadProperties.associative
d_associative_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_associative_384 = erased
-- Data.List.Categorical.MonadProperties.cong
d_cong_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_416 = erased
-- Data.List.Categorical.Applicative.MP.associative
d_associative_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_associative_426 = erased
-- Data.List.Categorical.Applicative.MP.cong
d_cong_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_428 = erased
-- Data.List.Categorical.Applicative.MP.left-identity
d_left'45'identity_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'identity_430 = erased
-- Data.List.Categorical.Applicative.MP.left-zero
d_left'45'zero_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'zero_432 = erased
-- Data.List.Categorical.Applicative.MP.right-distributive
d_right'45'distributive_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'distributive_434 = erased
-- Data.List.Categorical.Applicative.MP.right-identity
d_right'45'identity_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'identity_436 = erased
-- Data.List.Categorical.Applicative.MP.right-zero
d_right'45'zero_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'zero_438 = erased
-- Data.List.Categorical.Applicative.pam
d_pam_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> [AgdaAny]
d_pam_446 ~v0 ~v1 ~v2 v3 v4 = du_pam_446 v3 v4
du_pam_446 :: [AgdaAny] -> (AgdaAny -> AgdaAny) -> [AgdaAny]
du_pam_446 v0 v1
  = let v2 = coe du_monadPlus_38 in
    coe
      MAlonzo.Code.Category.Monad.Indexed.d__'62''62''61'__60
      (MAlonzo.Code.Category.Monad.Indexed.d_monad_250 (coe v2)) erased
      erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) v0
      (\ v3 ->
         coe
           MAlonzo.Code.Category.Monad.Indexed.d_return_52
           (MAlonzo.Code.Category.Monad.Indexed.d_monad_250
              (coe du_monadPlus_38))
           erased (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) (coe v1 v3))
-- Data.List.Categorical.Applicative.left-zero
d_left'45'zero_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'zero_460 = erased
-- Data.List.Categorical.Applicative.right-zero
d_right'45'zero_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'zero_472 = erased
-- Data.List.Categorical.Applicative.right-distributive
d_right'45'distributive_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_right'45'distributive_494 = erased
-- Data.List.Categorical.Applicative.identity
d_identity_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_identity_516 = erased
-- Data.List.Categorical.Applicative.pam-lemma
d_pam'45'lemma_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pam'45'lemma_536 = erased
-- Data.List.Categorical.Applicative.composition
d_composition_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_composition_564 = erased
-- Data.List.Categorical.Applicative.homomorphism
d_homomorphism_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homomorphism_618 = erased
-- Data.List.Categorical.Applicative.interchange
d_interchange_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_interchange_636 = erased
