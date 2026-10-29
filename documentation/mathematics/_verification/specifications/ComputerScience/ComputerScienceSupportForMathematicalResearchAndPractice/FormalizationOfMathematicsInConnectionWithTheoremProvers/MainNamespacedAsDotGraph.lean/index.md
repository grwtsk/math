# Verification target: Main Namespaced As Dot Graph

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d412b4e6ad0fcedb5122461fcac772184a29961c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta3f16de3b9e8da9d1650ec24e5141184f902cc1ee1b4d5a6bdef74b6486eb505.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedAsDotGraph.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedAsDotGraph.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d412b4e6ad0fcedb5122461fcac772184a29961c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta3f16de3b9e8da9d1650ec24e5141184f902cc1ee1b4d5a6bdef74b6486eb505.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta3f16de3b9e8da9d1650ec24e5141184f902cc1ee1b4d5a6bdef74b6486eb505.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Util.Imports` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.CoreM` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Data.NameMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.IO.Process` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Name` — import line 15; external provider; requires a separately pinned dependency.
- `Std.Lean.Util.Path` — import line 16; external provider; requires a separately pinned dependency.
- `Cli` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [asDotGraph](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedAsDotGraph.lean/declarations/asdotgraph.md) | 33 | `declaration-track:cc4ac9b688870c8b4844a2fe2aace422da73a7a271f7a5338dd05b80f6d9aa5c` |
| 2 | `def` | [importGraphCLI](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedAsDotGraph.lean/declarations/importgraphcli.md) | 45 | `declaration-track:b6b469ded3ff67b57874d510d63fc06bc19a4dc298da60a9d93bc274a378e377` |
| 3 | `def` | [graph](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedAsDotGraph.lean/declarations/graph.md) | 92 | `declaration-track:cad6d63adeaeb9a61b67c000096b531d519859037a49d885b138b900b65775c7` |
| 4 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MainNamespacedAsDotGraph.lean/declarations/main.md) | 112 | `declaration-track:2efd4437ac71f3279c2578381900385508fa0772a2c2377034d562fa8f12ecfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e10346ec44a146fe49f2e50bcf0351c385d141c50912ac9b8d42bcae8ec1a8df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta3f16de3b9e8da9d1650ec24e5141184f902cc1ee1b4d5a6bdef74b6486eb505.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Varianta3f16de3b9e8da9d1650ec24e5141184f902cc1ee1b4d5a6bdef74b6486eb505.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
