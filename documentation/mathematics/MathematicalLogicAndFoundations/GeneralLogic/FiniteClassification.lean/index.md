# Finite Classification

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a871da55bab141b1f6ab8617872291cffd60b04`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/FiniteClassification.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Outcome](declarations/outcome.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Flags](declarations/flags.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Flags.classify](declarations/flags-classify.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Flags.eq_of_fields](declarations/flags-eq-of-fields.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Flags.classify_supported_iff](declarations/flags-classify-supported-iff.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Flags.classify_refuted_iff](declarations/flags-classify-refuted-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Flags.classify_ambiguous_iff](declarations/flags-classify-ambiguous-iff.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Flags.classify_model_mismatch_iff](declarations/flags-classify-model-mismatch-iff.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [any_true_iff](declarations/any-true-iff.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ListedAdmissible](declarations/listedadmissible.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [CoversFiber](declarations/coversfiber.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coversFiber_of_admissible_enumeration](declarations/coversfiber-of-admissible-enumeration.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [listed_nonempty_iff](declarations/listed-nonempty-iff.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [listed_support_iff](declarations/listed-support-iff.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [listed_refutation_iff](declarations/listed-refutation-iff.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [scan](declarations/scan.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [classify](declarations/classify.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [scan_positive_iff](declarations/scan-positive-iff.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [scan_negative_iff](declarations/scan-negative-iff.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [scan_positive_false_iff](declarations/scan-positive-false-iff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [scan_negative_false_iff](declarations/scan-negative-false-iff.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [classify_supported_iff_listed](declarations/classify-supported-iff-listed.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [classify_refuted_iff_listed](declarations/classify-refuted-iff-listed.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [classify_model_mismatch_iff_listed](declarations/classify-model-mismatch-iff-listed.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [classify_ambiguous_iff](declarations/classify-ambiguous-iff.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [classify_ambiguous_no_certainty](declarations/classify-ambiguous-no-certainty.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [classify_supported_iff](declarations/classify-supported-iff.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [classify_refuted_iff](declarations/classify-refuted-iff.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [classify_model_mismatch_iff](declarations/classify-model-mismatch-iff.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [classified_support_sound](declarations/classified-support-sound.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [empty_inventory_model_mismatch](declarations/empty-inventory-model-mismatch.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [empty_inventory_no_certainty](declarations/empty-inventory-no-certainty.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [scan_inventory_congr](declarations/scan-inventory-congr.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [classify_inventory_congr](declarations/classify-inventory-congr.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [Row](declarations/row.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [classifyRows](declarations/classifyrows.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [classifyRows_supported_iff](declarations/classifyrows-supported-iff.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [admitted](declarations/admitted.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [lostReceipt](declarations/lostreceipt.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [occurred](declarations/occurred.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [completeInventory](declarations/completeinventory.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [complete_inventory_covers](declarations/complete-inventory-covers.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [supported_control](declarations/supported-control.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [refuted_control](declarations/refuted-control.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ambiguous_control](declarations/ambiguous-control.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [model_mismatch_control](declarations/model-mismatch-control.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [different_view_ignored](declarations/different-view-ignored.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [inadmissible_trace_ignored](declarations/inadmissible-trace-ignored.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [omission_can_report_list_support](declarations/omission-can-report-list-support.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [omitted_counterexample_breaks_coverage](declarations/omitted-counterexample-breaks-coverage.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [empty_inventory_can_miss_real_fiber](declarations/empty-inventory-can-miss-real-fiber.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [repeated_and_reordered_inventory](declarations/repeated-and-reordered-inventory.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f96e6f2c3d92d166200b04ff4e53ba542cbd3a0ff7c8c2fe9ead50bab9c09815 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/FiniteClassification.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
