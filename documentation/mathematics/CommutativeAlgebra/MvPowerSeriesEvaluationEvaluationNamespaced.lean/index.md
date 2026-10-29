# Mv Power Series Evaluation Evaluation Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a703a6d70ade1897182e5811a24cff2c0696d0b6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HasEval](declarations/haseval.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [HasEval.mono](declarations/haseval-mono.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [HasEval.zero](declarations/haseval-zero.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [HasEval.add](declarations/haseval-add.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasEval.mul_left](declarations/haseval-mul-left.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasEval.mul_right](declarations/haseval-mul-right.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasEval.map](declarations/haseval-map.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasEval.X](declarations/haseval-x.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [hasEvalIdeal](declarations/hasevalideal.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_hasEvalIdeal_iff](declarations/mem-hasevalideal-iff.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Mv Power Series Evaluation Evaluation Namespaced](declarations/tomvpowerseries-isuniforminducing.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Mv Power Series Evaluation Evaluation Namespaced](declarations/tomvpowerseries-isdenseinducing.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Mv Power Series Evaluation Evaluation Namespaced](declarations/tomvpowerseries-uniformcontinuous.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [eval₂](declarations/eval.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval₂_coe](declarations/eval-coe.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval₂_C](declarations/eval-c.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval₂_X](declarations/eval-x.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [eval₂Hom](declarations/eval-hom.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eval₂Hom_eq_extend](declarations/eval-hom-eq-extend.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_eval₂Hom](declarations/coe-eval-hom.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [uniformContinuous_eval₂](declarations/uniformcontinuous-eval.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [continuous_eval₂](declarations/continuous-eval.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasSum_eval₂](declarations/hassum-eval.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval₂_eq_tsum](declarations/eval-eq-tsum.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval₂_unique](declarations/eval-unique.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [comp_eval₂](declarations/comp-eval.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [aeval](declarations/aeval.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_aeval](declarations/coe-aeval.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [continuous_aeval](declarations/continuous-aeval.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [aeval_coe](declarations/aeval-coe.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [aeval_unique](declarations/aeval-unique.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hasSum_aeval](declarations/hassum-aeval.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [aeval_eq_sum](declarations/aeval-eq-sum.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comp_aeval](declarations/comp-aeval.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=548cf64140feadf8384c67bb77d24c0e8aaecf29b2230f7f8b5e653870ff4427 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Evaluation/Variante6e3e41355a581183c15edc425b594ea35ce38136932237dab6b99aead4682df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
