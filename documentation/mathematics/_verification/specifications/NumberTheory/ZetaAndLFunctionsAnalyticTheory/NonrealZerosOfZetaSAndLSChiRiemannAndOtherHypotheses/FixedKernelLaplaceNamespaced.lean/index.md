# Verification target: Fixed Kernel Laplace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c4153624bb0ce8aab90ec65ae902dcf14a2b072",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c4153624bb0ce8aab90ec65ae902dcf14a2b072`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Complex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedSource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/weightedsource.md) | 21 | `declaration-track:a4dbbe0900c58c15fea9d1377ad025c33f88c8e4be2fe5d4352ec050b2c913cc` |
| 2 | `def` | [laplaceSample](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/laplacesample.md) | 25 | `declaration-track:293dd0647fb79e6630c8b01076cd4b11e7f75a7411ee21c89c752905453127de` |
| 3 | `def` | [sampleCoefficient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/samplecoefficient.md) | 29 | `declaration-track:472ba8eb0e9d4cd0f30b12bbe3c6ca43b4d744f45447f9390ca296a7bee44bd5` |
| 4 | `def` | [sourceNormIntegral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/sourcenormintegral.md) | 34 | `declaration-track:09846ce55d5763002e7a3d5065b13e696b8fecc4c2d63c2986d9b4a5b6601ce3` |
| 5 | `theorem` | [V_even](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/v-even.md) | 37 | `result-track:a0c82529c8181c4084f5cdb7340763867429a6cf96ad42272f6bed09bfbbbb6d` |
| 6 | `theorem` | [weightedSource_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/weightedsource-integrable.md) | 47 | `result-track:bf3dcc7abf87f7382119c0d0dcd0d78f6026e6d445b95caa67db800fe1b43226` |
| 7 | `theorem` | [laplaceSample_eq_translate](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/laplacesample-eq-translate.md) | 51 | `result-track:b18be6942b3193bf9e0995a62cab414712ff494b3efab6f7cb3c168ba25bf826` |
| 8 | `theorem` | [laplaceSample_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/laplacesample-integrable.md) | 66 | `result-track:0c9db6cb3586475cc87ebfa6356ac2cca66026518ebc483f7efea35f41a3f755` |
| 9 | `theorem` | [laplaceSample_zero_of_nonpos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/laplacesample-zero-of-nonpos.md) | 74 | `result-track:142f456a6c374bde249e8410158d9007bb9bcf836d059dbfc6c6a5eaa9b66283` |
| 10 | `theorem` | [laplaceSample_integral_Ioi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/laplacesample-integral-ioi.md) | 80 | `result-track:93d04d66a0932928216085699c0af038510fb8f4fc6c4c0f048534ee6cda67a7` |
| 11 | `theorem` | [sourceNormIntegral_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/sourcenormintegral-nonneg.md) | 90 | `result-track:a4430739534ce8902da4ebd36d31cd7ebb1803d130b2e5692009c40fe095e127` |
| 12 | `theorem` | [laplaceSample_norm_integral_Ioi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/laplacesample-norm-integral-ioi.md) | 94 | `result-track:ab064fd000ca8afa81e2add639c88402264385ed63a7c988f2e76f039ff7ff43` |
| 13 | `theorem` | [sampleCoefficient_norm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/samplecoefficient-norm.md) | 105 | `result-track:fa31e5246f2fb20928c4708c31b4fbef5e2665918f5cc13fffa625422b6bced5` |
| 14 | `theorem` | [laplaceSample_norm_integrals_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/laplacesample-norm-integrals-summable.md) | 119 | `result-track:bbacbfd94b592a990415cdf58b0e103673ad54242d2e51301540ffddbe12a43e` |
| 15 | `theorem` | [sampleCoefficient_eq_cpow](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/samplecoefficient-eq-cpow.md) | 130 | `result-track:d864e6532eb7311665600efa771868829a5e87dc1654c552a1c252bac562d06b` |
| 16 | `theorem` | [laplaceSample_tsum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/laplacesample-tsum.md) | 145 | `result-track:2fb86be85683516294fa981d15831c9dffe0c63506c3df022def346202a82178` |
| 17 | `theorem` | [fixedKernel_laplace_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/fixedkernel-laplace-integrable.md) | 151 | `result-track:8a947742c255b5eb17fa5c07cbb0eb64cacef91486e5214ad32eae332304ea71` |
| 18 | `theorem` | [fixedKernel_laplace_eq_transferProduct](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/fixedkernel-laplace-eq-transferproduct.md) | 167 | `result-track:6752aed9e27d4058c5374307f35d59bbe3111f4755f41743d07a976a5cc7ee44` |
| 19 | `theorem` | [fixedKernel_laplace_eq_repairedTransfer](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedKernelLaplaceNamespaced.lean/declarations/fixedkernel-laplace-eq-repairedtransfer.md) | 187 | `result-track:5af8f746e618fb0a4d25d03cb960c3fae700b44eb32d0f665d6525b7c6d26b2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7d3287b545b4e7aec97b8722bffb9bd9757aec79e95abd69fc45d1e29451744 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant54ad383166917337d322ad4a4c8cb9fee3e8aa187206e984b7eac998e23bac37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
