# Jacobi Transfer Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `724dce41da89e50f002a8c96c9cbbca462be8018`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/JacobiTransferNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [schrodingerTransfer](declarations/schrodingertransfer.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rawState](declarations/rawstate.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [schrodinger_recurrence_iff_transfer](declarations/schrodinger-recurrence-iff-transfer.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [det_schrodingerTransfer](declarations/det-schrodingertransfer.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [schrodingerSL](declarations/schrodingersl.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rawJacobiTransfer](declarations/rawjacobitransfer.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [jacobiRecurrence](declarations/jacobirecurrence.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [jacobi_recurrence_iff_solved](declarations/jacobi-recurrence-iff-solved.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [jacobi_recurrence_iff_raw_transfer](declarations/jacobi-recurrence-iff-raw-transfer.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [det_rawJacobiTransfer](declarations/det-rawjacobitransfer.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [weightedState](declarations/weightedstate.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [weightedJacobiTransfer](declarations/weightedjacobitransfer.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [jacobi_recurrence_iff_weighted_transfer](declarations/jacobi-recurrence-iff-weighted-transfer.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [det_weightedJacobiTransfer](declarations/det-weightedjacobitransfer.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [weightedJacobiSL](declarations/weightedjacobisl.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [weightedJacobiTransfer_schrodinger](declarations/weightedjacobitransfer-schrodinger.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rawJacobiTransfer_schrodinger](declarations/rawjacobitransfer-schrodinger.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [stateWeightingMatrix](declarations/stateweightingmatrix.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [stateWeightingMatrix_mulVec](declarations/stateweightingmatrix-mulvec.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [weighted_raw_intertwining](declarations/weighted-raw-intertwining.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rawSequenceState](declarations/rawsequencestate.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [weightedSequenceState](declarations/weightedsequencestate.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [schrodinger_sequence_iff_transfer](declarations/schrodinger-sequence-iff-transfer.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [jacobi_sequence_iff_raw_transfer](declarations/jacobi-sequence-iff-raw-transfer.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [jacobi_sequence_iff_weighted_transfer](declarations/jacobi-sequence-iff-weighted-transfer.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rawJacobiTransfer_not_det_one](declarations/rawjacobitransfer-not-det-one.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [schrodinger_same_SL_syntax_not_equal](declarations/schrodinger-same-sl-syntax-not-equal.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [twoSiteJacobi](declarations/twositejacobi.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [twoSiteJacobi_cyclic](declarations/twositejacobi-cyclic.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cyclic_coefficient_zero_without_zero_eigenvector](declarations/cyclic-coefficient-zero-without-zero-eigenvector.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [twoSiteJacobi_first_three_moments_match](declarations/twositejacobi-first-three-moments-match.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [twoSiteJacobi_not_conjugate](declarations/twositejacobi-not-conjugate.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=087801453765606807abb9d35c8188d09f95dc7f4c976239ab84d73bb66fbb0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/JacobiTransfer/Varianteb5b05e0522a8b01641822323d4afdb280f7c417c47e60824a0a3932622fcd38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
