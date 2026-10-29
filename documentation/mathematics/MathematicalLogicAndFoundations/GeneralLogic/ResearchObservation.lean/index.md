# Research Observation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**52 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d1286fc23702ccda5c1e5a375a812a517acf19f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/ResearchObservation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [recordObservationTag](declarations/recordobservationtag.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Observation](declarations/observation.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [ObservationState](declarations/observationstate.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [NatTree](declarations/nattree.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [NatTree.decEq](declarations/nattree-deceq.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [NatTree.listDecEq](declarations/nattree-listdeceq.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [NatTree.render](declarations/nattree-render.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [NatTree.renderBytes](declarations/nattree-renderbytes.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [stringWire](declarations/stringwire.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sourceWire](declarations/sourcewire.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [verificationStatusWire](declarations/verificationstatuswire.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [verificationWire](declarations/verificationwire.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [metadataWire](declarations/metadatawire.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [eventWire](declarations/eventwire.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [observationWire](declarations/observationwire.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [stateWire](declarations/statewire.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [stringWire_injective](declarations/stringwire-injective.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sourceWire_injective](declarations/sourcewire-injective.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [verificationStatusWire_injective](declarations/verificationstatuswire-injective.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [verificationWire_injective](declarations/verificationwire-injective.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [metadataWire_injective](declarations/metadatawire-injective.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eventWire_injective](declarations/eventwire-injective.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [observationWire_injective](declarations/observationwire-injective.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [stateWire_injective](declarations/statewire-injective.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [emptyCatalog](declarations/emptycatalog.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [coreMeaning](declarations/coremeaning.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [realize](declarations/realize.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [initial](declarations/initial.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [realize_initial](declarations/realize-initial.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [recordObservation](declarations/recordobservation.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Admitted](declarations/admitted.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [realize_recordObservation](declarations/realize-recordobservation.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [admitted_change](declarations/admitted-change.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [realize_sources](declarations/realize-sources.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [realize_metadata](declarations/realize-metadata.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [realize_history](declarations/realize-history.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [realize_has_no_claims](declarations/realize-has-no-claims.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [realize_valid](declarations/realize-valid.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [replay](declarations/replay.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [ReplayAdmitted](declarations/replayadmitted.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [reachable_trans](declarations/reachable-trans.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [replay_reachable](declarations/replay-reachable.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [replay_admitted_reachable](declarations/replay-admitted-reachable.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [replay_sources](declarations/replay-sources.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [replay_history](declarations/replay-history.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [replay_version](declarations/replay-version.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [replay_admitted_valid](declarations/replay-admitted-valid.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [wrong_operation_rejected](declarations/wrong-operation-rejected.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [source_mutation_rejected](declarations/source-mutation-rejected.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efd6e213d6964f370640d5a9c3234e6ecb9302aa0abfb91264782077aca62b04 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchObservation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
