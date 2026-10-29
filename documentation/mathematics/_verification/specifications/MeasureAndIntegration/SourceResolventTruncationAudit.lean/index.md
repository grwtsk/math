# Verification target: Source Resolvent Truncation Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e89d87db69e70d4a791be2e904d32bcc20e5cf9",
  "lexical_observation_count": 108,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variant12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e89d87db69e70d4a791be2e904d32bcc20e5cf9`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variant12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variant12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullh-source-edition-2.md) | 19 | `declaration-track:c3a89b75771b8a77e43b78b8be9ecbed0b13423338c0e3191bc95a964ce5cfe8` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullshift.md) | 21 | `declaration-track:342f991e43a418a5f59345e8f7a5bc7b5badcc5b8f274ca3e14ad69d5c1cd80d` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullshift-ae.md) | 24 | `result-track:258f277dcee46de002596a16a19fd9e3a68069778ad3d3c3aaa647204ee31e01` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullshift-continuous.md) | 28 | `result-track:5c07ff292278926641ee891576f7233dcf6cc005d8ef05de88a66488dc09711c` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/weighted-shift-integrable.md) | 36 | `result-track:cd471be6fde8a0f256110231409603eea00bc6f1d8fee23a373724e2fbddc308` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/vector.md) | 45 | `declaration-track:971e19ab92e63bb856271705ec1a9f87f8c301d36b96f01dc13cb634c27d2151` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/vector-norm-le.md) | 47 | `result-track:3ca954a105f509e56c921739100e180dc397d441ed50ea0138c1cca53cc01235` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/vector-add.md) | 54 | `result-track:ba24b8f592fe7786fdba3105b34e207da9547df2656c8d6226ab1bb7b3813cbd` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/vector-smul.md) | 59 | `result-track:f6b3e8aa4297dcca7b81ffe98b2d0d0f7f659461408d87bc2221c25a15da9174` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/linearmap.md) | 63 | `declaration-track:4d14eec8783a49a693b1de9bd540f10489a2269998ac25fa28a9f347962f38d3` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullconvolution.md) | 68 | `declaration-track:45c8d0bc92ecfe8d1b6aaf97a8adb9afa5db814c1f700d73b0e20312bf7e493b` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullconvolution-apply.md) | 71 | `result-track:d0319c9642a5b84c90c65eeb88ea6019073696f350dd6725b74b945f122e308c` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullconvolution-norm-le.md) | 74 | `result-track:1858f92afe71a5d13877a16cb945f581c303c1e1d7be3a449c427400dffb6df0` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullconvolution-sub-kernel.md) | 78 | `result-track:66f9ec25902c9b7883e6b9e286a630da589221500f4aeb8acaee72e1f5be4d84` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullconvolution-norm-sub-le.md) | 86 | `result-track:6204071a850197f98c4eb66b87ba391add20dd83d98f235c104a1eceaf3498b4` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/actualfull.md) | 91 | `declaration-track:8ee3f48b4b4a65cf45ec29d6dcbd3267a862a7b7e00001447045b9b8f3a0a7bf` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/actualfull-apply.md) | 93 | `result-track:ba9ab39c85b713930ee7e7926d5a32d4410f40731fad9c3c3b09e9102d5231b8` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/actualfull-norm-le.md) | 96 | `result-track:9b3578c08f421277d317d3248c3828790b22c055d5be3633b16906a3645d1d77` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/fullh.md) | 114 | `declaration-track:5e3527898e0918d4a669c36408129dda785d1bb3bc4dfab0a71c77153a37274f` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextensionfunction.md) | 116 | `declaration-track:ddd6be995b3a98838eb34ebd4ae0ea4f50006633334e202210dd82b8def44e06` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextensionfunction-memlp.md) | 118 | `result-track:031c7af1bbea999e2b8386ff9913d785f2f9ae2c72cba308659b33c5c6bbf08d` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextensionvector.md) | 122 | `declaration-track:fa39e9cb86f7382bd60db593e32243a474d9cae9685e5bd5cbefa3b6b359bcd2` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextensionvector-ae.md) | 125 | `result-track:e58b59fe593778d381c058d581ea46159fd297491884a9d1dd738370af262ca8` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextensionvector-norm.md) | 129 | `result-track:717ea39da2f95ffdc12864f6bdd8738bb164b275c2fa2be4dbef36c5967ced1e` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextensionvector-add.md) | 134 | `result-track:f07809244eb0eefd863b2f643f77cd1e2ce076ec2fa2d30601733f5daa29decc` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextensionvector-smul.md) | 146 | `result-track:8dc83f995848ca76ef932a2ed35a0efba1da24dc59c72f38edb9fbbc16fa4344` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextension.md) | 159 | `declaration-track:f3013e062cf107e10d517731ef8d51a13b791796f9bdb1c6d9310f3a0bd96945` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextension-ae.md) | 165 | `result-track:4d822948ecf37b9ea90e6b6355a67892aeb48b5ac7946489bf84bbf6107a8cbf` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextension-norm.md) | 169 | `result-track:d826fc0fa8a15f89cca959d7c758d7f122cc964277fd377bf412f3daf4196770` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextension-ae-halfline.md) | 172 | `result-track:fbd3f1fcaf2847bf556ce52139eeade2dc1c904471e6b416f99df80eff3148b1` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/zeroextension-ae-nonpositive.md) | 178 | `result-track:74ede9d7beab84f51e5641ec73108d2bc484204fe19ce19b940619a2e5cd5e10` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/restriction.md) | 187 | `declaration-track:eddab32a0bef20f3099b16f86a321d032d5b0957e80e9aba347c64604bfa9bef` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/restriction-ae.md) | 189 | `result-track:25ef22b94475ec011ea6b56c149bf4146ef3c333a156d370b79ef8ecffc270db` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/restriction-norm-le.md) | 192 | `result-track:ae0dac83d0b05daaa0ebd9bbafb00263680fdf10bb32c11902e1a8f1d03b3448` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/restriction-opnorm-le.md) | 195 | `result-track:f5b79a7de31850b5400567daa67e6295c407b916d2193ca714e787a9a9639198` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/restriction-zeroextension.md) | 200 | `result-track:1ad185fc255dffb9de014683e91f759e853e79aa4e681133035032102e8fc656` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/restriction-comp-zeroextension.md) | 203 | `result-track:84471a9002df2fde362407f1a424c18bc0ea5166323647d74375905369ea6b76` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/halfconvolution.md) | 220 | `declaration-track:d0af1a59cb4f96237be82f7f5fe00f74e7583bda43613108fae1b853530aa938` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/halfconvolution-apply.md) | 223 | `result-track:a1ac2e545bda262adeae6b5cd068cbd0fe637f7b0f4112209f979a92a975ff70` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/halfconvolution-apply-norm-le.md) | 227 | `result-track:994de67331db80e4634f5fd17b65f69e587a5879c604b18f7ddbab1dcd33bc97` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/halfconvolution-norm-le.md) | 234 | `result-track:3c5608b21bf3eba8ebd1aa37906ad60777b4a9881b091005d9885c576503b2d1` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/halfconvolution-sub-kernel.md) | 239 | `result-track:dbf7e8392062af8045573bdf80305f3c615ad14e8418469874190bb6f149910c` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/halfconvolution-norm-sub-le.md) | 248 | `result-track:68c9d2fdbcfcae10d46f4172ec4fd3e98e56c72cf76cd1b3b51ed2b1efc951a7` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceoperator.md) | 253 | `declaration-track:116b2499c08df7698b089fed562900d26beb59b78c324e55c96a9f552f25acca` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceoperator-apply.md) | 255 | `result-track:7e9052859139c7c10692cd9efbd2045179f230ded79767a09ecd117512e5f9c4` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceoperator-apply-norm-le.md) | 259 | `result-track:3beafa1ba07f8746c341ea6b57ea6be0da49913f596fa039147764827fdecd6b` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceoperator-norm-le.md) | 263 | `result-track:0628269b0ffba33dd8b3a67bf01be440340c0b99210920b8e8a6e4b6ed3c3c17` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceenergy.md) | 267 | `declaration-track:2af23541a371529f24f70fe1cb665ef695f245783a2f839319c250331737283b` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceenergy-apply.md) | 269 | `result-track:f1f358a39488df90cb6e7d850a590fdfbda199ee878f42fe77134a9c604287c9` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceenergy-ispositive.md) | 272 | `result-track:57c6df3e0ccd0e4a6154ac9c05e98c9a9a3ed1c3f3ce7ae71642cea62aeb354a` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceenergy-isselfadjoint.md) | 275 | `result-track:4d974fe936fd5613b9f879ada89d09d2962d7a2c0c791b3cf6366b63416fcdd7` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceenergy-inner.md) | 278 | `result-track:08e5e85ee99081d2b3c6e4f111dee0241c7528f99ff739f2345109fbe07ed2b2` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceenergy-re-inner.md) | 283 | `result-track:7214553afb72c8edcb8cf98fad31f749543dc135b66f084ca1d8fe88bc909c97` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceenergy-kernel.md) | 288 | `result-track:28b697927824393ed28c38c86c992417e00545d71488505c6d376058fd23f1bf` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceenergy-norm.md) | 291 | `result-track:2c247e772f1074dde09a6a267a4550bdf584392094ea8da513927d68d41d1be4` |
| 56 | `def` | [truncatedKernel](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedkernel.md) | 307 | `declaration-track:c3b0c5916f21d4fee40fc7ce64755a94ec05bcd5b009c0ce585382d3690bf48b` |
| 57 | `theorem` | [truncatedKernel_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedkernel-integrable.md) | 309 | `result-track:9ce045e248877968e6920952dff538eb06b65215875d8bd1050d84972fde0059` |
| 58 | `theorem` | [truncatedKernel_memLp](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedkernel-memlp.md) | 312 | `result-track:7baeed91beaf0b8a387ac978de60bc91a6a6602e2a6931a7101eff3e8de101be` |
| 59 | `theorem` | [kernel_sub_truncated](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/kernel-sub-truncated.md) | 315 | `result-track:2c73332889dbd494e7b1409fb8594e6c67bf988e1ba0ce90d78c31e447787d78` |
| 60 | `theorem` | [norm_kernel_sub_truncated_integral](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/norm-kernel-sub-truncated-integral.md) | 326 | `result-track:9aac0d7db254daccea6e7b06f0645647bd6a59623877becf87353e3fa9f461ec` |
| 61 | `theorem` | [tail_majorant_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/tail-majorant-integrable.md) | 334 | `result-track:f1d586aaab755bea8f743ec7950bc3c5abdc650651309521d544c20b5dfddce3` |
| 62 | `theorem` | [tail_majorant_integral](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/tail-majorant-integral.md) | 345 | `result-track:f2f33229a953e84d00e1e90becc46aff140e7e35be6b80acb57bcf9c9fea91cf` |
| 63 | `theorem` | [kernel_tail_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/kernel-tail-integral-le.md) | 357 | `result-track:ef258dbae9c6caa704e900aaf6f946a4e85d2bcb501c3d1d1d9a416fba5a5318` |
| 64 | `theorem` | [norm_kernel_sub_truncated_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/norm-kernel-sub-truncated-integral-le.md) | 365 | `result-track:bdefbcd8428e193a5f8440ad9b31a21c555cc64278c2822b69ade909b9a84dbd` |
| 65 | `def` | [kernelMass](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/kernelmass.md) | 371 | `declaration-track:568925ea79b499be48d04b16a8f3553c92dd65aa098e7f5eb427722c2a0baf1c` |
| 66 | `theorem` | [kernelMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/kernelmass-nonneg.md) | 373 | `result-track:22638de204fe399952c6f82b93114224c78f41173c7ee76070dda4d82be42858` |
| 67 | `theorem` | [truncated_norm_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncated-norm-integral-le.md) | 375 | `result-track:5f5ae1b7e6b65712ace9991ffd53587dc84e851b73ea088a6374751e96883b50` |
| 68 | `def` | [truncatedOperator](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedoperator.md) | 380 | `declaration-track:06a43ab2392270052987be41344949fb3efe6e9f4db230667758d1c35e5a8db0` |
| 69 | `theorem` | [truncatedOperator_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedoperator-norm-le.md) | 383 | `result-track:87b559f50a434f35eb22d109a0c480c11bcb56a34664f30afe9584b0780da5ec` |
| 70 | `theorem` | [operator_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/operator-norm-sub-le.md) | 386 | `result-track:40817e4ee4436b19bae615828245ab9422b7de6ac6869e24c096c66e1fb8ea67` |
| 71 | `def` | [truncatedEnergy](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedenergy.md) | 392 | `declaration-track:9e12b2a08a33e8f05320889dc738bad8a9519b757ab6010780ce474b9d3a4e55` |
| 72 | `theorem` | [truncatedEnergy_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedenergy-ispositive.md) | 395 | `result-track:69fd9807cd42b48bf3c77c56068fff9e878d9dfa4866d712efc6998e771c303d` |
| 73 | `theorem` | [norm_energy_difference](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/norm-energy-difference.md) | 398 | `result-track:07a5974bd03a59d74994d2a36047e19b7ed6d3a22b2ea3017edeb2575d286b74` |
| 74 | `theorem` | [energy_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/energy-norm-sub-le.md) | 415 | `result-track:88e5f77ce9f1888b30a4f4c70f61885449f90c236c2862d8cb2ed1972f951980` |
| 75 | `def` | [diagonalCutoff](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/diagonalcutoff.md) | 427 | `declaration-track:3672edae0029e6a741aaff05209661f08a15675707b846c19f0ebddc8f4af7c2` |
| 76 | `theorem` | [diagonalCutoff_ge_two](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/diagonalcutoff-ge-two.md) | 429 | `result-track:dead5c8dcd31c3de608b602a6b274a0671ed16d339181ded2dba50464502e4f0` |
| 77 | `theorem` | [diagonal_exp_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/diagonal-exp-le.md) | 431 | `result-track:64080bfc56083ffbb43547e0a6b5cadec52fe6e1537cd9fc589a04f56fdec054` |
| 78 | `theorem` | [diagonal_operator_error_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/diagonal-operator-error-le.md) | 441 | `result-track:e5d3207995cffd5cbd50b80e35b57a397961f1869115dfcb734c6edaa44f377a` |
| 79 | `theorem` | [diagonal_energy_error_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/diagonal-energy-error-le.md) | 447 | `result-track:23b76083d3368594da3f2a49ba77097514ba16e00aa420344656281ddb0e44b2` |
| 80 | `def` | [positiveShift](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveshift.md) | 474 | `declaration-track:6929d67bafd04337e354092050629c40f797f11a6fefac741ab595591336d361` |
| 81 | `theorem` | [positiveShift_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveshift-ispositive.md) | 478 | `result-track:3f8b527eeeeaa716299d9d5f7b9529e7eb8f56374d07bffa6d3b6aa3e62494a8` |
| 82 | `theorem` | [positiveShift_coercive](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveshift-coercive.md) | 485 | `result-track:48578a79c1bb85faace540632d84e585b8649cb542064940444acd14679e012f` |
| 83 | `theorem` | [positiveShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveshift-isunit.md) | 500 | `result-track:4a09d1f285e1086e2fe2f8003b8e1598ddcba611aa35c683911005f1ee24d0bb` |
| 84 | `def` | [positiveResolvent](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveresolvent.md) | 511 | `declaration-track:5c43c7d7a55b4a1bc1fb2ae6099d3557112ce4d3403fbf9a82a95198f728e1b8` |
| 85 | `theorem` | [positiveShift_mul_resolvent](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveshift-mul-resolvent.md) | 515 | `result-track:3bc44b24b71e7dfcf8f403e4ba127973e044b3ddd5dbd3301a503da755a7ec8d` |
| 86 | `theorem` | [resolvent_mul_positiveShift](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/resolvent-mul-positiveshift.md) | 520 | `result-track:5d22ac0f2401d28158e75d1d17ee2351aa933c6c90c861f2526665559341da72` |
| 87 | `theorem` | [positiveShift_resolvent_apply](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveshift-resolvent-apply.md) | 525 | `result-track:cd893c3f4ad388a1cb54cf024c76deb19a40cee23c60eef9082cd628350f282b` |
| 88 | `theorem` | [positiveResolvent_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveresolvent-norm-le.md) | 532 | `result-track:6c057f5d51bf852d20604f44e02b296ef461d68f9bd3e35008198c09b43607b7` |
| 89 | `theorem` | [positiveResolvent_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveresolvent-ispositive.md) | 548 | `result-track:8dd73d0536f4816182d8756f4f55fe4316e933917a884c3b283610b167b7a305` |
| 90 | `theorem` | [positiveResolvent_sub](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveresolvent-sub.md) | 559 | `result-track:dcebf258041fcaa8993d3ca736ff6c1e03cf640824f3d3e5ea100e0531ac3714` |
| 91 | `theorem` | [positiveResolvent_sub_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/positiveresolvent-sub-norm-le.md) | 571 | `result-track:856173a6207328c866e71904874be028459f75cd2830d9643aa47441e66b6811` |
| 92 | `def` | [regularizedMass](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/regularizedmass.md) | 585 | `declaration-track:d5d6802e8900cb93dcaebcd2e4897137dff1fa50b7d4902da6b96bb9475abfaa` |
| 93 | `theorem` | [abs_re_inner_map_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/abs-re-inner-map-le.md) | 589 | `result-track:94789a622f03efbcafd9880c26fcbc0171516782516e04ed2e1feea536130404` |
| 94 | `theorem` | [regularizedMass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/regularizedmass-sub-abs-le.md) | 598 | `result-track:019821c676c35035ad50e8f7aa4499b0377842e0bd5829168da29c4789ae1d07` |
| 95 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/reference-regularizedmass-sub-abs-le.md) | 618 | `result-track:0b2424e86a7779f93b618131766432f70cd4af8d1085541553a4c6b28060285a` |
| 96 | `def` | [sourceMass](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourcemass.md) | 652 | `declaration-track:a2d32997877f22d7c7d3a4a68b89a3394e5a08fa9bca64bd1d650dd2226401af` |
| 97 | `def` | [truncatedMass](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedmass.md) | 655 | `declaration-track:5d066c4b23c02d71b275ec0a4d654c89b5099224266eb97757adbcac429c47bf` |
| 98 | `theorem` | [sourceShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourceshift-isunit.md) | 658 | `result-track:b286d83d64ef235a6eeafc8d70fe262589424bb6f2ccab303d133fff3796df7b` |
| 99 | `theorem` | [truncatedShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedshift-isunit.md) | 663 | `result-track:895eab786ab88e43670e40c4868192710157ea76777861be0b7eb4729dd4d128` |
| 100 | `theorem` | [sourceMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourcemass-nonneg.md) | 668 | `result-track:8cbcba436f46564c2b878beea426cfb63e41a7b31a6a0a5b1bad7ce6584500bb` |
| 101 | `theorem` | [truncatedMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedmass-nonneg.md) | 673 | `result-track:35c6c664532e50b22a638f4cd66c6c359fc953fe464203e9714805b1101964b3` |
| 102 | `theorem` | [regularizedMass_le_norm_sq](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/regularizedmass-le-norm-sq.md) | 678 | `result-track:7853e86e11e8a05e2724e87d84bb8939795bd6be27c5ba36832133afda30178b` |
| 103 | `theorem` | [sourceMass_le_half](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/sourcemass-le-half.md) | 697 | `result-track:cd42399c14b567bb2605c5fb6a652aa002185466fe733bf8cda2f0a0c4d0a726` |
| 104 | `theorem` | [truncatedMass_le_half](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/truncatedmass-le-half.md) | 702 | `result-track:3f5ea2f63b8eac20cefb259c96f1a0991a170a181244759504acde12fa621d0d` |
| 105 | `theorem` | [mass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/mass-sub-abs-le.md) | 708 | `result-track:010b8addf78b1a8c259963b79ccc478af0953368450f0f11ac7c3a63b1de2bcc` |
| 106 | `theorem` | [diagonal_mass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/diagonal-mass-sub-abs-le.md) | 720 | `result-track:1c0b2506394c22dfc1e117a5d1953dbe685cb30592fe2bee00e41fe368cdeebf` |
| 107 | `theorem` | [diagonal_mass_sub_abs_tendsto_zero](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/diagonal-mass-sub-abs-tendsto-zero.md) | 734 | `result-track:c681d883863a09fbbf0ef6171db329bfd4dc806fc89702b9c2bca1dec3830974` |
| 108 | `theorem` | [diagonal_mass_sub_tendsto_zero](../../../../MeasureAndIntegration/SourceResolventTruncationAudit.lean/declarations/diagonal-mass-sub-tendsto-zero.md) | 746 | `result-track:4b92bf1274062eaa2e78deaf6aa60bcc0c59bcf1dceb0145d207375782d21209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e685f44b482f2b28058fa0d2750b88503ac9df1c7128d0b62aa2afd148dd1a87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variant12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceResolventTruncationAudit/Variant12e8d452fe6f26145ac4939050e13322b03040fad41c7827fce412da776627f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
