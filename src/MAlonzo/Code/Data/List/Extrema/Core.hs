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

module MAlonzo.Code.Data.List.Extrema.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.LiftedChoice
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Max
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Min
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Data.List.Extrema.Core._._<_
d__'60'__82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> ()
d__'60'__82 = erased
-- Data.List.Extrema.Core._._⊓_
d__'8851'__182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8851'__182 ~v0 ~v1 ~v2 v3 = du__'8851'__182 v3
du__'8851'__182 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8851'__182 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du__'8851'__80
      (coe v0)
-- Data.List.Extrema.Core.<-transʳ
d_'60''45'trans'691'_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'trans'691'_278 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'60''45'trans'691'_278 v3 v4 v5 v6
du_'60''45'trans'691'_278 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'trans'691'_278 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_268
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_84
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674
                  (coe v0)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
      (let v4
             = MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674
                 (coe v0) in
       let v5
             = MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                 (coe v4) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_100
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v5)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.<-transˡ
d_'60''45'trans'737'_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'trans'737'_280 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'60''45'trans'737'_280 v3 v4 v5 v6
du_'60''45'trans'737'_280 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'trans'737'_280 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45''8804''45'trans_250
      (let v4
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_702 (coe v0) in
       let v5
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_preorder_326 (coe v4) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v5))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_84
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674
                  (coe v0)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_antisym_172
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
      (let v4
             = MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674
                 (coe v0) in
       let v5
             = MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                 (coe v4) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_106
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170 (coe v5)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core._.lemma₁
d_lemma'8321'_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma'8321'_296 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_lemma'8321'_296 v3 v6 v7 v8 v9 v10 v11
du_lemma'8321'_296 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma'8321'_296 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
      (coe v1 v3) (coe v1 v2) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0))
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
-- Data.List.Extrema.Core._.lemma₂
d_lemma'8322'_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma'8322'_308 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_lemma'8322'_308 v3 v6 v7 v8 v9 v10 v11
du_lemma'8322'_308 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma'8322'_308 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
      (coe v1 v2) (coe v1 v3) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0))
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
-- Data.List.Extrema.Core._.lemma₃
d_lemma'8323'_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lemma'8323'_320 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_lemma'8323'_320 v3 v6 v7 v8 v9 v10 v11
du_lemma'8323'_320 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lemma'8323'_320 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'60''45'trans'691'_278 v0 (coe v1 v3) (coe v1 v2) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0))
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
-- Data.List.Extrema.Core._.lemma₄
d_lemma'8324'_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lemma'8324'_332 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_lemma'8324'_332 v3 v6 v7 v8 v9 v10 v11
du_lemma'8324'_332 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lemma'8324'_332 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'60''45'trans'691'_278 v0 (coe v1 v2) (coe v1 v3) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0))
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
-- Data.List.Extrema.Core.⊓ᴸ
d_'8851''7480'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''7480'_338 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_'8851''7480'_338 v3
du_'8851''7480'_338 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''7480'_338 v0
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_Lift_30
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0)))
-- Data.List.Extrema.Core.⊔ᴸ
d_'8852''7480'_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''7480'_340 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_'8852''7480'_340 v3
du_'8852''7480'_340 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''7480'_340 v0
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_Lift_30
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                 (coe v0) in
       let v2
             = coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_1806
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v1))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v2)))
-- Data.List.Extrema.Core.⊓ᴸ-sel
d_'8851''7480''45'sel_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''7480''45'sel_344 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
  = du_'8851''7480''45'sel_344 v3 v6
du_'8851''7480''45'sel_344 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''7480''45'sel_344 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_sel'45''8801'_134
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0)))
      (coe v1)
-- Data.List.Extrema.Core.⊓ᴸ-presᵒ-≤v
d_'8851''7480''45'pres'7506''45''8804'v_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_'8851''7480''45'pres'7506''45''8804'v_356 ~v0 ~v1 ~v2 v3 ~v4 ~v5
                                            v6 v7
  = du_'8851''7480''45'pres'7506''45''8804'v_356 v3 v6 v7
du_'8851''7480''45'pres'7506''45''8804'v_356 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8851''7480''45'pres'7506''45''8804'v_356 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7506'_418
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 ->
            coe
              du_lemma'8321'_296 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
      (coe
         (\ v3 v4 ->
            coe
              du_lemma'8322'_308 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
-- Data.List.Extrema.Core.⊓ᴸ-presᵒ-<v
d_'8851''7480''45'pres'7506''45''60'v_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''7480''45'pres'7506''45''60'v_368 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
                                          v7
  = du_'8851''7480''45'pres'7506''45''60'v_368 v3 v6 v7
du_'8851''7480''45'pres'7506''45''60'v_368 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''7480''45'pres'7506''45''60'v_368 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7506'_418
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 ->
            coe
              du_lemma'8323'_320 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
      (coe
         (\ v3 v4 ->
            coe
              du_lemma'8324'_332 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
-- Data.List.Extrema.Core.⊓ᴸ-presᵇ-v≤
d_'8851''7480''45'pres'7495''45'v'8804'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''7480''45'pres'7495''45'v'8804'_380 ~v0 ~v1 ~v2 v3 ~v4 ~v5
                                            v6 ~v7 v8 v9
  = du_'8851''7480''45'pres'7495''45'v'8804'_380 v3 v6 v8 v9
du_'8851''7480''45'pres'7495''45'v'8804'_380 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''7480''45'pres'7495''45'v'8804'_380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7495'_538
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.⊓ᴸ-presᵇ-v<
d_'8851''7480''45'pres'7495''45'v'60'_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''7480''45'pres'7495''45'v'60'_396 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
                                          ~v7 v8 v9
  = du_'8851''7480''45'pres'7495''45'v'60'_396 v3 v6 v8 v9
du_'8851''7480''45'pres'7495''45'v'60'_396 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''7480''45'pres'7495''45'v'60'_396 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7495'_538
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.⊓ᴸ-forcesᵇ-v≤
d_'8851''7480''45'forces'7495''45'v'8804'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''7480''45'forces'7495''45'v'8804'_412 ~v0 ~v1 ~v2 v3 ~v4
                                              ~v5 v6 v7
  = du_'8851''7480''45'forces'7495''45'v'8804'_412 v3 v6 v7
du_'8851''7480''45'forces'7495''45'v'8804'_412 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''7480''45'forces'7495''45'v'8804'_412 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_forces'7495'_580
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
            (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_84
              (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
              v2 (coe v1 v3) (coe v1 v4) v5
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
                    (coe v0))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_84
              (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
              v2 (coe v1 v4) (coe v1 v3) v5
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732 (coe v0))
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_162
                    (coe v0))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
-- Data.List.Extrema.Core.⊔ᴸ-sel
d_'8852''7480''45'sel_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8852''7480''45'sel_428 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
  = du_'8852''7480''45'sel_428 v3 v6
du_'8852''7480''45'sel_428 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8852''7480''45'sel_428 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_sel'45''8801'_134
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                 (coe v0) in
       let v3
             = coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v2))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v3)))
      (coe v1)
-- Data.List.Extrema.Core.⊔ᴸ-presᵒ-v≤
d_'8852''7480''45'pres'7506''45'v'8804'_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_'8852''7480''45'pres'7506''45'v'8804'_440 ~v0 ~v1 ~v2 v3 ~v4 ~v5
                                            v6 v7
  = du_'8852''7480''45'pres'7506''45'v'8804'_440 v3 v6 v7
du_'8852''7480''45'pres'7506''45'v'8804'_440 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8852''7480''45'pres'7506''45'v'8804'_440 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7506'_418
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                 (coe v0) in
       let v4
             = coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v3))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v4)))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_84
              (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
              v2 (coe v1 v3) (coe v1 v4) v5
              (let v7
                     = coe
                         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                         (coe v0) in
               let v8
                     = coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                         (coe v0) in
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                    (coe v7))
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                    (coe v8))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_84
              (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
              v2 (coe v1 v4) (coe v1 v3) v5
              (let v7
                     = coe
                         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                         (coe v0) in
               let v8
                     = coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                         (coe v0) in
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                    (coe v7))
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                    (coe v8))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
-- Data.List.Extrema.Core.⊔ᴸ-presᵒ-v<
d_'8852''7480''45'pres'7506''45'v'60'_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''7480''45'pres'7506''45'v'60'_462 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
                                          v7
  = du_'8852''7480''45'pres'7506''45'v'60'_462 v3 v6 v7
du_'8852''7480''45'pres'7506''45'v'60'_462 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''7480''45'pres'7506''45'v'60'_462 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7506'_418
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                 (coe v0) in
       let v4
             = coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v3))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v4)))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              du_'60''45'trans'737'_280 v0 v2 (coe v1 v3) (coe v1 v4) v5
              (let v7
                     = coe
                         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                         (coe v0) in
               let v8
                     = coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                         (coe v0) in
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                    (coe v7))
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                    (coe v8))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              du_'60''45'trans'737'_280 v0 v2 (coe v1 v4) (coe v1 v3) v5
              (let v7
                     = coe
                         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                         (coe v0) in
               let v8
                     = coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                         (coe v0) in
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                    (coe v7))
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                    (coe v8))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
-- Data.List.Extrema.Core.⊔ᴸ-presᵇ-≤v
d_'8852''7480''45'pres'7495''45''8804'v_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''7480''45'pres'7495''45''8804'v_484 ~v0 ~v1 ~v2 v3 ~v4 ~v5
                                            v6 ~v7 v8 v9
  = du_'8852''7480''45'pres'7495''45''8804'v_484 v3 v6 v8 v9
du_'8852''7480''45'pres'7495''45''8804'v_484 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''7480''45'pres'7495''45''8804'v_484 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7495'_538
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                 (coe v0) in
       let v5
             = coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v4))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v5)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.⊔ᴸ-presᵇ-<v
d_'8852''7480''45'pres'7495''45''60'v_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''7480''45'pres'7495''45''60'v_500 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
                                          ~v7 v8 v9
  = du_'8852''7480''45'pres'7495''45''60'v_500 v3 v6 v8 v9
du_'8852''7480''45'pres'7495''45''60'v_500 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''7480''45'pres'7495''45''60'v_500 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7495'_538
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                 (coe v0) in
       let v5
             = coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v4))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v5)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.⊔ᴸ-forcesᵇ-≤v
d_'8852''7480''45'forces'7495''45''8804'v_516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''7480''45'forces'7495''45''8804'v_516 ~v0 ~v1 ~v2 v3 ~v4
                                              ~v5 v6 v7
  = du_'8852''7480''45'forces'7495''45''8804'v_516 v3 v6 v7
du_'8852''7480''45'forces'7495''45''8804'v_516 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_652 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''7480''45'forces'7495''45''8804'v_516 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_forces'7495'_580
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                 (coe v0) in
       let v4
             = coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                 (coe v0) in
       coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_1858
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
            (coe v3))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
            (coe v4)))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_84
              (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
              (coe v1 v4) (coe v1 v3) v2
              (let v7
                     = coe
                         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                         (coe v0) in
               let v8
                     = coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                         (coe v0) in
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_1890
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                    (coe v7))
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                    (coe v8))
                 (coe v1 v3) (coe v1 v4) (coe v6))
              v5))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d_trans_84
              (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_170
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_392
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_674 (coe v0))))
              (coe v1 v3) (coe v1 v4) v2
              (let v7
                     = coe
                         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_732
                         (coe v0) in
               let v8
                     = coe
                         MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_176
                         (coe v0) in
               coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_1922
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du_totalPreorder_718
                    (coe v7))
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_160
                    (coe v8))
                 (coe v1 v3) (coe v1 v4) (coe v6))
              v5))
