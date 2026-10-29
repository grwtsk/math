# Power Series Evaluation Evaluation

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `592dfde852f57989d1be0eb108ea0cbaa9abaa95`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PowerSeriesEvaluationEvaluation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasEval](declarations/haseval-source-edition-2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [hasEval_def](declarations/haseval-def.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasEval_iff](declarations/haseval-iff.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasEval](declarations/haseval.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasEval.mono](declarations/haseval-mono.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasEval.zero](declarations/haseval-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasEval.add](declarations/haseval-add.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasEval.mul_left](declarations/haseval-mul-left.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [HasEval.mul_right](declarations/haseval-mul-right.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasEval.map](declarations/haseval-map.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasEval.X](declarations/haseval-x.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [hasEvalIdeal](declarations/hasevalideal.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_hasEvalIdeal_iff](declarations/mem-hasevalideal-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [eval₂](declarations/eval.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eval₂_coe](declarations/eval-coe.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eval₂_C](declarations/eval-c.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval₂_X](declarations/eval-x.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [eval₂Hom](declarations/eval-hom.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_eval₂Hom](declarations/coe-eval-hom.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [uniformContinuous_eval₂](declarations/uniformcontinuous-eval.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [continuous_eval₂](declarations/continuous-eval.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasSum_eval₂](declarations/hassum-eval.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval₂_eq_tsum](declarations/eval-eq-tsum.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval₂_unique](declarations/eval-unique.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_eval₂](declarations/comp-eval.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [aeval](declarations/aeval.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_aeval](declarations/coe-aeval.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [continuous_aeval](declarations/continuous-aeval.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [aeval_coe](declarations/aeval-coe.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [aeval_unique](declarations/aeval-unique.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasSum_aeval](declarations/hassum-aeval.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [aeval_eq_sum](declarations/aeval-eq-sum.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [comp_aeval](declarations/comp-aeval.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d05a5aaae47bfc33049202dc85768dff03e0cbca585e932f6d1a0fdb2bebf63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
