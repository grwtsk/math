# Mv Power Series Evaluation Evaluation Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c0349331a0f4571ac8e5122ce0f01085e426d2a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/MvPowerSeriesEvaluationEvaluationPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HasEval](declarations/haseval.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [HasEval.mono](declarations/haseval-mono.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [HasEval.zero](declarations/haseval-zero.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [HasEval.add](declarations/haseval-add.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasEval.mul_left](declarations/haseval-mul-left.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasEval.mul_right](declarations/haseval-mul-right.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasEval.map](declarations/haseval-map.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasEval.X](declarations/haseval-x.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [hasEvalIdeal](declarations/hasevalideal.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_hasEvalIdeal_iff](declarations/mem-hasevalideal-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasEval.pow](declarations/haseval-pow.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_isUniformInducing](declarations/root-mvpolynomial-tomvpowerseries-isuniforminducing.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_isDenseInducing](declarations/root-mvpolynomial-tomvpowerseries-isdenseinducing.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_uniformContinuous](declarations/root-mvpolynomial-tomvpowerseries-uniformcontinuous.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [eval₂](declarations/eval.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval₂_coe](declarations/eval-coe.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval₂_C](declarations/eval-c.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eval₂_X](declarations/eval-x.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [eval₂Hom](declarations/eval-hom.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eval₂Hom_eq_extend](declarations/eval-hom-eq-extend.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_eval₂Hom](declarations/coe-eval-hom.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [uniformContinuous_eval₂](declarations/uniformcontinuous-eval.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [continuous_eval₂](declarations/continuous-eval.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hasSum_eval₂](declarations/hassum-eval.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval₂_eq_tsum](declarations/eval-eq-tsum.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [eval₂_unique](declarations/eval-unique.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comp_eval₂](declarations/comp-eval.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [aeval](declarations/aeval.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_aeval](declarations/coe-aeval.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [continuous_aeval](declarations/continuous-aeval.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [aeval_coe](declarations/aeval-coe.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [aeval_unique](declarations/aeval-unique.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hasSum_aeval](declarations/hassum-aeval.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [aeval_eq_sum](declarations/aeval-eq-sum.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [comp_aeval](declarations/comp-aeval.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6769e57f920e8aaaa98890230e0c2cd698421541f4b1d19ad0b77def9c98a0b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Evaluation/Varianta9f032e25790cfc33033a79bf7623f440f8d7dd8333295b20f63724da5ec3f48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
