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

module MAlonzo.Code.Relation.Nullary.Negation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Relation.Nullary.Negation.decidable-stable
d_decidable'45'stable_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  ((AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny
d_decidable'45'stable_26 ~v0 ~v1 v2 ~v3
  = du_decidable'45'stable_26 v2
du_decidable'45'stable_26 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 -> AgdaAny
du_decidable'45'stable_26 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v1 v2
        -> if coe v1
             then case coe v2 of
                    MAlonzo.Code.Relation.Nullary.C_of'696'_22 v3 -> coe v3
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v2) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Negation.¬-drop-Dec
d_'172''45'drop'45'Dec_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d_'172''45'drop'45'Dec_36 ~v0 ~v1 v2
  = du_'172''45'drop'45'Dec_36 v2
du_'172''45'drop'45'Dec_36 ::
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du_'172''45'drop'45'Dec_36 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
      erased
      (coe
         MAlonzo.Code.Relation.Nullary.Negation.Core.du_'172''63'_64
         (coe v0))
-- Relation.Nullary.Negation.¬¬-Monad
d_'172''172''45'Monad_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32
d_'172''172''45'Monad_42 ~v0 = du_'172''172''45'Monad_42
du_'172''172''45'Monad_42 ::
  MAlonzo.Code.Category.Monad.Indexed.T_RawIMonad_32
du_'172''172''45'Monad_42
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C_RawIMonad'46'constructor_459
      (coe
         (\ v0 v1 v2 v3 ->
            coe
              MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_24))
      erased
-- Relation.Nullary.Negation.¬¬-push
d_'172''172''45'push_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (((AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'172''172''45'push_56 = erased
-- Relation.Nullary.Negation.excluded-middle
d_excluded'45'middle_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_excluded'45'middle_66 = erased
-- Relation.Nullary.Negation.call/cc
d_call'47'cc_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  ((AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_call'47'cc_72 = erased
-- Relation.Nullary.Negation.independence-of-premise
d_independence'45'of'45'premise_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_independence'45'of'45'premise_88 = erased
-- Relation.Nullary.Negation._.helper
d_helper_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_helper_100 v6 v7 v8
du_helper_100 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_100 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C_of'696'_22 v5
                      -> coe
                           MAlonzo.Code.Data.Product.du_map_148 (coe (\ v6 -> v6))
                           (coe (\ v6 v7 v8 -> v7)) (coe v1 v5)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                       (coe
                          MAlonzo.Code.Function.Base.du__'8728''8242'__226
                          (\ v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10) erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Negation.independence-of-premise-⊎
d_independence'45'of'45'premise'45''8846'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_independence'45'of'45'premise'45''8846'_106 = erased
-- Relation.Nullary.Negation._.helper
d_helper_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_helper_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_helper_116 v6 v7
du_helper_116 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_helper_116 v0 v1
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.C__because__46 v2 v3
        -> if coe v2
             then case coe v3 of
                    MAlonzo.Code.Relation.Nullary.C_of'696'_22 v4
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.du_map_84 (\ v5 v6 -> v5)
                           (\ v5 v6 -> v5) (coe v0 v4)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v3)
                    (coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                       (coe
                          MAlonzo.Code.Function.Base.du__'8728''8242'__226
                          (\ v4 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_10) erased))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Nullary.Negation.Excluded-Middle
d_Excluded'45'Middle_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> ()
d_Excluded'45'Middle_152 = erased
-- Relation.Nullary.Negation.Double-Negation-Elimination
d_Double'45'Negation'45'Elimination_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> ()
d_Double'45'Negation'45'Elimination_160 = erased
