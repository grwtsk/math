# Commuting Involutions Namespaced Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc7ab20d6fe8a462950e2d32f65e4348db9b0c86`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsNamespacedEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](declarations/involutionplus.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [involutionMinus](declarations/involutionminus.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [involutionPlus_apply](declarations/involutionplus-apply.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [involutionMinus_apply](declarations/involutionminus-apply.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [involution_projection_decomposition](declarations/involution-projection-decomposition.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [involutionPlus_idempotent](declarations/involutionplus-idempotent.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [involutionMinus_idempotent](declarations/involutionminus-idempotent.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [involutionPlus_after_minus](declarations/involutionplus-after-minus.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [involutionMinus_after_plus](declarations/involutionminus-after-plus.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [involution_on_plus](declarations/involution-on-plus.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [involution_on_minus](declarations/involution-on-minus.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [CommutingInvolutions](declarations/commutinginvolutions.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [plusPlus_commute](declarations/plusplus-commute.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [plusMinus_commute](declarations/plusminus-commute.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [minusPlus_commute](declarations/minusplus-commute.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [minusMinus_commute](declarations/minusminus-commute.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [sectorPP](declarations/sectorpp.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sectorPM](declarations/sectorpm.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [sectorMP](declarations/sectormp.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sectorMM](declarations/sectormm.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sectorPP_apply](declarations/sectorpp-apply.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sectorPM_apply](declarations/sectorpm-apply.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sectorMP_apply](declarations/sectormp-apply.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sectorMM_apply](declarations/sectormm-apply.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [idempotent_comp_of_commute](declarations/idempotent-comp-of-commute.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sectorPP_idempotent](declarations/sectorpp-idempotent.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sectorPM_idempotent](declarations/sectorpm-idempotent.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sectorMP_idempotent](declarations/sectormp-idempotent.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sectorMM_idempotent](declarations/sectormm-idempotent.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [four_sector_decomposition](declarations/four-sector-decomposition.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sectorPP_after_PM](declarations/sectorpp-after-pm.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sectorPM_after_PP](declarations/sectorpm-after-pp.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sectorPP_after_MP](declarations/sectorpp-after-mp.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sectorMP_after_PP](declarations/sectormp-after-pp.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sectorPP_after_MM](declarations/sectorpp-after-mm.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sectorMM_after_PP](declarations/sectormm-after-pp.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sectorPM_after_MP](declarations/sectorpm-after-mp.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sectorMP_after_PM](declarations/sectormp-after-pm.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sectorPM_after_MM](declarations/sectorpm-after-mm.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sectorMM_after_PM](declarations/sectormm-after-pm.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [sectorMP_after_MM](declarations/sectormp-after-mm.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sectorMM_after_MP](declarations/sectormm-after-mp.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [interventionSector](declarations/interventionsector.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [interventionSector_idempotent](declarations/interventionsector-idempotent.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [first_on_interventionSector](declarations/first-on-interventionsector.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [second_on_interventionSector](declarations/second-on-interventionsector.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f42169e7c5a30c3cc40a66ebeec03b9c0edc82a14e02ea88d5a06c057470d07b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Variant8fde4b166d3f5e142c471f74d3ae4f2cba7f04521342cf7cc2e69434639ef4eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
