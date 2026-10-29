# Verification target: Arithmetic Error Integrability Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b83af5b73ea76868130e99a82cd5bf551aba1da8",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b83af5b73ea76868130e99a82cd5bf551aba1da8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerBoundary` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterDeltaConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourcePolynomial_leading_error](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/sourcepolynomial-leading-error.md) | 24 | `result-track:17a1f057712d263b142561d31d5730e2613deb27ee26efdc7935266849093e3c` |
| 2 | `theorem` | [sourceTailGap_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/sourcetailgap-pos.md) | 46 | `result-track:9e9168ecc873631c1ca671303d00691f287fa9798c09b3f6f1287ca21fb52bed` |
| 3 | `theorem` | [sourceEndpoint_tail_lower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/sourceendpoint-tail-lower.md) | 51 | `result-track:644546400db264667385f4504a909b87480769601d7ec71e7545ea5961889dbd` |
| 4 | `theorem` | [reducedW_closedFormula](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/reducedw-closedformula.md) | 99 | `result-track:aeec2914c7cafaa7508a1d6a120f8bd39d440b75fe8f797b39c5fa888c895892` |
| 5 | `theorem` | [norm_add_half_ge](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/norm-add-half-ge.md) | 119 | `result-track:db0f4bb411729b1bef7379ce5fc656fc0d767fcc87a734447b82d25c7ad5eb9f` |
| 6 | `theorem` | [reducedW_tail_lower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/reducedw-tail-lower.md) | 129 | `result-track:8ef14f15964ccc33ca6baa4b4273c2e6bab4e8372624674d67d5679cb26974e6` |
| 7 | `theorem` | [reducedW_inverse_tail_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/reducedw-inverse-tail-bound.md) | 167 | `result-track:a1c8dd556312561733e499b0b66b0ae149f23bc9f74878ee6b70eabc10be9ac9` |
| 8 | `theorem` | [reducedW_inverse_uniform_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/reducedw-inverse-uniform-bound.md) | 184 | `result-track:2fa0f360ed6ed2c4c028546db757aa003c543b5faf12d04bd616f1dd8ed0b569` |
| 9 | `def` | [quotientIntegral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/quotientintegral.md) | 231 | `declaration-track:d56824745791d0fbf2e0facb7883067755d1e4f20d1a76b5f874413fb2cf4633` |
| 10 | `theorem` | [quotient_integrand_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/quotient-integrand-integrable.md) | 236 | `result-track:4d7e65bfa943f02feaa907c8f2a20eaa8f04d09b583ff0f73fefaa0cf14190ae` |
| 11 | `theorem` | [quotientIntegral_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/quotientintegral-continuous.md) | 242 | `result-track:ad32fdf40e136bd2d11c9f5646228b21002ed071833aa0a4b50f3cb598a29201` |
| 12 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/correctedquotient-eq-integral-of-ne.md) | 284 | `result-track:c5d394cbb066931682e41f4dbe4a2fa4f765b09cafa5f5e4761f31f065fd7c0f` |
| 13 | `theorem` | [correctedQuotient_eq_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/correctedquotient-eq-integral.md) | 291 | `result-track:b37e5d20db40f46704afc6c6466fc6c17b0299dd3ad0ef73d7b3f728a5842a20` |
| 14 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/mobiusreciprocalsum-abs-le-harmonic.md) | 310 | `result-track:d632fc5fada3bff96767b5679bd90d68fdcc918d038c54619be7b1848da9dfb6` |
| 15 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/mobiusreciprocalsum-floor-abs-le.md) | 323 | `result-track:8cba4df374ba37c1674b8f843d3544d64129834ea200617a31b6eb55801009b0` |
| 16 | `theorem` | [quotient_integrand_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/quotient-integrand-norm-le.md) | 329 | `result-track:2578088ecd07744718afe837772668df1382d563154a6a5a10fe4b84fcdce31f` |
| 17 | `theorem` | [inverse_sqrt_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/inverse-sqrt-integrable.md) | 363 | `result-track:b9aae0eccaedf5c4993ea4535451b4288dab8fdaf2a11254ed0294ee9b507562` |
| 18 | `theorem` | [integral_inverse_sqrt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/integral-inverse-sqrt.md) | 370 | `result-track:038d242de094da34868370c654db7e67bd175dfc8e4e223bceee3fa0b65edf05` |
| 19 | `theorem` | [correctedQuotient_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/correctedquotient-norm-le.md) | 389 | `result-track:1fcdf0934327b41970a280f93048f1e4a0eb3d46c6c6d05e25b5b3d79e8fd609` |
| 20 | `theorem` | [one_add_norm_le_twice](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/one-add-norm-le-twice.md) | 425 | `result-track:baa3c45cff23d55a06009bb92ba6f70ca8de7973b8648f76f872877b28f09b55` |
| 21 | `theorem` | [candidate_parameter_decay](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/candidate-parameter-decay.md) | 437 | `result-track:3fc4a3ad00800a50058f94ff9fc6ea00c49c58aeac15e2e63431b2b19bf2649f` |
| 22 | `theorem` | [candidate_vertical_decay](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/candidate-vertical-decay.md) | 504 | `result-track:5e30f7ce44d894eea0ebaf4ce665acc6b8364af92b82582f19dd2ed866227756` |
| 23 | `theorem` | [scaled_cauchy_integrable_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/scaled-cauchy-integrable-integral.md) | 517 | `result-track:bb0b6895137231877ef48324861a51c5feb58ba8657e94c3cc79a466ae4aa6a6` |
| 24 | `theorem` | [candidate_square_majorant](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/candidate-square-majorant.md) | 526 | `result-track:1ce56e7b1ba06fb01fafd77b0ebad2b1a4df08ac35533ed50c29b16094c278ac` |
| 25 | `theorem` | [candidate_line_square_integrable_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/candidate-line-square-integrable-bound.md) | 549 | `result-track:e0a4527d771bf49e3536b500fc72ad881c0262ebb02e4c4bbf5c8235feab7e00` |
| 26 | `theorem` | [actualLaplace_boundary_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/actuallaplace-boundary-norm-le.md) | 602 | `result-track:f524accf4b8e657198e68e397b18569acc1d4f71997c0ba7355150df64cb9eb1` |
| 27 | `def` | [arithmeticErrorSq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/arithmeticerrorsq.md) | 610 | `declaration-track:92f1b631a731c0935320589b614fa04f6e099b7d527756b99ad7cde72ffb5a8d` |
| 28 | `theorem` | [arithmetic_error_sq_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ArithmeticErrorIntegrabilityAudit.lean/declarations/arithmetic-error-sq-integrable.md) | 616 | `result-track:04ef6092488c8b27f02075be67fe0905e180c920f989344723ea9523e26b5699` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c9aed9c4185d4f7d31efedbef727965ff8e236bc3be23d007bdb81f1b069fce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ArithmeticErrorIntegrabilityAudit/Variant7da776a8ffc0806eb9bb83998b0f3ff6668645063ce477af75e73e95167a8255.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
