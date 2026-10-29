# The Native Construct Decoded Revocation Core Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d9b11fd270b6d951d40194a39c1da277a0708be`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TheNativeConstructDecodedRevocationCoreEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [nativeHead](declarations/nativehead.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [nativeSourceHashes](declarations/nativesourcehashes.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Mode](declarations/mode.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Key](declarations/key.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Scope](declarations/scope.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [GrantData](declarations/grantdata.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [GrantValue](declarations/grantvalue.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [GrantRecord](declarations/grantrecord.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GrantTable](declarations/granttable.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lookup](declarations/lookup.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [markRevoked](declarations/markrevoked.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [State](declarations/state.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [Target](declarations/target.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Event](declarations/event.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [HostEvent](declarations/hostevent.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [targetKey](declarations/targetkey.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [authorizedActor](declarations/authorizedactor.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [Outcome](declarations/outcome.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [changed](declarations/changed.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [revokeCore](declarations/revokecore.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [unauthorized_no_core_mutation](declarations/unauthorized-no-core-mutation.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [missing_no_core_mutation](declarations/missing-no-core-mutation.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [authorized_existing_changes_once](declarations/authorized-existing-changes-once.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [already_revoked_no_core_mutation](declarations/already-revoked-no-core-mutation.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [immutableRecord](declarations/immutablerecord.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [markRevoked_immutable](declarations/markrevoked-immutable.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [markRevoked_unrelated](declarations/markrevoked-unrelated.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [fixedFields](declarations/fixedfields.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [revokeCore_fixed_fields](declarations/revokecore-fixed-fields.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [revokeCore_keys_preserved](declarations/revokecore-keys-preserved.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [revokeCore_immutable_inventory](declarations/revokecore-immutable-inventory.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [revokeCore_unrelated_stable](declarations/revokecore-unrelated-stable.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [revokeCore_replay_idempotent](declarations/revokecore-replay-idempotent.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [integerMax](declarations/integermax.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [alnumAscii](declarations/alnumascii.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [TokenValid](declarations/tokenvalid.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [KeyValid](declarations/keyvalid.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ScopeValid](declarations/scopevalid.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [GrantDataValid](declarations/grantdatavalid.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [installedKey](declarations/installedkey.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [RecordValid](declarations/recordvalid.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [StateValid](declarations/statevalid.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [checkState](declarations/checkstate.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [checkState_correct](declarations/checkstate-correct.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [changed_state_valid](declarations/changed-state-valid.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [revokeCore_state_valid](declarations/revokecore-state-valid.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TargetValid](declarations/targetvalid.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [EventValid](declarations/eventvalid.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [HostMatches](declarations/hostmatches.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [ScopeMatches](declarations/scopematches.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Admission](declarations/admission.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [checkAdmission](declarations/checkadmission.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [checkAdmission_correct](declarations/checkadmission-correct.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [uncertain_time_permits_revocation](declarations/uncertain-time-permits-revocation.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [wrong_host_actor_rejected](declarations/wrong-host-actor-rejected.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [scope](declarations/scope-source-edition-2.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [effectValue](declarations/effectvalue.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [effectCanonical](declarations/effectcanonical.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [effectRecord](declarations/effectrecord.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [effectState](declarations/effectstate.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [effectEvent](declarations/effectevent.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [host](declarations/host.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [effect_state_independently_valid](declarations/effect-state-independently-valid.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [effect_admission_independently_valid](declarations/effect-admission-independently-valid.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [native_effect_revoke_after](declarations/native-effect-revoke-after.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [rootValue](declarations/rootvalue.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [childValue](declarations/childvalue.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [rootCanonical](declarations/rootcanonical.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [childCanonical](declarations/childcanonical.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [rootRecord](declarations/rootrecord.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [childRecord](declarations/childrecord.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [delegationState](declarations/delegationstate.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [delegationEvent](declarations/delegationevent.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [delegation_state_independently_valid](declarations/delegation-state-independently-valid.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [delegation_admission_independently_valid](declarations/delegation-admission-independently-valid.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [native_ancestor_revoke_root_only](declarations/native-ancestor-revoke-root-only.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [child_issuer_can_revoke_without_authority_actor](declarations/child-issuer-can-revoke-without-authority-actor.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [amendment_uses_reference_issuer](declarations/amendment-uses-reference-issuer.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [unauthorized_precedes_missing_lookup](declarations/unauthorized-precedes-missing-lookup.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [authorized_missing_rejected_without_mutation](declarations/authorized-missing-rejected-without-mutation.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mismatched_host_claim_rejected](declarations/mismatched-host-claim-rejected.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=140f2afea76bb086d33e613c8c121fbdf9692304de94dfa6c2e46e71247005a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
