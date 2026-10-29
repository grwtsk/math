# Sheaves Stalks Germ Res

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fc734f866e0e2415cda5e63762f4af745cb8ac0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SheavesStalksGermRes.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [stalkFunctor](declarations/stalkfunctor.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [stalk](declarations/stalk.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [stalkFunctor_obj](declarations/stalkfunctor-obj.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [germ](declarations/germ.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Γgerm](declarations/germ-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [germ_res](declarations/germ-res-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [germ_res'](declarations/germ-res.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [map_germ_eq_Γgerm](declarations/map-germ-eq-germ.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [germ_res_apply](declarations/germ-res-apply-source-edition-3.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [germ_res_apply'](declarations/germ-res-apply-source-edition-2.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [Γgerm_res_apply](declarations/germ-res-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stalk_hom_ext](declarations/stalk-hom-ext.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [stalkFunctor_map_germ](declarations/stalkfunctor-map-germ.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stalkFunctor_map_germ_apply](declarations/stalkfunctor-map-germ-apply-source-edition-2.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stalkFunctor_map_germ_apply'](declarations/stalkfunctor-map-germ-apply.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [stalkPushforward](declarations/stalkpushforward.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [stalkPushforward_germ](declarations/stalkpushforward-germ.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [id](declarations/id.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp](declarations/comp.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [stalkPushforward_iso_of_isInducing](declarations/stalkpushforward-iso-of-isinducing.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [stalkPullbackHom](declarations/stalkpullbackhom.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [germ_stalkPullbackHom](declarations/germ-stalkpullbackhom.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [germToPullbackStalk](declarations/germtopullbackstalk.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [pullback_obj_obj_ext](declarations/pullback-obj-obj-ext.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [pushforwardPullbackAdjunction_unit_pullback_map_germToPullbackStalk](declarations/pushforwardpullbackadjunction-unit-pullback-map-germtopullbackstalk.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [germToPullbackStalk_stalkPullbackHom](declarations/germtopullbackstalk-stalkpullbackhom.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [pushforwardPullbackAdjunction_unit_app_app_germToPullbackStalk](declarations/pushforwardpullbackadjunction-unit-app-app-germtopullbackstalk.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [stalkPullbackInv](declarations/stalkpullbackinv.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [germ_stalkPullbackInv](declarations/germ-stalkpullbackinv.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [stalkPullbackIso](declarations/stalkpullbackiso.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [stalkSpecializes](declarations/stalkspecializes.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [germ_stalkSpecializes](declarations/germ-stalkspecializes.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [stalkSpecializes_refl](declarations/stalkspecializes-refl.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [stalkSpecializes_comp](declarations/stalkspecializes-comp.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [stalkSpecializes_stalkFunctor_map](declarations/stalkspecializes-stalkfunctor-map.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [stalkSpecializes_stalkPushforward](declarations/stalkspecializes-stalkpushforward.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [stalkCongr](declarations/stalkcongr.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [germ_ext](declarations/germ-ext.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [germ_exist](declarations/germ-exist.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [germ_eq](declarations/germ-eq.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [stalkFunctor_map_injective_of_app_injective](declarations/stalkfunctor-map-injective-of-app-injective.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [germ_exist_of_isBasis](declarations/germ-exist-of-isbasis.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [germ_eq_of_isBasis](declarations/germ-eq-of-isbasis.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [stalkFunctor_map_injective_of_isBasis](declarations/stalkfunctor-map-injective-of-isbasis.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [section_ext](declarations/section-ext.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [app_injective_of_stalkFunctor_map_injective](declarations/app-injective-of-stalkfunctor-map-injective.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [app_injective_iff_stalkFunctor_map_injective](declarations/app-injective-iff-stalkfunctor-map-injective.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [stalkFunctor_preserves_mono](declarations/stalkfunctor-preserves-mono.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [stalk_mono_of_mono](declarations/stalk-mono-of-mono.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mono_of_stalk_mono](declarations/mono-of-stalk-mono.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mono_iff_stalk_mono](declarations/mono-iff-stalk-mono.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [app_surjective_of_injective_of_locally_surjective](declarations/app-surjective-of-injective-of-locally-surjective.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [app_surjective_of_stalkFunctor_map_bijective](declarations/app-surjective-of-stalkfunctor-map-bijective.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [app_bijective_of_stalkFunctor_map_bijective](declarations/app-bijective-of-stalkfunctor-map-bijective.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [app_isIso_of_stalkFunctor_map_iso](declarations/app-isiso-of-stalkfunctor-map-iso.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isIso_of_stalkFunctor_map_iso](declarations/isiso-of-stalkfunctor-map-iso.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isIso_iff_stalkFunctor_map_iso](declarations/isiso-iff-stalkfunctor-map-iso.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7afd0147aec21d76fafcf41578c7718165be0dd1f79d96d11fe6cc744fe1231 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variantcd10a21bc244b0090a544b8e744ee578499cdf2f05b907537949e4447e84cfed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
