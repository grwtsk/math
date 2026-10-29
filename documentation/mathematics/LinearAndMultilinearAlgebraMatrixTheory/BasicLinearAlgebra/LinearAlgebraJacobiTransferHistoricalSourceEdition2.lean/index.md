# Linear Algebra Jacobi Transfer Historical Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/JacobiTransfer.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8390b8781c489e6258c91c64ce4d235f8ae72639`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraJacobiTransferHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rawJacobiTransfer](declarations/rawjacobitransfer.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [jacobiRecurrence](declarations/jacobirecurrence.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [jacobi_recurrence_iff_solved](declarations/jacobi-recurrence-iff-solved.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [jacobi_recurrence_iff_raw_transfer](declarations/jacobi-recurrence-iff-raw-transfer.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [det_rawJacobiTransfer](declarations/det-rawjacobitransfer.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [weightedState](declarations/weightedstate.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [weightedJacobiTransfer](declarations/weightedjacobitransfer.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [jacobi_recurrence_iff_weighted_transfer](declarations/jacobi-recurrence-iff-weighted-transfer.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [det_weightedJacobiTransfer](declarations/det-weightedjacobitransfer.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [weightedJacobiSL](declarations/weightedjacobisl.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedJacobiTransfer_schrodinger](declarations/weightedjacobitransfer-schrodinger.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rawJacobiTransfer_schrodinger](declarations/rawjacobitransfer-schrodinger.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stateWeightingMatrix](declarations/stateweightingmatrix.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stateWeightingMatrix_mulVec](declarations/stateweightingmatrix-mulvec.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weighted_raw_intertwining](declarations/weighted-raw-intertwining.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [rawSequenceState](declarations/rawsequencestate.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [weightedSequenceState](declarations/weightedsequencestate.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [schrodinger_sequence_iff_transfer](declarations/schrodinger-sequence-iff-transfer.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [jacobi_sequence_iff_raw_transfer](declarations/jacobi-sequence-iff-raw-transfer.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [jacobi_sequence_iff_weighted_transfer](declarations/jacobi-sequence-iff-weighted-transfer.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rawJacobiTransfer_not_det_one](declarations/rawjacobitransfer-not-det-one.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [twoSiteJacobi](declarations/twositejacobi.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [twoSiteJacobi_cyclic](declarations/twositejacobi-cyclic.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cyclic_coefficient_zero_without_zero_eigenvector](declarations/cyclic-coefficient-zero-without-zero-eigenvector.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [twoSiteJacobi_first_three_moments_match](declarations/twositejacobi-first-three-moments-match.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [twoSiteJacobi_not_conjugate](declarations/twositejacobi-not-conjugate.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=931b027b7623d3b62b22b3bfbb40f0339fcc74401c8496abbdd37c0d0e421736 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiTransfer.lean","GRWTSK/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
