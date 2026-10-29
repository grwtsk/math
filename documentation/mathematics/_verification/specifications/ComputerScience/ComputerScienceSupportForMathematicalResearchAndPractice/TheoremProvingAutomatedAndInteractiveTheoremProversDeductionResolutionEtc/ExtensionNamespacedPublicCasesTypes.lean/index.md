# Verification target: Extension Namespaced Public Cases Types

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ade2b829ae70b67e4417bff44f59221e4c95c4af",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ade2b829ae70b67e4417bff44f59221e4c95c4af`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean.json)

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
| 1 | `structure` | [CasesTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/casestypes.md) | 21 | `declaration-track:d146e675dd84c0f1ae3f10fa004700fc63d56fa643889027aaf1c3c4c63cae33` |
| 2 | `def` | [CasesTypes.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/casestypes-insert.md) | 25 | `declaration-track:4d7917f545a3789873cb875911a802bdce81907ed8437ce21259f7519e53b9e4` |
| 3 | `abbrev` | [ExtTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/exttheorems.md) | 28 | `declaration-track:6aaeb6927d39e7e05c35e9d822b094e526101c940908a53b2fde510ae83504c2` |
| 4 | `structure` | [SymbolPriorities](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/symbolpriorities.md) | 30 | `declaration-track:01a9de1c3dea721ec496dbfc6f7739b8612762965c57d74b334f0a406f714bd3` |
| 5 | `def` | [SymbolPriorities.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/symbolpriorities-insert.md) | 35 | `declaration-track:ec3738ba3b3377cd7e65684c40c143c9d35222b968ecca0fe3014e80aa29f31e` |
| 6 | `inductive` | [EMatchTheoremKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/ematchtheoremkind.md) | 38 | `declaration-track:dc078b8a65c50f63a54f64b99254d2323898a1d3d1d4ad8aa71dd35db392e5a7` |
| 7 | `structure` | [CnstrRHS](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/cnstrrhs.md) | 51 | `declaration-track:996a2b531e6fb0de7733e539c1cb29164c1a1cf888500c63157d92fb3891969e` |
| 8 | `inductive` | [EMatchTheoremConstraint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/ematchtheoremconstraint.md) | 63 | `declaration-track:cf491addf72ab71264ec012712def42c2d94f6eb1febca225cef7d7c9930f422` |
| 9 | `structure` | [EMatchTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/ematchtheorem.md) | 121 | `declaration-track:92f4b22460176a0509af82fb031a22fa31f4e0e78f1006c2000cabde63114346` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/instance.md) | 141 | `declaration-track:2b1e0abf6ba8a05dcbf8ebf13cbc97b1bb315fe526d8891b2de4344b46ed4f7e` |
| 11 | `structure` | [InjectiveTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/injectivetheorem.md) | 149 | `declaration-track:2c92bd72f5dce5ee51a24cd4457c32a4762e5b3ac4523dcbe8d7d21f59544847` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/instance-source-edition-2.md) | 157 | `declaration-track:f85cf66a7af0bb78a0ec4b4dbcc6eb37976cb4e93ee714f2109abe58f4ff2186` |
| 13 | `inductive` | [Entry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/entry.md) | 164 | `declaration-track:0a4a011be77b5d5b5b1e9b6c50c81aab1305d0ae81db5a18738e8bd7f429fd50` |
| 14 | `structure` | [ExtensionState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/extensionstate.md) | 182 | `declaration-track:b6d4ae6b768f4660a634b590038edf8bbdce266d699defa2d06cefcfe2d7c76d` |
| 15 | `abbrev` | [Extension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/extension.md) | 190 | `declaration-track:5962475fc795326a7cce44ace795ef01298d4e647ccae0b05bb8ce01a988a38b` |
| 16 | `def` | [ExtensionState.addEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/extensionstate-addentry.md) | 192 | `declaration-track:bad3a5df96b37e840cacff810d19a4825c90ae362a5b0043469385432f9dda87` |
| 17 | `def` | [mkExtension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/mkextension.md) | 200 | `declaration-track:ddca0816a03f3f2e49e625ad6012dc099ac828ed45f0ad4272c31a24d406dafe` |
| 18 | `abbrev` | [ExtensionStateArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/extensionstatearray.md) | 222 | `declaration-track:8ed52d11d5ad8a9e58ca7df47976fa5c3f334a6a905ee25e9d9e7b4656c19cb5` |
| 19 | `def` | [throwNotMarkedWithGrindAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionNamespacedPublicCasesTypes.lean/declarations/thrownotmarkedwithgrindattribute.md) | 224 | `declaration-track:6734621151ffd7d4c30d84e0734c45c0ce7b0c181fb675ad69d92d1ce9d43c1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83cab140061b0d44cd35899751f9158dade286cc040903f9b8caf1f81fe4da73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variante5d5066bd88762df6da7ae4432d5791c644887c023c3676c00d62697d25a3c9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
