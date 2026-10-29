# Verification target: Fixed Kernel Laplace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53b28ae889f4a1c0910301464977328decc03df7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53b28ae889f4a1c0910301464977328decc03df7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/weightedsource.md) | 13 | `declaration-track:57ec70006998ec9209e31b59431bc5106b38b8c1d97f5b897f7c5f0009d7892b` |
| 2 | `def` | [laplaceSample](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/laplacesample.md) | 17 | `declaration-track:235540174586029e50b62a7519a2aee3a5e3f27b056882838181e51db9f20e32` |
| 3 | `def` | [sampleCoefficient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/samplecoefficient.md) | 21 | `declaration-track:5b279da5d5695f96cfd6f47a76719f8cb847091593524ac0210f2512e188ff83` |
| 4 | `def` | [sourceNormIntegral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/sourcenormintegral.md) | 26 | `declaration-track:d163209af82ef3f9f38901f7cdf6a0b76ad088191ac6ef1f32bd236b4cb1af55` |
| 5 | `theorem` | [V_even](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/v-even.md) | 29 | `result-track:e96bd6851f74d5224575a1c413999b964237b3a8710da344b16a1a750f88db4e` |
| 6 | `theorem` | [weightedSource_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/weightedsource-integrable.md) | 39 | `result-track:f567775770c824fd497760e6d317cd86e7e61c31e5449459f581801b4dbb8f53` |
| 7 | `theorem` | [laplaceSample_eq_translate](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/laplacesample-eq-translate.md) | 43 | `result-track:4d9bd09fb9eaaa7c13677c01a8c1f75a73d7f72ef53a1558ed299b3e10071eed` |
| 8 | `theorem` | [laplaceSample_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/laplacesample-integrable.md) | 58 | `result-track:4238c1749fe0c74b86c872c0f51d2ee4b33191d89967acc6c52c2dce2b793942` |
| 9 | `theorem` | [laplaceSample_zero_of_nonpos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/laplacesample-zero-of-nonpos.md) | 66 | `result-track:cb15af7e1ce10ac529726ce3b854f1a5f40425a925a510a1a0b4b7b459d76be4` |
| 10 | `theorem` | [laplaceSample_integral_Ioi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/laplacesample-integral-ioi.md) | 72 | `result-track:5f5a92a774c5b983299f723b7640a0520ba03fdf043d79fa96a3f4962a1b2509` |
| 11 | `theorem` | [sourceNormIntegral_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/sourcenormintegral-nonneg.md) | 82 | `result-track:ae402a05224b3f1217fc3c9c4e6cb95c9f34137bd29889efcb71a9a164a0a58d` |
| 12 | `theorem` | [laplaceSample_norm_integral_Ioi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/laplacesample-norm-integral-ioi.md) | 86 | `result-track:8b8d40ddc45978b7e727d4a29850ac7fb3cbd58880b5cbc0c8163a57f8e8dab8` |
| 13 | `theorem` | [sampleCoefficient_norm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/samplecoefficient-norm.md) | 97 | `result-track:3846502928096fdd6b3f0e290253a78b27ccdafc127b781cdcacb99c7071d754` |
| 14 | `theorem` | [laplaceSample_norm_integrals_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/laplacesample-norm-integrals-summable.md) | 111 | `result-track:9a81135ed69180bf81179d5d839465ee6e597686b3555c989cfdb2445d2168c5` |
| 15 | `theorem` | [sampleCoefficient_eq_cpow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/samplecoefficient-eq-cpow.md) | 122 | `result-track:a03b691cc4341dd5d7ff70c541ab16ad1a65338f802d979d5abd42e20e1c3147` |
| 16 | `theorem` | [laplaceSample_tsum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/laplacesample-tsum.md) | 137 | `result-track:cd0b469d602289d7af1ab5e90e6ac090afaf1243a7999f247153b7337da62988` |
| 17 | `theorem` | [fixedKernel_laplace_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/fixedkernel-laplace-integrable.md) | 143 | `result-track:50793af738581b01acda457f7150759363537a7303e8290c2372e691958a2973` |
| 18 | `theorem` | [fixedKernel_laplace_eq_transferProduct](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/fixedkernel-laplace-eq-transferproduct.md) | 159 | `result-track:32dd2b8f9c0476cb5cefec8a792f165643239a450b331458205827d2295cf863` |
| 19 | `theorem` | [fixedKernel_laplace_eq_repairedTransfer](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplace.lean/declarations/fixedkernel-laplace-eq-repairedtransfer.md) | 179 | `result-track:92244545f3ac5a06012caed439078125e0be153d7dcebdd9abfe56396d66997f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6a7b9f3d5831537f93d97e1ea948e4066a9a9f82864fe50201ad33bab8a963b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
