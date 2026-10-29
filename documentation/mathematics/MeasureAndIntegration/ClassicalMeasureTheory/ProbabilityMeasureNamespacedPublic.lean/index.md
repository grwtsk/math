# Probability Measure Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**90 observed declarations and anonymous commands**, 75 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dcd944ac71f1e139e8baba7e4dba96d2cdbf1eb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ProbabilityMeasure](declarations/probabilitymeasure.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Measure.toProbabilityMeasure](declarations/measure-toprobabilitymeasure.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Measure.toProbabilityMeasure_inj](declarations/measure-toprobabilitymeasure-inj.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toMeasure](declarations/tomeasure.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coe_mk](declarations/coe-mk.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [val_eq_to_measure](declarations/val-eq-to-measure.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Probability Measure Namespaced Public](declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toProbabilityMeasure_coe](declarations/toprobabilitymeasure-coe.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toMeasure_injective](declarations/tomeasure-injective.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instFunLike](declarations/instfunlike.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [coeFn_def](declarations/coefn-def.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [coeFn_mk](declarations/coefn-mk.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mk_apply](declarations/mk-apply.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeFn_univ](declarations/coefn-univ.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coeFn_empty](declarations/coefn-empty.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coeFn_univ_ne_zero](declarations/coefn-univ-ne-zero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [measureReal_eq_coe_coeFn](declarations/measurereal-eq-coe-coefn.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toNNReal_measureReal_eq_coeFn](declarations/tonnreal-measurereal-eq-coefn.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toFiniteMeasure](declarations/tofinitemeasure.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [coeFn_toFiniteMeasure](declarations/coefn-tofinitemeasure.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [toFiniteMeasure_apply](declarations/tofinitemeasure-apply.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toMeasure_comp_toFiniteMeasure_eq_toMeasure](declarations/tomeasure-comp-tofinitemeasure-eq-tomeasure.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coeFn_comp_toFiniteMeasure_eq_coeFn](declarations/coefn-comp-tofinitemeasure-eq-coefn.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toFiniteMeasure_apply_eq_apply](declarations/tofinitemeasure-apply-eq-apply.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [null_iff_toMeasure_null](declarations/null-iff-tomeasure-null.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [apply_mono](declarations/apply-mono.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [apply_union_le](declarations/apply-union-le.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [tendsto_measure_iUnion_accumulate](declarations/tendsto-measure-iunion-accumulate.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [apply_le_one](declarations/apply-le-one.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [nonempty](declarations/nonempty.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eq_of_forall_toMeasure_apply_eq](declarations/eq-of-forall-tomeasure-apply-eq.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eq_of_forall_apply_eq](declarations/eq-of-forall-apply-eq.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mass_toFiniteMeasure](declarations/mass-tofinitemeasure.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [range_toFiniteMeasure](declarations/range-tofinitemeasure.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toFiniteMeasure_nonzero](declarations/tofinitemeasure-nonzero.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [measurableSet_isProbabilityMeasure](declarations/measurableset-isprobabilitymeasure.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [measurable_fun_prod](declarations/measurable-fun-prod.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [apply_iUnion_le](declarations/apply-iunion-le.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [testAgainstNN_lipschitz](declarations/testagainstnn-lipschitz.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [toFiniteMeasure_continuous](declarations/tofinitemeasure-continuous.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [toWeakDualBCNN](declarations/toweakdualbcnn.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_toWeakDualBCNN](declarations/coe-toweakdualbcnn.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toWeakDualBCNN_apply](declarations/toweakdualbcnn-apply.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toWeakDualBCNN_continuous](declarations/toweakdualbcnn-continuous.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [continuous_testAgainstNN_eval](declarations/continuous-testagainstnn-eval.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toFiniteMeasure_isEmbedding](declarations/tofinitemeasure-isembedding.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [R1Space](declarations/r1space.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tendsto_nhds_iff_toFiniteMeasure_tendsto_nhds](declarations/tendsto-nhds-iff-tofinitemeasure-tendsto-nhds.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](declarations/tendsto-iff-forall-lintegral-tendsto.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [tendsto_iff_forall_integral_tendsto](declarations/tendsto-iff-forall-integral-tendsto.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [tendsto_iff_forall_integral_rclike_tendsto](declarations/tendsto-iff-forall-integral-rclike-tendsto.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [continuous_iff_forall_continuous_lintegral](declarations/continuous-iff-forall-continuous-lintegral.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [continuous_iff_forall_continuous_integral](declarations/continuous-iff-forall-continuous-integral.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [continuous_lintegral_boundedContinuousFunction](declarations/continuous-lintegral-boundedcontinuousfunction.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [continuous_integral_boundedContinuousFunction](declarations/continuous-integral-boundedcontinuousfunction.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [continuous_iff_forall_continuousMap_continuous_lintegral](declarations/continuous-iff-forall-continuousmap-continuous-lintegral.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [continuous_iff_forall_continuousMap_continuous_integral](declarations/continuous-iff-forall-continuousmap-continuous-integral.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [continuous_lintegral_continuousMap](declarations/continuous-lintegral-continuousmap.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [continuous_integral_continuousMap](declarations/continuous-integral-continuousmap.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [t2Space](declarations/t2space.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [normalize](declarations/normalize.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [self_eq_mass_mul_normalize](declarations/self-eq-mass-mul-normalize.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [self_eq_mass_smul_normalize](declarations/self-eq-mass-smul-normalize.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [normalize_eq_of_nonzero](declarations/normalize-eq-of-nonzero.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [normalize_eq_inv_mass_smul_of_nonzero](declarations/normalize-eq-inv-mass-smul-of-nonzero.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [toMeasure_normalize_eq_of_nonzero](declarations/tomeasure-normalize-eq-of-nonzero.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Probability Measure Namespaced Public](declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations-source-edition-2.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [average_eq_integral_normalize](declarations/average-eq-integral-normalize.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [testAgainstNN_eq_mass_mul](declarations/testagainstnn-eq-mass-mul.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [normalize_testAgainstNN](declarations/normalize-testagainstnn.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](declarations/tendsto-testagainstnn-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [tendsto_normalize_testAgainstNN_of_tendsto](declarations/tendsto-normalize-testagainstnn-of-tendsto.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [tendsto_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](declarations/tendsto-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [tendsto_normalize_of_tendsto](declarations/tendsto-normalize-of-tendsto.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [tendsto_normalize_iff_tendsto](declarations/tendsto-normalize-iff-tendsto.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [map](declarations/map.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [toMeasure_map](declarations/tomeasure-map.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [map_apply'](declarations/map-apply-source-edition-2.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [map_apply_of_aemeasurable](declarations/map-apply-of-aemeasurable.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [map_apply](declarations/map-apply.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [tendsto_map_of_tendsto_of_continuous](declarations/tendsto-map-of-tendsto-of-continuous.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [continuous_map](declarations/continuous-map.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [isProbabilityMeasure_join](declarations/isprobabilitymeasure-join.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [isProbabilityMeasure_bind](declarations/isprobabilitymeasure-bind.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8db5e5eca41d49bf0244a16eee9e4092adc1850fb799b77d354665bedc2ed624 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variant2e90fce19fab0f6a81f94d5e4c872ad872a02c02a3fd1c45c27c6e0b10ea4ff6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
