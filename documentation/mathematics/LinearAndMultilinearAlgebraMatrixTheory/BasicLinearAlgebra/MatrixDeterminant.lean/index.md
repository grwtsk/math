# Matrix Determinant

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 70 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Determinant/Variantdb16d1df96b4acd26e8e13ba9768736a389f418a12feae5a22787d37e5e7e6fa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf9a53e2f2b709091f68646485ca9add9adcece2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDeterminant.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [detRowAlternating](declarations/detrowalternating.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [det](declarations/det.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [det_apply](declarations/det-apply-source-edition-2.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [det_apply'](declarations/det-apply.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [det_diagonal](declarations/det-diagonal.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [det_zero](declarations/det-zero.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [det_one](declarations/det-one.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [det_isEmpty](declarations/det-isempty.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_det_isEmpty](declarations/coe-det-isempty.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [det_eq_one_of_card_eq_zero](declarations/det-eq-one-of-card-eq-zero.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [det_unique](declarations/det-unique.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [det_eq_elem_of_subsingleton](declarations/det-eq-elem-of-subsingleton.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [det_eq_elem_of_card_eq_one](declarations/det-eq-elem-of-card-eq-one.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [det_mul_aux](declarations/det-mul-aux.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [det_mul](declarations/det-mul.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [detMonoidHom](declarations/detmonoidhom.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_detMonoidHom](declarations/coe-detmonoidhom.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [det_mul_comm](declarations/det-mul-comm.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [det_mul_left_comm](declarations/det-mul-left-comm.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [det_mul_right_comm](declarations/det-mul-right-comm.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [det_units_conj](declarations/det-units-conj-source-edition-2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_units_conj'](declarations/det-units-conj.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [det_transpose](declarations/det-transpose.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [det_permute](declarations/det-permute.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [det_submatrix_equiv_self](declarations/det-submatrix-equiv-self.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [det_reindex_self](declarations/det-reindex-self.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [det_permutation](declarations/det-permutation.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [det_smul](declarations/det-smul.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [det_smul_of_tower](declarations/det-smul-of-tower.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [det_neg](declarations/det-neg.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [det_neg_eq_smul](declarations/det-neg-eq-smul.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [det_mul_row](declarations/det-mul-row.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [det_mul_column](declarations/det-mul-column.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [det_pow](declarations/det-pow.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [_root_.RingHom.map_det](declarations/root-ringhom-map-det.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.RingEquiv.map_det](declarations/root-ringequiv-map-det.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [_root_.AlgHom.map_det](declarations/root-alghom-map-det.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [_root_.AlgEquiv.map_det](declarations/root-algequiv-map-det.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [det_conjTranspose](declarations/det-conjtranspose.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [det_eq_zero_of_row_eq_zero](declarations/det-eq-zero-of-row-eq-zero.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [det_eq_zero_of_column_eq_zero](declarations/det-eq-zero-of-column-eq-zero.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [det_zero_of_row_eq](declarations/det-zero-of-row-eq.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [det_zero_of_column_eq](declarations/det-zero-of-column-eq.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [det_updateRow_add](declarations/det-updaterow-add.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [det_updateColumn_add](declarations/det-updatecolumn-add.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [det_updateRow_smul](declarations/det-updaterow-smul-source-edition-2.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [det_updateColumn_smul](declarations/det-updatecolumn-smul-source-edition-2.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [det_updateRow_smul'](declarations/det-updaterow-smul.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [det_updateColumn_smul'](declarations/det-updatecolumn-smul.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [det_eq_of_eq_mul_det_one](declarations/det-eq-of-eq-mul-det-one.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [det_eq_of_eq_det_one_mul](declarations/det-eq-of-eq-det-one-mul.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [det_updateRow_add_self](declarations/det-updaterow-add-self.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [det_updateColumn_add_self](declarations/det-updatecolumn-add-self.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [det_updateRow_add_smul_self](declarations/det-updaterow-add-smul-self.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [det_updateColumn_add_smul_self](declarations/det-updatecolumn-add-smul-self.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [det_eq_of_forall_row_eq_smul_add_const_aux](declarations/det-eq-of-forall-row-eq-smul-add-const-aux.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [det_eq_of_forall_row_eq_smul_add_const](declarations/det-eq-of-forall-row-eq-smul-add-const.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [det_eq_of_forall_row_eq_smul_add_pred_aux](declarations/det-eq-of-forall-row-eq-smul-add-pred-aux.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [det_eq_of_forall_row_eq_smul_add_pred](declarations/det-eq-of-forall-row-eq-smul-add-pred.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [det_eq_of_forall_col_eq_smul_add_pred](declarations/det-eq-of-forall-col-eq-smul-add-pred.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [det_blockDiagonal](declarations/det-blockdiagonal.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [det_fromBlocks_zero₂₁](declarations/det-fromblocks-zero-source-edition-2.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [det_fromBlocks_zero₁₂](declarations/det-fromblocks-zero.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [det_succ_column_zero](declarations/det-succ-column-zero.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [det_succ_row_zero](declarations/det-succ-row-zero.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [det_succ_row](declarations/det-succ-row.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [det_succ_column](declarations/det-succ-column.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [det_fin_zero](declarations/det-fin-zero.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [det_fin_one](declarations/det-fin-one.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [det_fin_one_of](declarations/det-fin-one-of.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [det_fin_two](declarations/det-fin-two.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [det_fin_two_of](declarations/det-fin-two-of.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [det_fin_three](declarations/det-fin-three.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60175ead2b50509cef22fbe2e68b76cacfd5801ced6c0f6d76da461e23d6ab8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/Variantdb16d1df96b4acd26e8e13ba9768736a389f418a12feae5a22787d37e5e7e6fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
