# Verification target: Time Kernel Truncation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bbb8d702d97db4e519a49318d69028d55ed3afb",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant4b7ecc5339030fbe6aac0462fc9de14ab8ed56fe4bfe7fbd2ce65353943a0f07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bbb8d702d97db4e519a49318d69028d55ed3afb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant4b7ecc5339030fbe6aac0462fc9de14ab8ed56fe4bfe7fbd2ce65353943a0f07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant4b7ecc5339030fbe6aac0462fc9de14ab8ed56fe4bfe7fbd2ce65353943a0f07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullh.md) | 25 | `declaration-track:3281a376c7c8ba08f0c027983482992ab66d75eaeace176f2f85962ec9a7bb2f` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullshift.md) | 27 | `declaration-track:6acfec998fb3a1c2b2ef061ca9ee3f056d2206e771f067a636811155d3cdc8fb` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullshift-ae.md) | 30 | `result-track:27ec2703deec32ee14709d7c9755159eeb2bdc161aaacb1bba0f72a8b25477e3` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullshift-continuous.md) | 34 | `result-track:b0783c7e3376919ff2f0eb56747c5546e2ab96ef30ee6e6882412ad89564a266` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/weighted-shift-integrable.md) | 42 | `result-track:324f104a6a2eb85937b7b1fc2f8c262eda0892a95393eb4eda1c114a42c16898` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/vector.md) | 51 | `declaration-track:b1c3f1709756fb42ad20062539c02ef8c68e9e57fb4824677b8ed0b201210888` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/vector-norm-le.md) | 53 | `result-track:1f5cbb3e483ab049ca87194b953e0652029d71c139500d3925e40b413457ebb3` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/vector-add.md) | 60 | `result-track:827bbd8ecda54dd4257d0f5f22c011241de4d60d8814859cfa534229cd6e4063` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/vector-smul.md) | 65 | `result-track:0b8263c0cfd2b3dd21a4896bb92f5882403459063d960b3bfe7bec201b0dea7f` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/linearmap.md) | 69 | `declaration-track:e2e8917d99b78d527d56f201cc23f66ae6cf9a46d6dcdeea8e155fed58bf0dab` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullconvolution.md) | 74 | `declaration-track:ba40fd626d9cf91963f12f3400dba438f3cdc7253fc4b3d5d8da7b9dafc96fa2` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullconvolution-apply.md) | 77 | `result-track:9d94114d7ad4b2730e6f03604153f75bca54086e46f99fffecbceaaf61d703bd` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullconvolution-norm-le.md) | 80 | `result-track:fa4805ffb30ee76755b46f6dd6972d14874c4e0c1ca483b4b3b9cf53909532f7` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullconvolution-sub-kernel.md) | 84 | `result-track:1b13649c3a487202af9f74449736d7257795f16308ca65ce6009c362e446b1c2` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullconvolution-norm-sub-le.md) | 92 | `result-track:0efc7733cd10d072f8b08822f551cbe53a55ae3694aa4ad2f991b7df51c38c6a` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/actualfull.md) | 97 | `declaration-track:9729818357d3c80199313fb85915b96703e1a5a95049935d929ebbea38bd1722` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/actualfull-apply.md) | 99 | `result-track:41014bc160b889d538d5c208485d8c00aabccfc482c9a6ab5382a2032c024b76` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/actualfull-norm-le.md) | 102 | `result-track:a3a76fa96ec5516d9b0be26fbf475ebb9550beee4ddcd4639ef4ddaf4a4a13aa` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/fullh-source-edition-2.md) | 120 | `declaration-track:7cc64a9c9fc716e6521f88d6b41e2fbf47c3b83628468754ae9dcbb11b825170` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextensionfunction.md) | 122 | `declaration-track:f3fb3b3603c4e4927e93bc379302811e6abca610199d24b858f9b92dd2edd2fe` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextensionfunction-memlp.md) | 124 | `result-track:2751c59e339e814d2d42eec27c504e1ca6e6b8914c9c612b3d7bc2570c8890d8` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextensionvector.md) | 128 | `declaration-track:f6b959df40969eafe3ece1bcc7caecd2b6213993e06cbc2e0ded313e85b06edf` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextensionvector-ae.md) | 131 | `result-track:21a08499d2120dec6876035c06cd423e06f2a3e85a6af4b2c752b23206c09c47` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextensionvector-norm.md) | 135 | `result-track:85ffd642bbeb55b8c9747bf7d8c4d55cd4c28abb1b6461dc461f25e8b236eb2a` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextensionvector-add.md) | 140 | `result-track:4d1d8519fdf9223db53576a527ccf03c5e1d63a130ddd72e283ca48f7b2e8bc7` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextensionvector-smul.md) | 152 | `result-track:668d6a82e4b3d0e30b59ec800a03159703daec3143f5baa92757c2556889ea8f` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextension.md) | 165 | `declaration-track:c237dc521489d43a93d7ff91a8a84abdbbf3b2f9d32948631fe8132454438f55` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextension-ae.md) | 171 | `result-track:a922ce301ae52d2053eabb6e849448dd9c9c5342a33f9fd2716664af2c55dabc` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextension-norm.md) | 175 | `result-track:b68faa7d93ec3e38c15629345faf05751b2355dbeb474aec7661f82b9dde6daf` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextension-ae-halfline.md) | 178 | `result-track:9c439dffe22a7305dafadf3aea4be2959ef240fac5156bfaaa40e1a16a7ec05e` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/zeroextension-ae-nonpositive.md) | 184 | `result-track:8cff38c6d19d26debbd847d951fb17e9d5c751502452d8779a4e3a5254074b1f` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/restriction.md) | 193 | `declaration-track:0a01ddc912d503b077b5e06b01dfd38ec373eed4d1428154da4f4cd7ac490be4` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/restriction-ae.md) | 195 | `result-track:25373f97a9786d0d06474d128a72c95ac7ad21d983440fc59dcefc7eb563fa42` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/restriction-norm-le.md) | 198 | `result-track:fc0f0c4c33601b6c25b21adfa4a8361ace90b6a57776b927f15012ef28673ffd` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/restriction-opnorm-le.md) | 201 | `result-track:d6ae52a14e40ec5fbf431db80f4b3e654b234e34761221bab25f656d03f28f32` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/restriction-zeroextension.md) | 206 | `result-track:7c2f1b91b889f7956ec77b846ea3398b6badc1d6569849ef5ca06051c2ec8ce3` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/restriction-comp-zeroextension.md) | 209 | `result-track:af0967d416b48e8a5c5f0286ae059b70c6c4ec10cace3e6c5a54bccad24be9e2` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/halfconvolution.md) | 226 | `declaration-track:f626df9ff3364076c3484945628bbb7700619a29b3195c46f9526053d8cbebc9` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/halfconvolution-apply.md) | 229 | `result-track:9b3a7eafc48a6c348661038bc3473e56af2fd11287655c079ce00459bd686c4e` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/halfconvolution-apply-norm-le.md) | 233 | `result-track:c4073e03fb13427519865feef9af16dc98fd9634e741ea3fa5559eb5efce824f` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/halfconvolution-norm-le.md) | 240 | `result-track:885e4a47b6071551c11a142f990af6ff0db77c3edf9fdf46fdc4953457338a57` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/halfconvolution-sub-kernel.md) | 245 | `result-track:a578c8a49966e688e6464a638306f86eef4e90dd07c64b2c4485882ada9f8c5e` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/halfconvolution-norm-sub-le.md) | 254 | `result-track:7d7a81d1a2320a7c5f8b2802c9c3f17474d5aa4cb38bac9c6f9b4ce6b7586e69` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceoperator.md) | 259 | `declaration-track:168c065285daf1870e52471a69e661d506fafa795e76c2428b903882cbb34b74` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceoperator-apply.md) | 261 | `result-track:763127a9f65cdbbd393ebaa5d5e58e30cfab952cfd9af3bcfc44f89e1608510e` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceoperator-apply-norm-le.md) | 265 | `result-track:5c1e537c85f165a2127c5e175ef5846af92f18b2d35a97e0546575bd7d0601c2` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceoperator-norm-le.md) | 269 | `result-track:0edf88d1cf78af983ade22151d59bc9d3f15bc7c998f0294d4999c8a3234cc7e` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceenergy.md) | 273 | `declaration-track:f59889413b3e8c8b399dfa4f9622932f2793c30ae0615e5e2f2f39eebb6b9697` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceenergy-apply.md) | 275 | `result-track:06e768e8273f310a94676fa0e5ac4b2cc074818de4ecfaf8a1768bcdadc86cb7` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceenergy-ispositive.md) | 278 | `result-track:080023ca1d8d711dffd4fbaa7e3712585d479b5764e3c6de1f415ca74603c903` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceenergy-isselfadjoint.md) | 281 | `result-track:7b57f8cd9902ca3a821b6bfca244745319c813b84074312828d9c9a217f930e7` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceenergy-inner.md) | 284 | `result-track:3fcfdb10f18a814f9b1d0bcbe030526020a16d53e1121bb7123bdbbec5236f8a` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceenergy-re-inner.md) | 289 | `result-track:95220d166836336af1b9fee62e1342edfb4468fd6898cc7955a0bff7197d4689` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceenergy-kernel.md) | 294 | `result-track:f8f608b246bd051bec4aaa2f8eae2eb8447cbe42241f2093be439f0ad6efb06a` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/sourceenergy-norm.md) | 297 | `result-track:c762ad672fc2e52b9d7e7b91f0ef6ea0d8154c806207e4698fc8361461466970` |
| 56 | `def` | [truncatedKernel](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/truncatedkernel.md) | 313 | `declaration-track:81948e5263105eab96e2076d8c0bc64688dd6ae59c356d55ce420d3d77a7425f` |
| 57 | `theorem` | [truncatedKernel_integrable](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/truncatedkernel-integrable.md) | 315 | `result-track:f573704fa2c1b233006609fec433e08d995d983bcdaf61f99e1e9f6d2b94c0ec` |
| 58 | `theorem` | [truncatedKernel_memLp](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/truncatedkernel-memlp.md) | 318 | `result-track:c223c1a34eb17119d16dd86e3497a5235081fc336447387695c6cdbcc78d32ca` |
| 59 | `theorem` | [kernel_sub_truncated](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/kernel-sub-truncated.md) | 321 | `result-track:8a89136c62920d452c6f533e63e96c94389202c8d62f8415ea0ce78ecd3c7428` |
| 60 | `theorem` | [norm_kernel_sub_truncated_integral](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/norm-kernel-sub-truncated-integral.md) | 332 | `result-track:6d037f5b6ef4c74fb23deef03e0d1fe0834ad6f6f1ac224513490661d9b9a615` |
| 61 | `theorem` | [tail_majorant_integrable](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/tail-majorant-integrable.md) | 340 | `result-track:1162d9afc2cf87b1eb5c8f2ac4843226dd3f4be01513969e8fecc4b3b8295a7f` |
| 62 | `theorem` | [tail_majorant_integral](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/tail-majorant-integral.md) | 351 | `result-track:e1c1d0e4b1e4fa592318aa035d7dca643bab4ecba222cc64fc4ffaebfd496da5` |
| 63 | `theorem` | [kernel_tail_integral_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/kernel-tail-integral-le.md) | 363 | `result-track:a8a3f4e6c29ff17ca61e5cb545f1bc1f87487422cd35ff7798717f26c45fe272` |
| 64 | `theorem` | [norm_kernel_sub_truncated_integral_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/norm-kernel-sub-truncated-integral-le.md) | 371 | `result-track:0e5e357478bd9c5686da399668ddbf5ad5d2aa2fa6bccc4bbfd791aa0b8653af` |
| 65 | `def` | [kernelMass](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/kernelmass.md) | 377 | `declaration-track:85f0eb02b8d761f5cab4fb596a786468a6dbea008894d796146e3ad3b8ab1db1` |
| 66 | `theorem` | [kernelMass_nonneg](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/kernelmass-nonneg.md) | 379 | `result-track:1386c7c5d4dda2b0223b8ff8d87797185752cfa1af803bcb2bd07ea3cfde4841` |
| 67 | `theorem` | [truncated_norm_integral_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/truncated-norm-integral-le.md) | 381 | `result-track:582d4b1c6f9c96b489eb89735c4ebb32cd61d9d25dcab60235cbd176ff6d4ec9` |
| 68 | `def` | [truncatedOperator](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/truncatedoperator.md) | 386 | `declaration-track:c79797679a54252dd320f41e4a8ed13923dc6814aaa0f91a66be6edc4923bf44` |
| 69 | `theorem` | [truncatedOperator_norm_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/truncatedoperator-norm-le.md) | 389 | `result-track:f8663c457cecc2c3a64cce96fb18943fa0b0fa04cf76a2c5d21f776511a085a2` |
| 70 | `theorem` | [operator_norm_sub_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/operator-norm-sub-le.md) | 392 | `result-track:62883aeb225d568eaa4e35556217c7ab04c38a358f59fb97b95feb7a18fff537` |
| 71 | `def` | [truncatedEnergy](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/truncatedenergy.md) | 398 | `declaration-track:b33cb3831befdef195981d9f22209e7eacf7fbe32c57ef971d6f02ae49a9c283` |
| 72 | `theorem` | [truncatedEnergy_isPositive](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/truncatedenergy-ispositive.md) | 401 | `result-track:40ee4465877e104f5bbf6b0bd89470dc0375169ab83722f4f5a9c058afc73519` |
| 73 | `theorem` | [norm_energy_difference](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/norm-energy-difference.md) | 404 | `result-track:9983a20d598b13bf8833bd8f7680f9211efd55b6788baa67737584ed4d789ab1` |
| 74 | `theorem` | [energy_norm_sub_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/energy-norm-sub-le.md) | 421 | `result-track:c8d466d096ffb324e495fc58eddddf63ec8952bd534da103b96f6526e53b4255` |
| 75 | `def` | [diagonalCutoff](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/diagonalcutoff.md) | 433 | `declaration-track:a6f3877a808dff93dcf2814f69f307b381189ffc9207c73e7d59b740706cb460` |
| 76 | `theorem` | [diagonalCutoff_ge_two](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/diagonalcutoff-ge-two.md) | 435 | `result-track:8dd9bf3ac92bea41f2ca551ee5f7e0969ea71c8cdddd7b3ba78231dd868fbca4` |
| 77 | `theorem` | [diagonal_exp_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/diagonal-exp-le.md) | 437 | `result-track:e932247d0e13c10636041f0724996b561c13869a80272e8cd2d0f00400c90c8a` |
| 78 | `theorem` | [diagonal_operator_error_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/diagonal-operator-error-le.md) | 447 | `result-track:c8efc94184ec5dc7fef842029fc6653543fc983f8eb52179fcf5d32696a544e2` |
| 79 | `theorem` | [diagonal_energy_error_le](../../../../MeasureAndIntegration/TimeKernelTruncationNamespaced.lean/declarations/diagonal-energy-error-le.md) | 453 | `result-track:f885de340d4e753245ffe70bd79032ba6aac9489c8cbfacf793f1d0291e0e3d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d229576a233bd6ec12cde6892abf0c50be9a98c31519dc600d3e417d85d9d38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant4b7ecc5339030fbe6aac0462fc9de14ab8ed56fe4bfe7fbd2ce65353943a0f07.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/TimeKernelTruncation/Variant4b7ecc5339030fbe6aac0462fc9de14ab8ed56fe4bfe7fbd2ce65353943a0f07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
