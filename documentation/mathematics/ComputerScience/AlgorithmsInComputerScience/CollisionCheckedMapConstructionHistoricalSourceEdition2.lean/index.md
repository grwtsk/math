# Collision Checked Map Construction Historical Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**156 observed declarations and anonymous commands**, 124 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b04e2f2be08ade66e6e69b2e28fd0932ecf0f1a`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CollisionCheckedMapConstructionHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConstructionError](declarations/constructionerror.md) | 15 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `def` | [copyRecord](declarations/copyrecord.md) | 22 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `def` | [equalRecord](declarations/equalrecord.md) | 24 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `theorem` | [copyRecord_exact](declarations/copyrecord-exact.md) | 28 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `theorem` | [copyRecord_label](declarations/copyrecord-label.md) | 30 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `theorem` | [copyRecord_bytes](declarations/copyrecord-bytes.md) | 32 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `theorem` | [copyRecord_kind](declarations/copyrecord-kind.md) | 34 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `theorem` | [equalRecord_exact](declarations/equalrecord-exact.md) | 36 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [equalRecord_false](declarations/equalrecord-false.md) | 40 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `def` | [seedFiles](declarations/seedfiles.md) | 43 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [seedFiles_exact](declarations/seedfiles-exact.md) | 46 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `theorem` | [taxonomy_seed_empty](declarations/taxonomy-seed-empty.md) | 50 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [archive_seed_complete](declarations/archive-seed-complete.md) | 52 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `def` | [actionLoop](declarations/actionloop.md) | 55 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [actionLoop_toOption](declarations/actionloop-tooption.md) | 67 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [actionLoop_success_iff](declarations/actionloop-success-iff.md) | 89 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [actionLoop_success_exact](declarations/actionloop-success-exact.md) | 95 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [actionLoop_unique](declarations/actionloop-unique.md) | 100 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [actionLoop_other_area](declarations/actionloop-other-area.md) | 106 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [actionLoop_missing_inserted](declarations/actionloop-missing-inserted.md) | 111 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [actionLoop_equal_coalesced](declarations/actionloop-equal-coalesced.md) | 118 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [actionLoop_unequal_rejected](declarations/actionloop-unequal-rejected.md) | 125 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [actionLoop_never_limit](declarations/actionloop-never-limit.md) | 132 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [actionLoop_collision_selected](declarations/actionloop-collision-selected.md) | 148 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `def` | [placeholderLoop](declarations/placeholderloop.md) | 175 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [placeholderLoop_exact](declarations/placeholderloop-exact.md) | 178 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [placeholderLoop_remove_noop](declarations/placeholderloop-remove-noop.md) | 182 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [placeholderLoop_write_overwrites](declarations/placeholderloop-write-overwrites.md) | 186 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `theorem` | [placeholderLoop_existing_overwrites](declarations/placeholderloop-existing-overwrites.md) | 192 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `def` | [finishFiles](declarations/finishfiles.md) | 198 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `def` | [constructFiles](declarations/constructfiles.md) | 201 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [constructFiles_success_iff](declarations/constructfiles-success-iff.md) | 208 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [constructFiles_success_expected](declarations/constructfiles-success-expected.md) | 228 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [constructFiles_success_exact](declarations/constructfiles-success-exact.md) | 232 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [constructFiles_success_costs](declarations/constructfiles-success-costs.md) | 236 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [constructFiles_success_quota](declarations/constructfiles-success-quota.md) | 240 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [constructFiles_success_bounds](declarations/constructfiles-success-bounds.md) | 244 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [constructFiles_success_unique](declarations/constructfiles-success-unique.md) | 249 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [constructFiles_complete](declarations/constructfiles-complete.md) | 253 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [constructFiles_checked_complete](declarations/constructfiles-checked-complete.md) | 257 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [constructFiles_limit_iff](declarations/constructfiles-limit-iff.md) | 264 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `theorem` | [constructFiles_collision_iff](declarations/constructfiles-collision-iff.md) | 279 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [constructFiles_collision_selected](declarations/constructfiles-collision-selected.md) | 287 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `theorem` | [constructFiles_excess_rejected](declarations/constructfiles-excess-rejected.md) | 292 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `theorem` | [constructFiles_enumeration_bounds](declarations/constructfiles-enumeration-bounds.md) | 299 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `theorem` | [constructFiles_literal_exact](declarations/constructfiles-literal-exact.md) | 305 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [constructFiles_literal_bounds](declarations/constructfiles-literal-bounds.md) | 315 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `theorem` | [constructFiles_decoded_literal_bounds](declarations/constructfiles-decoded-literal-bounds.md) | 326 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `inductive` | [Origin](declarations/origin.md) | 341 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `structure` | [Roots](declarations/roots.md) | 345 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `structure` | [RoutedAction](declarations/routedaction.md) | 352 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `structure` | [WriteSource](declarations/writesource.md) | 358 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `def` | [originRoot](declarations/originroot.md) | 365 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `def` | [writeSource](declarations/writesource-source-edition-2.md) | 370 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `theorem` | [writeSource_exact](declarations/writesource-exact.md) | 373 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `theorem` | [source_origin_root](declarations/source-origin-root.md) | 377 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `theorem` | [destination_origin_root](declarations/destination-origin-root.md) | 379 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `theorem` | [preservation_origin_root](declarations/preservation-origin-root.md) | 382 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `def` | [archiveWrites](declarations/archivewrites.md) | 385 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `def` | [actionWrites](declarations/actionwrites.md) | 388 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `def` | [emptyWrites](declarations/emptywrites.md) | 396 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `def` | [writesMatch](declarations/writesmatch.md) | 406 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `def` | [constructWrites](declarations/constructwrites.md) | 412 | `BLOCKED_SOURCE_DEPENDENCY` |
| 64 | `theorem` | [archiveWrites_keys](declarations/archivewrites-keys.md) | 420 | `BLOCKED_SOURCE_DEPENDENCY` |
| 65 | `theorem` | [archiveWrites_records](declarations/archivewrites-records.md) | 424 | `BLOCKED_SOURCE_DEPENDENCY` |
| 66 | `theorem` | [archiveWrites_unique](declarations/archivewrites-unique.md) | 428 | `BLOCKED_SOURCE_DEPENDENCY` |
| 67 | `theorem` | [actionWrites_unique](declarations/actionwrites-unique.md) | 431 | `BLOCKED_SOURCE_DEPENDENCY` |
| 68 | `theorem` | [actionWrites_other_area](declarations/actionwrites-other-area.md) | 441 | `BLOCKED_SOURCE_DEPENDENCY` |
| 69 | `theorem` | [actionWrites_first_source_retained](declarations/actionwrites-first-source-retained.md) | 446 | `BLOCKED_SOURCE_DEPENDENCY` |
| 70 | `theorem` | [actionWrites_new_source_selected](declarations/actionwrites-new-source-selected.md) | 452 | `BLOCKED_SOURCE_DEPENDENCY` |
| 71 | `theorem` | [emptyWrites_unique](declarations/emptywrites-unique.md) | 460 | `BLOCKED_SOURCE_DEPENDENCY` |
| 72 | `theorem` | [emptyWrites_missing_nonempty_rejected](declarations/emptywrites-missing-nonempty-rejected.md) | 474 | `BLOCKED_SOURCE_DEPENDENCY` |
| 73 | `theorem` | [emptyWrites_present_source_retained](declarations/emptywrites-present-source-retained.md) | 480 | `BLOCKED_SOURCE_DEPENDENCY` |
| 74 | `theorem` | [emptyWrites_empty_source_selected](declarations/emptywrites-empty-source-selected.md) | 486 | `BLOCKED_SOURCE_DEPENDENCY` |
| 75 | `theorem` | [writesMatch_exact](declarations/writesmatch-exact.md) | 493 | `BLOCKED_SOURCE_DEPENDENCY` |
| 76 | `theorem` | [writesMatch_record_permutation](declarations/writesmatch-record-permutation.md) | 506 | `BLOCKED_SOURCE_DEPENDENCY` |
| 77 | `theorem` | [writesMatch_key_domain](declarations/writesmatch-key-domain.md) | 519 | `BLOCKED_SOURCE_DEPENDENCY` |
| 78 | `theorem` | [writesMatch_payload_metadata_sum](declarations/writesmatch-payload-metadata-sum.md) | 524 | `BLOCKED_SOURCE_DEPENDENCY` |
| 79 | `def` | [fillEmptyWrites](declarations/fillemptywrites.md) | 531 | `BLOCKED_SOURCE_DEPENDENCY` |
| 80 | `def` | [emptyAdmitted](declarations/emptyadmitted.md) | 536 | `BLOCKED_SOURCE_DEPENDENCY` |
| 81 | `theorem` | [emptyWrites_success_fill](declarations/emptywrites-success-fill.md) | 539 | `BLOCKED_SOURCE_DEPENDENCY` |
| 82 | `theorem` | [emptyWrites_complete](declarations/emptywrites-complete.md) | 555 | `BLOCKED_SOURCE_DEPENDENCY` |
| 83 | `theorem` | [emptyWrites_success_allowed](declarations/emptywrites-success-allowed.md) | 575 | `BLOCKED_SOURCE_DEPENDENCY` |
| 84 | `theorem` | [emptyWrites_success_iff](declarations/emptywrites-success-iff.md) | 605 | `BLOCKED_SOURCE_DEPENDENCY` |
| 85 | `theorem` | [constructWrites_success_iff](declarations/constructwrites-success-iff.md) | 615 | `BLOCKED_SOURCE_DEPENDENCY` |
| 86 | `theorem` | [constructWrites_success_match](declarations/constructwrites-success-match.md) | 643 | `BLOCKED_SOURCE_DEPENDENCY` |
| 87 | `theorem` | [constructWrites_success_unique](declarations/constructwrites-success-unique.md) | 657 | `BLOCKED_SOURCE_DEPENDENCY` |
| 88 | `theorem` | [constructWrites_success_full_records](declarations/constructwrites-success-full-records.md) | 676 | `BLOCKED_SOURCE_DEPENDENCY` |
| 89 | `theorem` | [constructWrites_success_exact_keys](declarations/constructwrites-success-exact-keys.md) | 685 | `BLOCKED_SOURCE_DEPENDENCY` |
| 90 | `theorem` | [constructWrites_success_byte_bounds](declarations/constructwrites-success-byte-bounds.md) | 694 | `BLOCKED_SOURCE_DEPENDENCY` |
| 91 | `theorem` | [overwrite_member_sources](declarations/overwrite-member-sources.md) | 708 | `BLOCKED_SOURCE_DEPENDENCY` |
| 92 | `theorem` | [actionWrites_preserves](declarations/actionwrites-preserves.md) | 715 | `BLOCKED_SOURCE_DEPENDENCY` |
| 93 | `theorem` | [emptyWrites_preserves](declarations/emptywrites-preserves.md) | 735 | `BLOCKED_SOURCE_DEPENDENCY` |
| 94 | `theorem` | [actionWrites_preserves_lookup](declarations/actionwrites-preserves-lookup.md) | 759 | `BLOCKED_SOURCE_DEPENDENCY` |
| 95 | `theorem` | [actionWrites_append](declarations/actionwrites-append.md) | 776 | `BLOCKED_SOURCE_DEPENDENCY` |
| 96 | `theorem` | [actionWrites_first_choice_exact](declarations/actionwrites-first-choice-exact.md) | 784 | `BLOCKED_SOURCE_DEPENDENCY` |
| 97 | `theorem` | [emptyWrites_preserves_lookup](declarations/emptywrites-preserves-lookup.md) | 792 | `BLOCKED_SOURCE_DEPENDENCY` |
| 98 | `theorem` | [constructWrites_preserves_selected_source](declarations/constructwrites-preserves-selected-source.md) | 813 | `BLOCKED_SOURCE_DEPENDENCY` |
| 99 | `theorem` | [archiveWrites_lookup](declarations/archivewrites-lookup.md) | 832 | `BLOCKED_SOURCE_DEPENDENCY` |
| 100 | `theorem` | [constructWrites_archive_source_priority](declarations/constructwrites-archive-source-priority.md) | 844 | `BLOCKED_SOURCE_DEPENDENCY` |
| 101 | `def` | [selectedSource](declarations/selectedsource.md) | 854 | `BLOCKED_SOURCE_DEPENDENCY` |
| 102 | `theorem` | [constructWrites_source_coverage](declarations/constructwrites-source-coverage.md) | 862 | `BLOCKED_SOURCE_DEPENDENCY` |
| 103 | `abbrev` | [DirectoryMap](declarations/directorymap.md) | 896 | `BLOCKED_SOURCE_DEPENDENCY` |
| 104 | `def` | [seedDirectories](declarations/seeddirectories.md) | 898 | `BLOCKED_SOURCE_DEPENDENCY` |
| 105 | `def` | [parentDirectoryFold](declarations/parentdirectoryfold.md) | 902 | `BLOCKED_SOURCE_DEPENDENCY` |
| 106 | `def` | [constructDirectories](declarations/constructdirectories.md) | 907 | `BLOCKED_SOURCE_DEPENDENCY` |
| 107 | `def` | [lexicalParents](declarations/lexicalparents.md) | 915 | `BLOCKED_SOURCE_DEPENDENCY` |
| 108 | `def` | [lexicalParent](declarations/lexicalparent.md) | 920 | `BLOCKED_SOURCE_DEPENDENCY` |
| 109 | `theorem` | [lexicalParents_exact](declarations/lexicalparents-exact.md) | 924 | `BLOCKED_SOURCE_DEPENDENCY` |
| 110 | `instance` | [(anonymous)](declarations/instance.md) | 932 | `BLOCKED_SOURCE_DEPENDENCY` |
| 111 | `theorem` | [lexicalParent_strict_prefix](declarations/lexicalparent-strict-prefix.md) | 935 | `BLOCKED_SOURCE_DEPENDENCY` |
| 112 | `theorem` | [lexicalParent_nonempty](declarations/lexicalparent-nonempty.md) | 941 | `BLOCKED_SOURCE_DEPENDENCY` |
| 113 | `theorem` | [seedDirectories_empty](declarations/seeddirectories-empty.md) | 946 | `BLOCKED_SOURCE_DEPENDENCY` |
| 114 | `theorem` | [seedDirectories_taxonomy_empty_ignored](declarations/seeddirectories-taxonomy-empty-ignored.md) | 948 | `BLOCKED_SOURCE_DEPENDENCY` |
| 115 | `theorem` | [seedDirectories_archive_empty_retained](declarations/seeddirectories-archive-empty-retained.md) | 950 | `BLOCKED_SOURCE_DEPENDENCY` |
| 116 | `theorem` | [zeroFold_unique](declarations/zerofold-unique.md) | 952 | `BLOCKED_SOURCE_DEPENDENCY` |
| 117 | `theorem` | [seedDirectories_unique](declarations/seeddirectories-unique.md) | 958 | `BLOCKED_SOURCE_DEPENDENCY` |
| 118 | `theorem` | [parentDirectoryFold_unique](declarations/parentdirectoryfold-unique.md) | 972 | `BLOCKED_SOURCE_DEPENDENCY` |
| 119 | `theorem` | [constructDirectories_unique](declarations/constructdirectories-unique.md) | 979 | `BLOCKED_SOURCE_DEPENDENCY` |
| 120 | `theorem` | [zeroFold_lookup](declarations/zerofold-lookup.md) | 985 | `BLOCKED_SOURCE_DEPENDENCY` |
| 121 | `theorem` | [seedDirectories_lookup](declarations/seeddirectories-lookup.md) | 994 | `BLOCKED_SOURCE_DEPENDENCY` |
| 122 | `theorem` | [parentDirectoryFold_lookup](declarations/parentdirectoryfold-lookup.md) | 1012 | `BLOCKED_SOURCE_DEPENDENCY` |
| 123 | `theorem` | [lexicalParents_order_independent](declarations/lexicalparents-order-independent.md) | 1037 | `BLOCKED_SOURCE_DEPENDENCY` |
| 124 | `theorem` | [constructDirectories_lookup](declarations/constructdirectories-lookup.md) | 1049 | `BLOCKED_SOURCE_DEPENDENCY` |
| 125 | `theorem` | [constructDirectories_parent_coverage](declarations/constructdirectories-parent-coverage.md) | 1063 | `BLOCKED_SOURCE_DEPENDENCY` |
| 126 | `theorem` | [constructDirectories_no_extra](declarations/constructdirectories-no-extra.md) | 1070 | `BLOCKED_SOURCE_DEPENDENCY` |
| 127 | `theorem` | [fixture_taxonomy_constructed](declarations/fixture-taxonomy-constructed.md) | 1084 | `BLOCKED_SOURCE_DEPENDENCY` |
| 128 | `theorem` | [fixture_archive_constructed](declarations/fixture-archive-constructed.md) | 1087 | `BLOCKED_SOURCE_DEPENDENCY` |
| 129 | `theorem` | [fixture_conflict_rejected](declarations/fixture-conflict-rejected.md) | 1090 | `BLOCKED_SOURCE_DEPENDENCY` |
| 130 | `theorem` | [fixture_kind_conflict_rejected](declarations/fixture-kind-conflict-rejected.md) | 1093 | `BLOCKED_SOURCE_DEPENDENCY` |
| 131 | `theorem` | [fixture_length_conflict_rejected](declarations/fixture-length-conflict-rejected.md) | 1098 | `BLOCKED_SOURCE_DEPENDENCY` |
| 132 | `theorem` | [fixture_archive_seed_conflict_rejected](declarations/fixture-archive-seed-conflict-rejected.md) | 1103 | `BLOCKED_SOURCE_DEPENDENCY` |
| 133 | `theorem` | [fixture_other_area_conflict_ignored](declarations/fixture-other-area-conflict-ignored.md) | 1107 | `BLOCKED_SOURCE_DEPENDENCY` |
| 134 | `theorem` | [fixture_archive_placeholder_ignored](declarations/fixture-archive-placeholder-ignored.md) | 1111 | `BLOCKED_SOURCE_DEPENDENCY` |
| 135 | `theorem` | [fixture_nonempty_replaced_by_placeholder](declarations/fixture-nonempty-replaced-by-placeholder.md) | 1115 | `BLOCKED_SOURCE_DEPENDENCY` |
| 136 | `theorem` | [fixture_final_quota_not_prefix_quota](declarations/fixture-final-quota-not-prefix-quota.md) | 1119 | `BLOCKED_SOURCE_DEPENDENCY` |
| 137 | `theorem` | [fixture_excess_output_rejected](declarations/fixture-excess-output-rejected.md) | 1123 | `BLOCKED_SOURCE_DEPENDENCY` |
| 138 | `theorem` | [fixture_empty_both_constructed](declarations/fixture-empty-both-constructed.md) | 1127 | `BLOCKED_SOURCE_DEPENDENCY` |
| 139 | `theorem` | [concrete_directory_closure](declarations/concrete-directory-closure.md) | 1130 | `BLOCKED_SOURCE_DEPENDENCY` |
| 140 | `theorem` | [fixture_unicode_lexical_parents](declarations/fixture-unicode-lexical-parents.md) | 1138 | `BLOCKED_SOURCE_DEPENDENCY` |
| 141 | `theorem` | [fixture_leading_slash_has_no_empty_parent](declarations/fixture-leading-slash-has-no-empty-parent.md) | 1140 | `BLOCKED_SOURCE_DEPENDENCY` |
| 142 | `theorem` | [fixture_trailing_slash_parent_retained](declarations/fixture-trailing-slash-parent-retained.md) | 1142 | `BLOCKED_SOURCE_DEPENDENCY` |
| 143 | `theorem` | [fixture_no_slash_has_no_parent](declarations/fixture-no-slash-has-no-parent.md) | 1144 | `BLOCKED_SOURCE_DEPENDENCY` |
| 144 | `def` | [fixtureRoots](declarations/fixtureroots.md) | 1146 | `BLOCKED_SOURCE_DEPENDENCY` |
| 145 | `def` | [fixtureRoutedActions](declarations/fixtureroutedactions.md) | 1148 | `BLOCKED_SOURCE_DEPENDENCY` |
| 146 | `theorem` | [fixture_write_origins_all_routed](declarations/fixture-write-origins-all-routed.md) | 1153 | `BLOCKED_SOURCE_DEPENDENCY` |
| 147 | `theorem` | [fixture_write_archive_source_first](declarations/fixture-write-archive-source-first.md) | 1160 | `BLOCKED_SOURCE_DEPENDENCY` |
| 148 | `theorem` | [fixture_write_first_action_source_wins](declarations/fixture-write-first-action-source-wins.md) | 1164 | `BLOCKED_SOURCE_DEPENDENCY` |
| 149 | `theorem` | [fixture_write_empty_source_synthesized](declarations/fixture-write-empty-source-synthesized.md) | 1170 | `BLOCKED_SOURCE_DEPENDENCY` |
| 150 | `theorem` | [fixture_write_missing_nonempty_rejected](declarations/fixture-write-missing-nonempty-rejected.md) | 1174 | `BLOCKED_SOURCE_DEPENDENCY` |
| 151 | `theorem` | [fixture_write_missing_zero_lean_rejected](declarations/fixture-write-missing-zero-lean-rejected.md) | 1178 | `BLOCKED_SOURCE_DEPENDENCY` |
| 152 | `theorem` | [fixture_write_metadata_mismatch_rejected](declarations/fixture-write-metadata-mismatch-rejected.md) | 1182 | `BLOCKED_SOURCE_DEPENDENCY` |
| 153 | `theorem` | [fixture_write_extra_target_rejected](declarations/fixture-write-extra-target-rejected.md) | 1186 | `BLOCKED_SOURCE_DEPENDENCY` |
| 154 | `def` | [fixtureParents](declarations/fixtureparents.md) | 1190 | `BLOCKED_SOURCE_DEPENDENCY` |
| 155 | `theorem` | [fixture_taxonomy_directories_closed](declarations/fixture-taxonomy-directories-closed.md) | 1195 | `BLOCKED_SOURCE_DEPENDENCY` |
| 156 | `theorem` | [fixture_archive_directories_closed](declarations/fixture-archive-directories-closed.md) | 1200 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d0e01e28510634b5462fd192ba1106e23820988b51be66319fb986d48e7b974 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
