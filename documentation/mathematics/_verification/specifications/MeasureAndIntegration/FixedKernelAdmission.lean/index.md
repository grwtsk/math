# Verification target: Fixed Kernel Admission

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cebfdfafaacf10019a2a5e8d417d8e03da48aac3",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cebfdfafaacf10019a2a5e8d417d8e03da48aac3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingError` — import line 5; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSample](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample.md) | 20 | `declaration-track:5f98d82ed6850d814a6abab02b36229482f4483005b2cd4c0bfa1a232de7bec3` |
| 2 | `def` | [sampleDerivativeProfile](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/samplederivativeprofile.md) | 23 | `declaration-track:3a843bcd2b8f93fb0a72c8ec09178a01cc6035e8d44fb83d18d47bf71617f090` |
| 3 | `theorem` | [v_diff](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/v-diff.md) | 25 | `result-track:d68bc71843b6034da45bf77094fa2c9f77399992db509588712d98190e725f13` |
| 4 | `theorem` | [v_cont](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/v-cont.md) | 28 | `result-track:a6833ef24d4e99e146e18c13c21efbf3cbcf5eed05cb1ae034536f05d1c229f1` |
| 5 | `theorem` | [profile_cont](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/profile-cont.md) | 30 | `result-track:751d5f8ff7ca953d6ad088f2fd672acb59b357e6254e53deec517efade0e9b2f` |
| 6 | `theorem` | [profile_compact](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/profile-compact.md) | 34 | `result-track:cfdd1dbbe16850d05e3bd3f99220b02dc8eb6ba1949eb7bfcaa0df48e7972d6a` |
| 7 | `theorem` | [logSample_hasDerivAt](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-hasderivat.md) | 42 | `result-track:43642ff90ca5d8239bada004ce54ca58eaa2d7a36fea65c7ae08f57af3200a60` |
| 8 | `theorem` | [logSample_eq](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-eq.md) | 52 | `result-track:0866ef24f2efca3d02eac1c49fe848a3cc630b0781167bd239bef8c01b127cbe` |
| 9 | `theorem` | [logSample_exp](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-exp.md) | 57 | `result-track:9963619f985189611c587523701dab7a9a5229ea8ae05e7e764447c4bb3ae937` |
| 10 | `theorem` | [translated_compact](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/translated-compact.md) | 64 | `result-track:4e67900a26f2a69818e562a8fffdaa53b5fb8b4901d556c2529840f23dd32c20` |
| 11 | `theorem` | [logSample_integrableOn](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-integrableon.md) | 71 | `result-track:39d273a1ea5aefd78f0872d098bbfc3f2789985738b95cb27543ac1f9e8b13f3` |
| 12 | `theorem` | [logSample_deriv_exp](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-deriv-exp.md) | 82 | `result-track:b61546ae8233547840fd1ac59d4d4042dc62afb33eebc250293295b68d224da4` |
| 13 | `def` | [derivativeBudget](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/derivativebudget.md) | 90 | `declaration-track:16c529b03ccbb611310e9b99128a9ee4e247266647ca7df9de00792742b78845` |
| 14 | `theorem` | [derivativeBudget_integrable](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/derivativebudget-integrable.md) | 93 | `result-track:43d6fce5b013419569a03e25bf983963e7e54c5c79193fd698f0f3b4b8bfa743` |
| 15 | `theorem` | [derivativeBudget_nonneg](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/derivativebudget-nonneg.md) | 99 | `result-track:c1dd026344e8993ce27a2b6858300d678d6581205c4cdda3777b0ead381bdbd0` |
| 16 | `theorem` | [derivative_translate](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/derivative-translate.md) | 102 | `result-track:4022732ada2ac52eef2b0b3c27af38b6a7b8c0a8f53ff07215969dbb7ca50b44` |
| 17 | `theorem` | [logSample_deriv_integrableOn](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-deriv-integrableon.md) | 111 | `result-track:eeb179c0558cee12fbf5393285c4560d91f9e07b83bfe4c96973acb0b23ca8be` |
| 18 | `theorem` | [logSample_variation_le](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-variation-le.md) | 129 | `result-track:700f931e3bbe941856288c0ab922edf1888290ffb58d54d6a4ddbc9eb9152395` |
| 19 | `theorem` | [logSample_zero_of_time_le_log](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-zero-of-time-le-log.md) | 148 | `result-track:d8918598177449878fd44e38c0cbacab91710bb951e3d59e8e23909000d6dcc5` |
| 20 | `theorem` | [logSample_zero_of_exp_le](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-zero-of-exp-le.md) | 155 | `result-track:68fae8e31b75fda15c79e09aa7dc0b0b699b4e67bdb43e6f5b393171cb903aac` |
| 21 | `def` | [fixedKernel](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel.md) | 161 | `declaration-track:fe25d6a9aef166b67084f929bc96f42d1736f7aacce5a3fa959897d56651e2e6` |
| 22 | `theorem` | [fixedKernel_eq_sum](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-eq-sum.md) | 164 | `result-track:d1d1362a67466df417c04267528813d4c2b503b5bb5566dcb97f4239bf08fde6` |
| 23 | `theorem` | [fixedKernel_summable](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-summable.md) | 174 | `result-track:dd927d983a3f23ecb2cc1fdc5334b04083fc242b90918bba431c8b70d886f44a` |
| 24 | `theorem` | [fixedKernel_eq_literal](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-eq-literal.md) | 186 | `result-track:4b1a6a19505b7535ff7ce6796838e667a269131300e60c3229ead13e58460c5d` |
| 25 | `theorem` | [fixedKernel_measurable](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-measurable.md) | 195 | `result-track:cf3e1764244866662b57f0d2e348adeca8a5d3f3c5ed1d16c1df2db3e4a0cd62` |
| 26 | `theorem` | [fixedKernel_zero_of_nonpos](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-zero-of-nonpos.md) | 202 | `result-track:6294b666dd65d4f1467a1588aa002f54643d37d3f1ee69d3939a9ee4fb5cf2ed` |
| 27 | `theorem` | [fixedKernel_integrableOn_Icc](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-integrableon-icc.md) | 210 | `result-track:47275cbefae7b71c913bd7bedeb4f45f99841d0e2eabc2cd84acc817703c935c` |
| 28 | `theorem` | [weighted_translate](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/weighted-translate.md) | 237 | `result-track:ce8d2f1c99adf8a1e9c519d86929761f9de8e07b15c25e4ed13b5d34a11165ed` |
| 29 | `theorem` | [weighted_translated_integrable](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/weighted-translated-integrable.md) | 246 | `result-track:8a72573a0d08d0972b4fabb11595ddcea93c5bbeac2f84d2183066a7518af6f7` |
| 30 | `theorem` | [weighted_translated_integral_zero](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/weighted-translated-integral-zero.md) | 253 | `result-track:c176fa8309e296906b771d3f1d6f4d0a8ccdd945f7feb702905989d529874cec` |
| 31 | `theorem` | [logSample_integral_zero](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-integral-zero.md) | 261 | `result-track:61a75344208a2b22fbea8ba86bf121881590c7b8eef9889dc183d01afad30cc0` |
| 32 | `theorem` | [logSample_integrableOn_and_integral_zero](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/logsample-integrableon-and-integral-zero.md) | 275 | `result-track:3235d4429030bc3bd700c1ce5d47c0e8be05f07be5e78b09c1aa132176bcc470` |
| 33 | `theorem` | [sample_prefix_eq](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/sample-prefix-eq.md) | 295 | `result-track:236af9de6a417db48312ae5aa5a9ab3c40bf580906d818450d167f9f59449d3c` |
| 34 | `theorem` | [fixedKernel_abs_le](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-abs-le.md) | 305 | `result-track:e79102c3b26708e9e8f1f27bc879421842d302e85affd0c7eae1bd9b5d977be6` |
| 35 | `theorem` | [tail_majorant_integrable](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/tail-majorant-integrable.md) | 320 | `result-track:2acfd6b1f887f702ec0b2411fd6d44ce07d27e7f64e1d05c480f901480cde949` |
| 36 | `theorem` | [fixedKernel_integrableOn_tail](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-integrableon-tail.md) | 332 | `result-track:f7b6bb064bbe4c840e16d885b88a2616b16a5ef52e377d43862b9b84c001c62c` |
| 37 | `theorem` | [fixedKernel_integrableOn_Ioi](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-integrableon-ioi.md) | 339 | `result-track:818fcb16f4290f903ac0693425e61e0afba8a8f4f854d4a1f3cebf0965a5e816` |
| 38 | `theorem` | [fixedKernel_integrable](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-integrable.md) | 347 | `result-track:73f9a25d3f9a2396785f3d41b58a477fcbb07b25ec9216287a700a6e46fe0b8d` |
| 39 | `theorem` | [fixedKernel_square_integrableOn_Icc](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-square-integrableon-icc.md) | 356 | `result-track:721281c7bce8dd0034ab34e81d10a7b1d7dab3b0993f000e90bf127b87818c32` |
| 40 | `theorem` | [fixedKernel_square_integrableOn_tail](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-square-integrableon-tail.md) | 372 | `result-track:a89fb9acf68f82e21daced0227e5f66e711becc83ef4ca7b6e510757904d766d` |
| 41 | `theorem` | [fixedKernel_square_integrable](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-square-integrable.md) | 397 | `result-track:bf226dcf056e0752f7146267ec20ea2d1a43d455951ed2b48cd244515395dad4` |
| 42 | `theorem` | [fixedKernel_memLp_two](../../../../MeasureAndIntegration/FixedKernelAdmission.lean/declarations/fixedkernel-memlp-two.md) | 415 | `result-track:ead57809094bd91990a3c18000649c5a3427d35f0f4ea213e0c8afb3923daaf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eea6adc30281f804213cd5a8787b8977abe9d45b83162f9afa13f87e79206d86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantf84bc0ff2e44c9ae69a36a8559b4dc1fde0f046d3b71df47371e515238a39f16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
