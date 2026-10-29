# Ordered Action Receipt Protocols Historical Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant2a47de87aa86d45e713868485b73d340b1966beb3ef41b98e2f95aec1246cf81.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb06c6264e5cbbfbe62633675c97fed1a5e76573`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/OrderedActionReceiptProtocolsHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Action](declarations/action.md) | 12 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `structure` | [Operation](declarations/operation.md) | 18 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `def` | [initial](declarations/initial.md) | 23 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `def` | [program](declarations/program.md) | 28 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `theorem` | [initial_length](declarations/initial-length.md) | 32 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `theorem` | [program_length](declarations/program-length.md) | 34 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `theorem` | [program_initial_order](declarations/program-initial-order.md) | 39 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `theorem` | [program_verify_raw](declarations/program-verify-raw.md) | 44 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [program_retain_raw](declarations/program-retain-raw.md) | 49 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [program_publication_last](declarations/program-publication-last.md) | 57 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `inductive` | [Event](declarations/event.md) | 61 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `structure` | [Execution](declarations/execution.md) | 67 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `structure` | [Host](declarations/host.md) | 72 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `structure` | [StepExecution](declarations/stepexecution.md) | 77 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `def` | [runSteps](declarations/runsteps.md) | 82 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `def` | [execute](declarations/execute.md) | 89 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [runSteps_success_trace](declarations/runsteps-success-trace.md) | 100 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [runSteps_failure_exact](declarations/runsteps-failure-exact.md) | 113 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [execute_success_exact](declarations/execute-success-exact.md) | 133 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [execute_success_trace](declarations/execute-success-trace.md) | 156 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [execute_success_receipt_identity](declarations/execute-success-receipt-identity.md) | 165 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [execute_success_call_count](declarations/execute-success-call-count.md) | 172 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [execute_step_error_stops](declarations/execute-step-error-stops.md) | 179 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [execute_outputs_error_stops](declarations/execute-outputs-error-stops.md) | 186 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [execute_receipt_error_exact](declarations/execute-receipt-error-exact.md) | 194 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `def` | [acceptingHost](declarations/acceptinghost.md) | 203 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [runSteps_increment_nonvacuous](declarations/runsteps-increment-nonvacuous.md) | 208 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [application_success_nonvacuous](declarations/application-success-nonvacuous.md) | 215 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `theorem` | [fixture_application_receipt_returned](declarations/fixture-application-receipt-returned.md) | 220 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [fixture_application_receipt_recorded](declarations/fixture-application-receipt-recorded.md) | 223 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `theorem` | [fixture_empty_raw_still_verifies_outputs](declarations/fixture-empty-raw-still-verifies-outputs.md) | 226 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b61063ff65090488f03fb234d3083fb858c2aa6f5db1cfa49e824d964b6655a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant2a47de87aa86d45e713868485b73d340b1966beb3ef41b98e2f95aec1246cf81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
