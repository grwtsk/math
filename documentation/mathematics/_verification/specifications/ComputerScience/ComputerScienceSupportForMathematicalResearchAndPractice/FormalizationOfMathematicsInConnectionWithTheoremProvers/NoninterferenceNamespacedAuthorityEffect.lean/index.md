# Verification target: Noninterference Namespaced Authority Effect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "721001e3116ebb25385a308363d901c2d7d80b3a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant573d99389aff88d6a8bb0475a5877e7a0d974ae6779f0c013bee012222194b65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `721001e3116ebb25385a308363d901c2d7d80b3a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant573d99389aff88d6a8bb0475a5877e7a0d974ae6779f0c013bee012222194b65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant573d99389aff88d6a8bb0475a5877e7a0d974ae6779f0c013bee012222194b65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AuthorityEffect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/authorityeffect.md) | 19 | `declaration-track:8c99e4a6a305c7ae0a944f04c864488f45159df6b3e9d559daad61696f9eb5a1` |
| 2 | `inductive` | [SemiLocalArtifactKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/semilocalartifactkind.md) | 25 | `declaration-track:29d999121d85e8f34c9e906e9bf39cff03a06aaa7f7e2d965cd64ef47f0987ad` |
| 3 | `def` | [SemiLocalArtifactKind.authorityEffect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/semilocalartifactkind-authorityeffect.md) | 31 | `declaration-track:df42ea683c6831547e7b24335e6764ae818b3a6ca606330402e5d929479f3754` |
| 4 | `structure` | [CapacityPresentation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/capacitypresentation.md) | 35 | `declaration-track:9f3ab4f61510019a6e62f62d01234ac62f045516c6350fbf0af3e07206f50728` |
| 5 | `def` | [CapacityPresentation.withPresentation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/capacitypresentation-withpresentation.md) | 40 | `declaration-track:129762241729ec82cf6e7e989a7f39d36e5c4e920a6b78c6095ab58d0805c81b` |
| 6 | `theorem` | [presentation_cannot_change_capacity_authority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/presentation-cannot-change-capacity-authority.md) | 48 | `result-track:48f39111b7888741fa569440ff37fcf1decb9a4b47102f4c7c497fad0251f615` |
| 7 | `theorem` | [presentation_cannot_change_capacity_identity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/presentation-cannot-change-capacity-identity.md) | 55 | `result-track:ea36c04f550e86aee5495c72e5259bafd1bdaff8f886730920d3592f4ae2280a` |
| 8 | `theorem` | [numerical_psd_evidence_does_not_create_theorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/numerical-psd-evidence-does-not-create-theorem.md) | 62 | `result-track:5e9a364bf0a3a71fd77526fd93ac0b6aac11dc044d1f8dca0984fc9355e9864a` |
| 9 | `theorem` | [finite_proof_does_not_commit_runtime_state](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAuthorityEffect.lean/declarations/finite-proof-does-not-commit-runtime-state.md) | 67 | `result-track:279917df12784f55ef3c96a4a3fc2f8e9efde1a0d0898c1f3f9a7d08dff065ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fed742f4255bdea99d085d8274dcb26cebd469e1ab21ecbc6dda897dc820e59f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant573d99389aff88d6a8bb0475a5877e7a0d974ae6779f0c013bee012222194b65.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant573d99389aff88d6a8bb0475a5877e7a0d974ae6779f0c013bee012222194b65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
