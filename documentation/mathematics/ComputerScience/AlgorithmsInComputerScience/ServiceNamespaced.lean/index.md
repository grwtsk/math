# Service Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a10eb1f9c640bf5af9904a1e9dffc96833d9d1c3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ServiceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ServiceSnapshot](declarations/servicesnapshot.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [RefreshPhase](declarations/refreshphase.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [RefreshPhaseTransition](declarations/refreshphasetransition.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [failed_phase_terminal](declarations/failed-phase-terminal.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stale_phase_terminal](declarations/stale-phase-terminal.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ValidationState](declarations/validationstate.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RefreshCandidate](declarations/refreshcandidate.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [FreshFor](declarations/freshfor.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [MathematicallyStable](declarations/mathematicallystable.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [WellFormedSuccessor](declarations/wellformedsuccessor.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ReadyForActivation](declarations/readyforactivation.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [RefreshCandidate.advance](declarations/refreshcandidate-advance.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [advance_preserves_snapshot_binding](declarations/advance-preserves-snapshot-binding.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AuthorityInputs](declarations/authorityinputs.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ServiceState](declarations/servicestate.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [enqueueRefresh](declarations/enqueuerefresh.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [enqueueRefresh_preserves_active](declarations/enqueuerefresh-preserves-active.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [enqueueRefresh_preserves_authority](declarations/enqueuerefresh-preserves-authority.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [ActivationDecision](declarations/activationdecision.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [decideActivation](declarations/decideactivation.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [activation_decision_requires_freshness](declarations/activation-decision-requires-freshness.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [activation_decision_requires_readiness](declarations/activation-decision-requires-readiness.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [activation_decision_requires_stability](declarations/activation-decision-requires-stability.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [commitDecision](declarations/commitdecision.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [ActivationStatus](declarations/activationstatus.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ActivationDecision.status](declarations/activationdecision-status.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [ActivationResult](declarations/activationresult.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [tryActivate](declarations/tryactivate.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [successful_activation_is_atomic](declarations/successful-activation-is-atomic.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [unsuccessful_activation_preserves_state](declarations/unsuccessful-activation-preserves-state.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [failed_activation_preserves_state](declarations/failed-activation-preserves-state.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [stale_activation_preserves_state](declarations/stale-activation-preserves-state.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [incomplete_activation_preserves_state](declarations/incomplete-activation-preserves-state.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [EventPacket](declarations/eventpacket.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [ServiceRasterCell](declarations/servicerastercell.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rasterView](declarations/rasterview.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [EventPacket.toConditional](declarations/eventpacket-toconditional.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `inductive` | [EventApplyStatus](declarations/eventapplystatus.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [EventApplyResult](declarations/eventapplyresult.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [applyEvent](declarations/applyevent.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [applyEventState](declarations/applyeventstate.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [fresh_event_refines_exactly_once_raster](declarations/fresh-event-refines-exactly-once-raster.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [stale_event_is_noop](declarations/stale-event-is-noop.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [duplicate_event_is_noop](declarations/duplicate-event-is-noop.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [false_event_is_noop](declarations/false-event-is-noop.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fresh_unseen_true_event_applies_atomically](declarations/fresh-unseen-true-event-applies-atomically.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [applyEvent_preserves_active_snapshot](declarations/applyevent-preserves-active-snapshot.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [applyEvent_preserves_refresh_queue](declarations/applyevent-preserves-refresh-queue.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [applyEvent_preserves_authority](declarations/applyevent-preserves-authority.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [applyEvent_replay_idempotent](declarations/applyevent-replay-idempotent.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [event_replay_nonauthority](declarations/event-replay-nonauthority.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74dc7ec4c4f1295fd78e6117724b8a2c3fd21185bbd7fb05865c0283bd9e7b96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
