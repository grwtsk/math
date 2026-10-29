# Power Series Evaluation Evaluation Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variantffc3772ff320ba95ce6ebdb00f02dbcea1a7af23c2de4e57739d4fa583629ee7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfc3bee4641b588a4b5723bff89a5c73eb0832aa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PowerSeriesEvaluationEvaluationNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasEval](declarations/haseval.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [hasEval_def](declarations/haseval-def.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasEval_iff](declarations/haseval-iff.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasEval](declarations/haseval-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasEval.mono](declarations/haseval-mono.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasEval.zero](declarations/haseval-zero.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasEval.add](declarations/haseval-add.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasEval.mul_left](declarations/haseval-mul-left.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [HasEval.mul_right](declarations/haseval-mul-right.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasEval.map](declarations/haseval-map.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasEval.X](declarations/haseval-x.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [hasEvalIdeal](declarations/hasevalideal.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_hasEvalIdeal_iff](declarations/mem-hasevalideal-iff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [eval₂](declarations/eval.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eval₂_coe](declarations/eval-coe.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eval₂_C](declarations/eval-c.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval₂_X](declarations/eval-x.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [eval₂Hom](declarations/eval-hom.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_eval₂Hom](declarations/coe-eval-hom.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [uniformContinuous_eval₂](declarations/uniformcontinuous-eval.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [continuous_eval₂](declarations/continuous-eval.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasSum_eval₂](declarations/hassum-eval.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval₂_eq_tsum](declarations/eval-eq-tsum.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval₂_unique](declarations/eval-unique.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_eval₂](declarations/comp-eval.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [aeval](declarations/aeval.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_aeval](declarations/coe-aeval.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [continuous_aeval](declarations/continuous-aeval.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [aeval_coe](declarations/aeval-coe.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [aeval_unique](declarations/aeval-unique.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasSum_aeval](declarations/hassum-aeval.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [aeval_eq_sum](declarations/aeval-eq-sum.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [comp_aeval](declarations/comp-aeval.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=698bcb08e062e8768cfd7441dc2c2e49f060bfc12c309f2e11c438a4bab224a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variantffc3772ff320ba95ce6ebdb00f02dbcea1a7af23c2de4e57739d4fa583629ee7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
