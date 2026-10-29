# Column Row Partitioned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `499e31f34561c6c5d136f733ada6f46669464a48`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ColumnRowPartitioned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fromRows](declarations/fromrows.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fromCols](declarations/fromcols.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toCols₁](declarations/tocols.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toCols₂](declarations/tocols-source-edition-2.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toRows₁](declarations/torows-source-edition-2.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toRows₂](declarations/torows.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [fromRows_apply_inl](declarations/fromrows-apply-inl.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [fromRows_apply_inr](declarations/fromrows-apply-inr.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [fromCols_apply_inl](declarations/fromcols-apply-inl.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [fromCols_apply_inr](declarations/fromcols-apply-inr.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [toRows₁_apply](declarations/torows-apply.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toRows₂_apply](declarations/torows-apply-source-edition-2.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [toRows₁_fromRows](declarations/torows-fromrows.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toRows₂_fromRows](declarations/torows-fromrows-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [toCols₁_apply](declarations/tocols-apply-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [toCols₂_apply](declarations/tocols-apply.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toCols₁_fromCols](declarations/tocols-fromcols.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [toCols₂_fromCols](declarations/tocols-fromcols-source-edition-2.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [fromCols_toCols](declarations/fromcols-tocols.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [fromRows_toRows](declarations/fromrows-torows.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fromRows_inj](declarations/fromrows-inj.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [fromCols_inj](declarations/fromcols-inj.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [fromCols_ext_iff](declarations/fromcols-ext-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [fromRows_ext_iff](declarations/fromrows-ext-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [transpose_fromCols](declarations/transpose-fromcols.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [transpose_fromRows](declarations/transpose-fromrows.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [fromRows_neg](declarations/fromrows-neg.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [fromCols_neg](declarations/fromcols-neg.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [fromCols_fromRows_eq_fromBlocks](declarations/fromcols-fromrows-eq-fromblocks.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [fromRows_fromCols_eq_fromBlocks](declarations/fromrows-fromcols-eq-fromblocks.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [fromRows_mulVec](declarations/fromrows-mulvec.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [vecMul_fromCols](declarations/vecmul-fromcols.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [sumElim_vecMul_fromRows](declarations/sumelim-vecmul-fromrows.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [fromCols_mulVec_sumElim](declarations/fromcols-mulvec-sumelim.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [fromRows_mul](declarations/fromrows-mul.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mul_fromCols](declarations/mul-fromcols.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [fromRows_zero](declarations/fromrows-zero.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [fromCols_zero](declarations/fromcols-zero.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [fromRows_mul_fromCols](declarations/fromrows-mul-fromcols.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [fromCols_mul_fromRows](declarations/fromcols-mul-fromrows.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [fromCols_mul_fromBlocks](declarations/fromcols-mul-fromblocks.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [fromBlocks_mul_fromRows](declarations/fromblocks-mul-fromrows.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [fromCols_mul_fromRows_eq_one_comm](declarations/fromcols-mul-fromrows-eq-one-comm.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [equiv_compl_fromCols_mul_fromRows_eq_one_comm](declarations/equiv-compl-fromcols-mul-fromrows-eq-one-comm.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [conjTranspose_fromCols_eq_fromRows_conjTranspose](declarations/conjtranspose-fromcols-eq-fromrows-conjtranspose.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [conjTranspose_fromRows_eq_fromCols_conjTranspose](declarations/conjtranspose-fromrows-eq-fromcols-conjtranspose.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fd46b8c67efd7e9710f020aaaa911e028b05b641b9698858531c0a08bd80b22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
