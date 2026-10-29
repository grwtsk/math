# Vector Measure Integral Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**114 observed declarations and anonymous commands**, 108 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4cd6d51dc28138c2a2aa05ca63204735a9a5c22`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureIntegralPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [VectorMeasure.transpose](declarations/vectormeasure-transpose.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [cbmApplyMeasure](declarations/cbmapplymeasure.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [transpose_eq_cbmApplyMeasure](declarations/transpose-eq-cbmapplymeasure.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cbmApplyMeasure_apply](declarations/cbmapplymeasure-apply.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cbmApplyMeasure_union](declarations/cbmapplymeasure-union.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [norm_cbmApplyMeasure_le](declarations/norm-cbmapplymeasure-le.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [dominatedFinMeasAdditive_cbmApplyMeasure](declarations/dominatedfinmeasadditive-cbmapplymeasure.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [dominatedFinMeasAdditive_transpose_cbmApplyMeasure](declarations/dominatedfinmeasadditive-transpose-cbmapplymeasure.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [transpose_zero](declarations/transpose-zero.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [transpose_restrict](declarations/transpose-restrict.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [transpose_map](declarations/transpose-map.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [transpose_add](declarations/transpose-add.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [transpose_smul](declarations/transpose-smul.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [transpose_dirac](declarations/transpose-dirac.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [variation_transpose_le](declarations/variation-transpose-le.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [absolutelyContinuous_variation_transpose](declarations/absolutelycontinuous-variation-transpose.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [variation_transpose_eq_smul](declarations/variation-transpose-eq-smul.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [variation_transpose_eq](declarations/variation-transpose-eq.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [variation_transpose_lsmul](declarations/variation-transpose-lsmul.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [variation_transpose_lsmul_flip](declarations/variation-transpose-lsmul-flip.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [Integrable](declarations/integrable.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [IntegrableOn](declarations/integrableon.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [integral](declarations/integral.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [integral_eq_setToFun](declarations/integral-eq-settofun.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [integral_eq_setToFun_transpose](declarations/integral-eq-settofun-transpose.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integral_of_not_completeSpace](declarations/integral-of-not-completespace.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [transpose_zero_cbm](declarations/transpose-zero-cbm.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [transpose_add_vectorMeasure](declarations/transpose-add-vectormeasure.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [transpose_add_cbm](declarations/transpose-add-cbm.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [transpose_finsetSum_vectorMeasure](declarations/transpose-finsetsum-vectormeasure.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [transpose_finsetSum_cbm](declarations/transpose-finsetsum-cbm.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [transpose_neg_vectorMeasure](declarations/transpose-neg-vectormeasure.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [transpose_neg_cbm](declarations/transpose-neg-cbm.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [transpose_sub_vectorMeasure](declarations/transpose-sub-vectormeasure.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [transpose_sub_cbm](declarations/transpose-sub-cbm.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_undef](declarations/integral-undef.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [integral_zero](declarations/integral-zero.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [integral_congr_ae](declarations/integral-congr-ae.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [integral_eq_zero_of_ae](declarations/integral-eq-zero-of-ae.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Integrable.add](declarations/integrable-add.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Integrable.neg](declarations/integrable-neg.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Integrable.sub](declarations/integrable-sub.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Integrable.smul](declarations/integrable-smul.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Integrable.finsetSum](declarations/integrable-finsetsum.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Integrable.fun_finsetSum](declarations/integrable-fun-finsetsum.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [integral_fun_add](declarations/integral-fun-add.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [integral_add](declarations/integral-add.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [integral_finsetSum](declarations/integral-finsetsum.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [integral_fun_neg](declarations/integral-fun-neg.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [integral_neg](declarations/integral-neg.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [integral_fun_sub](declarations/integral-fun-sub.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [integral_sub](declarations/integral-sub.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [integral_fun_smul](declarations/integral-fun-smul.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [integral_smul](declarations/integral-smul.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [integral_const](declarations/integral-const.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [Integrable.zero_vectorMeasure](declarations/integrable-zero-vectormeasure.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Integrable.add_vectorMeasure](declarations/integrable-add-vectormeasure.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Integrable.neg_vectorMeasure](declarations/integrable-neg-vectormeasure.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Integrable.sub_vectorMeasure](declarations/integrable-sub-vectormeasure.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [Integrable.smul_vectorMeasure](declarations/integrable-smul-vectormeasure.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [Integrable.finsetSum_vectorMeasure](declarations/integrable-finsetsum-vectormeasure.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [Integrable.restrict](declarations/integrable-restrict.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [integral_zero_vectorMeasure](declarations/integral-zero-vectormeasure.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [integral_of_isEmpty](declarations/integral-of-isempty.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [integral_smul_vectorMeasure](declarations/integral-smul-vectormeasure.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [integral_smul_nnreal_vectorMeasure](declarations/integral-smul-nnreal-vectormeasure.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [integral_add_vectorMeasure](declarations/integral-add-vectormeasure.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [integral_finsetSum_vectorMeasure](declarations/integral-finsetsum-vectormeasure.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [integral_neg_vectorMeasure](declarations/integral-neg-vectormeasure.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [integral_sub_vectorMeasure](declarations/integral-sub-vectormeasure.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [integral_zero_cbm](declarations/integral-zero-cbm.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [integral_add_cbm](declarations/integral-add-cbm.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [integral_finsetSum_cbm](declarations/integral-finsetsum-cbm.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [integral_neg_cbm](declarations/integral-neg-cbm.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [integral_sub_cbm](declarations/integral-sub-cbm.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Integrable.of_integral_ne_zero](declarations/integrable-of-integral-ne-zero.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [integral_non_aestronglyMeasurable](declarations/integral-non-aestronglymeasurable.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [integral_indicator₂](declarations/integral-indicator.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [continuous_integral](declarations/continuous-integral.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [norm_integral_le_lintegral_norm](declarations/norm-integral-le-lintegral-norm.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [norm_integral_le_integral_norm](declarations/norm-integral-le-integral-norm.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [enorm_integral_le_lintegral_enorm](declarations/enorm-integral-le-lintegral-enorm.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [enorm_integral_le_lintegral_enorm_transpose](declarations/enorm-integral-le-lintegral-enorm-transpose.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [dist_integral_le_lintegral_edist](declarations/dist-integral-le-lintegral-edist.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [edist_integral_le_lintegral_edist](declarations/edist-integral-le-lintegral-edist.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [frequently_ae_ne_zero_of_integral_ne_zero](declarations/frequently-ae-ne-zero-of-integral-ne-zero.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [exists_ne_zero_of_integral_ne_zero](declarations/exists-ne-zero-of-integral-ne-zero.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [integral_toSignedMeasure](declarations/integral-tosignedmeasure.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [integral_dirac'](declarations/integral-dirac-source-edition-2.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [integral_dirac](declarations/integral-dirac.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [integral_unique](declarations/integral-unique.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [tendsto_integral_of_L1](declarations/tendsto-integral-of-l1-source-edition-2.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [tendsto_integral_of_L1'](declarations/tendsto-integral-of-l1.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [continuousWithinAt_of_dominated](declarations/continuouswithinat-of-dominated.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [continuousAt_of_dominated](declarations/continuousat-of-dominated.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [continuousOn_of_dominated](declarations/continuouson-of-dominated.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [continuous_of_dominated](declarations/continuous-of-dominated.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [norm_integral_le_of_norm_le_const](declarations/norm-integral-le-of-norm-le-const.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [enorm_integral_le_of_enorm_le_const](declarations/enorm-integral-le-of-enorm-le-const.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [nndist_integral_add_vectorMeasure_le_lintegral](declarations/nndist-integral-add-vectormeasure-le-lintegral.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [variation_transpose_map_le](declarations/variation-transpose-map-le.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Integrable.map](declarations/integrable-map.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [integral_map](declarations/integral-map.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [_root_.MeasurableEmbedding.variation_transpose_map](declarations/root-measurableembedding-variation-transpose-map.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [_root_.MeasurableEmbedding.integrable_map_vectorMeasure](declarations/root-measurableembedding-integrable-map-vectormeasure.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [_root_.MeasurableEmbedding.integral_map_vectorMeasure](declarations/root-measurableembedding-integral-map-vectormeasure.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [_root_.Topology.IsClosedEmbedding.integral_map_vectorMeasure](declarations/root-topology-isclosedembedding-integral-map-vectormeasure.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [integral_map_equiv](declarations/integral-map-equiv.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [tendsto_integral_of_dominated_convergence](declarations/tendsto-integral-of-dominated-convergence.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](declarations/tendsto-integral-filter-of-dominated-convergence.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [hasSum_integral_of_dominated_convergence](declarations/hassum-integral-of-dominated-convergence.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [integral_tsum](declarations/integral-tsum.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [tendsto_integral_filter_of_norm_le_const](declarations/tendsto-integral-filter-of-norm-le-const.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d84cd62365f77ccbcc51fb943d0567b73d3a57957270f9d47b40b90c8888bdef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant89c903d5230d18ef1847410491e2c3e08c604d40218a298fcdf94a536edcef46.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
