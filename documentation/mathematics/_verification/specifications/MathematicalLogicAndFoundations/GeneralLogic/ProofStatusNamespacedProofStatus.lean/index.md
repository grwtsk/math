# Verification target: Proof Status Namespaced Proof Status

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cf294a8a3dfba5bba2048f44a1a342dac3b8442",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofStatus/Variant0cc69a5f1a072625b6f5358bc7c2538d3ad7ae7c1c0b768b3ea28b2f34e5fc5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cf294a8a3dfba5bba2048f44a1a342dac3b8442`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofStatus/Variant0cc69a5f1a072625b6f5358bc7c2538d3ad7ae7c1c0b768b3ea28b2f34e5fc5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofStatus/Variant0cc69a5f1a072625b6f5358bc7c2538d3ad7ae7c1c0b768b3ea28b2f34e5fc5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProofStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/proofstatus.md) | 30 | `declaration-track:21929fa498e5c8673d9831850d33380cfe834e0ea0da457af52b60dda39ab166` |
| 2 | `def` | [ProofStatus.allowedInFinalCone](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/proofstatus-allowedinfinalcone.md) | 39 | `declaration-track:f855ce4f680b0ef9875d4cd13a51fd8ca386272d6d4a34a8f154153b2306f589` |
| 3 | `structure` | [ImportedTheoremCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/importedtheoremcertificate.md) | 54 | `declaration-track:05a0645dbab5823f20b165359dead7e4d95aea4191e77f629a51ddb1d4bf0109` |
| 4 | `structure` | [RHDependencyRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/rhdependencyrecord.md) | 66 | `declaration-track:e1e3b3ade068d3b83dc3199d14cd4e06a555e19019de7de8eb82597fd2502a39` |
| 5 | `theorem` | [proof_status_contract_not_allowed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/proof-status-contract-not-allowed.md) | 73 | `result-track:80ce2280e1dcaf728f7b7efe9f9334ebbd4f6d373de83a2696d2fe2172145341` |
| 6 | `theorem` | [proof_status_theorem_target_not_allowed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/proof-status-theorem-target-not-allowed.md) | 78 | `result-track:569050b3540799f9c3127bfcdca5d99cdeb1cacc6d33d9904cd7bfe058e1e00d` |
| 7 | `theorem` | [proof_status_external_input_not_allowed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/proof-status-external-input-not-allowed.md) | 83 | `result-track:e4f2423c10c6beeb7209a31645c853bc3aec69835e011ae583425ff6dd426aed` |
| 8 | `theorem` | [checked_by_lean_allowed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/checked-by-lean-allowed.md) | 88 | `result-track:75a9e548861f6102ce1ee9da4012c57b8866c979dda687f6d6ce054a8ef7055d` |
| 9 | `theorem` | [imported_theorem_allowed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/imported-theorem-allowed.md) | 92 | `result-track:ae24e9990ee711c5d1ed50f9fa49b7a8872c6d560dd377be50e8b60b4f2aff3e` |
| 10 | `theorem` | [allowed_status_is_checked_or_imported](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/allowed-status-is-checked-or-imported.md) | 96 | `result-track:47d3ac61cf28e0f7d4ad60e441a4b8e483fc42deeb55dc49d364022012bbe781` |
| 11 | `theorem` | [imported_theorem_certificate_allowed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/imported-theorem-certificate-allowed.md) | 103 | `result-track:40a22c7d96064325a2f58ea8e31c8f8381475195c9142c57f6e80b8fdc5d5d7a` |
| 12 | `theorem` | [imported_theorem_certificate_status](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ProofStatusNamespacedProofStatus.lean/declarations/imported-theorem-certificate-status.md) | 108 | `result-track:39749c860cb5149e7894859f757dcaf14a8a3617ae63b62895219c3a8431eb3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18f96921a671815b169f4d2ee2ab2bee17aa19eefa9b0ecf31f28b4d7735392d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofStatus/Variant0cc69a5f1a072625b6f5358bc7c2538d3ad7ae7c1c0b768b3ea28b2f34e5fc5d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofStatus/Variant0cc69a5f1a072625b6f5358bc7c2538d3ad7ae7c1c0b768b3ea28b2f34e5fc5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
