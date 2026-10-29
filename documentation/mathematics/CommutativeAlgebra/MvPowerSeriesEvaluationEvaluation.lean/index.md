# Mv Power Series Evaluation Evaluation

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e09acfc6324171966f4efc0088d04d7b3a8a525f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/MvPowerSeriesEvaluationEvaluation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HasEval](declarations/haseval.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [HasEval.mono](declarations/haseval-mono.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [HasEval.zero](declarations/haseval-zero.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [HasEval.add](declarations/haseval-add.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasEval.mul_left](declarations/haseval-mul-left.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasEval.mul_right](declarations/haseval-mul-right.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasEval.map](declarations/haseval-map.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasEval.X](declarations/haseval-x.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [hasEvalIdeal](declarations/hasevalideal.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_hasEvalIdeal_iff](declarations/mem-hasevalideal-iff.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_isUniformInducing](declarations/root-mvpolynomial-tomvpowerseries-isuniforminducing.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_isDenseInducing](declarations/root-mvpolynomial-tomvpowerseries-isdenseinducing.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [_root_.MvPolynomial.toMvPowerSeries_uniformContinuous](declarations/root-mvpolynomial-tomvpowerseries-uniformcontinuous.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [eval₂](declarations/eval.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval₂_coe](declarations/eval-coe.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval₂_C](declarations/eval-c.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eval₂_X](declarations/eval-x.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [eval₂Hom](declarations/eval-hom.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eval₂Hom_eq_extend](declarations/eval-hom-eq-extend.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_eval₂Hom](declarations/coe-eval-hom.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [uniformContinuous_eval₂](declarations/uniformcontinuous-eval.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [continuous_eval₂](declarations/continuous-eval.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasSum_eval₂](declarations/hassum-eval.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval₂_eq_tsum](declarations/eval-eq-tsum.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval₂_unique](declarations/eval-unique.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [comp_eval₂](declarations/comp-eval.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [aeval](declarations/aeval.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_aeval](declarations/coe-aeval.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [continuous_aeval](declarations/continuous-aeval.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [aeval_coe](declarations/aeval-coe.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [aeval_unique](declarations/aeval-unique.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hasSum_aeval](declarations/hassum-aeval.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [aeval_eq_sum](declarations/aeval-eq-sum.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comp_aeval](declarations/comp-aeval.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa40dc30488fa60bd331c202353646aef16568251547ba1768f570ab1c2fe4fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Evaluation/Variant8e8d2a4bc9275ec1e011698d7f13b57d881b00406bf4a2e389dddcf40b46b4c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
