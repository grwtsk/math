# Verification target: Derive Encodable Struct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8090ca27a5c6fc4513a9b943755ff2470515b359",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8090ca27a5c6fc4513a9b943755ff2470515b359`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveEncodable` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Struct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/struct.md) | 10 | `declaration-track:8d2952edaa0447af84271d7bd93a2cce2bcbbde36e4aae31be2e2c280f648090` |
| 2 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/example-source-edition-4.md) | 15 | `declaration-track:f4e1ff2ec2b2b7108dfdac952e8f1e3035ee6689d1237a135667c1aced32e788` |
| 3 | `inductive` | [T](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/t.md) | 22 | `declaration-track:e93a35079cf2b9079c3ee384786ed3e265c8636f18e8c6852142c57bfa15ca14` |
| 4 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/example-source-edition-2.md) | 27 | `declaration-track:6787e5fafd8289c17dac61f85816ae8b279aafd2814f48756f94144c6025c966` |
| 5 | `inductive` | [T1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/t1.md) | 49 | `declaration-track:a6aa4eeb9150c75650f1faec748bb4370b6b455918a29d464e6094cedc17913b` |
| 6 | `inductive` | [T2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/t2.md) | 53 | `declaration-track:9afce6a13cca3acd37c758a229ecbbdb6a29fd3b5b705a8400c2fae89ccc14d9` |
| 7 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/example.md) | 59 | `declaration-track:2ea78ddb6a87e1d13d26de263cc6bb293a4094e475a1b751a8cf259e22e348e4` |
| 8 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/example-source-edition-3.md) | 60 | `declaration-track:d51b05f363ef4ae2572a2000ec78e9b58b6e50515ed61522846385def8c0be78` |
| 9 | `inductive` | [Idx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/idx.md) | 68 | `declaration-track:329d46820481b6e482ed8529fefd1ecdd63da48b4f1f1a57d71aed7adaade0fb` |
| 10 | `inductive` | [Nested](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/nested.md) | 77 | `declaration-track:b8493a6d27c3bad27e4d1c5bb0edb66e8c5b59c3f52fb9350fa6da94e5e44820` |
| 11 | `inductive` | [Reflex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DeriveEncodableStruct.lean/declarations/reflex.md) | 86 | `declaration-track:69502579b4a41dc3ac77ed32e64fe874453e10e2915f7b4cb77d0bfc03f7b836` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eaf1fc03de0f3edf3231a9c9ac5eab2e8259a840c357b847a9584c40d5751ea6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveEncodable/Variant47cf3daa86aaa5d442ada25e4c53c21aa95ed094705376e64e228d6752915e8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
