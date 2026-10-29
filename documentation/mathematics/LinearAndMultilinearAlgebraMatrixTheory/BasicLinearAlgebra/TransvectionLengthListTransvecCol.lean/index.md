# Transvection Length List Transvec Col

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e46f0b5feaf0882c66dbe82c198cb27c96eaf3f2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TransvectionLengthListTransvecCol.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [transvection](declarations/transvection.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [transvection_zero](declarations/transvection-zero.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [updateRow_eq_transvection](declarations/updaterow-eq-transvection.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [transvection_mul_transvection_same](declarations/transvection-mul-transvection-same.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [transvection_mul_apply_same](declarations/transvection-mul-apply-same.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mul_transvection_apply_same](declarations/mul-transvection-apply-same.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [transvection_mul_apply_of_ne](declarations/transvection-mul-apply-of-ne.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mul_transvection_apply_of_ne](declarations/mul-transvection-apply-of-ne.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [det_transvection_of_ne](declarations/det-transvection-of-ne.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [TransvectionStruct](declarations/transvectionstruct.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toMatrix](declarations/tomatrix.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMatrix_mk](declarations/tomatrix-mk.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [det](declarations/det.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [det_toMatrix_prod](declarations/det-tomatrix-prod.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [inv](declarations/inv.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inv_mul](declarations/inv-mul.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_inv](declarations/mul-inv.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reverse_inv_prod_mul_prod](declarations/reverse-inv-prod-mul-prod.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prod_mul_reverse_inv_prod](declarations/prod-mul-reverse-inv-prod.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [_root_.Matrix.mem_range_scalar_of_commute_transvectionStruct](declarations/root-matrix-mem-range-scalar-of-commute-transvectionstruct.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [_root_.Matrix.mem_range_scalar_iff_commute_transvectionStruct](declarations/root-matrix-mem-range-scalar-iff-commute-transvectionstruct.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [sumInl](declarations/suminl.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toMatrix_sumInl](declarations/tomatrix-suminl.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sumInl_toMatrix_prod_mul](declarations/suminl-tomatrix-prod-mul.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_sumInl_toMatrix_prod](declarations/mul-suminl-tomatrix-prod.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [reindexEquiv](declarations/reindexequiv.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toMatrix_reindexEquiv](declarations/tomatrix-reindexequiv.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toMatrix_reindexEquiv_prod](declarations/tomatrix-reindexequiv-prod.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [listTransvecCol](declarations/listtransveccol.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [listTransvecRow](declarations/listtransvecrow.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [length_listTransvecCol](declarations/length-listtransveccol.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [listTransvecCol_getElem](declarations/listtransveccol-getelem.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [length_listTransvecRow](declarations/length-listtransvecrow.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [listTransvecRow_getElem](declarations/listtransvecrow-getelem.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [listTransvecCol_mul_last_row_drop](declarations/listtransveccol-mul-last-row-drop.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [listTransvecCol_mul_last_row](declarations/listtransveccol-mul-last-row.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [listTransvecCol_mul_last_col](declarations/listtransveccol-mul-last-col.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mul_listTransvecRow_last_col_take](declarations/mul-listtransvecrow-last-col-take.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_listTransvecRow_last_col](declarations/mul-listtransvecrow-last-col.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_listTransvecRow_last_row](declarations/mul-listtransvecrow-last-row.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_col](declarations/listtransveccol-mul-mul-listtransvecrow-last-col.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [listTransvecCol_mul_mul_listTransvecRow_last_row](declarations/listtransveccol-mul-mul-listtransvecrow-last-row.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isTwoBlockDiagonal_listTransvecCol_mul_mul_listTransvecRow](declarations/istwoblockdiagonal-listtransveccol-mul-mul-listtransvecrow.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [exists_isTwoBlockDiagonal_of_ne_zero](declarations/exists-istwoblockdiagonal-of-ne-zero.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exists_isTwoBlockDiagonal_list_transvec_mul_mul_list_transvec](declarations/exists-istwoblockdiagonal-list-transvec-mul-mul-list-transvec.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_induction](declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-induction.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [reindex_exists_list_transvec_mul_mul_list_transvec_eq_diagonal](declarations/reindex-exists-list-transvec-mul-mul-list-transvec-eq-diagonal.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal_aux](declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal-aux.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exists_list_transvec_mul_mul_list_transvec_eq_diagonal](declarations/exists-list-transvec-mul-mul-list-transvec-eq-diagonal.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [exists_list_transvec_mul_diagonal_mul_list_transvec](declarations/exists-list-transvec-mul-diagonal-mul-list-transvec.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [diagonal_transvection_induction](declarations/diagonal-transvection-induction.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [diagonal_transvection_induction_of_det_ne_zero](declarations/diagonal-transvection-induction-of-det-ne-zero.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05fcfd9bec71e91d99248331e605c53ee749b0432c3b2baad26a0381308d42a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Transvection/Variant053ffe0cdf7b9fccb3ebbd3f90c5866a743cb6abacd6432fea71c3618d3fa00d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
