# Poisson Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0c85e101a7ed87f0db7dd9138ac26966ba93d1d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/PoissonBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [poissonMeasure](declarations/poissonmeasure.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [poissonMeasure_singleton](declarations/poissonmeasure-singleton.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [poissonMeasure_real_singleton](declarations/poissonmeasure-real-singleton.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [poissonMeasure_real_singleton_pos](declarations/poissonmeasure-real-singleton-pos.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [hasSum_one_poissonMeasure](declarations/hassum-one-poissonmeasure.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [integrable_poissonMeasure_iff](declarations/integrable-poissonmeasure-iff.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [integrable_map_cast_poissonMeasure_iff](declarations/integrable-map-cast-poissonmeasure-iff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [hasSum_integral_poissonMeasure](declarations/hassum-integral-poissonmeasure.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [integral_poissonMeasure'](declarations/integral-poissonmeasure-source-edition-2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integral_map_cast_poissonMeasure'](declarations/integral-map-cast-poissonmeasure-source-edition-2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [integral_poissonMeasure](declarations/integral-poissonmeasure.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [integral_map_cast_poissonMeasure](declarations/integral-map-cast-poissonmeasure.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [charFun_map_cast_poissonMeasure](declarations/charfun-map-cast-poissonmeasure.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_cast_poissonMeasure_conv_real](declarations/map-cast-poissonmeasure-conv-real.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [poissonMeasure_conv_poissonMeasure](declarations/poissonmeasure-conv-poissonmeasure.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_cast_poissonMeasure_conv](declarations/map-cast-poissonmeasure-conv.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IndepFun.hasLaw_add_poissonMeasure](declarations/indepfun-haslaw-add-poissonmeasure.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IndepFun.hasLaw_add_map_cast_poissonMeasure](declarations/indepfun-haslaw-add-map-cast-poissonmeasure.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [poissonPMFReal](declarations/poissonpmfreal.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [poissonPMFReal_pos](declarations/poissonpmfreal-pos.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [poissonPMFReal_nonneg](declarations/poissonpmfreal-nonneg.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [poissonPMF](declarations/poissonpmf.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [poissonPMFReal_ofReal_eq_poissonPMF](declarations/poissonpmfreal-ofreal-eq-poissonpmf.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [measurable_poissonPMFReal](declarations/measurable-poissonpmfreal.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [stronglyMeasurable_poissonPMFReal](declarations/stronglymeasurable-poissonpmfreal.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16db215accaa00fa4d25466636b4bb9be4c1fdfbb2d5c8125fafe8612a9a8290 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
