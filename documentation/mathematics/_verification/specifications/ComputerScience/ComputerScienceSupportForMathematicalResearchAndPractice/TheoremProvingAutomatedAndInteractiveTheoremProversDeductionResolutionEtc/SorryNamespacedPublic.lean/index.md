# Verification target: Sorry Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb9b3c806726b32cbb2992bba5cc260568145336",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant48c7fc109a3c29767890c5dbdfbdd896bf475adb56cf5135dd17276aa225840f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb9b3c806726b32cbb2992bba5cc260568145336`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant48c7fc109a3c29767890c5dbdfbdd896bf475adb56cf5135dd17276aa225840f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant48c7fc109a3c29767890c5dbdfbdd896bf475adb56cf5135dd17276aa225840f.lean.json)

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
| 1 | `def` | [Expr.isSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/expr-issorry.md) | 25 | `declaration-track:2b0d8187429f8d839de06899081102859e24cf2b6147bf276ad0d9b578d86b25` |
| 2 | `def` | [Expr.isSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/expr-issyntheticsorry.md) | 29 | `declaration-track:53a29c2e5b53d40ba7135e0bc7f860d771db829364b319f15e593437389db8b8` |
| 3 | `def` | [Expr.isNonSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/expr-isnonsyntheticsorry.md) | 33 | `declaration-track:a0f2dca0b03328bbb9abd86ba06c6cf87715cf8ee2e25be869003e520f925d05` |
| 4 | `def` | [Expr.hasSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/expr-hassorry.md) | 36 | `declaration-track:ea038af7929bb1c4b3c5f9d1f294b52147e91dcc2c596fbb1c74466506644e7d` |
| 5 | `def` | [Expr.hasSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/expr-hassyntheticsorry.md) | 39 | `declaration-track:0a84b2dcef5636f16df83a87fe93d47a69920bd9058ef9438784ea1f7cc91c63` |
| 6 | `def` | [Expr.hasNonSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/expr-hasnonsyntheticsorry.md) | 42 | `declaration-track:2cd3eb9842a0b902fb40a9126eae739a82a0227d07d841937ac5f4f9fd11fe19` |
| 7 | `def` | [Declaration.hasSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/declaration-hassorry.md) | 45 | `declaration-track:3ec1f4851511851a4253833e7e40717e588e4202f55b615246d852e0e83e0348` |
| 8 | `def` | [Declaration.hasSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/declaration-hassyntheticsorry.md) | 48 | `declaration-track:cdc318efd7378b2d2502f0cf79199ed113d2367fd8369e46b9af75a069c0a768` |
| 9 | `def` | [Declaration.hasNonSyntheticSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SorryNamespacedPublic.lean/declarations/declaration-hasnonsyntheticsorry.md) | 51 | `declaration-track:f46482aac1456b1f5d21ca37b260ea0e3311fa86e55f370ce374f8006b4c3810` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb2237d63ab61dd51ab8d50d8b8cca300a41d11b8f6cb48602cdce53af55d78a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant48c7fc109a3c29767890c5dbdfbdd896bf475adb56cf5135dd17276aa225840f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sorry/Variant48c7fc109a3c29767890c5dbdfbdd896bf475adb56cf5135dd17276aa225840f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
