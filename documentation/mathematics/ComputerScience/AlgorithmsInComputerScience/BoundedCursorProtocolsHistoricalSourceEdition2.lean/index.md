# Bounded Cursor Protocols Historical Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant6005deb756b6e95916063c305a0c448f4a8c980b9b6bc6786f523d84890fc5d9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b53ce5278fbe4aaa23bda292ebffcedde8b0f4c0`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BoundedCursorProtocolsHistoricalSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Phase](declarations/phase.md) | 15 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `structure` | [Cursor](declarations/cursor.md) | 19 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `def` | [start](declarations/start.md) | 27 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `def` | [terminal](declarations/terminal.md) | 29 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `def` | [index](declarations/index.md) | 32 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `def` | [advance](declarations/advance.md) | 37 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [budget](declarations/budget.md) | 54 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [cursorAt](declarations/cursorat.md) | 58 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [start_exact](declarations/start-exact.md) | 67 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [terminal_success](declarations/terminal-success.md) | 70 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [terminal_failure](declarations/terminal-failure.md) | 73 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `theorem` | [terminal_absorbs](declarations/terminal-absorbs.md) | 76 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [failure_absorbs](declarations/failure-absorbs.md) | 79 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [success_absorbs](declarations/success-absorbs.md) | 82 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [failed_step_exact](declarations/failed-step-exact.md) | 85 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [failed_step_preserves_counters](declarations/failed-step-preserves-counters.md) | 88 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `theorem` | [at_terminal_iff](declarations/at-terminal-iff.md) | 95 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [at_live](declarations/at-live.md) | 111 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [at_counters_bounded](declarations/at-counters-bounded.md) | 117 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [at_directory_index](declarations/at-directory-index.md) | 127 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [at_write_index](declarations/at-write-index.md) | 135 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [advance_at_success](declarations/advance-at-success.md) | 143 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `def` | [successfulSteps](declarations/successfulsteps.md) | 223 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [successfulSteps_from_start](declarations/successfulsteps-from-start.md) | 227 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [successfulSteps_first_terminal](declarations/successfulsteps-first-terminal.md) | 236 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [failed_prefix_absorbing](declarations/failed-prefix-absorbing.md) | 243 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `structure` | [Operation](declarations/operation-source-edition-2.md) | 252 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `def` | [operation](declarations/operation.md) | 257 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `def` | [program](declarations/program.md) | 259 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [program_length](declarations/program-length.md) | 262 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `theorem` | [program_first](declarations/program-first.md) | 265 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [program_readback](declarations/program-readback.md) | 269 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [program_certificate](declarations/program-certificate.md) | 276 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `structure` | [Execution](declarations/execution.md) | 283 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `def` | [run](declarations/run.md) | 288 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `def` | [execute](declarations/execute.md) | 295 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [run_success_trace](declarations/run-success-trace.md) | 299 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [run_failure_exact](declarations/run-failure-exact.md) | 311 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [run_trace_prefix](declarations/run-trace-prefix.md) | 331 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [execute_success_trace](declarations/execute-success-trace.md) | 342 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [execute_success_mandatory_readback](declarations/execute-success-mandatory-readback.md) | 348 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `theorem` | [execute_call_bound](declarations/execute-call-bound.md) | 356 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `structure` | [Prepared](declarations/prepared.md) | 365 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `def` | [preflight](declarations/preflight.md) | 371 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `theorem` | [preflight_success_exact](declarations/preflight-success-exact.md) | 384 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `theorem` | [preflight_success_directory_bound](declarations/preflight-success-directory-bound.md) | 406 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [preflight_success_iff](declarations/preflight-success-iff.md) | 427 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `theorem` | [preflight_excess_directories_before_writes](declarations/preflight-excess-directories-before-writes.md) | 444 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `theorem` | [preflight_success_full_records](declarations/preflight-success-full-records.md) | 453 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `theorem` | [preflight_success_metadata_bounds](declarations/preflight-success-metadata-bounds.md) | 462 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `theorem` | [preflight_success_write_records](declarations/preflight-success-write-records.md) | 469 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `theorem` | [preflight_success_actual_byte_bounds](declarations/preflight-success-actual-byte-bounds.md) | 478 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `theorem` | [preflight_success_directory_closure](declarations/preflight-success-directory-closure.md) | 491 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `inductive` | [StageError](declarations/stageerror.md) | 502 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `def` | [stage](declarations/stage.md) | 507 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `theorem` | [stage_preflight_failure_no_effect](declarations/stage-preflight-failure-no-effect.md) | 517 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `theorem` | [stage_excess_directories_no_effect](declarations/stage-excess-directories-no-effect.md) | 525 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `theorem` | [stage_success_preflight](declarations/stage-success-preflight.md) | 537 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `theorem` | [stage_success_mandatory_gates](declarations/stage-success-mandatory-gates.md) | 553 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `theorem` | [fixture_zero_output_protocol](declarations/fixture-zero-output-protocol.md) | 565 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `theorem` | [fixture_interleaving_protocol](declarations/fixture-interleaving-protocol.md) | 568 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `theorem` | [fixture_empty_host_success](declarations/fixture-empty-host-success.md) | 572 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `theorem` | [fixture_readback_failure_blocks_certificate](declarations/fixture-readback-failure-blocks-certificate.md) | 575 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc03ed759a0dcc2f8e547dc115368bdaeb8e60c1fc22a666105f630295dfa161 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant6005deb756b6e95916063c305a0c448f4a8c980b9b6bc6786f523d84890fc5d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
