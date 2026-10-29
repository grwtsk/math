# Integer Square Witness

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `293d2264461e3ae00dca296533143ad4e2cafb4f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/IntegerSquareWitness.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [FloorBounds](declarations/floorbounds.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CeilBounds](declarations/ceilbounds.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [floorBounds_iff](declarations/floorbounds-iff.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ceilBounds_iff](declarations/ceilbounds-iff.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [proposedResidual](declarations/proposedresidual.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [errorNumerator](declarations/errornumerator.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [StepBounds](declarations/stepbounds.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [stepBoundsDecidable](declarations/stepboundsdecidable.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [checkStep](declarations/checkstep.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [proposedResidual_eq](declarations/proposedresidual-eq.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stepBounds_iff](declarations/stepbounds-iff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [checkStep_iff](declarations/checkstep-iff.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [walk](declarations/walk.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [run_cursor](declarations/run-cursor.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [walk_sound](declarations/walk-sound.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [walk_length](declarations/walk-length.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [rowsFor](declarations/rowsfor.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [walk_rowsFor](declarations/walk-rowsfor.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [check](declarations/check.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [check_iff](declarations/check-iff.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [check_sound](declarations/check-sound.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_checked_iff](declarations/exists-checked-iff.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [walk_append](declarations/walk-append.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [check_append](declarations/check-append.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=295f0e984e2afd5aa898a57022edbe31a3f92566507cdc8682c2908338ddc21e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/IntegerSquareWitness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
