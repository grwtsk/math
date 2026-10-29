# Verification target: Linter Flexible Linter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37ab45bf334aaaf5f004bde7cce26d37af5ec574",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37ab45bf334aaaf5f004bde7cce26d37af5ec574`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.flexible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/linter-flexible.md) | 97 | `declaration-track:9cb33f5814f8e821b24ecba9e19abc5a266af3c6d37a1484c6369c2f228cfa57` |
| 2 | `def` | [flexible?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/flexible-source-edition-2.md) | 109 | `declaration-track:da6e53207fb3b378328462d417ecef73915c308802a70e0ad349ce61513d6f32` |
| 3 | `def` | [goalsTargetedBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/goalstargetedby.md) | 130 | `declaration-track:975bcdfc08e6a92b28fc9a1e358ff811181ffcd56ae9f51f4f9d7666c712dc12` |
| 4 | `def` | [goalsCreatedBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/goalscreatedby.md) | 135 | `declaration-track:ecb385bd86de619ccd07af4b7c10eb44526edf530f1a6f6fd4878a8d707763fe` |
| 5 | `def` | [extractCtxAndGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/extractctxandgoals.md) | 156 | `declaration-track:1ff9fa58b1cf628c70458a794be7cc2f43b576346477658d447cc8638b865de9` |
| 6 | `inductive` | [Stained](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/stained.md) | 173 | `declaration-track:50f352cf3e6b7c1fcb529f76e06a2362046e940eaa59e26e3a336c86c471b192` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/instance.md) | 184 | `declaration-track:7a39ec93dccba0928dcfe50d6a355d1d650a7e42b2dd396cce148ae0eeaeb8fd` |
| 8 | `def` | [toStained](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/tostained.md) | 196 | `declaration-track:4f419216606d8b6a642be4df34035afbaede6c4c23d5eff3a11acb7e1926657a` |
| 9 | `def` | [getStained](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/getstained-source-edition-2.md) | 212 | `declaration-track:8e27274984b98284480720c0cc8e3420941eba94c41b26e3cf8fc7cd7d8dfa5e` |
| 10 | `def` | [getStained!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/getstained.md) | 230 | `declaration-track:03cc26db15a4025fd2e24b8ea3a287e0cb3a447845d611dab0567b020c15aaca` |
| 11 | `def` | [Stained.toFMVarId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/stained-tofmvarid.md) | 242 | `declaration-track:84905986bfc7ee99e2e7cb67bdb00b7f385fd4e5ee04ee25c3fd9b77fc641d11` |
| 12 | `def` | [stoppers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/stoppers.md) | 254 | `declaration-track:a0c6efead1a34456590411844a18ecda19c8fa9f22f0bc421ec11cca37261a85` |
| 13 | `def` | [flexible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/flexible.md) | 283 | `declaration-track:533cdbd74111f3aa010133151ee42eb78dda69ad3e58f63ebd78470788ecd003` |
| 14 | `def` | [usesGoal?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/usesgoal.md) | 308 | `declaration-track:439307a1be506b1976e24cc0ba0c06e8634d27930d34d12613bda2d960c5a70b` |
| 15 | `def` | [getFVarIdCandidates](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/getfvaridcandidates.md) | 326 | `declaration-track:b960ea177d6aca4c5e65703db452a5260b0382b156571d0b67f1e7f748e9924c` |
| 16 | `def` | [persistFVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/persistfvars.md) | 344 | `declaration-track:eb2a9c014302cfe6eb546c1643b90b61db4b147d5f377d6b802f6642174d2192` |
| 17 | `def` | [reallyPersist](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/reallypersist.md) | 349 | `declaration-track:161a9abf909ef4455d459ab91dec5ed6c501bb328c92c4396970e8d640b0017a` |
| 18 | `def` | [flexibleLinter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/flexiblelinter.md) | 372 | `declaration-track:6bc6b4da64fdf0cece0667ac16d042ce31bd2e29e664521a8273a5e78430dd1e` |
| 19 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinterFlexibleLinter.lean/declarations/initialize.md) | 422 | `declaration-track:e1bb9771bf2ec074e74097649f38cd5b01eecf017fedc738f9d4eee5b3c7dd30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4a2635b5a0156ede0e975b9d8d38d0b538e64d74e178288a340c38e7d766433 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlexibleLinter/Variante3b699ecd44aff9ecb8f8946b6218a99d949ce2cb82209b0aa1ed329561e6be2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
