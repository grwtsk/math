# Verification target: Source Derivative Coefficient Bound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f734e3746e2409442df4ac4323ce17eb5092a8b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantd7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f734e3746e2409442df4ac4323ce17eb5092a8b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantd7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantd7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/declarations/normpolynomial.md) | 19 | `declaration-track:9ebb2091ed4f9f79538f3f57ef254f0761ced79aed4a09cc11519cfc492851ef` |
| 2 | `def` | [derivativePolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/declarations/derivativepolynomial.md) | 24 | `declaration-track:d48587c46e399794e3249ac4f93eba7cdcdfb168b48bd4c899a61fe10b65abed` |
| 3 | `def` | [squaredCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/declarations/squaredcoefficient.md) | 29 | `declaration-track:a1f95a33ca84ec8650e283723d15fb7a43ecbca1a12b0bdf0bd9974e176d7a00` |
| 4 | `theorem` | [normPolynomial_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/declarations/normpolynomial-pos.md) | 31 | `result-track:91d7e1181ddaa77124b118a5d817c353cab02c1c128b63673840d5dea8887a3a` |
| 5 | `theorem` | [exact_coefficient_gap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/declarations/exact-coefficient-gap.md) | 36 | `result-track:29dd58a310f619d26a90500af2c6dc28e3f19626ae8f605a0cc6cac751db55ea` |
| 6 | `theorem` | [derivativePolynomial_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/declarations/derivativepolynomial-le.md) | 42 | `result-track:2b7bdb256cf7862265a10f64ad0a49f2d79f6778f52ea584b3d79b37677fb66f` |
| 7 | `theorem` | [exact_ratio_upper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/declarations/exact-ratio-upper-bound.md) | 52 | `result-track:34b650dba621a04d3ff426e5a6691b6048f6e99ff51d823074a00bb7942f79b9` |
| 8 | `theorem` | [squaredCoefficient_lt_twenty_five](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDerivativeCoefficientBound.lean/declarations/squaredcoefficient-lt-twenty-five.md) | 57 | `result-track:1a65bf335fcc233f36e9e9d6e5431dfca1179014ffb219070f605ae643cb4ac2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=004977be8de82e2582e4c623a8b9e98fb6be950c9132b3a849621d5c5304a092 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantd7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDerivativeCoefficientBound/Variantd7f39a5025648bb5b86fbb1d59cd78ffc6082987c5bfc7c8871a5fd6651513ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
