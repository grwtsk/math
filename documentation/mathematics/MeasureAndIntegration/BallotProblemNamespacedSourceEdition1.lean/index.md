# Ballot Problem Namespaced Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc46fef5c92f090b04a5a2df57bd3602aa46494b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/BallotProblemNamespacedSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [staysPositive](declarations/stayspositive.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [staysPositive_nil](declarations/stayspositive-nil.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [staysPositive_cons_pos](declarations/stayspositive-cons-pos.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [countedSequence](declarations/countedsequence.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_countedSequence_iff_perm](declarations/mem-countedsequence-iff-perm.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [counted_right_zero](declarations/counted-right-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [counted_left_zero](declarations/counted-left-zero.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_of_mem_countedSequence](declarations/mem-of-mem-countedsequence.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [length_of_mem_countedSequence](declarations/length-of-mem-countedsequence.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [counted_eq_nil_iff](declarations/counted-eq-nil-iff.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [counted_ne_nil_left](declarations/counted-ne-nil-left.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [counted_ne_nil_right](declarations/counted-ne-nil-right.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [get0_eq_head!](declarations/get0-eq-head.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [counted_succ_succ](declarations/counted-succ-succ.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [countedSequence_finite](declarations/countedsequence-finite.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [countedSequence_nonempty](declarations/countedsequence-nonempty.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sum_of_mem_countedSequence](declarations/sum-of-mem-countedsequence.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [disjoint_bits](declarations/disjoint-bits.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [measureableSpace_list_int](declarations/measureablespace-list-int.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [measurableSingletonClass_list_int](declarations/measurablesingletonclass-list-int.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [list_int_measurableSet](declarations/list-int-measurableset.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [count_countedSequence](declarations/count-countedsequence.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [first_vote_pos](declarations/first-vote-pos.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [headI_mem_of_nonempty](declarations/headi-mem-of-nonempty.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [first_vote_neg](declarations/first-vote-neg.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ballot_same](declarations/ballot-same.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ballot_edge](declarations/ballot-edge.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [countedSequence_int_pos_counted_succ_succ](declarations/countedsequence-int-pos-counted-succ-succ.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ballot_pos](declarations/ballot-pos.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [countedSequence_int_neg_counted_succ_succ](declarations/countedsequence-int-neg-counted-succ-succ.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ballot_neg](declarations/ballot-neg.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ballot_problem'](declarations/ballot-problem-source-edition-2.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ballot_problem](declarations/ballot-problem.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dd04cb74483ff04d4fb330f434c5148a47356204c4bf1be45bf0cabdd99a973 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variant24a9196f0bfdb52567298d45618d1bd6963e2299a3005489ed7f90b0341ada8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
