# XYZRoute Fixture Namespaced Public Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07428bfb7615cd9615b63f0c9ed5a0ac0ecb5871`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/XYZRouteFixtureNamespacedPublicEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FixtureHost](declarations/fixturehost.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [FixtureEdgeId](declarations/fixtureedgeid.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [fixtureHostCode](declarations/fixturehostcode.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [fixtureEdgeCode](declarations/fixtureedgecode.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [fixtureEdge](declarations/fixtureedge.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [fixtureInsertionEdges](declarations/fixtureinsertionedges.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fixtureCanonicalEdges](declarations/fixturecanonicaledges.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fixtureEdges](declarations/fixtureedges.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [fixtureContractHash](declarations/fixturecontracthash.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [fixtureSnapshotHash](declarations/fixturesnapshothash.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [fixtureWrongContractHash](declarations/fixturewrongcontracthash.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [fixtureContractHash_valid](declarations/fixturecontracthash-valid.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fixtureSnapshotHash_valid](declarations/fixturesnapshothash-valid.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fixtureWrongContractHash_valid](declarations/fixturewrongcontracthash-valid.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fixtureWrongContractHash_ne](declarations/fixturewrongcontracthash-ne.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [fixtureContract](declarations/fixturecontract.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fixtureContract_contractHash](declarations/fixturecontract-contracthash.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fixtureContract_algorithmVersion](declarations/fixturecontract-algorithmversion.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fixtureEdgeFinsets_equal](declarations/fixtureedgefinsets-equal.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fixtureContract_sortedCanonicalEdges](declarations/fixturecontract-sortedcanonicaledges.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fixtureContract_valid](declarations/fixturecontract-valid.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ordered_edge_sorting](declarations/ordered-edge-sorting.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bfs_route_through_cycle](declarations/bfs-route-through-cycle.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [self_loop_ignored_after_visit](declarations/self-loop-ignored-after-visit.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [disconnected_empty_route](declarations/disconnected-empty-route.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [proposalEdge](declarations/proposaledge.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [findDeclaredEdge_proposalEdge](declarations/finddeclarededge-proposaledge.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [findDeclaredEdge_undeclared](declarations/finddeclarededge-undeclared.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [equalEnergyWhite](declarations/equalenergywhite.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [primaryX](declarations/primaryx.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [primaryY](declarations/primaryy.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [primaryZ](declarations/primaryz.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [asymmetricNormalized](declarations/asymmetricnormalized.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [equalEnergyWhite_ne_asymmetricNormalized](declarations/equalenergywhite-ne-asymmetricnormalized.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [revisioned](declarations/revisioned.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [whiteAt0](declarations/whiteat0.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [primaryXAt1](declarations/primaryxat1.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [primaryYAt2](declarations/primaryyat2.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [primaryZAt3](declarations/primaryzat3.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [primaryYAt4](declarations/primaryyat4.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [asymmetricAt42](declarations/asymmetricat42.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [whiteAtMaxRevision](declarations/whiteatmaxrevision.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [identity_expected_update](declarations/identity-expected-update.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [equal_energy_normalized_invariant](declarations/equal-energy-normalized-invariant.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [RustExpectedUpdateCertificate](declarations/rustexpectedupdatecertificate.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [rustExpectedUpdate](declarations/rustexpectedupdate.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [RustExpectedUpdateConforms](declarations/rustexpectedupdateconforms.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [rustExpectedUpdate_eq_leanExpectedUpdate](declarations/rustexpectedupdate-eq-leanexpectedupdate.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [identityCertificate](declarations/identitycertificate.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [whiteCertificate](declarations/whitecertificate.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [primaryXCertificate](declarations/primaryxcertificate.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [primaryYCertificate](declarations/primaryycertificate.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [primaryZCertificate](declarations/primaryzcertificate.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [minMaxCertificate](declarations/minmaxcertificate.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [asymmetricCertificate](declarations/asymmetriccertificate.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [maxRevisionCertificate](declarations/maxrevisioncertificate.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [golden_update_certificates_checked](declarations/golden-update-certificates-checked.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [sourceSnapshot](declarations/sourcesnapshot.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [baseRegister](declarations/baseregister.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [baseProposal](declarations/baseproposal.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [replayRegister](declarations/replayregister.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [staleRegister](declarations/staleregister.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [conflictRegister](declarations/conflictregister.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [wrongEdgeProposal](declarations/wrongedgeproposal.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [wrongHashProposal](declarations/wronghashproposal.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [wrongProposedValueProposal](declarations/wrongproposedvalueproposal.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `inductive` | [FixtureVerificationStatus](declarations/fixtureverificationstatus.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [verificationStatus](declarations/verificationstatus.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [mergeStatus](declarations/mergestatus.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [baseProposal_verificationStatus](declarations/baseproposal-verificationstatus.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [accepted_newer_revision](declarations/accepted-newer-revision.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [identical_replay_observed](declarations/identical-replay-observed.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [stale_rejection_observed](declarations/stale-rejection-observed.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [equal_revision_conflict_rejection_observed](declarations/equal-revision-conflict-rejection-observed.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [wrong_edge_rejection_observed](declarations/wrong-edge-rejection-observed.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [wrong_hash_rejection_observed](declarations/wrong-hash-rejection-observed.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [wrong_proposed_value_rejection_observed](declarations/wrong-proposed-value-rejection-observed.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [sabHeaderBytesV1](declarations/sabheaderbytesv1.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [sabControlWordsV1](declarations/sabcontrolwordsv1.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [sabSlotCountV1](declarations/sabslotcountv1.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [sabSlotBytesV1](declarations/sabslotbytesv1.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [sabTotalBytesV1](declarations/sabtotalbytesv1.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [sabSlotOffsetsV1](declarations/sabslotoffsetsv1.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [sabMagicUnsignedV1](declarations/sabmagicunsignedv1.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [sabAbiVersionV1](declarations/sababiversionv1.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [sabWordIndicesV1](declarations/sabwordindicesv1.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [sabStateCodesV1](declarations/sabstatecodesv1.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [sabLayoutV1_checked](declarations/sablayoutv1-checked.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9021acd8df5b234a179ba9c7bfcd35433b856644b697fd9f1851a5ecfc1e7182 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variantd82884dce15377cbe99a5fa6913edece2b16ca72952e2a9650811c587d72d70a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
