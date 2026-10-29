# Circulant

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de168cfa7698245b08470ade7013b9b2e05a699e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/Circulant.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [circulantGraph](declarations/circulantgraph.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [circulantGraph_eq_erase_zero](declarations/circulantgraph-eq-erase-zero.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [circulantGraph_eq_symm](declarations/circulantgraph-eq-symm.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [circulantGraph_adj_translate](declarations/circulantgraph-adj-translate.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [cycleGraph](declarations/cyclegraph.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cycleGraph_zero_adj](declarations/cyclegraph-zero-adj.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [cycleGraph_zero_eq_bot](declarations/cyclegraph-zero-eq-bot.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cycleGraph_one_eq_bot](declarations/cyclegraph-one-eq-bot.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cycleGraph_zero_eq_top](declarations/cyclegraph-zero-eq-top.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cycleGraph_one_eq_top](declarations/cyclegraph-one-eq-top.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cycleGraph_two_eq_top](declarations/cyclegraph-two-eq-top.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cycleGraph_three_eq_top](declarations/cyclegraph-three-eq-top.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cycleGraph_one_adj](declarations/cyclegraph-one-adj.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cycleGraph_adj](declarations/cyclegraph-adj.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cycleGraph_adj'](declarations/cyclegraph-adj-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cycleGraph_neighborSet](declarations/cyclegraph-neighborset.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cycleGraph_neighborFinset](declarations/cyclegraph-neighborfinset.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cycleGraph_degree_two_le](declarations/cyclegraph-degree-two-le.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cycleGraph_degree_three_le](declarations/cyclegraph-degree-three-le.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pathGraph_le_cycleGraph](declarations/pathgraph-le-cyclegraph.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cycleGraph_preconnected](declarations/cyclegraph-preconnected.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cycleGraph_connected](declarations/cyclegraph-connected.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [cycleGraph_EulerianCircuit_cons](declarations/cyclegraph-euleriancircuit-cons.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [cycleGraph_EulerianCircuit](declarations/cyclegraph-euleriancircuit.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cycleGraph_EulerianCircuit_cons_length](declarations/cyclegraph-euleriancircuit-cons-length.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cycleGraph_EulerianCircuit_length](declarations/cyclegraph-euleriancircuit-length.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=071f6bc0314b1a44a0119a13e3304ea4d89d13fde0b4e116c59af4f578a9ebc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant5e0a14fd440ad5a36c589f6ddd750f09cd5479071f83ee1b520f4c3740110f99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
