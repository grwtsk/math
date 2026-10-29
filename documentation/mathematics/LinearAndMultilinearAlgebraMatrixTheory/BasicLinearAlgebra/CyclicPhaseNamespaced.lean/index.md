# Cyclic Phase Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7b6c75c02d94f46249cb5bae07379aa0b0eb881`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPhaseNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](declarations/gramplus.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [gramMinus](declarations/gramminus.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [pairwiseProfile](declarations/pairwiseprofile.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [tripleCycle](declarations/triplecycle.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gramPlus_hermitian](declarations/gramplus-hermitian.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gramMinus_hermitian](declarations/gramminus-hermitian.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gramPlus_energy](declarations/gramplus-energy.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gramMinus_energy](declarations/gramminus-energy.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sum_sq_pos](declarations/sum-sq-pos.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gramPlus_posDef](declarations/gramplus-posdef.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [gramMinus_posDef](declarations/gramminus-posdef.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [positive_gram_factor](declarations/positive-gram-factor.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [gramPlus_realizable](declarations/gramplus-realizable.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gramMinus_realizable](declarations/gramminus-realizable.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [diagonals_equal](declarations/diagonals-equal.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pairwise_equal](declarations/pairwise-equal.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [triple_plus](declarations/triple-plus.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [triple_minus](declarations/triple-minus.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [triple_distinct](declarations/triple-distinct.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [det_plus](declarations/det-plus.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [det_minus](declarations/det-minus.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [det_distinct](declarations/det-distinct.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [no_pairwise_triple_decoder](declarations/no-pairwise-triple-decoder.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](declarations/no-pairwise-determinant-decoder.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [positive_euclidean_gram](declarations/positive-euclidean-gram.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gramPlus_euclidean](declarations/gramplus-euclidean.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gramMinus_euclidean](declarations/gramminus-euclidean.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pairwiseProfile_eq_norm_sq](declarations/pairwiseprofile-eq-norm-sq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [first_trace_equal](declarations/first-trace-equal.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [second_trace_equal](declarations/second-trace-equal.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [third_trace_plus](declarations/third-trace-plus.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [third_trace_minus](declarations/third-trace-minus.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [no_pairwise_third_trace_decoder](declarations/no-pairwise-third-trace-decoder.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b6711a2e96a112ab18bd56e63e585eb18d1229326cae2356aa86bfc5c222364 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
