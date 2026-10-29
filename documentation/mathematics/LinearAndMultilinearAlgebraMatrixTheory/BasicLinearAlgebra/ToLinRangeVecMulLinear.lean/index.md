# To Lin Range Vec Mul Linear

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**139 observed declarations and anonymous commands**, 116 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f34c0630f913e221d1aa2781e637e2f5e4616fbd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToLinRangeVecMulLinear.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.vecMulLinear](declarations/matrix-vecmullinear.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Matrix.vecMulLinear_apply](declarations/matrix-vecmullinear-apply.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Matrix.coe_vecMulLinear](declarations/matrix-coe-vecmullinear.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [range_vecMulLinear](declarations/range-vecmullinear.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Matrix.vecMul_injective_iff](declarations/matrix-vecmul-injective-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Matrix.linearIndependent_rows_of_isUnit](declarations/matrix-linearindependent-rows-of-isunit.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [LinearMap.toMatrixRight'](declarations/linearmap-tomatrixright.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Matrix.toLinearMapRight'](declarations/matrix-tolinearmapright.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Matrix.toLinearMapRight'_apply](declarations/matrix-tolinearmapright-apply.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Matrix.toLinearMapRight'_mul](declarations/matrix-tolinearmapright-mul.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Matrix.toLinearMapRight'_mul_apply](declarations/matrix-tolinearmapright-mul-apply.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Matrix.toLinearMapRight'_one](declarations/matrix-tolinearmapright-one.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Matrix.toLinearEquivRight'OfInv](declarations/matrix-tolinearequivright-ofinv.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Matrix.mulVecLin](declarations/matrix-mulveclin.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Matrix.coe_mulVecLin](declarations/matrix-coe-mulveclin.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Matrix.mulVecLin_apply](declarations/matrix-mulveclin-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Matrix.mulVecLin_zero](declarations/matrix-mulveclin-zero.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Matrix.mulVecLin_add](declarations/matrix-mulveclin-add.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Matrix.mulVecLin_transpose](declarations/matrix-mulveclin-transpose.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Matrix.vecMulLinear_transpose](declarations/matrix-vecmullinear-transpose.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Matrix.mulVecLin_submatrix](declarations/matrix-mulveclin-submatrix.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Matrix.mulVecLin_reindex](declarations/matrix-mulveclin-reindex.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Matrix.mulVecLin_one](declarations/matrix-mulveclin-one.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Matrix.mulVecLin_mul](declarations/matrix-mulveclin-mul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Matrix.ker_mulVecLin_eq_bot_iff](declarations/matrix-ker-mulveclin-eq-bot-iff.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Matrix.range_mulVecLin](declarations/matrix-range-mulveclin.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Matrix.mulVec_injective_iff](declarations/matrix-mulvec-injective-iff.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Matrix.linearIndependent_cols_of_isUnit](declarations/matrix-linearindependent-cols-of-isunit.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [LinearMap.toMatrix'](declarations/linearmap-tomatrix-source-edition-2.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Matrix.toLin'](declarations/matrix-tolin-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Matrix.toLin'_apply'](declarations/matrix-tolin-apply-source-edition-3.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [LinearMap.toMatrix'_symm](declarations/linearmap-tomatrix-symm-source-edition-2.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Matrix.toLin'_symm](declarations/matrix-tolin-symm-source-edition-2.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [LinearMap.toMatrix'_toLin'](declarations/linearmap-tomatrix-tolin-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Matrix.toLin'_toMatrix'](declarations/matrix-tolin-tomatrix-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [LinearMap.toMatrix'_apply](declarations/linearmap-tomatrix-apply.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Matrix.toLin'_apply](declarations/matrix-tolin-apply.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Matrix.toLin'_one](declarations/matrix-tolin-one-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [LinearMap.toMatrix'_id](declarations/linearmap-tomatrix-id.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [LinearMap.toMatrix'_one](declarations/linearmap-tomatrix-one.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Matrix.toLin'_mul](declarations/matrix-tolin-mul.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Matrix.toLin'_submatrix](declarations/matrix-tolin-submatrix.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Matrix.toLin'_reindex](declarations/matrix-tolin-reindex.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Matrix.toLin'_mul_apply](declarations/matrix-tolin-mul-apply-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [LinearMap.toMatrix'_comp](declarations/linearmap-tomatrix-comp-source-edition-2.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [LinearMap.toMatrix'_mul](declarations/linearmap-tomatrix-mul-source-edition-2.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [LinearMap.toMatrix'_algebraMap](declarations/linearmap-tomatrix-algebramap-source-edition-2.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Matrix.ker_toLin'_eq_bot_iff](declarations/matrix-ker-tolin-eq-bot-iff.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Matrix.range_toLin'](declarations/matrix-range-tolin.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [Matrix.toLin'OfInv](declarations/matrix-tolin-ofinv.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [LinearMap.toMatrixAlgEquiv'](declarations/linearmap-tomatrixalgequiv.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Matrix.toLinAlgEquiv'](declarations/matrix-tolinalgequiv-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [LinearMap.toMatrixAlgEquiv'_symm](declarations/linearmap-tomatrixalgequiv-symm.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Matrix.toLinAlgEquiv'_symm](declarations/matrix-tolinalgequiv-symm.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [LinearMap.toMatrixAlgEquiv'_toLinAlgEquiv'](declarations/linearmap-tomatrixalgequiv-tolinalgequiv.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Matrix.toLinAlgEquiv'_toMatrixAlgEquiv'](declarations/matrix-tolinalgequiv-tomatrixalgequiv-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [LinearMap.toMatrixAlgEquiv'_apply](declarations/linearmap-tomatrixalgequiv-apply.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Matrix.toLinAlgEquiv'_apply](declarations/matrix-tolinalgequiv-apply.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Matrix.toLinAlgEquiv'_one](declarations/matrix-tolinalgequiv-one-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [LinearMap.toMatrixAlgEquiv'_id](declarations/linearmap-tomatrixalgequiv-id.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [LinearMap.toMatrixAlgEquiv'_comp](declarations/linearmap-tomatrixalgequiv-comp-source-edition-2.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [LinearMap.toMatrixAlgEquiv'_mul](declarations/linearmap-tomatrixalgequiv-mul-source-edition-2.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [LinearMap.toMatrix](declarations/linearmap-tomatrix.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [LinearMap.toMatrix_eq_toMatrix'](declarations/linearmap-tomatrix-eq-tomatrix.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Matrix.toLin](declarations/matrix-tolin.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Matrix.toLin_eq_toLin'](declarations/matrix-tolin-eq-tolin.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [LinearMap.toMatrix_symm](declarations/linearmap-tomatrix-symm.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Matrix.toLin_symm](declarations/matrix-tolin-symm.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Matrix.toLin_toMatrix](declarations/matrix-tolin-tomatrix.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [LinearMap.toMatrix_toLin](declarations/linearmap-tomatrix-tolin.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [LinearMap.toMatrix_apply](declarations/linearmap-tomatrix-apply-source-edition-2.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [LinearMap.toMatrix_transpose_apply](declarations/linearmap-tomatrix-transpose-apply-source-edition-2.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [LinearMap.toMatrix_apply'](declarations/linearmap-tomatrix-apply-source-edition-3.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [LinearMap.toMatrix_transpose_apply'](declarations/linearmap-tomatrix-transpose-apply.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [LinearMap.toMatrix_id](declarations/linearmap-tomatrix-id-source-edition-2.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [LinearMap.toMatrix_one](declarations/linearmap-tomatrix-one-source-edition-2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [LinearMap.toMatrix_singleton](declarations/linearmap-tomatrix-singleton.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Matrix.toLin_one](declarations/matrix-tolin-one.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [LinearMap.toMatrix_reindexRange](declarations/linearmap-tomatrix-reindexrange.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [LinearMap.toMatrix_algebraMap](declarations/linearmap-tomatrix-algebramap.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [LinearMap.toMatrix_mulVec_repr](declarations/linearmap-tomatrix-mulvec-repr.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [LinearMap.toMatrix_basis_equiv](declarations/linearmap-tomatrix-basis-equiv.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [LinearMap.toMatrix_smulBasis_left](declarations/linearmap-tomatrix-smulbasis-left.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [LinearMap.toMatrix_smulBasis_right](declarations/linearmap-tomatrix-smulbasis-right.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Matrix.toLin_apply](declarations/matrix-tolin-apply-source-edition-2.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Matrix.toLin_self](declarations/matrix-tolin-self.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [LinearMap.toMatrix_comp](declarations/linearmap-tomatrix-comp.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [LinearMap.toMatrix_mul](declarations/linearmap-tomatrix-mul.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [LinearMap.toMatrix_pow](declarations/linearmap-tomatrix-pow.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Matrix.toLin_mul](declarations/matrix-tolin-mul-source-edition-2.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Matrix.toLin_mul_apply](declarations/matrix-tolin-mul-apply.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [Matrix.toLinOfInv](declarations/matrix-tolinofinv.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [LinearMap.toMatrixAlgEquiv](declarations/linearmap-tomatrixalgequiv-source-edition-2.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [Matrix.toLinAlgEquiv](declarations/matrix-tolinalgequiv.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [LinearMap.toMatrixAlgEquiv_symm](declarations/linearmap-tomatrixalgequiv-symm-source-edition-2.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Matrix.toLinAlgEquiv_symm](declarations/matrix-tolinalgequiv-symm-source-edition-2.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Matrix.toLinAlgEquiv_toMatrixAlgEquiv](declarations/matrix-tolinalgequiv-tomatrixalgequiv.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [LinearMap.toMatrixAlgEquiv_toLinAlgEquiv](declarations/linearmap-tomatrixalgequiv-tolinalgequiv-source-edition-2.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [LinearMap.toMatrixAlgEquiv_apply](declarations/linearmap-tomatrixalgequiv-apply-source-edition-3.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [LinearMap.toMatrixAlgEquiv_transpose_apply](declarations/linearmap-tomatrixalgequiv-transpose-apply.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [LinearMap.toMatrixAlgEquiv_apply'](declarations/linearmap-tomatrixalgequiv-apply-source-edition-2.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [LinearMap.toMatrixAlgEquiv_transpose_apply'](declarations/linearmap-tomatrixalgequiv-transpose-apply-source-edition-2.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Matrix.toLinAlgEquiv_apply](declarations/matrix-tolinalgequiv-apply-source-edition-2.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Matrix.toLinAlgEquiv_self](declarations/matrix-tolinalgequiv-self.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [LinearMap.toMatrixAlgEquiv_id](declarations/linearmap-tomatrixalgequiv-id-source-edition-2.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Matrix.toLinAlgEquiv_one](declarations/matrix-tolinalgequiv-one.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [LinearMap.toMatrixAlgEquiv_reindexRange](declarations/linearmap-tomatrixalgequiv-reindexrange.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [LinearMap.toMatrixAlgEquiv_comp](declarations/linearmap-tomatrixalgequiv-comp.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [LinearMap.toMatrixAlgEquiv_mul](declarations/linearmap-tomatrixalgequiv-mul.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Matrix.toLinAlgEquiv_mul](declarations/matrix-tolinalgequiv-mul.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Matrix.toLin_finTwoProd_apply](declarations/matrix-tolin-fintwoprod-apply.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Matrix.toLin_finTwoProd](declarations/matrix-tolin-fintwoprod.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [toMatrix_distrib_mul_action_toLinearMap](declarations/tomatrix-distrib-mul-action-tolinearmap.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [LinearMap.toMatrix_prodMap](declarations/linearmap-tomatrix-prodmap.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [toMatrix_lmul'](declarations/tomatrix-lmul.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [toMatrix_lsmul](declarations/tomatrix-lsmul.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [leftMulMatrix](declarations/leftmulmatrix.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [leftMulMatrix_apply](declarations/leftmulmatrix-apply.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [leftMulMatrix_eq_repr_mul](declarations/leftmulmatrix-eq-repr-mul.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [leftMulMatrix_mulVec_repr](declarations/leftmulmatrix-mulvec-repr.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [toMatrix_lmul_eq](declarations/tomatrix-lmul-eq.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [leftMulMatrix_injective](declarations/leftmulmatrix-injective.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [smul_leftMulMatrix](declarations/smul-leftmulmatrix.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [_root_.LinearMap.restrictScalars_toMatrix](declarations/root-linearmap-restrictscalars-tomatrix.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [smulTower_leftMulMatrix](declarations/smultower-leftmulmatrix.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [smulTower_leftMulMatrix_algebraMap](declarations/smultower-leftmulmatrix-algebramap.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [smulTower_leftMulMatrix_algebraMap_eq](declarations/smultower-leftmulmatrix-algebramap-eq.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [smulTower_leftMulMatrix_algebraMap_ne](declarations/smultower-leftmulmatrix-algebramap-ne.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [algEquivMatrix'](declarations/algequivmatrix-source-edition-2.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [LinearEquiv.algConj](declarations/linearequiv-algconj.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [algEquivMatrix](declarations/algequivmatrix.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [linearMap](declarations/linearmap.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [linearMap_apply](declarations/linearmap-apply.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [linearMap_apply_apply](declarations/linearmap-apply-apply.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `abbrev` | [_root_.Basis.end](declarations/root-basis-end.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [end_apply](declarations/end-apply.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [end_apply_apply](declarations/end-apply-apply.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [endVecRingEquivMatrixEnd](declarations/endvecringequivmatrixend.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [endVecAlgEquivMatrixEnd](declarations/endvecalgequivmatrixend.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bdcd43fa84ae534558f643ade4ad5bd2eb1300109494b1b9fc9dfd921f9623f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ToLin/Variant4b48b6b9c45dbc703bfe189cd1b84e73759027e5c09030c95631162a34d06961.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
