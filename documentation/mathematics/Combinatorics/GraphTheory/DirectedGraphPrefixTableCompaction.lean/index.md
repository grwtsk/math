# Directed Graph Prefix Table Compaction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7585644ab7d689bab3a93dcba1e6a9a4a21b190f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/DirectedGraphPrefixTableCompaction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [traceRows_recoverRows](declarations/tracerows-recoverrows.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [realEntries](declarations/realentries.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [decode_realEntries](declarations/decode-realentries.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [realEntries_valid](declarations/realentries-valid.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [realRows](declarations/realrows.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [traceRows_realRows](declarations/tracerows-realrows.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [realRows_of_decode](declarations/realrows-of-decode.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [compact](declarations/compact.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [compact_root](declarations/compact-root.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [compact_wellFormed](declarations/compact-wellformed.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [compact_dictionary](declarations/compact-dictionary.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [compact_references](declarations/compact-references.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [decode_compact](declarations/decode-compact.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [compact_recovers](declarations/compact-recovers.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [references_decoded](declarations/references-decoded.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [realEntries_mem_old_dictionary](declarations/realentries-mem-old-dictionary.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [realEntries_mem_compact_dictionary](declarations/realentries-mem-compact-dictionary.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [compact_dictionary_subset](declarations/compact-dictionary-subset.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [remap](declarations/remap.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [remap_retained](declarations/remap-retained.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [remap_removed](declarations/remap-removed.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [remap_lookup](declarations/remap-lookup.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [retained_parent_reindex](declarations/retained-parent-reindex.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [reindexReferences](declarations/reindexreferences.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reindexReferences_eq](declarations/reindexreferences-eq.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rooted_unpack_compact](declarations/rooted-unpack-compact.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [certified_compact](declarations/certified-compact.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ed806488669f77374d1a4861634f7cdee5d199aff2855e945c04711520d7ebf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/PrefixTableCompaction.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableCompaction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
