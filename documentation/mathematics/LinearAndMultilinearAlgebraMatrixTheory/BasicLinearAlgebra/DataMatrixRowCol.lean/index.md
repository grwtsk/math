# Data Matrix Row Col

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant20de87505af57a165222982e2c185a430c3e6a545c4a127d51cd3dc9b42bc73a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd5c9ff41448c5b1dc3b92f8f4141c90c94d0f67`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixRowCol.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [replicateCol](declarations/replicatecol.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [replicateCol_apply](declarations/replicatecol-apply.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [replicateRow](declarations/replicaterow.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [replicateRow_apply](declarations/replicaterow-apply.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [replicateCol_injective](declarations/replicatecol-injective.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [replicateCol_inj](declarations/replicatecol-inj.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [replicateCol_zero](declarations/replicatecol-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [replicateCol_eq_zero](declarations/replicatecol-eq-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [replicateCol_add](declarations/replicatecol-add.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [replicateCol_smul](declarations/replicatecol-smul.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [replicateRow_injective](declarations/replicaterow-injective.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [replicateRow_inj](declarations/replicaterow-inj.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [replicateRow_zero](declarations/replicaterow-zero.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [replicateRow_eq_zero](declarations/replicaterow-eq-zero.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [replicateRow_add](declarations/replicaterow-add.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [replicateRow_smul](declarations/replicaterow-smul.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [transpose_replicateCol](declarations/transpose-replicatecol.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [transpose_replicateRow](declarations/transpose-replicaterow.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [conjTranspose_replicateCol](declarations/conjtranspose-replicatecol.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [conjTranspose_replicateRow](declarations/conjtranspose-replicaterow.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [replicateRow_vecMul](declarations/replicaterow-vecmul.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [replicateCol_vecMul](declarations/replicatecol-vecmul.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [replicateCol_mulVec](declarations/replicatecol-mulvec.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [replicateRow_mulVec](declarations/replicaterow-mulvec.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [replicateRow_mulVec_eq_const](declarations/replicaterow-mulvec-eq-const.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mulVec_replicateCol_eq_const](declarations/mulvec-replicatecol-eq-const.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [replicateRow_mul_replicateCol](declarations/replicaterow-mul-replicatecol.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [replicateRow_mul_replicateCol_apply](declarations/replicaterow-mul-replicatecol-apply.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [diag_replicateCol_mul_replicateRow](declarations/diag-replicatecol-mul-replicaterow.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [vecMulVec_eq](declarations/vecmulvec-eq.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [updateRow](declarations/updaterow.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [updateCol](declarations/updatecol.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [updateRow_self](declarations/updaterow-self.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [updateCol_self](declarations/updatecol-self.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [updateRow_ne](declarations/updaterow-ne.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [updateCol_ne](declarations/updatecol-ne.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [updateRow_apply](declarations/updaterow-apply.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [updateCol_apply](declarations/updatecol-apply.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [updateCol_subsingleton](declarations/updatecol-subsingleton.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [updateRow_subsingleton](declarations/updaterow-subsingleton.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_updateRow](declarations/map-updaterow.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [map_updateCol](declarations/map-updatecol.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [updateRow_transpose](declarations/updaterow-transpose.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [updateCol_transpose](declarations/updatecol-transpose.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [updateRow_conjTranspose](declarations/updaterow-conjtranspose.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [updateCol_conjTranspose](declarations/updatecol-conjtranspose.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [updateRow_eq_self](declarations/updaterow-eq-self.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [updateCol_eq_self](declarations/updatecol-eq-self.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [updateRow_zero_zero](declarations/updaterow-zero-zero.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [updateCol_zero_zero](declarations/updatecol-zero-zero.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [diagonal_updateCol_single](declarations/diagonal-updatecol-single.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [diagonal_updateRow_single](declarations/diagonal-updaterow-single.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [updateRow_submatrix_equiv](declarations/updaterow-submatrix-equiv.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [submatrix_updateRow_equiv](declarations/submatrix-updaterow-equiv.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [updateCol_submatrix_equiv](declarations/updatecol-submatrix-equiv.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [submatrix_updateCol_equiv](declarations/submatrix-updatecol-equiv.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [updateRow_reindex](declarations/updaterow-reindex.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [reindex_updateRow](declarations/reindex-updaterow.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [updateCol_reindex](declarations/updatecol-reindex.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [reindex_updateCol](declarations/reindex-updatecol.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [single_eq_updateRow_zero](declarations/single-eq-updaterow-zero.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [single_eq_updateCol_zero](declarations/single-eq-updatecol-zero.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [updateRow_mulVec](declarations/updaterow-mulvec.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [vecMul_updateCol](declarations/vecmul-updatecol.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [updateRow_mul](declarations/updaterow-mul.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mul_updateCol](declarations/mul-updatecol.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mul_single_eq_updateCol_zero](declarations/mul-single-eq-updatecol-zero.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [single_mul_eq_updateRow_zero](declarations/single-mul-eq-updaterow-zero.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [updateRow_zero_mul_updateCol_zero](declarations/updaterow-zero-mul-updatecol-zero.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8002fdd42e85f09df5aeb952d0faa15ce887f5234f5b33f022400a9283a94e8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variant20de87505af57a165222982e2c185a430c3e6a545c4a127d51cd3dc9b42bc73a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
