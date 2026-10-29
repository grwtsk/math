# Label Bucket And Metadata Refinement

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6c431b2fa322f7cef5fcc09b696f5759aee50c4`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/LabelBucketAndMetadataRefinement.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [candidateIndices](declarations/candidateindices.md) | 15 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `theorem` | [candidateIndices_valid](declarations/candidateindices-valid.md) | 21 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `theorem` | [candidateIndices_complete](declarations/candidateindices-complete.md) | 41 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `theorem` | [candidateIndices_append_one](declarations/candidateindices-append-one.md) | 58 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `structure` | [BucketState](declarations/bucketstate.md) | 70 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `def` | [BucketInvariant](declarations/bucketinvariant.md) | 75 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [emptyBuckets](declarations/emptybuckets.md) | 78 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [appendBucket](declarations/appendbucket.md) | 80 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [emptyBuckets_invariant](declarations/emptybuckets-invariant.md) | 85 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [appendBucket_selected](declarations/appendbucket-selected.md) | 89 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [appendBucket_other](declarations/appendbucket-other.md) | 93 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `theorem` | [appendBucket_preserves_invariant](declarations/appendbucket-preserves-invariant.md) | 98 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [bucket_valid](declarations/bucket-valid.md) | 107 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [bucket_complete](declarations/bucket-complete.md) | 113 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [bucket_miss_implies_absent](declarations/bucket-miss-implies-absent.md) | 119 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [bucket_existing_literal_found](declarations/bucket-existing-literal-found.md) | 125 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `def` | [maintainBuckets](declarations/maintainbuckets.md) | 134 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [maintain_hit](declarations/maintain-hit.md) | 141 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [maintain_miss](declarations/maintain-miss.md) | 146 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [maintain_invalid_rejects](declarations/maintain-invalid-rejects.md) | 151 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [maintain_preserves_invariant](declarations/maintain-preserves-invariant.md) | 155 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [maintain_literal_exact](declarations/maintain-literal-exact.md) | 173 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [maintain_old_slots](declarations/maintain-old-slots.md) | 191 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [maintain_preserves_nodup](declarations/maintain-preserves-nodup.md) | 212 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [maintain_existing_never_appends](declarations/maintain-existing-never-appends.md) | 233 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `def` | [maintainMany](declarations/maintainmany.md) | 239 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [maintainMany_preserves_invariant](declarations/maintainmany-preserves-invariant.md) | 245 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [constant_label_maintained_collision](declarations/constant-label-maintained-collision.md) | 262 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `abbrev` | [Targets](declarations/targets.md) | 271 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `def` | [targetLookup](declarations/targetlookup.md) | 273 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `def` | [targetInsert](declarations/targetinsert.md) | 279 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [targetLookup_sound](declarations/targetlookup-sound.md) | 284 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [targetLookup_none_iff](declarations/targetlookup-none-iff.md) | 303 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [targetLookup_append_old](declarations/targetlookup-append-old.md) | 313 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [targetLookup_append_new](declarations/targetlookup-append-new.md) | 331 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [targetInsert_hit](declarations/targetinsert-hit.md) | 344 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [targetInsert_conflict](declarations/targetinsert-conflict.md) | 348 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [targetInsert_fresh](declarations/targetinsert-fresh.md) | 352 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [targetInsert_lookup](declarations/targetinsert-lookup.md) | 357 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [targetInsert_stable_slots](declarations/targetinsert-stable-slots.md) | 374 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [targetInsert_unique](declarations/targetinsert-unique.md) | 393 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `theorem` | [target_slot_in_range](declarations/target-slot-in-range.md) | 418 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [target_slot_injective](declarations/target-slot-injective.md) | 422 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `structure` | [Route](declarations/route.md) | 428 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `structure` | [Lowered](declarations/lowered.md) | 434 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `def` | [lowerRoute](declarations/lowerroute.md) | 439 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [lowerRoute_routes_exact](declarations/lowerroute-routes-exact.md) | 443 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `theorem` | [lowerRoute_metadata_exact](declarations/lowerroute-metadata-exact.md) | 448 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `theorem` | [lowerRoute_preserves_alignment](declarations/lowerroute-preserves-alignment.md) | 452 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `theorem` | [lowerRoute_metadata_slot](declarations/lowerroute-metadata-slot.md) | 458 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `def` | [attachOutputs](declarations/attachoutputs.md) | 465 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `theorem` | [attachOutputs_keys_exact](declarations/attachoutputs-keys-exact.md) | 472 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `theorem` | [attachOutputs_length](declarations/attachoutputs-length.md) | 490 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `theorem` | [attachOutputs_missing_rejects](declarations/attachoutputs-missing-rejects.md) | 496 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `theorem` | [attachOutputs_exact_records](declarations/attachoutputs-exact-records.md) | 500 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `def` | [attachOccurrences](declarations/attachoccurrences.md) | 511 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `theorem` | [attachOccurrences_exact](declarations/attachoccurrences-exact.md) | 520 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `theorem` | [attachOccurrences_length](declarations/attachoccurrences-length.md) | 541 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `theorem` | [attachOccurrences_missing_rejects](declarations/attachoccurrences-missing-rejects.md) | 546 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `theorem` | [attachOccurrences_unmarked_rejects](declarations/attachoccurrences-unmarked-rejects.md) | 550 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `theorem` | [attachOccurrences_append](declarations/attachoccurrences-append.md) | 554 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `theorem` | [attachOccurrences_repetition](declarations/attachoccurrences-repetition.md) | 573 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `theorem` | [distinct_metadata_shared_output](declarations/distinct-metadata-shared-output.md) | 578 | `BLOCKED_SOURCE_DEPENDENCY` |
| 64 | `def` | [markedIndices](declarations/markedindices.md) | 585 | `BLOCKED_SOURCE_DEPENDENCY` |
| 65 | `def` | [MetadataAligned](declarations/metadataaligned.md) | 591 | `BLOCKED_SOURCE_DEPENDENCY` |
| 66 | `theorem` | [empty_lowering_aligned](declarations/empty-lowering-aligned.md) | 594 | `BLOCKED_SOURCE_DEPENDENCY` |
| 67 | `theorem` | [lowerRoute_flags_exact](declarations/lowerroute-flags-exact.md) | 597 | `BLOCKED_SOURCE_DEPENDENCY` |
| 68 | `theorem` | [alignment_includes_lengths](declarations/alignment-includes-lengths.md) | 602 | `BLOCKED_SOURCE_DEPENDENCY` |
| 69 | `theorem` | [attachOccurrences_shift](declarations/attachoccurrences-shift.md) | 607 | `BLOCKED_SOURCE_DEPENDENCY` |
| 70 | `theorem` | [reattach_all_marked_metadata](declarations/reattach-all-marked-metadata.md) | 619 | `BLOCKED_SOURCE_DEPENDENCY` |
| 71 | `theorem` | [lowering_assembly_reattachment_history](declarations/lowering-assembly-reattachment-history.md) | 635 | `BLOCKED_SOURCE_DEPENDENCY` |
| 72 | `theorem` | [lowering_assembly_reattachment_outputs](declarations/lowering-assembly-reattachment-outputs.md) | 645 | `BLOCKED_SOURCE_DEPENDENCY` |
| 73 | `theorem` | [reattached_occurrences_are_exact_history](declarations/reattached-occurrences-are-exact-history.md) | 656 | `BLOCKED_SOURCE_DEPENDENCY` |
| 74 | `theorem` | [repeated_metadata_route_preserves_multiplicity](declarations/repeated-metadata-route-preserves-multiplicity.md) | 662 | `BLOCKED_SOURCE_DEPENDENCY` |
| 75 | `theorem` | [candidateIndices_exact_labels](declarations/candidateindices-exact-labels.md) | 666 | `BLOCKED_SOURCE_DEPENDENCY` |
| 76 | `theorem` | [maintained_bucket_labels](declarations/maintained-bucket-labels.md) | 687 | `BLOCKED_SOURCE_DEPENDENCY` |
| 77 | `theorem` | [valid_candidates_never_malformed](declarations/valid-candidates-never-malformed.md) | 694 | `BLOCKED_SOURCE_DEPENDENCY` |
| 78 | `theorem` | [valid_maintained_bucket_total](declarations/valid-maintained-bucket-total.md) | 704 | `BLOCKED_SOURCE_DEPENDENCY` |
| 79 | `theorem` | [literal_metadata_roundtrip](declarations/literal-metadata-roundtrip.md) | 716 | `BLOCKED_SOURCE_DEPENDENCY` |
| 80 | `theorem` | [produced_metadata_roundtrip](declarations/produced-metadata-roundtrip.md) | 724 | `BLOCKED_SOURCE_DEPENDENCY` |
| 81 | `def` | [TargetRepresentation](declarations/targetrepresentation.md) | 737 | `BLOCKED_SOURCE_DEPENDENCY` |
| 82 | `theorem` | [targetLookup_append_unrelated](declarations/targetlookup-append-unrelated.md) | 740 | `BLOCKED_SOURCE_DEPENDENCY` |
| 83 | `theorem` | [targetInsert_other_lookup](declarations/targetinsert-other-lookup.md) | 749 | `BLOCKED_SOURCE_DEPENDENCY` |
| 84 | `theorem` | [dictionary_insert_correspondence](declarations/dictionary-insert-correspondence.md) | 766 | `BLOCKED_SOURCE_DEPENDENCY` |
| 85 | `theorem` | [targetLookup_complete](declarations/targetlookup-complete.md) | 779 | `BLOCKED_SOURCE_DEPENDENCY` |
| 86 | `theorem` | [target_slots_dense](declarations/target-slots-dense.md) | 799 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=178880c1959860fa356cda4d31ae438ab44e7c24c4da7741dd4b3bc877378207 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variante2f9fb7e6a70ad7bb71c743179dd1449c83fd5f03503250e8291ac33b2edb6da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
