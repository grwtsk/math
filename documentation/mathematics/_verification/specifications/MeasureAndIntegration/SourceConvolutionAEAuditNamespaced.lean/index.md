# Verification target: Source Convolution AEAudit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fc6a7f6d151be2063ef640de560e9f954ccc242",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fc6a7f6d151be2063ef640de560e9f954ccc242`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullh.md) | 26 | `declaration-track:33d4110e65a8c827d282b42f0c5e721ee2d416bc936886cd6a6e1347597a5e0f` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullshift.md) | 28 | `declaration-track:b57655596eea4387194232229c9d186fc2c95a97498b426562af9f48ba170ec4` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullshift-ae.md) | 31 | `result-track:e91f60311fe0889835e461cdf1ac56b6ecd47246e4b84674815172caf6fccddb` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullshift-continuous.md) | 35 | `result-track:1a054785b0fc5ce2b1d3db930578520ff70f4d44c8b9da14e89c26f96432cb9d` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/weighted-shift-integrable.md) | 43 | `result-track:1b5b4d7afa5b61a0b35547cdd430caf9dfe04fff75eff4ae8f8976d0591dea77` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/vector.md) | 52 | `declaration-track:a079b26e40231e7624a0856083f4c4cb766f9f97dad9236d8aad3a5e1f322343` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/vector-norm-le.md) | 54 | `result-track:1851292461c11310240022ac9367cfda98e250c6018a617cb0f5810a57ff2772` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/vector-add.md) | 61 | `result-track:fd82e02431a1c272c9d6009bd21597f3d8aff080d9287e0fa6badd61f76e0dab` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/vector-smul.md) | 66 | `result-track:190fb7ec3a50c9b7e39a1ee4b3dcb0ea304ece2a4b2970842481e2da576c1afc` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/linearmap.md) | 70 | `declaration-track:208eb7acd8854f33f71b0cff135d1caa2829ba3be40c8f1f74e121f1c6897a39` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullconvolution.md) | 75 | `declaration-track:fb87e0497cd60004b4017a7bed3d3c4bc84db0daa091acd4aca22e5a80c22661` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullconvolution-apply.md) | 78 | `result-track:5306cf00e2d2e88f5d5443d856c0c5469bce3c1feca69acae0d98a3412491ac2` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullconvolution-norm-le.md) | 81 | `result-track:4e8179f77abeb1b2b7ec2bc5e305f1a17a88aa54a1afd3e3feaf5a2ff7b7a90c` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullconvolution-sub-kernel.md) | 85 | `result-track:b8441b531d7e8c1fa89579b9972008120f7c79bad38871e1a7bfa6d13f4301d1` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullconvolution-norm-sub-le.md) | 93 | `result-track:9dd18e60422f11d31e1107209e743413270b59c2f53849e883b9b9d05d2ccaee` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/actualfull.md) | 98 | `declaration-track:3d670123e4233f1f7793be21a227e9ceaf79b31320696524b99489fec95b6116` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/actualfull-apply.md) | 100 | `result-track:38c3d12426fa79b2d2ecb424125f106c82ec03165843663403d53db8ba852b42` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/actualfull-norm-le.md) | 103 | `result-track:9ea9b0958331b25e1288cfb49cc32f761c9943fb8517652532356c4ddf60595c` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/fullh-source-edition-2.md) | 121 | `declaration-track:450a490483e08053f73eaca6a9970bdd303bfeaad14adfabce65cc41db23d022` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextensionfunction.md) | 123 | `declaration-track:db3c7a1097fe39b19bbf4ec57266d2bf106a7855b8954863b8ef15cedb14848a` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextensionfunction-memlp.md) | 125 | `result-track:5cd54e6b2e57b985195a7e9c3628462699b8f41ce4bbebfc368a96738a35e055` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextensionvector.md) | 129 | `declaration-track:6688beb604e6084f9d6d5cc5d5deefae0d04ace93852d31e48697ae219975608` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextensionvector-ae.md) | 132 | `result-track:1833fbafead51c92eba8c4abb5294f374a3677700bab767684368b4d28d13ec0` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextensionvector-norm.md) | 136 | `result-track:7344e333786f60097b91cca6584f696d490ed7267bbc7de99524e4a895a91801` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextensionvector-add.md) | 141 | `result-track:65fc4a33a2bdd5511b457c47c9e71e409e02d3107ddc12aa532f59897ad58cc2` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextensionvector-smul.md) | 153 | `result-track:d10e55e287e48f65413692779fd872169ae0e95a7102e4283d8b01cdf96811e3` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextension.md) | 166 | `declaration-track:1604bfa9423254dcdebae22e9e44a3b1d3708fbb5c94a1e682d08698f33df4b6` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextension-ae.md) | 172 | `result-track:23cd19f62d9c3b17d88a67950c48e5d87a6ba3cda18c4fef2d20ce3372112434` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextension-norm.md) | 176 | `result-track:1c15faffc5b31e8e0633fb3a5f86d2482c734225ecb04c157358b31cccd5008a` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextension-ae-halfline.md) | 179 | `result-track:a0852059147f0d4813ed40d3a9e9ad8b32a21b866adeb20a72d61b3a2de090ba` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextension-ae-nonpositive.md) | 185 | `result-track:23d19ed5e99d9983c4a5e99d71e81a32cff26ea48b84a6469cc17e9afede6f78` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/restriction.md) | 194 | `declaration-track:486ab8669826effd546c399c91774836e54f699acc1ebf9e97157c573bb5db92` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/restriction-ae.md) | 196 | `result-track:f8f01087e4a95d2b255094fa90980b338e8be1704f25253240130f0ce10a9978` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/restriction-norm-le.md) | 199 | `result-track:4986c63653c7bec52f845c5cc1142064fe93c8975186603d9c28ba6d13ca65d2` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/restriction-opnorm-le.md) | 202 | `result-track:d11f230af05b76b560e43fbc69ddbcea9efe93e7d2d9ad9fcd63718ade6d9f40` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/restriction-zeroextension.md) | 207 | `result-track:4fe846a5865e7585b14f3f70d566f7f34bd4264831c3690c3f0787678566b20c` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/restriction-comp-zeroextension.md) | 210 | `result-track:e3802e00eb0a2a0f4d57eb19d73ecf4ef7da771bf05be8b30144b05679c0aa2b` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/halfconvolution.md) | 227 | `declaration-track:34eb33b2ce09a81f1233181ca42b7ba3cb35551053e198633c69d96beab9a42e` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/halfconvolution-apply.md) | 230 | `result-track:666c508a14c2c91bb876d9e55b31f3f55095a3cb8cf82aaabe59f8e9de4dff54` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/halfconvolution-apply-norm-le.md) | 234 | `result-track:bc42d1d1cd0b28c1dad5ed25e645ca7c71bb2a702a214203ce957c5804e2d379` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/halfconvolution-norm-le.md) | 241 | `result-track:5d75da7d0eb9689f33682c2f2137c3745d2a6db145d19190b2964ca242468074` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/halfconvolution-sub-kernel.md) | 246 | `result-track:c91c4b32843dd11da4817589fe956a4f4fd0d6c06a60f7d8ad1d141cd68d717d` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/halfconvolution-norm-sub-le.md) | 255 | `result-track:5bfec10be46ab308d1fdb3d78dbfd24852c4765e95a18a6995e7c8630163d26d` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceoperator.md) | 260 | `declaration-track:81bb9e2693ebabf35856b3db6cc8d48fd8b0b291c70b8d4dd95c94028c061e7c` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceoperator-apply.md) | 262 | `result-track:b56ffecf65b588e04c651589f72f87415621eafaed9bdaa739d165d0eb68171b` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceoperator-apply-norm-le.md) | 266 | `result-track:3c3df8fedb27ba33b03fad70f837f9dfab9b9dc27b20208db717a1100f3fa191` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceoperator-norm-le.md) | 270 | `result-track:5a8223db4cf798369740891011a1d917d5662f9035344e037767586ff978a114` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceenergy.md) | 274 | `declaration-track:30445d7ace67cb24bee73a05f981ef7b65ba31f017f49d0898899f45dfe374de` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceenergy-apply.md) | 276 | `result-track:248359ab640c35544b835f7c20b00a32cc1084a8b6fb8df42914bf4b7d890b4b` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceenergy-ispositive.md) | 279 | `result-track:4598e7ca8e60bb89e48a9e2dec6b7a86e26699dfd7a1cd1e835a91d4a3f7a837` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceenergy-isselfadjoint.md) | 282 | `result-track:f8139fcb7f80d6929a41fdf46d1940bb17bf7a60b3bc66382f4434a1b49b9d9e` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceenergy-inner.md) | 285 | `result-track:b455c325940b3944ba30649d7a5d0cc8e6c103fa73b385fb0b84d285931aa6af` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceenergy-re-inner.md) | 290 | `result-track:d495b65155372bfbb3256363a9693574085c18456ef46bd4f37929136bfcfbd1` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceenergy-kernel.md) | 295 | `result-track:1d3364c4a5ec94065c1985a5fe88e4b4f69eb8bcb732987b9d72b1643f36898f` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceenergy-norm.md) | 298 | `result-track:582f5be1be6de7e667badf0d2cb0aad239ae853bd72310ca5de611581515a7c9` |
| 56 | `theorem` | [smul_integrable_of_memLp_two](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/smul-integrable-of-memlp-two.md) | 317 | `result-track:ae0b95e19bcd95f2e896c052a2ce2f2bb81f40ac1a57e5e11a146b9df6e1379a` |
| 57 | `theorem` | [integral_norm_smul_le](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/integral-norm-smul-le.md) | 322 | `result-track:f1c268e1770bda4e648cfe4dfda057d0653e7371a7f12388fed8f0d10d092370` |
| 58 | `def` | [convolutionFunction](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolutionfunction.md) | 337 | `declaration-track:62603d43b9fa8f871e4354eef142b183f6c66f3c8a36c47b185d588af8898a70` |
| 59 | `theorem` | [convolution_integrand_integrable](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolution-integrand-integrable.md) | 340 | `result-track:f9f8ce258f6432312a7750b2621bee5a1128e395e41a14e8a800f6e8088e48f2` |
| 60 | `theorem` | [convolution_norm_integral_bound](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolution-norm-integral-bound.md) | 345 | `result-track:adfe0b346641098e69d679ea4553735a8f9eec4a3d40c2fe51dc0c862a6a5d6d` |
| 61 | `theorem` | [convolution_integrand_stronglyMeasurable](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolution-integrand-stronglymeasurable.md) | 354 | `result-track:164f53545c520ef38d5b3367ed2103442580d3f3ecf546c90c0bf9e4bde79bf9` |
| 62 | `theorem` | [convolution_product_integrable](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolution-product-integrable.md) | 359 | `result-track:b2bc961228462dff1c2b1c8e0468c79ffdfed994ac665d6909b1bb4485200022` |
| 63 | `theorem` | [convolutionFunction_integrableOn](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolutionfunction-integrableon.md) | 374 | `result-track:bfa5a8f57f366379daee14d07168179c7dba9eb8d81a864900357b5be5b38670` |
| 64 | `theorem` | [vector_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/vector-setintegral.md) | 378 | `result-track:213828d0bfbf85ace10a82dea8da7f425f0cb2a1b1e8fea53533dde96b417cb8` |
| 65 | `theorem` | [actualFull_ae_convolution](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/actualfull-ae-convolution.md) | 393 | `result-track:baebd2ac1a8424ec11bc68e182b2a4771dd8dc6dc17a1557a988cbaeb154f954` |
| 66 | `theorem` | [convolutionFunction_commuted](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolutionfunction-commuted.md) | 405 | `result-track:bc80ddeb3d474c14909260c87167c4f22318992c66359a96a3660db3fe490510` |
| 67 | `theorem` | [causal_integrand_identity](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/causal-integrand-identity.md) | 411 | `result-track:ea2eb23108c9cc4da375911354affed798d58c52aebe56be62cb36c9bdc7f9dd` |
| 68 | `theorem` | [convolutionFunction_zeroExtension_eq_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolutionfunction-zeroextension-eq-setintegral.md) | 423 | `result-track:66ffac0b16485e2ba4aabd5646dcd6f9db062f5478dae411a45e4166beeda35b` |
| 69 | `theorem` | [causal_setIntegral_integrable](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/causal-setintegral-integrable.md) | 432 | `result-track:eff4757009b734c08ca917dbafd3c199107d998ea3ca99f96aa62634280bd01f` |
| 70 | `theorem` | [causal_intervalIntegrable](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/causal-intervalintegrable.md) | 442 | `result-track:9749c30c07463eca99f6e6863a84fbc8b5a8604d86821d962870c6e301f4a462` |
| 71 | `theorem` | [convolutionFunction_zeroExtension_nonpositive](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/convolutionfunction-zeroextension-nonpositive.md) | 447 | `result-track:beace6c203bfa4d0d00b333f81b1c25e7e7c27e0a140ecd7c67c330109eb2a8f` |
| 72 | `theorem` | [sourceOperator_ae_causal_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceoperator-ae-causal-setintegral.md) | 452 | `result-track:554da99273b5605237f8c6e9cfa3937aad394ddea14c33f984f157da6c2033fe` |
| 73 | `theorem` | [sourceOperator_ae_causal_integral](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/sourceoperator-ae-causal-integral.md) | 463 | `result-track:f5219c5bac42b2bb0bfc73f9696bdf0cb497485b6a7bcb5d798817a9a0131e01` |
| 74 | `theorem` | [full_sourceOperator_causal](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/full-sourceoperator-causal.md) | 472 | `result-track:9ce3d2e3750e9a791c5d3c0ee637e9db768b63946b254d9a1c27904d911eb0a4` |
| 75 | `theorem` | [zeroExtension_sourceOperator](../../../../MeasureAndIntegration/SourceConvolutionAEAuditNamespaced.lean/declarations/zeroextension-sourceoperator.md) | 479 | `result-track:92dc6668e5524fa0efa29ed2f09fca81ed355ceacb00c78c56a3de8b4378f9bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b74cd6a73de86859627b85574a55a6a5bd0ab1a4a11ffb0aab39173d92b0a9eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceConvolutionAEAudit/Variant5fe4cab37ef53d7564da2b8688587021aff8120ed216011b6e2479000cb6b476.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
