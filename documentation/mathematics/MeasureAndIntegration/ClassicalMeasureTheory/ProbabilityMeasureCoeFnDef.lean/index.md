# Probability Measure Coe Fn Def

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a94d5462b9191cd9522bc1e55a7e775998acb532`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureCoeFnDef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ProbabilityMeasure](declarations/probabilitymeasure.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toMeasure](declarations/tomeasure.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [coe_mk](declarations/coe-mk.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [val_eq_to_measure](declarations/val-eq-to-measure.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toMeasure_injective](declarations/tomeasure-injective.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instFunLike](declarations/instfunlike.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coeFn_def](declarations/coefn-def.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [coeFn_mk](declarations/coefn-mk.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mk_apply](declarations/mk-apply.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeFn_univ](declarations/coefn-univ.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeFn_univ_ne_zero](declarations/coefn-univ-ne-zero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toFiniteMeasure](declarations/tofinitemeasure.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [coeFn_toFiniteMeasure](declarations/coefn-tofinitemeasure.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toFiniteMeasure_apply](declarations/tofinitemeasure-apply.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toMeasure_comp_toFiniteMeasure_eq_toMeasure](declarations/tomeasure-comp-tofinitemeasure-eq-tomeasure.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coeFn_comp_toFiniteMeasure_eq_coeFn](declarations/coefn-comp-tofinitemeasure-eq-coefn.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toFiniteMeasure_apply_eq_apply](declarations/tofinitemeasure-apply-eq-apply.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [null_iff_toMeasure_null](declarations/null-iff-tomeasure-null.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [apply_mono](declarations/apply-mono.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [tendsto_measure_iUnion_accumulate](declarations/tendsto-measure-iunion-accumulate.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [apply_le_one](declarations/apply-le-one.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nonempty](declarations/nonempty.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eq_of_forall_toMeasure_apply_eq](declarations/eq-of-forall-tomeasure-apply-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eq_of_forall_apply_eq](declarations/eq-of-forall-apply-eq.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mass_toFiniteMeasure](declarations/mass-tofinitemeasure.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toFiniteMeasure_nonzero](declarations/tofinitemeasure-nonzero.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [measurableSet_isProbabilityMeasure](declarations/measurableset-isprobabilitymeasure.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [measurable_prod](declarations/measurable-prod.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [testAgainstNN_lipschitz](declarations/testagainstnn-lipschitz.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toFiniteMeasure_continuous](declarations/tofinitemeasure-continuous.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toWeakDualBCNN](declarations/toweakdualbcnn.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_toWeakDualBCNN](declarations/coe-toweakdualbcnn.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toWeakDualBCNN_apply](declarations/toweakdualbcnn-apply.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toWeakDualBCNN_continuous](declarations/toweakdualbcnn-continuous.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [continuous_testAgainstNN_eval](declarations/continuous-testagainstnn-eval.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toFiniteMeasure_isEmbedding](declarations/tofinitemeasure-isembedding.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tendsto_nhds_iff_toFiniteMeasure_tendsto_nhds](declarations/tendsto-nhds-iff-tofinitemeasure-tendsto-nhds.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](declarations/tendsto-iff-forall-lintegral-tendsto.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [tendsto_iff_forall_integral_tendsto](declarations/tendsto-iff-forall-integral-tendsto.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tendsto_iff_forall_integral_rclike_tendsto](declarations/tendsto-iff-forall-integral-rclike-tendsto.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [continuous_integral_boundedContinuousFunction](declarations/continuous-integral-boundedcontinuousfunction.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [t2Space](declarations/t2space.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [normalize](declarations/normalize.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [self_eq_mass_mul_normalize](declarations/self-eq-mass-mul-normalize.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [self_eq_mass_smul_normalize](declarations/self-eq-mass-smul-normalize.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [normalize_eq_of_nonzero](declarations/normalize-eq-of-nonzero.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [normalize_eq_inv_mass_smul_of_nonzero](declarations/normalize-eq-inv-mass-smul-of-nonzero.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toMeasure_normalize_eq_of_nonzero](declarations/tomeasure-normalize-eq-of-nonzero.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [_root_.ProbabilityMeasure.toFiniteMeasure_normalize_eq_self](declarations/root-probabilitymeasure-tofinitemeasure-normalize-eq-self.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [average_eq_integral_normalize](declarations/average-eq-integral-normalize.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [testAgainstNN_eq_mass_mul](declarations/testagainstnn-eq-mass-mul.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [normalize_testAgainstNN](declarations/normalize-testagainstnn.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](declarations/tendsto-testagainstnn-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [tendsto_normalize_testAgainstNN_of_tendsto](declarations/tendsto-normalize-testagainstnn-of-tendsto.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [tendsto_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](declarations/tendsto-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [tendsto_normalize_of_tendsto](declarations/tendsto-normalize-of-tendsto.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [tendsto_normalize_iff_tendsto](declarations/tendsto-normalize-iff-tendsto.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [map](declarations/map.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [toMeasure_map](declarations/tomeasure-map.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [map_apply'](declarations/map-apply.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [map_apply_of_aemeasurable](declarations/map-apply-of-aemeasurable.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [map_apply](declarations/map-apply-source-edition-2.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [tendsto_map_of_tendsto_of_continuous](declarations/tendsto-map-of-tendsto-of-continuous.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [continuous_map](declarations/continuous-map.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a45a50d9b2c2ac8d4b0326710720320f03abadef2396c559159a9c6b04ce4d6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb97077f72d534783ccce0bc20637dcf55e066af1e7aa4ca5ccf32140bebe611a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
