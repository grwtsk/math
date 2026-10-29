# Verification target: Recursive Unfold Rule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e70ee45b7e960df7446a757c5e97375f96a79041",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveUnfoldRule/Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e70ee45b7e960df7446a757c5e97375f96a79041`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveUnfoldRule/Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveUnfoldRule/Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [f₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/declarations/f-source-edition-4.md) | 15 | `declaration-track:64d46290dc3d1ee751969a05081af0458046ce9e2f117393574bf117ac381b40` |
| 2 | `def` | [f₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/declarations/f-source-edition-2.md) | 23 | `declaration-track:58ba84b23bfb6d0ca3ea5641c40a6c98b3729fa1efaef02afa7f0bdedb596780` |
| 3 | `def` | [f₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/declarations/f-source-edition-5.md) | 32 | `declaration-track:76d536eb4e1d0ca63fc933e087c1d436ecf4fcbe38bc34fc8b6197574656fd0d` |
| 4 | `def` | [f₄](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/declarations/f.md) | 44 | `declaration-track:4dc372d3d54800cdb152779f30ba2b4dc64cab4aaf73196e2b9d914e3f63675c` |
| 5 | `def` | [f₅](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/declarations/f-source-edition-6.md) | 54 | `declaration-track:a1303c3261d62f4c32d7f0bb08a24932c6f6f0b0f90f82259cede8bab5e83270` |
| 6 | `def` | [f₆](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/declarations/f-source-edition-3.md) | 59 | `declaration-track:5e4317c32062b90099f185d74284f305e5d261299fc1e9b0d25552d9b9e02834` |
| 7 | `axiom` | [test](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecursiveUnfoldRule.lean/declarations/test.md) | 71 | `declaration-track:b87cb72bb209ab025c2c43c1f2296668841fdab1159131f0a9e9674f9384a9af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea8eb39c53387108a8e6b362c18efba075e9ee0a8ccada6954eeb80ae8017e1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveUnfoldRule/Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveUnfoldRule/Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
