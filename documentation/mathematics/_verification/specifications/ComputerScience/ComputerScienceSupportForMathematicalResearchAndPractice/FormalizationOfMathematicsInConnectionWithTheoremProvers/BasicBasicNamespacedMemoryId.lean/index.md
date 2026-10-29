# Verification target: Basic Basic Namespaced Memory Id

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da06958c2528cf09dbe8a62ea508f4bfd3864a74",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantaf10a8e8aaeee780a37b60ac85158faed9951724862a1b72be636ff709bb8cf2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da06958c2528cf09dbe8a62ea508f4bfd3864a74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantaf10a8e8aaeee780a37b60ac85158faed9951724862a1b72be636ff709bb8cf2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantaf10a8e8aaeee780a37b60ac85158faed9951724862a1b72be636ff709bb8cf2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.PhaseOrder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MemoryId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/memoryid.md) | 15 | `declaration-track:9229a4ae38ff9dd61a176fa9f5018ae71aa69d21499706a4e071560f0b577047` |
| 2 | `abbrev` | [RepoPtr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/repoptr.md) | 16 | `declaration-track:c3ed40afb4daec65c6f1a222bb32fecf524cdbebb9998b8e27b696a388090a9b` |
| 3 | `abbrev` | [ConversationPtr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/conversationptr.md) | 17 | `declaration-track:93e2cad78f14f88e220186789444e3cd62ccc54d44784566ffda99f57dba17ea` |
| 4 | `abbrev` | [ToolPtr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/toolptr.md) | 18 | `declaration-track:09fa71fbb3cf17911895ebe30e996e5150a6384efd7e77ca988a435adece9ca6` |
| 5 | `abbrev` | [WorkflowPtr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/workflowptr.md) | 19 | `declaration-track:e972f15579fe63962c3a7c196521e012e8dc206db458d724f6b1f12365cd849b` |
| 6 | `inductive` | [TimeScope](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/timescope.md) | 21 | `declaration-track:20c04853666d51dc33c1a57ae9d4a5d8481bf6d9600c2fcba2c1860070d7b450` |
| 7 | `inductive` | [SourcePointer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/sourcepointer.md) | 27 | `declaration-track:5c9084047dec1369910306a9f52802181f1f7254dbd1778926d17e14337a6efe` |
| 8 | `def` | [SourcePointer.label](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/sourcepointer-label.md) | 34 | `declaration-track:7c45cc14d669c521cdad9ba05890d4afe647926f8c38269b2bf0db7cdf1ebee8` |
| 9 | `structure` | [FiniteRunBounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/finiterunbounds.md) | 40 | `declaration-track:e63a2b825689b83c5979f01f176d21a20849567a5621396f697252e8d87a7ade` |
| 10 | `def` | [defaultFiniteRunBounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/defaultfiniterunbounds.md) | 47 | `declaration-track:962a504534bde216e2b80aed0c2df3c60b52582da8774d5eef1859cbcf477070` |
| 11 | `def` | [preservedCenterIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/preservedcenterindex.md) | 53 | `declaration-track:c2c9be0e03a287b3a9f1dea3ba7efa4d05dff162dad8ec76294d8d8b1140c5e4` |
| 12 | `def` | [preservedPhaseCount](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/preservedphasecount.md) | 56 | `declaration-track:a7dea01893e926dc45a0a29feb8393e87e52aba1f3d61037b09a1cfb218db8c3` |
| 13 | `theorem` | [preservedPhaseCount_matches_spine](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/preservedphasecount-matches-spine.md) | 59 | `result-track:c201aa879311343a921a9ca7395137f8ea20fad089b3a982ad17ee76f7478b6a` |
| 14 | `theorem` | [preservedCenterIndex_is_30](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedMemoryId.lean/declarations/preservedcenterindex-is-30.md) | 63 | `result-track:8eb5395f475aa7adc54b966be78664db2b2088af7c60f8eefd862efb73e77e74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81419573e63ce4619d11c7ee77ce5f30b31de1609d1feb79a894d1239f6a1e30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantaf10a8e8aaeee780a37b60ac85158faed9951724862a1b72be636ff709bb8cf2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantaf10a8e8aaeee780a37b60ac85158faed9951724862a1b72be636ff709bb8cf2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
