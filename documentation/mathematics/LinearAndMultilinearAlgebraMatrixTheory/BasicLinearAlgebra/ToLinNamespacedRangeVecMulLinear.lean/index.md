# To Lin Namespaced Range Vec Mul Linear

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**139 observed declarations and anonymous commands**, 116 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/ToLin/Variant33dd88e6c2fb14fb24c0d7f5a883e560c7ae31b954807430182c54cb79ed2f78.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a9b105417221d0ae3ae5afb6342870aff58f0a9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ToLinNamespacedRangeVecMulLinear.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix.vecMulLinear](declarations/matrix-vecmullinear.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Matrix.vecMulLinear_apply](declarations/matrix-vecmullinear-apply.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Matrix.coe_vecMulLinear](declarations/matrix-coe-vecmullinear.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [range_vecMulLinear](declarations/range-vecmullinear.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Matrix.vecMul_injective_iff](declarations/matrix-vecmul-injective-iff.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Matrix.linearIndependent_rows_of_isUnit](declarations/matrix-linearindependent-rows-of-isunit.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [LinearMap.toMatrixRight'](declarations/linearmap-tomatrixright.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Matrix.toLinearMapRight'](declarations/matrix-tolinearmapright.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Matrix.toLinearMapRight'_apply](declarations/matrix-tolinearmapright-apply.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Matrix.toLinearMapRight'_mul](declarations/matrix-tolinearmapright-mul.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Matrix.toLinearMapRight'_mul_apply](declarations/matrix-tolinearmapright-mul-apply.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Matrix.toLinearMapRight'_one](declarations/matrix-tolinearmapright-one.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Matrix.toLinearEquivRight'OfInv](declarations/matrix-tolinearequivright-ofinv.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Matrix.mulVecLin](declarations/matrix-mulveclin.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Matrix.coe_mulVecLin](declarations/matrix-coe-mulveclin.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Matrix.mulVecLin_apply](declarations/matrix-mulveclin-apply.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Matrix.mulVecLin_zero](declarations/matrix-mulveclin-zero.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Matrix.mulVecLin_add](declarations/matrix-mulveclin-add.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Matrix.mulVecLin_transpose](declarations/matrix-mulveclin-transpose.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Matrix.vecMulLinear_transpose](declarations/matrix-vecmullinear-transpose.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Matrix.mulVecLin_submatrix](declarations/matrix-mulveclin-submatrix.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Matrix.mulVecLin_reindex](declarations/matrix-mulveclin-reindex.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Matrix.mulVecLin_one](declarations/matrix-mulveclin-one.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Matrix.mulVecLin_mul](declarations/matrix-mulveclin-mul.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Matrix.ker_mulVecLin_eq_bot_iff](declarations/matrix-ker-mulveclin-eq-bot-iff.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Matrix.range_mulVecLin](declarations/matrix-range-mulveclin.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Matrix.mulVec_injective_iff](declarations/matrix-mulvec-injective-iff.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Matrix.linearIndependent_cols_of_isUnit](declarations/matrix-linearindependent-cols-of-isunit.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [LinearMap.toMatrix'](declarations/linearmap-tomatrix.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Matrix.toLin'](declarations/matrix-tolin-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Matrix.toLin'_apply'](declarations/matrix-tolin-apply.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [LinearMap.toMatrix'_symm](declarations/linearmap-tomatrix-symm-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Matrix.toLin'_symm](declarations/matrix-tolin-symm-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [LinearMap.toMatrix'_toLin'](declarations/linearmap-tomatrix-tolin-source-edition-2.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Matrix.toLin'_toMatrix'](declarations/matrix-tolin-tomatrix.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [LinearMap.toMatrix'_apply](declarations/linearmap-tomatrix-apply-source-edition-3.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Matrix.toLin'_apply](declarations/matrix-tolin-apply-source-edition-2.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Matrix.toLin'_one](declarations/matrix-tolin-one.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [LinearMap.toMatrix'_id](declarations/linearmap-tomatrix-id.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [LinearMap.toMatrix'_one](declarations/linearmap-tomatrix-one.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Matrix.toLin'_mul](declarations/matrix-tolin-mul.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Matrix.toLin'_submatrix](declarations/matrix-tolin-submatrix.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Matrix.toLin'_reindex](declarations/matrix-tolin-reindex.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Matrix.toLin'_mul_apply](declarations/matrix-tolin-mul-apply-source-edition-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [LinearMap.toMatrix'_comp](declarations/linearmap-tomatrix-comp.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [LinearMap.toMatrix'_mul](declarations/linearmap-tomatrix-mul-source-edition-2.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [LinearMap.toMatrix'_algebraMap](declarations/linearmap-tomatrix-algebramap.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Matrix.ker_toLin'_eq_bot_iff](declarations/matrix-ker-tolin-eq-bot-iff.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Matrix.range_toLin'](declarations/matrix-range-tolin.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [Matrix.toLin'OfInv](declarations/matrix-tolin-ofinv.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [LinearMap.toMatrixAlgEquiv'](declarations/linearmap-tomatrixalgequiv-source-edition-2.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [Matrix.toLinAlgEquiv'](declarations/matrix-tolinalgequiv-source-edition-2.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [LinearMap.toMatrixAlgEquiv'_symm](declarations/linearmap-tomatrixalgequiv-symm-source-edition-2.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Matrix.toLinAlgEquiv'_symm](declarations/matrix-tolinalgequiv-symm-source-edition-2.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [LinearMap.toMatrixAlgEquiv'_toLinAlgEquiv'](declarations/linearmap-tomatrixalgequiv-tolinalgequiv.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Matrix.toLinAlgEquiv'_toMatrixAlgEquiv'](declarations/matrix-tolinalgequiv-tomatrixalgequiv-source-edition-2.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [LinearMap.toMatrixAlgEquiv'_apply](declarations/linearmap-tomatrixalgequiv-apply.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Matrix.toLinAlgEquiv'_apply](declarations/matrix-tolinalgequiv-apply.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Matrix.toLinAlgEquiv'_one](declarations/matrix-tolinalgequiv-one.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [LinearMap.toMatrixAlgEquiv'_id](declarations/linearmap-tomatrixalgequiv-id-source-edition-2.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [LinearMap.toMatrixAlgEquiv'_comp](declarations/linearmap-tomatrixalgequiv-comp-source-edition-2.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [LinearMap.toMatrixAlgEquiv'_mul](declarations/linearmap-tomatrixalgequiv-mul.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [LinearMap.toMatrix](declarations/linearmap-tomatrix-source-edition-2.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [LinearMap.toMatrix_eq_toMatrix'](declarations/linearmap-tomatrix-eq-tomatrix.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [Matrix.toLin](declarations/matrix-tolin.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Matrix.toLin_eq_toLin'](declarations/matrix-tolin-eq-tolin.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [LinearMap.toMatrix_symm](declarations/linearmap-tomatrix-symm.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Matrix.toLin_symm](declarations/matrix-tolin-symm.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Matrix.toLin_toMatrix](declarations/matrix-tolin-tomatrix-source-edition-2.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [LinearMap.toMatrix_toLin](declarations/linearmap-tomatrix-tolin.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [LinearMap.toMatrix_apply](declarations/linearmap-tomatrix-apply.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [LinearMap.toMatrix_transpose_apply](declarations/linearmap-tomatrix-transpose-apply.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [LinearMap.toMatrix_apply'](declarations/linearmap-tomatrix-apply-source-edition-2.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [LinearMap.toMatrix_transpose_apply'](declarations/linearmap-tomatrix-transpose-apply-source-edition-2.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [LinearMap.toMatrix_id](declarations/linearmap-tomatrix-id-source-edition-2.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [LinearMap.toMatrix_one](declarations/linearmap-tomatrix-one-source-edition-2.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [LinearMap.toMatrix_singleton](declarations/linearmap-tomatrix-singleton.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Matrix.toLin_one](declarations/matrix-tolin-one-source-edition-2.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [LinearMap.toMatrix_reindexRange](declarations/linearmap-tomatrix-reindexrange.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [LinearMap.toMatrix_algebraMap](declarations/linearmap-tomatrix-algebramap-source-edition-2.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [LinearMap.toMatrix_mulVec_repr](declarations/linearmap-tomatrix-mulvec-repr.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [LinearMap.toMatrix_basis_equiv](declarations/linearmap-tomatrix-basis-equiv.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [LinearMap.toMatrix_smulBasis_left](declarations/linearmap-tomatrix-smulbasis-left.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [LinearMap.toMatrix_smulBasis_right](declarations/linearmap-tomatrix-smulbasis-right.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Matrix.toLin_apply](declarations/matrix-tolin-apply-source-edition-3.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Matrix.toLin_self](declarations/matrix-tolin-self.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [LinearMap.toMatrix_comp](declarations/linearmap-tomatrix-comp-source-edition-2.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [LinearMap.toMatrix_mul](declarations/linearmap-tomatrix-mul.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [LinearMap.toMatrix_pow](declarations/linearmap-tomatrix-pow.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Matrix.toLin_mul](declarations/matrix-tolin-mul-source-edition-2.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Matrix.toLin_mul_apply](declarations/matrix-tolin-mul-apply.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [Matrix.toLinOfInv](declarations/matrix-tolinofinv.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [LinearMap.toMatrixAlgEquiv](declarations/linearmap-tomatrixalgequiv.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [Matrix.toLinAlgEquiv](declarations/matrix-tolinalgequiv.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [LinearMap.toMatrixAlgEquiv_symm](declarations/linearmap-tomatrixalgequiv-symm.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Matrix.toLinAlgEquiv_symm](declarations/matrix-tolinalgequiv-symm.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Matrix.toLinAlgEquiv_toMatrixAlgEquiv](declarations/matrix-tolinalgequiv-tomatrixalgequiv.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [LinearMap.toMatrixAlgEquiv_toLinAlgEquiv](declarations/linearmap-tomatrixalgequiv-tolinalgequiv-source-edition-2.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [LinearMap.toMatrixAlgEquiv_apply](declarations/linearmap-tomatrixalgequiv-apply-source-edition-3.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [LinearMap.toMatrixAlgEquiv_transpose_apply](declarations/linearmap-tomatrixalgequiv-transpose-apply-source-edition-2.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [LinearMap.toMatrixAlgEquiv_apply'](declarations/linearmap-tomatrixalgequiv-apply-source-edition-2.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [LinearMap.toMatrixAlgEquiv_transpose_apply'](declarations/linearmap-tomatrixalgequiv-transpose-apply.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Matrix.toLinAlgEquiv_apply](declarations/matrix-tolinalgequiv-apply-source-edition-2.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [Matrix.toLinAlgEquiv_self](declarations/matrix-tolinalgequiv-self.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [LinearMap.toMatrixAlgEquiv_id](declarations/linearmap-tomatrixalgequiv-id.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Matrix.toLinAlgEquiv_one](declarations/matrix-tolinalgequiv-one-source-edition-2.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [LinearMap.toMatrixAlgEquiv_reindexRange](declarations/linearmap-tomatrixalgequiv-reindexrange.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [LinearMap.toMatrixAlgEquiv_comp](declarations/linearmap-tomatrixalgequiv-comp.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [LinearMap.toMatrixAlgEquiv_mul](declarations/linearmap-tomatrixalgequiv-mul-source-edition-2.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Matrix.toLinAlgEquiv_mul](declarations/matrix-tolinalgequiv-mul.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Matrix.toLin_finTwoProd_apply](declarations/matrix-tolin-fintwoprod-apply.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Matrix.toLin_finTwoProd](declarations/matrix-tolin-fintwoprod.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [toMatrix_distrib_mul_action_toLinearMap](declarations/tomatrix-distrib-mul-action-tolinearmap.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [LinearMap.toMatrix_prodMap](declarations/linearmap-tomatrix-prodmap.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [toMatrix_lmul'](declarations/tomatrix-lmul.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [toMatrix_lsmul](declarations/tomatrix-lsmul.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [leftMulMatrix](declarations/leftmulmatrix.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [leftMulMatrix_apply](declarations/leftmulmatrix-apply.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [leftMulMatrix_eq_repr_mul](declarations/leftmulmatrix-eq-repr-mul.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [leftMulMatrix_mulVec_repr](declarations/leftmulmatrix-mulvec-repr.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [toMatrix_lmul_eq](declarations/tomatrix-lmul-eq.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [leftMulMatrix_injective](declarations/leftmulmatrix-injective.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [smul_leftMulMatrix](declarations/smul-leftmulmatrix.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [To Lin Namespaced Range Vec Mul Linear](declarations/restrictscalars-tomatrix.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [smulTower_leftMulMatrix](declarations/smultower-leftmulmatrix.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [smulTower_leftMulMatrix_algebraMap](declarations/smultower-leftmulmatrix-algebramap.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [smulTower_leftMulMatrix_algebraMap_eq](declarations/smultower-leftmulmatrix-algebramap-eq.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [smulTower_leftMulMatrix_algebraMap_ne](declarations/smultower-leftmulmatrix-algebramap-ne.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [algEquivMatrix'](declarations/algequivmatrix.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [LinearEquiv.algConj](declarations/linearequiv-algconj.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [algEquivMatrix](declarations/algequivmatrix-source-edition-2.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [linearMap](declarations/linearmap.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [linearMap_apply](declarations/linearmap-apply.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [linearMap_apply_apply](declarations/linearmap-apply-apply.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `abbrev` | [To Lin Namespaced Range Vec Mul Linear](declarations/end.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [end_apply](declarations/end-apply.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [end_apply_apply](declarations/end-apply-apply.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [endVecRingEquivMatrixEnd](declarations/endvecringequivmatrixend.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [endVecAlgEquivMatrixEnd](declarations/endvecalgequivmatrixend.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b9a142d1fc83fb35c63aee1750f09ea603053127806c729b9f297c65e78041f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ToLin/Variant33dd88e6c2fb14fb24c0d7f5a883e560c7ae31b954807430182c54cb79ed2f78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
