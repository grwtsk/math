# Transport Public Edition3

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95a5172640f15d73127accaf507f1a991cdb5d93`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition3.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leanExpectedUpdate](declarations/leanexpectedupdate.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [expectedUpdate_preserves_channelBounds](declarations/expectedupdate-preserves-channelbounds.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [expectedUpdate_preserves_revision](declarations/expectedupdate-preserves-revision.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [expectedUpdate_preserves_colorInvariant](declarations/expectedupdate-preserves-colorinvariant.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [expectedUpdate_idempotent](declarations/expectedupdate-idempotent.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [expectedUpdate_route_independent](declarations/expectedupdate-route-independent.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RawProposal](declarations/rawproposal.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [ProposalRejection](declarations/proposalrejection.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [MergeAdmissible](declarations/mergeadmissible.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [AdmittedProposal](declarations/admittedproposal.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [VerificationResult](declarations/verificationresult.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RangeCheckedXYZ](declarations/rangecheckedxyz.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [rangeCheckedXYZ?](declarations/rangecheckedxyz-source-edition-2.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [findDeclaredEdge](declarations/finddeclarededge.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [verifyProposal](declarations/verifyproposal.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [verifyProposal_sound](declarations/verifyproposal-sound.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [admittedProposal_edge_declared](declarations/admittedproposal-edge-declared.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [admittedProposal_endpoints_match](declarations/admittedproposal-endpoints-match.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [admittedProposal_expected_output](declarations/admittedproposal-expected-output.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [admittedProposal_channels_in_range](declarations/admittedproposal-channels-in-range.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [verifyProposal_rejects_undeclared_edge](declarations/verifyproposal-rejects-undeclared-edge.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [verifyProposal_rejects_wrong_endpoint](declarations/verifyproposal-rejects-wrong-endpoint.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [verifyProposal_rejects_out_of_range_channel](declarations/verifyproposal-rejects-out-of-range-channel.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [verifyProposal_rejects_wrong_expected_output](declarations/verifyproposal-rejects-wrong-expected-output.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [apply_idempotent_of_merge_replay](declarations/apply-idempotent-of-merge-replay.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [identicalReplay_admitted_idempotently](declarations/identicalreplay-admitted-idempotently.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9195b14acaeae1810071b85fefdb583d7af47285db08233a91c74501dd6a6d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantdde9a86e39a37c91f2dced32963cc126a4143984d03c151b51a237abf3f4f294.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
