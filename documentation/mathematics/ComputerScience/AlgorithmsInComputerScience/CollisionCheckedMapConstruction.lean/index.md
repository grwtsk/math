# Collision Checked Map Construction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**156 observed declarations and anonymous commands**, 124 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `684e8c0936705c83918d1dc59e13dfb153b48034`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CollisionCheckedMapConstruction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConstructionError](declarations/constructionerror.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [copyRecord](declarations/copyrecord.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [equalRecord](declarations/equalrecord.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [copyRecord_exact](declarations/copyrecord-exact.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [copyRecord_label](declarations/copyrecord-label.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [copyRecord_bytes](declarations/copyrecord-bytes.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [copyRecord_kind](declarations/copyrecord-kind.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [equalRecord_exact](declarations/equalrecord-exact.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [equalRecord_false](declarations/equalrecord-false.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [seedFiles](declarations/seedfiles.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [seedFiles_exact](declarations/seedfiles-exact.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [taxonomy_seed_empty](declarations/taxonomy-seed-empty.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [archive_seed_complete](declarations/archive-seed-complete.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [actionLoop](declarations/actionloop.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [actionLoop_toOption](declarations/actionloop-tooption.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [actionLoop_success_iff](declarations/actionloop-success-iff.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [actionLoop_success_exact](declarations/actionloop-success-exact.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [actionLoop_unique](declarations/actionloop-unique.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [actionLoop_other_area](declarations/actionloop-other-area.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [actionLoop_missing_inserted](declarations/actionloop-missing-inserted.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [actionLoop_equal_coalesced](declarations/actionloop-equal-coalesced.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [actionLoop_unequal_rejected](declarations/actionloop-unequal-rejected.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [actionLoop_never_limit](declarations/actionloop-never-limit.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [actionLoop_collision_selected](declarations/actionloop-collision-selected.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [placeholderLoop](declarations/placeholderloop.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [placeholderLoop_exact](declarations/placeholderloop-exact.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [placeholderLoop_remove_noop](declarations/placeholderloop-remove-noop.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [placeholderLoop_write_overwrites](declarations/placeholderloop-write-overwrites.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [placeholderLoop_existing_overwrites](declarations/placeholderloop-existing-overwrites.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [finishFiles](declarations/finishfiles.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [constructFiles](declarations/constructfiles.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [constructFiles_success_iff](declarations/constructfiles-success-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [constructFiles_success_expected](declarations/constructfiles-success-expected.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [constructFiles_success_exact](declarations/constructfiles-success-exact.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [constructFiles_success_costs](declarations/constructfiles-success-costs.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [constructFiles_success_quota](declarations/constructfiles-success-quota.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [constructFiles_success_bounds](declarations/constructfiles-success-bounds.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [constructFiles_success_unique](declarations/constructfiles-success-unique.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [constructFiles_complete](declarations/constructfiles-complete.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [constructFiles_checked_complete](declarations/constructfiles-checked-complete.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [constructFiles_limit_iff](declarations/constructfiles-limit-iff.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [constructFiles_collision_iff](declarations/constructfiles-collision-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [constructFiles_collision_selected](declarations/constructfiles-collision-selected.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [constructFiles_excess_rejected](declarations/constructfiles-excess-rejected.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [constructFiles_enumeration_bounds](declarations/constructfiles-enumeration-bounds.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [constructFiles_literal_exact](declarations/constructfiles-literal-exact.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [constructFiles_literal_bounds](declarations/constructfiles-literal-bounds.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [constructFiles_decoded_literal_bounds](declarations/constructfiles-decoded-literal-bounds.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `inductive` | [Origin](declarations/origin.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `structure` | [Roots](declarations/roots.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [RoutedAction](declarations/routedaction.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [WriteSource](declarations/writesource-source-edition-2.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [originRoot](declarations/originroot.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [writeSource](declarations/writesource.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [writeSource_exact](declarations/writesource-exact.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [source_origin_root](declarations/source-origin-root.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [destination_origin_root](declarations/destination-origin-root.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [preservation_origin_root](declarations/preservation-origin-root.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [archiveWrites](declarations/archivewrites.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [actionWrites](declarations/actionwrites.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [emptyWrites](declarations/emptywrites.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [writesMatch](declarations/writesmatch.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [constructWrites](declarations/constructwrites.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [archiveWrites_keys](declarations/archivewrites-keys.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [archiveWrites_records](declarations/archivewrites-records.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [archiveWrites_unique](declarations/archivewrites-unique.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [actionWrites_unique](declarations/actionwrites-unique.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [actionWrites_other_area](declarations/actionwrites-other-area.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [actionWrites_first_source_retained](declarations/actionwrites-first-source-retained.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [actionWrites_new_source_selected](declarations/actionwrites-new-source-selected.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [emptyWrites_unique](declarations/emptywrites-unique.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [emptyWrites_missing_nonempty_rejected](declarations/emptywrites-missing-nonempty-rejected.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [emptyWrites_present_source_retained](declarations/emptywrites-present-source-retained.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [emptyWrites_empty_source_selected](declarations/emptywrites-empty-source-selected.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [writesMatch_exact](declarations/writesmatch-exact.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [writesMatch_record_permutation](declarations/writesmatch-record-permutation.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [writesMatch_key_domain](declarations/writesmatch-key-domain.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [writesMatch_payload_metadata_sum](declarations/writesmatch-payload-metadata-sum.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [fillEmptyWrites](declarations/fillemptywrites.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [emptyAdmitted](declarations/emptyadmitted.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [emptyWrites_success_fill](declarations/emptywrites-success-fill.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [emptyWrites_complete](declarations/emptywrites-complete.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [emptyWrites_success_allowed](declarations/emptywrites-success-allowed.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [emptyWrites_success_iff](declarations/emptywrites-success-iff.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [constructWrites_success_iff](declarations/constructwrites-success-iff.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [constructWrites_success_match](declarations/constructwrites-success-match.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [constructWrites_success_unique](declarations/constructwrites-success-unique.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [constructWrites_success_full_records](declarations/constructwrites-success-full-records.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [constructWrites_success_exact_keys](declarations/constructwrites-success-exact-keys.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [constructWrites_success_byte_bounds](declarations/constructwrites-success-byte-bounds.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [overwrite_member_sources](declarations/overwrite-member-sources.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [actionWrites_preserves](declarations/actionwrites-preserves.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [emptyWrites_preserves](declarations/emptywrites-preserves.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [actionWrites_preserves_lookup](declarations/actionwrites-preserves-lookup.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [actionWrites_append](declarations/actionwrites-append.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [actionWrites_first_choice_exact](declarations/actionwrites-first-choice-exact.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [emptyWrites_preserves_lookup](declarations/emptywrites-preserves-lookup.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [constructWrites_preserves_selected_source](declarations/constructwrites-preserves-selected-source.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [archiveWrites_lookup](declarations/archivewrites-lookup.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [constructWrites_archive_source_priority](declarations/constructwrites-archive-source-priority.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [selectedSource](declarations/selectedsource.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [constructWrites_source_coverage](declarations/constructwrites-source-coverage.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `abbrev` | [DirectoryMap](declarations/directorymap.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [seedDirectories](declarations/seeddirectories.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [parentDirectoryFold](declarations/parentdirectoryfold.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [constructDirectories](declarations/constructdirectories.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [lexicalParents](declarations/lexicalparents.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [lexicalParent](declarations/lexicalparent.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [lexicalParents_exact](declarations/lexicalparents-exact.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [lexicalParent_strict_prefix](declarations/lexicalparent-strict-prefix.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [lexicalParent_nonempty](declarations/lexicalparent-nonempty.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [seedDirectories_empty](declarations/seeddirectories-empty.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [seedDirectories_taxonomy_empty_ignored](declarations/seeddirectories-taxonomy-empty-ignored.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [seedDirectories_archive_empty_retained](declarations/seeddirectories-archive-empty-retained.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [zeroFold_unique](declarations/zerofold-unique.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [seedDirectories_unique](declarations/seeddirectories-unique.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [parentDirectoryFold_unique](declarations/parentdirectoryfold-unique.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [constructDirectories_unique](declarations/constructdirectories-unique.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [zeroFold_lookup](declarations/zerofold-lookup.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [seedDirectories_lookup](declarations/seeddirectories-lookup.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [parentDirectoryFold_lookup](declarations/parentdirectoryfold-lookup.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [lexicalParents_order_independent](declarations/lexicalparents-order-independent.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [constructDirectories_lookup](declarations/constructdirectories-lookup.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [constructDirectories_parent_coverage](declarations/constructdirectories-parent-coverage.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [constructDirectories_no_extra](declarations/constructdirectories-no-extra.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [fixture_taxonomy_constructed](declarations/fixture-taxonomy-constructed.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [fixture_archive_constructed](declarations/fixture-archive-constructed.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [fixture_conflict_rejected](declarations/fixture-conflict-rejected.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [fixture_kind_conflict_rejected](declarations/fixture-kind-conflict-rejected.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [fixture_length_conflict_rejected](declarations/fixture-length-conflict-rejected.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [fixture_archive_seed_conflict_rejected](declarations/fixture-archive-seed-conflict-rejected.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [fixture_other_area_conflict_ignored](declarations/fixture-other-area-conflict-ignored.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [fixture_archive_placeholder_ignored](declarations/fixture-archive-placeholder-ignored.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [fixture_nonempty_replaced_by_placeholder](declarations/fixture-nonempty-replaced-by-placeholder.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [fixture_final_quota_not_prefix_quota](declarations/fixture-final-quota-not-prefix-quota.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [fixture_excess_output_rejected](declarations/fixture-excess-output-rejected.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [fixture_empty_both_constructed](declarations/fixture-empty-both-constructed.md) | 1127 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [concrete_directory_closure](declarations/concrete-directory-closure.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [fixture_unicode_lexical_parents](declarations/fixture-unicode-lexical-parents.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [fixture_leading_slash_has_no_empty_parent](declarations/fixture-leading-slash-has-no-empty-parent.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [fixture_trailing_slash_parent_retained](declarations/fixture-trailing-slash-parent-retained.md) | 1142 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [fixture_no_slash_has_no_parent](declarations/fixture-no-slash-has-no-parent.md) | 1144 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [fixtureRoots](declarations/fixtureroots.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [fixtureRoutedActions](declarations/fixtureroutedactions.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [fixture_write_origins_all_routed](declarations/fixture-write-origins-all-routed.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [fixture_write_archive_source_first](declarations/fixture-write-archive-source-first.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [fixture_write_first_action_source_wins](declarations/fixture-write-first-action-source-wins.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [fixture_write_empty_source_synthesized](declarations/fixture-write-empty-source-synthesized.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [fixture_write_missing_nonempty_rejected](declarations/fixture-write-missing-nonempty-rejected.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [fixture_write_missing_zero_lean_rejected](declarations/fixture-write-missing-zero-lean-rejected.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [fixture_write_metadata_mismatch_rejected](declarations/fixture-write-metadata-mismatch-rejected.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [fixture_write_extra_target_rejected](declarations/fixture-write-extra-target-rejected.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [fixtureParents](declarations/fixtureparents.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [fixture_taxonomy_directories_closed](declarations/fixture-taxonomy-directories-closed.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [fixture_archive_directories_closed](declarations/fixture-archive-directories-closed.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42e7c6e0ab958dd6ab93e646f54ed13398e16cd35a834685370b555a33a37826 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CollisionCheckedMapConstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
