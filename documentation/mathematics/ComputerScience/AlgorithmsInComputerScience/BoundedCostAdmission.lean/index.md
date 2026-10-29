# Bounded Cost Admission

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**96 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCostAdmission.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5288736ead0cf4b735a56baa08e1bd7823c8a06`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BoundedCostAdmission.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [maxFiles](declarations/maxfiles.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [maxTotalBytes](declarations/maxtotalbytes.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [maxFileBytes](declarations/maxfilebytes.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxRawSources](declarations/maxrawsources.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [maxSubjects](declarations/maxsubjects.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [maxRoutes](declarations/maxroutes.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [u64Max](declarations/u64max.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [boundedAdd](declarations/boundedadd.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [boundedAdd_exact](declarations/boundedadd-exact.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boundedAdd_exists](declarations/boundedadd-exists.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [boundedAdd_rejects_excess](declarations/boundedadd-rejects-excess.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [boundedSum](declarations/boundedsum.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [boundedSum_exact](declarations/boundedsum-exact.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [boundedSum_exists](declarations/boundedsum-exists.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_take_le](declarations/sum-take-le.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [boundedSum_prefixes](declarations/boundedsum-prefixes.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sum_le_length_mul](declarations/sum-le-length-mul.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [member_le_sum](declarations/member-le-sum.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bounded_sum_no_u64_wrap](declarations/bounded-sum-no-u64-wrap.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [UInt64_fold_exact](declarations/uint64-fold-exact.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [boundedSum_UInt64_exact](declarations/boundedsum-uint64-exact.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [Inventory](declarations/inventory.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [inventoryWithin](declarations/inventorywithin.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inventoryWithin_exact](declarations/inventorywithin-exact.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rawFileCount](declarations/rawfilecount.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rawFileCount_exact](declarations/rawfilecount-exact.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [raw_count_is_exact_flattened_length](declarations/raw-count-is-exact-flattened-length.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [raw_count_bounded](declarations/raw-count-bounded.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [raw_metadata_bytes_bounded](declarations/raw-metadata-bytes-bounded.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [Routes](declarations/routes-source-edition-2.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [routeCounts](declarations/routecounts.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [routeCounts_exact](declarations/routecounts-exact.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [routeCount](declarations/routecount.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [admitted_action_count](declarations/admitted-action-count.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [admitted_route_count](declarations/admitted-route-count.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [admitted_routes_below_u64_max](declarations/admitted-routes-below-u64-max.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [admitted_routes_no_wrap](declarations/admitted-routes-no-wrap.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [Shard](declarations/shard.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [selectedCosts](declarations/selectedcosts.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [shardWithin](declarations/shardwithin.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [shardsWithin](declarations/shardswithin.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [shardWithin_exact](declarations/shardwithin-exact.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [shardsWithin_exact](declarations/shardswithin-exact.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [admitted_shards_exact_indices](declarations/admitted-shards-exact-indices.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [admitted_shards_preserve_index_multiplicity](declarations/admitted-shards-preserve-index-multiplicity.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [admitted_shard_indices_unique](declarations/admitted-shard-indices-unique.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [admitted_shard_bounds](declarations/admitted-shard-bounds.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [selectedCosts_range_exact](declarations/selectedcosts-range-exact.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [admitted_shards_exact_cost_history](declarations/admitted-shards-exact-cost-history.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [admitted_shards_total_bytes](declarations/admitted-shards-total-bytes.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [admitted_action_costs_bounded](declarations/admitted-action-costs-bounded.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [Plan](declarations/plan.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [routes](declarations/routes.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [inventories](declarations/inventories.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [planWithin](declarations/planwithin.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [planWithin_exact](declarations/planwithin-exact.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [checked_plan_route_budget](declarations/checked-plan-route-budget.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [checked_plan_producer_bound](declarations/checked-plan-producer-bound.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [checked_plan_route_shapes](declarations/checked-plan-route-shapes.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [checked_plan_all_inventory_bounds](declarations/checked-plan-all-inventory-bounds.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [checked_plan_readset_count](declarations/checked-plan-readset-count.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [checked_plan_metadata_bytes](declarations/checked-plan-metadata-bytes.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [checked_plan_metadata_bytes_no_wrap](declarations/checked-plan-metadata-bytes-no-wrap.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [checked_plan_action_cost_profile](declarations/checked-plan-action-cost-profile.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [checked_plan_action_bytes](declarations/checked-plan-action-bytes.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [checked_plan_action_bytes_no_wrap](declarations/checked-plan-action-bytes-no-wrap.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [captured_archive_producer_bound](declarations/captured-archive-producer-bound.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [fixturePlan](declarations/fixtureplan.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [fixture_plan_accepted](declarations/fixture-plan-accepted.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [fixture_zero_byte_occurrences_retained](declarations/fixture-zero-byte-occurrences-retained.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [fixture_producer_bound](declarations/fixture-producer-bound.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [no_raw_batches_rejected](declarations/no-raw-batches-rejected.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [too_many_raw_batches_rejected](declarations/too-many-raw-batches-rejected.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [absent_inventory_contents_rejected](declarations/absent-inventory-contents-rejected.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [oversized_inventory_directory_count_rejected](declarations/oversized-inventory-directory-count-rejected.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [oversized_file_rejected](declarations/oversized-file-rejected.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [oversized_inventory_bytes_rejected](declarations/oversized-inventory-bytes-rejected.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [wrapped_u64_input_rejected](declarations/wrapped-u64-input-rejected.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [excess_raw_count_rejected](declarations/excess-raw-count-rejected.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [wrong_action_count_rejected](declarations/wrong-action-count-rejected.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [oversized_placeholder_count_rejected](declarations/oversized-placeholder-count-rejected.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [oversized_directory_count_rejected](declarations/oversized-directory-count-rejected.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [zero_subjects_rejected](declarations/zero-subjects-rejected.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [excessive_subjects_rejected](declarations/excessive-subjects-rejected.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [zero_shard_file_cap_rejected](declarations/zero-shard-file-cap-rejected.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [excessive_shard_byte_cap_rejected](declarations/excessive-shard-byte-cap-rejected.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [omitted_shard_action_rejected](declarations/omitted-shard-action-rejected.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [repeated_shard_action_rejected](declarations/repeated-shard-action-rejected.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [reordered_shard_actions_rejected](declarations/reordered-shard-actions-rejected.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [empty_shard_rejected](declarations/empty-shard-rejected.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [inaccurate_shard_byte_sum_rejected](declarations/inaccurate-shard-byte-sum-rejected.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [shard_byte_budget_excess_rejected](declarations/shard-byte-budget-excess-rejected.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [shard_file_budget_excess_rejected](declarations/shard-file-budget-excess-rejected.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [invalid_lookup_rejected](declarations/invalid-lookup-rejected.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [empty_actions_need_no_shards](declarations/empty-actions-need-no-shards.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [empty_actions_reject_nonempty_shard](declarations/empty-actions-reject-nonempty-shard.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abe94625802deadea0a108d8302c7eef5cefd614dd795185f87aea19cf2d1eec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BoundedCostAdmission.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
