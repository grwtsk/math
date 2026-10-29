# Linear Algebra Matrix Block Namespaced Block Triangular One

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97a724930e365f533c97d633991cfcaea93f85d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespacedBlockTriangularOne.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](declarations/blocktriangular.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BlockTriangular.submatrix](declarations/blocktriangular-submatrix.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [blockTriangular_reindex_iff](declarations/blocktriangular-reindex-iff.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [BlockTriangular.transpose](declarations/blocktriangular-transpose.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [blockTriangular_transpose_iff](declarations/blocktriangular-transpose-iff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [blockTriangular_zero](declarations/blocktriangular-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [BlockTriangular.neg](declarations/blocktriangular-neg.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [BlockTriangular.add](declarations/blocktriangular-add.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [BlockTriangular.sub](declarations/blocktriangular-sub.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [BlockTriangular.add_iff_right](declarations/blocktriangular-add-iff-right.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [BlockTriangular.add_iff_left](declarations/blocktriangular-add-iff-left.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [BlockTriangular.sub_iff_right](declarations/blocktriangular-sub-iff-right.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [BlockTriangular.sub_iff_left](declarations/blocktriangular-sub-iff-left.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [BlockTriangular.map](declarations/blocktriangular-map.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [BlockTriangular.comp](declarations/blocktriangular-comp.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [blockTriangular_diagonal](declarations/blocktriangular-diagonal.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [blockTriangular_blockDiagonal'](declarations/blocktriangular-blockdiagonal-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [blockTriangular_blockDiagonal](declarations/blocktriangular-blockdiagonal.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [blockTriangular_one](declarations/blocktriangular-one.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [blockTriangular_single](declarations/blocktriangular-single-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [blockTriangular_single'](declarations/blocktriangular-single.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [blockTriangular_transvection](declarations/blocktriangular-transvection-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [blockTriangular_transvection'](declarations/blocktriangular-transvection.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [BlockTriangular.mul](declarations/blocktriangular-mul.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [upper_two_blockTriangular](declarations/upper-two-blocktriangular.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [equiv_block_det](declarations/equiv-block-det.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [det_toSquareBlock_id](declarations/det-tosquareblock-id.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [det_toBlock](declarations/det-toblock.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [twoBlockTriangular_det](declarations/twoblocktriangular-det-source-edition-2.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [twoBlockTriangular_det'](declarations/twoblocktriangular-det.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [BlockTriangular.det](declarations/blocktriangular-det.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [BlockTriangular.det_fintype](declarations/blocktriangular-det-fintype.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [det_of_upperTriangular](declarations/det-of-uppertriangular.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [det_of_lowerTriangular](declarations/det-of-lowertriangular.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [matrixOfPolynomials_blockTriangular](declarations/matrixofpolynomials-blocktriangular.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [det_matrixOfPolynomials](declarations/det-matrixofpolynomials.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [BlockTriangular.inv_toBlock](declarations/blocktriangular-inv-toblock.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [BlockTriangular.invertibleToBlock](declarations/blocktriangular-invertibletoblock.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toBlock_inverse_eq_zero](declarations/toblock-inverse-eq-zero.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [blockTriangular_inv_of_blockTriangular](declarations/blocktriangular-inv-of-blocktriangular.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95db7633d039ee7ccb3b053672a09848d3b3aaccfa102008c4d7afde1fdcd91c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Block/Variant595b6cd39568ba8e33da3b8257f5bb6680c0d9459703ff13dfd8fa14df62dd6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
