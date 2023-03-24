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

module MAlonzo.Code.Data.List.Membership.DecPropositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Membership.DecSetoid
import qualified MAlonzo.Code.Data.List.Membership.Propositional
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary

-- Data.List.Membership.DecPropositional._._∈_
d__'8712'__16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> [AgdaAny] -> ()
d__'8712'__16 = erased
-- Data.List.Membership.DecPropositional._._∉_
d__'8713'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> [AgdaAny] -> ()
d__'8713'__18 = erased
-- Data.List.Membership.DecPropositional._._≢∈_
d__'8802''8712'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> ()
d__'8802''8712'__20 = erased
-- Data.List.Membership.DecPropositional._.find
d_find_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_find_22 ~v0 ~v1 ~v2 = du_find_22
du_find_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_find_22 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du_find_80
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
      v2 v3
-- Data.List.Membership.DecPropositional._.lose
d_lose_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lose_24 ~v0 ~v1 ~v2 = du_lose_24
du_lose_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_lose_24 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Membership.Propositional.du_lose_54 v2 v3
-- Data.List.Membership.DecPropositional._.map-with-∈
d_map'45'with'45''8712'_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  [AgdaAny]
d_map'45'with'45''8712'_26 ~v0 ~v1 ~v2
  = du_map'45'with'45''8712'_26
du_map'45'with'45''8712'_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  [AgdaAny]
du_map'45'with'45''8712'_26
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du_map'45'with'45''8712'_98
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
-- Data.List.Membership.DecPropositional._.mapWith∈
d_mapWith'8712'_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  [AgdaAny]
d_mapWith'8712'_28 ~v0 ~v1 ~v2 = du_mapWith'8712'_28
du_mapWith'8712'_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  [AgdaAny]
du_mapWith'8712'_28 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du_mapWith'8712'_58
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
      v2 v3
-- Data.List.Membership.DecPropositional._._∷=_
d__'8759''61'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> [AgdaAny]
d__'8759''61'__30 ~v0 ~v1 ~v2 = du__'8759''61'__30
du__'8759''61'__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> [AgdaAny]
du__'8759''61'__30 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du__'8759''61'__102 v3 v5
      v6
-- Data.List.Membership.DecPropositional._._─_
d__'9472'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> [AgdaAny]
d__'9472'__32 ~v0 ~v1 ~v2 = du__'9472'__32
du__'9472'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> [AgdaAny]
du__'9472'__32 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du__'9472'__114 v4 v5
-- Data.List.Membership.DecPropositional._._∈?_
d__'8712''63'__36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8712''63'__36 ~v0 ~v1 v2 = du__'8712''63'__36 v2
du__'8712''63'__36 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8712''63'__36 v0
  = coe
      MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8712''63'__62
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_254
         (coe v0))
-- Data.List.Membership.DecPropositional._._∉?_
d__'8713''63'__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8713''63'__38 ~v0 ~v1 v2 = du__'8713''63'__38 v2
du__'8713''63'__38 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8713''63'__38 v0
  = coe
      MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8713''63'__70
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_254
         (coe v0))
