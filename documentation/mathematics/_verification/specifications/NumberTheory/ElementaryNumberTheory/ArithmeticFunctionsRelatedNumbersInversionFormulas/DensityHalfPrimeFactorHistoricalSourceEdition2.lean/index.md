# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityHalfPrimeFactor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad57c732c00161c4f0c0b5e46e0b3a10f8a75c8f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactorHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactorHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad57c732c00161c4f0c0b5e46e0b3a10f8a75c8f`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityCorrectionPrimeSeries`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityCorrectionPrimeSeriesHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Real.Sqrt` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [density_half_prime_denominator_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactorHistoricalSourceEdition2.lean/declarations/density-half-prime-denominator-lower.md) | 19 | `result-track:141332a02dced3d31bf21f26bd83ba8a8997c8e99aeb78b989c09a1695933b59` |
| 2 | `theorem` | [density_half_prime_factor_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactorHistoricalSourceEdition2.lean/declarations/density-half-prime-factor-bounds.md) | 24 | `result-track:f21478429bc4c320a4acb58150051da6ba8124351e8df64690ac0efb86d30255` |
| 3 | `theorem` | [density_half_prime_square_excess](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactorHistoricalSourceEdition2.lean/declarations/density-half-prime-square-excess.md) | 38 | `result-track:6018822d24c5e6b7d9a8137197a214a3c5c085c7ce3b38fd4cbbf3a75ea7c132` |
| 4 | `theorem` | [density_prime_half_mass_algebra](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactorHistoricalSourceEdition2.lean/declarations/density-prime-half-mass-algebra.md) | 68 | `result-track:ba153704e58ea1811dd497cabf148ca95d50a14d0ef09bfb48ba50d49a21fa75` |
| 5 | `theorem` | [density_correction_prime_half_hasSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactorHistoricalSourceEdition2.lean/declarations/density-correction-prime-half-hassum.md) | 80 | `result-track:f3d720421f18da8dd5aaf6007d6278a280213c9239b4b6eb76ee9e4e50b5e1d4` |
| 6 | `theorem` | [density_correction_prime_half_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DensityHalfPrimeFactorHistoricalSourceEdition2.lean/declarations/density-correction-prime-half-tail.md) | 94 | `result-track:d1fc05b12601049fc311c6a31dc9da475b58e7c724c4d57faadee7b531facb5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=975ceb25956d89e69b2c1881b64eb61db5dc1a4535062303d1e99a78832088d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean","GRWTSK/_verification/specifications/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
