# Verification target: Widget Calc Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f6a33297b207b77c74777b7e6125765559ab2f0",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant77ba3b44662549a019eae0e742fd354a21b1fcabc795915b48bec48b775b144f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f6a33297b207b77c74777b7e6125765559ab2f0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant77ba3b44662549a019eae0e742fd354a21b1fcabc795915b48bec48b775b144f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant77ba3b44662549a019eae0e742fd354a21b1fcabc795915b48bec48b775b144f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Calc` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.String.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Widget.SelectPanelUtils` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.CodeAction.Attr` — import line 16; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Position` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [createCalc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/declarations/createcalc.md) | 34 | `declaration-track:92f50ad2f498cb20b14f43803527877c0478dc278551dfae4a6f5ca8885e0629` |
| 2 | `structure` | [CalcParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/declarations/calcparams.md) | 62 | `declaration-track:a08d6e774e8e535ba7b27f2e3e2698e653a420b25fced61c5def594166211e50` |
| 3 | `def` | [suggestSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/declarations/suggeststeps.md) | 72 | `declaration-track:55ba7b1ce7983a82013e0e31b666cfa9ca7dc68d1e967a0502b6be3d84acb432` |
| 4 | `def` | [CalcPanel.rpc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/declarations/calcpanel-rpc.md) | 127 | `declaration-track:06b4c7da601db47fdae58423fcd85c10acc445d729f9e4d95f90522121e8be0e` |
| 5 | `def` | [CalcPanel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/declarations/calcpanel.md) | 133 | `declaration-track:4551e9b56aa5e30c674d121dd4c9aeb950ff4c18d1b2a398591a1efad0945073` |
| 6 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/declarations/elab.md) | 140 | `declaration-track:204ed6274ced10a17797eca3e4e1a552030e29c6b6a38ee2619b373c543bdd49` |
| 7 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/WidgetCalcNamespaced.lean/declarations/elab-rules.md) | 149 | `declaration-track:eef2ec770c2ba95d9b7bf57b8e613e73db4ee62fa47ffb35ec691d4806f4e5a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d91c82cf226fd6fd31591ab8ebd0ce38ffd7de544866e44bc3de8935b9c1a5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant77ba3b44662549a019eae0e742fd354a21b1fcabc795915b48bec48b775b144f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant77ba3b44662549a019eae0e742fd354a21b1fcabc795915b48bec48b775b144f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
