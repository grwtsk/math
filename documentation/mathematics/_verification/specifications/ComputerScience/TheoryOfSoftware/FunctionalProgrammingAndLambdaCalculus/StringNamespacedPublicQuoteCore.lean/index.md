# Verification target: String Namespaced Public Quote Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d72f4b4e1046a24a912f7f6de803ee8eab181577",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantc9c36d64222fb627959386efe4ff45040d2080efc2c0a21d8bf0615897e0dda3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d72f4b4e1046a24a912f7f6de803ee8eab181577`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantc9c36d64222fb627959386efe4ff45040d2080efc2c0a21d8bf0615897e0dda3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantc9c36d64222fb627959386efe4ff45040d2080efc2c0a21d8bf0615897e0dda3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quoteCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/declarations/quotecore.md) | 43 | `declaration-track:188beff90a6076bd701955d4832352e96e34bec923204174800ffe76951cc6f4` |
| 2 | `def` | [quoteHttpString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/declarations/quotehttpstring-source-edition-2.md) | 61 | `declaration-track:7edb823095f1567711c5befae91c8dea371e0d83da6f5f8aea4ba388a1748539` |
| 3 | `def` | [quoteHttpString?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/declarations/quotehttpstring.md) | 78 | `declaration-track:0be53ac9b41a55c0a06f9b6c7d5761ed88d5ac0ed7f4129e87f0acdb5fe81055` |
| 4 | `def` | [quoteHttpString!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/declarations/quotehttpstring-source-edition-3.md) | 88 | `declaration-track:bb2680ea78d5c534e2a4d1eae316f725f35c648ea6937545a27485bb0cf72fc5` |
| 5 | `inductive` | [UnquoteState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/declarations/unquotestate.md) | 93 | `declaration-track:7cfea4868aeb7a37c6e73712af8dbf63af79631d94fb48de0c96f8b919c0c569` |
| 6 | `def` | [unquoteHttpString?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/declarations/unquotehttpstring.md) | 102 | `declaration-track:d0420797d8e23e2741b7439aec9896ac0807094145c27651a3d7fbc7cd5a055a` |
| 7 | `def` | [isToken](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/StringNamespacedPublicQuoteCore.lean/declarations/istoken.md) | 128 | `declaration-track:ff478d5c60be354bb1a12f7ef710e8b5cc5e5709e5abd2220d00fd4737927c87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b4d16da5bad619a9e1edae2ffec37160e9fdacda7fd2d4baf90f8cbdb2d9bc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantc9c36d64222fb627959386efe4ff45040d2080efc2c0a21d8bf0615897e0dda3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantc9c36d64222fb627959386efe4ff45040d2080efc2c0a21d8bf0615897e0dda3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
