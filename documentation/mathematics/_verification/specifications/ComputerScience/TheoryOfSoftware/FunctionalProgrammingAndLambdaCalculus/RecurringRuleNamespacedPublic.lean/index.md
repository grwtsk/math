# Verification target: Recurring Rule Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d9d8845f02af88ba323d75acdbc6914c1b8e96d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d9d8845f02af88ba323d75acdbc6914c1b8e96d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean.json)

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
| 1 | `inductive` | [TransitionSpec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/declarations/transitionspec.md) | 35 | `declaration-track:3211058b25a4cbe01ab9dddc23dea942fdafaa2d1011eeb943b2a0a41ba88b35` |
| 2 | `def` | [toEpochDayMWD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/declarations/toepochdaymwd.md) | 61 | `declaration-track:a217c8be9bc9323525733e1488a05b4ca70f8a89991b69ec547bc929cfca0d46` |
| 3 | `def` | [toEpochDayJulian](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/declarations/toepochdayjulian.md) | 84 | `declaration-track:474afd3d0c47f362a8b27f983d42f48940ccd0f3947e718da90a750da3bd49bd` |
| 4 | `def` | [toEpochDayJulian0](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/declarations/toepochdayjulian0.md) | 94 | `declaration-track:46064eeace76ac2a902b4cc8ce5cbe678171423ef382f6cfc3eaa7d8112ec3c8` |
| 5 | `def` | [toEpochDay](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/declarations/toepochday.md) | 101 | `declaration-track:03f7c1ebd5d10109139ddfc64de3d58ccb350014d6c5b7fa92a71315c81efa7c` |
| 6 | `structure` | [TransitionRule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/declarations/transitionrule.md) | 112 | `declaration-track:c297ef938dcd2c5943dfee99025dd0142b9dc64b6af9c40e0e478d7a76f502bd` |
| 7 | `structure` | [DaylightSavingRule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/declarations/daylightsavingrule.md) | 131 | `declaration-track:533a7eb34712a5a88a1a2f3d37f568e9e02a536438fda79001c85886dc324a2f` |
| 8 | `structure` | [RecurringRule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRuleNamespacedPublic.lean/declarations/recurringrule.md) | 157 | `declaration-track:b4d623ed87599335acddc0b9fb6c54a0068ad249eb0e6446e67197b8d6d26d9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=987b21aca396dae6f77c2a1af7c8fa8872418e3767ae7f363090ca884a8c03df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variant63a1843e865b8922002427e2bc22706a19bd1f90a461100e3aa5f33095d6b204.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
