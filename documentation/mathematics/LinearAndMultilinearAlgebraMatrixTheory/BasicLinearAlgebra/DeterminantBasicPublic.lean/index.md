# Determinant Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**89 observed declarations and anonymous commands**, 86 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66f8b885e8ce08fecc06336d6a26d5eff6c15aa6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DeterminantBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [detRowAlternating](declarations/detrowalternating.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [det](declarations/det.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [det_apply](declarations/det-apply-source-edition-2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [det_apply'](declarations/det-apply.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [det_eq_detp_sub_detp](declarations/det-eq-detp-sub-detp.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [det_diagonal](declarations/det-diagonal.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [det_zero](declarations/det-zero.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [det_one](declarations/det-one.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [det_isEmpty](declarations/det-isempty.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_det_isEmpty](declarations/coe-det-isempty.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [det_eq_one_of_card_eq_zero](declarations/det-eq-one-of-card-eq-zero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [det_unique](declarations/det-unique.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [det_eq_elem_of_subsingleton](declarations/det-eq-elem-of-subsingleton.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [det_eq_elem_of_card_eq_one](declarations/det-eq-elem-of-card-eq-one.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [det_mul_aux](declarations/det-mul-aux.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [det_mul](declarations/det-mul.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [detMonoidHom](declarations/detmonoidhom.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_detMonoidHom](declarations/coe-detmonoidhom.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [det_mul_comm](declarations/det-mul-comm.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [det_mul_left_comm](declarations/det-mul-left-comm.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [det_mul_right_comm](declarations/det-mul-right-comm.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_units_conj](declarations/det-units-conj-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [det_units_conj'](declarations/det-units-conj.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [det_transpose](declarations/det-transpose.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [det_permute](declarations/det-permute-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [det_permute'](declarations/det-permute.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [det_submatrix_equiv_self](declarations/det-submatrix-equiv-self.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [abs_det_submatrix_equiv_equiv](declarations/abs-det-submatrix-equiv-equiv.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [det_reindex_self](declarations/det-reindex-self.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [det_reindex](declarations/det-reindex.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [abs_det_reindex](declarations/abs-det-reindex.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [det_smul](declarations/det-smul.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [det_smul_of_tower](declarations/det-smul-of-tower.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [det_neg](declarations/det-neg.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [det_neg_eq_smul](declarations/det-neg-eq-smul.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [det_mul_row](declarations/det-mul-row.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [det_mul_column](declarations/det-mul-column.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [det_pow](declarations/det-pow.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [_root_.RingHom.map_det](declarations/root-ringhom-map-det.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [_root_.RingEquiv.map_det](declarations/root-ringequiv-map-det.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [_root_.AlgHom.map_det](declarations/root-alghom-map-det.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [_root_.AlgEquiv.map_det](declarations/root-algequiv-map-det.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [_root_.Int.cast_det](declarations/root-int-cast-det.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.Rat.cast_det](declarations/root-rat-cast-det.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [det_conjTranspose](declarations/det-conjtranspose.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [det_eq_zero_of_row_eq_zero](declarations/det-eq-zero-of-row-eq-zero.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [det_eq_zero_of_column_eq_zero](declarations/det-eq-zero-of-column-eq-zero.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [det_zero_of_row_eq](declarations/det-zero-of-row-eq.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [det_zero_of_column_eq](declarations/det-zero-of-column-eq.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [det_updateRow_eq_zero](declarations/det-updaterow-eq-zero.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [det_updateCol_eq_zero](declarations/det-updatecol-eq-zero.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [det_updateRow_add](declarations/det-updaterow-add.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [det_updateCol_add](declarations/det-updatecol-add.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [det_updateRow_smul](declarations/det-updaterow-smul.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [det_updateCol_smul](declarations/det-updatecol-smul.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [det_updateRow_smul_left](declarations/det-updaterow-smul-left.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [det_updateCol_smul_left](declarations/det-updatecol-smul-left.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [det_updateRow_sum_aux](declarations/det-updaterow-sum-aux.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [det_updateRow_sum](declarations/det-updaterow-sum.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [det_updateCol_sum](declarations/det-updatecol-sum.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [det_eq_of_eq_mul_det_one](declarations/det-eq-of-eq-mul-det-one.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [det_eq_of_eq_det_one_mul](declarations/det-eq-of-eq-det-one-mul.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [det_updateRow_add_self](declarations/det-updaterow-add-self.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [det_updateCol_add_self](declarations/det-updatecol-add-self.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [det_updateRow_add_smul_self](declarations/det-updaterow-add-smul-self.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [det_updateCol_add_smul_self](declarations/det-updatecol-add-smul-self.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [det_eq_zero_of_not_linearIndependent_rows](declarations/det-eq-zero-of-not-linearindependent-rows.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [linearIndependent_rows_of_det_ne_zero](declarations/linearindependent-rows-of-det-ne-zero.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [linearIndependent_cols_of_det_ne_zero](declarations/linearindependent-cols-of-det-ne-zero.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [det_eq_zero_of_not_linearIndependent_cols](declarations/det-eq-zero-of-not-linearindependent-cols.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [det_vecMulVec](declarations/det-vecmulvec.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [det_eq_of_forall_row_eq_smul_add_const_aux](declarations/det-eq-of-forall-row-eq-smul-add-const-aux.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [det_eq_of_forall_row_eq_smul_add_const](declarations/det-eq-of-forall-row-eq-smul-add-const.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [det_eq_of_forall_row_eq_smul_add_pred_aux](declarations/det-eq-of-forall-row-eq-smul-add-pred-aux.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [det_eq_of_forall_row_eq_smul_add_pred](declarations/det-eq-of-forall-row-eq-smul-add-pred.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [det_eq_of_forall_col_eq_smul_add_pred](declarations/det-eq-of-forall-col-eq-smul-add-pred.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [det_blockDiagonal](declarations/det-blockdiagonal.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [det_fromBlocks_zero₂₁](declarations/det-fromblocks-zero-source-edition-2.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [det_fromBlocks_zero₁₂](declarations/det-fromblocks-zero.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [det_succ_column_zero](declarations/det-succ-column-zero.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [det_succ_row_zero](declarations/det-succ-row-zero.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [det_succ_row](declarations/det-succ-row.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [det_succ_column](declarations/det-succ-column.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [det_fin_zero](declarations/det-fin-zero.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [det_fin_one](declarations/det-fin-one.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [det_fin_one_of](declarations/det-fin-one-of.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [det_fin_two](declarations/det-fin-two.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [det_fin_two_of](declarations/det-fin-two-of.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [det_fin_three](declarations/det-fin-three.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86c8538265e73dbf0c690750a9e5c2a812d20f1276afb2e579d39f4482e959b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant870291a8544ad9297e0c17f3531bea11607a1f0d83b775b13a31981777c30f2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
