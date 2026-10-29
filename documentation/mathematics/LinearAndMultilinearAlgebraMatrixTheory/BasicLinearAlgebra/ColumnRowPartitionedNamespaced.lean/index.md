# Column Row Partitioned Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8601dabf9bb81f1f5c31e26c512971f3372652b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitionedNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fromRows](declarations/fromrows.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fromCols](declarations/fromcols.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toCols₁](declarations/tocols.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toCols₂](declarations/tocols-source-edition-2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toRows₁](declarations/torows.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toRows₂](declarations/torows-source-edition-2.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [fromRows_apply_inl](declarations/fromrows-apply-inl.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [fromRows_apply_inr](declarations/fromrows-apply-inr.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [fromCols_apply_inl](declarations/fromcols-apply-inl.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [fromCols_apply_inr](declarations/fromcols-apply-inr.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [toRows₁_apply](declarations/torows-apply.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toRows₂_apply](declarations/torows-apply-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [toRows₁_fromRows](declarations/torows-fromrows-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toRows₂_fromRows](declarations/torows-fromrows.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toCols₁_apply](declarations/tocols-apply-source-edition-2.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toCols₂_apply](declarations/tocols-apply.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toCols₁_fromCols](declarations/tocols-fromcols.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [toCols₂_fromCols](declarations/tocols-fromcols-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [fromCols_toCols](declarations/fromcols-tocols.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [fromRows_toRows](declarations/fromrows-torows.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fromRows_inj](declarations/fromrows-inj.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [fromCols_inj](declarations/fromcols-inj.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [fromCols_ext_iff](declarations/fromcols-ext-iff.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [fromRows_ext_iff](declarations/fromrows-ext-iff.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [transpose_fromCols](declarations/transpose-fromcols.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [transpose_fromRows](declarations/transpose-fromrows.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [fromRows_neg](declarations/fromrows-neg.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [fromCols_neg](declarations/fromcols-neg.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [fromCols_fromRows_eq_fromBlocks](declarations/fromcols-fromrows-eq-fromblocks.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [fromRows_fromCols_eq_fromBlocks](declarations/fromrows-fromcols-eq-fromblocks.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [fromRows_mulVec](declarations/fromrows-mulvec.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [vecMul_fromCols](declarations/vecmul-fromcols.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [sumElim_vecMul_fromRows](declarations/sumelim-vecmul-fromrows.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [fromCols_mulVec_sumElim](declarations/fromcols-mulvec-sumelim.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [fromRows_mul](declarations/fromrows-mul.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mul_fromCols](declarations/mul-fromcols.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [fromRows_zero](declarations/fromrows-zero.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [fromCols_zero](declarations/fromcols-zero.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [fromRows_mul_fromCols](declarations/fromrows-mul-fromcols.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [fromCols_mul_fromRows](declarations/fromcols-mul-fromrows.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [fromCols_mul_fromBlocks](declarations/fromcols-mul-fromblocks.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [fromBlocks_mul_fromRows](declarations/fromblocks-mul-fromrows.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [fromCols_mul_fromRows_eq_one_comm](declarations/fromcols-mul-fromrows-eq-one-comm.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [equiv_compl_fromCols_mul_fromRows_eq_one_comm](declarations/equiv-compl-fromcols-mul-fromrows-eq-one-comm.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [conjTranspose_fromCols_eq_fromRows_conjTranspose](declarations/conjtranspose-fromcols-eq-fromrows-conjtranspose.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [conjTranspose_fromRows_eq_fromCols_conjTranspose](declarations/conjtranspose-fromrows-eq-fromcols-conjtranspose.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c98d9cc3d28a9af30a91a475c1dca6be68428a07f63f494e69fbfb9e607d861f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variant5c4b3a2ae71b70072a20d7efa1883c7e5fff03113af7fac94d5f5cdcaebb18a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
