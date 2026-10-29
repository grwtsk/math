# Verification target: Noninterference Subject Presentation State

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "756c34f6c443ccaa2e0285518a16f9f9483a809a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceSubjectPresentationState.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceSubjectPresentationState.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `756c34f6c443ccaa2e0285518a16f9f9483a809a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Presentation.CompletionAdapter` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SubjectPresentationState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceSubjectPresentationState.lean/declarations/subjectpresentationstate.md) | 13 | `declaration-track:46ce68dae81c4ce56d64577c37a972b6439e6d63eeba15a3399fc0dc61c6a986` |
| 2 | `structure` | [CertifiedPresentationChange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceSubjectPresentationState.lean/declarations/certifiedpresentationchange.md) | 18 | `declaration-track:da737dbf3dcc2f32d2dcbee0a08eac7e127745e5c864f1b41527c38aa13a3a4c` |
| 3 | `theorem` | [presentation_change_cannot_alter_theorem_authority](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceSubjectPresentationState.lean/declarations/presentation-change-cannot-alter-theorem-authority.md) | 28 | `result-track:5842cc4091de6c0ab29ffdd231fbbad6daeada1a35992ea3ce6b31d83663a456` |
| 4 | `theorem` | [presentation_completion_preserves_subject_identity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/NoninterferenceSubjectPresentationState.lean/declarations/presentation-completion-preserves-subject-identity.md) | 35 | `result-track:a65256e7ed3374980261e7ac8150102001497457c128d21253e8f7ca8a6afabe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e5c5eb98f3fca44065fdd33f3c91dda94c08c9eb11d5bccb5b38e865b348b3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variante4bf83ea1aaf0a89afa562c273397e53f293c244050b1d05a0cf4b56c1ee26d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
