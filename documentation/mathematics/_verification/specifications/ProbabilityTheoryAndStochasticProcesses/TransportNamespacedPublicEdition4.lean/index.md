# Verification target: Transport Namespaced Public Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3334dea3137ed5a3d47bb553f168a941bc3083bc",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant03facc74580c4a90f796d0b6187d305d347ee8f9dbafe19f869f5c7c3da124f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3334dea3137ed5a3d47bb553f168a941bc3083bc`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant03facc74580c4a90f796d0b6187d305d347ee8f9dbafe19f869f5c7c3da124f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant03facc74580c4a90f796d0b6187d305d347ee8f9dbafe19f869f5c7c3da124f5.lean.json)

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
| 1 | `def` | [leanExpectedUpdate](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/leanexpectedupdate.md) | 33 | `declaration-track:49f9edb2c3f9afb573e4c34a2d442999664544fcfd290a79ccda2f47e196e15f` |
| 2 | `theorem` | [expectedUpdate_preserves_channelBounds](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/expectedupdate-preserves-channelbounds.md) | 38 | `result-track:3b444714c2ac6837e4b0b94badce7e0f33b1857ec5357ed742d9393425505eda` |
| 3 | `theorem` | [expectedUpdate_preserves_revision](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/expectedupdate-preserves-revision.md) | 46 | `result-track:e80c0d6309facea0a087f1ed6fa301f85360575ab8c20c70a72e6a51fd85bb4e` |
| 4 | `theorem` | [expectedUpdate_preserves_colorInvariant](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/expectedupdate-preserves-colorinvariant.md) | 52 | `result-track:16c569a47446d79256cf1fe8ff08a9858c536fab4010075e94215c08ade0b003` |
| 5 | `theorem` | [expectedUpdate_idempotent](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/expectedupdate-idempotent.md) | 60 | `result-track:e85dd8bb17cf9e9c8c80ea3737f5727ca639254b5c3160e23ddbdc15fc7e20e8` |
| 6 | `theorem` | [expectedUpdate_route_independent](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/expectedupdate-route-independent.md) | 66 | `result-track:a9aaa1a802fe83d2c688d10612bc5e5fc54794c28505666774c3f8e816c70e85` |
| 7 | `structure` | [RawProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/rawproposal.md) | 76 | `declaration-track:a14ae4ef7bc5a23118873f94470656924d7d31dbc6226ded68a89bbd9cbdaf75` |
| 8 | `inductive` | [ProposalRejection](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/proposalrejection.md) | 90 | `declaration-track:3d05c1b869568b607b5d9a68f8a8087a9942c18b18f12cf45ac1061641d8e940` |
| 9 | `def` | [MergeAdmissible](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/mergeadmissible.md) | 109 | `declaration-track:8c690457930ff77b14b9fa244ae8e40b37e0282b382315f333fd2c16711863ea` |
| 10 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/instance.md) | 116 | `declaration-track:e5487437c8e071e494d62523cec14928b7bb9df8b6c746d1161a71ed86d7de23` |
| 11 | `structure` | [AdmittedProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/admittedproposal.md) | 128 | `declaration-track:eedf21bc83a8de115918b3d6a14288fffe4dea939de6e6fa69cad770fb5e8eb1` |
| 12 | `inductive` | [VerificationResult](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/verificationresult.md) | 177 | `declaration-track:9fc0889eaae4ed0e3c93505b96703d41e80b328e4c33eccb43dc437cd190d0a3` |
| 13 | `def` | [RangeCheckedXYZ](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/rangecheckedxyz.md) | 191 | `declaration-track:0acaf475ac33f9af70e1903d4971908f27b12f370713e7d5dc82acd8b3dba520` |
| 14 | `def` | [rangeCheckedXYZ?](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/rangecheckedxyz-source-edition-2.md) | 195 | `declaration-track:d533147c82b3ffe0853e3910aaf4301ffff256ccb41dafba1085883899b6ad0d` |
| 15 | `def` | [findDeclaredEdge](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/finddeclarededge.md) | 208 | `declaration-track:f136190e126fae06474da4cb6bb4ee1e8867f63ad224a2b8ece1b246f9431222` |
| 16 | `def` | [verifyProposal](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/verifyproposal.md) | 215 | `declaration-track:181813db5288ec5a820a75552c7365322b6c2e8884e46be2cb4523815262003a` |
| 17 | `theorem` | [verifyProposal_sound](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/verifyproposal-sound.md) | 356 | `result-track:292ca8a2dee159b5f0e80a1c9a83b5f6fa8a85c8bab7c9be8dbd51dc14c984ce` |
| 18 | `theorem` | [verifyProposal_rejects_undeclared_edge](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/verifyproposal-rejects-undeclared-edge.md) | 419 | `result-track:a6dd4acd898a9e034ce7aed4effc2e184c2b3536f264d2be455c9ab527adef54` |
| 19 | `theorem` | [verifyProposal_rejects_wrong_endpoint](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/verifyproposal-rejects-wrong-endpoint.md) | 425 | `result-track:f0056a97a75e04bf9777e4c95e0f685cb5715f378619e2bbdc56731093befeaa` |
| 20 | `theorem` | [verifyProposal_rejects_wrong_expected_output](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/verifyproposal-rejects-wrong-expected-output.md) | 433 | `result-track:8ac57ee5fa00af9aa845178f1c23e181b7f10e402a254981a98dd7eb664f879e` |
| 21 | `theorem` | [verifyProposal_rejects_out_of_range_channel](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/verifyproposal-rejects-out-of-range-channel.md) | 439 | `result-track:7ca2ba628844fbce8dc83b3bc7b806f70fca61da2ff6565db75595090d6608cb` |
| 22 | `theorem` | [apply_idempotent_of_merge_replay](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/apply-idempotent-of-merge-replay.md) | 462 | `result-track:024f2ba49c721a5c924ad037c5a1c7c35a924876e89f9210930cd06bec955f49` |
| 23 | `theorem` | [identicalReplay_admitted_idempotently](../../../../ProbabilityTheoryAndStochasticProcesses/TransportNamespacedPublicEdition4.lean/declarations/identicalreplay-admitted-idempotently.md) | 486 | `result-track:60e75c51eeccd708aa9fb4465ee22f46889f254c03327935c829ce0a8881ee39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c097cd6d8347f8bfdecb5bc035439e1b521635d1adebec8512ed5b75fd821c0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant03facc74580c4a90f796d0b6187d305d347ee8f9dbafe19f869f5c7c3da124f5.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Transport/Variant03facc74580c4a90f796d0b6187d305d347ee8f9dbafe19f869f5c7c3da124f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
