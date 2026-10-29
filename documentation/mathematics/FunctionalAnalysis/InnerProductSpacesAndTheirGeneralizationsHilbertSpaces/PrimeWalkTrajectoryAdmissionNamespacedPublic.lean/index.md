# Prime Walk Trajectory Admission Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad9f0b1c519ce2c5a6b756eee360d06dede2ade2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PrimeWalkTrajectoryAdmissionNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AdmissionStage](declarations/admissionstage.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AdmissionBoundary](declarations/admissionboundary.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [AdmissionError](declarations/admissionerror.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AdmissionClockDraft](declarations/admissionclockdraft.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AdmissionClock](declarations/admissionclock.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [validatePrecedence](declarations/validateprecedence.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sealAdmissionClock](declarations/sealadmissionclock.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [TransitionDraft](declarations/transitiondraft.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [AdmissionRecord](declarations/admissionrecord.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [sealTransition](declarations/sealtransition.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [AdjacentChain](declarations/adjacentchain.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [AdmissionLedger](declarations/admissionledger.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [LedgerChainEvidence](declarations/ledgerchainevidence.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sealLedgerRecords](declarations/sealledgerrecords.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [sealLedger](declarations/sealledger.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [AdmissionClock.controlFlowTick_ne_kernelAdmissionTick](declarations/admissionclock-controlflowtick-ne-kerneladmissiontick.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [AdmissionClock.kernelAdmissionTick_ne_handshakeTick](declarations/admissionclock-kerneladmissiontick-ne-handshaketick.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [AdmissionClock.controlFlow_before_handshake](declarations/admissionclock-controlflow-before-handshake.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sealAdmissionClock_sound](declarations/sealadmissionclock-sound.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [validatePrecedence_sameTick](declarations/validateprecedence-sametick.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [validatePrecedence_regression](declarations/validateprecedence-regression.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [projectiveTrajectory](declarations/projectivetrajectory.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [ProjectivePathFlatnessCertificate](declarations/projectivepathflatnesscertificate.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [AdmittedProjectiveTrajectory](declarations/admittedprojectivetrajectory.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [HasAdmittedProjectiveTrajectory](declarations/hasadmittedprojectivetrajectory.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [projectiveTrajectory_apply](declarations/projectivetrajectory-apply.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [AdmittedProjectiveTrajectory.observes_signal](declarations/admittedprojectivetrajectory-observes-signal.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [AdmittedProjectiveTrajectory.transport_identity](declarations/admittedprojectivetrajectory-transport-identity.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [AdmittedProjectiveTrajectory.transport_cocycle](declarations/admittedprojectivetrajectory-transport-cocycle.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [AdmittedProjectiveTrajectory.record_parameter_strict](declarations/admittedprojectivetrajectory-record-parameter-strict.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [AdmittedProjectiveTrajectory.record_has_flatTransport](declarations/admittedprojectivetrajectory-record-has-flattransport.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=820267f761cea1867e3ab7d611a6035e94993cc2bbda9a95e41fc0088cace0b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
