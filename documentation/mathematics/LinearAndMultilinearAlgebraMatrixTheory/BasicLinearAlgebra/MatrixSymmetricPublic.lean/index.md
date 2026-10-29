# Matrix Symmetric Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69ff49a8f37d99272939c82a32a4db779aa02a3e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixSymmetricPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymm](declarations/issymm.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsSymm.eq](declarations/issymm-eq.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsSymm.ext_iff](declarations/issymm-ext-iff.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsSymm.ext](declarations/issymm-ext.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsSymm.apply](declarations/issymm-apply.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isSymm_mul_transpose_self](declarations/issymm-mul-transpose-self.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isSymm_transpose_mul_self](declarations/issymm-transpose-mul-self.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isSymm_add_transpose_self](declarations/issymm-add-transpose-self.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isSymm_transpose_add_self](declarations/issymm-transpose-add-self.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isSymm_zero](declarations/issymm-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSymm_one](declarations/issymm-one.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsSymm.pow](declarations/issymm-pow.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsSymm.map](declarations/issymm-map.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isSymm_map_iff](declarations/issymm-map-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsSymm.transpose](declarations/issymm-transpose.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isSymm_transpose_iff](declarations/issymm-transpose-iff.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsSymm.conjTranspose](declarations/issymm-conjtranspose.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isSymm_conjTranspose_iff](declarations/issymm-conjtranspose-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsSymm.neg](declarations/issymm-neg.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isSymm_neg_iff](declarations/issymm-neg-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsSymm.add](declarations/issymm-add.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsSymm.sub](declarations/issymm-sub.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsSymm.smul](declarations/issymm-smul.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isSymm_smul_iff](declarations/issymm-smul-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsSymm.dotProduct_mulVec_comm](declarations/issymm-dotproduct-mulvec-comm.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsSymm.submatrix](declarations/issymm-submatrix.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsSymm.reindex](declarations/issymm-reindex.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isSymm_reindex_iff](declarations/issymm-reindex-iff.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isSymm_diagonal](declarations/issymm-diagonal.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsSymm.fromBlocks](declarations/issymm-fromblocks.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isSymm_fromBlocks_iff](declarations/issymm-fromblocks-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isSymm_comp_iff](declarations/issymm-comp-iff.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isSymm_comp_iff_forall](declarations/issymm-comp-iff-forall.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5790907004394cea140512648234f34083ae85f89ed6cb734964440eedd3ccb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Symmetric/Variantba4b006df22b2d4e936bb4f338b54e07f3a4664a6e08f7700a061eda6b4d02de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
