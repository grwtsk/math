# Balanced Partition Sampling

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb2fc5e8fd3cf166fd3dde946c35037cf9a9211c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BalancedPartitionSampling.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Partition](declarations/partition.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [part](declarations/part.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_part](declarations/mem-part.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [part_card](declarations/part-card.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [parts_pairwise_disjoint](declarations/parts-pairwise-disjoint.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [parts_cover](declarations/parts-cover.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [Selection](declarations/selection.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Sample](declarations/sample.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [partitionFinite](declarations/partitionfinite.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [sampleFinite](declarations/samplefinite.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [partitionFintype](declarations/partitionfintype.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [sampleFintype](declarations/samplefintype.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sampleSigmaEquiv](declarations/samplesigmaequiv.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [selection_card](declarations/selection-card.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sample_card](declarations/sample-card.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [output](declarations/output.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [choices_injective](declarations/choices-injective.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [output_card](declarations/output-card.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [partition_nonempty](declarations/partition-nonempty.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sample_nonempty](declarations/sample-nonempty.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [relabel](declarations/relabel.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [relabel_symm_relabel](declarations/relabel-symm-relabel.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [relabelEquiv](declarations/relabelequiv.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [output_relabel](declarations/output-relabel.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [OutputFiber](declarations/outputfiber.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [outputFiberEquiv](declarations/outputfiberequiv.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [outputFiber_card_eq](declarations/outputfiber-card-eq.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sample_card_eq_output_fiber_mul](declarations/sample-card-eq-output-fiber-mul.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [jointProbability](declarations/jointprobability.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [eventSigmaEquiv](declarations/eventsigmaequiv.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [jointProbability_eq_partition_average](declarations/jointprobability-eq-partition-average.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [output_probability](declarations/output-probability.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [selection_rectangle_probability](declarations/selection-rectangle-probability.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [samplePartition](declarations/samplepartition.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [partitionFiberEquiv](declarations/partitionfiberequiv.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [partition_probability](declarations/partition-probability.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [output_event_probability](declarations/output-event-probability.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [balancedSizes](declarations/balancedsizes.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [balancedSizes_sum](declarations/balancedsizes-sum.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [balancedSizes_pos](declarations/balancedsizes-pos.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [balanced_sample_nonempty](declarations/balanced-sample-nonempty.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [balanced_output_probability](declarations/balanced-output-probability.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50b90d412fa12504fd3398e3dbd5b1454ed259a4693f569fd991e7c6b2129caf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionSampling.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
