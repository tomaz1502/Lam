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

module MAlonzo.Code.Relation.Binary.Construct.On where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Relation.Binary.Construct.On._.implies
d_implies_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_implies_38 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11
  = du_implies_38 v4 v9 v10 v11
du_implies_38 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_implies_38 v0 v1 v2 v3
  = coe
      v1
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
         (\ v4 v5 -> v4) v2 v3)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
         (\ v4 v5 -> v5) v0 v2 v3)
-- Relation.Binary.Construct.On._.reflexive
d_reflexive_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_reflexive_44 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8
  = du_reflexive_44 v4 v7 v8
du_reflexive_44 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_reflexive_44 v0 v1 v2
  = coe
      v1
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
         (\ v3 v4 -> v3) v2 v2)
-- Relation.Binary.Construct.On._.irreflexive
d_irreflexive_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_irreflexive_52 = erased
-- Relation.Binary.Construct.On._.symmetric
d_symmetric_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_symmetric_58 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
  = du_symmetric_58 v4 v7 v8 v9
du_symmetric_58 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_symmetric_58 v0 v1 v2 v3
  = coe
      v1
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
         (\ v4 v5 -> v4) v2 v3)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
         (\ v4 v5 -> v5) v0 v2 v3)
-- Relation.Binary.Construct.On._.transitive
d_transitive_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_transitive_64 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10
  = du_transitive_64 v4 v7 v8 v9 v10
du_transitive_64 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_transitive_64 v0 v1 v2 v3 v4
  = coe
      v1
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
         (\ v5 v6 -> v5) v2 v3)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
         (\ v5 v6 -> v6) v0 v2 v3)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
         (\ v5 v6 -> v6) v0 v3 v4)
-- Relation.Binary.Construct.On._.antisymmetric
d_antisymmetric_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisymmetric_72 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11
  = du_antisymmetric_72 v4 v9 v10 v11
du_antisymmetric_72 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisymmetric_72 v0 v1 v2 v3
  = coe
      v1
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
         (\ v4 v5 -> v4) v2 v3)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
         (\ v4 v5 -> v5) v0 v2 v3)
-- Relation.Binary.Construct.On._.asymmetric
d_asymmetric_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4
d_asymmetric_78 = erased
-- Relation.Binary.Construct.On._.respects
d_respects_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_respects_86 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11
  = du_respects_86 v4 v9 v10 v11
du_respects_86 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_respects_86 v0 v1 v2 v3
  = coe
      v1
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
         (\ v4 v5 -> v4) v2 v3)
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
         (\ v4 v5 -> v5) v0 v2 v3)
-- Relation.Binary.Construct.On._.respects₂
d_respects'8322'_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_respects'8322'_94 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_respects'8322'_94 v4 v9
du_respects'8322'_94 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_respects'8322'_94 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v4 v5 v6 ->
                   coe
                     v2
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
                        (\ v7 v8 -> v7) v4 v5)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
                        (\ v7 v8 -> v7) v5 v6)
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                        (\ v7 v8 -> v8) v0 v5 v6)))
             (coe
                (\ v4 v5 v6 ->
                   coe
                     v3
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                        (\ v7 v8 -> v8) v0 v5 v4)
                     (coe
                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_302 v0
                        (\ v7 v8 -> v7) v5 v6)
                     (coe
                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__308
                        (\ v7 v8 -> v8) v0 v5 v6)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.On._.decidable
d_decidable_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_decidable_102 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
  = du_decidable_102 v4 v7 v8 v9
du_decidable_102 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_decidable_102 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
-- Relation.Binary.Construct.On._.total
d_total_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_112 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
  = du_total_112 v4 v7 v8 v9
du_total_112 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_112 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
-- Relation.Binary.Construct.On._.trichotomous
d_trichotomous_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
d_trichotomous_124 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11
  = du_trichotomous_124 v4 v9 v10 v11
du_trichotomous_124 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_136
du_trichotomous_124 v0 v1 v2 v3 = coe v1 (coe v0 v2) (coe v0 v3)
-- Relation.Binary.Construct.On._.accessible
d_accessible_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_accessible_136 = erased
-- Relation.Binary.Construct.On._.wellFounded
d_wellFounded_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  AgdaAny -> MAlonzo.Code.Induction.WellFounded.T_Acc_42
d_wellFounded_146 = erased
-- Relation.Binary.Construct.On._.isEquivalence
d_isEquivalence_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_166 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 v7
  = du_isEquivalence_166 v5 v7
du_isEquivalence_166 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_166 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
      (coe
         du_reflexive_44 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v1)))
      (coe
         du_symmetric_58 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_sym_36 (coe v1)))
      (coe
         du_transitive_64 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v1)))
-- Relation.Binary.Construct.On._.isDecEquivalence
d_isDecEquivalence_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_186 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 v7
  = du_isDecEquivalence_186 v5 v7
du_isDecEquivalence_186 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_186 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_1689
      (coe
         du_isEquivalence_166 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
            (coe v1)))
      (coe
         du_decidable_102 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__52 (coe v1)))
-- Relation.Binary.Construct.On._.isPreorder
d_isPreorder_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_isPreorder_228 v6 v9
du_isPreorder_228 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_228 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         du_isEquivalence_166 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe v1)))
      (coe
         du_implies_38 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 (coe v1)))
      (coe
         du_transitive_64 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_84 (coe v1)))
-- Relation.Binary.Construct.On._.isPartialOrder
d_isPartialOrder_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_isPartialOrder_264 v6 v9
du_isPartialOrder_264 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_isPartialOrder_264 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe
         du_isPreorder_228 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1)))
      (coe
         du_antisymmetric_72 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_172 (coe v1)))
-- Relation.Binary.Construct.On._.isDecPartialOrder
d_isDecPartialOrder_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_206
d_isDecPartialOrder_304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_isDecPartialOrder_304 v6 v9
du_isDecPartialOrder_304 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_206 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_206
du_isDecPartialOrder_304 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecPartialOrder'46'constructor_8061
      (coe
         du_isPartialOrder_264 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_216
            (coe v1)))
      (coe
         du_decidable_102 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__218 (coe v1)))
      (coe
         du_decidable_102 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__220
            (coe v1)))
-- Relation.Binary.Construct.On._.isStrictPartialOrder
d_isStrictPartialOrder_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_isStrictPartialOrder_356 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_isStrictPartialOrder_356 v6 v9
du_isStrictPartialOrder_356 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_isStrictPartialOrder_356 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_9921
      (coe
         du_isEquivalence_166 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
            (coe v1)))
      (coe
         du_transitive_64 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_282 (coe v1)))
      (coe
         du_respects'8322'_94 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
            (coe v1)))
-- Relation.Binary.Construct.On._.isTotalOrder
d_isTotalOrder_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_isTotalOrder_394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_isTotalOrder_394 v6 v9
du_isTotalOrder_394 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
du_isTotalOrder_394 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_15387
      (coe
         du_isPartialOrder_264 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
            (coe v1)))
      (coe
         du_total_112 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_total_394 (coe v1)))
-- Relation.Binary.Construct.On._.isDecTotalOrder
d_isDecTotalOrder_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_isDecTotalOrder_440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_isDecTotalOrder_440 v6 v9
du_isDecTotalOrder_440 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
du_isDecTotalOrder_440 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
      (coe
         du_isTotalOrder_394 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_444
            (coe v1)))
      (coe
         du_decidable_102 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__446 (coe v1)))
      (coe
         du_decidable_102 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__448
            (coe v1)))
-- Relation.Binary.Construct.On._.isStrictTotalOrder
d_isStrictTotalOrder_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
d_isStrictTotalOrder_500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_isStrictTotalOrder_500 v6 v9
du_isStrictTotalOrder_500 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_502
du_isStrictTotalOrder_500 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictTotalOrder'46'constructor_19043
      (coe
         du_isEquivalence_166 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_512
            (coe v1)))
      (coe
         du_transitive_64 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_514 (coe v1)))
      (coe
         du_trichotomous_124 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_compare_516 (coe v1)))
-- Relation.Binary.Construct.On.preorder
d_preorder_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_554 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_preorder_554 v5 v6
du_preorder_554 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_preorder_554 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe
         du_isPreorder_228 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v0)))
-- Relation.Binary.Construct.On.setoid
d_setoid_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_562 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_setoid_562 v4 v5
du_setoid_562 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_562 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (coe
         du_isEquivalence_166 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
-- Relation.Binary.Construct.On.decSetoid
d_decSetoid_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_decSetoid_570 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_decSetoid_570 v4 v5
du_decSetoid_570 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
du_decSetoid_570 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1131
      (coe
         du_isDecEquivalence_186 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecEquivalence_100
            (coe v0)))
-- Relation.Binary.Construct.On.poset
d_poset_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_578 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_poset_578 v5 v6
du_poset_578 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
du_poset_578 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      (coe
         du_isPartialOrder_264 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_304
            (coe v0)))
-- Relation.Binary.Construct.On.decPoset
d_decPoset_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_360 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_360
d_decPoset_586 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_decPoset_586 v5 v6
du_decPoset_586 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_360 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecPoset_360
du_decPoset_586 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecPoset'46'constructor_5757
      (coe
         du_isDecPartialOrder_304 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecPartialOrder_382
            (coe v0)))
-- Relation.Binary.Construct.On.strictPartialOrder
d_strictPartialOrder_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
d_strictPartialOrder_594 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_strictPartialOrder_594 v5 v6
du_strictPartialOrder_594 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictPartialOrder_472
du_strictPartialOrder_594 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictPartialOrder'46'constructor_7693
      (coe
         du_isStrictPartialOrder_356 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictPartialOrder_494
            (coe v0)))
-- Relation.Binary.Construct.On.totalOrder
d_totalOrder_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
d_totalOrder_602 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_totalOrder_602 v5 v6
du_totalOrder_602 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652
du_totalOrder_602 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_TotalOrder'46'constructor_10811
      (coe
         du_isTotalOrder_394 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0)))
-- Relation.Binary.Construct.On.decTotalOrder
d_decTotalOrder_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_decTotalOrder_610 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_decTotalOrder_610 v5 v6
du_decTotalOrder_610 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
du_decTotalOrder_610 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      (coe
         du_isDecTotalOrder_440 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecTotalOrder_762
            (coe v0)))
-- Relation.Binary.Construct.On.strictTotalOrder
d_strictTotalOrder_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
d_strictTotalOrder_618 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_strictTotalOrder_618 v5 v6
du_strictTotalOrder_618 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_StrictTotalOrder_864
du_strictTotalOrder_618 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_StrictTotalOrder'46'constructor_14573
      (coe
         du_isStrictTotalOrder_500 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isStrictTotalOrder_886
            (coe v0)))
