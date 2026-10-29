# Linear Algebra Matrix Row Col Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 73 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09a8f85f8f04592bbae9dfe9dc64635acdcb53d3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [replicateCol](declarations/replicatecol.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [replicateCol_apply](declarations/replicatecol-apply.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [replicateRow](declarations/replicaterow.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [replicateRow_apply](declarations/replicaterow-apply.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [vecMulVec_one](declarations/vecmulvec-one.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [one_vecMulVec](declarations/one-vecmulvec.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [replicateCol_injective](declarations/replicatecol-injective.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [replicateCol_inj](declarations/replicatecol-inj.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [replicateCol_zero](declarations/replicatecol-zero.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [replicateCol_eq_zero](declarations/replicatecol-eq-zero.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [replicateCol_add](declarations/replicatecol-add.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [replicateCol_smul](declarations/replicatecol-smul.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [replicateRow_injective](declarations/replicaterow-injective.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [replicateRow_inj](declarations/replicaterow-inj.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [replicateRow_zero](declarations/replicaterow-zero.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [replicateRow_eq_zero](declarations/replicaterow-eq-zero.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [replicateRow_add](declarations/replicaterow-add.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [replicateRow_smul](declarations/replicaterow-smul.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [transpose_replicateCol](declarations/transpose-replicatecol.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [transpose_replicateRow](declarations/transpose-replicaterow.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [conjTranspose_replicateCol](declarations/conjtranspose-replicatecol.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [conjTranspose_replicateRow](declarations/conjtranspose-replicaterow.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [replicateRow_vecMul](declarations/replicaterow-vecmul.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [replicateCol_vecMul](declarations/replicatecol-vecmul.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [replicateCol_mulVec](declarations/replicatecol-mulvec.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [replicateRow_mulVec](declarations/replicaterow-mulvec.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [replicateRow_mulVec_eq_const](declarations/replicaterow-mulvec-eq-const.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mulVec_replicateCol_eq_const](declarations/mulvec-replicatecol-eq-const.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [replicateRow_mul_replicateCol](declarations/replicaterow-mul-replicatecol.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [replicateRow_mul_replicateCol_apply](declarations/replicaterow-mul-replicatecol-apply.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [diag_replicateCol_mul_replicateRow](declarations/diag-replicatecol-mul-replicaterow.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [vecMulVec_eq](declarations/vecmulvec-eq.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [updateRow](declarations/updaterow.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [updateCol](declarations/updatecol.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [updateRow_self](declarations/updaterow-self.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [updateCol_self](declarations/updatecol-self.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [updateRow_ne](declarations/updaterow-ne.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [updateCol_ne](declarations/updatecol-ne.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [updateRow_apply](declarations/updaterow-apply.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [updateCol_apply](declarations/updatecol-apply.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [updateCol_subsingleton](declarations/updatecol-subsingleton.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [updateRow_subsingleton](declarations/updaterow-subsingleton.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_updateRow](declarations/map-updaterow.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [map_updateCol](declarations/map-updatecol.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [updateRow_transpose](declarations/updaterow-transpose.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [updateCol_transpose](declarations/updatecol-transpose.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [updateRow_conjTranspose](declarations/updaterow-conjtranspose.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [updateCol_conjTranspose](declarations/updatecol-conjtranspose.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [updateRow_eq_self](declarations/updaterow-eq-self.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [updateCol_eq_self](declarations/updatecol-eq-self.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [updateRow_zero_zero](declarations/updaterow-zero-zero.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [updateCol_zero_zero](declarations/updatecol-zero-zero.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [diagonal_updateCol_single](declarations/diagonal-updatecol-single.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [diagonal_updateRow_single](declarations/diagonal-updaterow-single.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [updateRow_idem](declarations/updaterow-idem.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [updateRow_comm](declarations/updaterow-comm.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [updateCol_idem](declarations/updatecol-idem.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [updateCol_comm](declarations/updatecol-comm.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [updateRow_submatrix_equiv](declarations/updaterow-submatrix-equiv.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [submatrix_updateRow_equiv](declarations/submatrix-updaterow-equiv.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [updateCol_submatrix_equiv](declarations/updatecol-submatrix-equiv.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [submatrix_updateCol_equiv](declarations/submatrix-updatecol-equiv.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [updateRow_reindex](declarations/updaterow-reindex.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [reindex_updateRow](declarations/reindex-updaterow.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [updateCol_reindex](declarations/updatecol-reindex.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [reindex_updateCol](declarations/reindex-updatecol.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [single_eq_updateRow_zero](declarations/single-eq-updaterow-zero.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [single_eq_updateCol_zero](declarations/single-eq-updatecol-zero.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [updateRow_mulVec](declarations/updaterow-mulvec.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [vecMul_updateCol](declarations/vecmul-updatecol.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [update_vecMulVec](declarations/update-vecmulvec.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [vecMulVec_update](declarations/vecmulvec-update.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [updateRow_mul](declarations/updaterow-mul.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mul_updateCol](declarations/mul-updatecol.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mul_single_eq_updateCol_zero](declarations/mul-single-eq-updatecol-zero.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [single_mul_eq_updateRow_zero](declarations/single-mul-eq-updaterow-zero.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [updateRow_zero_mul_updateCol_zero](declarations/updaterow-zero-mul-updatecol-zero.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05350512c079da5272cda718aea1794fe6c3b96d0aa0d835ecfecb3d8b7bb850 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
