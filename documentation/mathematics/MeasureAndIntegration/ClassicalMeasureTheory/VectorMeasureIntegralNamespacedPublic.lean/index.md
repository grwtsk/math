# Vector Measure Integral Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**114 observed declarations and anonymous commands**, 108 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant305655d0516bf14598aab72445f604db1723e53eee26ed7de64f6ccac6bd76e8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2778d9f04898192a5157ca56196c44375c8de318`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureIntegralNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [VectorMeasure.transpose](declarations/vectormeasure-transpose.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [cbmApplyMeasure](declarations/cbmapplymeasure.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [transpose_eq_cbmApplyMeasure](declarations/transpose-eq-cbmapplymeasure.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cbmApplyMeasure_apply](declarations/cbmapplymeasure-apply.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cbmApplyMeasure_union](declarations/cbmapplymeasure-union.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [norm_cbmApplyMeasure_le](declarations/norm-cbmapplymeasure-le.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [dominatedFinMeasAdditive_cbmApplyMeasure](declarations/dominatedfinmeasadditive-cbmapplymeasure.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [dominatedFinMeasAdditive_transpose_cbmApplyMeasure](declarations/dominatedfinmeasadditive-transpose-cbmapplymeasure.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [transpose_zero](declarations/transpose-zero.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [transpose_restrict](declarations/transpose-restrict.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [transpose_map](declarations/transpose-map.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [transpose_add](declarations/transpose-add.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [transpose_smul](declarations/transpose-smul.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [transpose_dirac](declarations/transpose-dirac.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [variation_transpose_le](declarations/variation-transpose-le.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [absolutelyContinuous_variation_transpose](declarations/absolutelycontinuous-variation-transpose.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [variation_transpose_eq_smul](declarations/variation-transpose-eq-smul.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [variation_transpose_eq](declarations/variation-transpose-eq.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [variation_transpose_lsmul](declarations/variation-transpose-lsmul.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [variation_transpose_lsmul_flip](declarations/variation-transpose-lsmul-flip.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [Integrable](declarations/integrable.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [IntegrableOn](declarations/integrableon.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [integral](declarations/integral.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [integral_eq_setToFun](declarations/integral-eq-settofun.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [integral_eq_setToFun_transpose](declarations/integral-eq-settofun-transpose.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integral_of_not_completeSpace](declarations/integral-of-not-completespace.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [transpose_zero_cbm](declarations/transpose-zero-cbm.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [transpose_add_vectorMeasure](declarations/transpose-add-vectormeasure.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [transpose_add_cbm](declarations/transpose-add-cbm.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [transpose_finsetSum_vectorMeasure](declarations/transpose-finsetsum-vectormeasure.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [transpose_finsetSum_cbm](declarations/transpose-finsetsum-cbm.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [transpose_neg_vectorMeasure](declarations/transpose-neg-vectormeasure.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [transpose_neg_cbm](declarations/transpose-neg-cbm.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [transpose_sub_vectorMeasure](declarations/transpose-sub-vectormeasure.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [transpose_sub_cbm](declarations/transpose-sub-cbm.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_undef](declarations/integral-undef.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [integral_zero](declarations/integral-zero.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [integral_congr_ae](declarations/integral-congr-ae.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [integral_eq_zero_of_ae](declarations/integral-eq-zero-of-ae.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Integrable.add](declarations/integrable-add.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Integrable.neg](declarations/integrable-neg.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Integrable.sub](declarations/integrable-sub.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Integrable.smul](declarations/integrable-smul.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Integrable.finsetSum](declarations/integrable-finsetsum.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Integrable.fun_finsetSum](declarations/integrable-fun-finsetsum.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [integral_fun_add](declarations/integral-fun-add.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [integral_add](declarations/integral-add.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [integral_finsetSum](declarations/integral-finsetsum.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [integral_fun_neg](declarations/integral-fun-neg.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [integral_neg](declarations/integral-neg.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [integral_fun_sub](declarations/integral-fun-sub.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [integral_sub](declarations/integral-sub.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [integral_fun_smul](declarations/integral-fun-smul.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [integral_smul](declarations/integral-smul.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [integral_const](declarations/integral-const.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [Integrable.zero_vectorMeasure](declarations/integrable-zero-vectormeasure.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Integrable.add_vectorMeasure](declarations/integrable-add-vectormeasure.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Integrable.neg_vectorMeasure](declarations/integrable-neg-vectormeasure.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Integrable.sub_vectorMeasure](declarations/integrable-sub-vectormeasure.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [Integrable.smul_vectorMeasure](declarations/integrable-smul-vectormeasure.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [Integrable.finsetSum_vectorMeasure](declarations/integrable-finsetsum-vectormeasure.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [Integrable.restrict](declarations/integrable-restrict.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [integral_zero_vectorMeasure](declarations/integral-zero-vectormeasure.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [integral_of_isEmpty](declarations/integral-of-isempty.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [integral_smul_vectorMeasure](declarations/integral-smul-vectormeasure.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [integral_smul_nnreal_vectorMeasure](declarations/integral-smul-nnreal-vectormeasure.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [integral_add_vectorMeasure](declarations/integral-add-vectormeasure.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [integral_finsetSum_vectorMeasure](declarations/integral-finsetsum-vectormeasure.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [integral_neg_vectorMeasure](declarations/integral-neg-vectormeasure.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [integral_sub_vectorMeasure](declarations/integral-sub-vectormeasure.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [integral_zero_cbm](declarations/integral-zero-cbm.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [integral_add_cbm](declarations/integral-add-cbm.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [integral_finsetSum_cbm](declarations/integral-finsetsum-cbm.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [integral_neg_cbm](declarations/integral-neg-cbm.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [integral_sub_cbm](declarations/integral-sub-cbm.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Integrable.of_integral_ne_zero](declarations/integrable-of-integral-ne-zero.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [integral_non_aestronglyMeasurable](declarations/integral-non-aestronglymeasurable.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [integral_indicator₂](declarations/integral-indicator.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [continuous_integral](declarations/continuous-integral.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [norm_integral_le_lintegral_norm](declarations/norm-integral-le-lintegral-norm.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [norm_integral_le_integral_norm](declarations/norm-integral-le-integral-norm.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [enorm_integral_le_lintegral_enorm](declarations/enorm-integral-le-lintegral-enorm.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [enorm_integral_le_lintegral_enorm_transpose](declarations/enorm-integral-le-lintegral-enorm-transpose.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [dist_integral_le_lintegral_edist](declarations/dist-integral-le-lintegral-edist.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [edist_integral_le_lintegral_edist](declarations/edist-integral-le-lintegral-edist.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [frequently_ae_ne_zero_of_integral_ne_zero](declarations/frequently-ae-ne-zero-of-integral-ne-zero.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [exists_ne_zero_of_integral_ne_zero](declarations/exists-ne-zero-of-integral-ne-zero.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [integral_toSignedMeasure](declarations/integral-tosignedmeasure.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [integral_dirac'](declarations/integral-dirac-source-edition-2.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [integral_dirac](declarations/integral-dirac.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [integral_unique](declarations/integral-unique.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [tendsto_integral_of_L1](declarations/tendsto-integral-of-l1.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [tendsto_integral_of_L1'](declarations/tendsto-integral-of-l1-source-edition-2.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [continuousWithinAt_of_dominated](declarations/continuouswithinat-of-dominated.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [continuousAt_of_dominated](declarations/continuousat-of-dominated.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [continuousOn_of_dominated](declarations/continuouson-of-dominated.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [continuous_of_dominated](declarations/continuous-of-dominated.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [norm_integral_le_of_norm_le_const](declarations/norm-integral-le-of-norm-le-const.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [enorm_integral_le_of_enorm_le_const](declarations/enorm-integral-le-of-enorm-le-const.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [nndist_integral_add_vectorMeasure_le_lintegral](declarations/nndist-integral-add-vectormeasure-le-lintegral.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [variation_transpose_map_le](declarations/variation-transpose-map-le.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Integrable.map](declarations/integrable-map.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [integral_map](declarations/integral-map.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Vector Measure Integral Namespaced Public](declarations/root-grwtsk-analysis-realanalysis-integration-vectormeasuretranspose-var-source-edition-2.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [Vector Measure Integral Namespaced Public](declarations/root-grwtsk-analysis-realanalysis-integration-vectormeasuretranspose-var-source-edition-4.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Vector Measure Integral Namespaced Public](declarations/root-grwtsk-analysis-realanalysis-integration-vectormeasuretranspose-var-source-edition-3.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Vector Measure Integral Namespaced Public](declarations/root-grwtsk-analysis-realanalysis-integration-vectormeasuretranspose-var.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [integral_map_equiv](declarations/integral-map-equiv.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [tendsto_integral_of_dominated_convergence](declarations/tendsto-integral-of-dominated-convergence.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](declarations/tendsto-integral-filter-of-dominated-convergence.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [hasSum_integral_of_dominated_convergence](declarations/hassum-integral-of-dominated-convergence.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [integral_tsum](declarations/integral-tsum.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [tendsto_integral_filter_of_norm_le_const](declarations/tendsto-integral-filter-of-norm-le-const.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff1fde9510e8b83bea1aded6dc88cbc741efa79af50f30baec020ff07ad5d0b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant305655d0516bf14598aab72445f604db1723e53eee26ed7de64f6ccac6bd76e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
