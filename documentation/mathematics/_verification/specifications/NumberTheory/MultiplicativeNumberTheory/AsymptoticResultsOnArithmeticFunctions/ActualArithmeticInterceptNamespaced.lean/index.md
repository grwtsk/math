# Verification target: Actual Arithmetic Intercept Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89c958da0219fa3600b7e56bfc36b53cde6d3bcc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89c958da0219fa3600b7e56bfc36b53cde6d3bcc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMangoldtLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `ArithmeticLaurent` — import line 7; external provider; requires a separately pinned dependency.
- `MangoldtLaplaceIntegrability` — import line 8; external provider; requires a separately pinned dependency.
- `SourceRemainderLaplace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exponential_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/declarations/exponential-integral.md) | 29 | `result-track:7c64ec0130fa0f5d96a2f64e3cc3db75dc92240e496fdb8a4a7f3cdc50d8d808` |
| 2 | `theorem` | [linear_exponential_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/declarations/linear-exponential-integral.md) | 33 | `result-track:154f23a48b20a730d1bd96ccbdd2712d6c9daf18c4bad1aaa6944e069bd66668` |
| 3 | `theorem` | [actual_laplace_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/declarations/actual-laplace-integrable.md) | 39 | `result-track:070d36d21c8e722c3a9f4b736474add473bbc61fa448e6658fe1a5ab70b9658e` |
| 4 | `theorem` | [actual_laplace_compensation](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/declarations/actual-laplace-compensation.md) | 49 | `result-track:bc291de6a4e787ecad8803aa11c39eda61cc4f84d1384af25e3da48019462418` |
| 5 | `theorem` | [actual_laplace_eq_LSeries_quotient](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/declarations/actual-laplace-eq-lseries-quotient.md) | 67 | `result-track:bce9be1c7dd0036f0f4c53fc0bce6bd241ad9b229884f881fd9323d79b195d59` |
| 6 | `theorem` | [real_right_tendsto_complex_positive](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/declarations/real-right-tendsto-complex-positive.md) | 80 | `result-track:69209ba0e06babc8c2c29ac381f1231c62d4296b4c46a0c18ff79a200ded1b0e` |
| 7 | `theorem` | [actual_laplace_tendsto_coefficient](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/declarations/actual-laplace-tendsto-coefficient.md) | 89 | `result-track:283e076c6d3b77b68bdf9f7c302fd987f4089ca064f52b7dae4eab19698f5995` |
| 8 | `theorem` | [actual_remainder_integral_eq_coefficient](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptNamespaced.lean/declarations/actual-remainder-integral-eq-coefficient.md) | 102 | `result-track:51d36fba1763fc86c708411410f2e44703fcbba1a3d15511fe711f1b25343ab5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a875ed750a4db6173a6ab26b6c215c52b411116e4f79419b3f9e36f60bb31033 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualArithmeticIntercept/Variant3644c57bd7a15dfdab478050d28e39e84e21e2f4b5521fb4fac86ac944274e84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
