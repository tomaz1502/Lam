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

module MAlonzo.Code.Relation.Binary.Construct.Intersection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Product

-- Relation.Binary.Construct.Intersection._∩_
d__'8745'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d__'8745'__20 = erased
-- Relation.Binary.Construct.Intersection._.reflexive
d_reflexive_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reflexive_46 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_reflexive_46 v6 v7 v8
du_reflexive_46 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reflexive_46 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0 v2) (coe v1 v2)
-- Relation.Binary.Construct.Intersection._.symmetric
d_symmetric_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_symmetric_52 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_symmetric_52 v6 v7 v8 v9
du_symmetric_52 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_symmetric_52 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.du_map_148 (coe v0 v2 v3)
      (coe (\ v4 -> coe v1 v2 v3))
-- Relation.Binary.Construct.Intersection._.transitive
d_transitive_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_transitive_58 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_transitive_58 v6 v7 v8 v9 v10
du_transitive_58 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_transitive_58 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Product.du_zip_218 (coe v0 v2 v3 v4)
      (coe (\ v5 v6 -> coe v1 v2 v3 v4))
-- Relation.Binary.Construct.Intersection._.respects
d_respects_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_respects_68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
  = du_respects_68 v8 v9 v10 v11
du_respects_68 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_respects_68 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
             (coe (\ v6 -> coe v6 v1 v2 v4)) (coe (\ v6 -> coe v6 v1 v2 v5))
             (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Intersection._.min
d_min_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_min_84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_min_84 v7 v8
du_min_84 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_min_84 v0 v1
  = coe
      MAlonzo.Code.Data.Product.du_'60'_'44'_'62'_132 (coe v0) (coe v1)
-- Relation.Binary.Construct.Intersection._.max
d_max_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_max_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_max_92 v7 v8
du_max_92 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_max_92 v0 v1
  = coe
      MAlonzo.Code.Data.Product.du_'60'_'44'_'62'_132 (coe v0) (coe v1)
-- Relation.Binary.Construct.Intersection._.implies
d_implies_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_implies_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11 v12
              v13
  = du_implies_122 v10 v11 v12 v13
du_implies_122 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_implies_122 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.du_'60'_'44'_'62'_132 (coe v0 v2 v3)
      (coe v1 v2 v3)
-- Relation.Binary.Construct.Intersection._.irreflexive
d_irreflexive_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_irreflexive_152 = erased
-- Relation.Binary.Construct.Intersection._.respectsˡ
d_respects'737'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_respects'737'_186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
                    v12 v13
  = du_respects'737'_186 v8 v9 v10 v11 v12 v13
du_respects'737'_186 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_respects'737'_186 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.Product.du_map_148 (coe v0 v2 v3 v4 v5)
      (coe (\ v6 -> coe v1 v2 v3 v4 v5))
-- Relation.Binary.Construct.Intersection._.respectsʳ
d_respects'691'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_respects'691'_194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
                    v12 v13
  = du_respects'691'_194 v8 v9 v10 v11 v12 v13
du_respects'691'_194 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_respects'691'_194 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.Product.du_map_148 (coe v0 v2 v3 v4 v5)
      (coe (\ v6 -> coe v1 v2 v3 v4 v5))
-- Relation.Binary.Construct.Intersection._.respects₂
d_respects'8322'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_respects'8322'_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_respects'8322'_202 v8 v9
du_respects'8322'_202 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_respects'8322'_202 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe du_respects'691'_194 (coe v2) (coe v4))
                    (coe du_respects'737'_186 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Intersection._.antisymmetric
d_antisymmetric_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_antisymmetric_212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
                    v12
  = du_antisymmetric_212 v8 v9 v10 v11 v12
du_antisymmetric_212 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_antisymmetric_212 v0 v1 v2 v3 v4
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                      -> coe v5 v1 v2 v6 v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                      -> coe v5 v1 v2 v7 v9
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Intersection._.decidable
d_decidable_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_decidable_246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
  = du_decidable_246 v8 v9 v10 v11
du_decidable_246 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_decidable_246 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Product.du__'215''45'dec__30
      (coe v0 v2 v3) (coe v1 v2 v3)
-- Relation.Binary.Construct.Intersection._.isEquivalence
d_isEquivalence_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_isEquivalence_272 v6 v7
du_isEquivalence_272 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_272 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
      (coe
         du_reflexive_46
         (coe MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v1)))
      (coe
         du_symmetric_52
         (coe MAlonzo.Code.Relation.Binary.Structures.d_sym_36 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_sym_36 (coe v1)))
      (coe
         du_transitive_58
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v1)))
-- Relation.Binary.Construct.Intersection._.isDecEquivalence
d_isDecEquivalence_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_isDecEquivalence_306 v6 v7
du_isDecEquivalence_306 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_306 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_1689
      (coe
         du_isEquivalence_272
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
            (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
            (coe v1)))
      (coe
         du_decidable_246
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__52 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__52 (coe v1)))
-- Relation.Binary.Construct.Intersection._.isPreorder
d_isPreorder_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_isPreorder_368 v8 v9
du_isPreorder_368 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_368 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe v0))
      (coe
         du_implies_122
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 (coe v0))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 (coe v1)))
      (coe
         du_transitive_58
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_84 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_84 (coe v1)))
-- Relation.Binary.Construct.Intersection._.isPartialOrderˡ
d_isPartialOrder'737'_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder'737'_434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_isPartialOrder'737'_434 v8 v9
du_isPartialOrder'737'_434 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_isPartialOrder'737'_434 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe
         du_isPreorder_368
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v0))
         (coe v1))
      (coe
         du_antisymmetric_212
         (coe
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_antisym_172 (coe v0))))
-- Relation.Binary.Construct.Intersection._.isPartialOrderʳ
d_isPartialOrder'691'_504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_isPartialOrder'691'_504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_isPartialOrder'691'_504 v8 v9
du_isPartialOrder'691'_504 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_isPartialOrder'691'_504 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe
         du_isPreorder_368 (coe v0)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v1)))
      (coe
         du_antisymmetric_212
         (coe
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_antisym_172 (coe v1))))
-- Relation.Binary.Construct.Intersection._.isStrictPartialOrderˡ
d_isStrictPartialOrder'737'_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_isStrictPartialOrder'737'_574 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
                                v9 v10
  = du_isStrictPartialOrder'737'_574 v8 v9 v10
du_isStrictPartialOrder'737'_574 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_isStrictPartialOrder'737'_574 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_9921
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
         (coe v0))
      (coe
         du_transitive_58
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_282 (coe v0))
         (coe v1))
      (coe
         du_respects'8322'_202
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
            (coe v0))
         (coe v2))
-- Relation.Binary.Construct.Intersection._.isStrictPartialOrderʳ
d_isStrictPartialOrder'691'_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_isStrictPartialOrder'691'_616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
                                v9 v10
  = du_isStrictPartialOrder'691'_616 v8 v9 v10
du_isStrictPartialOrder'691'_616 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_isStrictPartialOrder'691'_616 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_9921
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
         (coe v2))
      (coe
         du_transitive_58 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_282 (coe v2)))
      (coe
         du_respects'8322'_202 (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_284
            (coe v2)))
