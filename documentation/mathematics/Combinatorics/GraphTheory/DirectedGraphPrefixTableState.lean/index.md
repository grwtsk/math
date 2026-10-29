# Directed Graph Prefix Table State

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdc163ad6de5c4c0f69405f1d2cdcd20b137d037`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/DirectedGraphPrefixTableState.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [State](declarations/state.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rawPacked](declarations/rawpacked.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [representation](declarations/representation.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [decode](declarations/decode.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [WellFormed](declarations/wellformed.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [node_lookup](declarations/node-lookup.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [parent_lookup](declarations/parent-lookup.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [expand_state](declarations/expand-state.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [decodeSlot_state](declarations/decodeslot-state.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [expandDictionary_state](declarations/expanddictionary-state.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [expandedPacked_state](declarations/expandedpacked-state.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [decode_eq_unpack](declarations/decode-eq-unpack.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unpack_success](declarations/unpack-success.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decode_success](declarations/decode-success.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [output_valid](declarations/output-valid.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [extendedDictionary](declarations/extendeddictionary.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_extended_iff](declarations/mem-extended-iff.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [extendedNodes](declarations/extendednodes.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [basePacked](declarations/basepacked.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [realPacked](declarations/realpacked.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [base_valid](declarations/base-valid.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [real_dictionary](declarations/real-dictionary.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [update](declarations/update.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [old_cell_stable](declarations/old-cell-stable.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [extended_cells](declarations/extended-cells.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [update_wellFormed](declarations/update-wellformed.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [prefixes_retained](declarations/prefixes-retained.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [unpack_base](declarations/unpack-base.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rawPacked_update](declarations/rawpacked-update.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unpack_update](declarations/unpack-update.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decode_update](declarations/decode-update.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [decode_two_updates](declarations/decode-two-updates.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [decode_grouped](declarations/decode-grouped.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [update_recovers](declarations/update-recovers.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [ofOneStep](declarations/ofonestep.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ofOneStep_wellFormed](declarations/ofonestep-wellformed.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [decode_ofOneStep](declarations/decode-ofonestep.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [empty](declarations/empty.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [empty_wellFormed](declarations/empty-wellformed.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [decode_empty](declarations/decode-empty.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9b467f854e66a9e8b101ac13f32848bfdf6e43d13b280a72069c627c22a3aef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/PrefixTableState.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableState__SourceOccurrence337c990a6d25e8085ca30434.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
