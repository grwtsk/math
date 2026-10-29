# Vector Measure Set Integral Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffed85567055957af5325ba9761e2f3ebd7792e5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureSetIntegralPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [IntegrableOn.mono](declarations/integrableon-mono.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IntegrableOn.union](declarations/integrableon-union.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IntegrableOn.empty](declarations/integrableon-empty.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IntegrableOn.biUnion_finite](declarations/integrableon-biunion-finite.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IntegrableOn.biUnion_finset](declarations/integrableon-biunion-finset.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IntegrableOn.iUnion_finite](declarations/integrableon-iunion-finite.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [integrableOn_univ](declarations/integrableon-univ.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Integrable.integrableOn](declarations/integrable-integrableon.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [integrable_indicator_iff](declarations/integrable-indicator-iff.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IntegrableOn.integrable_indicator](declarations/integrableon-integrable-indicator.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [setIntegral_eq_zero_of_not_measurableSet](declarations/setintegral-eq-zero-of-not-measurableset.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [setIntegral_congr_ae](declarations/setintegral-congr-ae.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [setIntegral_congr_fun](declarations/setintegral-congr-fun.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [setIntegral_union](declarations/setintegral-union.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [setIntegral_sdiff](declarations/setintegral-sdiff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [setIntegral_inter_add_sdiff](declarations/setintegral-inter-add-sdiff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [setIntegral_biUnion_finset](declarations/setintegral-biunion-finset.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [setIntegral_iUnion_fintype](declarations/setintegral-iunion-fintype.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [setIntegral_empty](declarations/setintegral-empty.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [setIntegral_univ](declarations/setintegral-univ.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [setIntegral_add_compl](declarations/setintegral-add-compl.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [setIntegral_compl](declarations/setintegral-compl.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_indicator](declarations/integral-indicator.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [setIntegral_indicator](declarations/setintegral-indicator.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [setIntegral_congr_set](declarations/setintegral-congr-set.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integral_piecewise](declarations/integral-piecewise.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [setIntegral_eq_zero_of_ae_eq_zero](declarations/setintegral-eq-zero-of-ae-eq-zero.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [setIntegral_eq_zero_of_forall_eq_zero](declarations/setintegral-eq-zero-of-forall-eq-zero.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [frequently_ae_ne_zero_of_setIntegral_ne_zero](declarations/frequently-ae-ne-zero-of-setintegral-ne-zero.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exists_ne_zero_of_setIntegral_ne_zero](declarations/exists-ne-zero-of-setintegral-ne-zero.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [setIntegral_of_variation_apply_eq_zero](declarations/setintegral-of-variation-apply-eq-zero.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [setIntegral_dirac'](declarations/setintegral-dirac.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [setIntegral_dirac](declarations/setintegral-dirac-source-edition-2.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_singleton'](declarations/integral-singleton-source-edition-2.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integral_singleton](declarations/integral-singleton.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [setIntegral_union_eq_left_of_ae](declarations/setintegral-union-eq-left-of-ae.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [setIntegral_union_eq_left_of_forall](declarations/setintegral-union-eq-left-of-forall.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [setIntegral_eq_of_subset_of_ae_sdiff_eq_zero](declarations/setintegral-eq-of-subset-of-ae-sdiff-eq-zero.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero](declarations/setintegral-eq-of-subset-of-forall-sdiff-eq-zero.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [setIntegral_eq_integral_of_ae_compl_eq_zero](declarations/setintegral-eq-integral-of-ae-compl-eq-zero.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [setIntegral_eq_integral_of_forall_compl_eq_zero](declarations/setintegral-eq-integral-of-forall-compl-eq-zero.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [setIntegral_const](declarations/setintegral-const.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [integral_indicator_const](declarations/integral-indicator-const.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [setIntegral_map](declarations/setintegral-map.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [_root_.MeasurableEmbedding.setIntegral_map_vectorMeasure](declarations/root-measurableembedding-setintegral-map-vectormeasure.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [_root_.Topology.IsClosedEmbedding.setIntegral_map_vectorMeasure](declarations/root-topology-isclosedembedding-setintegral-map-vectormeasure.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [setIntegral_map_equiv](declarations/setintegral-map-equiv.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [continuousLinearMap_apply_integral](declarations/continuouslinearmap-apply-integral.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [integral_continuousLinearMap_comp](declarations/integral-continuouslinearmap-comp.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [enorm_setIntegral_le_of_enorm_le_const_ae](declarations/enorm-setintegral-le-of-enorm-le-const-ae.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [enorm_setIntegral_le_of_enorm_le_const](declarations/enorm-setintegral-le-of-enorm-le-const.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [norm_setIntegral_le_of_norm_le_const_ae](declarations/norm-setintegral-le-of-norm-le-const-ae.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_setIntegral_le_of_norm_le_const](declarations/norm-setintegral-le-of-norm-le-const.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [enorm_setIntegral_le_lintegral_enorm](declarations/enorm-setintegral-le-lintegral-enorm.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [enorm_setIntegral_le_lintegral_enorm_transpose](declarations/enorm-setintegral-le-lintegral-enorm-transpose.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [hasSum_setIntegral_iUnion_nat](declarations/hassum-setintegral-iunion-nat.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [hasSum_setIntegral_iUnion](declarations/hassum-setintegral-iunion.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [integral_iUnion](declarations/integral-iunion.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [setIntegral_toSignedMeasure](declarations/setintegral-tosignedmeasure.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Integrable.tendsto_setIntegral_nhds_zero](declarations/integrable-tendsto-setintegral-nhds-zero.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [tendsto_setIntegral_of_L1](declarations/tendsto-setintegral-of-l1-source-edition-2.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [tendsto_setIntegral_of_L1'](declarations/tendsto-setintegral-of-l1.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a8ce5a2fe0009f153430b10d6be92d1d9fff6a8fad393270b2076262f15e23a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
