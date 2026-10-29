# Bicategory Adjunction Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7282ff27339fda6f223d92dec1ba558cccea1ed52e2d7b19dfa1669fca76f8c6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db86a5f382c1a94a43da1b7e6a281dd59b117355`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [leftZigzag](declarations/leftzigzag.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [rightZigzag](declarations/rightzigzag.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rightZigzag_idempotent_of_left_triangle](declarations/rightzigzag-idempotent-of-left-triangle.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Adjunction](declarations/adjunction.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [id](declarations/id-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [compUnit](declarations/compunit.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [compCounit](declarations/compcounit.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_left_triangle_aux](declarations/comp-left-triangle-aux.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_right_triangle_aux](declarations/comp-right-triangle-aux.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [comp](declarations/comp.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [leftZigzagIso](declarations/leftzigzagiso.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [rightZigzagIso](declarations/rightzigzagiso.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [leftZigzagIso_hom](declarations/leftzigzagiso-hom.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rightZigzagIso_hom](declarations/rightzigzagiso-hom.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [leftZigzagIso_inv](declarations/leftzigzagiso-inv.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rightZigzagIso_inv](declarations/rightzigzagiso-inv.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [leftZigzagIso_symm](declarations/leftzigzagiso-symm.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rightZigzagIso_symm](declarations/rightzigzagiso-symm.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [right_triangle_of_left_triangle](declarations/right-triangle-of-left-triangle.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [adjointifyCounit](declarations/adjointifycounit.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [adjointifyCounit_left_triangle](declarations/adjointifycounit-left-triangle.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [Equivalence](declarations/equivalence.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [id](declarations/id.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [left_triangle_hom](declarations/left-triangle-hom.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [right_triangle](declarations/right-triangle.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [right_triangle_hom](declarations/right-triangle-hom.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mkOfAdjointifyCounit](declarations/mkofadjointifycounit.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [adj](declarations/adj.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [RightAdjoint](declarations/rightadjoint-source-edition-2.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `class` | [IsLeftAdjoint](declarations/isleftadjoint.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsLeftAdjoint.mk](declarations/isleftadjoint-mk.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [getRightAdjoint](declarations/getrightadjoint.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [rightAdjoint](declarations/rightadjoint.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Adjunction.ofIsLeftAdjoint](declarations/adjunction-ofisleftadjoint.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [LeftAdjoint](declarations/leftadjoint.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [IsRightAdjoint](declarations/isrightadjoint.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsRightAdjoint.mk](declarations/isrightadjoint-mk.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [getLeftAdjoint](declarations/getleftadjoint.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [leftAdjoint](declarations/leftadjoint-source-edition-2.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [Adjunction.ofIsRightAdjoint](declarations/adjunction-ofisrightadjoint.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [leftZigzag_map](declarations/leftzigzag-map.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [rightZigzag_map](declarations/rightzigzag-map.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [mapAdjunction](declarations/mapadjunction.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [mapAdjunction](declarations/mapadjunction-source-edition-2.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [mapAdjunction_unit'](declarations/mapadjunction-unit.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [mapAdjunction_counit'](declarations/mapadjunction-counit.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee2adf4ae4589aabdf8735318cb32dd356c2393d6b593a27d88941ca6a1e7d64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7282ff27339fda6f223d92dec1ba558cccea1ed52e2d7b19dfa1669fca76f8c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
