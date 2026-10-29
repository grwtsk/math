# Verification target: Binary Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6586deb93494a1cb49f2f3eee5830b64a9636b3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant88531495e8b9ffc8ef88ceb42a0ef583e89bafdbf67885f396bc744ab8094160.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6586deb93494a1cb49f2f3eee5830b64a9636b3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant88531495e8b9ffc8ef88ceb42a0ef583e89bafdbf67885f396bc744ab8094160.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant88531495e8b9ffc8ef88ceb42a0ef583e89bafdbf67885f396bc744ab8094160.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Presentation.Syntax` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PresentationLeaf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/presentationleaf.md) | 31 | `declaration-track:1871ab1ed241edfef7a4980142582705c932e026f14253533d3b7c321c0c16b6` |
| 2 | `inductive` | [FullBinaryTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/fullbinarytree.md) | 37 | `declaration-track:b9a4c2ad04a2b96f679514c510a53e45fe4ec79c3e7204a57e7c4210189bc81d` |
| 3 | `structure` | [Bijection](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/bijection.md) | 43 | `declaration-track:0d9345208970622bd27fdbfb6d29f7e324a126289783d116e1f8862fc9ee5eed` |
| 4 | `def` | [toBinaryTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/tobinarytree.md) | 52 | `declaration-track:f26eb1b9dd84878c0db2cd22ea10af4056abb46b85787b06ce22b09ce5cbe670` |
| 5 | `def` | [ofBinaryTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/ofbinarytree.md) | 58 | `declaration-track:a5c5e57b364be33f79c12a903c384ab021b81b841467e34efbc80aaa3ccef330` |
| 6 | `theorem` | [of_toBinaryTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/of-tobinarytree.md) | 64 | `result-track:c84120cc9f7d7457083be03316ab1401da6d39e9a331677d67524c067ff90e35` |
| 7 | `theorem` | [to_ofBinaryTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/to-ofbinarytree.md) | 74 | `result-track:e9b0adbdf07c709a7085712a507f643e1a348d8e862ce9c940f5571d6eafd625` |
| 8 | `def` | [equivFullBinaryTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/equivfullbinarytree.md) | 87 | `declaration-track:3215c872d80368759bc8d8ae02feee6ee2d53297dd7099fb1ea4a043db46881b` |
| 9 | `theorem` | [node_injective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BinaryNamespacedEdition2.lean/declarations/node-injective.md) | 96 | `result-track:242a9c51cbdd54c7643977d6f6ff7a8419f45eda8bd4b96d0d239391df967528` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11a8272b4ab9badde15af97ca58d42348c0c7b7854379b6da79f327c018fb586 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant88531495e8b9ffc8ef88ceb42a0ef583e89bafdbf67885f396bc744ab8094160.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Binary/Variant88531495e8b9ffc8ef88ceb42a0ef583e89bafdbf67885f396bc744ab8094160.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
