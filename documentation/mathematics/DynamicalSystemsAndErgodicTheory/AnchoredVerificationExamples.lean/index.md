# Anchored Verification Examples

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6324c4f142f26943ac9c782480700d58ddec699`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/AnchoredVerificationExamples.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [schema](declarations/schema.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [policy](declarations/policy.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [replayP](declarations/replayp.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [replayQ](declarations/replayq.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [replay_P_reads](declarations/replay-p-reads.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [replay_Q_reads](declarations/replay-q-reads.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [recordP](declarations/recordp.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [recordQ](declarations/recordq.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [batchRecords](declarations/batchrecords.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [baseLedger](declarations/baseledger.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [base_revision_safe](declarations/base-revision-safe.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [initialLedger](declarations/initialledger.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [initial_replay_safe](declarations/initial-replay-safe.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [batchAdmission](declarations/batchadmission.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [admittedLedger](declarations/admittedledger.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [admitted_replay_safe](declarations/admitted-replay-safe.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [admitted_status](declarations/admitted-status.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [admitted_current_target](declarations/admitted-current-target.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [admitted_archive_exact](declarations/admitted-archive-exact.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [admitted_base_not_revision_safe](declarations/admitted-base-not-revision-safe.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [same_footprint_Q_global_blocked](declarations/same-footprint-q-global-blocked.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [config](declarations/config.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [session](declarations/session.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [restarted_safe](declarations/restarted-safe.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [restarted_history_exact](declarations/restarted-history-exact.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [restarted_has_no_effects](declarations/restarted-has-no-effects.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [unreadChange](declarations/unreadchange.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [readChange](declarations/readchange.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [unread_change_tokens](declarations/unread-change-tokens.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unread_change_affected_empty](declarations/unread-change-affected-empty.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [read_change_affected_all](declarations/read-change-affected-all.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [unreadLedger](declarations/unreadledger.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [changedLedger](declarations/changedledger.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [unread_corrected_safe](declarations/unread-corrected-safe.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [changed_corrected_safe](declarations/changed-corrected-safe.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [unread_verified_all](declarations/unread-verified-all.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unread_current_targets](declarations/unread-current-targets.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [changed_status](declarations/changed-status.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Q_true_but_reopened](declarations/q-true-but-reopened.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [correction_archives_literal](declarations/correction-archives-literal.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bb8b54ee467255c0b5757e3afa5e34b8716be1772f13f2ae478f33f7de0fd4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean","GRWTSK/DynamicalSystems/TransitionSystems/AnchoredVerificationExamples.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
