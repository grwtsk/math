# Verification target: Sampling The Derivatives Of The Literal Logarithmic Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "849a8a25f7474780165270bb88439ed309133a0d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `849a8a25f7474780165270bb88439ed309133a0d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.BranchCorrelationHigher` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.BranchSignedPrimitiveReturn` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [twoMomentProfile_deriv](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/twomomentprofile-deriv.md) | 32 | `result-track:8708d04c2ca9c8c2087969c4c2a03bcc8d40d572f723fa92a3a675a32c119a9b` |
| 2 | `theorem` | [derivativeProfile_contDiff_three](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-contdiff-three.md) | 78 | `result-track:87be57c2cdf31c86a2bafdff97cfa2d5a38cbcf9dbeaa0ab92c5f174a9e61983` |
| 3 | `theorem` | [derivativeProfile_deriv](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-deriv.md) | 85 | `result-track:c239436723050719befeb6efd98d145352d65adc0d6f3b02bf331add9c96efd0` |
| 4 | `theorem` | [derivativeProfile_second_deriv](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-second-deriv.md) | 93 | `result-track:cb907607021c94dc87b3fe8433ec7b8e9fb0ce554bc605b85616b0a66cf92f1b` |
| 5 | `theorem` | [derivativeProfile_deriv_twoMomentProfile](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-deriv-twomomentprofile.md) | 110 | `result-track:54024e457b7a924f1a701983bdbd55fadc1bc75cc00cfbcf346afec6e0baed42` |
| 6 | `theorem` | [derivativeProfile_deriv_upper_zero](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-deriv-upper-zero.md) | 116 | `result-track:4c69a374a136d201af418fe0d3caae75e3e5ab116e16cb2b6d63664803b795c5` |
| 7 | `theorem` | [derivativeProfile_deriv_supBounds](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-deriv-supbounds.md) | 129 | `result-track:6f8a41807e838ed254f5be432f4024a0c35f7c013d212831111cb5d90510b990` |
| 8 | `def` | [nativeSample](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/nativesample.md) | 159 | `declaration-track:35eb0b8d3534d735448ee3edc0722f375ba57dbd090e9cdb9e6de6f605e9be72` |
| 9 | `theorem` | [nativeSample_abs_le](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/nativesample-abs-le.md) | 164 | `result-track:1b903e083fb688a3760a5752fd1066dfddac8ce82a0b7ec34b589cf4ae64a2e0` |
| 10 | `theorem` | [nativeKernel_deriv_abs_le](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/nativekernel-deriv-abs-le.md) | 201 | `result-track:b530db064a9c7d4817ec6ab8b6665e44de9501ce5bda8556666822a4c33701f8` |
| 11 | `theorem` | [actual_variationPrice_le](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/actual-variationprice-le.md) | 220 | `result-track:346f9c4f04465a15a3bcba3a8d0d6db2dad94048433ec0cd390432591ebd8e6d` |
| 12 | `theorem` | [actual_variationPrice_le_1536](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/actual-variationprice-le-1536.md) | 227 | `result-track:b5b7776548cdb0fd94e4cd72a685ddbe37d04e4b418582a102822bce78ce4ea0` |
| 13 | `theorem` | [actual_original_source_abs_polynomial](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/actual-original-source-abs-polynomial.md) | 231 | `result-track:de1db172afe6e47dd4ee1e4d7f332788dc838770c2b1e90dc25315bfb6a7ad56` |
| 14 | `theorem` | [actual_original_source_eventually_polynomial](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/actual-original-source-eventually-polynomial.md) | 241 | `result-track:224bdf490fbb826fd80ba4777dd46bfa9b6eaaf50dce1712d01a7bc4ded083ef` |
| 15 | `theorem` | [nativeKernel_contDiff_three](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/nativekernel-contdiff-three.md) | 252 | `result-track:42502c61120243a4c25c88952a7fe9b37900c0b1c68f83256419ce00f07d848c` |
| 16 | `theorem` | [nativeSample_deriv](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/nativesample-deriv.md) | 261 | `result-track:bfeb5d43c7320657829d2af739722bdeb82681cb6718c74045b17a1d003008f0` |
| 17 | `theorem` | [nativeKernel_second_deriv_eq_sample](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/nativekernel-second-deriv-eq-sample.md) | 277 | `result-track:b83a05e639b53bee2be8fa5d5670c97548ffa1f96021a5ac16e0e63b2ea69393` |
| 18 | `theorem` | [derivativeProfile_second_deriv_upper_zero](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-second-deriv-upper-zero.md) | 292 | `result-track:faaf165d3e42b2c709cb3a755f646a5c6ed8278f6c0f28ace41273c8637b9578` |
| 19 | `theorem` | [nativeKernel_deriv_upper_zero](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/nativekernel-deriv-upper-zero.md) | 302 | `result-track:29b2b63f42286eba3b19150b2ac0b266a6f55bfac225c2939cb7ca6fc9ed7286` |
| 20 | `theorem` | [derivativeProfile_third_deriv](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-third-deriv.md) | 313 | `result-track:1d7c231ba100560d2c377e2323e846cf35cacabc8f2bda3568c691456fea61d6` |
| 21 | `theorem` | [derivativeProfile_second_deriv_supBounds](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/derivativeprofile-second-deriv-supbounds.md) | 332 | `result-track:6dc8e03b93944d9dbc68908d19b11b95cf4d5f60b1359bbaf6419714e754c34d` |
| 22 | `def` | [curvatureAllowance](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/curvatureallowance.md) | 348 | `declaration-track:7367fbf8168a8af2dc03752aa36a1f42f283cc12fcc9b0cbb7cd580c22bc884c` |
| 23 | `theorem` | [nativeKernel_second_deriv_abs_le](../../../../MeasureAndIntegration/SamplingTheDerivativesOfTheLiteralLogarithmicKernel.lean/declarations/nativekernel-second-deriv-abs-le.md) | 351 | `result-track:715865fdfe883e546a2553561ee06282f51a41380944e9ca1fc706bc75eb7027` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b2a98699045804627e3603fca30b149f3ab79dc53f3e36a8bf7848e1488c07f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
