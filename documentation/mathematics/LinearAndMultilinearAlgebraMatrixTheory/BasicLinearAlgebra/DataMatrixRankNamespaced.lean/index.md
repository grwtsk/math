# Data Matrix Rank Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c6a606660ac2905fd24a5c4103df7b4675afc89`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rank](declarations/rank.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [rank_one](declarations/rank-one.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rank_zero](declarations/rank-zero.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rank_le_card_width](declarations/rank-le-card-width.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rank_le_width](declarations/rank-le-width.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rank_mul_le_left](declarations/rank-mul-le-left.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rank_mul_le_right](declarations/rank-mul-le-right.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rank_mul_le](declarations/rank-mul-le.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rank_unit](declarations/rank-unit.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rank_of_isUnit](declarations/rank-of-isunit.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [rank_mul_eq_left_of_isUnit_det](declarations/rank-mul-eq-left-of-isunit-det.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [rank_mul_eq_right_of_isUnit_det](declarations/rank-mul-eq-right-of-isunit-det.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rank_submatrix_le](declarations/rank-submatrix-le.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rank_reindex](declarations/rank-reindex.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rank_submatrix](declarations/rank-submatrix.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rank_eq_finrank_range_toLin](declarations/rank-eq-finrank-range-tolin.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rank_le_card_height](declarations/rank-le-card-height.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rank_le_height](declarations/rank-le-height.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_eq_finrank_span_cols](declarations/rank-eq-finrank-span-cols.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rank_diagonal](declarations/rank-diagonal.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](declarations/ker-mulveclin-conjtranspose-mul-self.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_conjTranspose_mul_self](declarations/rank-conjtranspose-mul-self.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_conjTranspose](declarations/rank-conjtranspose.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_self_mul_conjTranspose](declarations/rank-self-mul-conjtranspose.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ker_mulVecLin_transpose_mul_self](declarations/ker-mulveclin-transpose-mul-self.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rank_transpose_mul_self](declarations/rank-transpose-mul-self.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rank_transpose](declarations/rank-transpose.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_self_mul_transpose](declarations/rank-self-mul-transpose.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rank_eq_finrank_span_row](declarations/rank-eq-finrank-span-row.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db1ecbfa33e6c2644c29f9793ea43b835767d7f9c93be62b0940ea05bf0b39c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
