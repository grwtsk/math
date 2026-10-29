# Verification target: Transport Public Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a6d11a944c586ac0fab88194e333fed35153cf8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a6d11a944c586ac0fab88194e333fed35153cf8`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leanExpectedUpdate](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/leanexpectedupdate.md) | 25 | `declaration-track:f68e6c8196aa8330c38365210f0369ed47e549823a18b046c3f2736009f47035` |
| 2 | `theorem` | [expectedUpdate_preserves_channelBounds](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/expectedupdate-preserves-channelbounds.md) | 30 | `result-track:ec49281eef0de1af0708273e2860ab8d53c3c10f6acdfd304bcbbb9702804221` |
| 3 | `theorem` | [expectedUpdate_preserves_revision](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/expectedupdate-preserves-revision.md) | 38 | `result-track:1d271e9033e10591f449dd6a249e7ade5ba73b0d70cd154acf435a09efe62532` |
| 4 | `theorem` | [expectedUpdate_preserves_colorInvariant](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/expectedupdate-preserves-colorinvariant.md) | 44 | `result-track:23e1b37f4408af11e82fbd2b3c00df69467c8c60196ae49cf6c1e425fad9b201` |
| 5 | `theorem` | [expectedUpdate_idempotent](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/expectedupdate-idempotent.md) | 52 | `result-track:a7e964fa5112043093eba58516e5be70d542e05e23b93eeda70d1e2e444582dc` |
| 6 | `theorem` | [expectedUpdate_route_independent](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/expectedupdate-route-independent.md) | 58 | `result-track:fb11008900992e244f14d5ccd83a31045bae356ae44c00dfb04ace9c45f30faf` |
| 7 | `structure` | [RawProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/rawproposal.md) | 68 | `declaration-track:ff7b6b66c712d4bd4811689654e24d1f1efc48143ebac30be03026936d2f712e` |
| 8 | `inductive` | [ProposalRejection](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/proposalrejection.md) | 82 | `declaration-track:779076d4ad16a7416deba66fa60ab96b89f452d08a6be3866d615296c0e9fb41` |
| 9 | `def` | [MergeAdmissible](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/mergeadmissible.md) | 101 | `declaration-track:c25025c5305d5ecc317df5b648f3265bbf0d8695fb1841bb3f5d98a7162f50fe` |
| 10 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/instance.md) | 108 | `declaration-track:3882f4d6e2f2320305cd70fe1cebf26b5fc661656f340c212a9223d2cdb50256` |
| 11 | `structure` | [AdmittedProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/admittedproposal.md) | 120 | `declaration-track:c0b39afc933cb22b00d6be7cf99f39507051ee5143acb3dfc85622d1d501d60e` |
| 12 | `inductive` | [VerificationResult](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/verificationresult.md) | 169 | `declaration-track:dc2f5e54baf2e96230837afb4b7873d50b12eb884a8ceb8eec915b58ec16f13a` |
| 13 | `def` | [RangeCheckedXYZ](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/rangecheckedxyz.md) | 183 | `declaration-track:9059b4861581863aa96f0df5944db678c73a5ffc7ec1126d810de79757165797` |
| 14 | `def` | [rangeCheckedXYZ?](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/rangecheckedxyz-source-edition-2.md) | 187 | `declaration-track:af2b31219d03f27d4a6ac71d9dc1730df080c4c4b91820c2d527a05d087fa37f` |
| 15 | `def` | [findDeclaredEdge](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/finddeclarededge.md) | 200 | `declaration-track:b6cc16623f4a4f1534908cd2cbef6222e2c4d54fecb8f99418270cfcce9e00d4` |
| 16 | `def` | [verifyProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/verifyproposal.md) | 207 | `declaration-track:7ad3d7103cbe3645acbd55c7ba8a31648aaf155a2421564f71dc5d5ef2f53fa6` |
| 17 | `theorem` | [verifyProposal_sound](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/verifyproposal-sound.md) | 352 | `result-track:73cdb23f492fb35aca8cab0d3919982080da4e58ed36f3bf0f01cd4161e003b3` |
| 18 | `theorem` | [admittedProposal_edge_declared](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/admittedproposal-edge-declared.md) | 416 | `result-track:de4308c04038bcd867ba66ab38928302a47bdbfcc1f6180a64bebc7759d2e665` |
| 19 | `theorem` | [admittedProposal_endpoints_match](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/admittedproposal-endpoints-match.md) | 422 | `result-track:8ea03ac1e5854145515a1a56d4a802036ebb55112d2d83646b8fbc7c711520f4` |
| 20 | `theorem` | [admittedProposal_expected_output](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/admittedproposal-expected-output.md) | 430 | `result-track:92b73528c24ab8db299556b24a3b63ed4c96094503d7ebe69378f7e26900f098` |
| 21 | `theorem` | [admittedProposal_channels_in_range](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/admittedproposal-channels-in-range.md) | 436 | `result-track:62943c336fc6f53921294ae10e90720379b9ce92c2c03906d4a13cf46e8cf5a4` |
| 22 | `theorem` | [verifyProposal_rejects_undeclared_edge](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/verifyproposal-rejects-undeclared-edge.md) | 467 | `result-track:80a224fead0e6a86f8a87112fcb071d0473c279cdf8c4f5eaad989a0ddc0011b` |
| 23 | `theorem` | [verifyProposal_rejects_wrong_endpoint](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/verifyproposal-rejects-wrong-endpoint.md) | 495 | `result-track:2a68f2b302793c05072dcbaf1fac5cd3dc84da6d4778e90840620293a0dc9107` |
| 24 | `theorem` | [verifyProposal_rejects_out_of_range_channel](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/verifyproposal-rejects-out-of-range-channel.md) | 533 | `result-track:3344ae0cd7282686d46eb14fc51136f2ea08cc9d4d1a3be39bfa71a983fdee97` |
| 25 | `theorem` | [verifyProposal_rejects_wrong_expected_output](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/verifyproposal-rejects-wrong-expected-output.md) | 578 | `result-track:e66a857800138644e8a5113b8987a100ec24e986a71c55f26263480fda6f281b` |
| 26 | `theorem` | [apply_idempotent_of_merge_replay](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/apply-idempotent-of-merge-replay.md) | 633 | `result-track:0e804e51e96c788967245908eb2b12069651e7d406e2290808a320050b31e8d1` |
| 27 | `theorem` | [identicalReplay_admitted_idempotently](../../../../ProbabilityTheoryAndStochasticProcesses/TransportPublicEdition4.lean/declarations/identicalreplay-admitted-idempotently.md) | 657 | `result-track:54dca94187777a0e889596159ff62233761403053b2150e230993a6c3f3869e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8d0dc81bc52356b3a6da60fc8df8b45597a6b9369464bc5292658ebbb39887d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variantebccab6ab38b755a4a9d7e05517b2d0d15850d03e7f3df1f8a337c02fa4bd7d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
