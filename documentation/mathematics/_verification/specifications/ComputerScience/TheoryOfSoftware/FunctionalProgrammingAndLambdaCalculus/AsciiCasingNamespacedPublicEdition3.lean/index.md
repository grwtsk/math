# Verification target: Ascii Casing Namespaced Public Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3c5886eb6cd3e56291540d95b200a4ea6aa3161",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3c5886eb6cd3e56291540d95b200a4ea6aa3161`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean.json)

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
| 1 | `theorem` | [not_isLower_of_isUpper](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/not-islower-of-isupper.md) | 29 | `result-track:d0bf9762a2b411b18609dd2543f0fcbea1a8df29decf8b13df4f3aa2d803a6ee` |
| 2 | `theorem` | [not_isUpper_of_isLower](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/not-isupper-of-islower.md) | 33 | `result-track:88982af799e9eadf119059a3096973caf1b1c2a410ff1f605d7eafe3b06f7114` |
| 3 | `theorem` | [toLower_eq_of_not_isUpper](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/tolower-eq-of-not-isupper.md) | 38 | `result-track:ed9ed75bcc52bc5bf9973a3ad58a1090343e2136652a1c191eceee3ddd0359d7` |
| 4 | `theorem` | [toLower_eq_of_isUpper](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/tolower-eq-of-isupper.md) | 42 | `result-track:8afc4cba6a1d39a60c37334c662cc54ec6ade0fa217be77022dbe0559838e463` |
| 5 | `theorem` | [toUpper_eq_of_not_isLower](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/toupper-eq-of-not-islower.md) | 48 | `result-track:64222134dc84cd21c025744a851351aa668b3068a74f4a8fa55837f042a8aef6` |
| 6 | `theorem` | [toUpper_eq_of_isLower](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/toupper-eq-of-islower.md) | 52 | `result-track:117c239a7848b3ecc3350d439e050a5918d431d988bc5e46863304c75be1c602` |
| 7 | `theorem` | [isUpper_toLower_eq_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/isupper-tolower-eq-false.md) | 59 | `result-track:714fd2796a7f94eae38f32d901be7ba396ec413d99250b909d699f956fa4bd7b` |
| 8 | `theorem` | [isLower_toUpper_eq_false](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/islower-toupper-eq-false.md) | 63 | `result-track:fb173314ae9d5860318011c173fc99774ed455a5453d9a9f4c825c6ecbbc81a0` |
| 9 | `theorem` | [isLower_toLower_eq_isAlpha](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/islower-tolower-eq-isalpha.md) | 67 | `result-track:8fc50fd2e45ebe65c4a3fd111145758818a9794799d7b6950cfced5221018c73` |
| 10 | `theorem` | [isUpper_toUpper_eq_isAlpha](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/isupper-toupper-eq-isalpha.md) | 79 | `result-track:865a86037f1dc4889172928fd09b6a8fc86edca16c3c2780c433f185313777a1` |
| 11 | `theorem` | [isAlpha_toLower_eq_isAlpha](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/isalpha-tolower-eq-isalpha.md) | 92 | `result-track:e4eb9d4bed08b8e9870f323b7c8f35e5f7823c0122a5f2b4aa2f81713338ea15` |
| 12 | `theorem` | [isAlpha_toUpper_eq_isAlpha](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/isalpha-toupper-eq-isalpha.md) | 95 | `result-track:4bd158cbad33f0dfe0350c01cb18d0c289950e38ec8a1928837230c9f81376c7` |
| 13 | `theorem` | [toLower_toLower_eq_toLower](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/tolower-tolower-eq-tolower.md) | 98 | `result-track:53cff69e320bab0293551dfed8e2f275d045f89e3559158075052a3159817b09` |
| 14 | `theorem` | [toLower_toUpper_eq_toLower](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/tolower-toupper-eq-tolower.md) | 101 | `result-track:67012aad569e4a2ad238676b826087f680ea4b76aeb21c4574902f333af020a5` |
| 15 | `theorem` | [toUpper_toUpper_eq_toUpper](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/toupper-toupper-eq-toupper.md) | 117 | `result-track:97f4d8d66b7bc85262b309226299831cf5baac7ece8fb7f4be18de6b28cfcc54` |
| 16 | `theorem` | [toUpper_toLower_eq_toUpper](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/toupper-tolower-eq-toupper.md) | 120 | `result-track:8c80c37e9f5c1f15eac27915cc75d404ad24d43381bfc0160cbe4c5dc91552a4` |
| 17 | `abbrev` | [caseFoldAsciiOnly](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/casefoldasciionly.md) | 146 | `declaration-track:7f43539048e626e24fb04889782e95cc5577b54de83dcb8665fa2e640e4812dd` |
| 18 | `def` | [beqCaseInsensitiveAsciiOnly](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/beqcaseinsensitiveasciionly.md) | 160 | `declaration-track:8d618d7b5a412fb2d071236bb39e3f3dfcc58edce1145fed2f1188be30ed900f` |
| 19 | `theorem` | [beqCaseInsensitiveAsciiOnly.eqv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/beqcaseinsensitiveasciionly-eqv.md) | 163 | `result-track:7a650725458ec0574a0ccba17ca40ff8effc33e568a5aaeeb47e4f3d04bc1909` |
| 20 | `def` | [beqCaseInsensitiveAsciiOnly.isSetoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/beqcaseinsensitiveasciionly-issetoid.md) | 172 | `declaration-track:252c3b9e8d12850a3cd76c6b19c5875ed4ea40366d6c745ae793cd2ef7c18e5a` |
| 21 | `def` | [cmpCaseInsensitiveAsciiOnly](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AsciiCasingNamespacedPublicEdition3.lean/declarations/cmpcaseinsensitiveasciionly.md) | 187 | `declaration-track:7ede4f2124d3a8e81a76cc2b41df73d69f04fd57aacfe616201a9232c1ecd1a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=186f742f57a3aa0e7b711e60a73dd72cf1ef045b42533b5bc26d38da47faefb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
