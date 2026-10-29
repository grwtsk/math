# XYZRoute Fixture Public Edition6

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**89 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta4d786262500561fbdd7eb5c24824312380c752d14dd7bfe901ca2f2eed82674.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc7f587644307be8ec6e7c9b5c88c7106ee30649`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/XYZRouteFixturePublicEdition6.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FixtureHost](declarations/fixturehost.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [FixtureEdgeId](declarations/fixtureedgeid.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [fixtureHostCode](declarations/fixturehostcode.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [fixtureEdgeCode](declarations/fixtureedgecode.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [fixtureEdge](declarations/fixtureedge.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [fixtureInsertionEdges](declarations/fixtureinsertionedges.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fixtureCanonicalEdges](declarations/fixturecanonicaledges.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fixtureEdges](declarations/fixtureedges.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [fixtureContractHash](declarations/fixturecontracthash.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [fixtureSnapshotHash](declarations/fixturesnapshothash.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [fixtureWrongContractHash](declarations/fixturewrongcontracthash.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [fixtureContractHash_valid](declarations/fixturecontracthash-valid.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fixtureSnapshotHash_valid](declarations/fixturesnapshothash-valid.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fixtureWrongContractHash_valid](declarations/fixturewrongcontracthash-valid.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fixtureWrongContractHash_ne](declarations/fixturewrongcontracthash-ne.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [fixtureContract](declarations/fixturecontract.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fixtureContract_contractHash](declarations/fixturecontract-contracthash.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fixtureContract_algorithmVersion](declarations/fixturecontract-algorithmversion.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fixtureEdgeFinsets_equal](declarations/fixtureedgefinsets-equal.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fixtureContract_sortedCanonicalEdges](declarations/fixturecontract-sortedcanonicaledges.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fixtureContract_valid](declarations/fixturecontract-valid.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ordered_edge_sorting](declarations/ordered-edge-sorting.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bfs_route_through_cycle](declarations/bfs-route-through-cycle.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [self_loop_ignored_after_visit](declarations/self-loop-ignored-after-visit.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [disconnected_empty_route](declarations/disconnected-empty-route.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [proposalEdge](declarations/proposaledge.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [findDeclaredEdge_proposalEdge](declarations/finddeclarededge-proposaledge.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [findDeclaredEdge_undeclared](declarations/finddeclarededge-undeclared.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [equalEnergyWhite](declarations/equalenergywhite.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [primaryX](declarations/primaryx.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [primaryY](declarations/primaryy.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [primaryZ](declarations/primaryz.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [asymmetricNormalized](declarations/asymmetricnormalized.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [equalEnergyWhite_ne_asymmetricNormalized](declarations/equalenergywhite-ne-asymmetricnormalized.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [revisioned](declarations/revisioned.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [whiteAt0](declarations/whiteat0.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [primaryXAt1](declarations/primaryxat1.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [primaryYAt2](declarations/primaryyat2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [primaryZAt3](declarations/primaryzat3.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [primaryYAt4](declarations/primaryyat4.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [asymmetricAt42](declarations/asymmetricat42.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [whiteAtMaxRevision](declarations/whiteatmaxrevision.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [identity_expected_update](declarations/identity-expected-update.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [equal_energy_normalized_invariant](declarations/equal-energy-normalized-invariant.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [RustExpectedUpdateCertificate](declarations/rustexpectedupdatecertificate.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [RustExpectedUpdateCertificate.conformanceClaim](declarations/rustexpectedupdatecertificate-conformanceclaim.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [rustExpectedUpdate](declarations/rustexpectedupdate.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [RustExpectedUpdateConforms](declarations/rustexpectedupdateconforms.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [rustExpectedUpdate_eq_leanExpectedUpdate](declarations/rustexpectedupdate-eq-leanexpectedupdate.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [identityCertificate](declarations/identitycertificate.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [whiteCertificate](declarations/whitecertificate.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [primaryXCertificate](declarations/primaryxcertificate.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [primaryYCertificate](declarations/primaryycertificate.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [primaryZCertificate](declarations/primaryzcertificate.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [minMaxCertificate](declarations/minmaxcertificate.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [asymmetricCertificate](declarations/asymmetriccertificate.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [maxRevisionCertificate](declarations/maxrevisioncertificate.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [golden_update_certificates_checked](declarations/golden-update-certificates-checked.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [sourceSnapshot](declarations/sourcesnapshot.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [baseRegister](declarations/baseregister.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [baseProposal](declarations/baseproposal.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [replayRegister](declarations/replayregister.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [staleRegister](declarations/staleregister.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [conflictRegister](declarations/conflictregister.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [wrongEdgeProposal](declarations/wrongedgeproposal.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [wrongHashProposal](declarations/wronghashproposal.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [wrongProposedValueProposal](declarations/wrongproposedvalueproposal.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `inductive` | [FixtureVerificationStatus](declarations/fixtureverificationstatus.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [verificationStatus](declarations/verificationstatus.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [mergeStatus](declarations/mergestatus.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [baseProposal_verificationStatus](declarations/baseproposal-verificationstatus.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [accepted_newer_revision](declarations/accepted-newer-revision.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [identical_replay_observed](declarations/identical-replay-observed.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [stale_rejection_observed](declarations/stale-rejection-observed.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [equal_revision_conflict_rejection_observed](declarations/equal-revision-conflict-rejection-observed.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [wrong_edge_rejection_observed](declarations/wrong-edge-rejection-observed.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [wrong_hash_rejection_observed](declarations/wrong-hash-rejection-observed.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [wrong_proposed_value_rejection_observed](declarations/wrong-proposed-value-rejection-observed.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [sabHeaderBytesV1](declarations/sabheaderbytesv1.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [sabControlWordsV1](declarations/sabcontrolwordsv1.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [sabSlotCountV1](declarations/sabslotcountv1.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [sabSlotBytesV1](declarations/sabslotbytesv1.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [sabTotalBytesV1](declarations/sabtotalbytesv1.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [sabSlotOffsetsV1](declarations/sabslotoffsetsv1.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [sabMagicUnsignedV1](declarations/sabmagicunsignedv1.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [sabAbiVersionV1](declarations/sababiversionv1.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [sabWordIndicesV1](declarations/sabwordindicesv1.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [sabStateCodesV1](declarations/sabstatecodesv1.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [sabLayoutV1_checked](declarations/sablayoutv1-checked.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e213ef60ffbe932e474731378c689582b98b418592795e4b8d0474d04ff80f40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Varianta4d786262500561fbdd7eb5c24824312380c752d14dd7bfe901ca2f2eed82674.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
