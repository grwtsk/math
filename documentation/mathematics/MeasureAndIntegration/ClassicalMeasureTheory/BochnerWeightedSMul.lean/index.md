# Bochner Weighted SMul

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**184 observed declarations and anonymous commands**, 169 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e03c63fb3ab38f01e8a2e8f6fa0399dce565750`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BochnerWeightedSMul.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSMul](declarations/weightedsmul.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [weightedSMul_apply](declarations/weightedsmul-apply.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [weightedSMul_zero_measure](declarations/weightedsmul-zero-measure.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [weightedSMul_empty](declarations/weightedsmul-empty.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [weightedSMul_add_measure](declarations/weightedsmul-add-measure.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [weightedSMul_smul_measure](declarations/weightedsmul-smul-measure.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [weightedSMul_congr](declarations/weightedsmul-congr.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [weightedSMul_null](declarations/weightedsmul-null.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [weightedSMul_union'](declarations/weightedsmul-union-source-edition-2.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [weightedSMul_union](declarations/weightedsmul-union.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedSMul_smul](declarations/weightedsmul-smul.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_weightedSMul_le](declarations/norm-weightedsmul-le.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dominatedFinMeasAdditive_weightedSMul](declarations/dominatedfinmeasadditive-weightedsmul.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [weightedSMul_nonneg](declarations/weightedsmul-nonneg.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [posPart](declarations/pospart-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [negPart](declarations/negpart.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [posPart_map_norm](declarations/pospart-map-norm.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [negPart_map_norm](declarations/negpart-map-norm.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [posPart_sub_negPart](declarations/pospart-sub-negpart.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [integral](declarations/integral-source-edition-2.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [integral_def](declarations/integral-def.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integral_eq](declarations/integral-eq-source-edition-2.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_eq_sum_filter](declarations/integral-eq-sum-filter.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [integral_eq_sum_of_subset](declarations/integral-eq-sum-of-subset.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [integral_const](declarations/integral-const.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integral_piecewise_zero](declarations/integral-piecewise-zero.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [map_integral](declarations/map-integral.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [integral_eq_lintegral'](declarations/integral-eq-lintegral-source-edition-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_congr](declarations/integral-congr-source-edition-2.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_eq_lintegral](declarations/integral-eq-lintegral.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integral_add](declarations/integral-add.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_neg](declarations/integral-neg-source-edition-3.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [integral_sub](declarations/integral-sub-source-edition-3.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_smul](declarations/integral-smul-source-edition-3.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_setToSimpleFunc_le_integral_norm](declarations/norm-settosimplefunc-le-integral-norm.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [norm_integral_le_integral_norm](declarations/norm-integral-le-integral-norm.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_add_measure](declarations/integral-add-measure-source-edition-2.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [norm_eq_integral](declarations/norm-eq-integral.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [posPart](declarations/pospart.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [negPart](declarations/negpart-source-edition-2.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coe_posPart](declarations/coe-pospart.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_negPart](declarations/coe-negpart.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [integral](declarations/integral.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [integral_eq_integral](declarations/integral-eq-integral.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [integral_eq_lintegral](declarations/integral-eq-lintegral-source-edition-3.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [integral_eq_setToL1S](declarations/integral-eq-settol1s.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [integral_congr](declarations/integral-congr.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [integral_add](declarations/integral-add-source-edition-4.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [integral_smul](declarations/integral-smul.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_integral_le_norm](declarations/norm-integral-le-norm.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [integralCLM'](declarations/integralclm-source-edition-3.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [integralCLM](declarations/integralclm-source-edition-4.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [norm_Integral_le_one](declarations/norm-integral-le-one.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [posPart_toSimpleFunc](declarations/pospart-tosimplefunc.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [negPart_toSimpleFunc](declarations/negpart-tosimplefunc.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [integral_eq_norm_posPart_sub](declarations/integral-eq-norm-pospart-sub-source-edition-2.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [integralCLM'](declarations/integralclm-source-edition-2.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [integralCLM](declarations/integralclm.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [integral_eq](declarations/integral-eq-source-edition-3.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [integral_eq_setToL1](declarations/integral-eq-settol1.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [SimpleFunc.integral_L1_eq_integral](declarations/simplefunc-integral-l1-eq-integral.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [integral_zero](declarations/integral-zero.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [integral_add](declarations/integral-add-source-edition-2.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [integral_neg](declarations/integral-neg.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [integral_sub](declarations/integral-sub-source-edition-2.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [integral_smul](declarations/integral-smul-source-edition-2.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [norm_Integral_le_one](declarations/norm-integral-le-one-source-edition-2.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [norm_integral_le](declarations/norm-integral-le.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [continuous_integral](declarations/continuous-integral-source-edition-2.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [integral_eq_norm_posPart_sub](declarations/integral-eq-norm-pospart-sub.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [integral_eq](declarations/integral-eq.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [integral_eq_setToFun](declarations/integral-eq-settofun.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [L1.integral_eq_integral](declarations/l1-integral-eq-integral.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [integral_undef](declarations/integral-undef.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [integral_non_aestronglyMeasurable](declarations/integral-non-aestronglymeasurable.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [integral_zero](declarations/integral-zero-source-edition-3.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [integral_zero'](declarations/integral-zero-source-edition-2.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [integrable_of_integral_eq_one](declarations/integrable-of-integral-eq-one.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [integral_add](declarations/integral-add-source-edition-5.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [integral_add'](declarations/integral-add-source-edition-3.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [integral_finset_sum](declarations/integral-finset-sum.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [integral_neg](declarations/integral-neg-source-edition-2.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [integral_neg'](declarations/integral-neg-source-edition-4.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [integral_sub](declarations/integral-sub-source-edition-4.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [integral_sub'](declarations/integral-sub.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [integral_smul](declarations/integral-smul-source-edition-4.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [integral_mul_left](declarations/integral-mul-left.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [integral_mul_right](declarations/integral-mul-right.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [integral_div](declarations/integral-div.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [integral_congr_ae](declarations/integral-congr-ae.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [L1.integral_of_fun_eq_integral](declarations/l1-integral-of-fun-eq-integral.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [continuous_integral](declarations/continuous-integral.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [norm_integral_le_lintegral_norm](declarations/norm-integral-le-lintegral-norm.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [ennnorm_integral_le_lintegral_ennnorm](declarations/ennnorm-integral-le-lintegral-ennnorm.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [integral_eq_zero_of_ae](declarations/integral-eq-zero-of-ae.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [HasFiniteIntegral.tendsto_set_integral_nhds_zero](declarations/hasfiniteintegral-tendsto-set-integral-nhds-zero.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Integrable.tendsto_set_integral_nhds_zero](declarations/integrable-tendsto-set-integral-nhds-zero.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [tendsto_integral_of_L1](declarations/tendsto-integral-of-l1.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [tendsto_integral_of_dominated_convergence](declarations/tendsto-integral-of-dominated-convergence.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [tendsto_integral_filter_of_dominated_convergence](declarations/tendsto-integral-filter-of-dominated-convergence.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [hasSum_integral_of_dominated_convergence](declarations/hassum-integral-of-dominated-convergence.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [continuousWithinAt_of_dominated](declarations/continuouswithinat-of-dominated.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [continuousAt_of_dominated](declarations/continuousat-of-dominated.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [continuousOn_of_dominated](declarations/continuouson-of-dominated.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [continuous_of_dominated](declarations/continuous-of-dominated.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [integral_eq_lintegral_pos_part_sub_lintegral_neg_part](declarations/integral-eq-lintegral-pos-part-sub-lintegral-neg-part.md) | 1127 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [integral_eq_lintegral_of_nonneg_ae](declarations/integral-eq-lintegral-of-nonneg-ae.md) | 1157 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [integral_norm_eq_lintegral_nnnorm](declarations/integral-norm-eq-lintegral-nnnorm.md) | 1180 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [ofReal_integral_norm_eq_lintegral_nnnorm](declarations/ofreal-integral-norm-eq-lintegral-nnnorm.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [integral_eq_integral_pos_part_sub_integral_neg_part](declarations/integral-eq-integral-pos-part-sub-integral-neg-part.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [integral_nonneg_of_ae](declarations/integral-nonneg-of-ae.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [lintegral_coe_eq_integral](declarations/lintegral-coe-eq-integral.md) | 1207 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [ofReal_integral_eq_lintegral_ofReal](declarations/ofreal-integral-eq-lintegral-ofreal.md) | 1218 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [integral_toReal](declarations/integral-toreal.md) | 1229 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [lintegral_coe_le_coe_iff_integral_le](declarations/lintegral-coe-le-coe-iff-integral-le.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [integral_coe_le_of_lintegral_coe_le](declarations/integral-coe-le-of-lintegral-coe-le.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [integral_nonneg](declarations/integral-nonneg.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [integral_nonpos_of_ae](declarations/integral-nonpos-of-ae.md) | 1254 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [integral_nonpos](declarations/integral-nonpos.md) | 1260 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [integral_eq_zero_iff_of_nonneg_ae](declarations/integral-eq-zero-iff-of-nonneg-ae.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [integral_eq_zero_iff_of_nonneg](declarations/integral-eq-zero-iff-of-nonneg.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [integral_pos_iff_support_of_nonneg_ae](declarations/integral-pos-iff-support-of-nonneg-ae.md) | 1281 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [integral_pos_iff_support_of_nonneg](declarations/integral-pos-iff-support-of-nonneg.md) | 1288 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [L1.norm_eq_integral_norm](declarations/l1-norm-eq-integral-norm.md) | 1297 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [L1.dist_eq_integral_dist](declarations/l1-dist-eq-integral-dist.md) | 1306 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [L1.norm_of_fun_eq_integral_norm](declarations/l1-norm-of-fun-eq-integral-norm.md) | 1310 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Memℒp.snorm_eq_integral_rpow_norm](declarations/mem-p-snorm-eq-integral-rpow-norm.md) | 1320 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [integral_mono_ae](declarations/integral-mono-ae.md) | 1341 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [integral_mono](declarations/integral-mono.md) | 1350 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [integral_mono_of_nonneg](declarations/integral-mono-of-nonneg.md) | 1355 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [integral_mono_measure](declarations/integral-mono-measure.md) | 1365 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [norm_integral_le_integral_norm](declarations/norm-integral-le-integral-norm-source-edition-2.md) | 1375 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [norm_integral_le_of_norm_le](declarations/norm-integral-le-of-norm-le.md) | 1388 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [SimpleFunc.integral_eq_integral](declarations/simplefunc-integral-eq-integral.md) | 1395 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [SimpleFunc.integral_eq_sum](declarations/simplefunc-integral-eq-sum.md) | 1402 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [integral_const](declarations/integral-const-source-edition-2.md) | 1408 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [norm_integral_le_of_norm_le_const](declarations/norm-integral-le-of-norm-le-const.md) | 1421 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [tendsto_integral_approxOn_of_measurable](declarations/tendsto-integral-approxon-of-measurable.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [tendsto_integral_approxOn_of_measurable_of_range_subset](declarations/tendsto-integral-approxon-of-measurable-of-range-subset.md) | 1439 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [integral_add_measure](declarations/integral-add-measure.md) | 1450 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [integral_zero_measure](declarations/integral-zero-measure.md) | 1472 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [integral_finset_sum_measure](declarations/integral-finset-sum-measure.md) | 1480 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [nndist_integral_add_measure_le_lintegral](declarations/nndist-integral-add-measure-le-lintegral.md) | 1491 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [hasSum_integral_measure](declarations/hassum-integral-measure.md) | 1498 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [integral_sum_measure](declarations/integral-sum-measure.md) | 1520 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [integral_tsum](declarations/integral-tsum.md) | 1525 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [integral_smul_measure](declarations/integral-smul-measure.md) | 1559 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [integral_map_of_stronglyMeasurable](declarations/integral-map-of-stronglymeasurable.md) | 1575 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [integral_map](declarations/integral-map.md) | 1598 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [_root_.MeasurableEmbedding.integral_map](declarations/root-measurableembedding-integral-map.md) | 1611 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [_root_.ClosedEmbedding.integral_map](declarations/root-closedembedding-integral-map.md) | 1619 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [integral_map_equiv](declarations/integral-map-equiv.md) | 1625 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [MeasurePreserving.integral_comp](declarations/measurepreserving-integral-comp.md) | 1630 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [set_integral_eq_subtype'](declarations/set-integral-eq-subtype-source-edition-2.md) | 1636 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [set_integral_eq_subtype](declarations/set-integral-eq-subtype.md) | 1643 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [integral_dirac'](declarations/integral-dirac-source-edition-2.md) | 1648 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [integral_dirac](declarations/integral-dirac.md) | 1658 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [set_integral_dirac'](declarations/set-integral-dirac-source-edition-2.md) | 1665 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [set_integral_dirac](declarations/set-integral-dirac.md) | 1674 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [mul_meas_ge_le_integral_of_nonneg](declarations/mul-meas-ge-le-integral-of-nonneg.md) | 1683 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [integral_mul_norm_le_Lp_mul_Lq](declarations/integral-mul-norm-le-lp-mul-lq.md) | 1715 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [integral_mul_le_Lp_mul_Lq_of_nonneg](declarations/integral-mul-le-lp-mul-lq-of-nonneg.md) | 1764 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [integral_countable'](declarations/integral-countable.md) | 1785 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [integral_singleton'](declarations/integral-singleton.md) | 1793 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [integral_singleton](declarations/integral-singleton-source-edition-2.md) | 1798 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [integral_countable](declarations/integral-countable-source-edition-2.md) | 1803 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [integral_finset](declarations/integral-finset.md) | 1820 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [integral_fintype](declarations/integral-fintype.md) | 1825 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [integral_unique](declarations/integral-unique.md) | 1832 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `def` | [SimpleFunc.toLargerSpace](declarations/simplefunc-tolargerspace.md) | 1844 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [SimpleFunc.coe_toLargerSpace_eq](declarations/simplefunc-coe-tolargerspace-eq.md) | 1849 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [integral_simpleFunc_larger_space](declarations/integral-simplefunc-larger-space.md) | 1853 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [integral_trim_simpleFunc](declarations/integral-trim-simplefunc.md) | 1862 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [integral_trim](declarations/integral-trim.md) | 1873 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [integral_trim_ae](declarations/integral-trim-ae.md) | 1905 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [ae_eq_trim_of_stronglyMeasurable](declarations/ae-eq-trim-of-stronglymeasurable.md) | 1911 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [ae_eq_trim_iff](declarations/ae-eq-trim-iff.md) | 1918 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [ae_le_trim_of_stronglyMeasurable](declarations/ae-le-trim-of-stronglymeasurable.md) | 1924 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [ae_le_trim_iff](declarations/ae-le-trim-iff.md) | 1932 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [snorm_one_le_of_le](declarations/snorm-one-le-of-le-source-edition-2.md) | 1944 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [snorm_one_le_of_le'](declarations/snorm-one-le-of-le.md) | 1991 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e3532e07486913729b4110e660f2311cbf098603eb42618eb8e8e92fa5fa006 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variantac21571e023c3bdb79ad2bbbcba775eb336afa71156508344f6376338e50e311.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
