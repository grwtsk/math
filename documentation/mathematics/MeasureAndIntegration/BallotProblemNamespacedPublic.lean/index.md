# Ballot Problem Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `745da5c8bcbf758fde0c90300daaab0033f54405`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/BallotProblemNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [staysPositive](declarations/stayspositive.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [staysPositive_nil](declarations/stayspositive-nil.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [staysPositive_suffix](declarations/stayspositive-suffix.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [staysPositive_cons](declarations/stayspositive-cons.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sum_nonneg_of_staysPositive](declarations/sum-nonneg-of-stayspositive.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [staysPositive_cons_pos](declarations/stayspositive-cons-pos.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [countedSequence](declarations/countedsequence.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_countedSequence_iff_perm](declarations/mem-countedsequence-iff-perm.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [counted_right_zero](declarations/counted-right-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [counted_left_zero](declarations/counted-left-zero.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_of_mem_countedSequence](declarations/mem-of-mem-countedsequence.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [length_of_mem_countedSequence](declarations/length-of-mem-countedsequence.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [counted_eq_nil_iff](declarations/counted-eq-nil-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [counted_ne_nil_left](declarations/counted-ne-nil-left.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [counted_ne_nil_right](declarations/counted-ne-nil-right.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [counted_succ_succ](declarations/counted-succ-succ.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [countedSequence_finite](declarations/countedsequence-finite.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [countedSequence_nonempty](declarations/countedsequence-nonempty.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sum_of_mem_countedSequence](declarations/sum-of-mem-countedsequence.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [disjoint_bits](declarations/disjoint-bits.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [measurableSpace_list_int](declarations/measurablespace-list-int.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [measurableSingletonClass_list_int](declarations/measurablesingletonclass-list-int.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [list_int_measurableSet](declarations/list-int-measurableset.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [count_countedSequence](declarations/count-countedsequence.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [first_vote_pos](declarations/first-vote-pos.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [headI_mem_of_nonempty](declarations/headi-mem-of-nonempty.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [first_vote_neg](declarations/first-vote-neg.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ballot_same](declarations/ballot-same.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ballot_edge](declarations/ballot-edge.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [countedSequence_int_pos_counted_succ_succ](declarations/countedsequence-int-pos-counted-succ-succ.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ballot_pos](declarations/ballot-pos.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [countedSequence_int_neg_counted_succ_succ](declarations/countedsequence-int-neg-counted-succ-succ.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ballot_neg](declarations/ballot-neg.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ballot_problem'](declarations/ballot-problem-source-edition-2.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ballot_problem](declarations/ballot-problem.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=143b2f19f5d730fed6e88fd181bd5d0afef137db0cbb1d95ab34917e1fbc9b4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BallotProblem/Variantb4149025f0d19b11c5e23697f327404d8e4e878db61217907f78ab2d739f22bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
