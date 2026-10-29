# Linear Algebra Matrix Block

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44ac81479012621f8c9392f74d4b4b77ff43dc22`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlock.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](declarations/blocktriangular.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BlockTriangular.submatrix](declarations/blocktriangular-submatrix.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [blockTriangular_reindex_iff](declarations/blocktriangular-reindex-iff.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [BlockTriangular.transpose](declarations/blocktriangular-transpose.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [blockTriangular_transpose_iff](declarations/blocktriangular-transpose-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [blockTriangular_zero](declarations/blocktriangular-zero.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [BlockTriangular.neg](declarations/blocktriangular-neg.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [BlockTriangular.add](declarations/blocktriangular-add.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [BlockTriangular.sub](declarations/blocktriangular-sub.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [blockTriangular_diagonal](declarations/blocktriangular-diagonal.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [blockTriangular_blockDiagonal'](declarations/blocktriangular-blockdiagonal.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [blockTriangular_blockDiagonal](declarations/blocktriangular-blockdiagonal-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [BlockTriangular.mul](declarations/blocktriangular-mul.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [upper_two_blockTriangular](declarations/upper-two-blocktriangular.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [equiv_block_det](declarations/equiv-block-det.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [det_toSquareBlock_id](declarations/det-tosquareblock-id.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [det_toBlock](declarations/det-toblock.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [twoBlockTriangular_det](declarations/twoblocktriangular-det.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [twoBlockTriangular_det'](declarations/twoblocktriangular-det-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [BlockTriangular.det](declarations/blocktriangular-det.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [BlockTriangular.det_fintype](declarations/blocktriangular-det-fintype.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_of_upperTriangular](declarations/det-of-uppertriangular.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [det_of_lowerTriangular](declarations/det-of-lowertriangular.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [BlockTriangular.inv_toBlock](declarations/blocktriangular-inv-toblock.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [BlockTriangular.invertibleToBlock](declarations/blocktriangular-invertibletoblock.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toBlock_inverse_eq_zero](declarations/toblock-inverse-eq-zero.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [blockTriangular_inv_of_blockTriangular](declarations/blocktriangular-inv-of-blocktriangular.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a46cc67d60d75fb3267ca10a1566d8e6c3efc75faa03d152a26df1e81614d2c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Block/Variantbb3720d77b0d5481fb56d09390a2fb552884fd28ef315d4f4270494d79a43afe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
