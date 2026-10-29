# Verification target: Noninterference Access Receipt Cannot Commit State

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfb8365fb2060956a8ca8a9a20a23f977b9cd578",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceAccessReceiptCannotCommitState.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceAccessReceiptCannotCommitState.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfb8365fb2060956a8ca8a9a20a23f977b9cd578`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Core.Receipt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.Exploration.Recaman` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [access_receipt_cannot_commit_state](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceAccessReceiptCannotCommitState.lean/declarations/access-receipt-cannot-commit-state.md) | 10 | `result-track:da12b64af6dae21914f66dd0afcb4a4b2da59a7af7fa3a95fd5649fc52709620` |
| 2 | `structure` | [AccessPresentationChange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceAccessReceiptCannotCommitState.lean/declarations/accesspresentationchange.md) | 15 | `declaration-track:6ac0538861a4b0874114afa8b826cc15e33ce540a174d2cf5dd0d1daabf7df9a` |
| 3 | `theorem` | [presentation_change_preserves_access_certificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceAccessReceiptCannotCommitState.lean/declarations/presentation-change-preserves-access-certificate.md) | 30 | `result-track:6be5ba34ff4c8584578f989e75851ab0d3a601f5bacfc94ad49985b9738f65e6` |
| 4 | `structure` | [TraversalAuthorityBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceAccessReceiptCannotCommitState.lean/declarations/traversalauthorityboundary.md) | 36 | `declaration-track:ebfbeb9413698ef9642bcf220a77c74f1d77c98ee2eb2f991184745743d20957` |
| 5 | `theorem` | [traversal_mode_does_not_grant_commit_authority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceAccessReceiptCannotCommitState.lean/declarations/traversal-mode-does-not-grant-commit-authority.md) | 42 | `result-track:e74cf7aa73858bbb143c7e0f20059b7499d700bf9f9862f65608f76419a979bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2edc1be7a63bc68a0571f58cfaee94b3bb9eec99d4035e4675872149211b23dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant171c3567575adc75975b765b905bbfa1e01ab154043682ca4a1223fa574e8253.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
