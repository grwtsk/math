# Verification target: Compat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91b19d0c4d5de56f46143b0344bb2a435adea483",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant8210701de03b9f93431bbedfeb451502c8623d8effc2747e91639d3870e6aed3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91b19d0c4d5de56f46143b0344bb2a435adea483`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant8210701de03b9f93431bbedfeb451502c8623d8effc2747e91639d3870e6aed3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant8210701de03b9f93431bbedfeb451502c8623d8effc2747e91639d3870e6aed3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Attributes` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Widget.UserWidget` — import line 7; external provider; requires a separately pinned dependency.
- `ProofWidgets.Data.Json` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LazyEncodable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/lazyencodable.md) | 31 | `declaration-track:56542cb1a27fa781703744e25d10b60a7d066f66a7b99161a571e760d7f46d43` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/instance.md) | 33 | `declaration-track:158c74a9385f8f9798212bed3a98655689ef2c79a4623e19c7447abfbe27b1aa` |
| 3 | `structure` | [ExprWithCtx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/exprwithctx.md) | 38 | `declaration-track:d4c3e91a3b0ab3706a527b9b70c97d269e4a62fc4822d980a088044807109baa` |
| 4 | `def` | [ExprWithCtx.runMetaM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/exprwithctx-runmetam.md) | 44 | `declaration-track:9b0439f3036ea0757884bf92638a3b4553a934cc72cbca3af8007223d4452cf6` |
| 5 | `def` | [ExprWithCtx.save](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/exprwithctx-save.md) | 47 | `declaration-track:da1f6b80b05081e410e5a9a06ee55cb4690faefd59c7dc7e457d26cb1b6d632e` |
| 6 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/elab.md) | 58 | `declaration-track:9cb387711e0550070b82bc5cfa24d5ce12c61f2a64f963ac940346b8de6bca4e` |
| 7 | `def` | [widgetDefPostfix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/widgetdefpostfix.md) | 65 | `declaration-track:d9ca7ba60814a3d6efa31d57b72121e709ae7dc52221fea8f2cfa5bc2f566091` |
| 8 | `structure` | [Module](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/module.md) | 71 | `declaration-track:962bb4fe1bdcab09a46e533906cbb9b46380648c62920011fc5d34bf40e55086` |
| 9 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/initialize.md) | 82 | `declaration-track:a70d25acf07585f01c503e0e93a4b0c494f095f7e75d89ff7093273027f88912` |
| 10 | `def` | [$](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/anonymous.md) | 94 | `declaration-track:dbf265d5fe5922f819291c8320fbc9ab5a3097b2df7fe81701b69ff7892f08e3` |
| 11 | `structure` | [PanelWidgetInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/panelwidgetinfo.md) | 105 | `declaration-track:fdd91c9d2d906bb1972b4ba8a1f00a1967b60d20efbb752f1e5056a056dea247` |
| 12 | `structure` | [WidgetInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/widgetinstance.md) | 114 | `declaration-track:8b6811fa0cfce509714680a2a26fe2e36fd54d872e63d5f99fc44733baec3b3d` |
| 13 | `structure` | [PanelWidgetInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/panelwidgetinstance.md) | 124 | `declaration-track:f875e484a8afe0a98bda573833b47c8d18386aa62ed5bf03289d88d31352630d` |
| 14 | `structure` | [GetPanelWidgetsParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/getpanelwidgetsparams.md) | 129 | `declaration-track:c49050548c04de054c72ab26823f89e60d0f3b517af4788dd42faab1f4720574` |
| 15 | `structure` | [GetPanelWidgetsResponse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/getpanelwidgetsresponse.md) | 133 | `declaration-track:155d3664bb8a78bae29f8bc76d85a82519a1a0258898ff17b3207ea88377e847` |
| 16 | `def` | [customInfosAt?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/custominfosat.md) | 138 | `declaration-track:debf97b35acf038d79710600745de146c9a248f12cbcc7e1e547baa7fcf7ded9` |
| 17 | `def` | [getPanelWidgets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/getpanelwidgets.md) | 153 | `declaration-track:9732e7126a06bacc0c00004330fdce9acba28b5c92e794f2205cb08c9cd643fc` |
| 18 | `def` | [metaWidget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/metawidget.md) | 174 | `declaration-track:87b5d21d62fb94bb4093be71c9afa7693d63183b654c0603bffc808462e36d8d` |
| 19 | `def` | [savePanelWidgetInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CompatNamespaced.lean/declarations/savepanelwidgetinfo.md) | 182 | `declaration-track:fb7d25be4bb9184daea85c9999ce7444f01e8e0d1e324df6648e2d601bbd79d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=115b1d0c2f474bfe7f38ab2991d018548b1321289e1e3ec01915a4ad933dedbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant8210701de03b9f93431bbedfeb451502c8623d8effc2747e91639d3870e6aed3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Compat/Variant8210701de03b9f93431bbedfeb451502c8623d8effc2747e91639d3870e6aed3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
