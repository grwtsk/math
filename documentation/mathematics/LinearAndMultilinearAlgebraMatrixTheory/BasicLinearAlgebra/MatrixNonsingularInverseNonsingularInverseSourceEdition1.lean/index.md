# Matrix Nonsingular Inverse Nonsingular Inverse Source Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**110 observed declarations and anonymous commands**, 93 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/NonsingularInverse/Variant8f935231c378c46e887fb68b15f8a4d3f256b3ca63056f396f3b12f1b0138b83.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c902cf18353ddd4d165a05b38a5105833f73d95e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixNonsingularInverseNonsingularInverseSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [invertibleOfDetInvertible](declarations/invertibleofdetinvertible.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [invOf_eq](declarations/invof-eq.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [detInvertibleOfLeftInverse](declarations/detinvertibleofleftinverse.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [detInvertibleOfRightInverse](declarations/detinvertibleofrightinverse.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [detInvertibleOfInvertible](declarations/detinvertibleofinvertible.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [det_invOf](declarations/det-invof.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [invertibleEquivDetInvertible](declarations/invertibleequivdetinvertible.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [unitOfDetInvertible](declarations/unitofdetinvertible.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isUnit_iff_isUnit_det](declarations/isunit-iff-isunit-det.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isUnits_det_units](declarations/isunits-det-units.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isUnit_det_of_invertible](declarations/isunit-det-of-invertible.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isUnit_det_of_left_inverse](declarations/isunit-det-of-left-inverse.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isUnit_det_of_right_inverse](declarations/isunit-det-of-right-inverse.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [det_ne_zero_of_left_inverse](declarations/det-ne-zero-of-left-inverse.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [det_ne_zero_of_right_inverse](declarations/det-ne-zero-of-right-inverse.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isUnit_det_transpose](declarations/isunit-det-transpose.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [inv](declarations/inv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inv_def](declarations/inv-def.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nonsing_inv_apply_not_isUnit](declarations/nonsing-inv-apply-not-isunit.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nonsing_inv_apply](declarations/nonsing-inv-apply.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [invOf_eq_nonsing_inv](declarations/invof-eq-nonsing-inv.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_units_inv](declarations/coe-units-inv.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [nonsing_inv_eq_ringInverse](declarations/nonsing-inv-eq-ringinverse.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [transpose_nonsing_inv](declarations/transpose-nonsing-inv.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [conjTranspose_nonsing_inv](declarations/conjtranspose-nonsing-inv.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_nonsing_inv](declarations/mul-nonsing-inv.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nonsing_inv_mul](declarations/nonsing-inv-mul.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inv_inv_of_invertible](declarations/inv-inv-of-invertible.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_nonsing_inv_cancel_right](declarations/mul-nonsing-inv-cancel-right.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mul_nonsing_inv_cancel_left](declarations/mul-nonsing-inv-cancel-left.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [nonsing_inv_mul_cancel_right](declarations/nonsing-inv-mul-cancel-right.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nonsing_inv_mul_cancel_left](declarations/nonsing-inv-mul-cancel-left.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mul_inv_of_invertible](declarations/mul-inv-of-invertible.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inv_mul_of_invertible](declarations/inv-mul-of-invertible.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mul_inv_cancel_right_of_invertible](declarations/mul-inv-cancel-right-of-invertible.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mul_inv_cancel_left_of_invertible](declarations/mul-inv-cancel-left-of-invertible.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [inv_mul_cancel_right_of_invertible](declarations/inv-mul-cancel-right-of-invertible.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inv_mul_cancel_left_of_invertible](declarations/inv-mul-cancel-left-of-invertible.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [inv_mul_eq_iff_eq_mul_of_invertible](declarations/inv-mul-eq-iff-eq-mul-of-invertible.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_inv_eq_iff_eq_mul_of_invertible](declarations/mul-inv-eq-iff-eq-mul-of-invertible.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [inv_mulVec_eq_vec](declarations/inv-mulvec-eq-vec.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [mul_right_injective_of_invertible](declarations/mul-right-injective-of-invertible.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mul_left_injective_of_invertible](declarations/mul-left-injective-of-invertible.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [mul_right_inj_of_invertible](declarations/mul-right-inj-of-invertible.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [mul_left_inj_of_invertible](declarations/mul-left-inj-of-invertible.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [mul_left_injective_of_inv](declarations/mul-left-injective-of-inv.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [mul_right_injective_of_inv](declarations/mul-right-injective-of-inv.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [vecMul_surjective_iff_exists_left_inverse](declarations/vecmul-surjective-iff-exists-left-inverse.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mulVec_surjective_iff_exists_right_inverse](declarations/mulvec-surjective-iff-exists-right-inverse.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [vecMul_surjective_iff_isUnit](declarations/vecmul-surjective-iff-isunit.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [mulVec_surjective_iff_isUnit](declarations/mulvec-surjective-iff-isunit.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [vecMul_injective_iff_isUnit](declarations/vecmul-injective-iff-isunit.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mulVec_injective_iff_isUnit](declarations/mulvec-injective-iff-isunit.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [linearIndependent_rows_iff_isUnit](declarations/linearindependent-rows-iff-isunit.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [linearIndependent_cols_iff_isUnit](declarations/linearindependent-cols-iff-isunit.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [vecMul_surjective_of_invertible](declarations/vecmul-surjective-of-invertible.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mulVec_surjective_of_invertible](declarations/mulvec-surjective-of-invertible.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [vecMul_injective_of_invertible](declarations/vecmul-injective-of-invertible.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mulVec_injective_of_invertible](declarations/mulvec-injective-of-invertible.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [linearIndependent_rows_of_invertible](declarations/linearindependent-rows-of-invertible.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [linearIndependent_cols_of_invertible](declarations/linearindependent-cols-of-invertible.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [nonsing_inv_cancel_or_zero](declarations/nonsing-inv-cancel-or-zero.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [det_nonsing_inv_mul_det](declarations/det-nonsing-inv-mul-det.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [det_nonsing_inv](declarations/det-nonsing-inv.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isUnit_nonsing_inv_det](declarations/isunit-nonsing-inv-det.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [nonsing_inv_nonsing_inv](declarations/nonsing-inv-nonsing-inv.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isUnit_nonsing_inv_det_iff](declarations/isunit-nonsing-inv-det-iff.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [isUnit_nonsing_inv_iff](declarations/isunit-nonsing-inv-iff.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [invertibleOfIsUnitDet](declarations/invertibleofisunitdet.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [nonsingInvUnit](declarations/nonsinginvunit.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [unitOfDetInvertible_eq_nonsingInvUnit](declarations/unitofdetinvertible-eq-nonsinginvunit.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [inv_eq_left_inv](declarations/inv-eq-left-inv.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [inv_eq_right_inv](declarations/inv-eq-right-inv.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [left_inv_eq_left_inv](declarations/left-inv-eq-left-inv.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [right_inv_eq_right_inv](declarations/right-inv-eq-right-inv.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [right_inv_eq_left_inv](declarations/right-inv-eq-left-inv.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [inv_inj](declarations/inv-inj.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [inv_zero](declarations/inv-zero.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [inv_smul](declarations/inv-smul-source-edition-2.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [inv_smul'](declarations/inv-smul.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [inv_adjugate](declarations/inv-adjugate.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [diagonalInvertible](declarations/diagonalinvertible.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [invOf_diagonal_eq](declarations/invof-diagonal-eq.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [invertibleOfDiagonalInvertible](declarations/invertibleofdiagonalinvertible.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [diagonalInvertibleEquivInvertible](declarations/diagonalinvertibleequivinvertible.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [isUnit_diagonal](declarations/isunit-diagonal.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [inv_diagonal](declarations/inv-diagonal.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [inv_subsingleton](declarations/inv-subsingleton.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [add_mul_mul_inv_eq_sub](declarations/add-mul-mul-inv-eq-sub.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [inv_inv_inv](declarations/inv-inv-inv.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [inv_add_inv](declarations/inv-add-inv.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [inv_sub_inv](declarations/inv-sub-inv.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mul_inv_rev](declarations/mul-inv-rev.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [list_prod_inv_reverse](declarations/list-prod-inv-reverse.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [det_smul_inv_mulVec_eq_cramer](declarations/det-smul-inv-mulvec-eq-cramer.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [det_smul_inv_vecMul_eq_cramer_transpose](declarations/det-smul-inv-vecmul-eq-cramer-transpose.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [submatrixEquivInvertible](declarations/submatrixequivinvertible.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [invertibleOfSubmatrixEquivInvertible](declarations/invertibleofsubmatrixequivinvertible.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [invOf_submatrix_equiv_eq](declarations/invof-submatrix-equiv-eq.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [submatrixEquivInvertibleEquivInvertible](declarations/submatrixequivinvertibleequivinvertible.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [isUnit_submatrix_equiv](declarations/isunit-submatrix-equiv.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [inv_submatrix_equiv](declarations/inv-submatrix-equiv.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [inv_reindex](declarations/inv-reindex.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [inv_kronecker](declarations/inv-kronecker.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [det_conj](declarations/det-conj-source-edition-2.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [det_conj'](declarations/det-conj.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [trace_conj](declarations/trace-conj-source-edition-2.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [trace_conj'](declarations/trace-conj.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99cea1a425f94bef215026bab64888045e011215525ac8494268e991107f6259 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/NonsingularInverse/Variant8f935231c378c46e887fb68b15f8a4d3f256b3ca63056f396f3b12f1b0138b83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
