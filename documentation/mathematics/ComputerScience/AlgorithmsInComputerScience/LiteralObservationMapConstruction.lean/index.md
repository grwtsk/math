# Literal Observation Map Construction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralObservationMapConstruction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07841b05191fe7607faa452d142813ea0cad0da1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/LiteralObservationMapConstruction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Observation](declarations/observation.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Captured](declarations/captured.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [observationRecord](declarations/observationrecord.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [observationRecord_exact](declarations/observationrecord-exact.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [observationRecord_bytes](declarations/observationrecord-bytes.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [observationRecord_label](declarations/observationrecord-label.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [observationRecord_kind](declarations/observationrecord-kind.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [acceptsPrefix](declarations/acceptsprefix.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [acceptsPrefix_exact](declarations/acceptsprefix-exact.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [acceptsPrefix_nonwrapping](declarations/acceptsprefix-nonwrapping.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [prepend](declarations/prepend.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [eventFold](declarations/eventfold.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [build](declarations/build.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [construct](declarations/construct.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [observedBytes](declarations/observedbytes.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coherent](declarations/coherent.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [empty_coherent](declarations/empty-coherent.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [prepend_coherent](declarations/prepend-coherent.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [eventFold_coherent](declarations/eventfold-coherent.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eventFold_record_keys](declarations/eventfold-record-keys.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eventFold_payload_keys](declarations/eventfold-payload-keys.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eventFold_records](declarations/eventfold-records.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eventFold_payloads](declarations/eventfold-payloads.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eventFold_record_count](declarations/eventfold-record-count.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eventFold_payload_count](declarations/eventfold-payload-count.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eventFold_record_bytes](declarations/eventfold-record-bytes.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eventFold_payload_bytes](declarations/eventfold-payload-bytes.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lookup_none_iff_absent](declarations/lookup-none-iff-absent.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [prepend_unique](declarations/prepend-unique.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [build_success_exact](declarations/build-success-exact.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [build_success_unique](declarations/build-success-unique.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [build_success_budgets](declarations/build-success-budgets.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [build_success_file_bounds](declarations/build-success-file-bounds.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [construct_success_build](declarations/construct-success-build.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [construct_success_exact](declarations/construct-success-exact.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [construct_success_records](declarations/construct-success-records.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [construct_success_payloads](declarations/construct-success-payloads.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [construct_success_coherent](declarations/construct-success-coherent.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [construct_success_unique](declarations/construct-success-unique.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [construct_success_key_domain](declarations/construct-success-key-domain.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [construct_success_payload_unique](declarations/construct-success-payload-unique.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [construct_success_observation_unique](declarations/construct-success-observation-unique.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [construct_success_counts](declarations/construct-success-counts.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [construct_success_exact_byte_totals](declarations/construct-success-exact-byte-totals.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [construct_success_bounds](declarations/construct-success-bounds.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [construct_success_file_bounds](declarations/construct-success-file-bounds.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [construct_success_metadata_quota](declarations/construct-success-metadata-quota.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [construct_success_every_record_has_literal](declarations/construct-success-every-record-has-literal.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [construct_success_every_literal_has_record](declarations/construct-success-every-literal-has-record.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [build_complete](declarations/build-complete.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [admitted](declarations/admitted.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [construct_complete](declarations/construct-complete.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [construct_success_iff](declarations/construct-success-iff.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [construct_failure_iff](declarations/construct-failure-iff.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [construct_success_event_record](declarations/construct-success-event-record.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [construct_success_event_payload](declarations/construct-success-event-payload.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [construct_success_full_record](declarations/construct-success-full-record.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [construct_success_enumeration_bounds](declarations/construct-success-enumeration-bounds.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [represents](declarations/represents.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [represents_permutation](declarations/represents-permutation.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [construct_native_enumeration_exact](declarations/construct-native-enumeration-exact.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [construct_native_enumeration_bounds](declarations/construct-native-enumeration-bounds.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [construct_excess_count_rejected](declarations/construct-excess-count-rejected.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [construct_excess_total_rejected](declarations/construct-excess-total-rejected.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [construct_excess_file_rejected](declarations/construct-excess-file-rejected.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [construct_duplicate_rejected](declarations/construct-duplicate-rejected.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [construct_failure_has_no_result](declarations/construct-failure-has-no-result.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [sampleEvents](declarations/sampleevents.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [fixture_capture_accepted](declarations/fixture-capture-accepted.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [fixture_capture_actual_bytes](declarations/fixture-capture-actual-bytes.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [fixture_shared_payload_counts_per_path](declarations/fixture-shared-payload-counts-per-path.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [fixture_empty_capture_accepted](declarations/fixture-empty-capture-accepted.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [fixture_empty_payload_retained](declarations/fixture-empty-payload-retained.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [fixture_duplicate_equal_payload_rejected](declarations/fixture-duplicate-equal-payload-rejected.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [fixture_duplicate_different_payload_rejected](declarations/fixture-duplicate-different-payload-rejected.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [fixture_exact_prefix_total_accepted](declarations/fixture-exact-prefix-total-accepted.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [fixture_prefix_total_excess_rejected](declarations/fixture-prefix-total-excess-rejected.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [fixture_exact_file_cap_accepted](declarations/fixture-exact-file-cap-accepted.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [fixture_file_cap_plus_one_rejected](declarations/fixture-file-cap-plus-one-rejected.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [fixture_final_count_slot_accepted](declarations/fixture-final-count-slot-accepted.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [fixture_count_cap_rejected](declarations/fixture-count-cap-rejected.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [fixture_oversized_total_no_subtraction_wrap](declarations/fixture-oversized-total-no-subtraction-wrap.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=414cf1024b0cd4e806b72a7694ad456b4091666c8d019f0115b284e45ccd641c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LiteralObservationMapConstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
