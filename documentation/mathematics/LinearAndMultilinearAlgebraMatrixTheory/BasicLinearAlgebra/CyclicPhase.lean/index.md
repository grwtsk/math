# Cyclic Phase

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a55c55e7d1d20d8787dbff46b1b00fc4a5bfedd4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPhase.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](declarations/gramplus.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [gramMinus](declarations/gramminus.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pairwiseProfile](declarations/pairwiseprofile.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [tripleCycle](declarations/triplecycle.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gramPlus_hermitian](declarations/gramplus-hermitian.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gramMinus_hermitian](declarations/gramminus-hermitian.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gramPlus_energy](declarations/gramplus-energy.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gramMinus_energy](declarations/gramminus-energy.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sum_sq_pos](declarations/sum-sq-pos.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gramPlus_posDef](declarations/gramplus-posdef.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [gramMinus_posDef](declarations/gramminus-posdef.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [positive_gram_factor](declarations/positive-gram-factor.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [gramPlus_realizable](declarations/gramplus-realizable.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gramMinus_realizable](declarations/gramminus-realizable.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [diagonals_equal](declarations/diagonals-equal.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pairwise_equal](declarations/pairwise-equal.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [triple_plus](declarations/triple-plus.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [triple_minus](declarations/triple-minus.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [triple_distinct](declarations/triple-distinct.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [det_plus](declarations/det-plus.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [det_minus](declarations/det-minus.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_distinct](declarations/det-distinct.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [no_pairwise_triple_decoder](declarations/no-pairwise-triple-decoder.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](declarations/no-pairwise-determinant-decoder.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [positive_euclidean_gram](declarations/positive-euclidean-gram.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gramPlus_euclidean](declarations/gramplus-euclidean.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gramMinus_euclidean](declarations/gramminus-euclidean.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pairwiseProfile_eq_norm_sq](declarations/pairwiseprofile-eq-norm-sq.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [first_trace_equal](declarations/first-trace-equal.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [second_trace_equal](declarations/second-trace-equal.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [third_trace_plus](declarations/third-trace-plus.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [third_trace_minus](declarations/third-trace-minus.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [no_pairwise_third_trace_decoder](declarations/no-pairwise-third-trace-decoder.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30715ea1edda45f5e5cb4abe631551de4561a4a866e9de6d2448792e548efc7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantf4a9431d17dde11ffd77e41fb2d5c1d2d918d857feb36fd1267a4faea9043464.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
