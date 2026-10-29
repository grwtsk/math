# Verification target: Recurring Rule Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56e413d5e7f46ccecffacc4685ac395fc0f151ae",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56e413d5e7f46ccecffacc4685ac395fc0f151ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean.json)

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
| 1 | `inductive` | [TransitionSpec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/declarations/transitionspec.md) | 27 | `declaration-track:f9a13e8ac697abbeff52904dc0b5adb23bb9659d1cd6f1043f55c2c07944e394` |
| 2 | `def` | [toEpochDayMWD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/declarations/toepochdaymwd.md) | 53 | `declaration-track:b0c94dee1328dbc3790ac4381c2494dc41df9a9ca7bbeec405d9d13dd85db257` |
| 3 | `def` | [toEpochDayJulian](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/declarations/toepochdayjulian.md) | 76 | `declaration-track:9f932842e410a18c95b201dafcf74fca6f5387f05e42ea60959216e2514ea8cd` |
| 4 | `def` | [toEpochDayJulian0](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/declarations/toepochdayjulian0.md) | 86 | `declaration-track:277747a523010c8398eb4bc3439ac8d5304e35f1465aefa77f552423fe7af5c2` |
| 5 | `def` | [toEpochDay](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/declarations/toepochday.md) | 93 | `declaration-track:bca4fadee1301754ed0a2cded9aa97bc465c7a08e1c35628455e228ff9bdcbd0` |
| 6 | `structure` | [TransitionRule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/declarations/transitionrule.md) | 104 | `declaration-track:35fd5488a7c28dbec322eeda9fd3d77e5272658af09d1ce685dc0861db42b1fa` |
| 7 | `structure` | [DaylightSavingRule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/declarations/daylightsavingrule.md) | 123 | `declaration-track:da11931ed20e2159904821110cba0f62e31921a006051f00d598b1ec236a80ca` |
| 8 | `structure` | [RecurringRule](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RecurringRulePublic.lean/declarations/recurringrule.md) | 149 | `declaration-track:fed171821a6a2d4444d8ff945b85900ae74ed8ea127beffe2b7826179fd0a83a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7484b808e466f9d3b8759985a4f554295f93c6c1a2d733832cc9195d9cd21c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecurringRule/Variantcf43ec70eec81ef8e1697b7c2427d45cf543290f581dbbd058f1fe46249584e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
