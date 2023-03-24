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

module MAlonzo.Code.Data.Unit where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

-- Data.Unit.setoid
d_setoid_4 :: MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_4
  = coe MAlonzo.Code.Data.Unit.Properties.d_'8801''45'setoid_10
-- Data.Unit.decSetoid
d_decSetoid_6 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_decSetoid_6
  = coe MAlonzo.Code.Data.Unit.Properties.d_'8801''45'decSetoid_12
-- Data.Unit.total
d_total_8 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_8 v0 v1
  = coe MAlonzo.Code.Data.Unit.Properties.du_'8801''45'total_14
-- Data.Unit.poset
d_poset_10 :: MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_poset_10
  = coe MAlonzo.Code.Data.Unit.Properties.d_'8801''45'poset_30
-- Data.Unit.decTotalOrder
d_decTotalOrder_12 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_decTotalOrder_12
  = coe
      MAlonzo.Code.Data.Unit.Properties.d_'8801''45'decTotalOrder_32
-- Data.Unit.preorder
d_preorder_14 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_14
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_preorder_258
