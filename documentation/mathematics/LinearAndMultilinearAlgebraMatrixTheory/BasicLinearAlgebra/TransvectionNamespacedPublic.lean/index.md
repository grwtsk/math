# Transvection Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c31ed913fe5b3c503c5c53ce70ab7e8bc8eb949f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TransvectionNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [transvection](declarations/transvection.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [transvection_zero](declarations/transvection-zero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [updateRow_eq_transvection](declarations/updaterow-eq-transvection.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [transvection_mul_transvection_same](declarations/transvection-mul-transvection-same.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [transvection_mul_apply_same](declarations/transvection-mul-apply-same.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mul_transvection_apply_same](declarations/mul-transvection-apply-same.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [transvection_mul_apply_of_ne](declarations/transvection-mul-apply-of-ne.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mul_transvection_apply_of_ne](declarations/mul-transvection-apply-of-ne.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [det_transvection_of_ne](declarations/det-transvection-of-ne.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [TransvectionStruct](declarations/transvectionstruct.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toMatrix](declarations/tomatrix.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMatrix_mk](declarations/tomatrix-mk.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [det](declarations/det.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [det_toMatrix_prod](declarations/det-tomatrix-prod.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [inv](declarations/inv.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inv_mul](declarations/inv-mul.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_inv](declarations/mul-inv.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reverse_inv_prod_mul_prod](declarations/reverse-inv-prod-mul-prod.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prod_mul_reverse_inv_prod](declarations/prod-mul-reverse-inv-prod.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isUnit_prod_comp_inverse](declarations/isunit-prod-comp-inverse.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Transvection Namespaced Public](declarations/mem-range-scalar-of-commute-transvectionstruct.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Transvection Namespaced Public](declarations/mem-range-scalar-iff-commute-transvectionstruct.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [sumInl](declarations/suminl.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toMatrix_sumInl](declarations/tomatrix-suminl.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sumInl_toMatrix_prod_mul](declarations/suminl-tomatrix-prod-mul.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mul_sumInl_toMatrix_prod](declarations/mul-suminl-tomatrix-prod.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [reindexEquiv](declarations/reindexequiv.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toMatrix_reindexEquiv](declarations/tomatrix-reindexequiv.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toMatrix_reindexEquiv_prod](declarations/tomatrix-reindexequiv-prod.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [listTransvecCol](declarations/listtransveccol.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [listTransvecRow](declarations/listtransvecrow.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [length_listTransvecCol](declarations/length-listtransveccol.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [listTransvecCol_getElem](declarations/listtransveccol-getelem.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [length_listTransvecRow](declarations/length-listtransvecrow.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [listTransvecRow_getElem](declarations/listtransvecrow-getelem.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [listTransvecCol_mul_last_row_drop](declarations/listtransveccol-mul-last-row-drop.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [listTransvecCol_mul_last_row](declarations/listtransveccol-mul-last-row.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [listTransvecCol_mul_last_col](declarations/listtransveccol-mul-last-col.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_listTransvecRow_last_col_take](declarations/mul-listtransvecrow-last-col-take.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_listTransvecRow_last_col](declarations/mul-listtransvecrow-last-col.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mul_listTransvecRow_last_row](declarations/mul-listtransvecrow-last-row.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_col](declarations/listtransveccol-mul-mul-listtransvecrow-last-col.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_row](declarations/listtransveccol-mul-mul-listtransvecrow-last-row.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow](declarations/istwoblockdiagonal-listtransveccol-mul-mul-listtransvecrow.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exists_isTwoBlockDiagonal_of_ne_zero](declarations/exists-istwoblockdiagonal-of-ne-zero.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_isTwoBlockDiagonal_list_transvec_mul_mul_list_transvec](declarations/exists-istwoblockdiagonal-list-transvec-mul-mul-list-transvec.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction](declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-induction.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal](declarations/reindex-exists-list-transvec-mul-mul-list-transvec-eq-diagonal.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_aux](declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-aux.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal](declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [exists_list_transvec_mul_diagonal_mul_list_transvec](declarations/exists-list-transvec-mul-diagonal-mul-list-transvec.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [diagonal_transvection_induction](declarations/diagonal-transvection-induction.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [diagonal_transvection_induction_of_det_ne_zero](declarations/diagonal-transvection-induction-of-det-ne-zero.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f415753126ab23b224c09b5457cf33365c6be5641a29210b59713692ecedfd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Transvection/Variant84bbc8879d4b40dfd2ca087d9c84dbdf87d46e4b7ca79381620dbf3ccfafb041.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
