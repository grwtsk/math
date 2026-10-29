# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Noninterference.Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a9bc4c8e69ad01a148f5325c150471ff7b77225",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a9bc4c8e69ad01a148f5325c150471ff7b77225`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Presentation.CompletionAdapter` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SubjectPresentationState](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean/declarations/subjectpresentationstate--ecacca59dfb671ae716c16c3.md) | 21 | `declaration-track:ecacca59dfb671ae716c16c31458d814fb2877b46ffaca930e7665b89861ef5b` |
| 2 | `structure` | [CertifiedPresentationChange](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean/declarations/certifiedpresentationchange--a1a5c5f8d570d410b44a1f0e.md) | 26 | `declaration-track:a1a5c5f8d570d410b44a1f0eeaf862398420837461e2a4ad2c4ae0c9af6e3989` |
| 3 | `theorem` | [presentation_change_cannot_alter_theorem_authority](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean/declarations/presentation-change-cannot-alter-theorem-authority--7b863aad998fdd784e667d15.md) | 36 | `result-track:7b863aad998fdd784e667d152f5cde26bdc05bb65bf9cdd5333734ccdfc7e757` |
| 4 | `theorem` | [presentation_completion_preserves_subject_identity](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean/declarations/presentation-completion-preserves-subject-identity--16de4d2c4aa4167900f2e33f.md) | 43 | `result-track:16de4d2c4aa4167900f2e33ffb4bfbd476a0a3cdda3462c2c9dd532ae271c650` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e9da2dbf00118b6a049324253544e31c269415b2c5da2235bea4f401a64082b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant9c8e4aaee05ad8b5cec7d9917013077a0e73f3d7eea2fe8204f055d8703b52f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
