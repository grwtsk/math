# Verification target: Import Completion Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25cd7b1bd6056247fcb80221d8b0d3626131d186",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25cd7b1bd6056247fcb80221d8b0d3626131d186`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean.json)

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
| 1 | `abbrev` | [ImportTrie](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/importtrie.md) | 20 | `declaration-track:39ef143202643dc2ff38a6b4de5b153757fbdbc3268b017f3a7c4719784f7407` |
| 2 | `abbrev` | [AvailableImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/availableimports.md) | 22 | `declaration-track:c64013a469fc9e803a0b702f1aff7b86d1a1ace7530c92c645745025eaa945c3` |
| 3 | `def` | [AvailableImports.toImportTrie](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/availableimports-toimporttrie.md) | 24 | `declaration-track:8481db7b225427513cbe59b314e2c830ff86397fd5a387d0a83028355ebb7321` |
| 4 | `def` | [isImportNameCompletionRequest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/isimportnamecompletionrequest.md) | 30 | `declaration-track:f8f09a1d70f961d0df023d938080716765c5baaf384e24d9708e55a5d7dcb428` |
| 5 | `def` | [isImportCmdCompletionRequest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/isimportcmdcompletionrequest.md) | 44 | `declaration-track:a5de99c3f00abb18b5eac307102b118f949aab95e3a5ab620619bc8db5a4f007` |
| 6 | `def` | [computePartialImportCompletions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/computepartialimportcompletions.md) | 51 | `declaration-track:7652f56284cb1f57a7ebc956113892586f9706f807302c44ad8249091dea4c5d` |
| 7 | `def` | [isImportCompletionRequest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/isimportcompletionrequest.md) | 83 | `declaration-track:f63a082795e883e8c125bbd898566cf5ba04d1dcab2cf833e7289d93b6e9bf0d` |
| 8 | `def` | [collectAvailableImportsFromLake](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/collectavailableimportsfromlake.md) | 89 | `declaration-track:32025383c2f87e5d8b794fdf0344076cbed696548bfd70495b6d8f03ea0f336e` |
| 9 | `def` | [collectAvailableImportsFromSrcSearchPath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/collectavailableimportsfromsrcsearchpath.md) | 109 | `declaration-track:32215bdc533aed19720a2eccd7c13ea45d598d8d23ca53be41fd3b701359c2ca` |
| 10 | `def` | [collectAvailableImports](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/collectavailableimports.md) | 118 | `declaration-track:0d49a09d30067559821902aedb562729c7c11d4a9ea00ac093868724b2101ee4` |
| 11 | `def` | [addCompletionItemData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/addcompletionitemdata.md) | 130 | `declaration-track:9158a82044ff3f5fa97d5b3a42119797b33bbbe3bb1cc83074d164bc77f89b9e` |
| 12 | `def` | [find](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/find.md) | 136 | `declaration-track:9c07dfb1a0d7437bc25bf1443ef3e54f27ee5736cb59d633a0e971e9abfbdc25` |
| 13 | `def` | [computeCompletions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ImportCompletionPublic.lean/declarations/computecompletions.md) | 150 | `declaration-track:d7ff63dc9079942d72e23c0d2118ff1298dccf75debd810c23c18e6c9f9b098f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e4ada778bad0f53641476e82c76dad9440cfa703fb4518d9ae9da69cf7802c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ImportCompletion/Variantfb287f055d44d1b10f19920bd3dd32a84b8c1bd964aeb4d91dc5189254e7f8af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
