# Circulant Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60e10531455fd7c9dc90db8ae9320f7dd352ff8a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/CirculantNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [circulantGraph](declarations/circulantgraph.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [circulantGraph_eq_erase_zero](declarations/circulantgraph-eq-erase-zero.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [circulantGraph_eq_symm](declarations/circulantgraph-eq-symm.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [circulantGraph_adj_translate](declarations/circulantgraph-adj-translate.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [cycleGraph](declarations/cyclegraph.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cycleGraph_zero_adj](declarations/cyclegraph-zero-adj.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [cycleGraph_zero_eq_bot](declarations/cyclegraph-zero-eq-bot.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cycleGraph_one_eq_bot](declarations/cyclegraph-one-eq-bot.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cycleGraph_zero_eq_top](declarations/cyclegraph-zero-eq-top.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cycleGraph_one_eq_top](declarations/cyclegraph-one-eq-top.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cycleGraph_two_eq_top](declarations/cyclegraph-two-eq-top.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cycleGraph_three_eq_top](declarations/cyclegraph-three-eq-top.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cycleGraph_one_adj](declarations/cyclegraph-one-adj.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cycleGraph_adj](declarations/cyclegraph-adj-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cycleGraph_adj'](declarations/cyclegraph-adj.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cycleGraph_neighborSet](declarations/cyclegraph-neighborset.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cycleGraph_neighborFinset](declarations/cyclegraph-neighborfinset.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cycleGraph_degree_two_le](declarations/cyclegraph-degree-two-le.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cycleGraph_degree_three_le](declarations/cyclegraph-degree-three-le.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pathGraph_le_cycleGraph](declarations/pathgraph-le-cyclegraph.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cycleGraph_preconnected](declarations/cyclegraph-preconnected.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cycleGraph_connected](declarations/cyclegraph-connected.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [cycleGraph_EulerianCircuit_cons](declarations/cyclegraph-euleriancircuit-cons.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [cycleGraph_EulerianCircuit](declarations/cyclegraph-euleriancircuit.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cycleGraph_EulerianCircuit_cons_length](declarations/cyclegraph-euleriancircuit-cons-length.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cycleGraph_EulerianCircuit_length](declarations/cyclegraph-euleriancircuit-length.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cede565a9d9c715282a693d400b23ddfca9ac7e29f8f7dfbd1c5e17ba0233ea1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Circulant/Variant32de2c87a395575a895b8f0644750e4cfa9d35b73168156d3a8054c1e28a367f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
