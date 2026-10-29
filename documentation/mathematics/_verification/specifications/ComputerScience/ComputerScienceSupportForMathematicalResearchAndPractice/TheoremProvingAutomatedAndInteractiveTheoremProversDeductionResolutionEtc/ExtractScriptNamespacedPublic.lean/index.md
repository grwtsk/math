# Verification target: Extract Script Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61166638f15d143ff43ba647b5809fb29df31148",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61166638f15d143ff43ba647b5809fb29df31148`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean.json)

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
| 1 | `structure` | [ExtractScriptM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/extractscriptm-state.md) | 29 | `declaration-track:4d2e480c2fadcd6519c91cbe89ac77ed69531fe6e78eb0aaca167e67cddc6532` |
| 2 | `abbrev` | [ExtractScriptM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/extractscriptm.md) | 33 | `declaration-track:25575c663bf2c0938326505e51ed8928e02af4ce8afd64a7281c82125aaa81a9` |
| 3 | `def` | [ExtractScriptM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/extractscriptm-run.md) | 35 | `declaration-track:2d7a03d5e8a4fd5c3eafa317276d1d3e4642b60a6fb22d47c929285d6ec4b9d5` |
| 4 | `def` | [lazyStepToStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/lazysteptostep.md) | 41 | `declaration-track:2c81350847a91599adcd709cea2ad94dcdabb9df0e2283e0aa4f410829ad3bbb` |
| 5 | `def` | [lazyStepsToSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/lazystepstosteps.md) | 48 | `declaration-track:7069e289f5e0407b23fa13ec0d6ee42a2bacba4dc5ff5f1d18f38659aad095a8` |
| 6 | `def` | [recordStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/recordstep.md) | 53 | `declaration-track:c1c0ba1a1dcfd859ca5969b67d76822dc840ddd51061e421aa50b61cd569ae60` |
| 7 | `def` | [recordLazySteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/recordlazysteps.md) | 56 | `declaration-track:47ae4427855fae2bea1ff0deb60c0eb1c559ae5a2960d13876265ef2c5cf60c2` |
| 8 | `def` | [visitGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/visitgoal.md) | 61 | `declaration-track:300fdc39cde638010abe9a395edecbe2c16b26caa37c36b3ebc3b881b63328c4` |
| 9 | `def` | [visitRapp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/visitrapp.md) | 72 | `declaration-track:3d3d8beba796ef50e43f520c25f27b556225efb050275fe00ca23ddac517fac2` |
| 10 | `def` | [MVarClusterRef.extractScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/mvarclusterref-extractscriptcore.md) | 81 | `declaration-track:f8440ac0a55cfc1a836ab646ceb7154cc8ff206456dddd16f4035c6325b5d8b5` |
| 11 | `def` | [GoalRef.extractScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/goalref-extractscriptcore.md) | 88 | `declaration-track:ec45037dbeaa98dbd0c1a2a598ad3fe9ef32e457688137fee590ffd2044f4ac7` |
| 12 | `def` | [RappRef.extractScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/rappref-extractscriptcore.md) | 96 | `declaration-track:a28f01792b0cb5141f679ef3f162a640e335c44646b14aaf6497e03fb39b0286` |
| 13 | `def` | [extractScript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/extractscript.md) | 104 | `declaration-track:8eb74c727b06aba9c61044ad231eae7646190227737c43482a7f97ad6bac815c` |
| 14 | `def` | [MVarClusterRef.extractSafePrefixScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/mvarclusterref-extractsafeprefixscriptcore.md) | 109 | `declaration-track:ec33aa922d4cd12088d9384a607ebd76bf73bed5959e3327b58f502304eb7ed4` |
| 15 | `def` | [GoalRef.extractSafePrefixScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/goalref-extractsafeprefixscriptcore.md) | 113 | `declaration-track:fa6fb518c1590113b033b52815d0920ec18289dbccf3b8eebcf528b13608ff8f` |
| 16 | `def` | [RappRef.extractSafePrefixScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/rappref-extractsafeprefixscriptcore.md) | 128 | `declaration-track:82d9dc7375c7cc740e98aea7e0266fb35c1d8c0998dd200abe1300306cabe6bd` |
| 17 | `def` | [extractSafePrefixScript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptNamespacedPublic.lean/declarations/extractsafeprefixscript.md) | 140 | `declaration-track:c3d51443a454088b545ab1144e5ef0aa825476e163dc20071c9b3ba7bbd8e405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b70292a118009834e999277e87bc71817e3199a548e8a08e318625a2acc69b3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant1e29483c438c60bc22cd794bcdb9d4a1363a19c3c35a253ddbedea1e45a6ae54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
