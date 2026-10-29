# Ordered Action Receipt Protocols

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7c35868dce13b6bda59b4bae9bcaf2b083c0840`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/OrderedActionReceiptProtocols.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Action](declarations/action.md) | 12 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Operation](declarations/operation.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [initial](declarations/initial.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [program](declarations/program.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [initial_length](declarations/initial-length.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [program_length](declarations/program-length.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [program_initial_order](declarations/program-initial-order.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [program_verify_raw](declarations/program-verify-raw.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [program_retain_raw](declarations/program-retain-raw.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [program_publication_last](declarations/program-publication-last.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [Event](declarations/event.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Execution](declarations/execution.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [Host](declarations/host.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [StepExecution](declarations/stepexecution.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [runSteps](declarations/runsteps.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [execute](declarations/execute.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [runSteps_success_trace](declarations/runsteps-success-trace.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [runSteps_failure_exact](declarations/runsteps-failure-exact.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [execute_success_exact](declarations/execute-success-exact.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [execute_success_trace](declarations/execute-success-trace.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [execute_success_receipt_identity](declarations/execute-success-receipt-identity.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [execute_success_call_count](declarations/execute-success-call-count.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [execute_step_error_stops](declarations/execute-step-error-stops.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [execute_outputs_error_stops](declarations/execute-outputs-error-stops.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [execute_receipt_error_exact](declarations/execute-receipt-error-exact.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [acceptingHost](declarations/acceptinghost.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [runSteps_increment_nonvacuous](declarations/runsteps-increment-nonvacuous.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [application_success_nonvacuous](declarations/application-success-nonvacuous.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [fixture_application_receipt_returned](declarations/fixture-application-receipt-returned.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fixture_application_receipt_recorded](declarations/fixture-application-receipt-recorded.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fixture_empty_raw_still_verifies_outputs](declarations/fixture-empty-raw-still-verifies-outputs.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c26531ab6eba8963b8f45311e41e51e69db2dc38f7c0763a361d9214af22cdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedActionReceiptProtocols.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
