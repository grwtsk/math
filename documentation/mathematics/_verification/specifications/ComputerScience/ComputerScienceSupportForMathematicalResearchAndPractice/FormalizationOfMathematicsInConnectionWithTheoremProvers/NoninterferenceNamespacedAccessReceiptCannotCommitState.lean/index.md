# Verification target: Noninterference Namespaced Access Receipt Cannot Commit State

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10e996a6c87f6e6137d769161abe6e99a0a98ff5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAccessReceiptCannotCommitState.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAccessReceiptCannotCommitState.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10e996a6c87f6e6137d769161abe6e99a0a98ff5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Core.Receipt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exploration.Recaman` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [access_receipt_cannot_commit_state](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAccessReceiptCannotCommitState.lean/declarations/access-receipt-cannot-commit-state.md) | 18 | `result-track:6fdc9063e500b45bb426c65b16795ffb304fe8f66c00039bb450ae822dedb2a2` |
| 2 | `structure` | [AccessPresentationChange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAccessReceiptCannotCommitState.lean/declarations/accesspresentationchange.md) | 23 | `declaration-track:600bc5454adaac63e15b6d9ee00e9d1cfa506e778b8d930c3d38693b31312a21` |
| 3 | `theorem` | [presentation_change_preserves_access_certificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAccessReceiptCannotCommitState.lean/declarations/presentation-change-preserves-access-certificate.md) | 38 | `result-track:33333f7ef9ef9f781b20cb8250ec3b81ac0dd6e7f7a14c1909d1c701f46f000b` |
| 4 | `structure` | [TraversalAuthorityBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAccessReceiptCannotCommitState.lean/declarations/traversalauthorityboundary.md) | 44 | `declaration-track:61687480b9ed5f15bf2bf768330dafe66685abaee97e5bafb3cd10f225cd096d` |
| 5 | `theorem` | [traversal_mode_does_not_grant_commit_authority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceNamespacedAccessReceiptCannotCommitState.lean/declarations/traversal-mode-does-not-grant-commit-authority.md) | 50 | `result-track:85fef1504e243766f34ffbe139b857d39ed8301107ed9909dd94343e8978b4b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a07ae744efa4173fbe61ebb63958c7bd1e90df5cd954bf7da2b127a8063736b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
