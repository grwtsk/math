# Linear Algebra Matrix Rank Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**72 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5acbd5f7b8f25078c403b18cb5616273c22d3a7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRankNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cRank](declarations/crank.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cRank_subsingleton](declarations/crank-subsingleton.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [cRank_toNat_eq_finrank](declarations/crank-tonat-eq-finrank.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [lift_cRank_submatrix_le](declarations/lift-crank-submatrix-le.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [cRank_submatrix_le](declarations/crank-submatrix-le.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [cRank_le_card_height](declarations/crank-le-card-height.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [cRank_le_card_width](declarations/crank-le-card-width.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [eRank](declarations/erank.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eRank_subsingleton](declarations/erank-subsingleton.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eRank_toNat_eq_finrank](declarations/erank-tonat-eq-finrank.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [eRank_submatrix_le](declarations/erank-submatrix-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [eRank_le_card_width](declarations/erank-le-card-width.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [eRank_le_card_height](declarations/erank-le-card-height.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rank](declarations/rank.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rank_subsingleton](declarations/rank-subsingleton.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cRank_one](declarations/crank-one.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eRank_one](declarations/erank-one.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rank_one](declarations/rank-one.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rank_zero](declarations/rank-zero.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cRank_zero](declarations/crank-zero.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eRank_zero](declarations/erank-zero.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_le_card_width](declarations/rank-le-card-width.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_le_width](declarations/rank-le-width.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rank_mul_le_left](declarations/rank-mul-le-left.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rank_mul_le_right](declarations/rank-mul-le-right.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rank_mul_le](declarations/rank-mul-le.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rank_vecMulVec_le](declarations/rank-vecmulvec-le.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rank_unit](declarations/rank-unit.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rank_of_isUnit](declarations/rank-of-isunit.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rank_of_det_mem_nonZeroDivisors](declarations/rank-of-det-mem-nonzerodivisors.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rank_of_det_ne_zero](declarations/rank-of-det-ne-zero.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [rank_smul_of_mem_nonZeroDivisors](declarations/rank-smul-of-mem-nonzerodivisors.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [rank_mul_eq_left_of_det_mem_nonZeroDivisors](declarations/rank-mul-eq-left-of-det-mem-nonzerodivisors.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [rank_mul_eq_left_of_det_ne_zero](declarations/rank-mul-eq-left-of-det-ne-zero.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [rank_mul_eq_left_of_isUnit_det](declarations/rank-mul-eq-left-of-isunit-det.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rank_mul_eq_right_of_det_mem_nonZeroDivisors](declarations/rank-mul-eq-right-of-det-mem-nonzerodivisors.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [rank_mul_eq_right_of_det_ne_zero](declarations/rank-mul-eq-right-of-det-ne-zero.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [rank_mul_eq_right_of_isUnit_det](declarations/rank-mul-eq-right-of-isunit-det.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [rank_mul_eq_right_of_isLowerTriangular](declarations/rank-mul-eq-right-of-islowertriangular.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [rank_mul_eq_right_of_isUpperTriangular](declarations/rank-mul-eq-right-of-isuppertriangular.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rank_submatrix_le](declarations/rank-submatrix-le.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rank_reindex](declarations/rank-reindex.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rank_submatrix](declarations/rank-submatrix.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lift_cRank_submatrix](declarations/lift-crank-submatrix.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [cRank_submatrix](declarations/crank-submatrix.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lift_cRank_reindex](declarations/lift-crank-reindex.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [cRank_reindex](declarations/crank-reindex.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eRank_submatrix](declarations/erank-submatrix.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eRank_reindex](declarations/erank-reindex.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [rank_eq_finrank_range_toLin](declarations/rank-eq-finrank-range-tolin.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rank_le_card_height](declarations/rank-le-card-height.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rank_le_card_of_support_subset](declarations/rank-le-card-of-support-subset.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rank_le_height](declarations/rank-le-height.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [rank_eq_finrank_span_cols](declarations/rank-eq-finrank-span-cols.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cRank_toNat_eq_rank](declarations/crank-tonat-eq-rank.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [eRank_toNat_eq_rank](declarations/erank-tonat-eq-rank.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [rank_diagonal](declarations/rank-diagonal.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [exists_rank_normal_form](declarations/exists-rank-normal-form.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cRank_diagonal](declarations/crank-diagonal.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [eRank_diagonal](declarations/erank-diagonal.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](declarations/ker-mulveclin-conjtranspose-mul-self.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [rank_conjTranspose_mul_self](declarations/rank-conjtranspose-mul-self.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [rank_conjTranspose](declarations/rank-conjtranspose.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [rank_self_mul_conjTranspose](declarations/rank-self-mul-conjtranspose.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ker_mulVecLin_transpose_mul_self](declarations/ker-mulveclin-transpose-mul-self.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [rank_transpose_mul_self](declarations/rank-transpose-mul-self.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [rank_transpose](declarations/rank-transpose.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [rank_self_mul_transpose](declarations/rank-self-mul-transpose.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [rank_eq_finrank_span_row](declarations/rank-eq-finrank-span-row.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Linear Algebra Matrix Rank Namespaced Public](declarations/rank-matrix.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [rank_add_rank_le_card_of_mul_eq_zero](declarations/rank-add-rank-le-card-of-mul-eq-zero.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Matrix.rank_vecMulVec.](declarations/matrix-rank-vecmulvec.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba1db43d8ec5e9b0c1f11730f8119c6a84d8270afd636906a87f52dc8d1edd49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant0682811b0c013e0df5bf3b6d8a22815f3cda1f8247f4b2d62f82ff9be7e717cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
