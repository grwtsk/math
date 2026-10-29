# Verification target: Tactic State Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08c89a1b3e81bb9a44b86f8bae2c1cb890eb6abd",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08c89a1b3e81bb9a44b86f8bae2c1cb890eb6abd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.CollectMVars` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TacticState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/tacticstate.md) | 28 | `declaration-track:ce99ec9adfa91e1345fdad5016e059cdd4280327655baea66ca7875ffcca6e5d` |
| 2 | `def` | [mkInitial](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/mkinitial.md) | 35 | `declaration-track:b9101dd3e8b5817cde90bfe8a5511e40ee431047bb04148a72e265135eeb5ac0` |
| 3 | `def` | [throwUnknownGoalError](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/throwunknowngoalerror.md) | 41 | `declaration-track:c2d3a0d46c7835be9b49eacd858e6394e9dd1d91411d898131d917229b4e7548` |
| 4 | `def` | [getVisibleGoalIndex?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/getvisiblegoalindex.md) | 44 | `declaration-track:07caf699868ea00a7977ab83fe0f0299d2daf621c0d9e81af896be84716ec5d0` |
| 5 | `def` | [getVisibleGoalIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/getvisiblegoalindex-source-edition-2.md) | 47 | `declaration-track:93ebac95449a2487b78db8f4d2271344cd160e7a449b1a26f7eeb3649d8735ea` |
| 6 | `def` | [getMainGoal?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/getmaingoal.md) | 53 | `declaration-track:cd58feb502aac2bd8b9920613257e6403ccb521024b5ec8cb34ee18bc1a75d07` |
| 7 | `def` | [visibleGoalsHaveMVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/visiblegoalshavemvars.md) | 56 | `declaration-track:b034a433404a3fe6987635a71e1c42085bf3dbdd38618ce0c0f07bbbfcc78272` |
| 8 | `def` | [solveVisibleGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/solvevisiblegoals.md) | 59 | `declaration-track:2f82256929a694e982a3b37f76a9db99c8d0ca4bb4909cecb34731a01fe83c2d` |
| 9 | `def` | [replaceWithArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/replacewitharray.md) | 62 | `declaration-track:836b151a9876f1f3db16a21736913b892caeebe6f74bf86a410ef34973e6a4d6` |
| 10 | `def` | [eraseSolvedGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/erasesolvedgoals.md) | 74 | `declaration-track:d3a55adea0f206407181ee0822ef2d70a16308639e938097a5bc9668a61c3fcc` |
| 11 | `def` | [applyTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/applytactic.md) | 85 | `declaration-track:b028b876a2791bc9b4102fbe34b4d4a81ca391b75ff3c2fce6423baec70ef510` |
| 12 | `def` | [focus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/focus.md) | 96 | `declaration-track:c5b00ccbb55e6bd9dee78b28ece030a62c6698d8246e3e76fcc79b0fc7494404` |
| 13 | `def` | [onGoalM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticStateNamespacedPublic.lean/declarations/ongoalm.md) | 106 | `declaration-track:32a69358905dedef9dd734cbbaa01dead62fd1096750fe0dca7add98f93b9a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=414913987def713a796a9b6b264a0836926f61a928413db2906b67c0441eb6f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticState/Variantfb5e72020db3a4a81151815d9f3237a343356d086fb93812a943b9916c1e8978.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
