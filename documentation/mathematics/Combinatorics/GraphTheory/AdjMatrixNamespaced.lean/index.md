# Adj Matrix Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `548bbadda9ef2b01da08ca37039db9bb4c78db80`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/AdjMatrixNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjMatrix](declarations/isadjmatrix.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [apply_diag_ne](declarations/apply-diag-ne.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [apply_ne_one_iff](declarations/apply-ne-one-iff.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [apply_ne_zero_iff](declarations/apply-ne-zero-iff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toGraph](declarations/tograph.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [compl](declarations/compl-source-edition-2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [compl_apply_diag](declarations/compl-apply-diag.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [compl_apply](declarations/compl-apply.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isSymm_compl](declarations/issymm-compl.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isAdjMatrix_compl](declarations/isadjmatrix-compl.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [compl](declarations/compl.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toGraph_compl_eq](declarations/tograph-compl-eq.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [adjMatrix](declarations/adjmatrix.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [adjMatrix_apply](declarations/adjmatrix-apply.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [transpose_adjMatrix](declarations/transpose-adjmatrix.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isSymm_adjMatrix](declarations/issymm-adjmatrix.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isAdjMatrix_adjMatrix](declarations/isadjmatrix-adjmatrix.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toGraph_adjMatrix_eq](declarations/tograph-adjmatrix-eq.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [adjMatrix_dotProduct](declarations/adjmatrix-dotproduct.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [dotProduct_adjMatrix](declarations/dotproduct-adjmatrix.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [adjMatrix_mulVec_apply](declarations/adjmatrix-mulvec-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [adjMatrix_vecMul_apply](declarations/adjmatrix-vecmul-apply.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [adjMatrix_mul_apply](declarations/adjmatrix-mul-apply.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_adjMatrix_apply](declarations/mul-adjmatrix-apply.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [trace_adjMatrix](declarations/trace-adjmatrix.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [adjMatrix_mul_self_apply_self](declarations/adjmatrix-mul-self-apply-self.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [adjMatrix_mulVec_const_apply](declarations/adjmatrix-mulvec-const-apply.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [adjMatrix_mulVec_const_apply_of_regular](declarations/adjmatrix-mulvec-const-apply-of-regular.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [adjMatrix_pow_apply_eq_card_walk](declarations/adjmatrix-pow-apply-eq-card-walk.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [adjMatrix_toGraph_eq](declarations/adjmatrix-tograph-eq.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc0948d410c1ef1ea3253b13cf4a864f2c862c4409c64aa9382e4c8c5fd56b88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant842e9d30954b704620be39700061c8ceedc704b2d7098704d1f9b52af53bde86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
