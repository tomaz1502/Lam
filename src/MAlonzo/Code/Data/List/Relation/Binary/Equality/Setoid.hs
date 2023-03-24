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

module MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Data.List.Relation.Binary.Equality.Setoid._.AllPairs
d_AllPairs_20 a0 a1 a2 a3 = ()
-- Data.List.Relation.Binary.Equality.Setoid._≋_
d__'8779'__58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8779'__58 = erased
-- Data.List.Relation.Binary.Equality.Setoid.≋-refl
d_'8779''45'refl_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'8779''45'refl_60 ~v0 ~v1 v2 v3 = du_'8779''45'refl_60 v2 v3
du_'8779''45'refl_60 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'8779''45'refl_60 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_refl_30
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
      (coe v1)
-- Data.List.Relation.Binary.Equality.Setoid.≋-reflexive
d_'8779''45'reflexive_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'8779''45'reflexive_62 ~v0 ~v1 v2 v3 ~v4 ~v5
  = du_'8779''45'reflexive_62 v2 v3
du_'8779''45'reflexive_62 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'8779''45'reflexive_62 v0 v1
  = coe du_'8779''45'refl_60 (coe v0) (coe v1)
-- Data.List.Relation.Binary.Equality.Setoid.≋-sym
d_'8779''45'sym_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'8779''45'sym_64 ~v0 ~v1 v2 v3 v4 = du_'8779''45'sym_64 v2 v3 v4
du_'8779''45'sym_64 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'8779''45'sym_64 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_symmetric_40
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
      (coe v1) (coe v2)
-- Data.List.Relation.Binary.Equality.Setoid.≋-trans
d_'8779''45'trans_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'8779''45'trans_66 ~v0 ~v1 v2 v3 v4 v5
  = du_'8779''45'trans_66 v2 v3 v4 v5
du_'8779''45'trans_66 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'8779''45'trans_66 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_transitive_50
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Relation.Binary.Equality.Setoid.≋-isEquivalence
d_'8779''45'isEquivalence_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8779''45'isEquivalence_68 ~v0 ~v1 v2
  = du_'8779''45'isEquivalence_68 v2
du_'8779''45'isEquivalence_68 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'8779''45'isEquivalence_68 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_isEquivalence_56
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
-- Data.List.Relation.Binary.Equality.Setoid.≋-setoid
d_'8779''45'setoid_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8779''45'setoid_70 ~v0 ~v1 v2 = du_'8779''45'setoid_70 v2
du_'8779''45'setoid_70 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_'8779''45'setoid_70 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_setoid_176
      (coe v0)
-- Data.List.Relation.Binary.Equality.Setoid.Unique-resp-≋
d_Unique'45'resp'45''8779'_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
d_Unique'45'resp'45''8779'_72 ~v0 ~v1 v2 v3 v4
  = du_Unique'45'resp'45''8779'_72 v2 v3 v4
du_Unique'45'resp'45''8779'_72 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T_AllPairs_20
du_Unique'45'resp'45''8779'_72 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_AllPairs'45'resp'45'Pointwise_228
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v3 v4 v5 v6 v7 v8 ->
               coe
                 v7
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                    (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                    v3 v5 v4 v8
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                       (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                       v4 v5 v6))))
         (coe
            (\ v3 v4 v5 v6 v7 v8 ->
               coe
                 v7
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                    (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0))
                    v4 v5 v3 v6 v8))))
      (coe v1) (coe v2)
-- Data.List.Relation.Binary.Equality.Setoid.≋-length
d_'8779''45'length_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8779''45'length_78 = erased
-- Data.List.Relation.Binary.Equality.Setoid._._≋′_
d__'8779''8242'__94 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8779''8242'__94 = erased
-- Data.List.Relation.Binary.Equality.Setoid._.map⁺
d_map'8314'_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_map'8314'_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_map'8314'_102 v7 v8 v9 v10
du_map'8314'_102 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_map'8314'_102 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_map'8314'_382
      (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.du_map_120
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Data.List.Relation.Binary.Equality.Setoid.foldr⁺
d_foldr'8314'_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  AgdaAny
d_foldr'8314'_130 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_foldr'8314'_130 v3 v4 v5 v6 v7 v8 v9 v10 v11
du_foldr'8314'_130 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  AgdaAny
du_foldr'8314'_130 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_foldr'8314'_434
      (coe v3) (coe v4) (coe v0) (coe v1) (coe v2) (coe v5) (coe v6)
      (coe v7) (coe v8)
-- Data.List.Relation.Binary.Equality.Setoid.++⁺
d_'43''43''8314'_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'43''43''8314'_146 ~v0 ~v1 ~v2 v3 v4 ~v5 ~v6
  = du_'43''43''8314'_146 v3 v4
du_'43''43''8314'_146 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'43''43''8314'_146 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_'43''43''8314'_290
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Equality.Setoid.++-cancelˡ
d_'43''43''45'cancel'737'_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'43''43''45'cancel'737'_154 ~v0 ~v1 ~v2 v3 ~v4 ~v5
  = du_'43''43''45'cancel'737'_154 v3
du_'43''43''45'cancel'737'_154 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'43''43''45'cancel'737'_154 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_'43''43''45'cancel'737'_302
      (coe v0)
-- Data.List.Relation.Binary.Equality.Setoid.++-cancelʳ
d_'43''43''45'cancel'691'_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'43''43''45'cancel'691'_164 ~v0 ~v1 ~v2 ~v3
  = du_'43''43''45'cancel'691'_164
du_'43''43''45'cancel'691'_164 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'43''43''45'cancel'691'_164
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_'43''43''45'cancel'691'_316
-- Data.List.Relation.Binary.Equality.Setoid.concat⁺
d_concat'8314'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_concat'8314'_170 ~v0 ~v1 ~v2 v3 v4 = du_concat'8314'_170 v3 v4
du_concat'8314'_170 ::
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_concat'8314'_170 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_concat'8314'_350
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Equality.Setoid.tabulate⁺
d_tabulate'8314'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_tabulate'8314'_180 ~v0 ~v1 ~v2 v3 ~v4 ~v5
  = du_tabulate'8314'_180 v3
du_tabulate'8314'_180 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_tabulate'8314'_180 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_tabulate'8314'_258
      (coe v0)
-- Data.List.Relation.Binary.Equality.Setoid.tabulate⁻
d_tabulate'8315'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny
d_tabulate'8315'_190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_tabulate'8315'_190
du_tabulate'8315'_190 ::
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_6 -> AgdaAny
du_tabulate'8315'_190
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_tabulate'8315'_274
-- Data.List.Relation.Binary.Equality.Setoid._.filter⁺
d_filter'8314'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_filter'8314'_208 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 v7 v8 v9
  = du_filter'8314'_208 v5 v7 v8 v9
du_filter'8314'_208 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_filter'8314'_208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_filter'8314'_480
      (coe v0) (coe v0) (coe v1) (coe v2) (coe v3)
-- Data.List.Relation.Binary.Equality.Setoid.ʳ++⁺
d_'691''43''43''8314'_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_'691''43''43''8314'_220 ~v0 ~v1 ~v2 v3 v4 ~v5 ~v6
  = du_'691''43''43''8314'_220 v3 v4
du_'691''43''43''8314'_220 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_'691''43''43''8314'_220 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_'691''43''43''8314'_366
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Equality.Setoid.reverse⁺
d_reverse'8314'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_reverse'8314'_226 ~v0 ~v1 ~v2 v3 v4 = du_reverse'8314'_226 v3 v4
du_reverse'8314'_226 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_reverse'8314'_226 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.du_reverse'8314'_372
      (coe v0) (coe v1)
