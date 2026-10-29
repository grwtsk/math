# Bicategory Grothendieck Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variante58224cbf1bc42decfbfca3fc474116d43ca9eba25f8739f4a85b86a4ee56217.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb9dffba8ef0a7ea38c99787192819f087abd9a5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryGrothendieckPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Grothendieck](declarations/grothendieck.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Hom](declarations/hom.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [categoryStruct](declarations/categorystruct-source-edition-2.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Hom.ext](declarations/hom-ext-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Hom.ext_iff](declarations/hom-ext-iff.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [Hom.congr](declarations/hom-congr.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [category](declarations/category-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [forget](declarations/forget-source-edition-2.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [map](declarations/map-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [map_id_map](declarations/map-id-map-source-edition-2.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_comp_forget](declarations/map-comp-forget-source-edition-2.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mapIdIso](declarations/mapidiso.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [map_id_eq](declarations/map-id-eq.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mapCompIso](declarations/mapcompiso-source-edition-2.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [map_comp_eq](declarations/map-comp-eq.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [CoGrothendieck](declarations/cogrothendieck.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [Hom](declarations/hom-source-edition-2.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [categoryStruct](declarations/categorystruct.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Hom.ext](declarations/hom-ext.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Hom.ext_iff](declarations/hom-ext-iff-source-edition-2.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Hom.congr](declarations/hom-congr-source-edition-2.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [category](declarations/category.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [forget](declarations/forget.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [map](declarations/map.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [map_id_map](declarations/map-id-map.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_comp_forget](declarations/map-comp-forget.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mapIdIso](declarations/mapidiso-source-edition-2.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [map_id_eq](declarations/map-id-eq-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mapCompIso](declarations/mapcompiso.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [map_comp_eq](declarations/map-comp-eq-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4db2aff9c42366deb5549afc1138ba07670114c41fffbba155b332abdea68d53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variante58224cbf1bc42decfbfca3fc474116d43ca9eba25f8739f4a85b86a4ee56217.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
