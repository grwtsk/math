# Data Matrix Rank CRank

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 53 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2e66ba299c1ed33821d3fd6c0bc9441ff8e27d8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRankCRank.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cRank](declarations/crank.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [cRank_toNat_eq_finrank](declarations/crank-tonat-eq-finrank.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [lift_cRank_submatrix_le](declarations/lift-crank-submatrix-le.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cRank_submatrix_le](declarations/crank-submatrix-le.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [cRank_le_card_height](declarations/crank-le-card-height.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [cRank_le_card_width](declarations/crank-le-card-width.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [eRank](declarations/erank.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [eRank_toNat_eq_finrank](declarations/erank-tonat-eq-finrank.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [eRank_submatrix_le](declarations/erank-submatrix-le.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eRank_le_card_width](declarations/erank-le-card-width.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [eRank_le_card_height](declarations/erank-le-card-height.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [rank](declarations/rank.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cRank_one](declarations/crank-one.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eRank_one](declarations/erank-one.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rank_one](declarations/rank-one.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rank_zero](declarations/rank-zero.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cRank_zero](declarations/crank-zero.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eRank_zero](declarations/erank-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_le_card_width](declarations/rank-le-card-width.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rank_le_width](declarations/rank-le-width.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rank_mul_le_left](declarations/rank-mul-le-left.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_mul_le_right](declarations/rank-mul-le-right.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_mul_le](declarations/rank-mul-le.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_unit](declarations/rank-unit.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_of_isUnit](declarations/rank-of-isunit.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rank_mul_eq_left_of_isUnit_det](declarations/rank-mul-eq-left-of-isunit-det.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [rank_mul_eq_right_of_isUnit_det](declarations/rank-mul-eq-right-of-isunit-det.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_submatrix_le](declarations/rank-submatrix-le.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rank_reindex](declarations/rank-reindex.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rank_submatrix](declarations/rank-submatrix.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lift_cRank_submatrix](declarations/lift-crank-submatrix.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cRank_submatrix](declarations/crank-submatrix.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lift_cRank_reindex](declarations/lift-crank-reindex.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cRank_reindex](declarations/crank-reindex.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eRank_submatrix](declarations/erank-submatrix.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eRank_reindex](declarations/erank-reindex.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rank_eq_finrank_range_toLin](declarations/rank-eq-finrank-range-tolin.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rank_le_card_height](declarations/rank-le-card-height.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rank_le_height](declarations/rank-le-height.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rank_eq_finrank_span_cols](declarations/rank-eq-finrank-span-cols.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cRank_toNat_eq_rank](declarations/crank-tonat-eq-rank.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [eRank_toNat_eq_rank](declarations/erank-tonat-eq-rank.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rank_diagonal](declarations/rank-diagonal.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [cRank_diagonal](declarations/crank-diagonal.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [eRank_diagonal](declarations/erank-diagonal.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](declarations/ker-mulveclin-conjtranspose-mul-self.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rank_conjTranspose_mul_self](declarations/rank-conjtranspose-mul-self.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [rank_conjTranspose](declarations/rank-conjtranspose.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [rank_self_mul_conjTranspose](declarations/rank-self-mul-conjtranspose.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ker_mulVecLin_transpose_mul_self](declarations/ker-mulveclin-transpose-mul-self.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rank_transpose_mul_self](declarations/rank-transpose-mul-self.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rank_transpose](declarations/rank-transpose.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rank_self_mul_transpose](declarations/rank-self-mul-transpose.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [rank_eq_finrank_span_row](declarations/rank-eq-finrank-span-row.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [_root_.LinearIndependent.rank_matrix](declarations/root-linearindependent-rank-matrix.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [rank_add_rank_le_card_of_mul_eq_zero](declarations/rank-add-rank-le-card-of-mul-eq-zero.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=086022c466fbb901b10c4a5aa8763fee566228598c161782b82bb228f3f493d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant1cc6559d18d181a9b16cab71bcc21f0a6e5f5785741257f49ec4bc7d66b74ab5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
