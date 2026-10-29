# Verification target: Localization Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8767d1701d07bd76ecfeb5459c51d21566a06b70",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8767d1701d07bd76ecfeb5459c51d21566a06b70`.

Source path: `GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mapPiEvalRingHom](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/mappievalringhom.md) | 87 | `declaration-track:827eff10402635d889e3b3e72e3070b9bee9a4c5055f01bb23fdaadd4fd56813` |
| 2 | `theorem` | [mapPiEvalRingHom_bijective](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/mappievalringhom-bijective.md) | 92 | `result-track:101299c7e050dc86b9be507cdbc59c26b23b348cac03fab205b8dc082a731eb6` |
| 3 | `lemma` | [finite](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/finite.md) | 124 | `result-track:776094f98e47e383a8c86acfa900ee9fe40896d05859589e3b96a5b390e901b8` |
| 4 | `theorem` | [linearMap_compatibleSMul](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/linearmap-compatiblesmul.md) | 135 | `result-track:9c4129e422ad8057b796122be3ead1222eed986df1eba66586c316aca2fc7539` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/instance.md) | 143 | `declaration-track:00c10ddd646ec4680564a52c6925811c840e9f0c2caf72623713f2aa4fcf4e53` |
| 6 | `theorem` | [algHom_subsingleton](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/alghom-subsingleton.md) | 155 | `result-track:6ef5339d87905ca9e4b6fd6d5b156451ebcc40a464c3ff76dc2f4ad8ec3f59aa` |
| 7 | `def` | [algEquiv](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-source-edition-2.md) | 171 | `declaration-track:a02c1d5048bfbdbeec5664e5a06596169d9832051c919011344971b60f96f99b` |
| 8 | `theorem` | [algEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-mk-source-edition-3.md) | 177 | `result-track:fc3cc508ad0007132f3b9b72c18c88b5e0853f4098f28ac63243883099d279cb` |
| 9 | `theorem` | [algEquiv_symm_mk'](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-symm-mk-source-edition-3.md) | 180 | `result-track:dda63111db23c331d08c5db244e2c0706d1edc04facb24d4cfe22994a7257920` |
| 10 | `lemma` | [bijective](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/bijective.md) | 184 | `result-track:0ce74daa06164250b51de6e8833023799875e442b42567a913421352c9747ac7` |
| 11 | `def` | [liftAlgHom](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/liftalghom.md) | 202 | `declaration-track:81540b9b667ccb996271313b99e45a7b3851ab2511c8a9861d7313d68d107959` |
| 12 | `theorem` | [liftAlgHom_toRingHom](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/liftalghom-toringhom.md) | 206 | `result-track:2254bf9148fb0c4ebb7dd96396d420aef63e96d207b82d03578e4bd0b9811314` |
| 13 | `theorem` | [coe_liftAlgHom](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/coe-liftalghom.md) | 209 | `result-track:bb0f4b314c1d86f27d70878cfac4c7c8a52e7d765da901afa298cd9f5094bdd8` |
| 14 | `theorem` | [liftAlgHom_apply](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/liftalghom-apply.md) | 211 | `result-track:231dc07609bfe5c4377bff06d2fdd841bc13781a6896b11fff40770b524cb107` |
| 15 | `def` | [algEquivOfAlgEquiv](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequivofalgequiv.md) | 232 | `declaration-track:7b172c6400139beb05fd0e6797e6affd5af7250fb2b13511e07bab224457bf31` |
| 16 | `theorem` | [algEquivOfAlgEquiv_eq_map](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequivofalgequiv-eq-map.md) | 239 | `result-track:aa8ad851620cf1a7253ca7d08927beb8449db482f76044071c965d277f051c7d` |
| 17 | `theorem` | [algEquivOfAlgEquiv_eq](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequivofalgequiv-eq.md) | 245 | `result-track:3d3f10ae41fbb3f060c91c917a3c6a749ef361b0690d4cbb5e33bd23f94332cd` |
| 18 | `theorem` | [algEquivOfAlgEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequivofalgequiv-mk.md) | 251 | `result-track:4063b4065b352570ba725dcaac04efe04a04287e1d2531873753111bab35f2dc` |
| 19 | `theorem` | [algEquivOfAlgEquiv_symm](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequivofalgequiv-symm.md) | 256 | `result-track:9cee9967904258da9d0ae64293ddcf228de3947da0925c3d79de7e3d8c3d4e5e` |
| 20 | `lemma` | [smul_mem_iff](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/smul-mem-iff.md) | 272 | `result-track:bd7c3063673bff3d15fb527010822f8969cbdb2c2b09d7485720f62b32b2e442` |
| 21 | `lemma` | [of_le_isUnit_of_bijective](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/of-le-isunit-of-bijective.md) | 282 | `result-track:c93a727c887f42bdc1776eac179b60b2419030faa7b8e29617c3aed0dea6a9f9` |
| 22 | `lemma` | [of_le_isUnit](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/of-le-isunit.md) | 293 | `result-track:977e3ae3d43988251c47ef8ed332329d7c343929e0e0aa042d4afa593a56737c` |
| 23 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/instance-source-edition-2.md) | 299 | `declaration-track:0a8f9e4394a646ad694d12535cf5f3cc7a791063273fb10d96b5c45b7da4e008` |
| 24 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/instance-source-edition-5.md) | 301 | `declaration-track:e970c66185ca0156edf3e1ad7a2bc1e61b6e8e5ca554670049dd2a3775142d8b` |
| 25 | `def` | [atUnits](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/atunits.md) | 307 | `declaration-track:31713413c5cfc7fa71a7587e8726909befc95d52b1b1bd21818bc2b11f26a3c5` |
| 26 | `theorem` | [isLocalization_of_algEquiv](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-of-algequiv.md) | 329 | `result-track:24721bf65967954a6636300c22875e967fe56100b0146d00835a26278670ea45` |
| 27 | `theorem` | [self](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/self.md) | 346 | `result-track:313abca310f7f85feadb0adb88d7109bead63e2fb21a7b6833c9c002b2cd9969` |
| 28 | `theorem` | [isLocalization_iff_of_algEquiv](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-iff-of-algequiv.md) | 349 | `result-track:bc516440b57fd861da57d465187f01550f00912589e79543d594c6c8bfcd484a` |
| 29 | `theorem` | [isLocalization_iff_of_ringEquiv](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-iff-of-ringequiv.md) | 353 | `result-track:be6225a4a9c6607e6dd980ed8c543f80944528a615205e21584e5f4166109907` |
| 30 | `theorem` | [isLocalization_iff_of_isLocalization](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-iff-of-islocalization.md) | 362 | `result-track:7582f4739cb57bab116c4918e6ccd607d44229c55236a06531b1106938516a44` |
| 31 | `theorem` | [iff_of_le_of_exists_dvd](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/iff-of-le-of-exists-dvd.md) | 367 | `result-track:df2534f50810a4c79604180530ee68a4817d16b34978ec4ef84de35d5a009516` |
| 32 | `lemma` | [commutes](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/commutes.md) | 379 | `result-track:433177ada6d36e279b40fe8db0f8fb84932e5df5cae14475023942df5a1ae926` |
| 33 | `theorem` | [algEquiv_comp_algebraMap](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-comp-algebramap.md) | 424 | `result-track:bae72f92a7547ec28d8362bc6bb21398414f2fa56c650d4c1eafe9efc1f512e8` |
| 34 | `theorem` | [algEquiv_comp_algebraMap_apply](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-comp-algebramap-apply.md) | 432 | `result-track:f2ab9ba8e66fc51a806e8579d45cda5477caab25bd35a1e3d8c40860301f2953` |
| 35 | `theorem` | [mk_natCast](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/mk-natcast.md) | 444 | `result-track:63ac9dd7747c1bdb489f1b2054ef6871dbf6c1b2e61a2f6f7b4c714e85c98e92` |
| 36 | `def` | [algEquiv](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv.md) | 455 | `declaration-track:4fbed0be38500030b66daafe08a17d922704a7df3559f47b2ef3c512a377e083` |
| 37 | `def` | [_root_.IsLocalization.unique](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/root-islocalization-unique.md) | 460 | `declaration-track:29bec739d38e730efa2d255667b66ffc2944d2dd0d0e7d66e989742a55ae5843` |
| 38 | `theorem` | [algEquiv_mk'](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-mk.md) | 467 | `result-track:57237c327a3fe021e0121956cc3cd675175f379b6ef7fe69e4c09b5bd8687993` |
| 39 | `theorem` | [algEquiv_symm_mk'](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-symm-mk-source-edition-2.md) | 470 | `result-track:99177a7c45b46b922fef57278d54e4ac43a67a183431bb64a45306aeaed56730` |
| 40 | `theorem` | [algEquiv_mk](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-mk-source-edition-2.md) | 474 | `result-track:fabba8dbc7d7cdbad51e34a14c78bd80fc6b0fc862cd0eccabb0d124ee210eb6` |
| 41 | `theorem` | [algEquiv_symm_mk](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-symm-mk.md) | 476 | `result-track:0f3c812ce6e29a6911b88506169fb3b831e192c3484b0125f003e831137d512e` |
| 42 | `lemma` | [coe_algEquiv](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/coe-algequiv.md) | 479 | `result-track:26d0f2ca7b41f5c1d00a9f3059f5e172c5497c0691ca2fd7ad30f67b3d95a512` |
| 43 | `lemma` | [coe_algEquiv_symm](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/coe-algequiv-symm.md) | 483 | `result-track:bee137e45c2da303770ebb550949bdfaeba0c270e690864ee116d16ea057b000` |
| 44 | `theorem` | [IsField.localization_map_bijective](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/isfield-localization-map-bijective.md) | 492 | `result-track:9daa364de9b5ec996cabaffdd3d3c8fd190c7a85cc6c43dbc34a009f72630c04` |
| 45 | `theorem` | [Field.localization_map_bijective](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/field-localization-map-bijective.md) | 503 | `result-track:635fccd19a322c5c1239219adc2cb36a0cec169bac155b60828d8600792d8e1a` |
| 46 | `def` | [localizationAlgebra](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/localizationalgebra.md) | 531 | `declaration-track:4e18e75726f30f241a2a8ff533fefe466ee0121ff48c135756bba2490f126ada` |
| 47 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/instance-source-edition-4.md) | 536 | `declaration-track:6ab6de96863419c8bbe765870da1064398c7ab40cdd4615aea19962dd0d6dba2` |
| 48 | `lemma` | [isScalarTower_localizationAlgebra](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/isscalartower-localizationalgebra.md) | 541 | `result-track:fd26ce3507c1a1bab539102726f463d0f65387b0af6f24e6c9ebe10136271e97` |
| 49 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/instance-source-edition-6.md) | 548 | `declaration-track:ff709491b7db43a4e428dddc4eb8be8387983bbb17ca9219dd9e0c9b5ed22708` |
| 50 | `theorem` | [IsLocalization.map_units_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-map-units-map-submonoid.md) | 558 | `result-track:e96f42e42a019ae23c7cc7af29b4b7572a5f1ee46c5997d075d63234bca50c8f` |
| 51 | `theorem` | [IsLocalization.algebraMap_mk'](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-algebramap-mk.md) | 563 | `result-track:da937507c1f0efdaaf7306519abb6035b115189fc4b52b3cc9028304e38d9c50` |
| 52 | `theorem` | [IsLocalization.algebraMap_eq_map_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-algebramap-eq-map-map-submonoid.md) | 582 | `result-track:6cb214bb0cc63bca38d4ecf1cbf946846e8bb1fdc6de645fefad958a978a7bef` |
| 53 | `theorem` | [IsLocalization.algebraMap_apply_eq_map_map_submonoid](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-algebramap-apply-eq-map-map-submonoid.md) | 597 | `result-track:ee0ebd55a0d8852e355357fe8e13151b685d89f47da5bd9f7bd2a3550caacf7b` |
| 54 | `theorem` | [IsLocalization.lift_algebraMap_eq_algebraMap](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-lift-algebramap-eq-algebramap.md) | 603 | `result-track:61603d9a0146fe04be04a338926a1e2b296775da851fd9b49ce12ac7b220267e` |
| 55 | `theorem` | [localizationAlgebraMap_def](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/localizationalgebramap-def.md) | 612 | `result-track:2d490152c0ad7f2984fdd95b82df71e0e97221ffd670d923cebbdc48936c59d5` |
| 56 | `theorem` | [localizationAlgebra_injective](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/localizationalgebra-injective.md) | 619 | `result-track:bfdf6630e683f441cb64555b6d9fe0acc1b2f080bae1dc33f06993d11bfe4928` |
| 57 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/instance-source-edition-3.md) | 624 | `declaration-track:576402bfaa5046ab90370a5b68457e40601f5e9cf547e51d73068960ac55d3b2` |
| 58 | `theorem` | [map_injective_of_injective'](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/map-injective-of-injective.md) | 642 | `result-track:9646a1fd58ca8c98e510e72146c727433e7021d949d970be1c4e680fcc7cf52c` |
| 59 | `theorem` | [Localization.mk_intCast](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/localization-mk-intcast.md) | 653 | `result-track:1d204b95471887fca28cde9c23dfe5f114e13263f8d17553f0c316468159aa88` |
| 60 | `theorem` | [Localization.r_iff_of_le_nonZeroDivisors](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/localization-r-iff-of-le-nonzerodivisors.md) | 656 | `result-track:7cc91aa565ad75272dd77155b57177bd5e70090bda7c15229e9f6c054f26383a` |
| 61 | `theorem` | [IsLocalization.algHom_ext](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/islocalization-alghom-ext.md) | 672 | `result-track:df20652dfe3ba989b13e8bfd5af2ca64c3e8ad3fb31091b984955471e609a1d5` |
| 62 | `theorem` | [Localization.algHom_ext](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/localization-alghom-ext.md) | 683 | `result-track:0c18b64d2315035d2c1f24a2328f383d0b816c67049e3b4c701086af3ac94f39` |
| 63 | `def` | [AlgHom.extendScalarsOfIsLocalization](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/alghom-extendscalarsofislocalization.md) | 699 | `declaration-track:793616b6f4baa9cbf58861a2b58db7d922ee7deba9f8426f48a4e81e92811d22` |
| 64 | `theorem` | [AlgHom.extendScalarsOfIsLocalization_apply](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/alghom-extendscalarsofislocalization-apply.md) | 710 | `result-track:4987b24fa3beaec105aca65385826dabd09b93fce45905bbf2153d14262c04f2` |
| 65 | `def` | [AlgEquiv.extendScalarsOfIsLocalization](../../../../CommutativeAlgebra/LocalizationBasicPublic.lean/declarations/algequiv-extendscalarsofislocalization.md) | 717 | `declaration-track:0be2e26c74393a64050c53982de017ea6be872ce7f32d498aca1cab8fd5584c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=413e2acc20354c4fa80dd159ace83db157c6d2e8cee85fc1d17f5dfe00afeca3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
