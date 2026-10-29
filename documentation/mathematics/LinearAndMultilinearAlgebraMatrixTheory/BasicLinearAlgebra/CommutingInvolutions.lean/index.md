# Commuting Involutions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7367678643a8fbc0fbc0f7608a4173506a8ca46`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](declarations/involutionplus.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [involutionMinus](declarations/involutionminus.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [involutionPlus_apply](declarations/involutionplus-apply.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [involutionMinus_apply](declarations/involutionminus-apply.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [involution_projection_decomposition](declarations/involution-projection-decomposition.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [involutionPlus_idempotent](declarations/involutionplus-idempotent.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [involutionMinus_idempotent](declarations/involutionminus-idempotent.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [involutionPlus_after_minus](declarations/involutionplus-after-minus.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [involutionMinus_after_plus](declarations/involutionminus-after-plus.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [involution_on_plus](declarations/involution-on-plus.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [involution_on_minus](declarations/involution-on-minus.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [CommutingInvolutions](declarations/commutinginvolutions.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [plusPlus_commute](declarations/plusplus-commute.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [plusMinus_commute](declarations/plusminus-commute.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [minusPlus_commute](declarations/minusplus-commute.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [minusMinus_commute](declarations/minusminus-commute.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [sectorPP](declarations/sectorpp.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sectorPM](declarations/sectorpm.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [sectorMP](declarations/sectormp.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sectorMM](declarations/sectormm.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sectorPP_apply](declarations/sectorpp-apply.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sectorPM_apply](declarations/sectorpm-apply.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sectorMP_apply](declarations/sectormp-apply.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [sectorMM_apply](declarations/sectormm-apply.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [idempotent_comp_of_commute](declarations/idempotent-comp-of-commute.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sectorPP_idempotent](declarations/sectorpp-idempotent.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sectorPM_idempotent](declarations/sectorpm-idempotent.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sectorMP_idempotent](declarations/sectormp-idempotent.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sectorMM_idempotent](declarations/sectormm-idempotent.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [four_sector_decomposition](declarations/four-sector-decomposition.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sectorPP_after_PM](declarations/sectorpp-after-pm.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sectorPM_after_PP](declarations/sectorpm-after-pp.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sectorPP_after_MP](declarations/sectorpp-after-mp.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sectorMP_after_PP](declarations/sectormp-after-pp.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sectorPP_after_MM](declarations/sectorpp-after-mm.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sectorMM_after_PP](declarations/sectormm-after-pp.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sectorPM_after_MP](declarations/sectorpm-after-mp.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [sectorMP_after_PM](declarations/sectormp-after-pm.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sectorPM_after_MM](declarations/sectorpm-after-mm.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sectorMM_after_PM](declarations/sectormm-after-pm.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [sectorMP_after_MM](declarations/sectormp-after-mm.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sectorMM_after_MP](declarations/sectormm-after-mp.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [interventionSector](declarations/interventionsector.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [interventionSector_idempotent](declarations/interventionsector-idempotent.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [first_on_interventionSector](declarations/first-on-interventionsector.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [second_on_interventionSector](declarations/second-on-interventionsector.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a03b71402fc2dca2290e970f017ba1cf57b046d5d24ce9e60babba9a90ecb73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
