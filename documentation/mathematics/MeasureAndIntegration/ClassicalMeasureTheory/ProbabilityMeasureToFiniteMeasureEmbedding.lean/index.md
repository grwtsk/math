# Probability Measure To Finite Measure Embedding

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantc0cffc79718b5b13cf9025b4c0fa825bb2bef51c5ce14aa627c70857587476e2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e23ed5f2d2fad8830bdd8885df2043f4f0aa828a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureToFiniteMeasureEmbedding.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ProbabilityMeasure](declarations/probabilitymeasure.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toMeasure](declarations/tomeasure.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [val_eq_to_measure](declarations/val-eq-to-measure.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toMeasure_injective](declarations/tomeasure-injective.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coeFn_univ](declarations/coefn-univ.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coeFn_univ_ne_zero](declarations/coefn-univ-ne-zero.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [toFiniteMeasure](declarations/tofinitemeasure.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toMeasure_comp_toFiniteMeasure_eq_toMeasure](declarations/tomeasure-comp-tofinitemeasure-eq-tomeasure.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeFn_comp_toFiniteMeasure_eq_coeFn](declarations/coefn-comp-tofinitemeasure-eq-coefn.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [apply_mono](declarations/apply-mono.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [apply_le_one](declarations/apply-le-one.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nonempty](declarations/nonempty.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eq_of_forall_toMeasure_apply_eq](declarations/eq-of-forall-tomeasure-apply-eq.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eq_of_forall_apply_eq](declarations/eq-of-forall-apply-eq.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mass_toFiniteMeasure](declarations/mass-tofinitemeasure.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toFiniteMeasure_nonzero](declarations/tofinitemeasure-nonzero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [testAgainstNN_lipschitz](declarations/testagainstnn-lipschitz.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toFiniteMeasure_continuous](declarations/tofinitemeasure-continuous.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toWeakDualBCNN](declarations/toweakdualbcnn.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_toWeakDualBCNN](declarations/coe-toweakdualbcnn.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toWeakDualBCNN_apply](declarations/toweakdualbcnn-apply.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toWeakDualBCNN_continuous](declarations/toweakdualbcnn-continuous.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [continuous_testAgainstNN_eval](declarations/continuous-testagainstnn-eval.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toFiniteMeasure_embedding](declarations/tofinitemeasure-embedding.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tendsto_nhds_iff_toFiniteMeasure_tendsto_nhds](declarations/tendsto-nhds-iff-tofinitemeasure-tendsto-nhds.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](declarations/tendsto-iff-forall-lintegral-tendsto.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tendsto_iff_forall_integral_tendsto](declarations/tendsto-iff-forall-integral-tendsto.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [normalize](declarations/normalize.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [self_eq_mass_mul_normalize](declarations/self-eq-mass-mul-normalize.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [self_eq_mass_smul_normalize](declarations/self-eq-mass-smul-normalize.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [normalize_eq_of_nonzero](declarations/normalize-eq-of-nonzero.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [normalize_eq_inv_mass_smul_of_nonzero](declarations/normalize-eq-inv-mass-smul-of-nonzero.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toMeasure_normalize_eq_of_nonzero](declarations/tomeasure-normalize-eq-of-nonzero.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [_root_.ProbabilityMeasure.toFiniteMeasure_normalize_eq_self](declarations/root-probabilitymeasure-tofinitemeasure-normalize-eq-self.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [average_eq_integral_normalize](declarations/average-eq-integral-normalize.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [testAgainstNN_eq_mass_mul](declarations/testagainstnn-eq-mass-mul.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [normalize_testAgainstNN](declarations/normalize-testagainstnn.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](declarations/tendsto-testagainstnn-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [tendsto_normalize_testAgainstNN_of_tendsto](declarations/tendsto-normalize-testagainstnn-of-tendsto.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tendsto_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](declarations/tendsto-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [tendsto_normalize_of_tendsto](declarations/tendsto-normalize-of-tendsto.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [tendsto_normalize_iff_tendsto](declarations/tendsto-normalize-iff-tendsto.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04c0e4fc9d373aa8d3179f4ecb22c0d4375d53ba45a991aa81be0a1f2fedcd1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantc0cffc79718b5b13cf9025b4c0fa825bb2bef51c5ce14aa627c70857587476e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
