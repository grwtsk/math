# Poisson Basic Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `554a83145af74304a7379839dd02180c4d22c6b8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/PoissonBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [poissonMeasure](declarations/poissonmeasure.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [poissonMeasure_singleton](declarations/poissonmeasure-singleton.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [poissonMeasure_real_singleton](declarations/poissonmeasure-real-singleton.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [poissonMeasure_real_singleton_pos](declarations/poissonmeasure-real-singleton-pos.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [hasSum_one_poissonMeasure](declarations/hassum-one-poissonmeasure.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [integrable_poissonMeasure_iff](declarations/integrable-poissonmeasure-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [integrable_map_cast_poissonMeasure_iff](declarations/integrable-map-cast-poissonmeasure-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [hasSum_integral_poissonMeasure](declarations/hassum-integral-poissonmeasure.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [integral_poissonMeasure'](declarations/integral-poissonmeasure-source-edition-2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integral_map_cast_poissonMeasure'](declarations/integral-map-cast-poissonmeasure-source-edition-2.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [integral_poissonMeasure](declarations/integral-poissonmeasure.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [integral_map_cast_poissonMeasure](declarations/integral-map-cast-poissonmeasure.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [charFun_map_cast_poissonMeasure](declarations/charfun-map-cast-poissonmeasure.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_cast_poissonMeasure_conv_real](declarations/map-cast-poissonmeasure-conv-real.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [poissonMeasure_conv_poissonMeasure](declarations/poissonmeasure-conv-poissonmeasure.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_cast_poissonMeasure_conv](declarations/map-cast-poissonmeasure-conv.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IndepFun.hasLaw_add_poissonMeasure](declarations/indepfun-haslaw-add-poissonmeasure.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IndepFun.hasLaw_add_map_cast_poissonMeasure](declarations/indepfun-haslaw-add-map-cast-poissonmeasure.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [poissonPMFReal](declarations/poissonpmfreal.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [poissonPMFReal_pos](declarations/poissonpmfreal-pos.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [poissonPMFReal_nonneg](declarations/poissonpmfreal-nonneg.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [poissonPMF](declarations/poissonpmf.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [poissonPMFReal_ofReal_eq_poissonPMF](declarations/poissonpmfreal-ofreal-eq-poissonpmf.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [measurable_poissonPMFReal](declarations/measurable-poissonpmfreal.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [stronglyMeasurable_poissonPMFReal](declarations/stronglymeasurable-poissonpmfreal.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5033773c68f3f8f6b0b192b62bb6a017b8bef47bd7664b726973ed6b637978cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant54ba177165427461e6cd7daaec36f4a1c3fdf3d7e5a89face225238d32b64bbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
