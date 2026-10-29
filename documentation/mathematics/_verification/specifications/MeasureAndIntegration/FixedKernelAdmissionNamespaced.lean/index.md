# Verification target: Fixed Kernel Admission Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03c441f005af8f9818e8bcb2d0783d4a5f5691bb",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantb67bf14c58579c01714e017f8c24998a7eb8c6b061c053408aabf4f376fc7e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03c441f005af8f9818e8bcb2d0783d4a5f5691bb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantb67bf14c58579c01714e017f8c24998a7eb8c6b061c053408aabf4f376fc7e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantb67bf14c58579c01714e017f8c24998a7eb8c6b061c053408aabf4f376fc7e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingError` — import line 10; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSample](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample.md) | 28 | `declaration-track:0bfebe1bfc1031ab9e32e58475d9df8963d9bb1770851c9a92ae5d6fbdf0c847` |
| 2 | `def` | [sampleDerivativeProfile](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/samplederivativeprofile.md) | 31 | `declaration-track:c8447888924a3d4c0b17846cc957cbdc1f79600ee248d2d3879bcbebe25d667b` |
| 3 | `theorem` | [v_diff](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/v-diff.md) | 33 | `result-track:71f7972deafc4bcd66316dd54c2179356a457edd49826a576fd2aedf07292125` |
| 4 | `theorem` | [v_cont](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/v-cont.md) | 36 | `result-track:824a41c4f8aef9a24ef356ed4bfbd358756ec4a85dc3a56f81de548ee8eb90e8` |
| 5 | `theorem` | [profile_cont](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/profile-cont.md) | 38 | `result-track:2cbada90b81c8a12b631ba7be2f4fcb750cc4fd7a19e8ade2b04adf7e5de8ea8` |
| 6 | `theorem` | [profile_compact](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/profile-compact.md) | 42 | `result-track:ecf75d051b61816582e49b2359805c4a5248b9908efc1e3ad68ab05952c57df4` |
| 7 | `theorem` | [logSample_hasDerivAt](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-hasderivat.md) | 50 | `result-track:3cfac23732bce65ffbb4738657d1bc1fdfd849b5aa08288b1d0646cd70d6e9bb` |
| 8 | `theorem` | [logSample_eq](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-eq.md) | 60 | `result-track:67b5065149b4dbacdc9c00a4880792715792190211766f7e10337e8576aa5477` |
| 9 | `theorem` | [logSample_exp](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-exp.md) | 65 | `result-track:d07fdb155f9ff5953d451de893b440fe41f17e219a86e0f9ba56c08354e975ea` |
| 10 | `theorem` | [translated_compact](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/translated-compact.md) | 72 | `result-track:296592aa112d2d2e8ead2ccf10cb08b64371f266d1666017699b12c6402a9679` |
| 11 | `theorem` | [logSample_integrableOn](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-integrableon.md) | 79 | `result-track:2f977803c4e9e40bacac5743d69b4db19f97f44627f44a88621ac54cc6a72c6c` |
| 12 | `theorem` | [logSample_deriv_exp](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-deriv-exp.md) | 90 | `result-track:196b1881ec9df99f20186e072d4dd69639d892c9dffd1c86315627827678531c` |
| 13 | `def` | [derivativeBudget](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/derivativebudget.md) | 98 | `declaration-track:ab7208c5d6c6b4605a603be4158378647998ebfa93e653946926d6892e0f2707` |
| 14 | `theorem` | [derivativeBudget_integrable](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/derivativebudget-integrable.md) | 101 | `result-track:c1d0a29d13c0e1552e0c895fab31199b596e00ff5d6d526d043c7f9a9c04b519` |
| 15 | `theorem` | [derivativeBudget_nonneg](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/derivativebudget-nonneg.md) | 107 | `result-track:918673b5a06752f1519fa7958b8a2cb730e1d9c9c5ad7c0a4fc5d8ba7384f9b9` |
| 16 | `theorem` | [derivative_translate](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/derivative-translate.md) | 110 | `result-track:3ab4bdb7fa028fe4c85c2547ad8af5978513333ae861632f993f61c7ffa85226` |
| 17 | `theorem` | [logSample_deriv_integrableOn](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-deriv-integrableon.md) | 119 | `result-track:1250cb4fc4d8c3fe7f5d13f98a4aabbd7c17e393ae28e596e01c41ca05fe11ad` |
| 18 | `theorem` | [logSample_variation_le](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-variation-le.md) | 137 | `result-track:e1121a828cc9644f27080e93e7fdf4c275e3ecb8e285d5c66fc2f8150d5f7dad` |
| 19 | `theorem` | [logSample_zero_of_time_le_log](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-zero-of-time-le-log.md) | 156 | `result-track:27aa20eb57f47524e66847ebb980db75c0216bdad1ab75920c7f896122f47fe6` |
| 20 | `theorem` | [logSample_zero_of_exp_le](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-zero-of-exp-le.md) | 163 | `result-track:c0ec0b8aa6c0e78fe4abbe09e499a14698b8bcb13e7b1385435a67f26623de0d` |
| 21 | `def` | [fixedKernel](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel.md) | 169 | `declaration-track:d68e65cb6efdb0d934e0994215e7e1054b12b3deb693aa78adf0cc103829eccf` |
| 22 | `theorem` | [fixedKernel_eq_sum](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-eq-sum.md) | 172 | `result-track:166ca5c196bd4a38bf61f92e6986ed070c55fb159a358f427a2fb0da654e75d9` |
| 23 | `theorem` | [fixedKernel_summable](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-summable.md) | 182 | `result-track:937873b9604cf0b2410a9931f3c34b5b281621ac58fb1286e99e6d9489a8361a` |
| 24 | `theorem` | [fixedKernel_eq_literal](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-eq-literal.md) | 194 | `result-track:eaa10b6019fcd18a40dc656d510dd142e4c2ec20d50c8f9339bd783f1fc54913` |
| 25 | `theorem` | [fixedKernel_measurable](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-measurable.md) | 203 | `result-track:8112e1e204b4b309aed0d7f117767f878c6b2f2ddef5c8d46684025a3d3b11e0` |
| 26 | `theorem` | [fixedKernel_zero_of_nonpos](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-zero-of-nonpos.md) | 210 | `result-track:6df8420b9acd633be2a8b27f6df0d19772100f492e250837990ba434115a089b` |
| 27 | `theorem` | [fixedKernel_integrableOn_Icc](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-integrableon-icc.md) | 218 | `result-track:db4eb67f9c97d2d202080bda4b706696a8200b32ebf899e760053b38c44268c9` |
| 28 | `theorem` | [weighted_translate](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/weighted-translate.md) | 245 | `result-track:b1385f75521383fe62847abc174bc6ba5cebe6ecc3e8f65f00bdf48d3ed71d58` |
| 29 | `theorem` | [weighted_translated_integrable](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/weighted-translated-integrable.md) | 254 | `result-track:306b280205eb66d61ecded08c106226e28a6f8af49cfb9746064c83a2792e31b` |
| 30 | `theorem` | [weighted_translated_integral_zero](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/weighted-translated-integral-zero.md) | 261 | `result-track:2cd9b0acbd54aef45638b9ed598dd0f0914d2923fd129219e197977cc9f9c42b` |
| 31 | `theorem` | [logSample_integral_zero](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-integral-zero.md) | 269 | `result-track:3468f7c3110bd82f36754812390de13abb1e80a52c09d92634fc6e1ba5cb177e` |
| 32 | `theorem` | [logSample_integrableOn_and_integral_zero](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/logsample-integrableon-and-integral-zero.md) | 283 | `result-track:9dfd6b3517e273997cb8fd816bed215d905ef415a1edaff8c53262c251f6cfeb` |
| 33 | `theorem` | [sample_prefix_eq](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/sample-prefix-eq.md) | 303 | `result-track:3b5bfccfe8f23845bc681c952912ff133a860ae7221b80f3447121938842be04` |
| 34 | `theorem` | [fixedKernel_abs_le](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-abs-le.md) | 313 | `result-track:aaee77e2d52e520b3df899712938778fad0cd6fbe077b365af94f36ddf635bdc` |
| 35 | `theorem` | [tail_majorant_integrable](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/tail-majorant-integrable.md) | 328 | `result-track:04e380c8e30107deb938a55f0da7f3fa8571a52b925747a110ff0a3d8c47429b` |
| 36 | `theorem` | [fixedKernel_integrableOn_tail](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-integrableon-tail.md) | 340 | `result-track:5b031c124f0ad11ac5e0b9b1be6c099c6316456e12b7f42b2d406d333c1520d8` |
| 37 | `theorem` | [fixedKernel_integrableOn_Ioi](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-integrableon-ioi.md) | 347 | `result-track:fd38afe5281c1e53d3b7b4dba3f31e6e70c53ded0d92d3ecec73ab03c5256b5f` |
| 38 | `theorem` | [fixedKernel_integrable](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-integrable.md) | 355 | `result-track:8d73fde657a0f312d214ed69cf638e0f29c9d42489b98031a83fa751c3835d2e` |
| 39 | `theorem` | [fixedKernel_square_integrableOn_Icc](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-square-integrableon-icc.md) | 364 | `result-track:632d9e21f27b0f893df4b9871d67b96192170d4c1ffa30ecc971887fa77c38bb` |
| 40 | `theorem` | [fixedKernel_square_integrableOn_tail](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-square-integrableon-tail.md) | 380 | `result-track:fe6a8dc12848d73b2e850b2550740c18b41bc675455f6d26571e12f5ae7c50e2` |
| 41 | `theorem` | [fixedKernel_square_integrable](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-square-integrable.md) | 405 | `result-track:5c890cf06bc51012922ba337d8f720f66f19e02b9692c43d9bd6c73903e54581` |
| 42 | `theorem` | [fixedKernel_memLp_two](../../../../MeasureAndIntegration/FixedKernelAdmissionNamespaced.lean/declarations/fixedkernel-memlp-two.md) | 423 | `result-track:d678eee05ee1773e47725712fb5ccbb856476f64c9c0b5d7e42cd067216eec47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1deb1932f1d23a2a7dd63c07ab41dc062f93a642f5436dc719f3998377b8d7ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantb67bf14c58579c01714e017f8c24998a7eb8c6b061c053408aabf4f376fc7e94.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FixedKernelAdmission/Variantb67bf14c58579c01714e017f8c24998a7eb8c6b061c053408aabf4f376fc7e94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
