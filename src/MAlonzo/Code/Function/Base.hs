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

module MAlonzo.Code.Function.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

-- Function.Base.id
d_id_24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> AgdaAny
d_id_24 ~v0 ~v1 v2 = du_id_24 v2
du_id_24 :: AgdaAny -> AgdaAny
du_id_24 v0 = coe v0
-- Function.Base.const
d_const_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_const_28 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_const_28 v4
du_const_28 :: AgdaAny -> AgdaAny
du_const_28 v0 = coe v0
-- Function.Base.constᵣ
d_const'7523'_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d_const'7523'_34 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_const'7523'_34 v5
du_const'7523'_34 :: AgdaAny -> AgdaAny
du_const'7523'_34 v0 = coe v0
-- Function.Base._∘_
d__'8728'__54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'8728'__54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8728'__54 v6 v7 v8
du__'8728'__54 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'8728'__54 v0 v1 v2 = coe v0 v2 (coe v1 v2)
-- Function.Base._∘₂_
d__'8728''8322'__92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8728''8322'__92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11
  = du__'8728''8322'__92 v8 v9 v10 v11
du__'8728''8322'__92 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8728''8322'__92 v0 v1 v2 v3 = coe v0 v2 v3 (coe v1 v2 v3)
-- Function.Base.flip
d_flip_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_flip_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 = du_flip_116 v6 v7 v8
du_flip_116 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_flip_116 v0 v1 v2 = coe v0 v2 v1
-- Function.Base._$_
d__'36'__132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36'__132 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'36'__132 v4 v5
du__'36'__132 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36'__132 v0 v1 = coe v0 v1
-- Function.Base._$!_
d__'36''33'__146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36''33'__146 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'36''33'__146 v4 v5
du__'36''33'__146 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36''33'__146 v0 v1 = coe seq (coe v1) (coe v0 v1)
-- Function.Base._|>_
d__'124''62'__156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'124''62'__156 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'124''62'__156 v4 v5
du__'124''62'__156 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'124''62'__156 v0 v1 = coe v1 v0
-- Function.Base._ˢ_
d__'738'__176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'738'__176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'738'__176 v6 v7 v8
du__'738'__176 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'738'__176 v0 v1 v2 = coe v0 v2 (coe v1 v2)
-- Function.Base._$-
d__'36''45'_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36''45'_192 ~v0 ~v1 ~v2 ~v3 v4 v5 = du__'36''45'_192 v4 v5
du__'36''45'_192 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36''45'_192 v0 v1 = coe v0 v1
-- Function.Base.λ-
d_λ'45'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_λ'45'_204 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_λ'45'_204 v4 v5
du_λ'45'_204 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_λ'45'_204 v0 v1 = coe v0 v1
-- Function.Base.case_return_of_
d_case_return_of__218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_case_return_of__218 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_case_return_of__218 v3 v5
du_case_return_of__218 ::
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_case_return_of__218 v0 v1 = coe v1 v0
-- Function.Base._∘′_
d__'8728''8242'__226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'8728''8242'__226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'8728''8242'__226 v6 v7 v8
du__'8728''8242'__226 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'8728''8242'__226 v0 v1 v2 = coe v0 (coe v1 v2)
-- Function.Base._∘₂′_
d__'8728''8322''8242'__232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8728''8322''8242'__232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du__'8728''8322''8242'__232 v8 v9
du__'8728''8322''8242'__232 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8728''8322''8242'__232 v0 v1
  = coe du__'8728''8322'__92 (coe (\ v2 v3 -> v0)) (coe v1)
-- Function.Base._$′_
d__'36''8242'__238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36''8242'__238 ~v0 ~v1 ~v2 ~v3 v4 = du__'36''8242'__238 v4
du__'36''8242'__238 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36''8242'__238 v0 = coe v0
-- Function.Base._$!′_
d__'36''33''8242'__240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36''33''8242'__240 ~v0 ~v1 ~v2 ~v3 = du__'36''33''8242'__240
du__'36''33''8242'__240 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36''33''8242'__240 = coe du__'36''33'__146
-- Function.Base._|>′_
d__'124''62''8242'__242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'124''62''8242'__242 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'124''62''8242'__242 v4 v5
du__'124''62''8242'__242 ::
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'124''62''8242'__242 v0 v1 = coe v1 v0
-- Function.Base.case_of_
d_case_of__244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_case_of__244 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_case_of__244 v4 v5
du_case_of__244 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du_case_of__244 v0 v1 = coe v1 v0
-- Function.Base._⟨_⟩_
d__'10216'_'10217'__250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'10216'_'10217'__250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du__'10216'_'10217'__250 v6 v7 v8
du__'10216'_'10217'__250 ::
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'10216'_'10217'__250 v0 v1 v2 = coe v1 v0 v2
-- Function.Base._∋_
d__'8715'__260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> AgdaAny
d__'8715'__260 ~v0 ~v1 v2 = du__'8715'__260 v2
du__'8715'__260 :: AgdaAny -> AgdaAny
du__'8715'__260 v0 = coe v0
-- Function.Base.typeOf
d_typeOf_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> ()
d_typeOf_268 = erased
-- Function.Base.it
d_it_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny -> AgdaAny
d_it_274 ~v0 ~v1 v2 = du_it_274 v2
du_it_274 :: AgdaAny -> AgdaAny
du_it_274 v0 = coe v0
-- Function.Base._-⟪_⟫-_
d__'45''10218'_'10219''45'__278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10218'_'10219''45'__278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10 v11 v12 v13 v14
  = du__'45''10218'_'10219''45'__278 v10 v11 v12 v13 v14
du__'45''10218'_'10219''45'__278 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10218'_'10219''45'__278 v0 v1 v2 v3 v4
  = coe v1 (coe v0 v3 v4) (coe v2 v3 v4)
-- Function.Base._-⟪_∣
d__'45''10218'_'8739'_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10218'_'8739'_290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du__'45''10218'_'8739'_290 v8 v9
du__'45''10218'_'8739'_290 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10218'_'8739'_290 v0 v1
  = coe
      du__'45''10218'_'10219''45'__278 (coe v0) (coe v1)
      (coe (\ v2 v3 -> v3))
-- Function.Base.∣_⟫-_
d_'8739'_'10219''45'__296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8739'_'10219''45'__296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8739'_'10219''45'__296 v8 v9
du_'8739'_'10219''45'__296 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8739'_'10219''45'__296 v0 v1
  = coe
      du__'45''10218'_'10219''45'__278 (coe (\ v2 v3 -> v2)) (coe v0)
      (coe v1)
-- Function.Base._-⟨_∣
d__'45''10216'_'8739'_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10216'_'8739'_302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du__'45''10216'_'8739'_302 v8 v9
du__'45''10216'_'8739'_302 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10216'_'8739'_302 v0 v1
  = coe
      du__'45''10218'_'8739'_290
      (coe
         du__'8728''8322'__92 (coe (\ v2 v3 -> v0)) (coe (\ v2 v3 -> v2)))
      (coe v1)
-- Function.Base.∣_⟩-_
d_'8739'_'10217''45'__308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8739'_'10217''45'__308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_'8739'_'10217''45'__308 v8 v9
du_'8739'_'10217''45'__308 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8739'_'10217''45'__308 v0 v1
  = coe
      du_'8739'_'10219''45'__296 (coe v0)
      (coe
         du__'8728''8322'__92 (coe (\ v2 v3 -> v1)) (coe (\ v2 v3 -> v3)))
-- Function.Base._-⟪_⟩-_
d__'45''10218'_'10217''45'__314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10218'_'10217''45'__314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10 v11 v12
  = du__'45''10218'_'10217''45'__314 v10 v11 v12
du__'45''10218'_'10217''45'__314 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10218'_'10217''45'__314 v0 v1 v2
  = coe
      du__'45''10218'_'10219''45'__278 (coe v0) (coe v1)
      (coe du_'8739'_'10217''45'__308 (coe (\ v3 v4 -> v4)) (coe v2))
-- Function.Base._-⟨_⟫-_
d__'45''10216'_'10219''45'__322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10216'_'10219''45'__322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10 v11 v12
  = du__'45''10216'_'10219''45'__322 v10 v11 v12
du__'45''10216'_'10219''45'__322 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10216'_'10219''45'__322 v0 v1 v2
  = coe
      du__'45''10218'_'10219''45'__278
      (coe du__'45''10216'_'8739'_302 (coe v0) (coe (\ v3 v4 -> v3)))
      (coe v1) (coe v2)
-- Function.Base._-⟨_⟩-_
d__'45''10216'_'10217''45'__330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''10216'_'10217''45'__330 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                                ~v9 v10 v11 v12
  = du__'45''10216'_'10217''45'__330 v10 v11 v12
du__'45''10216'_'10217''45'__330 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45''10216'_'10217''45'__330 v0 v1 v2
  = coe
      du__'45''10218'_'10219''45'__278
      (coe du__'45''10216'_'8739'_302 (coe v0) (coe (\ v3 v4 -> v3)))
      (coe v1)
      (coe du_'8739'_'10217''45'__308 (coe (\ v3 v4 -> v4)) (coe v2))
-- Function.Base._on₂_
d__on'8322'__338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__on'8322'__338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du__on'8322'__338 v8 v9
du__on'8322'__338 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__on'8322'__338 v0 v1
  = coe du__'45''10218'_'10219''45'__278 (coe v1) (coe v0) (coe v1)
-- Function.Base._on_
d__on__344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__on__344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du__on__344 v6 v7
du__on__344 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__on__344 v0 v1
  = coe du__'45''10216'_'10217''45'__330 (coe v1) (coe v0) (coe v1)
-- Function.Base._-[_]-_
d__'45''91'_'93''45'__350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'45''91'_'93''45'__350 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
                          v13 v14
  = coe du__'45''10218'_'10219''45'__278 v10 v11 v12 v13 v14
