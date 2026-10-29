# Verification target: Core Namespaced Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77d3514ea371dcd12e9bfb474070e7f05277adfc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0a69fd60fb31c1f0ea057c52dbde3a912d068abee13cc71591085abe242b3de8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77d3514ea371dcd12e9bfb474070e7f05277adfc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0a69fd60fb31c1f0ea057c52dbde3a912d068abee13cc71591085abe242b3de8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0a69fd60fb31c1f0ea057c52dbde3a912d068abee13cc71591085abe242b3de8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RhetoricalCoordinate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/rhetoricalcoordinate.md) | 24 | `declaration-track:92b39ff2be322372c71deaac9db5419c7563fadcd28628da3e3e7ea0d50086fb` |
| 2 | `def` | [origin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/origin.md) | 33 | `declaration-track:48e5c0a20833df41a9eefeb25bbe608bd3ccfa529aae8622d5b7907f4c7efc6f` |
| 3 | `inductive` | [RhetoricalMode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/rhetoricalmode.md) | 42 | `declaration-track:9eaea4ae10056a8618e9f3e32c6ca35a9baf4ef5b79ad4199df8b23424b9353f` |
| 4 | `inductive` | [RhetoricalRegion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/rhetoricalregion.md) | 50 | `declaration-track:6c7d4c9f5256d93eba9c38e2e779c91c19fca42e4324282173ad8cd9c8f328a9` |
| 5 | `def` | [classify](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/classify.md) | 63 | `declaration-track:570b1238d12e93a3c3f62d2dd014d5ab37b8b13486fb634cfdf1f90bd2a40a02` |
| 6 | `structure` | [Exposition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/exposition.md) | 78 | `declaration-track:515c2bd4cb96a08ccfb87452fff8319c40c6b18d96f74b52c2565360e98e7208` |
| 7 | `def` | [Exposition.Faithful](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/exposition-faithful.md) | 84 | `declaration-track:df3c0d036e2a33295073d57c2283b301c64ec06a701c70012fc0b7c0a480213e` |
| 8 | `structure` | [FourModePresentation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/fourmodepresentation.md) | 91 | `declaration-track:1b54bc71942fc0fb48d835cf419c05b60c8726f6a3344aa64efa5eca36330628` |
| 9 | `theorem` | [semantic_invariance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/semantic-invariance.md) | 109 | `result-track:61d1f5194c814cb542f50e33d439c85c01b0d5d85cab4e117b3dba5d0c333d99` |
| 10 | `structure` | [CommunicationObjective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/communicationobjective.md) | 130 | `declaration-track:35aa19f146743aed471c0c8fa89982ca8f678f1cd844867a2a72b0287537263b` |
| 11 | `structure` | [ObjectiveEquilibrium](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/objectiveequilibrium.md) | 134 | `declaration-track:f09dc78301fe56fcd1cd193dde9f7c3cd0bd567bc8d355e1bd3ac7a5527f2c1a` |
| 12 | `structure` | [InterpreterFixedPoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreNamespacedEdition4.lean/declarations/interpreterfixedpoint.md) | 143 | `declaration-track:6e2eae62cd71cdc69b083f25241209770b9c5e7950ceaef43a9c4e9e2f64a9c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b79b4e247d7bf170ecafe740ebbf7db6a17e1c2c53c68602e86c6831e2692996 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0a69fd60fb31c1f0ea057c52dbde3a912d068abee13cc71591085abe242b3de8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant0a69fd60fb31c1f0ea057c52dbde3a912d068abee13cc71591085abe242b3de8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
