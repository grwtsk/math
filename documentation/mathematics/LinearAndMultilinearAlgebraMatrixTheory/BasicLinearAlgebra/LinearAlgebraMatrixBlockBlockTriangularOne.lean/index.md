# Linear Algebra Matrix Block Block Triangular One

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b695c8102d9a3c287fab061cfeb205fe64f7b93`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockBlockTriangularOne.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](declarations/blocktriangular.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BlockTriangular.submatrix](declarations/blocktriangular-submatrix.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [blockTriangular_reindex_iff](declarations/blocktriangular-reindex-iff.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [BlockTriangular.transpose](declarations/blocktriangular-transpose.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [blockTriangular_transpose_iff](declarations/blocktriangular-transpose-iff.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [blockTriangular_zero](declarations/blocktriangular-zero.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [BlockTriangular.neg](declarations/blocktriangular-neg.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [BlockTriangular.add](declarations/blocktriangular-add.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [BlockTriangular.sub](declarations/blocktriangular-sub.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [BlockTriangular.add_iff_right](declarations/blocktriangular-add-iff-right.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [BlockTriangular.add_iff_left](declarations/blocktriangular-add-iff-left.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [BlockTriangular.sub_iff_right](declarations/blocktriangular-sub-iff-right.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [BlockTriangular.sub_iff_left](declarations/blocktriangular-sub-iff-left.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [BlockTriangular.map](declarations/blocktriangular-map.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [BlockTriangular.comp](declarations/blocktriangular-comp.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [blockTriangular_diagonal](declarations/blocktriangular-diagonal.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [blockTriangular_blockDiagonal'](declarations/blocktriangular-blockdiagonal-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [blockTriangular_blockDiagonal](declarations/blocktriangular-blockdiagonal.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [blockTriangular_one](declarations/blocktriangular-one.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [blockTriangular_single](declarations/blocktriangular-single.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [blockTriangular_single'](declarations/blocktriangular-single-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [blockTriangular_transvection](declarations/blocktriangular-transvection.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [blockTriangular_transvection'](declarations/blocktriangular-transvection-source-edition-2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [BlockTriangular.mul](declarations/blocktriangular-mul.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [upper_two_blockTriangular](declarations/upper-two-blocktriangular.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [equiv_block_det](declarations/equiv-block-det.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [det_toSquareBlock_id](declarations/det-tosquareblock-id.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [det_toBlock](declarations/det-toblock.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [twoBlockTriangular_det](declarations/twoblocktriangular-det.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [twoBlockTriangular_det'](declarations/twoblocktriangular-det-source-edition-2.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [BlockTriangular.det](declarations/blocktriangular-det.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [BlockTriangular.det_fintype](declarations/blocktriangular-det-fintype.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [det_of_upperTriangular](declarations/det-of-uppertriangular.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [det_of_lowerTriangular](declarations/det-of-lowertriangular.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [matrixOfPolynomials_blockTriangular](declarations/matrixofpolynomials-blocktriangular.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [det_matrixOfPolynomials](declarations/det-matrixofpolynomials.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [BlockTriangular.inv_toBlock](declarations/blocktriangular-inv-toblock.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [BlockTriangular.invertibleToBlock](declarations/blocktriangular-invertibletoblock.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toBlock_inverse_eq_zero](declarations/toblock-inverse-eq-zero.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [blockTriangular_inv_of_blockTriangular](declarations/blocktriangular-inv-of-blocktriangular.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=003e507d32c85dac2ffa6c6918e2bde6ca769d3e01a833a0552ed285ff9bba63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
