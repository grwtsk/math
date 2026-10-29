# Adj Matrix Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**72 observed declarations and anonymous commands**, 64 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6cd78f0a5c115c0b1df853a0ab4e0363346ad009`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/AdjMatrixPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAdjMatrix](declarations/isadjmatrix.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [zero](declarations/zero.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [apply_diag_ne](declarations/apply-diag-ne.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [apply_ne_one_iff](declarations/apply-ne-one-iff.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [apply_ne_zero_iff](declarations/apply-ne-zero-iff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [diag_eq_zero](declarations/diag-eq-zero.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [submatrix](declarations/submatrix.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [_root_.Matrix.isAdjMatrix_submatrix_iff](declarations/root-matrix-isadjmatrix-submatrix-iff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reindex](declarations/reindex.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [_root_.Matrix.isAdjMatrix_reindex_iff](declarations/root-matrix-isadjmatrix-reindex-iff.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toGraph](declarations/tograph.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toGraphSubmatrixHom](declarations/tographsubmatrixhom.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [toGraphSubmatrixEmbedding](declarations/tographsubmatrixembedding.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toGraphSubmatrixEmbedding_apply](declarations/tographsubmatrixembedding-apply.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toGraphReindexIso](declarations/tographreindexiso.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hadamard_self](declarations/hadamard-self.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isAdjMatrix_iff_hadamard](declarations/isadjmatrix-iff-hadamard.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [compl](declarations/compl-source-edition-2.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [compl_apply_diag](declarations/compl-apply-diag.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [compl_apply](declarations/compl-apply.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isSymm_compl](declarations/issymm-compl.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isAdjMatrix_compl](declarations/isadjmatrix-compl.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsAdjMatrix.compl_inj](declarations/isadjmatrix-compl-inj.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsAdjMatrix.compl_compl](declarations/isadjmatrix-compl-compl.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [compl](declarations/compl.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toGraph_compl_eq](declarations/tograph-compl-eq.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [adjMatrix](declarations/adjmatrix.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [adjMatrix_apply](declarations/adjmatrix-apply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [adjMatrix_bot](declarations/adjmatrix-bot.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [adjMatrix_top](declarations/adjmatrix-top.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [transpose_adjMatrix](declarations/transpose-adjmatrix.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isSymm_adjMatrix](declarations/issymm-adjmatrix.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isAdjMatrix_adjMatrix](declarations/isadjmatrix-adjmatrix.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [diag_adjMatrix](declarations/diag-adjmatrix.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toGraph_adjMatrix_eq](declarations/tograph-adjmatrix-eq.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [compl_adjMatrix_eq_adjMatrix_compl](declarations/compl-adjmatrix-eq-adjmatrix-compl.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Embedding.submatrix_adjMatrix](declarations/embedding-submatrix-adjmatrix.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Iso.reindex_adjMatrix](declarations/iso-reindex-adjmatrix.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsCompl.adjMatrix_add_adjMatrix_eq_adjMatrix_completeGraph](declarations/iscompl-adjmatrix-add-adjmatrix-eq-adjmatrix-completegraph.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [adjMatrix_add_compl_adjMatrix_eq_adjMatrix_completeGraph](declarations/adjmatrix-add-compl-adjmatrix-eq-adjmatrix-completegraph.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [one_add_adjMatrix_add_compl_adjMatrix_eq_of_one](declarations/one-add-adjmatrix-add-compl-adjmatrix-eq-of-one.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [compl_adjMatrix_completeGraph](declarations/compl-adjmatrix-completegraph.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.Matrix.compl_zero](declarations/root-matrix-compl-zero.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [adjMatrix_completeGraph_eq_of_one_sub_one](declarations/adjmatrix-completegraph-eq-of-one-sub-one.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [_root_.Matrix.compl_zero_eq_of_one_sub_one](declarations/root-matrix-compl-zero-eq-of-one-sub-one.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [_root_.Matrix.compl_of_one_sub_one](declarations/root-matrix-compl-of-one-sub-one.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [adjMatrix_hadamard_self](declarations/adjmatrix-hadamard-self.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [adjMatrix_dotProduct](declarations/adjmatrix-dotproduct.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [dotProduct_adjMatrix](declarations/dotproduct-adjmatrix.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [adjMatrix_mulVec_apply](declarations/adjmatrix-mulvec-apply.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [adjMatrix_vecMul_apply](declarations/adjmatrix-vecmul-apply.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [adjMatrix_mul_apply](declarations/adjmatrix-mul-apply.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mul_adjMatrix_apply](declarations/mul-adjmatrix-apply.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [trace_adjMatrix](declarations/trace-adjmatrix.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [adjMatrix_mul_self_apply_self](declarations/adjmatrix-mul-self-apply-self.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [natCast_card_dart_eq_dotProduct](declarations/natcast-card-dart-eq-dotproduct.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [adjMatrix_mulVec_const_apply](declarations/adjmatrix-mulvec-const-apply.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [adjMatrix_mulVec_const_apply_of_regular](declarations/adjmatrix-mulvec-const-apply-of-regular.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [adjMatrix_pow_apply_eq_card_walk](declarations/adjmatrix-pow-apply-eq-card-walk.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [dotProduct_mulVec_adjMatrix](declarations/dotproduct-mulvec-adjmatrix.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [adjMatrix_hadamard_diagonal](declarations/adjmatrix-hadamard-diagonal.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [diagonal_hadamard_adjMatrix](declarations/diagonal-hadamard-adjmatrix.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [adjMatrix_hadamard_natCast](declarations/adjmatrix-hadamard-natcast.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [natCast_hadamard_adjMatrix](declarations/natcast-hadamard-adjmatrix.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [adjMatrix_hadamard_ofNat](declarations/adjmatrix-hadamard-ofnat.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [ofNat_hadamard_adjMatrix](declarations/ofnat-hadamard-adjmatrix.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [adjMatrix_hadamard_intCast](declarations/adjmatrix-hadamard-intcast.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [intCast_hadamard_adjMatrix](declarations/intcast-hadamard-adjmatrix.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [adjMatrix_hadamard_one](declarations/adjmatrix-hadamard-one.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [one_hadamard_adjMatrix](declarations/one-hadamard-adjmatrix.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [adjMatrix_toGraph_eq](declarations/adjmatrix-tograph-eq.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5edc18e55b413a1cbbe85f14c809f06fe632acea2d835699427523f57dbc477a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variantbf5d329f8ed74f4018d60419268afba6b0b001583b30f8439205ead3ec87d224.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
