# Weighted Greedy Partitions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c6ba06fa211b14107630531cf84f9deff978e22`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cost](declarations/cost.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cost_nil](declarations/cost-nil.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [cost_append](declarations/cost-append.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cost_singleton](declarations/cost-singleton.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [State](declarations/state.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [initial](declarations/initial.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [history](declarations/history.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [splitBefore](declarations/splitbefore.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [step](declarations/step.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [consume](declarations/consume.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [finish](declarations/finish.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [partition](declarations/partition.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [PartValid](declarations/partvalid.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Valid](declarations/valid.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [initial_valid](declarations/initial-valid.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [step_history](declarations/step-history.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [consume_history](declarations/consume-history.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finish_history](declarations/finish-history.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [flatten_partition](declarations/flatten-partition.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [step_valid](declarations/step-valid.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [consume_valid](declarations/consume-valid.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [finish_valid](declarations/finish-valid.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [member_partition_valid](declarations/member-partition-valid.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [member_partition_ne_nil](declarations/member-partition-ne-nil.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [member_partition_length_le](declarations/member-partition-length-le.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [member_partition_cost_le](declarations/member-partition-cost-le.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [count_flatten_partition](declarations/count-flatten-partition.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [maxFiles](declarations/maxfiles.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [maxBytes](declarations/maxbytes.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [u64Modulus](declarations/u64modulus.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [profiled_sum_no_overflow](declarations/profiled-sum-no-overflow.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [profiled_count_no_overflow](declarations/profiled-count-no-overflow.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [profiled_u64_add_exact](declarations/profiled-u64-add-exact.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [profiled_UInt64_add_exact](declarations/profiled-uint64-add-exact.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [ScalarGuard](declarations/scalarguard.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [scalarAdvance](declarations/scalaradvance.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [scalarAdvance_rejects_invalid](declarations/scalaradvance-rejects-invalid.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [scalarAdvance_accepts_iff](declarations/scalaradvance-accepts-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [scalarAdvance_refines_step](declarations/scalaradvance-refines-step.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [scalarAdvance_sound](declarations/scalaradvance-sound.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [profiled_action_index_no_overflow](declarations/profiled-action-index-no-overflow.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [partition_singleton](declarations/partition-singleton.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [partition_nil](declarations/partition-nil.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `example` | [(anonymous)](declarations/example.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `example` | [(anonymous)](declarations/example-source-edition-5.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `example` | [(anonymous)](declarations/example-source-edition-6.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b835a58bb42cb7d93775eef5e2eda7445999d891d34527678f9dec7f2b66ae3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
