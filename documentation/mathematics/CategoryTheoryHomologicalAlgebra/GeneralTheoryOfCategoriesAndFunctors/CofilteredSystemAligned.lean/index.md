# Cofiltered System Aligned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7479641f17904982c3e3483189e2c7b18965396`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CofilteredSystemAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonempty_sections_of_finite_cofiltered_system.init](declarations/nonempty-sections-of-finite-cofiltered-system-init.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [nonempty_sections_of_finite_cofiltered_system](declarations/nonempty-sections-of-finite-cofiltered-system.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [nonempty_sections_of_finite_inverse_system](declarations/nonempty-sections-of-finite-inverse-system.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [eventualRange](declarations/eventualrange.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_eventualRange_iff](declarations/mem-eventualrange-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [IsMittagLeffler](declarations/ismittagleffler.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isMittagLeffler_iff_eventualRange](declarations/ismittagleffler-iff-eventualrange.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsMittagLeffler.subset_image_eventualRange](declarations/ismittagleffler-subset-image-eventualrange.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eventualRange_eq_range_precomp](declarations/eventualrange-eq-range-precomp.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isMittagLeffler_of_surjective](declarations/ismittagleffler-of-surjective.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toPreimages](declarations/topreimages.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [toPreimages_finite](declarations/topreimages-finite.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eventualRange_mapsTo](declarations/eventualrange-mapsto.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsMittagLeffler.eq_image_eventualRange](declarations/ismittagleffler-eq-image-eventualrange.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eventualRange_eq_iff](declarations/eventualrange-eq-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isMittagLeffler_iff_subset_range_comp](declarations/ismittagleffler-iff-subset-range-comp.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsMittagLeffler.toPreimages](declarations/ismittagleffler-topreimages.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isMittagLeffler_of_exists_finite_range](declarations/ismittagleffler-of-exists-finite-range.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [toEventualRanges](declarations/toeventualranges.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [toEventualRanges_finite](declarations/toeventualranges-finite.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toEventualRangesSectionsEquiv](declarations/toeventualrangessectionsequiv.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [surjective_toEventualRanges](declarations/surjective-toeventualranges.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toEventualRanges_nonempty](declarations/toeventualranges-nonempty.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [thin_diagram_of_surjective](declarations/thin-diagram-of-surjective.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toPreimages_nonempty_of_surjective](declarations/topreimages-nonempty-of-surjective.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval_section_injective_of_eventually_injective](declarations/eval-section-injective-of-eventually-injective.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_section_surjective_of_surjective](declarations/eval-section-surjective-of-surjective.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eventually_injective](declarations/eventually-injective.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83dbe99a97e5fea7ff60552e2d715301f9f36ceef136446fbb71ac455e4ef5f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variantef2dd74d103f7509d3244b80f567974d70e1fcc998c798e49ecede55c7638361.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
