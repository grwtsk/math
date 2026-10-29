# Verification target: Step Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7beeaa1f48481ceecca6dc24c72a29344d5c283",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7beeaa1f48481ceecca6dc24c72a29344d5c283`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.PermuteGoals` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.SavedState` — import line 12; external provider; requires a separately pinned dependency.
- `Aesop.Script.Util` — import line 13; external provider; requires a separately pinned dependency.
- `Aesop.Util.EqualUpToIds` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkOneBasedNumLit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/mkonebasednumlit.md) | 25 | `declaration-track:a012c51a400ad55c37f04110bf995f023a82a2e7fee5d981df9492f24b39d770` |
| 2 | `def` | [mkOnGoal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/mkongoal.md) | 28 | `declaration-track:62847fa7243eb6a3c057b3239e75dba70d48c380bd522241a1523df11980a0a9` |
| 3 | `structure` | [Step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/step.md) | 35 | `declaration-track:5aa9db31e1cc1e868eb817be43518f5d5537c95407580d0867dc987b8416e3ad` |
| 4 | `def` | [TacticState.applyStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/tacticstate-applystep.md) | 42 | `declaration-track:d13557154533e99413b322320355fe529c01738c719694e4340148c0a98b8e48` |
| 5 | `def` | [uTactic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/utactic.md) | 49 | `declaration-track:5dc8eba2c098900b7c6f72b01da60816c9cfb18069a8d41c769417faee7c8536` |
| 6 | `def` | [sTactic?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/stactic.md) | 52 | `declaration-track:6820a3fa8589cb16b9ec5bbee3df979afb4e23b242dc7d2f852a6935b85dd66f` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/instance.md) | 55 | `declaration-track:bea63da71764057b755c5528e654721c4b36125171afb3649bd91c6a57751822` |
| 8 | `def` | [mkSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/mksorry.md) | 59 | `declaration-track:914f9eeaf258a2728cb78b30baea12beee97c4c2f8c2a55c97bf701242bbe680` |
| 9 | `def` | [render](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/render.md) | 68 | `declaration-track:75459609ab17484c1c867547aa6b79055ca85b6ed4acb485c8b0b48ae7640bec` |
| 10 | `def` | [validate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/validate.md) | 76 | `declaration-track:b3df9460da60e165a8faccb950cc7f088ed6e164794d94dd6eb2151b9499b7c5` |
| 11 | `structure` | [LazyStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/lazystep.md) | 99 | `declaration-track:a823fde6bfa82d4b51c225ea26c51217313f065b9f2375e90217a5e98a5bda4f` |
| 12 | `def` | [runFirstSuccessfulTacticBuilder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/runfirstsuccessfultacticbuilder.md) | 116 | `declaration-track:eafadfc095847a2a39586f656b7326bd037665a999642c61193bf4601e038c4f` |
| 13 | `def` | [toStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/tostep.md) | 141 | `declaration-track:f4bfee01990118586ceaa01e82db272a767fb9881571e07cf67e1b1cadce478b` |
| 14 | `structure` | [BuildInput](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/buildinput.md) | 149 | `declaration-track:ba678eefb1ac5d3318208462ecf7e61c829b77ea829cea1dc9245b9837b025af` |
| 15 | `def` | [build](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/build.md) | 155 | `declaration-track:57ee9567ffe6965504993ccd3d79d26527da7aa559114b3cba75eb03c6ec4f99` |
| 16 | `def` | [erasePostStateAssignments](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StepPublic.lean/declarations/erasepoststateassignments.md) | 166 | `declaration-track:fffe5b417512f6b524cc80d3ba40ee0db13067ec9124b46c57e65a86d9baca37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9892a07578164e8918c6cad80996f5b4cadcc7db76c5f942d79abe220f176ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variantb200c193512da81f639bf68cd33cf2f1a564698102734c8920a0cbbe9b75e9e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
