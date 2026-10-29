# Power Series Evaluation Evaluation Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant153b4c4204923f5cc6de9f9ad3e27e22454a7a5b3e92c8047edb9ce8475c86d2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e4a47c6184849fd3a43cb0d4dc9a92e3c1fb61c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PowerSeriesEvaluationEvaluationPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasEval](declarations/haseval-source-edition-2.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [hasEval_def](declarations/haseval-def.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasEval_iff](declarations/haseval-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasEval](declarations/haseval.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasEval.mono](declarations/haseval-mono.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasEval.zero](declarations/haseval-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [HasEval.add](declarations/haseval-add.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasEval.mul_left](declarations/haseval-mul-left.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [HasEval.mul_right](declarations/haseval-mul-right.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasEval.map](declarations/haseval-map.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasEval.X](declarations/haseval-x.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [hasEvalIdeal](declarations/hasevalideal.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_hasEvalIdeal_iff](declarations/mem-hasevalideal-iff.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [eval₂](declarations/eval.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eval₂_coe](declarations/eval-coe.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eval₂_C](declarations/eval-c.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval₂_X](declarations/eval-x.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [eval₂Hom](declarations/eval-hom.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_eval₂Hom](declarations/coe-eval-hom.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [uniformContinuous_eval₂](declarations/uniformcontinuous-eval.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [continuous_eval₂](declarations/continuous-eval.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasSum_eval₂](declarations/hassum-eval.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval₂_eq_tsum](declarations/eval-eq-tsum.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval₂_unique](declarations/eval-unique.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_eval₂](declarations/comp-eval.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [aeval](declarations/aeval.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_aeval](declarations/coe-aeval.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [continuous_aeval](declarations/continuous-aeval.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [aeval_coe](declarations/aeval-coe.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [aeval_unique](declarations/aeval-unique.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasSum_aeval](declarations/hassum-aeval.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [aeval_eq_sum](declarations/aeval-eq-sum.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [comp_aeval](declarations/comp-aeval.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e26059174417129c908bf649a161b2b0ab77e7c68f3547903e8f4697568cab00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant153b4c4204923f5cc6de9f9ad3e27e22454a7a5b3e92c8047edb9ce8475c86d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
