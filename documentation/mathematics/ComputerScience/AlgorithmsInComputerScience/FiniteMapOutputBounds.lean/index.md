# Finite Map Output Bounds

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**95 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteMapOutputBounds.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac71bbcb9a6b3c40f90db99e471e6cca32018372`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Files](declarations/files.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [lookup](declarations/lookup.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [overwrite](declarations/overwrite.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [unique](declarations/unique.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lookup_overwrite_same](declarations/lookup-overwrite-same.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lookup_filter_other](declarations/lookup-filter-other.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lookup_overwrite_other](declarations/lookup-overwrite-other.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [overwrite_lookup](declarations/overwrite-lookup.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [overwrite_unique](declarations/overwrite-unique.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lower](declarations/lower.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lower_keys](declarations/lower-keys.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lower_length](declarations/lower-length.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lower_lookup](declarations/lower-lookup.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lower_unique](declarations/lower-unique.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lower_overwrite](declarations/lower-overwrite.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [overwrite_same_path](declarations/overwrite-same-path.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [overwrite_idempotent](declarations/overwrite-idempotent.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [Area](declarations/area.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [FileKind](declarations/filekind.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [Record](declarations/record.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [emptyRecord](declarations/emptyrecord.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [Action](declarations/action.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [PlaceholderKind](declarations/placeholderkind.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [Placeholder](declarations/placeholder.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [actionFold](declarations/actionfold.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [placeholderFold](declarations/placeholderfold.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [actionFold_unique](declarations/actionfold-unique.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [placeholderFold_unique](declarations/placeholderfold-unique.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [lowerAction](declarations/loweraction.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lower_actionFold](declarations/lower-actionfold.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lower_placeholderFold](declarations/lower-placeholderfold.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [Plan](declarations/plan.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [finalRecords](declarations/finalrecords.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [finalCosts](declarations/finalcosts.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [final_lowering_exact](declarations/final-lowering-exact.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [final_records_unique](declarations/final-records-unique.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [taxonomy_records_unique](declarations/taxonomy-records-unique.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [taxonomy_ignores_archive_preimage](declarations/taxonomy-ignores-archive-preimage.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [archive_ignores_placeholders](declarations/archive-ignores-placeholders.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [remove_placeholder_is_noop](declarations/remove-placeholder-is-noop.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [existing_placeholder_is_zero_output](declarations/existing-placeholder-is-zero-output.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [final_costs_unique](declarations/final-costs-unique.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [totalBytes](declarations/totalbytes.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [mapWithin](declarations/mapwithin.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mapWithin_exact](declarations/mapwithin-exact.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [recordsWithin](declarations/recordswithin.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [recordsWithin_exact](declarations/recordswithin-exact.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [record_cost_membership](declarations/record-cost-membership.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [record_cost_sum_exact](declarations/record-cost-sum-exact.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [totalBytes_permutation](declarations/totalbytes-permutation.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mapWithin_permutation](declarations/mapwithin-permutation.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [record_enumeration_bounds](declarations/record-enumeration-bounds.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [excessive_map_count_rejected](declarations/excessive-map-count-rejected.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [excessive_map_bytes_rejected](declarations/excessive-map-bytes-rejected.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [planWithin](declarations/planwithin.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [planWithin_exact](declarations/planwithin-exact.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [checked_final_map_bounds](declarations/checked-final-map-bounds.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [checked_final_record_bounds](declarations/checked-final-record-bounds.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [checked_final_sum_no_wrap](declarations/checked-final-sum-no-wrap.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [checked_final_UInt64_sum](declarations/checked-final-uint64-sum.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [checked_final_sum_prefixes](declarations/checked-final-sum-prefixes.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [checkedActions](declarations/checkedactions.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [checkedActions_exact](declarations/checkedactions-exact.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [expectedRecords](declarations/expectedrecords.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [expected_success_exact](declarations/expected-success-exact.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [expected_success_costs](declarations/expected-success-costs.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [checked_expected_output_bounds](declarations/checked-expected-output-bounds.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [checked_expected_output_keys_unique](declarations/checked-expected-output-keys-unique.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [expected_enumeration_output_bounds](declarations/expected-enumeration-output-bounds.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [checked_both_output_byte_bound](declarations/checked-both-output-byte-bound.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [checked_both_output_count_bound](declarations/checked-both-output-count-bound.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [fixturePlan](declarations/fixtureplan.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [fixture_plan_accepted](declarations/fixture-plan-accepted.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [fixture_taxonomy_exact](declarations/fixture-taxonomy-exact.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [fixture_archive_exact](declarations/fixture-archive-exact.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [fixture_taxonomy_bytes](declarations/fixture-taxonomy-bytes.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [fixture_archive_bytes](declarations/fixture-archive-bytes.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [fixture_repeated_path_shared_once](declarations/fixture-repeated-path-shared-once.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [fixture_same_payload_different_paths_both_counted](declarations/fixture-same-payload-different-paths-both-counted.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [fixture_remove_placeholder_does_not_remove_source_output](declarations/fixture-remove-placeholder-does-not-remove-source-output.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [fixture_zero_placeholder_retained](declarations/fixture-zero-placeholder-retained.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [fixture_archive_preimage_retained](declarations/fixture-archive-preimage-retained.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [fixture_expected_taxonomy_success](declarations/fixture-expected-taxonomy-success.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [fixture_expected_archive_success](declarations/fixture-expected-archive-success.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [placeholder_overwrites_taxonomy_cost_to_zero](declarations/placeholder-overwrites-taxonomy-cost-to-zero.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [taxonomy_placeholder_does_not_change_archive](declarations/taxonomy-placeholder-does-not-change-archive.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [conflictingPlan](declarations/conflictingplan.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [cost_admission_does_not_manufacture_full_record_collision_success](declarations/cost-admission-does-not-manufacture-full-record-collision-success.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [changed_final_cost_is_checked](declarations/changed-final-cost-is-checked.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [initial_archive_cost_is_checked](declarations/initial-archive-cost-is-checked.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [final_zero_overwrite_can_restore_budget](declarations/final-zero-overwrite-can-restore-budget.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [exact_byte_limit_accepted](declarations/exact-byte-limit-accepted.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [byte_limit_plus_one_rejected](declarations/byte-limit-plus-one-rejected.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [empty_plan_accepted](declarations/empty-plan-accepted.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [empty_final_maps_exact](declarations/empty-final-maps-exact.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc584fb5ed10d9bd763cf8b0c79a4904f3ccc87404eb691c99f2b2c01005de2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteMapOutputBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
