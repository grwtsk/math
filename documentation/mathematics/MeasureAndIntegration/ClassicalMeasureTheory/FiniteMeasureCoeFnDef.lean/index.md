# Finite Measure Coe Fn Def

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**96 observed declarations and anonymous commands**, 74 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f86ffe0319c0e296ed9407c7309a96693f0963ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureCoeFnDef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.MeasureTheory.FiniteMeasure](declarations/root-measuretheory-finitemeasure.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toMeasure](declarations/tomeasure.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instCoe](declarations/instcoe.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [isFiniteMeasure](declarations/isfinitemeasure.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [val_eq_toMeasure](declarations/val-eq-tomeasure.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMeasure_injective](declarations/tomeasure-injective.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instFunLike](declarations/instfunlike.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coeFn_def](declarations/coefn-def.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coeFn_mk](declarations/coefn-mk.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mk_apply](declarations/mk-apply.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [null_iff_toMeasure_null](declarations/null-iff-tomeasure-null.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [apply_mono](declarations/apply-mono.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [tendsto_measure_iUnion_accumulate](declarations/tendsto-measure-iunion-accumulate.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mass](declarations/mass.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [apply_le_mass](declarations/apply-le-mass.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ennreal_mass](declarations/ennreal-mass.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instZero](declarations/instzero.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [coeFn_zero](declarations/coefn-zero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [zero_mass](declarations/zero-mass.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mass_zero_iff](declarations/mass-zero-iff.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mass_nonzero_iff](declarations/mass-nonzero-iff.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eq_of_forall_toMeasure_apply_eq](declarations/eq-of-forall-tomeasure-apply-eq.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_of_forall_apply_eq](declarations/eq-of-forall-apply-eq.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instInhabited](declarations/instinhabited.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instAdd](declarations/instadd.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [instSMul](declarations/instsmul.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toMeasure_zero](declarations/tomeasure-zero.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toMeasure_add](declarations/tomeasure-add.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toMeasure_smul](declarations/tomeasure-smul.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeFn_add](declarations/coefn-add.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coeFn_smul](declarations/coefn-smul.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toMeasureAddMonoidHom](declarations/tomeasureaddmonoidhom.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [smul_apply](declarations/smul-apply.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [restrict](declarations/restrict.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [restrict_measure_eq](declarations/restrict-measure-eq.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [restrict_apply_measure](declarations/restrict-apply-measure.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [restrict_mass](declarations/restrict-mass.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [restrict_eq_zero_iff](declarations/restrict-eq-zero-iff.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [restrict_nonzero_iff](declarations/restrict-nonzero-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [measurableSet_isFiniteMeasure](declarations/measurableset-isfinitemeasure.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [measurable_prod](declarations/measurable-prod.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ext_of_forall_lintegral_eq](declarations/ext-of-forall-lintegral-eq.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ext_of_forall_integral_eq](declarations/ext-of-forall-integral-eq.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [testAgainstNN](declarations/testagainstnn.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [testAgainstNN_coe_eq](declarations/testagainstnn-coe-eq.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [testAgainstNN_const](declarations/testagainstnn-const.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [testAgainstNN_mono](declarations/testagainstnn-mono.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [testAgainstNN_zero](declarations/testagainstnn-zero.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [testAgainstNN_one](declarations/testagainstnn-one.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [zero_testAgainstNN_apply](declarations/zero-testagainstnn-apply.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [zero_testAgainstNN](declarations/zero-testagainstnn.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [smul_testAgainstNN_apply](declarations/smul-testagainstnn-apply.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [testAgainstNN_add](declarations/testagainstnn-add.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [testAgainstNN_smul](declarations/testagainstnn-smul.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [testAgainstNN_lipschitz_estimate](declarations/testagainstnn-lipschitz-estimate.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [testAgainstNN_lipschitz](declarations/testagainstnn-lipschitz.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [toWeakDualBCNN](declarations/toweakdualbcnn.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_toWeakDualBCNN](declarations/coe-toweakdualbcnn.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [toWeakDualBCNN_apply](declarations/toweakdualbcnn-apply.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [toWeakDualBCNN_continuous](declarations/toweakdualbcnn-continuous.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [continuous_testAgainstNN_eval](declarations/continuous-testagainstnn-eval.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [continuous_mass](declarations/continuous-mass.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [_root_.Filter.Tendsto.mass](declarations/root-filter-tendsto-mass.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [tendsto_iff_weakDual_tendsto](declarations/tendsto-iff-weakdual-tendsto.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [tendsto_iff_forall_toWeakDualBCNN_tendsto](declarations/tendsto-iff-forall-toweakdualbcnn-tendsto.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [tendsto_iff_forall_testAgainstNN_tendsto](declarations/tendsto-iff-forall-testagainstnn-tendsto.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [tendsto_zero_testAgainstNN_of_tendsto_zero_mass](declarations/tendsto-zero-testagainstnn-of-tendsto-zero-mass.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [tendsto_zero_of_tendsto_zero_mass](declarations/tendsto-zero-of-tendsto-zero-mass.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](declarations/tendsto-iff-forall-lintegral-tendsto.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [injective_toWeakDualBCNN](declarations/injective-toweakdualbcnn.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [isEmbedding_toWeakDualBCNN](declarations/isembedding-toweakdualbcnn.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [t2Space](declarations/t2space.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [tendsto_lintegral_nn_of_le_const](declarations/tendsto-lintegral-nn-of-le-const.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [tendsto_testAgainstNN_filter_of_le_const](declarations/tendsto-testagainstnn-filter-of-le-const.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [tendsto_testAgainstNN_of_le_const](declarations/tendsto-testagainstnn-of-le-const.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [tendsto_of_forall_integral_tendsto](declarations/tendsto-of-forall-integral-tendsto.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [tendsto_iff_forall_integral_tendsto](declarations/tendsto-iff-forall-integral-tendsto.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [tendsto_iff_forall_integral_rclike_tendsto](declarations/tendsto-iff-forall-integral-rclike-tendsto.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [continuous_integral_boundedContinuousFunction](declarations/continuous-integral-boundedcontinuousfunction.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [map](declarations/map.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [toMeasure_map](declarations/tomeasure-map.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [map_apply'](declarations/map-apply-source-edition-2.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [map_apply_of_aemeasurable](declarations/map-apply-of-aemeasurable.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [map_apply](declarations/map-apply.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [map_add](declarations/map-add.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [map_smul](declarations/map-smul.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [mapHom](declarations/maphom.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [tendsto_map_of_tendsto_of_continuous](declarations/tendsto-map-of-tendsto-of-continuous.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [continuous_map](declarations/continuous-map.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [mapCLM](declarations/mapclm.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f145e5f80c180e8f701644e6343b1a71036b99e39b849c656f451d90588476d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant3ce6a2270c381b269295b98c778f5e8be17784b00decc7740820dd7334fc1418.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
