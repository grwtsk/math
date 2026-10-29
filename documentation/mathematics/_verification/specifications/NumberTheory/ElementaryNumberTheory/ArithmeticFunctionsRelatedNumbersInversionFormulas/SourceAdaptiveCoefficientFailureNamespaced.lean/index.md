# Verification target: Source Adaptive Coefficient Failure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b60c36023a40dbf37f99a772b69caeb497083114",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveCoefficientFailureNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveCoefficientFailureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b60c36023a40dbf37f99a772b69caeb497083114`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceAdaptiveSignedCoefficientRows` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rectangle_four_thirteen_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveCoefficientFailureNamespaced.lean/declarations/rectangle-four-thirteen-five.md) | 21 | `result-track:cf6fb604212984695f766aae0cfe6a06ad8ff1f87f42c5ec48c47f2fd627d98e` |
| 2 | `theorem` | [rectangle_four_thirteen_seven](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveCoefficientFailureNamespaced.lean/declarations/rectangle-four-thirteen-seven.md) | 25 | `result-track:9ae4ed509a4f928ed6fe4bb3a8a6a78cf3a26e238b627bcf2c6474c06b7ef4ec` |
| 3 | `theorem` | [rectangle_four_thirteen_thirty_five](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveCoefficientFailureNamespaced.lean/declarations/rectangle-four-thirteen-thirty-five.md) | 29 | `result-track:0770c9639c200ebf05f3894f3f2a70bdf9619d4c876aa186b38f40a3d7f96ebf` |
| 4 | `theorem` | [rectangle_four_thirteen_nonzero_factors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveCoefficientFailureNamespaced.lean/declarations/rectangle-four-thirteen-nonzero-factors.md) | 32 | `result-track:c9bd5aba6efc5e9332823b92d9d7de169a43e198d475977516846389f7ca9f1a` |
| 5 | `theorem` | [rectangle_four_thirteen_not_multiplicative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveCoefficientFailureNamespaced.lean/declarations/rectangle-four-thirteen-not-multiplicative.md) | 37 | `result-track:5823d1493c8eecf5d11640e465e3940652fb29426c99f448b2aa1fd43f2d3088` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a46389b935992e1d1dea507149648450550fee31b14872e9433d690819ec6043 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceAdaptiveCoefficientFailure/Variant113a64364e08256ea0f68910fa9d4ee4e987d6c1cf861606ce8f0de31eb55081.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
