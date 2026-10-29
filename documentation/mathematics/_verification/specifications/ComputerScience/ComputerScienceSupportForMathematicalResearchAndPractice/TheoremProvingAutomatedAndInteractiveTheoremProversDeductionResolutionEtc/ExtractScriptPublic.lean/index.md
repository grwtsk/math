# Verification target: Extract Script Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee50c4f9ba602636cc4801c8dc0fa3c7221c6d65",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee50c4f9ba602636cc4801c8dc0fa3c7221c6d65`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean.json)

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
| 1 | `structure` | [ExtractScriptM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/extractscriptm-state.md) | 21 | `declaration-track:50cfb556d4d46d3fa9f36c877fcda732468c9cbb7f2a68c73267c44221ee3653` |
| 2 | `abbrev` | [ExtractScriptM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/extractscriptm.md) | 25 | `declaration-track:cc141074dd65fde91e24b05fcbe1a76f408eb79cdbceea036f543f5ab3551dcd` |
| 3 | `def` | [ExtractScriptM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/extractscriptm-run.md) | 27 | `declaration-track:2fe2a552b403e60f1ffe7e0391b39e885dcda285807c86554807399149aeec6e` |
| 4 | `def` | [lazyStepToStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/lazysteptostep.md) | 33 | `declaration-track:cb8a700d8444d5da05b56cae68accc61930687fc3437bb4485140207506eac50` |
| 5 | `def` | [lazyStepsToSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/lazystepstosteps.md) | 40 | `declaration-track:d4a9834fd75f144d2e788c9956a43e17cafbcdc1a9a86d5bee690e00a531dff1` |
| 6 | `def` | [recordStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/recordstep.md) | 45 | `declaration-track:3ac9ce2f2d74d907236ce5451dfb022627b53d1ae3857b329bcab072c78ec341` |
| 7 | `def` | [recordLazySteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/recordlazysteps.md) | 48 | `declaration-track:f87676d2f712b04d7a85f967cebb6b6415ef444a7f3a4d5e083352647e08ebe1` |
| 8 | `def` | [visitGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/visitgoal.md) | 53 | `declaration-track:2faaf1c17c36b297ab61ff3f970ad6a4b88c68147004fdb11178eea4e7006a4d` |
| 9 | `def` | [visitRapp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/visitrapp.md) | 64 | `declaration-track:42f071360d94796f78be583e098b3734975599cd5ce73205f7092398bb2f5afe` |
| 10 | `def` | [MVarClusterRef.extractScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/mvarclusterref-extractscriptcore.md) | 73 | `declaration-track:a5ca114807679711bd582f253da73b4d135726d3c00a6345030b33539945cac1` |
| 11 | `def` | [GoalRef.extractScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/goalref-extractscriptcore.md) | 80 | `declaration-track:b409854d2285d8a4031c645122d2804b6b4100047bd63f9d4c4f3231f294a0e2` |
| 12 | `def` | [RappRef.extractScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/rappref-extractscriptcore.md) | 88 | `declaration-track:a6ddd9685545e818b0d139e0843490058de92ae1771915143dc565dacb8a0bf2` |
| 13 | `def` | [extractScript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/extractscript.md) | 96 | `declaration-track:ff061231fb60ce6a193b885bc6ca76a7b469c6972afbfbca07e734a927b129b6` |
| 14 | `def` | [MVarClusterRef.extractSafePrefixScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/mvarclusterref-extractsafeprefixscriptcore.md) | 101 | `declaration-track:6a9b9df9eb8903f9c722054fe24d5a6d943e08885ae1687b12c7e6b1e492a6d8` |
| 15 | `def` | [GoalRef.extractSafePrefixScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/goalref-extractsafeprefixscriptcore.md) | 105 | `declaration-track:aa96e68f8c6a985ac0e91ad0c7457ec05262c87e91665f5c8f534028550e0f72` |
| 16 | `def` | [RappRef.extractSafePrefixScriptCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/rappref-extractsafeprefixscriptcore.md) | 120 | `declaration-track:ab3c92588806c344fc63e67ca4b222978484c57559cfdc6ff9add708d6eddfba` |
| 17 | `def` | [extractSafePrefixScript](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtractScriptPublic.lean/declarations/extractsafeprefixscript.md) | 132 | `declaration-track:7ab7ef20aa80460f7bc33a483574c668521940ef372576b076f5f75687846ac5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=216b3f40ac8ad5581401c31f8c332593da43bb67974f8ea23fb2ccf0dd62becb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractScript/Variant5474c713ef7f0d9a386248362e0e4170a9a2f31d6d85ad2f6f19bfd8520a8ba0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
