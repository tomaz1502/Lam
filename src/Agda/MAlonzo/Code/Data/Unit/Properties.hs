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

module MAlonzo.Code.Data.Unit.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

-- Data.Unit.Properties.⊤-irrelevant
d_'8868''45'irrelevant_6 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8868''45'irrelevant_6 = erased
-- Data.Unit.Properties._≟_
d__'8799'__8 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8799'__8 ~v0 ~v1 = du__'8799'__8
du__'8799'__8 :: MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8799'__8
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 erased)
-- Data.Unit.Properties.≡-setoid
d_'8801''45'setoid_10 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''45'setoid_10
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250
-- Data.Unit.Properties.≡-decSetoid
d_'8801''45'decSetoid_12 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_84
d_'8801''45'decSetoid_12
  = coe
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_254
      (\ v0 v1 -> coe du__'8799'__8)
-- Data.Unit.Properties.≡-total
d_'8801''45'total_14 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8801''45'total_14 ~v0 ~v1 = du_'8801''45'total_14
du_'8801''45'total_14 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8801''45'total_14
  = coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
-- Data.Unit.Properties.≡-antisym
d_'8801''45'antisym_16 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''45'antisym_16 = erased
-- Data.Unit.Properties.≡-isPreorder
d_'8801''45'isPreorder_20 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8801''45'isPreorder_20
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      (coe (\ v0 v1 v2 -> v2)) erased
-- Data.Unit.Properties.≡-isPartialOrder
d_'8801''45'isPartialOrder_24 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8801''45'isPartialOrder_24
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe d_'8801''45'isPreorder_20) erased
-- Data.Unit.Properties.≡-isTotalOrder
d_'8801''45'isTotalOrder_26 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_'8801''45'isTotalOrder_26
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_15387
      (coe d_'8801''45'isPartialOrder_24)
      (\ v0 v1 -> coe du_'8801''45'total_14)
-- Data.Unit.Properties.≡-isDecTotalOrder
d_'8801''45'isDecTotalOrder_28 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_'8801''45'isDecTotalOrder_28
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
      (coe d_'8801''45'isTotalOrder_26) (\ v0 v1 -> coe du__'8799'__8)
      (\ v0 v1 -> coe du__'8799'__8)
-- Data.Unit.Properties.≡-poset
d_'8801''45'poset_30 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_'8801''45'poset_30
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      d_'8801''45'isPartialOrder_24
-- Data.Unit.Properties.≡-decTotalOrder
d_'8801''45'decTotalOrder_32 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_'8801''45'decTotalOrder_32
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      d_'8801''45'isDecTotalOrder_28
-- Data.Unit.Properties.≤-reflexive
d_'8804''45'reflexive_34 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Unit.Base.T__'8804'__10
d_'8804''45'reflexive_34 = erased
-- Data.Unit.Properties.≤-trans
d_'8804''45'trans_36 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Unit.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Unit.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Unit.Base.T__'8804'__10
d_'8804''45'trans_36 = erased
-- Data.Unit.Properties.≤-antisym
d_'8804''45'antisym_38 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Unit.Base.T__'8804'__10 ->
  MAlonzo.Code.Data.Unit.Base.T__'8804'__10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8804''45'antisym_38 = erased
-- Data.Unit.Properties.≤-total
d_'8804''45'total_40 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'total_40 ~v0 ~v1 = du_'8804''45'total_40
du_'8804''45'total_40 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8804''45'total_40
  = coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
-- Data.Unit.Properties._≤?_
d__'8804''63'__42 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Relation.Nullary.T_Dec_32
d__'8804''63'__42 ~v0 ~v1 = du__'8804''63'__42
du__'8804''63'__42 :: MAlonzo.Code.Relation.Nullary.T_Dec_32
du__'8804''63'__42
  = coe
      MAlonzo.Code.Relation.Nullary.C__because__46
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe MAlonzo.Code.Relation.Nullary.C_of'696'_22 erased)
-- Data.Unit.Properties.≤-isPreorder
d_'8804''45'isPreorder_44 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_44
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
      erased erased
-- Data.Unit.Properties.≤-isPartialOrder
d_'8804''45'isPartialOrder_46 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8804''45'isPartialOrder_46
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_6659
      (coe d_'8804''45'isPreorder_44) erased
-- Data.Unit.Properties.≤-isTotalOrder
d_'8804''45'isTotalOrder_48 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_384
d_'8804''45'isTotalOrder_48
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsTotalOrder'46'constructor_15387
      (coe d_'8804''45'isPartialOrder_46)
      (\ v0 v1 -> coe du_'8804''45'total_40)
-- Data.Unit.Properties.≤-isDecTotalOrder
d_'8804''45'isDecTotalOrder_50 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_434
d_'8804''45'isDecTotalOrder_50
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecTotalOrder'46'constructor_17071
      (coe d_'8804''45'isTotalOrder_48) (\ v0 v1 -> coe du__'8799'__8)
      (\ v0 v1 -> coe du__'8804''63'__42)
-- Data.Unit.Properties.≤-poset
d_'8804''45'poset_52 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_282
d_'8804''45'poset_52
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Poset'46'constructor_4405
      d_'8804''45'isPartialOrder_46
-- Data.Unit.Properties.≤-decTotalOrder
d_'8804''45'decTotalOrder_54 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecTotalOrder_740
d_'8804''45'decTotalOrder_54
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecTotalOrder'46'constructor_12427
      d_'8804''45'isDecTotalOrder_50
