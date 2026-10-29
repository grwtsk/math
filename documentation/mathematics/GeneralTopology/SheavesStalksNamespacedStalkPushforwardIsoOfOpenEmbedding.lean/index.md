# Sheaves Stalks Namespaced Stalk Pushforward Iso Of Open Embedding

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d620ea12831b2d3f8861cfe9574d7736220242f4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SheavesStalksNamespacedStalkPushforwardIsoOfOpenEmbedding.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [stalkFunctor](declarations/stalkfunctor.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [stalk](declarations/stalk.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [stalkFunctor_obj](declarations/stalkfunctor-obj.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [germ](declarations/germ.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [germ_res](declarations/germ-res.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [germ_res_apply](declarations/germ-res-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [stalk_hom_ext](declarations/stalk-hom-ext.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [stalkFunctor_map_germ](declarations/stalkfunctor-map-germ.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [stalkPushforward](declarations/stalkpushforward.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stalkPushforward_germ](declarations/stalkpushforward-germ.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [id](declarations/id.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp](declarations/comp.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [stalkPushforward_iso_of_openEmbedding](declarations/stalkpushforward-iso-of-openembedding.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [stalkPullbackHom](declarations/stalkpullbackhom.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [germToPullbackStalk](declarations/germtopullbackstalk.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [stalkPullbackInv](declarations/stalkpullbackinv.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [stalkPullbackIso](declarations/stalkpullbackiso.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [stalkSpecializes](declarations/stalkspecializes.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [germ_stalkSpecializes](declarations/germ-stalkspecializes.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [germ_stalk_specializes'](declarations/germ-stalk-specializes.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [stalkSpecializes_refl](declarations/stalkspecializes-refl.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [stalkSpecializes_comp](declarations/stalkspecializes-comp.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [stalkSpecializes_stalkFunctor_map](declarations/stalkspecializes-stalkfunctor-map.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [stalkSpecializes_stalkPushforward](declarations/stalkspecializes-stalkpushforward.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [stalkCongr](declarations/stalkcongr.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [germ_ext](declarations/germ-ext.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [germ_exist](declarations/germ-exist.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [germ_eq](declarations/germ-eq.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stalkFunctor_map_injective_of_app_injective](declarations/stalkfunctor-map-injective-of-app-injective.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [section_ext](declarations/section-ext.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [app_injective_of_stalkFunctor_map_injective](declarations/app-injective-of-stalkfunctor-map-injective.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [app_injective_iff_stalkFunctor_map_injective](declarations/app-injective-iff-stalkfunctor-map-injective.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [stalkFunctor_preserves_mono](declarations/stalkfunctor-preserves-mono.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [stalk_mono_of_mono](declarations/stalk-mono-of-mono.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mono_of_stalk_mono](declarations/mono-of-stalk-mono.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mono_iff_stalk_mono](declarations/mono-iff-stalk-mono.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [app_surjective_of_injective_of_locally_surjective](declarations/app-surjective-of-injective-of-locally-surjective.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [app_surjective_of_stalkFunctor_map_bijective](declarations/app-surjective-of-stalkfunctor-map-bijective.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [app_bijective_of_stalkFunctor_map_bijective](declarations/app-bijective-of-stalkfunctor-map-bijective.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [app_isIso_of_stalkFunctor_map_iso](declarations/app-isiso-of-stalkfunctor-map-iso.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isIso_of_stalkFunctor_map_iso](declarations/isiso-of-stalkfunctor-map-iso.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isIso_iff_stalkFunctor_map_iso](declarations/isiso-iff-stalkfunctor-map-iso.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [algebra_section_stalk](declarations/algebra-section-stalk.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [stalk_open_algebraMap](declarations/stalk-open-algebramap.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67e6e1524636b3d765655f22d6915cc2fe204ad67af1013fff606ce2fb48c201 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variante757b2ceb98f5812301a93d059fabeac5f9702df952ffa3e61e6f33c78aa129d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
