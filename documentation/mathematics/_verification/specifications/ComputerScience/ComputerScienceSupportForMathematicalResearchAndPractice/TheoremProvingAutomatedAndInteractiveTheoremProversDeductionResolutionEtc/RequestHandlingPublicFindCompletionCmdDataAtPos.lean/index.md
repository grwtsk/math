# Verification target: Request Handling Public Find Completion Cmd Data At Pos

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2045a6a52bebcbdb0cb8e08d7b40990b61fd6c7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2045a6a52bebcbdb0cb8e08d7b40990b61fd6c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean.json)

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
| 1 | `def` | [findCompletionCmdDataAtPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/findcompletioncmddataatpos.md) | 30 | `declaration-track:13c13e73ad6d416e4bd742dc8284fbf988c212bbb3f97e258bff1b69b25be59a` |
| 2 | `def` | [handleCompletion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handlecompletion.md) | 43 | `declaration-track:3973803fc96709c93ddc3194656e27d412c3de5105f5b4670d2777e93354535e` |
| 3 | `def` | [handleCompletionItemResolve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handlecompletionitemresolve.md) | 61 | `declaration-track:129689eb10a9f6d449e0dde1092e8f318f409be1ed3b3f35d5f8d27e728d7ebd` |
| 4 | `def` | [handleHover](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handlehover.md) | 78 | `declaration-track:75f9bba1cfbd2f43080807679b2e12c97ccdd1624ed35ec0dd528f1cf432fbde` |
| 5 | `def` | [handleDefinition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handledefinition.md) | 123 | `declaration-track:daeb760a21e69f172bea9d05f0e99fe51dfcc577f3450de93bc86fbde0d5f730` |
| 6 | `def` | [findGoalsAt?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/findgoalsat.md) | 145 | `declaration-track:76a2ff417c463be2b42ca683a9c24e96b6d9b3dbe77bb07be47d25c851680918` |
| 7 | `def` | [getInteractiveGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/getinteractivegoals.md) | 188 | `declaration-track:7b540bf7ca2525eda8c3e9e0eb1619548cbc789efd864f82ad824b7450c5ee0b` |
| 8 | `def` | [handlePlainGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handleplaingoal.md) | 213 | `declaration-track:fbaa480a56f0c22de6c3ba3b6ff238875d3a55a5192d2acd789e83e77b43a876` |
| 9 | `def` | [getInteractiveTermGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/getinteractivetermgoal.md) | 227 | `declaration-track:69101a39bbb8ac1039453c2dd70e6a931d1dec2916601671c63901eabc37b694` |
| 10 | `def` | [handlePlainTermGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handleplaintermgoal.md) | 244 | `declaration-track:071b51026636ca4c3076aeb110e97fd4b4eb6ad4b25563a16da9bbc007483716` |
| 11 | `def` | [handleDocumentHighlight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handledocumenthighlight.md) | 252 | `declaration-track:7889f8e3ac5540052eca154c83202eafeddc7834f30c05cc9e7950120b340cf1` |
| 12 | `structure` | [NamespaceEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/namespaceentry.md) | 289 | `declaration-track:27e0634894cca09ca0233c58025150d329cc70922ae913b447dd75c6d2379e7e` |
| 13 | `def` | [NamespaceEntry.finish](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/namespaceentry-finish.md) | 297 | `declaration-track:ce52fd3d46ebb4440ea0172f83680147981e609986e2ef6994e189f21d497ba1` |
| 14 | `def` | [handleDocumentSymbol](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handledocumentsymbol.md) | 315 | `declaration-track:19329839bdf0d3b61e107d0cc200a68df5592895d5db4a315efd8f81476560ae` |
| 15 | `def` | [handleFoldingRange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handlefoldingrange.md) | 375 | `declaration-track:32db2c5d6bb87fa6f853714cdb486028aa651da3b04df7fe72b4460a7dcb5a95` |
| 16 | `def` | [handleSignatureHelp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handlesignaturehelp.md) | 458 | `declaration-track:33b464037727825ae819720bf1212d2b514e46a07fcf326e3e2fc1a5820b190e` |
| 17 | `def` | [handleWaitForDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handlewaitfordiagnostics.md) | 467 | `declaration-track:04cc836be6e515124aee6c7ce695614ede58158356c44dab0fb7283fa8eda114` |
| 18 | `def` | [handleDocumentColor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/handledocumentcolor.md) | 485 | `declaration-track:15ed58f3315098ee6e0d53cbbe8938a0c37341de203cee76f2ea1e318fbfd40d` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingPublicFindCompletionCmdDataAtPos.lean/declarations/builtin-initialize.md) | 495 | `declaration-track:d102e7b3ea5e26de1795f56048ee80b2f116708cc78843e5cca969b25f417be3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=179a417f523396f14fb9f50a815ac603746f2a2598870b0b59ea0448fc9ea6aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant98f9af1acd078638bd058cba2435c884338d7758e059754fe53dee7f27990b8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
