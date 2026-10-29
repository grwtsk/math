# Verification target: Upstreamable Decl

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49be8e537d15959773906ff586562fbc401c3d50",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49be8e537d15959773906ff586562fbc401c3d50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ImportGraph.Imports` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.Name.isLocal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/declarations/lean-name-islocal.md) | 18 | `declaration-track:a04f486ceb94c094d481031cce371340d16293ea5bbeb61a52383db18e49377f` |
| 2 | `def` | [Lean.Environment.localDefinitionDependencies](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/declarations/lean-environment-localdefinitiondependencies.md) | 28 | `declaration-track:c45fbb481aabb43be84c95aefe7d04c56ff162d5044daf71c775f42685804da6` |
| 3 | `register_option` | [linter.upstreamableDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/declarations/linter-upstreamabledecl.md) | 60 | `declaration-track:51ece83672f6f2962decceefeecec4672cde84dc6c83c60737f64a2dce905866` |
| 4 | `register_option` | [linter.upstreamableDecl.defs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/declarations/linter-upstreamabledecl-defs.md) | 72 | `declaration-track:7f93ef7e1514489d193c115c1fca8ea2920b4a12f37b78bbda704a1ff7bebd53` |
| 5 | `register_option` | [linter.upstreamableDecl.private](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/declarations/linter-upstreamabledecl-private.md) | 80 | `declaration-track:0ab1c12d95ccce0e078c2dbf7e26cf1048eee8d931566da7573a3f6aed420143` |
| 6 | `def` | [upstreamableDeclLinter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/declarations/upstreamabledecllinter.md) | 88 | `declaration-track:40bd586bd2d57a68c91632b4778952daaa69cd40ee5ca860c293d2fe2598c5bb` |
| 7 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UpstreamableDecl.lean/declarations/initialize.md) | 121 | `declaration-track:5842a474e6d2bd168c964cf2ffc94e983233fd3a6fd731ec5ad2a68c606bcda1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24e66bab0a814f7c8c01b7a011a45d95c971f2a0c7a2c2f9dc05f2ffbee6b985 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UpstreamableDecl/Variantd4da2b289bacb03064c7091ec7e5bfd1555d8f43d5f8252ea3810ece37754b5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
