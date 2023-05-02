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

module MAlonzo.Code.Relation.Unary.Properties where

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
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Product
import qualified MAlonzo.Code.Relation.Nullary.Sum

-- Relation.Unary.Properties.∅?
d_'8709''63'_20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_'8709''63'_20 ~v0 ~v1 ~v2 = du_'8709''63'_20
du_'8709''63'_20 :: MAlonzo.Code.Relation.Nullary.T_Dec_32
du_'8709''63'_20
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe MAlonzo.Code.Relation.Nullary.C_of'8319'_26)
-- Relation.Unary.Properties.∅-Empty
d_'8709''45'Empty_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.Empty.T_'8869'_4 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8709''45'Empty_22 = erased
-- Relation.Unary.Properties.∁∅-Universal
d_'8705''8709''45'Universal_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.Empty.T_'8869'_4 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8705''8709''45'Universal_26 = erased
-- Relation.Unary.Properties.U?
d_U'63'_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_U'63'_32 ~v0 ~v1 ~v2 = du_U'63'_32
du_U'63'_32 :: MAlonzo.Code.Relation.Nullary.T_Dec_32
du_U'63'_32
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe
         MAlonzo.Code.Relation.Nullary.C_of'696'_22
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Relation.Unary.Properties.U-Universal
d_U'45'Universal_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_U'45'Universal_34 ~v0 ~v1 ~v2 = du_U'45'Universal_34
du_U'45'Universal_34 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_U'45'Universal_34 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Relation.Unary.Properties.∁U-Empty
d_'8705'U'45'Empty_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
   MAlonzo.Code.Data.Empty.T_'8869'_4) ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8705'U'45'Empty_38 = erased
-- Relation.Unary.Properties.∅-⊆
d_'8709''45''8838'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T_'8869'_4 -> AgdaAny
d_'8709''45''8838'_46 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8709''45''8838'_46
du_'8709''45''8838'_46 :: AgdaAny
du_'8709''45''8838'_46 = MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties.⊆-U
d_'8838''45'U_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_'8838''45'U_52 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_'8838''45'U_52
du_'8838''45'U_52 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_'8838''45'U_52 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Relation.Unary.Properties.⊆-refl
d_'8838''45'refl_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'refl_56 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8838''45'refl_56 v5
du_'8838''45'refl_56 :: AgdaAny -> AgdaAny
du_'8838''45'refl_56 v0 = coe v0
-- Relation.Unary.Properties.⊆-trans
d_'8838''45'trans_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'trans_60 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_'8838''45'trans_60 v6 v7 v8 v9
du_'8838''45'trans_60 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'trans_60 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Relation.Unary.Properties.⊂-asym
d_'8834''45'asym_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Empty.T_'8869'_4
d_'8834''45'asym_68 = erased
-- Relation.Unary.Properties.∁?
d_'8705''63'_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d_'8705''63'_74 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_'8705''63'_74 v4 v5
du_'8705''63'_74 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du_'8705''63'_74 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Negation.Core.du_'172''63'_64
      (coe v0 v1)
-- Relation.Unary.Properties._∪?_
d__'8746''63'__84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8746''63'__84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8746''63'__84 v6 v7 v8
du__'8746''63'__84 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8746''63'__84 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Sum.du__'8846''45'dec__32 (coe v0 v2)
      (coe v1 v2)
-- Relation.Unary.Properties._∩?_
d__'8745''63'__96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8745''63'__96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8745''63'__96 v6 v7 v8
du__'8745''63'__96 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8745''63'__96 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Product.du__'215''45'dec__30
      (coe v0 v2) (coe v1 v2)
-- Relation.Unary.Properties._×?_
d__'215''63'__108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'215''63'__108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du__'215''63'__108 v8 v9 v10
du__'215''63'__108 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'215''63'__108 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Product.du__'215''45'dec__30
             (coe v0 v3) (coe v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties._⊙?_
d__'8857''63'__122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8857''63'__122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du__'8857''63'__122 v8 v9 v10
du__'8857''63'__122 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8857''63'__122 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Sum.du__'8846''45'dec__32 (coe v0 v3)
             (coe v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties._⊎?_
d__'8846''63'__136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8846''63'__136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du__'8846''63'__136 v7 v8 v9
du__'8846''63'__136 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8846''63'__136 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3 -> coe v0 v3
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3 -> coe v1 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Unary.Properties._~?
d__'126''63'_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'126''63'_152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du__'126''63'_152 v6 v7
du__'126''63'_152 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.T_Dec_32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'126''63'_152 v0 v1
  = coe v0 (coe MAlonzo.Code.Data.Product.du_swap_386 (coe v1))
