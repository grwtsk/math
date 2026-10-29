# Transport Namespaced Public Edition3

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e89ee461a50673d52726e6777fd76aba34d21c48`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leanExpectedUpdate](declarations/leanexpectedupdate.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [expectedUpdate_preserves_channelBounds](declarations/expectedupdate-preserves-channelbounds.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [expectedUpdate_preserves_revision](declarations/expectedupdate-preserves-revision.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [expectedUpdate_preserves_colorInvariant](declarations/expectedupdate-preserves-colorinvariant.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [expectedUpdate_idempotent](declarations/expectedupdate-idempotent.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [expectedUpdate_route_independent](declarations/expectedupdate-route-independent.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RawProposal](declarations/rawproposal.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [ProposalRejection](declarations/proposalrejection.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [MergeAdmissible](declarations/mergeadmissible.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [AdmittedProposal](declarations/admittedproposal.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [VerificationResult](declarations/verificationresult.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RangeCheckedXYZ](declarations/rangecheckedxyz.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rangeCheckedXYZ?](declarations/rangecheckedxyz-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [findDeclaredEdge](declarations/finddeclarededge.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [verifyProposal](declarations/verifyproposal.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [verifyProposal_sound](declarations/verifyproposal-sound.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [admittedProposal_edge_declared](declarations/admittedproposal-edge-declared.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [admittedProposal_endpoints_match](declarations/admittedproposal-endpoints-match.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [admittedProposal_expected_output](declarations/admittedproposal-expected-output.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [admittedProposal_channels_in_range](declarations/admittedproposal-channels-in-range.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [verifyProposal_rejects_undeclared_edge](declarations/verifyproposal-rejects-undeclared-edge.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [verifyProposal_rejects_wrong_endpoint](declarations/verifyproposal-rejects-wrong-endpoint.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [verifyProposal_rejects_out_of_range_channel](declarations/verifyproposal-rejects-out-of-range-channel.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verifyProposal_rejects_wrong_expected_output](declarations/verifyproposal-rejects-wrong-expected-output.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [apply_idempotent_of_merge_replay](declarations/apply-idempotent-of-merge-replay.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [identicalReplay_admitted_idempotently](declarations/identicalreplay-admitted-idempotently.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=042d89176527738865c9bbb1a761162644a4a1842aa3ad81bd01713b6429fd21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
