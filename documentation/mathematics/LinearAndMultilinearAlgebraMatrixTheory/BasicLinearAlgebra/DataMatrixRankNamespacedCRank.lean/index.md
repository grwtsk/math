# Data Matrix Rank Namespaced CRank

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8a7feee81b0a65091710388b0ad2bc4d890f2c2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankNamespacedCRank.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cRank](declarations/crank.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [cRank_toNat_eq_finrank](declarations/crank-tonat-eq-finrank.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [lift_cRank_submatrix_le](declarations/lift-crank-submatrix-le.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cRank_submatrix_le](declarations/crank-submatrix-le.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [cRank_le_card_height](declarations/crank-le-card-height.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [cRank_le_card_width](declarations/crank-le-card-width.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [eRank](declarations/erank.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [eRank_toNat_eq_finrank](declarations/erank-tonat-eq-finrank.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [eRank_submatrix_le](declarations/erank-submatrix-le.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eRank_le_card_width](declarations/erank-le-card-width.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [eRank_le_card_height](declarations/erank-le-card-height.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [rank](declarations/rank.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cRank_one](declarations/crank-one.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eRank_one](declarations/erank-one.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rank_one](declarations/rank-one.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rank_zero](declarations/rank-zero.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cRank_zero](declarations/crank-zero.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eRank_zero](declarations/erank-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_le_card_width](declarations/rank-le-card-width.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rank_le_width](declarations/rank-le-width.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rank_mul_le_left](declarations/rank-mul-le-left.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_mul_le_right](declarations/rank-mul-le-right.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_mul_le](declarations/rank-mul-le.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_unit](declarations/rank-unit.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_of_isUnit](declarations/rank-of-isunit.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rank_mul_eq_left_of_isUnit_det](declarations/rank-mul-eq-left-of-isunit-det.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [rank_mul_eq_right_of_isUnit_det](declarations/rank-mul-eq-right-of-isunit-det.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_submatrix_le](declarations/rank-submatrix-le.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rank_reindex](declarations/rank-reindex.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rank_submatrix](declarations/rank-submatrix.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lift_cRank_submatrix](declarations/lift-crank-submatrix.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cRank_submatrix](declarations/crank-submatrix.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lift_cRank_reindex](declarations/lift-crank-reindex.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cRank_reindex](declarations/crank-reindex.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eRank_submatrix](declarations/erank-submatrix.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eRank_reindex](declarations/erank-reindex.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rank_eq_finrank_range_toLin](declarations/rank-eq-finrank-range-tolin.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rank_le_card_height](declarations/rank-le-card-height.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rank_le_height](declarations/rank-le-height.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rank_eq_finrank_span_cols](declarations/rank-eq-finrank-span-cols.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cRank_toNat_eq_rank](declarations/crank-tonat-eq-rank.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eRank_toNat_eq_rank](declarations/erank-tonat-eq-rank.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rank_diagonal](declarations/rank-diagonal.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cRank_diagonal](declarations/crank-diagonal.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [eRank_diagonal](declarations/erank-diagonal.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](declarations/ker-mulveclin-conjtranspose-mul-self.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rank_conjTranspose_mul_self](declarations/rank-conjtranspose-mul-self.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [rank_conjTranspose](declarations/rank-conjtranspose.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [rank_self_mul_conjTranspose](declarations/rank-self-mul-conjtranspose.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ker_mulVecLin_transpose_mul_self](declarations/ker-mulveclin-transpose-mul-self.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rank_transpose_mul_self](declarations/rank-transpose-mul-self.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rank_transpose](declarations/rank-transpose.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rank_self_mul_transpose](declarations/rank-self-mul-transpose.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [rank_eq_finrank_span_row](declarations/rank-eq-finrank-span-row.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Data Matrix Rank Namespaced CRank](declarations/rank-matrix.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [rank_add_rank_le_card_of_mul_eq_zero](declarations/rank-add-rank-le-card-of-mul-eq-zero.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7ce4bf8afd24785be33058211bbea7d4fd13a0de6de4b92c60bf43b799c7dc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant35dbe46049108677dcbac81f7faa42f6c4f03093bf28f04c3007d455e0b0b5fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
