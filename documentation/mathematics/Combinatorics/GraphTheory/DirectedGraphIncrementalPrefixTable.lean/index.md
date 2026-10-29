# Directed Graph Incremental Prefix Table

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8460d6c0d1e45a4f5eb51f1068860a5d15659022`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/DirectedGraphIncrementalPrefixTable.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [prefixEntries](declarations/prefixentries.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [dictionary](declarations/dictionary.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_dictionary_iff](declarations/mem-dictionary-iff.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [dictionary_prefix](declarations/dictionary-prefix.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [dictionary_nodup](declarations/dictionary-nodup.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dictionary_closed](declarations/dictionary-closed.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [dictionary_valid](declarations/dictionary-valid.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [cell](declarations/cell.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [nodes](declarations/nodes.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nodes_prefix](declarations/nodes-prefix.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [old_cell_eq](declarations/old-cell-eq.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nodes_eq_map](declarations/nodes-eq-map.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [old_dictionary_lookup](declarations/old-dictionary-lookup.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [old_node_lookup](declarations/old-node-lookup.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [old_parent_lookup](declarations/old-parent-lookup.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [node_lookup](declarations/node-lookup.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [parent_lookup](declarations/parent-lookup.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nodes_validRanks](declarations/nodes-validranks.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [expand_nodes](declarations/expand-nodes.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [decodeSlot_nodes](declarations/decodeslot-nodes.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [expandDictionary_nodes](declarations/expanddictionary-nodes.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [oldPacked](declarations/oldpacked.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unpack_oldPacked](declarations/unpack-oldpacked.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oldPacked_valid](declarations/oldpacked-valid.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [realPacked](declarations/realpacked.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [new_trace_mem](declarations/new-trace-mem.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [realPacked_dictionary](declarations/realpacked-dictionary.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [representation](declarations/representation.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [expandedPacked_representation](declarations/expandedpacked-representation.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unpack_realPacked](declarations/unpack-realpacked.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decode_representation](declarations/decode-representation.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [real_reference_count](declarations/real-reference-count.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [output_valid](declarations/output-valid.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [output_recovers](declarations/output-recovers.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [expand_old_revision](declarations/expand-old-revision.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [certified_old_references](declarations/certified-old-references.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02ede148bfdb07998ce78cac14b6ec52c2116bd5031129ff708f188933fc7b3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/IncrementalPrefixTable.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/IncrementalPrefixTable__SourceOccurrence275c18cd6c0419db256cebd7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
