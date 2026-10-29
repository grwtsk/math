# Finite Measure Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**122 observed declarations and anonymous commands**, 96 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant18c993f4a56921a425a48fe3d1f9490ffcf961932f7754618d209908c4833e99.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69d017cb6e0c807c38af0c25308317fc6e0829d9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/FiniteMeasureNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Finite Measure Namespaced Public](declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryfinitemeasure-varian-source-edition-3.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toMeasure](declarations/tomeasure.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instCoe](declarations/instcoe.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [isFiniteMeasure](declarations/isfinitemeasure.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [val_eq_toMeasure](declarations/val-eq-tomeasure.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMeasure_injective](declarations/tomeasure-injective.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instFunLike](declarations/instfunlike.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coeFn_def](declarations/coefn-def.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coeFn_mk](declarations/coefn-mk.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mk_apply](declarations/mk-apply.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [toMeasure_mk](declarations/tomeasure-mk.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [measureReal_eq_coe_coeFn](declarations/measurereal-eq-coe-coefn.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [null_iff_toMeasure_null](declarations/null-iff-tomeasure-null.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [apply_mono](declarations/apply-mono.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [apply_union_le](declarations/apply-union-le.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mono_null](declarations/mono-null.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [pos_mono](declarations/pos-mono.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [tendsto_measure_iUnion_accumulate](declarations/tendsto-measure-iunion-accumulate.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [mass](declarations/mass.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [apply_le_mass](declarations/apply-le-mass.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ennreal_mass](declarations/ennreal-mass.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instZero](declarations/instzero.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [coeFn_zero](declarations/coefn-zero.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [zero_mass](declarations/zero-mass.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mass_zero_iff](declarations/mass-zero-iff.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mass_nonzero_iff](declarations/mass-nonzero-iff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eq_of_forall_toMeasure_apply_eq](declarations/eq-of-forall-tomeasure-apply-eq.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eq_of_forall_apply_eq](declarations/eq-of-forall-apply-eq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instInhabited](declarations/instinhabited.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instAdd](declarations/instadd.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instSMul](declarations/instsmul.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toMeasure_zero](declarations/tomeasure-zero.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toMeasure_add](declarations/tomeasure-add.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toMeasure_smul](declarations/tomeasure-smul.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coeFn_add](declarations/coefn-add.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coeFn_smul](declarations/coefn-smul.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [toMeasureAddMonoidHom](declarations/tomeasureaddmonoidhom.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toMeasure_sum](declarations/tomeasure-sum.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [smul_apply](declarations/smul-apply.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [restrict](declarations/restrict.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [restrict_measure_eq](declarations/restrict-measure-eq.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [restrict_apply_measure](declarations/restrict-apply-measure.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [restrict_mass](declarations/restrict-mass.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [restrict_univ](declarations/restrict-univ.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [restrict_union](declarations/restrict-union.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [restrict_biUnion_finset](declarations/restrict-biunion-finset.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [restrict_eq_zero_iff](declarations/restrict-eq-zero-iff.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [restrict_nonzero_iff](declarations/restrict-nonzero-iff.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [measurableSet_isFiniteMeasure](declarations/measurableset-isfinitemeasure.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [measurable_fun_prod](declarations/measurable-fun-prod.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [apply_iUnion_le](declarations/apply-iunion-le.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ext_of_forall_lintegral_eq](declarations/ext-of-forall-lintegral-eq.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ext_of_forall_integral_eq](declarations/ext-of-forall-integral-eq.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [testAgainstNN](declarations/testagainstnn.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [testAgainstNN_coe_eq](declarations/testagainstnn-coe-eq.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [testAgainstNN_const](declarations/testagainstnn-const.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [testAgainstNN_mono](declarations/testagainstnn-mono.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [testAgainstNN_zero](declarations/testagainstnn-zero.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [testAgainstNN_one](declarations/testagainstnn-one.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [zero_testAgainstNN_apply](declarations/zero-testagainstnn-apply.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [zero_testAgainstNN](declarations/zero-testagainstnn.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [smul_testAgainstNN_apply](declarations/smul-testagainstnn-apply.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [testAgainstNN_add](declarations/testagainstnn-add.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [testAgainstNN_smul](declarations/testagainstnn-smul.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [testAgainstNN_lipschitz_estimate](declarations/testagainstnn-lipschitz-estimate.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [testAgainstNN_lipschitz](declarations/testagainstnn-lipschitz.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [toWeakDualBCNN](declarations/toweakdualbcnn.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [coe_toWeakDualBCNN](declarations/coe-toweakdualbcnn.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [toWeakDualBCNN_apply](declarations/toweakdualbcnn-apply.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instTopologicalSpace](declarations/insttopologicalspace.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [toWeakDualBCNN_continuous](declarations/toweakdualbcnn-continuous.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [continuous_testAgainstNN_eval](declarations/continuous-testagainstnn-eval.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [continuous_mass](declarations/continuous-mass.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Finite Measure Namespaced Public](declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryfinitemeasure-varian-source-edition-2.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [tendsto_iff_weakDual_tendsto](declarations/tendsto-iff-weakdual-tendsto.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [tendsto_iff_forall_toWeakDualBCNN_tendsto](declarations/tendsto-iff-forall-toweakdualbcnn-tendsto.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [tendsto_iff_forall_testAgainstNN_tendsto](declarations/tendsto-iff-forall-testagainstnn-tendsto.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [tendsto_zero_testAgainstNN_of_tendsto_zero_mass](declarations/tendsto-zero-testagainstnn-of-tendsto-zero-mass.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [tendsto_zero_of_tendsto_zero_mass](declarations/tendsto-zero-of-tendsto-zero-mass.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](declarations/tendsto-iff-forall-lintegral-tendsto.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [injective_toWeakDualBCNN](declarations/injective-toweakdualbcnn.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [isEmbedding_toWeakDualBCNN](declarations/isembedding-toweakdualbcnn.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [t2Space](declarations/t2space.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [tendsto_lintegral_nn_of_le_const](declarations/tendsto-lintegral-nn-of-le-const.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [tendsto_testAgainstNN_filter_of_le_const](declarations/tendsto-testagainstnn-filter-of-le-const.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [tendsto_testAgainstNN_of_le_const](declarations/tendsto-testagainstnn-of-le-const.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [tendsto_of_forall_integral_tendsto](declarations/tendsto-of-forall-integral-tendsto.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [tendsto_iff_forall_integral_tendsto](declarations/tendsto-iff-forall-integral-tendsto.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [tendsto_iff_forall_integral_rclike_tendsto](declarations/tendsto-iff-forall-integral-rclike-tendsto.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [continuous_iff_forall_continuous_lintegral](declarations/continuous-iff-forall-continuous-lintegral.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [continuous_iff_forall_continuous_integral](declarations/continuous-iff-forall-continuous-integral.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [continuous_lintegral_boundedContinuousFunction](declarations/continuous-lintegral-boundedcontinuousfunction.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [continuous_integral_boundedContinuousFunction](declarations/continuous-integral-boundedcontinuousfunction.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [continuous_iff_forall_continuousMap_continuous_lintegral](declarations/continuous-iff-forall-continuousmap-continuous-lintegral.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [continuous_iff_forall_continuousMap_continuous_integral](declarations/continuous-iff-forall-continuousmap-continuous-integral.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [continuous_lintegral_continuousMap](declarations/continuous-lintegral-continuousmap.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [continuous_integral_continuousMap](declarations/continuous-integral-continuousmap.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [comap](declarations/comap.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [toMeasure_comap](declarations/tomeasure-comap.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [mass_comap_le](declarations/mass-comap-le.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [Finite Measure Namespaced Public](declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryfinitemeasure-varian.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [map](declarations/map.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [toMeasure_map](declarations/tomeasure-map.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [map_apply'](declarations/map-apply.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [map_apply_of_aemeasurable](declarations/map-apply-of-aemeasurable.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [map_apply](declarations/map-apply-source-edition-2.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [map_add](declarations/map-add.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [map_smul](declarations/map-smul.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [mapHom](declarations/maphom.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [mass_map_le](declarations/mass-map-le.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [tendsto_map_of_tendsto_of_continuous](declarations/tendsto-map-of-tendsto-of-continuous.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [continuous_map](declarations/continuous-map.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [mapCLM](declarations/mapclm.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [Topology.IsClosedEmbedding.isEmbedding_map_finiteMeasure](declarations/topology-isclosedembedding-isembedding-map-finitemeasure.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b30aaef76a55431a32af40e8afc51e2b7b8d822fecfd8d564ff9bef2ed0d501 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/FiniteMeasure/Variant18c993f4a56921a425a48fe3d1f9490ffcf961932f7754618d209908c4833e99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
