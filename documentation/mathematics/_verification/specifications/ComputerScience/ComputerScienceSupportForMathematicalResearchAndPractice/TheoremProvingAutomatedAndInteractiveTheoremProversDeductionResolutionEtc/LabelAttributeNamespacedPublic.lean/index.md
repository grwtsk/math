# Verification target: Label Attribute Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4866934c3188fe3013c84f49d63ecddd2d7f4190",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4866934c3188fe3013c84f49d63ecddd2d7f4190`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean.json)

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
| 1 | `abbrev` | [LabelExtension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/declarations/labelextension.md) | 44 | `declaration-track:e1f94e2b3cba867bf48b8771d91147ff25c56a43b26f684213f42bf2851d27cd` |
| 2 | `abbrev` | [LabelExtensionMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/declarations/labelextensionmap.md) | 47 | `declaration-track:20efd387f6f91c887afc96276aad9a614b853c8acd6750783a01ed24b3272391` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/declarations/builtin-initialize.md) | 50 | `declaration-track:c1de62387719cc74397846d736a9bfb234cbd399d050f6eff94afa1b3857cb14` |
| 4 | `def` | [mkLabelExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/declarations/mklabelext.md) | 53 | `declaration-track:760ec6ab952856c88e1f417b440812aa6a550fe5205d4688adc5e4262f00bdb1` |
| 5 | `def` | [mkLabelAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/declarations/mklabelattr.md) | 61 | `declaration-track:dc004f4d8eae7bf90e2190a3cf010a84bbef919b90959f5a437b58df8ef5c465` |
| 6 | `def` | [registerLabelAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/declarations/registerlabelattr.md) | 81 | `declaration-track:961de80dc1b8f29140b33ecebf311d27a43bc8caae5537e34fd9c20e3384c4ec` |
| 7 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/declarations/macro.md) | 92 | `declaration-track:f863a63daae68ab7b72670fb1e93d1d9b643ccc084b2e06a841b45adb58b5b9f` |
| 8 | `def` | [labelled](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LabelAttributeNamespacedPublic.lean/declarations/labelled.md) | 103 | `declaration-track:4b5ee629e4ad16a2a55a23f796afb2b39f09ab7fcaf1746a15f2cf1137f57551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3563c072537c295120c9832ae12488a043af4231cfb8eb42950cb28c3806a77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LabelAttribute/Variant9cc7b7d64eb018346ff3edf1d98a40d18f99757a6ab1e7c13a9095c25a065540.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
