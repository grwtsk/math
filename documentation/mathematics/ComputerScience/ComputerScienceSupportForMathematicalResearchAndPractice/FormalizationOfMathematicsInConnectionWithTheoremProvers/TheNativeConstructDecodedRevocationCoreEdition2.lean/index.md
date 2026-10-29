# The Native Construct Decoded Revocation Core Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variantdee303da0660a223f13b25ff8666c37ad2e2071da809fec2fd4a5f4906d77161.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d566bd680b4755ed5b07fca1b38e8663063b566`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TheNativeConstructDecodedRevocationCoreEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [nativeHead](declarations/nativehead.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [nativeSourceHashes](declarations/nativesourcehashes.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Mode](declarations/mode.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Key](declarations/key.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Scope](declarations/scope-source-edition-2.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [GrantData](declarations/grantdata.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [GrantValue](declarations/grantvalue.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [GrantRecord](declarations/grantrecord.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GrantTable](declarations/granttable.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lookup](declarations/lookup.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [markRevoked](declarations/markrevoked.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [State](declarations/state.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [Target](declarations/target.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Event](declarations/event.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [HostEvent](declarations/hostevent.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [targetKey](declarations/targetkey.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [authorizedActor](declarations/authorizedactor.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [Outcome](declarations/outcome.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [changed](declarations/changed.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [revokeCore](declarations/revokecore.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [unauthorized_no_core_mutation](declarations/unauthorized-no-core-mutation.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [missing_no_core_mutation](declarations/missing-no-core-mutation.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [authorized_existing_changes_once](declarations/authorized-existing-changes-once.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [already_revoked_no_core_mutation](declarations/already-revoked-no-core-mutation.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [immutableRecord](declarations/immutablerecord.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [markRevoked_immutable](declarations/markrevoked-immutable.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [markRevoked_unrelated](declarations/markrevoked-unrelated.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [fixedFields](declarations/fixedfields.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [revokeCore_fixed_fields](declarations/revokecore-fixed-fields.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [revokeCore_keys_preserved](declarations/revokecore-keys-preserved.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [revokeCore_immutable_inventory](declarations/revokecore-immutable-inventory.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [revokeCore_unrelated_stable](declarations/revokecore-unrelated-stable.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [revokeCore_replay_idempotent](declarations/revokecore-replay-idempotent.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [integerMax](declarations/integermax.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [alnumAscii](declarations/alnumascii.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [TokenValid](declarations/tokenvalid.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [KeyValid](declarations/keyvalid.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ScopeValid](declarations/scopevalid.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [GrantDataValid](declarations/grantdatavalid.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [installedKey](declarations/installedkey.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [RecordValid](declarations/recordvalid.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [StateValid](declarations/statevalid.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [checkState](declarations/checkstate.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [checkState_correct](declarations/checkstate-correct.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [changed_state_valid](declarations/changed-state-valid.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [revokeCore_state_valid](declarations/revokecore-state-valid.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TargetValid](declarations/targetvalid.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [EventValid](declarations/eventvalid.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [HostMatches](declarations/hostmatches.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [ScopeMatches](declarations/scopematches.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Admission](declarations/admission.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [checkAdmission](declarations/checkadmission.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [checkAdmission_correct](declarations/checkadmission-correct.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [uncertain_time_permits_revocation](declarations/uncertain-time-permits-revocation.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [wrong_host_actor_rejected](declarations/wrong-host-actor-rejected.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [scope](declarations/scope.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [effectValue](declarations/effectvalue.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [effectCanonical](declarations/effectcanonical.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [effectRecord](declarations/effectrecord.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [effectState](declarations/effectstate.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [effectEvent](declarations/effectevent.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [host](declarations/host.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [effect_state_independently_valid](declarations/effect-state-independently-valid.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [effect_admission_independently_valid](declarations/effect-admission-independently-valid.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [native_effect_revoke_after](declarations/native-effect-revoke-after.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [rootValue](declarations/rootvalue.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [childValue](declarations/childvalue.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [rootCanonical](declarations/rootcanonical.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [childCanonical](declarations/childcanonical.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [rootRecord](declarations/rootrecord.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [childRecord](declarations/childrecord.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [delegationState](declarations/delegationstate.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [delegationEvent](declarations/delegationevent.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [delegation_state_independently_valid](declarations/delegation-state-independently-valid.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [delegation_admission_independently_valid](declarations/delegation-admission-independently-valid.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [native_ancestor_revoke_root_only](declarations/native-ancestor-revoke-root-only.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [child_issuer_can_revoke_without_authority_actor](declarations/child-issuer-can-revoke-without-authority-actor.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [amendment_uses_reference_issuer](declarations/amendment-uses-reference-issuer.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [unauthorized_precedes_missing_lookup](declarations/unauthorized-precedes-missing-lookup.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [authorized_missing_rejected_without_mutation](declarations/authorized-missing-rejected-without-mutation.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mismatched_host_claim_rejected](declarations/mismatched-host-claim-rejected.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dc60a992149c6c57809e6ea92ded49ed38fedc9488b1e6bf8832f2762999ebd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variantdee303da0660a223f13b25ff8666c37ad2e2071da809fec2fd4a5f4906d77161.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
