# Prefix Table Direct Lookup

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55584e6630fa4889e19de96aec865ddc8b2302a7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/PrefixTableDirectLookup.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](declarations/loopvertexdecidableeq.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [loopTagDecidableEq](declarations/looptagdecidableeq.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [falseTag](declarations/falsetag.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trueTag](declarations/truetag.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tags_distinct](declarations/tags-distinct.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [falseOccurrence](declarations/falseoccurrence.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [trueOccurrence](declarations/trueoccurrence.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [seedRows](declarations/seedrows.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [seed](declarations/seed.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [before](declarations/before.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [retainedRows](declarations/retainedrows.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [seed_inventory](declarations/seed-inventory.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [before_dictionary](declarations/before-dictionary.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [before_wellFormed](declarations/before-wellformed.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [before_actual_decode](declarations/before-actual-decode.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [before_realRows](declarations/before-realrows.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [after](declarations/after.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [retained_inventory](declarations/retained-inventory.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [after_wellFormed](declarations/after-wellformed.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [after_dictionary](declarations/after-dictionary.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [after_actual_decode](declarations/after-actual-decode.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [actual_old_false_slot_remapped](declarations/actual-old-false-slot-remapped.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [actual_old_true_slot_removed](declarations/actual-old-true-slot-removed.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [parallelRows](declarations/parallelrows.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [post](declarations/post.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [post_wellFormed](declarations/post-wellformed.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [post_dictionary](declarations/post-dictionary.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [post_actual_decode](declarations/post-actual-decode.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [actions](declarations/actions.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [scheduled](declarations/scheduled.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [finalRows](declarations/finalrows.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [scheduled_actual_producer](declarations/scheduled-actual-producer.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [post_realRows](declarations/post-realrows.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [final_inventory](declarations/final-inventory.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [scheduled_dictionary](declarations/scheduled-dictionary.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [initial](declarations/initial.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [original_real_reference](declarations/original-real-reference.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [unused_slot_bound](declarations/unused-slot-bound.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [unused_slot_not_referenced](declarations/unused-slot-not-referenced.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [actual_first_compaction](declarations/actual-first-compaction.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [post_false_remap](declarations/post-false-remap.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [actual_retained_transport](declarations/actual-retained-transport.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [actual_dropped_transport](declarations/actual-dropped-transport.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [actual_intermediate_append](declarations/actual-intermediate-append.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [actual_supported_equality](declarations/actual-supported-equality.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [actual_referenced_direct_lookup](declarations/actual-referenced-direct-lookup.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [actual_reintroduced_direct_lookup](declarations/actual-reintroduced-direct-lookup.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [actual_endpoint_dictionaries_equal](declarations/actual-endpoint-dictionaries-equal.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [actual_bounded_global_equality_false](declarations/actual-bounded-global-equality-false.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [actual_repeated_direct_searches](declarations/actual-repeated-direct-searches.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [actual_empty_actions_reference](declarations/actual-empty-actions-reference.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [ordered](declarations/ordered.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [ordered_wellFormed](declarations/ordered-wellformed.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [orderedInitial](declarations/orderedinitial.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [actual_distinct_key_order](declarations/actual-distinct-key-order.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [emptyInitial](declarations/emptyinitial.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [actual_empty_support](declarations/actual-empty-support.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [actual_empty_support_references](declarations/actual-empty-support-references.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0909548567958950021f06daf9fb6935e08e739523d22a091506286738b6baf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableDirectLookup.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
