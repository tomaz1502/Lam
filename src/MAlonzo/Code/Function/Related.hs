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

module MAlonzo.Code.Function.Related where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bijection
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Related._←_
d__'8592'__12 a0 a1 a2 a3 = ()
newtype T__'8592'__12 = C_lam_26 (AgdaAny -> AgdaAny)
-- Function.Related._←_.app-←
d_app'45''8592'_24 :: T__'8592'__12 -> AgdaAny -> AgdaAny
d_app'45''8592'_24 v0
  = case coe v0 of
      C_lam_26 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related._↢_
d__'8610'__36 a0 a1 a2 a3 = ()
newtype T__'8610'__36
  = C_lam_50 MAlonzo.Code.Function.Injection.T_Injection_88
-- Function.Related._↢_.app-↢
d_app'45''8610'_48 ::
  T__'8610'__36 -> MAlonzo.Code.Function.Injection.T_Injection_88
d_app'45''8610'_48 v0
  = case coe v0 of
      C_lam_50 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.Kind
d_Kind_52 = ()
data T_Kind_52
  = C_implication_54 | C_reverse'45'implication_56 |
    C_equivalence_58 | C_injection_60 | C_reverse'45'injection_62 |
    C_left'45'inverse_64 | C_surjection_66 | C_bijection_68
-- Function.Related._∼[_]_
d__'8764''91'_'93'__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> T_Kind_52 -> () -> ()
d__'8764''91'_'93'__74 = erased
-- Function.Related.Related
d_Related_112 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> () -> ()
d_Related_112 = erased
-- Function.Related.↔⇒
d_'8596''8658'_130 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T_Inverse_58 -> AgdaAny
d_'8596''8658'_130 v0 ~v1 ~v2 ~v3 ~v4 = du_'8596''8658'_130 v0
du_'8596''8658'_130 ::
  T_Kind_52 -> MAlonzo.Code.Function.Inverse.T_Inverse_58 -> AgdaAny
du_'8596''8658'_130 v0
  = case coe v0 of
      C_implication_54
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.Inverse.d_to_78 (coe v1)))
      C_reverse'45'implication_56
        -> coe
             MAlonzo.Code.Function.Base.du__'8728''8242'__226 (coe C_lam_26)
             (coe
                (\ v1 ->
                   MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                     (coe MAlonzo.Code.Function.Inverse.d_from_80 (coe v1))))
      C_equivalence_58
        -> coe
             (\ v1 ->
                let v2
                      = coe
                          MAlonzo.Code.Function.Inverse.du_bijection_98
                          (coe
                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                          (coe v1) in
                coe
                  MAlonzo.Code.Function.Surjection.du_equivalence_92
                  (coe MAlonzo.Code.Function.Bijection.du_surjection_100 (coe v2)))
      C_injection_60
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.LeftInverse.du_injection_184
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                  (coe MAlonzo.Code.Function.Inverse.du_left'45'inverse_90 (coe v1)))
      C_reverse'45'injection_62
        -> coe
             MAlonzo.Code.Function.Base.du__'8728''8242'__226 (coe C_lam_50)
             (coe
                (\ v1 ->
                   coe
                     MAlonzo.Code.Function.LeftInverse.du_injection_184
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                     (coe
                        MAlonzo.Code.Function.Inverse.du_left'45'inverse_90
                        (coe MAlonzo.Code.Function.Inverse.du_sym_226 (coe v1)))))
      C_left'45'inverse_64
        -> coe MAlonzo.Code.Function.Inverse.du_left'45'inverse_90
      C_surjection_66
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.Bijection.du_surjection_100
                  (coe
                     MAlonzo.Code.Function.Inverse.du_bijection_98
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                     (coe v1)))
      C_bijection_68 -> coe (\ v1 -> v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.≡⇒
d_'8801''8658'_140 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'8801''8658'_140 v0 ~v1 ~v2 ~v3 ~v4 = du_'8801''8658'_140 v0
du_'8801''8658'_140 :: T_Kind_52 -> AgdaAny
du_'8801''8658'_140 v0
  = coe
      du_'8596''8658'_130 v0
      (coe
         MAlonzo.Code.Function.Inverse.du_id_186
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250))
-- Function.Related.Symmetric-kind
d_Symmetric'45'kind_142 = ()
data T_Symmetric'45'kind_142 = C_equivalence_144 | C_bijection_146
-- Function.Related.⌊_⌋
d_'8970'_'8971'_148 :: T_Symmetric'45'kind_142 -> T_Kind_52
d_'8970'_'8971'_148 v0
  = case coe v0 of
      C_equivalence_144 -> coe C_equivalence_58
      C_bijection_146 -> coe C_bijection_68
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.Forward-kind
d_Forward'45'kind_150 = ()
data T_Forward'45'kind_150
  = C_implication_152 | C_equivalence_154 | C_injection_156 |
    C_left'45'inverse_158 | C_surjection_160 | C_bijection_162
-- Function.Related.⌊_⌋→
d_'8970'_'8971''8594'_164 :: T_Forward'45'kind_150 -> T_Kind_52
d_'8970'_'8971''8594'_164 v0
  = case coe v0 of
      C_implication_152 -> coe C_implication_54
      C_equivalence_154 -> coe C_equivalence_58
      C_injection_156 -> coe C_injection_60
      C_left'45'inverse_158 -> coe C_left'45'inverse_64
      C_surjection_160 -> coe C_surjection_66
      C_bijection_162 -> coe C_bijection_68
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.⇒→
d_'8658''8594'_176 ::
  T_Forward'45'kind_150 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_'8658''8594'_176 v0 ~v1 ~v2 ~v3 ~v4 = du_'8658''8594'_176 v0
du_'8658''8594'_176 ::
  T_Forward'45'kind_150 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8658''8594'_176 v0
  = case coe v0 of
      C_implication_152 -> coe (\ v1 -> v1)
      C_equivalence_154
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.Equivalence.d_to_34 (coe v1)))
      C_injection_156
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.Injection.d_to_106 (coe v1)))
      C_left'45'inverse_158
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.LeftInverse.d_to_102 (coe v1)))
      C_surjection_160
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.Surjection.d_to_72 (coe v1)))
      C_bijection_162
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.Inverse.d_to_78 (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.Backward-kind
d_Backward'45'kind_178 = ()
data T_Backward'45'kind_178
  = C_reverse'45'implication_180 | C_equivalence_182 |
    C_reverse'45'injection_184 | C_left'45'inverse_186 |
    C_surjection_188 | C_bijection_190
-- Function.Related.⌊_⌋←
d_'8970'_'8971''8592'_192 :: T_Backward'45'kind_178 -> T_Kind_52
d_'8970'_'8971''8592'_192 v0
  = case coe v0 of
      C_reverse'45'implication_180 -> coe C_reverse'45'implication_56
      C_equivalence_182 -> coe C_equivalence_58
      C_reverse'45'injection_184 -> coe C_reverse'45'injection_62
      C_left'45'inverse_186 -> coe C_left'45'inverse_64
      C_surjection_188 -> coe C_surjection_66
      C_bijection_190 -> coe C_bijection_68
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.⇒←
d_'8658''8592'_204 ::
  T_Backward'45'kind_178 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_'8658''8592'_204 v0 ~v1 ~v2 ~v3 ~v4 = du_'8658''8592'_204 v0
du_'8658''8592'_204 ::
  T_Backward'45'kind_178 -> AgdaAny -> AgdaAny -> AgdaAny
du_'8658''8592'_204 v0
  = case coe v0 of
      C_reverse'45'implication_180 -> coe d_app'45''8592'_24
      C_equivalence_182
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.Equivalence.d_from_36 (coe v1)))
      C_reverse'45'injection_184
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe
                     MAlonzo.Code.Function.Injection.d_to_106
                     (coe d_app'45''8610'_48 (coe v1))))
      C_left'45'inverse_186
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.LeftInverse.d_from_104 (coe v1)))
      C_surjection_188
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe
                     MAlonzo.Code.Function.Surjection.d_from_38
                     (coe MAlonzo.Code.Function.Surjection.d_surjective_74 (coe v1))))
      C_bijection_190
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d__'10216''36''10217'__38
                  (coe MAlonzo.Code.Function.Inverse.d_from_80 (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.Equivalence-kind
d_Equivalence'45'kind_206 = ()
data T_Equivalence'45'kind_206
  = C_equivalence_208 | C_left'45'inverse_210 | C_surjection_212 |
    C_bijection_214
-- Function.Related.⌊_⌋⇔
d_'8970'_'8971''8660'_216 :: T_Equivalence'45'kind_206 -> T_Kind_52
d_'8970'_'8971''8660'_216 v0
  = case coe v0 of
      C_equivalence_208 -> coe C_equivalence_58
      C_left'45'inverse_210 -> coe C_left'45'inverse_64
      C_surjection_212 -> coe C_surjection_66
      C_bijection_214 -> coe C_bijection_68
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.⇒⇔
d_'8658''8660'_228 ::
  T_Equivalence'45'kind_206 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16
d_'8658''8660'_228 v0 ~v1 ~v2 ~v3 ~v4 = du_'8658''8660'_228 v0
du_'8658''8660'_228 ::
  T_Equivalence'45'kind_206 ->
  AgdaAny -> MAlonzo.Code.Function.Equivalence.T_Equivalence_16
du_'8658''8660'_228 v0
  = case coe v0 of
      C_equivalence_208 -> coe (\ v1 -> v1)
      C_left'45'inverse_210
        -> coe MAlonzo.Code.Function.LeftInverse.du_equivalence_186
      C_surjection_212
        -> coe MAlonzo.Code.Function.Surjection.du_equivalence_92
      C_bijection_214
        -> coe
             (\ v1 ->
                let v2
                      = coe
                          MAlonzo.Code.Function.Inverse.du_bijection_98
                          (coe
                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                          (coe v1) in
                coe
                  MAlonzo.Code.Function.Surjection.du_equivalence_92
                  (coe MAlonzo.Code.Function.Bijection.du_surjection_100 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.⇔⌊_⌋
d_'8660''8970'_'8971'_230 ::
  T_Symmetric'45'kind_142 -> T_Equivalence'45'kind_206
d_'8660''8970'_'8971'_230 v0
  = case coe v0 of
      C_equivalence_144 -> coe C_equivalence_208
      C_bijection_146 -> coe C_bijection_214
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.→⌊_⌋
d_'8594''8970'_'8971'_232 ::
  T_Equivalence'45'kind_206 -> T_Forward'45'kind_150
d_'8594''8970'_'8971'_232 v0
  = case coe v0 of
      C_equivalence_208 -> coe C_equivalence_154
      C_left'45'inverse_210 -> coe C_left'45'inverse_158
      C_surjection_212 -> coe C_surjection_160
      C_bijection_214 -> coe C_bijection_162
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.←⌊_⌋
d_'8592''8970'_'8971'_234 ::
  T_Equivalence'45'kind_206 -> T_Backward'45'kind_178
d_'8592''8970'_'8971'_234 v0
  = case coe v0 of
      C_equivalence_208 -> coe C_equivalence_182
      C_left'45'inverse_210 -> coe C_left'45'inverse_186
      C_surjection_212 -> coe C_surjection_188
      C_bijection_214 -> coe C_bijection_190
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related._op
d__op_236 :: T_Kind_52 -> T_Kind_52
d__op_236 v0
  = case coe v0 of
      C_implication_54 -> coe C_reverse'45'implication_56
      C_reverse'45'implication_56 -> coe C_implication_54
      C_equivalence_58 -> coe v0
      C_injection_60 -> coe C_reverse'45'injection_62
      C_reverse'45'injection_62 -> coe C_injection_60
      C_left'45'inverse_64 -> coe C_surjection_66
      C_surjection_66 -> coe C_left'45'inverse_64
      C_bijection_68 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.reverse
d_reverse_248 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny
d_reverse_248 v0 ~v1 ~v2 ~v3 ~v4 = du_reverse_248 v0
du_reverse_248 :: T_Kind_52 -> AgdaAny -> AgdaAny
du_reverse_248 v0
  = case coe v0 of
      C_implication_54 -> coe C_lam_26
      C_reverse'45'implication_56 -> coe d_app'45''8592'_24
      C_equivalence_58
        -> coe MAlonzo.Code.Function.Equivalence.du_sym_100
      C_injection_60 -> coe C_lam_50
      C_reverse'45'injection_62 -> coe d_app'45''8610'_48
      C_left'45'inverse_64
        -> coe MAlonzo.Code.Function.Surjection.du_fromRightInverse_106
      C_surjection_66
        -> coe MAlonzo.Code.Function.Surjection.du_right'45'inverse_82
      C_bijection_68 -> coe MAlonzo.Code.Function.Inverse.du_sym_226
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.K-refl
d_K'45'refl_254 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny
d_K'45'refl_254 v0 ~v1 ~v2 = du_K'45'refl_254 v0
du_K'45'refl_254 :: T_Kind_52 -> AgdaAny
du_K'45'refl_254 v0
  = case coe v0 of
      C_implication_54 -> coe (\ v1 -> v1)
      C_reverse'45'implication_56 -> coe C_lam_26 (coe (\ v1 -> v1))
      C_equivalence_58 -> coe MAlonzo.Code.Function.Equivalence.du_id_66
      C_injection_60 -> coe MAlonzo.Code.Function.Injection.du_id_152
      C_reverse'45'injection_62
        -> coe C_lam_50 (coe MAlonzo.Code.Function.Injection.du_id_152)
      C_left'45'inverse_64
        -> coe
             MAlonzo.Code.Function.LeftInverse.du_id_256
             (coe
                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
      C_surjection_66
        -> coe
             MAlonzo.Code.Function.Surjection.du_id_168
             (coe
                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
      C_bijection_68
        -> coe
             MAlonzo.Code.Function.Inverse.du_id_186
             (coe
                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.K-reflexive
d_K'45'reflexive_260 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_K'45'reflexive_260 v0 ~v1 ~v2 ~v3 ~v4 = du_K'45'reflexive_260 v0
du_K'45'reflexive_260 :: T_Kind_52 -> AgdaAny
du_K'45'reflexive_260 v0 = coe du_K'45'refl_254 (coe v0)
-- Function.Related.K-trans
d_K'45'trans_270 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_K'45'trans_270 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_K'45'trans_270 v0
du_K'45'trans_270 :: T_Kind_52 -> AgdaAny -> AgdaAny -> AgdaAny
du_K'45'trans_270 v0
  = case coe v0 of
      C_implication_54
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Base.du__'8728''8242'__226 (coe v2) (coe v1))
      C_reverse'45'implication_56
        -> coe
             (\ v1 v2 ->
                coe
                  C_lam_26
                  (coe
                     (\ v3 ->
                        coe d_app'45''8592'_24 v1 (coe d_app'45''8592'_24 v2 v3))))
      C_equivalence_58
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Equivalence.du__'8728'__82 (coe v2) (coe v1))
      C_injection_60
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Injection.du__'8728'__172 (coe v2) (coe v1))
      C_reverse'45'injection_62
        -> coe
             (\ v1 v2 ->
                coe
                  C_lam_50
                  (coe
                     MAlonzo.Code.Function.Injection.du__'8728'__172
                     (coe d_app'45''8610'_48 (coe v1))
                     (coe d_app'45''8610'_48 (coe v2))))
      C_left'45'inverse_64
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.LeftInverse.du__'8728'__280
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                  (coe v2) (coe v1))
      C_surjection_66
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Surjection.du__'8728'__196
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                  (coe v2) (coe v1))
      C_bijection_68
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Inverse.du__'8728'__208
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_250)
                  (coe v2) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.SK-sym
d_SK'45'sym_286 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny
d_SK'45'sym_286 v0 ~v1 ~v2 ~v3 ~v4 = du_SK'45'sym_286 v0
du_SK'45'sym_286 :: T_Symmetric'45'kind_142 -> AgdaAny -> AgdaAny
du_SK'45'sym_286 v0
  = case coe v0 of
      C_equivalence_144
        -> coe MAlonzo.Code.Function.Equivalence.du_sym_100
      C_bijection_146 -> coe MAlonzo.Code.Function.Inverse.du_sym_226
      _ -> MAlonzo.RTE.mazUnreachableError
-- Function.Related.SK-isEquivalence
d_SK'45'isEquivalence_292 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_SK'45'isEquivalence_292 v0 ~v1 = du_SK'45'isEquivalence_292 v0
du_SK'45'isEquivalence_292 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_SK'45'isEquivalence_292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
      (\ v1 -> coe du_K'45'refl_254 (coe d_'8970'_'8971'_148 (coe v0)))
      (\ v1 v2 -> coe du_SK'45'sym_286 (coe v0))
      (\ v1 v2 v3 ->
         coe du_K'45'trans_270 (coe d_'8970'_'8971'_148 (coe v0)))
-- Function.Related.SK-setoid
d_SK'45'setoid_300 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_SK'45'setoid_300 v0 ~v1 = du_SK'45'setoid_300 v0
du_SK'45'setoid_300 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_SK'45'setoid_300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (coe du_SK'45'isEquivalence_292 (coe v0))
-- Function.Related.K-isPreorder
d_K'45'isPreorder_310 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_K'45'isPreorder_310 v0 ~v1 = du_K'45'isPreorder_310 v0
du_K'45'isPreorder_310 ::
  T_Kind_52 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_K'45'isPreorder_310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
      (coe du_SK'45'isEquivalence_292 (coe C_bijection_146))
      (\ v1 v2 -> coe du_'8596''8658'_130 (coe v0))
      (\ v1 v2 v3 -> coe du_K'45'trans_270 (coe v0))
-- Function.Related.K-preorder
d_K'45'preorder_318 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_K'45'preorder_318 v0 ~v1 = du_K'45'preorder_318 v0
du_K'45'preorder_318 ::
  T_Kind_52 -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_K'45'preorder_318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe du_K'45'isPreorder_310 (coe v0))
-- Function.Related.EquationalReasoning._∼⟨_⟩_
d__'8764''10216'_'10217'__340 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8764''10216'_'10217'__340 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du__'8764''10216'_'10217'__340 v0 v7 v8
du__'8764''10216'_'10217'__340 ::
  T_Kind_52 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8764''10216'_'10217'__340 v0 v1 v2
  = coe du_K'45'trans_270 v0 v1 v2
-- Function.Related.EquationalReasoning._↔⟨_⟩_
d__'8596''10216'_'10217'__360 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Inverse.T_Inverse_58 -> AgdaAny -> AgdaAny
d__'8596''10216'_'10217'__360 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du__'8596''10216'_'10217'__360 v0 v7 v8
du__'8596''10216'_'10217'__360 ::
  T_Kind_52 ->
  MAlonzo.Code.Function.Inverse.T_Inverse_58 -> AgdaAny -> AgdaAny
du__'8596''10216'_'10217'__360 v0 v1 v2
  = coe
      du__'8764''10216'_'10217'__340 (coe v0)
      (coe du_'8596''8658'_130 v0 v1) (coe v2)
-- Function.Related.EquationalReasoning._↔⟨⟩_
d__'8596''10216''10217'__378 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny
d__'8596''10216''10217'__378 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du__'8596''10216''10217'__378 v5
du__'8596''10216''10217'__378 :: AgdaAny -> AgdaAny
du__'8596''10216''10217'__378 v0 = coe v0
-- Function.Related.EquationalReasoning._≡⟨_⟩_
d__'8801''10216'_'10217'__396 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
d__'8801''10216'_'10217'__396 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du__'8801''10216'_'10217'__396 v0 v7
du__'8801''10216'_'10217'__396 :: T_Kind_52 -> AgdaAny -> AgdaAny
du__'8801''10216'_'10217'__396 v0 v1
  = coe
      du__'8764''10216'_'10217'__340 (coe v0)
      (coe du_'8801''8658'_140 (coe v0)) (coe v1)
-- Function.Related.EquationalReasoning._∎
d__'8718'_410 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> AgdaAny
d__'8718'_410 v0 ~v1 ~v2 = du__'8718'_410 v0
du__'8718'_410 :: T_Kind_52 -> AgdaAny
du__'8718'_410 v0 = coe du_K'45'refl_254 (coe v0)
-- Function.Related.EquationalReasoning.sym
d_sym_414 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> AgdaAny -> AgdaAny
d_sym_414 v0 v1 v2 v3 v4 = coe du_SK'45'sym_286 v0
-- Function.Related.InducedRelation₁
d_InducedRelation'8321'_422 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d_InducedRelation'8321'_422 = erased
-- Function.Related.InducedPreorder₁
d_InducedPreorder'8321'_438 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_InducedPreorder'8321'_438 v0 ~v1 ~v2 ~v3 ~v4
  = du_InducedPreorder'8321'_438 v0
du_InducedPreorder'8321'_438 ::
  T_Kind_52 -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_InducedPreorder'8321'_438 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
         (coe
            (\ v1 v2 v3 ->
               coe
                 du_'8596''8658'_130 v0
                 (coe du_K'45'reflexive_260 (coe C_bijection_68))))
         (coe (\ v1 v2 v3 -> coe du_K'45'trans_270 (coe v0))))
-- Function.Related.InducedEquivalence₁
d_InducedEquivalence'8321'_502 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> ()) -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_InducedEquivalence'8321'_502 v0 ~v1 ~v2 ~v3 ~v4
  = du_InducedEquivalence'8321'_502 v0
du_InducedEquivalence'8321'_502 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_InducedEquivalence'8321'_502 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
         (coe
            (\ v1 -> coe du_K'45'refl_254 (coe d_'8970'_'8971'_148 (coe v0))))
         (coe (\ v1 v2 -> coe du_SK'45'sym_286 (coe v0)))
         (coe
            (\ v1 v2 v3 ->
               coe du_K'45'trans_270 (coe d_'8970'_'8971'_148 (coe v0)))))
-- Function.Related.InducedRelation₂
d_InducedRelation'8322'_518 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d_InducedRelation'8322'_518 = erased
-- Function.Related.InducedPreorder₂
d_InducedPreorder'8322'_540 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_InducedPreorder'8322'_540 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_InducedPreorder'8322'_540 v0
du_InducedPreorder'8322'_540 ::
  T_Kind_52 -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_InducedPreorder'8322'_540 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_1855
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_2409
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_242)
         (coe
            (\ v1 v2 v3 v4 ->
               coe
                 du_'8596''8658'_130 v0
                 (coe du_K'45'reflexive_260 (coe C_bijection_68))))
         (coe
            (\ v1 v2 v3 v4 v5 v6 ->
               coe du_K'45'trans_270 v0 (coe v4 v6) (coe v5 v6))))
-- Function.Related.InducedEquivalence₂
d_InducedEquivalence'8322'_616 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_InducedEquivalence'8322'_616 v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_InducedEquivalence'8322'_616 v0
du_InducedEquivalence'8322'_616 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_InducedEquivalence'8322'_616 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_575
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_519
         (coe
            (\ v1 v2 ->
               coe du_K'45'refl_254 (coe d_'8970'_'8971'_148 (coe v0))))
         (coe (\ v1 v2 v3 v4 -> coe du_SK'45'sym_286 v0 (coe v3 v4)))
         (coe
            (\ v1 v2 v3 v4 v5 v6 ->
               coe
                 du_K'45'trans_270 (d_'8970'_'8971'_148 (coe v0)) (coe v4 v6)
                 (coe v5 v6))))
-- Function.Related.preorder
d_preorder_654 ::
  T_Kind_52 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_preorder_654 v0 v1 = coe du_K'45'preorder_318 v0
-- Function.Related.setoid
d_setoid_656 ::
  T_Symmetric'45'kind_142 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_656 v0 v1 = coe du_SK'45'setoid_300 v0
