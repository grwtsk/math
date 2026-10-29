# Bicategory Adjunction Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9c4d30c13e6e16172dc8d0858ee78542ef9cbad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryAdjunctionBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [leftZigzag](declarations/leftzigzag.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [rightZigzag](declarations/rightzigzag.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rightZigzag_idempotent_of_left_triangle](declarations/rightzigzag-idempotent-of-left-triangle.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Adjunction](declarations/adjunction.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [id](declarations/id-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [compUnit](declarations/compunit.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [compCounit](declarations/compcounit.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_left_triangle_aux](declarations/comp-left-triangle-aux.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_right_triangle_aux](declarations/comp-right-triangle-aux.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [comp](declarations/comp.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [leftZigzagIso](declarations/leftzigzagiso.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [rightZigzagIso](declarations/rightzigzagiso.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [leftZigzagIso_hom](declarations/leftzigzagiso-hom.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rightZigzagIso_hom](declarations/rightzigzagiso-hom.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [leftZigzagIso_inv](declarations/leftzigzagiso-inv.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rightZigzagIso_inv](declarations/rightzigzagiso-inv.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [leftZigzagIso_symm](declarations/leftzigzagiso-symm.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rightZigzagIso_symm](declarations/rightzigzagiso-symm.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [right_triangle_of_left_triangle](declarations/right-triangle-of-left-triangle.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [adjointifyCounit](declarations/adjointifycounit.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [adjointifyCounit_left_triangle](declarations/adjointifycounit-left-triangle.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [Equivalence](declarations/equivalence.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [id](declarations/id.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [left_triangle_hom](declarations/left-triangle-hom.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [right_triangle](declarations/right-triangle.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [right_triangle_hom](declarations/right-triangle-hom.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mkOfAdjointifyCounit](declarations/mkofadjointifycounit.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [RightAdjoint](declarations/rightadjoint-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `class` | [IsLeftAdjoint](declarations/isleftadjoint.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsLeftAdjoint.mk](declarations/isleftadjoint-mk.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [getRightAdjoint](declarations/getrightadjoint.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [rightAdjoint](declarations/rightadjoint.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Adjunction.ofIsLeftAdjoint](declarations/adjunction-ofisleftadjoint.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [LeftAdjoint](declarations/leftadjoint-source-edition-2.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `class` | [IsRightAdjoint](declarations/isrightadjoint.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsRightAdjoint.mk](declarations/isrightadjoint-mk.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [getLeftAdjoint](declarations/getleftadjoint.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [leftAdjoint](declarations/leftadjoint.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Adjunction.ofIsRightAdjoint](declarations/adjunction-ofisrightadjoint.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c08698649b8330e8eeb26e79b73521cf5afc36bc64f01992f37d43e3cad5ade4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
