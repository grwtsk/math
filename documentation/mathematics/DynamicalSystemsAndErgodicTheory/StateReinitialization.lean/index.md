# State Reinitialization

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**15 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/StateReinitialization.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9be14bdfc0b35f3de1f591320ca37d51035dfbbe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/StateReinitialization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ControllerStartConfig](declarations/controllerstartconfig.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [RevisionLedger.freshController](declarations/revisionledger-freshcontroller.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fresh_controller_safe](declarations/fresh-controller-safe.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [fresh_controller_exact_fields](declarations/fresh-controller-exact-fields.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [RevisionSession](declarations/revisionsession.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [RevisionLedger.startSession](declarations/revisionledger-startsession.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SessionSafe](declarations/sessionsafe.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [start_session_safe](declarations/start-session-safe.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [start_session_history_preserved](declarations/start-session-history-preserved.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [RevisionSession.advance](declarations/revisionsession-advance.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [admitted_session_advance_safe](declarations/admitted-session-advance-safe.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [session_advance_history_preserved](declarations/session-advance-history-preserved.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [session_advance_current_receipts](declarations/session-advance-current-receipts.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [admitted_session_receipts_current](declarations/admitted-session-receipts-current.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stale_receipt_rejects_current_guard](declarations/stale-receipt-rejects-current-guard.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=052c7a31578bc8e6860c16c4e4f5745645e968a8091fb44cc62503247adeb1d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/StateReinitialization.lean","GRWTSK/DynamicalSystems/TransitionSystems/StateReinitialization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
