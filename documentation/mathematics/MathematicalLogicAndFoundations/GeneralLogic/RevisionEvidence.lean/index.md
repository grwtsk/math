# Revision Evidence

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43794780f6b098aae07889a9214c0b52c50b5895`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/RevisionEvidence.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Record](declarations/record.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [empty](declarations/empty.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [current](declarations/current.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [query](declarations/query.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [earliestTick](declarations/earliesttick.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Timing](declarations/timing.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [timing](declarations/timing-source-edition-2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [targetElapsed](declarations/targetelapsed.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [WellFormed](declarations/wellformed.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [issue](declarations/issue.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [confirm](declarations/confirm.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [record](declarations/record-source-edition-2.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [advance](declarations/advance.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `inductive` | [Event](declarations/event.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [Step](declarations/step.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [Trace](declarations/trace.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_query_iff](declarations/mem-query-iff.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [query_record](declarations/query-record.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [query_record_other](declarations/query-record-other.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [earliestTick_none_iff](declarations/earliesttick-none-iff.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [earliestTick_some_iff](declarations/earliesttick-some-iff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [timing_unavailable_iff](declarations/timing-unavailable-iff.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [timing_byTarget_iff](declarations/timing-bytarget-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [timing_afterTarget_iff](declarations/timing-aftertarget-iff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_confirmed_iff](declarations/mem-confirmed-iff.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [confirm_idempotent](declarations/confirm-idempotent.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [issue_keeps_current](declarations/issue-keeps-current.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [current_confirm_of_upper](declarations/current-confirm-of-upper.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [old_confirmation_keeps_current](declarations/old-confirmation-keeps-current.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [empty_wellFormed](declarations/empty-wellformed.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [step_preserves_wellFormed](declarations/step-preserves-wellformed.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [trace_preserves_wellFormed](declarations/trace-preserves-wellformed.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [step_history_prefix](declarations/step-history-prefix.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [trace_history_prefix](declarations/trace-history-prefix.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [trace_history_position](declarations/trace-history-position.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unissued_query_empty](declarations/unissued-query-empty.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [correct](declarations/correct.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [correction_trace](declarations/correction-trace.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fresh_confirmation_separates_evidence](declarations/fresh-confirmation-separates-evidence.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [correction_timing_unavailable](declarations/correction-timing-unavailable.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [correction_preserves_historical_queries](declarations/correction-preserves-historical-queries.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [advance_preserves_evidence](declarations/advance-preserves-evidence.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [observed](declarations/observed.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [observed_wellFormed](declarations/observed-wellformed.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [fresh_revision_control](declarations/fresh-revision-control.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [unconfirmed_revision_keeps_current](declarations/unconfirmed-revision-keeps-current.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [old_confirmation_control](declarations/old-confirmation-control.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [distinct_kind_control](declarations/distinct-kind-control.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [elapsed_without_evidence_control](declarations/elapsed-without-evidence-control.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [inclusive_timing_control](declarations/inclusive-timing-control.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [malformed_state_counterexample](declarations/malformed-state-counterexample.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91542aa1fecbf353b0c8899c52a2c1edfc1abe6e1b53eb69c01066d98c6c1420 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/RevisionEvidence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
