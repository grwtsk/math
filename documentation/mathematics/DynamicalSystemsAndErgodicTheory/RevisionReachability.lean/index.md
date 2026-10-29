# Revision Reachability

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/RevisionReachability.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cf34b68d94e478a45c55536e4f4084826051a56`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/RevisionReachability.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CorrectionRequest](declarations/correctionrequest.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [RevisionLedger.correctMany](declarations/revisionledger-correctmany.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [correctMany_nil](declarations/correctmany-nil.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [correctMany_cons](declarations/correctmany-cons.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [correctMany_append](declarations/correctmany-append.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [correctMany_safe](declarations/correctmany-safe.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [correctMany_issued_preserved](declarations/correctmany-issued-preserved.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [correctMany_archive_preserved](declarations/correctmany-archive-preserved.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [correctMany_receipts_preserved](declarations/correctmany-receipts-preserved.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [correctMany_verified_subset](declarations/correctmany-verified-subset.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [correctMany_pending_superset](declarations/correctmany-pending-superset.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [correctMany_issued_covered](declarations/correctmany-issued-covered.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [correctMany_initial_verified_accounted](declarations/correctmany-initial-verified-accounted.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [correctMany_correction_suffix](declarations/correctmany-correction-suffix.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [correctMany_correction_prefix](declarations/correctmany-correction-prefix.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [correctMany_correction_length](declarations/correctmany-correction-length.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [correctMany_append_snapshot](declarations/correctmany-append-snapshot.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [correctMany_last_snapshot](declarations/correctmany-last-snapshot.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [CorrectionReachable](declarations/correctionreachable.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [correction_reachable_refl](declarations/correction-reachable-refl.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [correction_reachable_step](declarations/correction-reachable-step.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [correction_reachable_trans](declarations/correction-reachable-trans.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [correction_reachable_safe](declarations/correction-reachable-safe.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [correction_reachable_history](declarations/correction-reachable-history.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [correction_reachable_status](declarations/correction-reachable-status.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd249a8344e9f2ec0e79106df4b7e0ea220fa42aad32f62b1f32a45ae91f7c37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean","GRWTSK/DynamicalSystems/TransitionSystems/RevisionReachability.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
