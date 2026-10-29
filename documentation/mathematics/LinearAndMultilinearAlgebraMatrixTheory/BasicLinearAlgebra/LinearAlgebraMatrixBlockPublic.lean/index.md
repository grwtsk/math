# Linear Algebra Matrix Block Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93b7d0d9959dc8d03294789ee6727e8b21dbcf03`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](declarations/blocktriangular.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [IsUpperTriangular](declarations/isuppertriangular.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [IsLowerTriangular](declarations/islowertriangular.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [IsIndecomposable](declarations/isindecomposable.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [BlockTriangular.submatrix](declarations/blocktriangular-submatrix.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [blockTriangular_reindex_iff](declarations/blocktriangular-reindex-iff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [BlockTriangular.transpose](declarations/blocktriangular-transpose.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [blockTriangular_transpose_iff](declarations/blocktriangular-transpose-iff.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [blockTriangular_zero](declarations/blocktriangular-zero.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [decidableBlockTriangular](declarations/decidableblocktriangular.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [BlockTriangular.neg](declarations/blocktriangular-neg.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [BlockTriangular.add](declarations/blocktriangular-add.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [BlockTriangular.sub](declarations/blocktriangular-sub.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [BlockTriangular.add_iff_right](declarations/blocktriangular-add-iff-right.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [BlockTriangular.add_iff_left](declarations/blocktriangular-add-iff-left.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [BlockTriangular.sub_iff_right](declarations/blocktriangular-sub-iff-right.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [BlockTriangular.sub_iff_left](declarations/blocktriangular-sub-iff-left.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [BlockTriangular.map](declarations/blocktriangular-map.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [BlockTriangular.comp](declarations/blocktriangular-comp.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [blockTriangular_diagonal](declarations/blocktriangular-diagonal.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [blockTriangular_blockDiagonal'](declarations/blocktriangular-blockdiagonal-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [blockTriangular_blockDiagonal](declarations/blocktriangular-blockdiagonal.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [blockTriangular_one](declarations/blocktriangular-one.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [blockTriangular_single](declarations/blocktriangular-single.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [blockTriangular_single'](declarations/blocktriangular-single-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [blockTriangular_transvection](declarations/blocktriangular-transvection.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [blockTriangular_transvection'](declarations/blocktriangular-transvection-source-edition-2.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [BlockTriangular.mul](declarations/blocktriangular-mul.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [blockTriangularSubsemiring](declarations/blocktriangularsubsemiring.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_blockTriangularSubsemiring](declarations/mem-blocktriangularsubsemiring.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [BlockTriangular.pow](declarations/blocktriangular-pow.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [blockTriangular_algebraMap](declarations/blocktriangular-algebramap.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [blockTriangularSubalgebra](declarations/blocktriangularsubalgebra.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_blockTriangularSubalgebra](declarations/mem-blocktriangularsubalgebra.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isIndecomposable_iff_blockTriangular_const](declarations/isindecomposable-iff-blocktriangular-const.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [upper_two_blockTriangular](declarations/upper-two-blocktriangular.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [equiv_block_det](declarations/equiv-block-det.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [det_toSquareBlock_id](declarations/det-tosquareblock-id.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [det_toBlock](declarations/det-toblock.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [twoBlockTriangular_det](declarations/twoblocktriangular-det.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [twoBlockTriangular_det'](declarations/twoblocktriangular-det-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [BlockTriangular.det](declarations/blocktriangular-det.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [BlockTriangular.det_fintype](declarations/blocktriangular-det-fintype.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [det_of_isUpperTriangular](declarations/det-of-isuppertriangular.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [det_of_isLowerTriangular](declarations/det-of-islowertriangular.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [matrixOfPolynomials_isUpperTriangular](declarations/matrixofpolynomials-isuppertriangular.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [det_matrixOfPolynomials](declarations/det-matrixofpolynomials.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [BlockTriangular.inv_toBlock](declarations/blocktriangular-inv-toblock.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [BlockTriangular.invertibleToBlock](declarations/blocktriangular-invertibletoblock.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [toBlock_inverse_eq_zero](declarations/toblock-inverse-eq-zero.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [blockTriangular_inv_of_blockTriangular](declarations/blocktriangular-inv-of-blocktriangular.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=020d3f0f97718ebea02958bcc700c6df13962154b98a584b5272672710d5a5bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
