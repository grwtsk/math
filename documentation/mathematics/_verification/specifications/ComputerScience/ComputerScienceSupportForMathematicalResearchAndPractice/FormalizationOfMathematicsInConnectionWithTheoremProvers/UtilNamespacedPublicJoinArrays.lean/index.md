# Verification target: Util Namespaced Public Join Arrays

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fd0bd15fdde3b23b7bd0d3f22edf738f75fab24",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fd0bd15fdde3b23b7bd0d3f22edf738f75fab24`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [joinArrays](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/joinarrays.md) | 24 | `declaration-track:5de2db7617c635af501bc18cbad3fd149c174bd70311f4e277b7bea7491e6137` |
| 2 | `def` | [foldInlsM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/foldinlsm.md) | 32 | `declaration-track:61f3d8484ddefc0b4931c3af1c0eb204cc7fb301bc7f56962598a361f9c935f1` |
| 3 | `def` | [delabListLiteral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/delablistliteral.md) | 54 | `declaration-track:7c5fb5689b4e6e96f4ae59b6e8aab640ce21a09d71578316da40afa75599f246` |
| 4 | `def` | [delabArrayLiteral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/delabarrayliteral.md) | 66 | `declaration-track:799d47bf5d53eabb9ac682257c17c8851bbdf750de38dea6f802cf8618d7ee6b` |
| 5 | `def` | [annotateTermLikeInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/annotatetermlikeinfo.md) | 72 | `declaration-track:b0eea0242c36f55ff2299263e6a4daca8ad6a25cac7c23aeb80e3f24af670fd9` |
| 6 | `def` | [withAnnotateTermLikeInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/withannotatetermlikeinfo.md) | 78 | `declaration-track:e35c6044ad8bb731f112d2e211750f4036dfacd1823a126e3374bee23045057a` |
| 7 | `class` | [MonadSaveCtx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/monadsavectx.md) | 94 | `declaration-track:292ce5a006bfd8669c374a7259b83ee177d718b249784dcefd7a2961c1fb3e01` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/instance-source-edition-2.md) | 106 | `declaration-track:8ede5c6014ee64fe05244369de6b8438d61fd7030ce468b19329875a47dd88c6` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/instance-source-edition-3.md) | 109 | `declaration-track:9bb5cd81c59db06eb42e8f3279993fe79000f7fa38a184d67d87fb3a24eed015` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/instance-source-edition-6.md) | 112 | `declaration-track:dbdc5da01273e4a86e80b11ce21c9aaaaaa978a75fa1d7783faeb24ef338f3df` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/instance-source-edition-5.md) | 115 | `declaration-track:ba7ef2f66da83e29e7322542575b1eba66fe3dc70faedc997d23106cf707712a` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/instance-source-edition-4.md) | 120 | `declaration-track:a0435f625a2b01d04eaca2d8ea8e9d76e8f18501361ccde8ca133371780c2750` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/UtilNamespacedPublicJoinArrays.lean/declarations/instance.md) | 123 | `declaration-track:2b02f9a27ab1600639a9d6981f8fbbb8c96b155183f7ee9f408a9578419786f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d41ec3372c86b3701539b9d4a7b44a61a6957a78c0144f535f00ed95651801aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantdf26172dc4500ba157ef2a4ddd147c7abc5baed1c54e28eb06d6389fc01ceda4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
