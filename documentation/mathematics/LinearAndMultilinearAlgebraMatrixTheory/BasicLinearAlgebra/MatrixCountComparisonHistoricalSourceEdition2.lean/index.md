# Matrix Count Comparison Historical Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**18 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Spectral/MatrixCountComparison.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88de4aff802aae87fbf78dd2b6f080e2ac222df8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixCountComparisonHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [eigenvalueCut](declarations/eigenvaluecut.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [eigenvalueCount](declarations/eigenvaluecount.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [eigenvalueCount_eq_roots_card](declarations/eigenvaluecount-eq-roots-card.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [eigenvalueCount_add_of_charpoly_mul](declarations/eigenvaluecount-add-of-charpoly-mul.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [eigenbasis_repr_action](declarations/eigenbasis-repr-action.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [eigenbasis_quadratic](declarations/eigenbasis-quadratic.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [eigenbasis_norm](declarations/eigenbasis-norm.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [low_quadratic](declarations/low-quadratic.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [high_quadratic](declarations/high-quadratic.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [cutSynthesis](declarations/cutsynthesis.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cutSynthesis_repr](declarations/cutsynthesis-repr.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cutSynthesis_injective](declarations/cutsynthesis-injective.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [cutAnalysis](declarations/cutanalysis.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eigenvalueCount_le_of_quadratic](declarations/eigenvaluecount-le-of-quadratic.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eigenvalueCount_le_of_posSemidef](declarations/eigenvaluecount-le-of-possemidef.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eigenvalueCount_le_add_finrank_of_kernel](declarations/eigenvaluecount-le-add-finrank-of-kernel.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eigenvalueCount_le_add_difference_rank](declarations/eigenvaluecount-le-add-difference-rank.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eigenvalueCount_difference_bounds_of_kernel](declarations/eigenvaluecount-difference-bounds-of-kernel.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1057e4a66992bd6e5b059125ade744453a9f2c3187146215213566a833139a3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean","GRWTSK/Spectral/MatrixCountComparison.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
