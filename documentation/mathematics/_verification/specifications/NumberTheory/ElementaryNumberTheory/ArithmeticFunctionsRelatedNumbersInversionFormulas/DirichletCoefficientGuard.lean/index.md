# Verification target: Dirichlet Coefficient Guard

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ca34252965fe1a17d80838a251122d2dcdd3755",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ca34252965fe1a17d80838a251122d2dcdd3755`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusQuadratic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [linear_twelve](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/declarations/linear-twelve.md) | 10 | `result-track:ea812b41f87a0d6cde0b2cc7d059989384feb1b30edc376b56ddb9cb3e017688` |
| 2 | `theorem` | [quadratic_twelve](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/declarations/quadratic-twelve.md) | 29 | `result-track:8e86c34d9a46105ea1adfb59aed51bb45e347a6b59e84d8527a58445539326ff` |
| 3 | `theorem` | [quadratic_twelve_neg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/declarations/quadratic-twelve-neg.md) | 38 | `result-track:5111c4ed457a707c59159dcc8d880df37d9de0c466d428bbbf4cce454b403c2f` |
| 4 | `theorem` | [source_radius_admitted](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/declarations/source-radius-admitted.md) | 44 | `result-track:a900d561b321e6ac48960e46ad1904f8128c799466a4e4958aa24c3ef58d06cf` |
| 5 | `theorem` | [source_cutoff_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/declarations/source-cutoff-five.md) | 49 | `result-track:9e0e525e30bd7c03d1cdd80ccee1e66bd22c93b7a329b9ebd8292f2690c9fa32` |
| 6 | `theorem` | [twelve_in_source_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/declarations/twelve-in-source-cutoff.md) | 53 | `result-track:074e821320eb7f2de744846a84062ce7e7a2997eaca83f9dfec1a2a574a705d9` |
| 7 | `theorem` | [actual_quadratic_coefficient_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/declarations/actual-quadratic-coefficient-negative.md) | 59 | `result-track:1113f9a79226be7b2a54779e8f4fb0416879ae9fbe4ba6b9be95947c3a58c5c9` |
| 8 | `theorem` | [twelve_linear_quadratic_cancel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DirichletCoefficientGuard.lean/declarations/twelve-linear-quadratic-cancel.md) | 65 | `result-track:601b768adcac2c9cade59e1ac8db1467a928b85e8295e4421bed52a35a3e0f55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f952f7e6e7cbcacdb6c5adb5aeb879966d5cdcecdfdf51ca81f534c5a4d36f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DirichletCoefficientGuard/Variant93dcd0da06b50935127073f70eb75f81309dde1800bd12e95e3cf1306d7b8085.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
