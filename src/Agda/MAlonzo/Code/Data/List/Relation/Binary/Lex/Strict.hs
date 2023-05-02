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

module MAlonzo.Code.Data.List.Relation.Binary.Lex.Strict where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Relation.Binary.Lex
import qualified MAlonzo.Code.Data.List.Relation.Binary.Lex.Core
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Data.List.Relation.Binary.Lex.Strict._._._≋_
d__'8779'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d__'8779'__32 = erased
-- Data.List.Relation.Binary.Lex.Strict._._._<_
d__'60'__34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d__'60'__34 = erased
-- Data.List.Relation.Binary.Lex.Strict._._.¬[]<[]
d_'172''91''93''60''91''93'_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'172''91''93''60''91''93'_36 = erased
-- Data.List.Relation.Binary.Lex.Strict._._.<-irreflexive
d_'60''45'irreflexive_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''45'irreflexive_38 = erased
-- Data.List.Relation.Binary.Lex.Strict._._.<-asymmetric
d_'60''45'asymmetric_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'60''45'asymmetric_56 = erased
-- Data.List.Relation.Binary.Lex.Strict._._._.irrefl
d_irrefl_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_irrefl_68 = erased
-- Data.List.Relation.Binary.Lex.Strict._._._.asym
d_asym_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_asym_70 = erased
-- Data.List.Relation.Binary.Lex.Strict._._.<-antisymmetric
d_'60''45'antisymmetric_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'60''45'antisymmetric_98 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'60''45'antisymmetric_98
du_'60''45'antisymmetric_98 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'60''45'antisymmetric_98 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.du_antisymmetric_78 v3
      v4
-- Data.List.Relation.Binary.Lex.Strict._._.<-transitive
d_'60''45'transitive_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32
d_'60''45'transitive_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'60''45'transitive_100
du_'60''45'transitive_100 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32
du_'60''45'transitive_100
  = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.du_transitive_132
-- Data.List.Relation.Binary.Lex.Strict._._.<-compare
d_'60''45'compare_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_'60''45'compare_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_'60''45'compare_102 v6 v7 v8 v9
du_'60''45'compare_102 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136) ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
du_'60''45'compare_102 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158
                    (coe
                       MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56)
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_halt_48)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_halt_48)
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150 v9
                      -> coe
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150
                           (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_this_60 v9)
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 v10
                      -> let v12
                               = coe du_'60''45'compare_102 (coe v0) (coe v1) (coe v5) (coe v7) in
                         case coe v12 of
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150 v13
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_next_74 v10
                                     v13)
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 v14
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62
                                     v10 v14)
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166 v15
                             -> coe
                                  MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_next_74
                                     (coe v0 v4 v6 v10) v15)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166 v11
                      -> coe
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166
                           (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_this_60 v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Lex.Strict._._.<-decidable
d_'60''45'decidable_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_'60''45'decidable_270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'60''45'decidable_270
du_'60''45'decidable_270 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_'60''45'decidable_270
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.du_decidable_260
      (coe
         MAlonzo.Code.Relation.Nullary.C__because__46
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26))
-- Data.List.Relation.Binary.Lex.Strict._._.<-respects₂
d_'60''45'respects'8322'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'respects'8322'_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'60''45'respects'8322'_272
du_'60''45'respects'8322'_272 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'respects'8322'_272
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.du_respects'8322'_180
-- Data.List.Relation.Binary.Lex.Strict._._.<-isStrictPartialOrder
d_'60''45'isStrictPartialOrder_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_'60''45'isStrictPartialOrder_274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'isStrictPartialOrder_274 v6
du_'60''45'isStrictPartialOrder_274 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_'60''45'isStrictPartialOrder_274 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_9921
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_isEquivalence_56
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
            (coe v0)))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.du_transitive_132
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
            (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_282 (coe v0)))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.du_respects'8322'_180
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
            (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict._._.<-isStrictTotalOrder
d_'60''45'isStrictTotalOrder_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
d_'60''45'isStrictTotalOrder_312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'60''45'isStrictTotalOrder_312 v6
du_'60''45'isStrictTotalOrder_312 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
du_'60''45'isStrictTotalOrder_312 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_19043
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_isEquivalence_56
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_512
            (coe v0)))
      (coe
         du_'60''45'transitive_100
         (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_512
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du_trans'8743'tri'8658'resp_650
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_compare_516 (coe v0)))
         (MAlonzo.Code.Relation.Binary.Structures.d_trans_514 (coe v0)))
      (coe
         du_'60''45'compare_102
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_512
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_516 (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict.<-strictPartialOrder
d_'60''45'strictPartialOrder_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
d_'60''45'strictPartialOrder_370 ~v0 ~v1 ~v2 v3
  = du_'60''45'strictPartialOrder_370 v3
du_'60''45'strictPartialOrder_370 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
du_'60''45'strictPartialOrder_370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_7693
      (coe
         du_'60''45'isStrictPartialOrder_274
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_494
            (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict.<-strictTotalOrder
d_'60''45'strictTotalOrder_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_'60''45'strictTotalOrder_434 ~v0 ~v1 ~v2 v3
  = du_'60''45'strictTotalOrder_434 v3
du_'60''45'strictTotalOrder_434 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
du_'60''45'strictTotalOrder_434 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_14573
      (coe
         du_'60''45'isStrictTotalOrder_312
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_886
            (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict._.≤-reflexive
d_'8804''45'reflexive_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32
d_'8804''45'reflexive_522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_'8804''45'reflexive_522 v6 v7 v8
du_'8804''45'reflexive_522 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32
du_'8804''45'reflexive_522 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C_'91''93'_56
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_base_42
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.C__'8759'__62 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_next_74 v7
                           (coe du_'8804''45'reflexive_522 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Lex.Strict._._._≋_
d__'8779'__544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d__'8779'__544 = erased
-- Data.List.Relation.Binary.Lex.Strict._._._≤_
d__'8804'__546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d__'8804'__546 = erased
-- Data.List.Relation.Binary.Lex.Strict._._.≤-antisymmetric
d_'8804''45'antisymmetric_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'8804''45'antisymmetric_548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8804''45'antisymmetric_548
du_'8804''45'antisymmetric_548 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'8804''45'antisymmetric_548 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.du_antisymmetric_78 v3
      v4
-- Data.List.Relation.Binary.Lex.Strict._._.≤-transitive
d_'8804''45'transitive_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32
d_'8804''45'transitive_550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8804''45'transitive_550
du_'8804''45'transitive_550 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32 ->
  MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.T_Lex_32
du_'8804''45'transitive_550
  = coe MAlonzo.Code.Data.List.Relation.Binary.Lex.du_transitive_132
-- Data.List.Relation.Binary.Lex.Strict._._.≤-total
d_'8804''45'total_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_'8804''45'total_552 v6 v7 v8 v9
du_'8804''45'total_552 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8804''45'total_552 v0 v1 v2 v3
  = case coe v2 of
      []
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                    (coe
                       MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_base_42
                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
             (:) v4 v5
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_halt_48)
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                    (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_halt_48)
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  case coe v8 of
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_150 v9
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                           (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_this_60 v9)
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_158 v10
                      -> let v12
                               = coe du_'8804''45'total_552 (coe v0) (coe v1) (coe v5) (coe v7) in
                         case coe v12 of
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_next_74 v10
                                     v13)
                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_next_74
                                     (coe v0 v4 v6 v10) v13)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_166 v11
                      -> coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                           (coe MAlonzo.Code.Data.List.Relation.Binary.Lex.Core.C_this_60 v11)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Lex.Strict._._.≤-decidable
d_'8804''45'decidable_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_'8804''45'decidable_656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8804''45'decidable_656
du_'8804''45'decidable_656 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_'8804''45'decidable_656
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.du_decidable_260
      (coe
         MAlonzo.Code.Relation.Nullary.C__because__46
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe
            MAlonzo.Code.Relation.Nullary.C_of'696'_22
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
-- Data.List.Relation.Binary.Lex.Strict._._.≤-respects₂
d_'8804''45'respects'8322'_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8804''45'respects'8322'_658 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8804''45'respects'8322'_658
du_'8804''45'respects'8322'_658 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8804''45'respects'8322'_658
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Lex.du_respects'8322'_180
-- Data.List.Relation.Binary.Lex.Strict._._.≤-isPreorder
d_'8804''45'isPreorder_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_660 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_'8804''45'isPreorder_660 v6 v7 v8
du_'8804''45'isPreorder_660 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_'8804''45'isPreorder_660 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_isEquivalence_56
         (coe v0))
      (coe du_'8804''45'reflexive_522)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.du_transitive_132
         (coe v0) (coe v2) (coe v1))
-- Data.List.Relation.Binary.Lex.Strict._._.≤-isPartialOrder
d_'8804''45'isPartialOrder_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8804''45'isPartialOrder_668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isPartialOrder_668 v6
du_'8804''45'isPartialOrder_668 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_'8804''45'isPartialOrder_668 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe
         du_'8804''45'isPreorder_660
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
            (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_282 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
            (coe v0)))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Lex.du_antisymmetric_78)
-- Data.List.Relation.Binary.Lex.Strict._._.≤-isDecPartialOrder
d_'8804''45'isDecPartialOrder_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_206
d_'8804''45'isDecPartialOrder_706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isDecPartialOrder_706 v6
du_'8804''45'isDecPartialOrder_706 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_206
du_'8804''45'isDecPartialOrder_706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecPartialOrder'46'constructor_8061
      (coe
         du_'8804''45'isPartialOrder_668
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isStrictPartialOrder_540
            (coe v0)))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_decidable_112
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du__'8799'__518 (coe v0)))
      (coe
         du_'8804''45'decidable_656
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du__'8799'__518 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du__'60''63'__520
            (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict._._.≤-isTotalOrder
d_'8804''45'isTotalOrder_758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_'8804''45'isTotalOrder_758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isTotalOrder_758 v6
du_'8804''45'isTotalOrder_758 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
du_'8804''45'isTotalOrder_758 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_15387
      (coe
         du_'8804''45'isPartialOrder_668
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isStrictPartialOrder_540
            (coe v0)))
      (coe
         du_'8804''45'total_552
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_512
               (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_516 (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict._._.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_'8804''45'isDecTotalOrder_810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8804''45'isDecTotalOrder_810 v6
du_'8804''45'isDecTotalOrder_810 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
du_'8804''45'isDecTotalOrder_810 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
      (coe du_'8804''45'isTotalOrder_758 (coe v0))
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_decidable_112
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du__'8799'__518 (coe v0)))
      (coe
         du_'8804''45'decidable_656
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du__'8799'__518 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du__'60''63'__520
            (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict.≤-preorder
d_'8804''45'preorder_868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8804''45'preorder_868 ~v0 ~v1 ~v2 v3
  = du_'8804''45'preorder_868 v3
du_'8804''45'preorder_868 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'8804''45'preorder_868 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe
         du_'8804''45'isPreorder_660
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_112
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0))))
-- Data.List.Relation.Binary.Lex.Strict.≤-partialOrder
d_'8804''45'partialOrder_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_'8804''45'partialOrder_930 ~v0 ~v1 ~v2 v3
  = du_'8804''45'partialOrder_930 v3
du_'8804''45'partialOrder_930 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_'8804''45'partialOrder_930 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      (coe
         du_'8804''45'isPartialOrder_668
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_494
            (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict.≤-decPoset
d_'8804''45'decPoset_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_360
d_'8804''45'decPoset_994 ~v0 ~v1 ~v2 v3
  = du_'8804''45'decPoset_994 v3
du_'8804''45'decPoset_994 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_360
du_'8804''45'decPoset_994 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecPoset'46'constructor_5757
      (coe
         du_'8804''45'isDecPartialOrder_706
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_886
            (coe v0)))
-- Data.List.Relation.Binary.Lex.Strict.≤-decTotalOrder
d_'8804''45'decTotalOrder_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_'8804''45'decTotalOrder_1072 ~v0 ~v1 ~v2 v3
  = du_'8804''45'decTotalOrder_1072 v3
du_'8804''45'decTotalOrder_1072 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
du_'8804''45'decTotalOrder_1072 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      (coe
         du_'8804''45'isDecTotalOrder_810
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_886
            (coe v0)))
