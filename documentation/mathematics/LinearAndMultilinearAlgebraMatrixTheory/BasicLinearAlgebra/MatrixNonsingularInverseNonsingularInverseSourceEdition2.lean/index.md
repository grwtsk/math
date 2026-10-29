# Matrix Nonsingular Inverse Nonsingular Inverse Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**89 observed declarations and anonymous commands**, 70 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant366818eb950cb9e82ca8b804392a42afa14655d25c2fd38eb2941cdc30eb340e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b13b739bde77e827ce2557fc98aed0b92c819b46`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixNonsingularInverseNonsingularInverseSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [invertibleOfDetInvertible](declarations/invertibleofdetinvertible.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [invOf_eq](declarations/invof-eq.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [detInvertibleOfLeftInverse](declarations/detinvertibleofleftinverse.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [detInvertibleOfRightInverse](declarations/detinvertibleofrightinverse.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [detInvertibleOfInvertible](declarations/detinvertibleofinvertible.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [det_invOf](declarations/det-invof.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [invertibleEquivDetInvertible](declarations/invertibleequivdetinvertible.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mul_eq_one_comm](declarations/mul-eq-one-comm.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [invertibleOfLeftInverse](declarations/invertibleofleftinverse.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [invertibleOfRightInverse](declarations/invertibleofrightinverse.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [unitOfDetInvertible](declarations/unitofdetinvertible.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isUnit_iff_isUnit_det](declarations/isunit-iff-isunit-det.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isUnit_det_of_invertible](declarations/isunit-det-of-invertible.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isUnit_of_left_inverse](declarations/isunit-of-left-inverse.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isUnit_of_right_inverse](declarations/isunit-of-right-inverse.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isUnit_det_of_left_inverse](declarations/isunit-det-of-left-inverse.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isUnit_det_of_right_inverse](declarations/isunit-det-of-right-inverse.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [det_ne_zero_of_left_inverse](declarations/det-ne-zero-of-left-inverse.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [det_ne_zero_of_right_inverse](declarations/det-ne-zero-of-right-inverse.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isUnit_det_transpose](declarations/isunit-det-transpose.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [inv](declarations/inv.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inv_def](declarations/inv-def.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [nonsing_inv_apply_not_isUnit](declarations/nonsing-inv-apply-not-isunit.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nonsing_inv_apply](declarations/nonsing-inv-apply.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [invOf_eq_nonsing_inv](declarations/invof-eq-nonsing-inv.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_units_inv](declarations/coe-units-inv.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nonsing_inv_eq_ring_inverse](declarations/nonsing-inv-eq-ring-inverse.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [transpose_nonsing_inv](declarations/transpose-nonsing-inv.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [conjTranspose_nonsing_inv](declarations/conjtranspose-nonsing-inv.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_nonsing_inv](declarations/mul-nonsing-inv.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nonsing_inv_mul](declarations/nonsing-inv-mul.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inv_inv_of_invertible](declarations/inv-inv-of-invertible.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mul_nonsing_inv_cancel_right](declarations/mul-nonsing-inv-cancel-right.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mul_nonsing_inv_cancel_left](declarations/mul-nonsing-inv-cancel-left.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nonsing_inv_mul_cancel_right](declarations/nonsing-inv-mul-cancel-right.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nonsing_inv_mul_cancel_left](declarations/nonsing-inv-mul-cancel-left.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mul_inv_of_invertible](declarations/mul-inv-of-invertible.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [inv_mul_of_invertible](declarations/inv-mul-of-invertible.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_inv_cancel_right_of_invertible](declarations/mul-inv-cancel-right-of-invertible.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_inv_cancel_left_of_invertible](declarations/mul-inv-cancel-left-of-invertible.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [inv_mul_cancel_right_of_invertible](declarations/inv-mul-cancel-right-of-invertible.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inv_mul_cancel_left_of_invertible](declarations/inv-mul-cancel-left-of-invertible.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inv_mul_eq_iff_eq_mul_of_invertible](declarations/inv-mul-eq-iff-eq-mul-of-invertible.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mul_inv_eq_iff_eq_mul_of_invertible](declarations/mul-inv-eq-iff-eq-mul-of-invertible.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [mul_right_injective_of_invertible](declarations/mul-right-injective-of-invertible.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [mul_left_injective_of_invertible](declarations/mul-left-injective-of-invertible.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [mul_right_inj_of_invertible](declarations/mul-right-inj-of-invertible.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [mul_left_inj_of_invertible](declarations/mul-left-inj-of-invertible.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [nonsing_inv_cancel_or_zero](declarations/nonsing-inv-cancel-or-zero.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [det_nonsing_inv_mul_det](declarations/det-nonsing-inv-mul-det.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [det_nonsing_inv](declarations/det-nonsing-inv.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isUnit_nonsing_inv_det](declarations/isunit-nonsing-inv-det.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [nonsing_inv_nonsing_inv](declarations/nonsing-inv-nonsing-inv.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isUnit_nonsing_inv_det_iff](declarations/isunit-nonsing-inv-det-iff.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [invertibleOfIsUnitDet](declarations/invertibleofisunitdet.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [nonsingInvUnit](declarations/nonsinginvunit.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [unitOfDetInvertible_eq_nonsingInvUnit](declarations/unitofdetinvertible-eq-nonsinginvunit.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [inv_eq_left_inv](declarations/inv-eq-left-inv.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [inv_eq_right_inv](declarations/inv-eq-right-inv.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [left_inv_eq_left_inv](declarations/left-inv-eq-left-inv.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [right_inv_eq_right_inv](declarations/right-inv-eq-right-inv.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [right_inv_eq_left_inv](declarations/right-inv-eq-left-inv.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [inv_inj](declarations/inv-inj.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [inv_zero](declarations/inv-zero.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [inv_smul](declarations/inv-smul-source-edition-2.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [inv_smul'](declarations/inv-smul.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [inv_adjugate](declarations/inv-adjugate.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [diagonalInvertible](declarations/diagonalinvertible.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [invOf_diagonal_eq](declarations/invof-diagonal-eq.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [invertibleOfDiagonalInvertible](declarations/invertibleofdiagonalinvertible.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [diagonalInvertibleEquivInvertible](declarations/diagonalinvertibleequivinvertible.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [isUnit_diagonal](declarations/isunit-diagonal.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [inv_diagonal](declarations/inv-diagonal.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [inv_inv_inv](declarations/inv-inv-inv.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [mul_inv_rev](declarations/mul-inv-rev.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [list_prod_inv_reverse](declarations/list-prod-inv-reverse.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [det_smul_inv_mulVec_eq_cramer](declarations/det-smul-inv-mulvec-eq-cramer.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [det_smul_inv_vecMul_eq_cramer_transpose](declarations/det-smul-inv-vecmul-eq-cramer-transpose.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [submatrixEquivInvertible](declarations/submatrixequivinvertible.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [invertibleOfSubmatrixEquivInvertible](declarations/invertibleofsubmatrixequivinvertible.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [invOf_submatrix_equiv_eq](declarations/invof-submatrix-equiv-eq.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [submatrixEquivInvertibleEquivInvertible](declarations/submatrixequivinvertibleequivinvertible.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [isUnit_submatrix_equiv](declarations/isunit-submatrix-equiv.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [inv_submatrix_equiv](declarations/inv-submatrix-equiv.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [inv_reindex](declarations/inv-reindex.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [det_conj](declarations/det-conj.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [det_conj'](declarations/det-conj-source-edition-2.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f59dbb670e602ddb294ce4bb2999fdb00aee6dee9ced9e3f03818eea5bca2524 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NonsingularInverse/Variant366818eb950cb9e82ca8b804392a42afa14655d25c2fd38eb2941cdc30eb340e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
