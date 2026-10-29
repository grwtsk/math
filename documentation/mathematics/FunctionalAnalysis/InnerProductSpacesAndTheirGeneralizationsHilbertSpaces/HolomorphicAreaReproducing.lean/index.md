# Holomorphic Area Reproducing

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5995c524690bdc3f97da887d9759f6990cde08de`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/HolomorphicAreaReproducing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AreaCompletion](declarations/areacompletion.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [completedEvaluation](declarations/completedevaluation.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [completedEvaluation_toCompletion](declarations/completedevaluation-tocompletion.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [completedEvaluation_eq_value](declarations/completedevaluation-eq-value.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [completedEvaluation_bound](declarations/completedevaluation-bound.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [completedEvaluation_norm_le](declarations/completedevaluation-norm-le.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [completedEvaluation_congr](declarations/completedevaluation-congr.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evaluationAt](declarations/evaluationat.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evaluationAt_eq_value](declarations/evaluationat-eq-value.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evaluationAt_eq_completedEvaluation](declarations/evaluationat-eq-completedevaluation.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evaluationAt_toCompletion](declarations/evaluationat-tocompletion.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [realization_multiplier](declarations/realization-multiplier.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [completedRealization_multiplier](declarations/completedrealization-multiplier.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evaluationAt_multiplier](declarations/evaluationat-multiplier.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [kernelVector](declarations/kernelvector.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [kernelVector_evaluation](declarations/kernelvector-evaluation.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [kernelVector_reproduces](declarations/kernelvector-reproduces.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [kernelVector_unique](declarations/kernelvector-unique.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [kernelVector_norm](declarations/kernelvector-norm.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [kernelVector_energy](declarations/kernelvector-energy.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [kernel](declarations/kernel.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [kernel_eq_inner](declarations/kernel-eq-inner.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [kernel_holomorphic](declarations/kernel-holomorphic.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [kernel_conj_symm](declarations/kernel-conj-symm.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [kernel_diagonal](declarations/kernel-diagonal.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [kernel_diagonal_bound](declarations/kernel-diagonal-bound.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [kernel_gram](declarations/kernel-gram.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [kernel_gram_nonneg](declarations/kernel-gram-nonneg.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [evaluationAt_ne_zero](declarations/evaluationat-ne-zero.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [kernelVector_ne_zero](declarations/kernelvector-ne-zero.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [kernel_diagonal_pos](declarations/kernel-diagonal-pos.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [adjoint_multiplier_kernel](declarations/adjoint-multiplier-kernel.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [phase_kernel](declarations/phase-kernel.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [phase_wrong_sign](declarations/phase-wrong-sign.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [disk_phase_wrong_sign](declarations/disk-phase-wrong-sign.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [empty_gram](declarations/empty-gram.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf11f5d4ea0c5ee79dfb20acd2790d528dcca92cf7dc4f2337572da2657e09ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicAreaReproducing.lean","GRWTSK/Analysis/ComplexAnalysis/HolomorphicAreaReproducing.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
