# Sheafify

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `060af8b81f87c9a911eff19cabd08a88feb3835c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Sheafify.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [smul](declarations/smul.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [_root_.PresheafOfModules.Sheafify.app_eq_of_isLocallyInjective](declarations/root-presheafofmodules-sheafify-app-eq-of-islocallyinjective.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isCompatible_map_smul_aux](declarations/iscompatible-map-smul-aux.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isCompatible_map_smul](declarations/iscompatible-map-smul.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [SMulCandidate](declarations/smulcandidate.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [SMulCandidate.mk'](declarations/smulcandidate-mk.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [smulCandidate](declarations/smulcandidate-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [smul](declarations/smul-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [map_smul_eq](declarations/map-smul-eq.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [one_smul](declarations/one-smul.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [zero_smul](declarations/zero-smul.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [smul_zero](declarations/smul-zero.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [smul_add](declarations/smul-add.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [add_smul](declarations/add-smul.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mul_smul](declarations/mul-smul.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [module](declarations/module.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [map_smul](declarations/map-smul.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sheafify](declarations/sheafify.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toSheafify](declarations/tosheafify.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [toSheafify_app_apply](declarations/tosheafify-app-apply-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [toSheafify_app_apply'](declarations/tosheafify-app-apply.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [toPresheaf_map_toSheafify](declarations/topresheaf-map-tosheafify.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [sheafifyHomEquiv'](declarations/sheafifyhomequiv-source-edition-2.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [comp_toPresheaf_map_sheafifyHomEquiv'_symm_hom](declarations/comp-topresheaf-map-sheafifyhomequiv-symm-hom.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [sheafifyHomEquiv](declarations/sheafifyhomequiv.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [sheafifyMap](declarations/sheafifymap.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e371eca1843f0f56c9a8d9a8f06172c35b701497a9d6e593c05070efd8b0e8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variant081840adb6fdeebf4975090ef7644a69708616b4ae989ae0f5a3a1363163319b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
