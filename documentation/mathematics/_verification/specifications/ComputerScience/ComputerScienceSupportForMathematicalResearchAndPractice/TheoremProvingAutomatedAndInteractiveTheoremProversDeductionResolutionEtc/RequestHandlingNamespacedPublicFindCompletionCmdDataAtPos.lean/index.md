# Verification target: Request Handling Namespaced Public Find Completion Cmd Data At Pos

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cf41c96dba2d38db15494ad8af2694071c3d991",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cf41c96dba2d38db15494ad8af2694071c3d991`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean.json)

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
| 1 | `def` | [findCompletionCmdDataAtPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/findcompletioncmddataatpos.md) | 38 | `declaration-track:6bc8ce64ad84623c49e0f902d65d6cdc7a657ce8d114cc62cf4398819aba66d3` |
| 2 | `def` | [handleCompletion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handlecompletion.md) | 51 | `declaration-track:5f4efcfa762e9665215044db645609e8c990d8162500b344cd4bca63d9ea9aeb` |
| 3 | `def` | [handleCompletionItemResolve](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handlecompletionitemresolve.md) | 69 | `declaration-track:4fbb9af5d8816aa3828b9e54c8452e94357e869a05c857e4a4fcba858ff6afb8` |
| 4 | `def` | [handleHover](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handlehover.md) | 86 | `declaration-track:b327b3777646900c608f94a918ab14e13845d817ddbd438bb8170bc6c9915382` |
| 5 | `def` | [handleDefinition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handledefinition.md) | 131 | `declaration-track:03989a724aa0cd37311b9c97f97208e074fc273f3f7cedffb32f95cbbe66f3f3` |
| 6 | `def` | [findGoalsAt?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/findgoalsat.md) | 153 | `declaration-track:53b7aa2ff759700a47a875ce8a5f7c6a33d3d9eae4cc7de07ed2b4d882fa7acf` |
| 7 | `def` | [getInteractiveGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/getinteractivegoals.md) | 196 | `declaration-track:1f1d7440f6a41aa4583e975ff7c3003e8a381ff9b10e9759b84bb604749976cb` |
| 8 | `def` | [handlePlainGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handleplaingoal.md) | 221 | `declaration-track:a36ad1b30a6988c85b1b7b01abcaae0def59f5dc8618efeec5081813c0651bbd` |
| 9 | `def` | [getInteractiveTermGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/getinteractivetermgoal.md) | 235 | `declaration-track:08b7125d40fbfeb6d09d5505179d4f9fd28bd14a957adc27ccc0fd8df3c69bfe` |
| 10 | `def` | [handlePlainTermGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handleplaintermgoal.md) | 252 | `declaration-track:9eb346249003d8e9d5a03337e1b9423dfd33ae97d08fba7ce04fe0d16f96a3fd` |
| 11 | `def` | [handleDocumentHighlight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handledocumenthighlight.md) | 260 | `declaration-track:4fc7dcb0dd66bf4377b09e7ef4f3d93b8fd2724c541ba5961a5e49ff2a7f2e26` |
| 12 | `structure` | [NamespaceEntry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/namespaceentry.md) | 297 | `declaration-track:2d7431bf804627ed5d3c667b039ed9ee43599995f2746abd22f6c1fa3e21b9c2` |
| 13 | `def` | [NamespaceEntry.finish](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/namespaceentry-finish.md) | 305 | `declaration-track:51ba14b825f3bfd6d39dc929b7c7fbe913d5c88f34dd2216aabc696e675d8097` |
| 14 | `def` | [handleDocumentSymbol](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handledocumentsymbol.md) | 323 | `declaration-track:29f327aca96c9e4b7e172d582f3db12e1bf5ac1f12217e97a38660b3b2aefc2f` |
| 15 | `def` | [handleFoldingRange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handlefoldingrange.md) | 383 | `declaration-track:68879e9617ed9d093c1888bac7a6818e84688d3dcaa1b2fab2848de669a54a5b` |
| 16 | `def` | [handleSignatureHelp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handlesignaturehelp.md) | 466 | `declaration-track:ace624766ffd76caafe48321666bd583f26b6a12b08403fa01dc8ec168233c8b` |
| 17 | `def` | [handleWaitForDiagnostics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handlewaitfordiagnostics.md) | 475 | `declaration-track:fb0f2200a39dbe61b6c9956c22c98492c8bdd32c1bc7d319c0f523dcb79be65d` |
| 18 | `def` | [handleDocumentColor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/handledocumentcolor.md) | 493 | `declaration-track:b54d8cfb3a7fffbbc9137be0fe9f56784284f0d2b9672dc93eed7fa08dce60e0` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RequestHandlingNamespacedPublicFindCompletionCmdDataAtPos.lean/declarations/builtin-initialize.md) | 503 | `declaration-track:d79c508c4ae26fbf637131689132d7108d1592fc7d53d0c62a672b289c0b7271` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e2b2e549c10df23867093bdb343c83e924ffc893484146f250adf95e6c9c11f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestHandling/Variant2cbedfd0376f6d559d452a5d536c37628c1caf6acefa506e81692a4f981fb379.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
