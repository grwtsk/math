# Verification target: Transport Namespaced Public Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e89ee461a50673d52726e6777fd76aba34d21c48",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e89ee461a50673d52726e6777fd76aba34d21c48`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leanExpectedUpdate](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/leanexpectedupdate.md) | 33 | `declaration-track:d743e4dabdecd8d3e48baf62a2a7f114f5a5e8fa5dde297a050ac8e66f246886` |
| 2 | `theorem` | [expectedUpdate_preserves_channelBounds](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/expectedupdate-preserves-channelbounds.md) | 38 | `result-track:eaa0a2a38b4625e83acb931223a58502231af4091833c1b5c8be2643c54f2a4d` |
| 3 | `theorem` | [expectedUpdate_preserves_revision](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/expectedupdate-preserves-revision.md) | 46 | `result-track:d1e2e0608589991c7f5346fd7f9a7fb4414d1b46fe51fadeb892126ed0725dbb` |
| 4 | `theorem` | [expectedUpdate_preserves_colorInvariant](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/expectedupdate-preserves-colorinvariant.md) | 52 | `result-track:f3552cc25bcbe2eb39f66e4a4f7fd5dcb0f7d4236d234528e8302909be333d8f` |
| 5 | `theorem` | [expectedUpdate_idempotent](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/expectedupdate-idempotent.md) | 60 | `result-track:757ac1d91759466b4785734a21a180b412a4fcdaa7c35786ea0cd6769908a3db` |
| 6 | `theorem` | [expectedUpdate_route_independent](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/expectedupdate-route-independent.md) | 66 | `result-track:7495ca6d4f8ee6b98648b40822831b0907e77c509af60aeae4ba3f6e9f1bfef7` |
| 7 | `structure` | [RawProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/rawproposal.md) | 76 | `declaration-track:1dee2795958033b3cd9b1a23420b1a6879f7b86f7e9ede23e1d58ebd0cdaa41a` |
| 8 | `inductive` | [ProposalRejection](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/proposalrejection.md) | 90 | `declaration-track:e2d6f538dc78f79f7f10ffe2eadb7a00dfc7343f2c09472e8eec1125e30d17bf` |
| 9 | `def` | [MergeAdmissible](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/mergeadmissible.md) | 109 | `declaration-track:fa033fd2f0c9f7e392d6590899b50988343147275950193c577aff1e638529fa` |
| 10 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/instance.md) | 116 | `declaration-track:21517e7fc085c8316a9b48fea29b240bed4cd43f56fde6d7d0a31639c3283dc0` |
| 11 | `structure` | [AdmittedProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/admittedproposal.md) | 128 | `declaration-track:fa92a770363dd50c9b97c3ae44b47fa26953665b9e4c04391f5d248356dbd4bf` |
| 12 | `inductive` | [VerificationResult](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/verificationresult.md) | 177 | `declaration-track:bff2c854417daf2f4f8d57db028f90a12f530e14a743e2c7bfc9d12122057ad4` |
| 13 | `def` | [RangeCheckedXYZ](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/rangecheckedxyz.md) | 191 | `declaration-track:2e35b59fdee8aa28230e6c66ca210239e117e95b4bb1a7055eeaa11d0d95bb81` |
| 14 | `def` | [rangeCheckedXYZ?](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/rangecheckedxyz-source-edition-2.md) | 195 | `declaration-track:48dadb100fc27a8b7298468ccc3ee49cb8e71c71c2910bbc181d6ec58ae6f85a` |
| 15 | `def` | [findDeclaredEdge](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/finddeclarededge.md) | 208 | `declaration-track:52c6da1d61cd8d6763e1a1c1b01ce57c44248bab582143305a1401aa51426012` |
| 16 | `def` | [verifyProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/verifyproposal.md) | 215 | `declaration-track:160d7f31ca5575429388d4624bf2a58e92052861e2719e978451623e5140d1f3` |
| 17 | `theorem` | [verifyProposal_sound](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/verifyproposal-sound.md) | 360 | `result-track:2b610458945b02abc6311d89ae0273add705f733c7b7e760034d546e9521b6de` |
| 18 | `theorem` | [admittedProposal_edge_declared](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/admittedproposal-edge-declared.md) | 424 | `result-track:5879ed2818357bd6b093e8c2513ec54b68b043782c4f4db40a6e5c069a0dcc92` |
| 19 | `theorem` | [admittedProposal_endpoints_match](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/admittedproposal-endpoints-match.md) | 430 | `result-track:3686afc3c192029fe181069166833b39d6072018cda78290e98a7f82364f698c` |
| 20 | `theorem` | [admittedProposal_expected_output](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/admittedproposal-expected-output.md) | 438 | `result-track:6da1226b00ce6eea790974276427a4096bb3eec3f1d3688f6bc76e80d2c847d5` |
| 21 | `theorem` | [admittedProposal_channels_in_range](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/admittedproposal-channels-in-range.md) | 444 | `result-track:e460455064ad6a9c3b393078fcd81fc05b2eb376baf32c65e9be1550935232bd` |
| 22 | `theorem` | [verifyProposal_rejects_undeclared_edge](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/verifyproposal-rejects-undeclared-edge.md) | 475 | `result-track:46f7620c16e4ce76df41e130337717735a417c95e2141f91cb1c8ab0da5902ca` |
| 23 | `theorem` | [verifyProposal_rejects_wrong_endpoint](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/verifyproposal-rejects-wrong-endpoint.md) | 503 | `result-track:5f442535f5a78c9dddcb218a49d3bb5fbb93df79ea9a56a6d779690b75dd46a4` |
| 24 | `theorem` | [verifyProposal_rejects_out_of_range_channel](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/verifyproposal-rejects-out-of-range-channel.md) | 541 | `result-track:c4c2147671efc38d6440573694b78da36ffecc8d5469532f46baf7de695c04a8` |
| 25 | `theorem` | [verifyProposal_rejects_wrong_expected_output](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/verifyproposal-rejects-wrong-expected-output.md) | 586 | `result-track:beda03f974498fe80ef50e825b3e4a1b88a7a924fb5fd1ecc32524db8c02c26f` |
| 26 | `theorem` | [apply_idempotent_of_merge_replay](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/apply-idempotent-of-merge-replay.md) | 641 | `result-track:9e7991ea51c2c871132a4b041ebf281da256483016778a64886742154fb342ed` |
| 27 | `theorem` | [identicalReplay_admitted_idempotently](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition3.lean/declarations/identicalreplay-admitted-idempotently.md) | 665 | `result-track:5d136c53374d18a622671e4a8fc507e081e3eb7cf43e8839118ba56480856e57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d544bc224359f743939b55476a45c039c69a436eb96449c56845e408fb60b338 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant6a25ce4215235a1f4658636f15bb37ebea98372c69e0e78ca71f72931384ff74.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
