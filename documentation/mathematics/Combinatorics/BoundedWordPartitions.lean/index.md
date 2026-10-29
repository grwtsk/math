# Bounded Word Partitions

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**18 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38c1cead3ac1680d2f925bda36bc940d8d0b3648`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BoundedWordPartitions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [chunks](declarations/chunks.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [flatten_chunks](declarations/flatten-chunks.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [shard](declarations/shard.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [flatten_shard](declarations/flatten-shard.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [chunks_length_le](declarations/chunks-length-le.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [shard_count_le](declarations/shard-count-le.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [member_chunks_length_le](declarations/member-chunks-length-le.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [member_shard_length_le](declarations/member-shard-length-le.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [member_chunks_ne_nil](declarations/member-chunks-ne-nil.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [member_shard_ne_nil](declarations/member-shard-ne-nil.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [count_flatten_shard](declarations/count-flatten-shard.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [repartition](declarations/repartition.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [cost](declarations/cost.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cost_le_length_mul](declarations/cost-le-length-mul.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [member_shard_cost_le](declarations/member-shard-cost-le.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `example` | [(anonymous)](declarations/example.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=056d541a9c5ce6903baafb00f6d7b76f0c8cacecb796289dbea69910bf867970 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Words/BoundedWordPartitions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
