# Bicategory Adjunction Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a2ab3e7fdccc160fd3a0804eded6b337ef281e1ea512e1d480c9ec5d93727bf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `303eaa3a58f23e6c48fd911c47b25de3ea38ae10`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [leftZigzag](declarations/leftzigzag.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [rightZigzag](declarations/rightzigzag.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rightZigzag_idempotent_of_left_triangle](declarations/rightzigzag-idempotent-of-left-triangle.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Adjunction](declarations/adjunction.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [id](declarations/id-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [compUnit](declarations/compunit.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [compCounit](declarations/compcounit.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_left_triangle_aux](declarations/comp-left-triangle-aux.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_right_triangle_aux](declarations/comp-right-triangle-aux.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [comp](declarations/comp.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [leftZigzagIso](declarations/leftzigzagiso.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [rightZigzagIso](declarations/rightzigzagiso.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [leftZigzagIso_hom](declarations/leftzigzagiso-hom.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rightZigzagIso_hom](declarations/rightzigzagiso-hom.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [leftZigzagIso_inv](declarations/leftzigzagiso-inv.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rightZigzagIso_inv](declarations/rightzigzagiso-inv.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [leftZigzagIso_symm](declarations/leftzigzagiso-symm.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rightZigzagIso_symm](declarations/rightzigzagiso-symm.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [right_triangle_of_left_triangle](declarations/right-triangle-of-left-triangle.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [adjointifyCounit](declarations/adjointifycounit.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [adjointifyCounit_left_triangle](declarations/adjointifycounit-left-triangle.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [Equivalence](declarations/equivalence.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [id](declarations/id.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [left_triangle_hom](declarations/left-triangle-hom.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [right_triangle](declarations/right-triangle.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [right_triangle_hom](declarations/right-triangle-hom.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mkOfAdjointifyCounit](declarations/mkofadjointifycounit.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [adj](declarations/adj.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [RightAdjoint](declarations/rightadjoint-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [IsLeftAdjoint](declarations/isleftadjoint.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsLeftAdjoint.mk](declarations/isleftadjoint-mk.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [getRightAdjoint](declarations/getrightadjoint.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [rightAdjoint](declarations/rightadjoint.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Adjunction.ofIsLeftAdjoint](declarations/adjunction-ofisleftadjoint.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [LeftAdjoint](declarations/leftadjoint.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [IsRightAdjoint](declarations/isrightadjoint.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsRightAdjoint.mk](declarations/isrightadjoint-mk.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [getLeftAdjoint](declarations/getleftadjoint.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [leftAdjoint](declarations/leftadjoint-source-edition-2.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [Adjunction.ofIsRightAdjoint](declarations/adjunction-ofisrightadjoint.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [leftZigzag_map](declarations/leftzigzag-map.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [rightZigzag_map](declarations/rightzigzag-map.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [mapAdjunction](declarations/mapadjunction-source-edition-2.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [mapAdjunction](declarations/mapadjunction.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [mapAdjunction_unit'](declarations/mapadjunction-unit.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [mapAdjunction_counit'](declarations/mapadjunction-counit.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5522757b0a6761f83066c4588612b30c5b687d791db4f907375529f7fbe1595a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a2ab3e7fdccc160fd3a0804eded6b337ef281e1ea512e1d480c9ec5d93727bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
