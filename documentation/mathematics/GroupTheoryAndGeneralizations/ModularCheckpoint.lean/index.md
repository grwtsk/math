# Modular Checkpoint

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `865bc64a18d69d2cf4325229ea08e0931dd0e1a8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/ModularCheckpoint.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [packetIncrement](declarations/packetincrement.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [packetIncrement_pos](declarations/packetincrement-pos.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [physicalTime](declarations/physicaltime.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [physicalTime_eq_batchClock](declarations/physicaltime-eq-batchclock.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [physicalTime_strict](declarations/physicaltime-strict.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [terminal_cost_conserved](declarations/terminal-cost-conserved.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [intermediate_completion_changes](declarations/intermediate-completion-changes.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [quota_clock_eq_batchClock](declarations/quota-clock-eq-batchclock.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [packet_unique_batch](declarations/packet-unique-batch.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [packet_epoch_no_starvation](declarations/packet-epoch-no-starvation.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [postPhases](declarations/postphases.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [certified_postPhases_nodup](declarations/certified-postphases-nodup.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [terminal_phase_conserved](declarations/terminal-phase-conserved.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Address](declarations/address.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [address_ne_of_epoch_ne](declarations/address-ne-of-epoch-ne.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [address_ne_of_lift_ne](declarations/address-ne-of-lift-ne.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [repeated_phase_distinct_address](declarations/repeated-phase-distinct-address.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [repeated_phase_distinct_lift_address](declarations/repeated-phase-distinct-lift-address.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [checkpointAt](declarations/checkpointat.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [checkpointAt_source_epoch_lift](declarations/checkpointat-source-epoch-lift.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [checkpointAt_injective](declarations/checkpointat-injective.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [terminal_checkpoint_conserved](declarations/terminal-checkpoint-conserved.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [PacketBinding](declarations/packetbinding.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [BindingCurrent](declarations/bindingcurrent.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [stale_source_rejects_binding](declarations/stale-source-rejects-binding.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [stale_epoch_rejects_binding](declarations/stale-epoch-rejects-binding.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [stale_binding_negative_control](declarations/stale-binding-negative-control.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [certificateBinding](declarations/certificatebinding.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [checked_certificate_adapter](declarations/checked-certificate-adapter.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [checked_item_packet](declarations/checked-item-packet.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [accepted_stale_certificate_rejected](declarations/accepted-stale-certificate-rejected.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [DependencyOrdered](declarations/dependencyordered.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [CommutesOnPacket](declarations/commutesonpacket.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [ExchangeablePacket](declarations/exchangeablepacket.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [packet_identity_preserved](declarations/packet-identity-preserved.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [packet_semantics_preserved](declarations/packet-semantics-preserved.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [noncommutingEffect](declarations/noncommutingeffect.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [antichain_not_exchangeable](declarations/antichain-not-exchangeable.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dependency_breaking_reversal](declarations/dependency-breaking-reversal.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `inductive` | [Executes](declarations/executes.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [executes_guarded_steps](declarations/executes-guarded-steps.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [executes_safe](declarations/executes-safe.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [executes_history_immutable](declarations/executes-history-immutable.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [executes_source_and_lift](declarations/executes-source-and-lift.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [executes_budget_exact](declarations/executes-budget-exact.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [PacketAdmission](declarations/packetadmission.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [admitted_packet_safe](declarations/admitted-packet-safe.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [modular_validity_does_not_discharge](declarations/modular-validity-does-not-discharge.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [modular_validity_does_not_authorize](declarations/modular-validity-does-not-authorize.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [modular_validity_does_not_grant_rights](declarations/modular-validity-does-not-grant-rights.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [SearchAttempt](declarations/searchattempt.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [SearchEvent](declarations/searchevent.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [SearchEvent.expenditure](declarations/searchevent-expenditure.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [SearchEvent.funding](declarations/searchevent-funding.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [totalExpenditure](declarations/totalexpenditure.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [totalFunding](declarations/totalfunding.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [SearchEvent.attemptCount](declarations/searchevent-attemptcount.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [SearchEvent.repairExpenditure](declarations/searchevent-repairexpenditure.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [attemptCount](declarations/attemptcount.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [repairExpenditure](declarations/repairexpenditure.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [attempt_and_repair_monotone](declarations/attempt-and-repair-monotone.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [SearchFunded](declarations/searchfunded.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [funded_attempt_preserved](declarations/funded-attempt-preserved.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [expenditure_append](declarations/expenditure-append.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [expenditure_monotone](declarations/expenditure-monotone.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [record_attempt_exact](declarations/record-attempt-exact.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [rejectedAttempt](declarations/rejectedattempt.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [rejected_search_arbitrarily_long](declarations/rejected-search-arbitrarily-long.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [local_budgets_do_not_bound_total](declarations/local-budgets-do-not-bound-total.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `structure` | [TrackedSession](declarations/trackedsession.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [TrackedSession.recordAttempt](declarations/trackedsession-recordattempt.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [tracked_attempt_expenditure](declarations/tracked-attempt-expenditure.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [TrackedSession.restart](declarations/trackedsession-restart.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [tracked_restart_expenditure](declarations/tracked-restart-expenditure.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [tracked_restart_funding](declarations/tracked-restart-funding.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [tracked_restart_attempt_and_repair](declarations/tracked-restart-attempt-and-repair.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [tracked_restart_lift_and_history](declarations/tracked-restart-lift-and-history.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [tracked_restart_attempt_retained](declarations/tracked-restart-attempt-retained.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [tracked_restart_safe](declarations/tracked-restart-safe.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [restart_cannot_erase_expenditure](declarations/restart-cannot-erase-expenditure.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba8cc85987be196d1df898161969ba0fe180a2dcee1e946553cd422215f0cc06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean","GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
