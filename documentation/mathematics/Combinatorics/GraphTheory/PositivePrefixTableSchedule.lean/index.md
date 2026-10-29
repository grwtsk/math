# Positive Prefix Table Schedule

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**76 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableSchedule.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `902c14fc3565e07c0380a1cb04860978835c7ce4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/PositivePrefixTableSchedule.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](declarations/loopvertexdecidableeq.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [loopTagDecidableEq](declarations/looptagdecidableeq.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [falseTag](declarations/falsetag.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trueTag](declarations/truetag.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tags_distinct](declarations/tags-distinct.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [falseOccurrence](declarations/falseoccurrence.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [trueOccurrence](declarations/trueoccurrence.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [seedRows](declarations/seedrows.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [seed](declarations/seed.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [before](declarations/before.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [retainedRows](declarations/retainedrows.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [seed_inventory](declarations/seed-inventory.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [before_dictionary](declarations/before-dictionary.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [before_wellFormed](declarations/before-wellformed.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [before_nodes](declarations/before-nodes.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [before_actual_decode](declarations/before-actual-decode.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [before_realEntries](declarations/before-realentries.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [before_realRows](declarations/before-realrows.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [after](declarations/after.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [retained_inventory](declarations/retained-inventory.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [after_wellFormed](declarations/after-wellformed.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [after_dictionary](declarations/after-dictionary.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [after_nodes](declarations/after-nodes.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [after_references](declarations/after-references.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [after_actual_decode](declarations/after-actual-decode.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [actual_unused_branch_removed](declarations/actual-unused-branch-removed.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [actual_old_false_slot_remapped](declarations/actual-old-false-slot-remapped.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [actual_parent_slot_remapped](declarations/actual-parent-slot-remapped.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [actual_old_true_slot_removed](declarations/actual-old-true-slot-removed.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `example` | [(anonymous)](declarations/example-source-edition-6.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [stale](declarations/stale.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [stale_wellFormed](declarations/stale-wellformed.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [stale_actual_decode](declarations/stale-actual-decode.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [stale_histories_changed](declarations/stale-histories-changed.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [parallelRows](declarations/parallelrows.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [post](declarations/post.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [direct](declarations/direct.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [stalePost](declarations/stalepost.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [post_actual_update](declarations/post-actual-update.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [post_wellFormed](declarations/post-wellformed.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [post_dictionary](declarations/post-dictionary.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [post_references](declarations/post-references.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [post_actual_decode](declarations/post-actual-decode.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [direct_dictionary](declarations/direct-dictionary.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [direct_references](declarations/direct-references.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [actual_checkpoint_histories](declarations/actual-checkpoint-histories.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [actual_arrays_differ](declarations/actual-arrays-differ.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [stalePost_wellFormed](declarations/stalepost-wellformed.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [stalePost_bounds](declarations/stalepost-bounds.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [stalePost_actual_decode](declarations/stalepost-actual-decode.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [stale_slots_change_histories](declarations/stale-slots-change-histories.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [actions](declarations/actions.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [scheduled](declarations/scheduled.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [finalRows](declarations/finalrows.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [scheduled_actual_producer](declarations/scheduled-actual-producer.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [post_realRows](declarations/post-realrows.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [final_inventory](declarations/final-inventory.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [scheduled_dictionary](declarations/scheduled-dictionary.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [scheduled_references](declarations/scheduled-references.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [scheduled_wellFormed](declarations/scheduled-wellformed.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [scheduled_actual_decode](declarations/scheduled-actual-decode.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [actual_erased_schedule](declarations/actual-erased-schedule.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [after_slots_preserved_to_post](declarations/after-slots-preserved-to-post.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [composedLookup](declarations/composedlookup.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [directLookup](declarations/directlookup.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [composed_lookup_none](declarations/composed-lookup-none.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [direct_lookup_some](declarations/direct-lookup-some.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [matching_endpoint_dictionaries](declarations/matching-endpoint-dictionaries.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [actual_partial_remap_composition_failure](declarations/actual-partial-remap-composition-failure.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `example` | [(anonymous)](declarations/example-source-edition-5.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [boolQuiver](declarations/boolquiver.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [boolTagDecidableEq](declarations/booltagdecidableeq.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `example` | [(anonymous)](declarations/example.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc5ed5e3cce539b2ca4c72e9f5dc3a08e951b3a06b4e8f0e2c4b6faef5c219c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/Checks/Positive/PrefixTableSchedule.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/PrefixTableSchedule.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
