# Algebra Mv Polynomial Equiv Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**119 observed declarations and anonymous commands**, 103 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant95d16cfe9945f3f4b9a39f83afcf3ffbf264c62fb3acaee53b8499dfd54960c0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdfc975d04badb9226183345a7558ee477649af0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialEquivPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [uniqueAlgEquiv](declarations/uniquealgequiv.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [uniqueAlgEquiv_monomial](declarations/uniquealgequiv-monomial.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [uniqueAlgEquiv_symm_monomial](declarations/uniquealgequiv-symm-monomial.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coeff_uniqueAlgEquiv](declarations/coeff-uniquealgequiv.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coeff_uniqueAlgEquiv_symm](declarations/coeff-uniquealgequiv-symm.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [pUnitAlgEquiv](declarations/punitalgequiv.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pUnitAlgEquiv_monomial](declarations/punitalgequiv-monomial.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pUnitAlgEquiv_symm_monomial](declarations/punitalgequiv-symm-monomial.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mapEquiv](declarations/mapequiv.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mapEquiv_apply](declarations/mapequiv-apply.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mapEquiv_refl](declarations/mapequiv-refl.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mapEquiv_symm](declarations/mapequiv-symm.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mapEquiv_trans](declarations/mapequiv-trans.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mapAlgEquiv](declarations/mapalgequiv.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mapAlgEquiv_apply](declarations/mapalgequiv-apply.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mapAlgEquiv_refl](declarations/mapalgequiv-refl.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mapAlgEquiv_symm](declarations/mapalgequiv-symm.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mapAlgEquiv_trans](declarations/mapalgequiv-trans.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval₂_uniqueAlgEquiv](declarations/eval-uniquealgequiv.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval₂_uniqueAlgEquiv_symm](declarations/eval-uniquealgequiv-symm.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eval₂_const_uniqueAlgEquiv_symm](declarations/eval-const-uniquealgequiv-symm.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eval₂_const_uniqueAlgEquiv](declarations/eval-const-uniquealgequiv.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval₂_pUnitAlgEquiv_symm](declarations/eval-punitalgequiv-symm.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval₂_const_pUnitAlgEquiv_symm](declarations/eval-const-punitalgequiv-symm.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eval₂_pUnitAlgEquiv](declarations/eval-punitalgequiv.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval₂_const_pUnitAlgEquiv](declarations/eval-const-punitalgequiv.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [isEmptyAlgEquiv](declarations/isemptyalgequiv.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [aeval_injective_iff_of_isEmpty](declarations/aeval-injective-iff-of-isempty.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [isEmptyRingEquiv](declarations/isemptyringequiv.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isEmptyRingEquiv_symm_apply](declarations/isemptyringequiv-symm-apply.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isEmptyRingEquiv_symm_toRingHom](declarations/isemptyringequiv-symm-toringhom.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [isEmptyRingEquiv_eq_coeff_zero](declarations/isemptyringequiv-eq-coeff-zero.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [isEmptyAlgEquiv_symm_apply](declarations/isemptyalgequiv-symm-apply.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isEmptyAlgEquiv_symm_toRingHom](declarations/isemptyalgequiv-symm-toringhom.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mvPolynomialEquivMvPolynomial](declarations/mvpolynomialequivmvpolynomial.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [sumRingEquiv](declarations/sumringequiv.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [sumRingEquiv_C](declarations/sumringequiv-c.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [sumRingEquiv_X_inl](declarations/sumringequiv-x-inl.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [sumRingEquiv_X_inr](declarations/sumringequiv-x-inr.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [sumRingEquiv_symm_C_C](declarations/sumringequiv-symm-c-c.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [sumRingEquiv_symm_X](declarations/sumringequiv-symm-x.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [sumRingEquiv_symm_C_X](declarations/sumringequiv-symm-c-x.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [sumToIter](declarations/sumtoiter.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sumToIter_C](declarations/sumtoiter-c.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sumToIter_Xl](declarations/sumtoiter-xl.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sumToIter_Xr](declarations/sumtoiter-xr.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [iterToSum](declarations/itertosum.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [iterToSum_C_C](declarations/itertosum-c-c.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [iterToSum_X](declarations/itertosum-x.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [iterToSum_C_X](declarations/itertosum-c-x.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [sumAlgEquiv](declarations/sumalgequiv.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [sumAlgEquiv_C_inl](declarations/sumalgequiv-c-inl.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [sumAlgEquiv_symm_C_C](declarations/sumalgequiv-symm-c-c.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [sumAlgEquiv_X_inl](declarations/sumalgequiv-x-inl.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [sumAlgEquiv_symm_X](declarations/sumalgequiv-symm-x.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [sumAlgEquiv_X_inr](declarations/sumalgequiv-x-inr.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [sumAlgEquiv_symm_C_X](declarations/sumalgequiv-symm-c-x.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [sumAlgEquiv_comp_rename_inr](declarations/sumalgequiv-comp-rename-inr.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [sumAlgEquiv_comp_rename_inl](declarations/sumalgequiv-comp-rename-inl.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [commAlgEquiv](declarations/commalgequiv.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [commAlgEquiv_C](declarations/commalgequiv-c.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [commAlgEquiv_C_X](declarations/commalgequiv-c-x.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [commAlgEquiv_X](declarations/commalgequiv-x.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [optionEquivLeft](declarations/optionequivleft.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [optionEquivLeft_X_some](declarations/optionequivleft-x-some.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [optionEquivLeft_X_none](declarations/optionequivleft-x-none.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [optionEquivLeft_C](declarations/optionequivleft-c.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [optionEquivLeft_monomial](declarations/optionequivleft-monomial.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [optionEquivLeft_symm_C_X](declarations/optionequivleft-symm-c-x.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [optionEquivLeft_symm_C_C](declarations/optionequivleft-symm-c-c.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [optionEquivLeft_symm_X](declarations/optionequivleft-symm-x.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [optionEquivLeft_coeff_some_coeff_none](declarations/optionequivleft-coeff-some-coeff-none.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [optionEquivLeft_elim_eval](declarations/optionequivleft-elim-eval.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [mem_support_coeff_optionEquivLeft](declarations/mem-support-coeff-optionequivleft.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [support_optionEquivLeft](declarations/support-optionequivleft.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [nonempty_support_optionEquivLeft](declarations/nonempty-support-optionequivleft.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [degree_optionEquivLeft](declarations/degree-optionequivleft.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [natDegree_optionEquivLeft](declarations/natdegree-optionequivleft.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [totalDegree_coeff_optionEquivLeft_add_le](declarations/totaldegree-coeff-optionequivleft-add-le.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [totalDegree_coeff_optionEquivLeft_le](declarations/totaldegree-coeff-optionequivleft-le.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [optionEquivLeft_coeff_coeff](declarations/optionequivleft-coeff-coeff.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [optionEquivRight](declarations/optionequivright.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [optionEquivRight_X_some](declarations/optionequivright-x-some.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [optionEquivRight_X_none](declarations/optionequivright-x-none.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [optionEquivRight_C](declarations/optionequivright-c.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [finSuccEquiv](declarations/finsuccequiv.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [finSuccEquiv_eq](declarations/finsuccequiv-eq.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [finSuccEquiv_apply](declarations/finsuccequiv-apply.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [finSuccEquiv_comp_C_eq_C](declarations/finsuccequiv-comp-c-eq-c.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [finSuccEquiv_X_zero](declarations/finsuccequiv-x-zero.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [finSuccEquiv_X_succ](declarations/finsuccequiv-x-succ.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [finSuccEquiv_coeff_coeff](declarations/finsuccequiv-coeff-coeff.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [eval_eq_eval_mv_eval'](declarations/eval-eq-eval-mv-eval.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coeff_eval_eq_eval_coeff](declarations/coeff-eval-eq-eval-coeff.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [mem_support_coeff_finSuccEquiv](declarations/mem-support-coeff-finsuccequiv.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [totalDegree_coeff_finSuccEquiv_add_le](declarations/totaldegree-coeff-finsuccequiv-add-le.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [support_finSuccEquiv](declarations/support-finsuccequiv.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mem_support_finSuccEquiv](declarations/mem-support-finsuccequiv.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [image_support_finSuccEquiv](declarations/image-support-finsuccequiv.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [mem_image_support_coeff_finSuccEquiv](declarations/mem-image-support-coeff-finsuccequiv.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [nonempty_support_finSuccEquiv](declarations/nonempty-support-finsuccequiv.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [degree_finSuccEquiv](declarations/degree-finsuccequiv.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [natDegree_finSuccEquiv](declarations/natdegree-finsuccequiv.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [degreeOf_eq_natDegree](declarations/degreeof-eq-natdegree.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [degreeOf_coeff_finSuccEquiv](declarations/degreeof-coeff-finsuccequiv.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [finSuccEquiv_rename_finSuccEquiv](declarations/finsuccequiv-rename-finsuccequiv.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [rename_polynomial_aeval_X](declarations/rename-polynomial-aeval-x.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [Polynomial.toMvPolynomial](declarations/polynomial-tomvpolynomial.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [Polynomial.toMvPolynomial_C](declarations/polynomial-tomvpolynomial-c.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [Polynomial.toMvPolynomial_X](declarations/polynomial-tomvpolynomial-x.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [Polynomial.toMvPolynomial_eq_rename_comp](declarations/polynomial-tomvpolynomial-eq-rename-comp.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [Polynomial.toMvPolynomial_injective](declarations/polynomial-tomvpolynomial-injective.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [Polynomial.toMvPolynomial_inj](declarations/polynomial-tomvpolynomial-inj.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [MvPolynomial.eval_comp_toMvPolynomial](declarations/mvpolynomial-eval-comp-tomvpolynomial.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [MvPolynomial.eval_toMvPolynomial](declarations/mvpolynomial-eval-tomvpolynomial.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [MvPolynomial.aeval_comp_toMvPolynomial](declarations/mvpolynomial-aeval-comp-tomvpolynomial.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [MvPolynomial.aeval_toMvPolynomial](declarations/mvpolynomial-aeval-tomvpolynomial.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [MvPolynomial.rename_comp_toMvPolynomial](declarations/mvpolynomial-rename-comp-tomvpolynomial.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [MvPolynomial.rename_toMvPolynomial](declarations/mvpolynomial-rename-tomvpolynomial.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a94c5b8c6754b809422c988789e1b06f1d39187ffc26264d87c429d8c8be5b70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Equiv/Variant95d16cfe9945f3f4b9a39f83afcf3ffbf264c62fb3acaee53b8499dfd54960c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
