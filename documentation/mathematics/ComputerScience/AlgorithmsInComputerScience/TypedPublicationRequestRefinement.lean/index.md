# Typed Publication Request Refinement

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedPublicationRequestRefinement.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `846a83f12c020c5a3b06e5fd92c0429df9d4db0c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TypedPublicationRequestRefinement.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [RecordPhase](declarations/recordphase.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [BackupKind](declarations/backupkind.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Rejected](declarations/rejected.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Context](declarations/context.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Paths](declarations/paths.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [State](declarations/state.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Request](declarations/request.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Response](declarations/response.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [lower](declarations/lower.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [setCandidate](declarations/setcandidate.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [commitCandidate](declarations/commitcandidate.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [applyRequest](declarations/applyrequest.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [invoke](declarations/invoke.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lower_stage_taxonomy](declarations/lower-stage-taxonomy.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lower_stage_archive](declarations/lower-stage-archive.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lower_record_prepared](declarations/lower-record-prepared.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lower_verify_inputs](declarations/lower-verify-inputs.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lower_verify_certificate](declarations/lower-verify-certificate.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lower_publish_archive](declarations/lower-publish-archive.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lower_missing_archive](declarations/lower-missing-archive.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lower_record_archive](declarations/lower-record-archive.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lower_verify_source](declarations/lower-verify-source.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [lower_verify_preservation](declarations/lower-verify-preservation.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lower_retain_source](declarations/lower-retain-source.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lower_retain_preservation](declarations/lower-retain-preservation.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lower_verify_raw](declarations/lower-verify-raw.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [lower_missing_raw](declarations/lower-missing-raw.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lower_retain_raw](declarations/lower-retain-raw.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lower_missing_retained](declarations/lower-missing-retained.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lower_publish_taxonomy](declarations/lower-publish-taxonomy.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lower_missing_taxonomy](declarations/lower-missing-taxonomy.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [commitCandidate_error_preserves](declarations/commitcandidate-error-preserves.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [commitCandidate_taxonomy](declarations/commitcandidate-taxonomy.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [commitCandidate_archive](declarations/commitcandidate-archive.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [setCandidate_preserves_other](declarations/setcandidate-preserves-other.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [applyRequest_stage_success](declarations/applyrequest-stage-success.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [applyRequest_stage_error](declarations/applyrequest-stage-error.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [invoke_lowered](declarations/invoke-lowered.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [invoke_rejected_no_primitive](declarations/invoke-rejected-no-primitive.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [Primitives](declarations/primitives.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [host](declarations/host.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [host_outputs_arguments](declarations/host-outputs-arguments.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [host_receipt_arguments](declarations/host-receipt-arguments.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [execute](declarations/execute.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [execute_success_receipt_primitive](declarations/execute-success-receipt-primitive.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [execute_success_exact_output_primitive](declarations/execute-success-exact-output-primitive.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [execute_success_concrete_order](declarations/execute-success-concrete-order.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [rejectionCode](declarations/rejectioncode.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [recordName](declarations/recordname.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [phaseName](declarations/phasename.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [backupName](declarations/backupname.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [rejectionCode_missing](declarations/rejectioncode-missing.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rejectionCode_index](declarations/rejectioncode-index.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [recordName_exact](declarations/recordname-exact.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [phaseName_exact](declarations/phasename-exact.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [backupName_exact](declarations/backupname-exact.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [applyRequest_nonstage_preserves](declarations/applyrequest-nonstage-preserves.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [invoke_success_lowered](declarations/invoke-success-lowered.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [acceptingCall](declarations/acceptingcall.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [fixtureContext](declarations/fixturecontext.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [acceptingPrimitives](declarations/acceptingprimitives.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [fixture_concrete_application_nonvacuous](declarations/fixture-concrete-application-nonvacuous.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fixture_unstaged_archive_no_primitive](declarations/fixture-unstaged-archive-no-primitive.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [fixture_raw_index_no_primitive](declarations/fixture-raw-index-no-primitive.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [Projections](declarations/projections.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [freeze](declarations/freeze.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [freeze_whole_inputs](declarations/freeze-whole-inputs.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [freeze_inventory_projections](declarations/freeze-inventory-projections.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [freeze_certificate_projections](declarations/freeze-certificate-projections.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [initialState](declarations/initialstate.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [initialState_no_candidates](declarations/initialstate-no-candidates.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [orchestrate](declarations/orchestrate.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [orchestrate_success_exact_receipt](declarations/orchestrate-success-exact-receipt.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [orchestrate_success_frozen_trace](declarations/orchestrate-success-frozen-trace.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1441dfe122d67c3b6e01159f9034e6fd247949ac83f0466417a7e450f64d007 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TypedPublicationRequestRefinement.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
