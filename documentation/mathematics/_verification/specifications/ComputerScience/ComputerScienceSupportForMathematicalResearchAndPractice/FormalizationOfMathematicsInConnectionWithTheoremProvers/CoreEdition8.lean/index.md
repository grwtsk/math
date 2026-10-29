# Verification target: Core Edition8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "763223d2ffd04d2146935d9c83a45c68439c9783",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant871b94db788507674ebed1f36e241bc1258ac12a9cd930eb57a35578917ab104.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `763223d2ffd04d2146935d9c83a45c68439c9783`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant871b94db788507674ebed1f36e241bc1258ac12a9cd930eb57a35578917ab104.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant871b94db788507674ebed1f36e241bc1258ac12a9cd930eb57a35578917ab104.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RhetoricalCoordinate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/rhetoricalcoordinate.md) | 16 | `declaration-track:d935b41b99159e499682e68e976a1031cb91735e8bd14eb1531e8e0a2eca0e9a` |
| 2 | `def` | [origin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/origin.md) | 25 | `declaration-track:1fc6033dd85844aa36e414f20f31f6df9430e286232051bf8d04d54ca1ff85c9` |
| 3 | `inductive` | [RhetoricalMode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/rhetoricalmode.md) | 34 | `declaration-track:837174991b07c31a36966c662d1af8f79856b684a104d9dfca45da8cfed54339` |
| 4 | `inductive` | [RhetoricalRegion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/rhetoricalregion.md) | 42 | `declaration-track:0114a4edd2486c16d27477665e72ce9b6e689c8f2ef5001eb29caca600a7575c` |
| 5 | `def` | [classify](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/classify.md) | 55 | `declaration-track:990c7dbed7f9e0921b438d363f11ea0752b04d647ded73766e900eb22286a8e4` |
| 6 | `structure` | [Exposition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/exposition.md) | 70 | `declaration-track:82cc12bb142ec4eb6e681475f65e5d4c3a0b93da3ec5d5307f4fa53231957778` |
| 7 | `def` | [Exposition.Faithful](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/exposition-faithful.md) | 76 | `declaration-track:1191acb1d493fa194ce31a81473b56926a3a6457c9a47318f846f5a7abc6a6be` |
| 8 | `structure` | [FourModePresentation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/fourmodepresentation.md) | 83 | `declaration-track:b91eb882337fbf00e103ecbdbabdb55dab32c667e6d3280d7ffb31b49945d869` |
| 9 | `theorem` | [semantic_invariance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/semantic-invariance.md) | 101 | `result-track:43daea8641d237ca936ed3679374a224b425381b73eee450fc03880695abe1ae` |
| 10 | `structure` | [CommunicationObjective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/communicationobjective.md) | 122 | `declaration-track:b5b1e210d711e04233a415d66d4c35282c7eef741879bfc94351c48b3ce59f83` |
| 11 | `structure` | [ObjectiveEquilibrium](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/objectiveequilibrium.md) | 126 | `declaration-track:1f84653b8a96d06d7a97882e5022241fc6a75dfbd9c528db8753264146bc8a85` |
| 12 | `structure` | [InterpreterFixedPoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CoreEdition8.lean/declarations/interpreterfixedpoint.md) | 135 | `declaration-track:01eac6c09654c32a90ba07b6aeb556c550ca7d493bd7ee865a5141c8ae1bb874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b48d1f9cf9ddbe7000014ade1ed2604577a6154967dd9c9d0801005f5fd26f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant871b94db788507674ebed1f36e241bc1258ac12a9cd930eb57a35578917ab104.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant871b94db788507674ebed1f36e241bc1258ac12a9cd930eb57a35578917ab104.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
