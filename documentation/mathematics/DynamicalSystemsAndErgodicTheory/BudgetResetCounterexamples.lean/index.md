# Budget Reset Counterexamples

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `983ddc5175d02fd27b302bc7985b853ed946e63e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/BudgetResetCounterexamples.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Session](declarations/session.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [State](declarations/state.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [roundProposal](declarations/roundproposal.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [nextConfig](declarations/nextconfig.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [sessionRun](declarations/sessionrun.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sessionRun_zero](declarations/sessionrun-zero.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sessionRun_succ](declarations/sessionrun-succ.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [restartedSession](declarations/restartedsession.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [next_round_exact](declarations/next-round-exact.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [session_history_exact](declarations/session-history-exact.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [restarted_session_history_exact](declarations/restarted-session-history-exact.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [restarted_session_budget_exact](declarations/restarted-session-budget-exact.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [restarted_session_safe](declarations/restarted-session-safe.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [round_proposal_guard](declarations/round-proposal-guard.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [session_run_safe](declarations/session-run-safe.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [each_restarted_round_guarded](declarations/each-restarted-round-guarded.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [completed_round_budget_exact](declarations/completed-round-budget-exact.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [session_run_lift_exact](declarations/session-run-lift-exact.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [totalRoundCost](declarations/totalroundcost.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [totalRoundCost_zero](declarations/totalroundcost-zero.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [totalRoundCost_succ](declarations/totalroundcost-succ.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [total_round_cost_exact](declarations/total-round-cost-exact.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [arbitrarily_many_safe_positive_cost_rounds](declarations/arbitrarily-many-safe-positive-cost-rounds.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [completed_rounds_are_not_guarded_steps](declarations/completed-rounds-are-not-guarded-steps.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [immutable_session_termination_still_holds](declarations/immutable-session-termination-still-holds.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be87ad3c2b30814663a9d4148ba76a85ed313fefb47422d720b2cb0c9de4e339 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean","GRWTSK/DynamicalSystems/TransitionSystems/BudgetResetCounterexamples.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
