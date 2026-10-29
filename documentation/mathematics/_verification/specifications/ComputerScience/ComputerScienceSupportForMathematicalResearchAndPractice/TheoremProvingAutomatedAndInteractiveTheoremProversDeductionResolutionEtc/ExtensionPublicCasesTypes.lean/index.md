# Verification target: Extension Public Cases Types

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a18956b4cd79b7c20119d7306314af4a4424eb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a18956b4cd79b7c20119d7306314af4a4424eb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean.json)

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
| 1 | `structure` | [CasesTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/casestypes.md) | 13 | `declaration-track:720fc977aa1cc69b18b3d2eb85575dd6e6bef4687bd76cd689030a516ee36e7c` |
| 2 | `def` | [CasesTypes.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/casestypes-insert.md) | 17 | `declaration-track:c7932fa7b8f92b9ece510357a1ad366c4e585333fe6d1692b43a9bd13cce9040` |
| 3 | `abbrev` | [ExtTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/exttheorems.md) | 20 | `declaration-track:33deb38b8d3881987fa257c7a30fd7f1f55104a3b4d90debe75929b602bd17f8` |
| 4 | `structure` | [SymbolPriorities](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/symbolpriorities.md) | 22 | `declaration-track:75afc4126e9c406402cbd67e80a28d1dc876d962c1608ee6a49d5e876dcc9b42` |
| 5 | `def` | [SymbolPriorities.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/symbolpriorities-insert.md) | 27 | `declaration-track:54a41cbf4f6710b98b94956894cd034c40ad04e3be68b72c501f0052a6c86b2e` |
| 6 | `inductive` | [EMatchTheoremKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/ematchtheoremkind.md) | 30 | `declaration-track:714fa7e0c59f0f732070a43d237bc6a975dc8bff3078b634164415c925e5c0ca` |
| 7 | `structure` | [CnstrRHS](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/cnstrrhs.md) | 43 | `declaration-track:73e1fc77a6f0e8da50e2304d197ee22e4639b0049b3cbc5a459157541f75e250` |
| 8 | `inductive` | [EMatchTheoremConstraint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/ematchtheoremconstraint.md) | 55 | `declaration-track:51fdfb2560eaa5d43668c142e9b7b07e206ca78236c3207d705255487646d1cd` |
| 9 | `structure` | [EMatchTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/ematchtheorem.md) | 113 | `declaration-track:90c8a2f6e27b4c419e60a097b748f8082b6cc4b9fa07d15aa5b15eb8b2f03203` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/instance-source-edition-2.md) | 133 | `declaration-track:b38e2e8a52199c2380d1de4a960137c93f3ad224fd1ee0b1952d7da575376fb6` |
| 11 | `structure` | [InjectiveTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/injectivetheorem.md) | 141 | `declaration-track:2c58a8a82d44ce534333db2045f823986fd25dbd428b3354fbc114045eae4dc5` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/instance.md) | 149 | `declaration-track:7909dbcf9d2312b67b8462d365a48ae34609c6e0eb8455d457d8cef0b866de57` |
| 13 | `inductive` | [Entry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/entry.md) | 156 | `declaration-track:69547f3f48dfd8815d41d0dd240701a3ea838d0997b30f5ae3ae4c286490e7ef` |
| 14 | `structure` | [ExtensionState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/extensionstate.md) | 174 | `declaration-track:fcce190a0cb2fbb9e6c4c776189692a30f81524f1f7ef4af2e8f3711d89aa957` |
| 15 | `abbrev` | [Extension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/extension.md) | 182 | `declaration-track:07eb2856557840488dc9ee2d069435e0cac773019a3af2646ef840635feadbd4` |
| 16 | `def` | [ExtensionState.addEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/extensionstate-addentry.md) | 184 | `declaration-track:2c766f46691a25446851161e70ee1e7b4bda9affc1464807ceff4439a1f31628` |
| 17 | `def` | [mkExtension](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/mkextension.md) | 192 | `declaration-track:97c7de385811700dc4d2038e51ab72d7492ba84fdec9ba87f740f5598ad96050` |
| 18 | `abbrev` | [ExtensionStateArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/extensionstatearray.md) | 214 | `declaration-track:3891e4b7fbf224a785a4ed5ea994a72c799b774ab3fcd94c288db2ed61a5e585` |
| 19 | `def` | [throwNotMarkedWithGrindAttribute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtensionPublicCasesTypes.lean/declarations/thrownotmarkedwithgrindattribute.md) | 216 | `declaration-track:40ec02eda299591ef1f9456ff4c0565eeb652fccfce91400ce04993b120c105b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a26ab78033d13179d37c9c20426fea6e4763603fd1b3da10dcaa3ed490dd5fe0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extension/Variant02cd16588433b14d16f1bde225ce0495f6cb7d860b7529cb0ab45226aac0dad0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
