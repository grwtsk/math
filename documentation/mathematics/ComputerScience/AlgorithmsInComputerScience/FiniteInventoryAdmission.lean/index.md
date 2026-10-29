# Finite Inventory Admission

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2766654d41cae1efbcc98c39867930654a3b347e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FiniteInventoryAdmission.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ExpectedSet](declarations/expectedset.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RawBatch](declarations/rawbatch.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Mapping](declarations/mapping.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Capture](declarations/capture.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [retainedLabel](declarations/retainedlabel.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rawAt](declarations/rawat.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [rawRoutes](declarations/rawroutes.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [prepared](declarations/prepared.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [frozen](declarations/frozen.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [CanonicalFileMaps](declarations/canonicalfilemaps.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [AdjacentSorted](declarations/adjacentsorted.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [adjacent_implies_pairwise](declarations/adjacent-implies-pairwise.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pairwise_implies_adjacent](declarations/pairwise-implies-adjacent.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [adjacent_iff_pairwise](declarations/adjacent-iff-pairwise.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sorted_strings_nodup](declarations/sorted-strings-nodup.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [canonical_key_domain_equal](declarations/canonical-key-domain-equal.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [captureCheck](declarations/capturecheck.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [readsetMatches](declarations/readsetmatches.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mappingCoverage](declarations/mappingcoverage.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [planCoverage](declarations/plancoverage.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [rawRetention](declarations/rawretention.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [admissionCheck](declarations/admissioncheck.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [captureCheck_exact](declarations/capturecheck-exact.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [readsetMatches_exact](declarations/readsetmatches-exact.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mappingCoverage_exact](declarations/mappingcoverage-exact.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [planCoverage_exact](declarations/plancoverage-exact.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [readset_domain_exact](declarations/readset-domain-exact.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mapping_coverage_ordered_keys](declarations/mapping-coverage-ordered-keys.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [plan_and_capture_establish_mapping_coverage](declarations/plan-and-capture-establish-mapping-coverage.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rawRetention_exact](declarations/rawretention-exact.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [expected_label_lookup_of_unique_member](declarations/expected-label-lookup-of-unique-member.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [raw_retention_from_finite_membership](declarations/raw-retention-from-finite-membership.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [admissionCheck_exact](declarations/admissioncheck-exact.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [bounded_capture_canonical](declarations/bounded-capture-canonical.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [admitted_named_capture_checks](declarations/admitted-named-capture-checks.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [admitted_all_readsets_canonical](declarations/admitted-all-readsets-canonical.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rawAt_keys](declarations/rawat-keys.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [prepared_keys](declarations/prepared-keys.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rawRoutes_keys](declarations/rawroutes-keys.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [complete_source_keys_decompose](declarations/complete-source-keys-decompose.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [admitted_ordered_complete_source_keys](declarations/admitted-ordered-complete-source-keys.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [raw_route_witness](declarations/raw-route-witness.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [admitted_raw_retention](declarations/admitted-raw-retention.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [admitted_prepared_source_only](declarations/admitted-prepared-source-only.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [admitted_mapping_origins_source](declarations/admitted-mapping-origins-source.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [capture_establishes_input_admission](declarations/capture-establishes-input-admission.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [capture_establishes_executable_input_gate](declarations/capture-establishes-executable-input-gate.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [capture_successful_source_contract_transports](declarations/capture-successful-source-contract-transports.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [capture_successful_producer_checked](declarations/capture-successful-producer-checked.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [capture_successful_producer_has_lean_execution](declarations/capture-successful-producer-has-lean-execution.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [capture_successful_producer_exact_decode](declarations/capture-successful-producer-exact-decode.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [bindRaw](declarations/bindraw.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [zipRaw_projections](declarations/zipraw-projections.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [bindRaw_exact](declarations/bindraw-exact.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [bindRaw_rejects_truncation](declarations/bindraw-rejects-truncation.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [bindRaw_accepts_equal_length](declarations/bindraw-accepts-equal-length.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [canonical_readset_survives_intern](declarations/canonical-readset-survives-intern.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [interning_empty_preserves_captured_slots](declarations/interning-empty-preserves-captured-slots.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [fixtureCapture](declarations/fixturecapture.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [fixtureCertificate](declarations/fixturecertificate.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fixture_capture_accepted](declarations/fixture-capture-accepted.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [fixture_maps_canonical](declarations/fixture-maps-canonical.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [fixture_plan_coverage](declarations/fixture-plan-coverage.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [fixture_admitted_by_capture](declarations/fixture-admitted-by-capture.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [fixture_native_postcondition](declarations/fixture-native-postcondition.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [fixture_transported_certificate_accepted](declarations/fixture-transported-certificate-accepted.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [fixture_lean_execution_exists](declarations/fixture-lean-execution-exists.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [fixture_inventory_namespace_distinct_from_retention](declarations/fixture-inventory-namespace-distinct-from-retention.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [repeatedRootCapture](declarations/repeatedrootcapture.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [fixture_repeated_roots_remain_positional](declarations/fixture-repeated-roots-remain-positional.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [repeated_root_observations_agree](declarations/repeated-root-observations-agree.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [omitted_mapping_rejected](declarations/omitted-mapping-rejected.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [nonsource_mapping_rejected](declarations/nonsource-mapping-rejected.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [duplicate_mapping_rejected](declarations/duplicate-mapping-rejected.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [unused_invalid_slot_rejected](declarations/unused-invalid-slot-rejected.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [absent_nonempty_directory_rejected](declarations/absent-nonempty-directory-rejected.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [noncanonical_directory_order_rejected](declarations/noncanonical-directory-order-rejected.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [changed_root_metadata_rejected](declarations/changed-root-metadata-rejected.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [extra_expected_raw_key_rejected](declarations/extra-expected-raw-key-rejected.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [wrong_retained_literal_slot_rejected](declarations/wrong-retained-literal-slot-rejected.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [nonempty_empty_slot_rejected](declarations/nonempty-empty-slot-rejected.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [absent_empty_slot_rejected](declarations/absent-empty-slot-rejected.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [twoSourceCapture](declarations/twosourcecapture.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [two_source_fixture_accepted](declarations/two-source-fixture-accepted.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [reversed_source_mapping_order_rejected](declarations/reversed-source-mapping-order-rejected.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [repeated_source_mapping_at_equal_length_rejected](declarations/repeated-source-mapping-at-equal-length-rejected.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [raw_array_length_mismatch_rejected](declarations/raw-array-length-mismatch-rejected.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [emptyCapture](declarations/emptycapture.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [empty_capture_accepted](declarations/empty-capture-accepted.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [empty_capture_canonical](declarations/empty-capture-canonical.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [empty_capture_admitted](declarations/empty-capture-admitted.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3042260c40dc2f5a529221e2d545a3d7939a03ea40bc9e4fa012a6537172bea7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteInventoryAdmission.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
