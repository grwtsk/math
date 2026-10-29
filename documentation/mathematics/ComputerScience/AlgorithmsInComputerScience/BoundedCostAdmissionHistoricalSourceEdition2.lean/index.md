# Bounded Cost Admission Historical Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**96 observed declarations and anonymous commands**, 72 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant8bbde30addb4f01a7fac663aeb2fb8efcfbd33592653b3727959298aa67e9df9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8b3a6d4b49d802384aee91bf4bf3acca75cc2be`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BoundedCostAdmissionHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [maxFiles](declarations/maxfiles.md) | 12 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `def` | [maxTotalBytes](declarations/maxtotalbytes.md) | 13 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `def` | [maxFileBytes](declarations/maxfilebytes.md) | 14 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `def` | [maxRawSources](declarations/maxrawsources.md) | 15 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `def` | [maxSubjects](declarations/maxsubjects.md) | 16 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `def` | [maxRoutes](declarations/maxroutes.md) | 17 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [u64Max](declarations/u64max.md) | 18 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [boundedAdd](declarations/boundedadd.md) | 20 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [boundedAdd_exact](declarations/boundedadd-exact.md) | 23 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [boundedAdd_exists](declarations/boundedadd-exists.md) | 28 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [boundedAdd_rejects_excess](declarations/boundedadd-rejects-excess.md) | 33 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `def` | [boundedSum](declarations/boundedsum.md) | 39 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [boundedSum_exact](declarations/boundedsum-exact.md) | 45 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [boundedSum_exists](declarations/boundedsum-exists.md) | 66 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [sum_take_le](declarations/sum-take-le.md) | 79 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [boundedSum_prefixes](declarations/boundedsum-prefixes.md) | 85 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [sum_le_length_mul](declarations/sum-le-length-mul.md) | 94 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [member_le_sum](declarations/member-le-sum.md) | 104 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [bounded_sum_no_u64_wrap](declarations/bounded-sum-no-u64-wrap.md) | 114 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [UInt64_fold_exact](declarations/uint64-fold-exact.md) | 124 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [boundedSum_UInt64_exact](declarations/boundedsum-uint64-exact.md) | 140 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `structure` | [Inventory](declarations/inventory.md) | 147 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `def` | [inventoryWithin](declarations/inventorywithin.md) | 153 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [inventoryWithin_exact](declarations/inventorywithin-exact.md) | 159 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `def` | [rawFileCount](declarations/rawfilecount.md) | 165 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [rawFileCount_exact](declarations/rawfilecount-exact.md) | 171 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [raw_count_is_exact_flattened_length](declarations/raw-count-is-exact-flattened-length.md) | 185 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [raw_count_bounded](declarations/raw-count-bounded.md) | 191 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `theorem` | [raw_metadata_bytes_bounded](declarations/raw-metadata-bytes-bounded.md) | 195 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `structure` | [Routes](declarations/routes.md) | 206 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `def` | [routeCounts](declarations/routecounts.md) | 215 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [routeCounts_exact](declarations/routecounts-exact.md) | 220 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `def` | [routeCount](declarations/routecount.md) | 225 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [admitted_action_count](declarations/admitted-action-count.md) | 227 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [admitted_route_count](declarations/admitted-route-count.md) | 232 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `theorem` | [admitted_routes_below_u64_max](declarations/admitted-routes-below-u64-max.md) | 238 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [admitted_routes_no_wrap](declarations/admitted-routes-no-wrap.md) | 244 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `structure` | [Shard](declarations/shard.md) | 252 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `def` | [selectedCosts](declarations/selectedcosts.md) | 257 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `def` | [shardWithin](declarations/shardwithin.md) | 260 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `def` | [shardsWithin](declarations/shardswithin.md) | 265 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `theorem` | [shardWithin_exact](declarations/shardwithin-exact.md) | 271 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [shardsWithin_exact](declarations/shardswithin-exact.md) | 278 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `theorem` | [admitted_shards_exact_indices](declarations/admitted-shards-exact-indices.md) | 286 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `theorem` | [admitted_shards_preserve_index_multiplicity](declarations/admitted-shards-preserve-index-multiplicity.md) | 291 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `theorem` | [admitted_shard_indices_unique](declarations/admitted-shard-indices-unique.md) | 296 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [admitted_shard_bounds](declarations/admitted-shard-bounds.md) | 302 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `theorem` | [selectedCosts_range_exact](declarations/selectedcosts-range-exact.md) | 310 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `theorem` | [admitted_shards_exact_cost_history](declarations/admitted-shards-exact-cost-history.md) | 317 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `theorem` | [admitted_shards_total_bytes](declarations/admitted-shards-total-bytes.md) | 324 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `theorem` | [admitted_action_costs_bounded](declarations/admitted-action-costs-bounded.md) | 336 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `structure` | [Plan](declarations/plan.md) | 346 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `def` | [routes](declarations/routes-source-edition-2.md) | 363 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `def` | [inventories](declarations/inventories.md) | 367 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `def` | [planWithin](declarations/planwithin.md) | 370 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `theorem` | [planWithin_exact](declarations/planwithin-exact.md) | 379 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `theorem` | [checked_plan_route_budget](declarations/checked-plan-route-budget.md) | 388 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `theorem` | [checked_plan_producer_bound](declarations/checked-plan-producer-bound.md) | 393 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `theorem` | [checked_plan_route_shapes](declarations/checked-plan-route-shapes.md) | 399 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `theorem` | [checked_plan_all_inventory_bounds](declarations/checked-plan-all-inventory-bounds.md) | 411 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `theorem` | [checked_plan_readset_count](declarations/checked-plan-readset-count.md) | 425 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `theorem` | [checked_plan_metadata_bytes](declarations/checked-plan-metadata-bytes.md) | 432 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `theorem` | [checked_plan_metadata_bytes_no_wrap](declarations/checked-plan-metadata-bytes-no-wrap.md) | 442 | `BLOCKED_SOURCE_DEPENDENCY` |
| 64 | `theorem` | [checked_plan_action_cost_profile](declarations/checked-plan-action-cost-profile.md) | 448 | `BLOCKED_SOURCE_DEPENDENCY` |
| 65 | `theorem` | [checked_plan_action_bytes](declarations/checked-plan-action-bytes.md) | 457 | `BLOCKED_SOURCE_DEPENDENCY` |
| 66 | `theorem` | [checked_plan_action_bytes_no_wrap](declarations/checked-plan-action-bytes-no-wrap.md) | 470 | `BLOCKED_SOURCE_DEPENDENCY` |
| 67 | `theorem` | [captured_archive_producer_bound](declarations/captured-archive-producer-bound.md) | 478 | `BLOCKED_SOURCE_DEPENDENCY` |
| 68 | `def` | [fixturePlan](declarations/fixtureplan.md) | 487 | `BLOCKED_SOURCE_DEPENDENCY` |
| 69 | `theorem` | [fixture_plan_accepted](declarations/fixture-plan-accepted.md) | 503 | `BLOCKED_SOURCE_DEPENDENCY` |
| 70 | `theorem` | [fixture_zero_byte_occurrences_retained](declarations/fixture-zero-byte-occurrences-retained.md) | 505 | `BLOCKED_SOURCE_DEPENDENCY` |
| 71 | `theorem` | [fixture_producer_bound](declarations/fixture-producer-bound.md) | 509 | `BLOCKED_SOURCE_DEPENDENCY` |
| 72 | `theorem` | [no_raw_batches_rejected](declarations/no-raw-batches-rejected.md) | 513 | `BLOCKED_SOURCE_DEPENDENCY` |
| 73 | `theorem` | [too_many_raw_batches_rejected](declarations/too-many-raw-batches-rejected.md) | 515 | `BLOCKED_SOURCE_DEPENDENCY` |
| 74 | `theorem` | [absent_inventory_contents_rejected](declarations/absent-inventory-contents-rejected.md) | 518 | `BLOCKED_SOURCE_DEPENDENCY` |
| 75 | `theorem` | [oversized_inventory_directory_count_rejected](declarations/oversized-inventory-directory-count-rejected.md) | 521 | `BLOCKED_SOURCE_DEPENDENCY` |
| 76 | `theorem` | [oversized_file_rejected](declarations/oversized-file-rejected.md) | 524 | `BLOCKED_SOURCE_DEPENDENCY` |
| 77 | `theorem` | [oversized_inventory_bytes_rejected](declarations/oversized-inventory-bytes-rejected.md) | 527 | `BLOCKED_SOURCE_DEPENDENCY` |
| 78 | `theorem` | [wrapped_u64_input_rejected](declarations/wrapped-u64-input-rejected.md) | 530 | `BLOCKED_SOURCE_DEPENDENCY` |
| 79 | `theorem` | [excess_raw_count_rejected](declarations/excess-raw-count-rejected.md) | 532 | `BLOCKED_SOURCE_DEPENDENCY` |
| 80 | `theorem` | [wrong_action_count_rejected](declarations/wrong-action-count-rejected.md) | 541 | `BLOCKED_SOURCE_DEPENDENCY` |
| 81 | `theorem` | [oversized_placeholder_count_rejected](declarations/oversized-placeholder-count-rejected.md) | 543 | `BLOCKED_SOURCE_DEPENDENCY` |
| 82 | `theorem` | [oversized_directory_count_rejected](declarations/oversized-directory-count-rejected.md) | 545 | `BLOCKED_SOURCE_DEPENDENCY` |
| 83 | `theorem` | [zero_subjects_rejected](declarations/zero-subjects-rejected.md) | 547 | `BLOCKED_SOURCE_DEPENDENCY` |
| 84 | `theorem` | [excessive_subjects_rejected](declarations/excessive-subjects-rejected.md) | 549 | `BLOCKED_SOURCE_DEPENDENCY` |
| 85 | `theorem` | [zero_shard_file_cap_rejected](declarations/zero-shard-file-cap-rejected.md) | 551 | `BLOCKED_SOURCE_DEPENDENCY` |
| 86 | `theorem` | [excessive_shard_byte_cap_rejected](declarations/excessive-shard-byte-cap-rejected.md) | 553 | `BLOCKED_SOURCE_DEPENDENCY` |
| 87 | `theorem` | [omitted_shard_action_rejected](declarations/omitted-shard-action-rejected.md) | 555 | `BLOCKED_SOURCE_DEPENDENCY` |
| 88 | `theorem` | [repeated_shard_action_rejected](declarations/repeated-shard-action-rejected.md) | 558 | `BLOCKED_SOURCE_DEPENDENCY` |
| 89 | `theorem` | [reordered_shard_actions_rejected](declarations/reordered-shard-actions-rejected.md) | 561 | `BLOCKED_SOURCE_DEPENDENCY` |
| 90 | `theorem` | [empty_shard_rejected](declarations/empty-shard-rejected.md) | 564 | `BLOCKED_SOURCE_DEPENDENCY` |
| 91 | `theorem` | [inaccurate_shard_byte_sum_rejected](declarations/inaccurate-shard-byte-sum-rejected.md) | 567 | `BLOCKED_SOURCE_DEPENDENCY` |
| 92 | `theorem` | [shard_byte_budget_excess_rejected](declarations/shard-byte-budget-excess-rejected.md) | 570 | `BLOCKED_SOURCE_DEPENDENCY` |
| 93 | `theorem` | [shard_file_budget_excess_rejected](declarations/shard-file-budget-excess-rejected.md) | 573 | `BLOCKED_SOURCE_DEPENDENCY` |
| 94 | `theorem` | [invalid_lookup_rejected](declarations/invalid-lookup-rejected.md) | 576 | `BLOCKED_SOURCE_DEPENDENCY` |
| 95 | `theorem` | [empty_actions_need_no_shards](declarations/empty-actions-need-no-shards.md) | 578 | `BLOCKED_SOURCE_DEPENDENCY` |
| 96 | `theorem` | [empty_actions_reject_nonempty_shard](declarations/empty-actions-reject-nonempty-shard.md) | 580 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5ff88d2054f02b762863f0144317a2e88ed6c50a31dc75d7147c7cb7af9c17e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant8bbde30addb4f01a7fac663aeb2fb8efcfbd33592653b3727959298aa67e9df9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
