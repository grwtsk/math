# Data Matrix Rank

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant9830e0344c743483b3ce90fa1ed04a533f0cfae2c62cb82feba6bdfbbb3489d5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18d1c42d30c8cc81e072260f5d9af103521134d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRank.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rank](declarations/rank.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rank_one](declarations/rank-one.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rank_zero](declarations/rank-zero.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rank_le_card_width](declarations/rank-le-card-width.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rank_le_width](declarations/rank-le-width.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rank_mul_le_left](declarations/rank-mul-le-left.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rank_mul_le_right](declarations/rank-mul-le-right.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rank_mul_le](declarations/rank-mul-le.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rank_unit](declarations/rank-unit.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rank_of_isUnit](declarations/rank-of-isunit.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [rank_mul_eq_left_of_isUnit_det](declarations/rank-mul-eq-left-of-isunit-det.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [rank_mul_eq_right_of_isUnit_det](declarations/rank-mul-eq-right-of-isunit-det.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rank_submatrix_le](declarations/rank-submatrix-le.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rank_reindex](declarations/rank-reindex.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rank_submatrix](declarations/rank-submatrix.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rank_eq_finrank_range_toLin](declarations/rank-eq-finrank-range-tolin.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rank_le_card_height](declarations/rank-le-card-height.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rank_le_height](declarations/rank-le-height.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_eq_finrank_span_cols](declarations/rank-eq-finrank-span-cols.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rank_diagonal](declarations/rank-diagonal.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](declarations/ker-mulveclin-conjtranspose-mul-self.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_conjTranspose_mul_self](declarations/rank-conjtranspose-mul-self.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_conjTranspose](declarations/rank-conjtranspose.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_self_mul_conjTranspose](declarations/rank-self-mul-conjtranspose.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ker_mulVecLin_transpose_mul_self](declarations/ker-mulveclin-transpose-mul-self.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rank_transpose_mul_self](declarations/rank-transpose-mul-self.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rank_transpose](declarations/rank-transpose.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_self_mul_transpose](declarations/rank-self-mul-transpose.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rank_eq_finrank_span_row](declarations/rank-eq-finrank-span-row.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ece5f90564cfea1a8917147f19b60439f6e34ef98f27d8fc8323f966ef94e319 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant9830e0344c743483b3ce90fa1ed04a533f0cfae2c62cb82feba6bdfbbb3489d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
