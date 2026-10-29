# Snapshot Authority Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b851e6deb9b4e409c6fc7f8ff6e4be20a81e7c8e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SnapshotAuthorityNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SnapshotStatus](declarations/snapshotstatus.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ProjectionSnapshot](declarations/projectionsnapshot.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [SnapshotEventKind](declarations/snapshoteventkind.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SnapshotAuthorityEvent](declarations/snapshotauthorityevent.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [CommittedSnapshotRoot](declarations/committedsnapshotroot.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [SnapshotStatusTransition](declarations/snapshotstatustransition.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [SnapshotEventTransition](declarations/snapshoteventtransition.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [statusTransition](declarations/statustransition.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [into_active_is_activation](declarations/into-active-is-activation.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [revokedStale_terminal](declarations/revokedstale-terminal.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [superseded_terminal](declarations/superseded-terminal.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [revokedStale_cannot_reactivate](declarations/revokedstale-cannot-reactivate.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [superseded_cannot_reactivate](declarations/superseded-cannot-reactivate.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `inductive` | [CommittedSnapshotReplay](declarations/committedsnapshotreplay.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [targets_snapshot](declarations/targets-snapshot.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [active_head_is_activation](declarations/active-head-is-activation.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [revokedStale_has_no_extension](declarations/revokedstale-has-no-extension.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [superseded_has_no_extension](declarations/superseded-has-no-extension.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [VerifiedActiveSnapshot](declarations/verifiedactivesnapshot.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [head](declarations/head.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [sequence](declarations/sequence.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [epoch](declarations/epoch.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [event](declarations/event.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [replay](declarations/replay.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [event_targets_snapshot](declarations/event-targets-snapshot.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [event_is_activation](declarations/event-is-activation.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [SnapshotSuccessor](declarations/snapshotsuccessor.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [HistoricallyValidAtCreation](declarations/historicallyvalidatcreation.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=509000ca32cb4265f13e05d6e2e145a18ac49bb2de8000fd015a9cca96806d7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SnapshotAuthority/Variante725558593ba7807e0896b07045048e9d60f2e8efb0be7dd2783319bebb86869.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
