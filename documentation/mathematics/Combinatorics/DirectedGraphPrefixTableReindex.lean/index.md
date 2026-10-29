# Directed Graph Prefix Table Reindex

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e43cf48d7486b9484000da41e1ce545e21de69f3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DirectedGraphPrefixTableReindex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mapEdge](declarations/mapedge.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mapTrace](declarations/maptrace.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mapEdge_injective](declarations/mapedge-injective.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mapTrace_injective](declarations/maptrace-injective.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mapTrace_valid](declarations/maptrace-valid.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mapNode](declarations/mapnode.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mapNode_rank](declarations/mapnode-rank.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mapNode_parent](declarations/mapnode-parent.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [transport](declarations/transport.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [transport_root](declarations/transport-root.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [transport_references](declarations/transport-references.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [transport_node_lookup](declarations/transport-node-lookup.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [expand_map](declarations/expand-map.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decodeSlot_map](declarations/decodeslot-map.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mapRows](declarations/maprows.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [unpack_transport](declarations/unpack-transport.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mapTrace_idxOf](declarations/maptrace-idxof.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [map_cell](declarations/map-cell.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [transport_wellFormed](declarations/transport-wellformed.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [expandDictionary_transport](declarations/expanddictionary-transport.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [decode_transport](declarations/decode-transport.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [compact_decode_commutes](declarations/compact-decode-commutes.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inverse_mapEdge](declarations/inverse-mapedge.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inverse_mapRows](declarations/inverse-maprows.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rootedRows](declarations/rootedrows.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [restoreState](declarations/restorestate.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [restore_transport](declarations/restore-transport.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [certified_transport](declarations/certified-transport.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c20502c109055bd4870037f982ba88c17465f5ad22526720655546beb6e0bb4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/PrefixTableReindex.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReindex.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
