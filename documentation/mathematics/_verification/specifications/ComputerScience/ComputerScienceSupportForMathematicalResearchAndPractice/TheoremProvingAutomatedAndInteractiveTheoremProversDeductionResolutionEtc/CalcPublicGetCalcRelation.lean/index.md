# Verification target: Calc Public Get Calc Relation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b90a49fba3b28eb0a6c55acea4ecabb8d654d959",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b90a49fba3b28eb0a6c55acea4ecabb8d654d959`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean.json)

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
| 1 | `def` | [getCalcRelation?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/getcalcrelation.md) | 21 | `declaration-track:7d5976aa8d287256c2a07e644ac5da399a7a9995d31cc4b8fd3306a238e11432` |
| 2 | `def` | [getRelUniv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/getreluniv.md) | 27 | `declaration-track:4b66dd6f63212bdcda87a3672b5e73d25868aed959ae66ed795490e2efc5aebf` |
| 3 | `def` | [mkCalcTrans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/mkcalctrans.md) | 33 | `declaration-track:52fc277db9899f15cb395f5a7e860fc487d077b56ac4175a92f78d719ad496e0` |
| 4 | `def` | [annotateFirstHoleWithType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/annotatefirstholewithtype.md) | 63 | `declaration-track:aff4fdb5cb15a1d2404533b4aef04b22640208777266b5eb0004a3eb8c2246bc` |
| 5 | `structure` | [CalcStepView](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/calcstepview.md) | 77 | `declaration-track:a97b2edb9a2ac2d876df5f5f4b7c7ee3290816d839067d18d1164e6793b0ccff` |
| 6 | `def` | [mkCalcFirstStepView](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/mkcalcfirststepview.md) | 85 | `declaration-track:42a5c348e2d6ac9ee600686d412fae3d79fd522b637770117cdde099c8655776` |
| 7 | `def` | [mkCalcStepViews](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/mkcalcstepviews.md) | 92 | `declaration-track:9a5f75bcb0237ac5e8acb986878c2a6b37eaa98ba44869d983505a8a079dd7aa` |
| 8 | `def` | [elabCalcSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/elabcalcsteps.md) | 104 | `declaration-track:eca483445cbc52f090b701c1de4cd2d7a9e88a30769570f58a15a09d97bdb447` |
| 9 | `def` | [throwCalcFailure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/throwcalcfailure.md) | 131 | `declaration-track:f93297d7b5e39d0f3e52d99c6e922a6d1117f749c933ef7120d6c184587845ad` |
| 10 | `def` | [elabCalc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CalcPublicGetCalcRelation.lean/declarations/elabcalc.md) | 169 | `declaration-track:c5b588b38703154cc1c8de46b292579ff975135458691b7eff5b1d094786823b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c6b8c20d7f47f0578b7ccdabdc4e477408b66b87980afe151ca08950504f2b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Calc/Variant806a2780acd46053ac01527cdf0f815bc05b09540a9c88b99a9c56ebc3150441.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
