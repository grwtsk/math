# Byte Dictionary And Output Maps

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 61 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d90a5f4c93ca32408a1fc00881a04b0ffd43a7ae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ByteDictionaryAndOutputMaps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [findSlot](declarations/findslot.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [intern](declarations/intern.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [findSlot_sound](declarations/findslot-sound.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [findSlot_none_iff](declarations/findslot-none-iff.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [intern_literal](declarations/intern-literal.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [intern_old_slots](declarations/intern-old-slots.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [intern_prefix](declarations/intern-prefix.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [intern_reuses_exact_slot](declarations/intern-reuses-exact-slot.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [intern_appends_iff_missing](declarations/intern-appends-iff-missing.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [intern_preserves_nodup](declarations/intern-preserves-nodup.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sourceSlot](declarations/sourceslot.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [collect](declarations/collect.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sourcePayload_slot](declarations/sourcepayload-slot.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [collect_binding_order](declarations/collect-binding-order.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [collect_length](declarations/collect-length.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [collect_exact_realization](declarations/collect-exact-realization.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [collect_complete_source_order](declarations/collect-complete-source-order.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [missing_named_source_rejects](declarations/missing-named-source-rejects.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [missing_literal_slot_rejects](declarations/missing-literal-slot-rejects.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [outputKey](declarations/outputkey.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [outputLookup](declarations/outputlookup.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [insertOutput](declarations/insertoutput.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [mergeOutputs](declarations/mergeoutputs.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [outputLookup_none_iff](declarations/outputlookup-none-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [outputLookup_append](declarations/outputlookup-append.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [insertOutput_preserves_lookup](declarations/insertoutput-preserves-lookup.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [insertOutput_contains_row](declarations/insertoutput-contains-row.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [insertOutput_key_inventory](declarations/insertoutput-key-inventory.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [insertOutput_unique](declarations/insertoutput-unique.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mergeOutputs_preserves_lookup](declarations/mergeoutputs-preserves-lookup.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mergeOutputs_covers_rows](declarations/mergeoutputs-covers-rows.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mergeOutputs_key_inventory](declarations/mergeoutputs-key-inventory.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mergeOutputs_unique](declarations/mergeoutputs-unique.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [conflicting_output_rows_rejected](declarations/conflicting-output-rows-rejected.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [renderOutputs_lookup](declarations/renderoutputs-lookup.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [occurrenceOutput](declarations/occurrenceoutput.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [renderOccurrences_covered](declarations/renderoccurrences-covered.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [RawRoute](declarations/rawroute.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [routeBindings](declarations/routebindings.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [retentionCheck](declarations/retentioncheck.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [archiveOutputs](declarations/archiveoutputs.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [placeholderOutputs](declarations/placeholderoutputs.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [Produced](declarations/produced.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [inputCheck](declarations/inputcheck.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [produce](declarations/produce.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [inputCheck_spec](declarations/inputcheck-spec.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [produce_spec](declarations/produce-spec.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [produced_occurrence_order](declarations/produced-occurrence-order.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [produced_occurrence_count](declarations/produced-occurrence-count.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [produced_complete_source_occurrences](declarations/produced-complete-source-occurrences.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [produced_output_keys_unique](declarations/produced-output-keys-unique.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [produced_complete_output_inventory](declarations/produced-complete-output-inventory.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [produced_exact_decode](declarations/produced-exact-decode.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [retentionCheck_exact](declarations/retentioncheck-exact.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [produced_raw_retention_exact_bytes](declarations/produced-raw-retention-exact-bytes.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [collect_source_payloads](declarations/collect-source-payloads.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [produced_raw_retained_payload](declarations/produced-raw-retained-payload.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [produced_binding_multiplicity](declarations/produced-binding-multiplicity.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [intern_preserves_sourcePayload](declarations/intern-preserves-sourcepayload.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [candidateLookup](declarations/candidatelookup.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [candidateLookup_hit_sound](declarations/candidatelookup-hit-sound.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [candidateLookup_miss_iff](declarations/candidatelookup-miss-iff.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [CandidateCoverage](declarations/candidatecoverage.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [complete_candidate_miss_implies_absent](declarations/complete-candidate-miss-implies-absent.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [complete_valid_candidates_find_existing](declarations/complete-valid-candidates-find-existing.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [same_digest_does_not_justify_bucket_omission](declarations/same-digest-does-not-justify-bucket-omission.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [produced_certificate_check](declarations/produced-certificate-check.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [incomplete_source_routes_rejected](declarations/incomplete-source-routes-rejected.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [unretained_raw_routes_rejected](declarations/unretained-raw-routes-rejected.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [nonempty_placeholder_bytes_rejected](declarations/nonempty-placeholder-bytes-rejected.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [successful_production_example](declarations/successful-production-example.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [outputLookup_witness](declarations/outputlookup-witness.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [equal_output_identity](declarations/equal-output-identity.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [insertOutput_record_inventory](declarations/insertoutput-record-inventory.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mergeOutputs_record_inventory](declarations/mergeoutputs-record-inventory.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [produced_complete_output_records](declarations/produced-complete-output-records.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [labelCandidates](declarations/labelcandidates.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [labelCandidates_valid](declarations/labelcandidates-valid.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [labelCandidates_complete](declarations/labelcandidates-complete.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [digest_bucket_finds_literal](declarations/digest-bucket-finds-literal.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [constant_digest_collision_example](declarations/constant-digest-collision-example.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf6bd102c2d814a767d7fb35092a10bac8e30cf0c849c8b25de2aef277459b11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteDictionaryAndOutputMaps.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
