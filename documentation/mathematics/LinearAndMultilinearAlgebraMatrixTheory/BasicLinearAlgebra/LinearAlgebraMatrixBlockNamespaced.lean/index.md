# Linear Algebra Matrix Block Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d57b471e4911406eb326b70629dc71cc4f45a250`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixBlockNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](declarations/blocktriangular.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BlockTriangular.submatrix](declarations/blocktriangular-submatrix.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [blockTriangular_reindex_iff](declarations/blocktriangular-reindex-iff.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [BlockTriangular.transpose](declarations/blocktriangular-transpose.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [blockTriangular_transpose_iff](declarations/blocktriangular-transpose-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [blockTriangular_zero](declarations/blocktriangular-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [BlockTriangular.neg](declarations/blocktriangular-neg.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [BlockTriangular.add](declarations/blocktriangular-add.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [BlockTriangular.sub](declarations/blocktriangular-sub.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [blockTriangular_diagonal](declarations/blocktriangular-diagonal.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [blockTriangular_blockDiagonal'](declarations/blocktriangular-blockdiagonal.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [blockTriangular_blockDiagonal](declarations/blocktriangular-blockdiagonal-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [BlockTriangular.mul](declarations/blocktriangular-mul.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [upper_two_blockTriangular](declarations/upper-two-blocktriangular.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [equiv_block_det](declarations/equiv-block-det.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [det_toSquareBlock_id](declarations/det-tosquareblock-id.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [det_toBlock](declarations/det-toblock.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [twoBlockTriangular_det](declarations/twoblocktriangular-det-source-edition-2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [twoBlockTriangular_det'](declarations/twoblocktriangular-det.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [BlockTriangular.det](declarations/blocktriangular-det.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [BlockTriangular.det_fintype](declarations/blocktriangular-det-fintype.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_of_upperTriangular](declarations/det-of-uppertriangular.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [det_of_lowerTriangular](declarations/det-of-lowertriangular.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [BlockTriangular.inv_toBlock](declarations/blocktriangular-inv-toblock.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [BlockTriangular.invertibleToBlock](declarations/blocktriangular-invertibletoblock.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toBlock_inverse_eq_zero](declarations/toblock-inverse-eq-zero.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [blockTriangular_inv_of_blockTriangular](declarations/blocktriangular-inv-of-blocktriangular.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=449d942f7be554a468b6d3a112a21e144c3bbe3731251c1f828b0b2de40655b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Block/Varianteba6d6c5cc8ccd48a2319ed81a68a1d3f0ccd1efdbbfd95ae43363dc02b5595b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
