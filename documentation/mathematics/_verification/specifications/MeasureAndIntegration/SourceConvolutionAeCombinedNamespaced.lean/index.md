# Verification target: Source Convolution Ae Combined Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51486d0525e45d9cee708006d090b5b2cb14193d",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51486d0525e45d9cee708006d090b5b2cb14193d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean.json)

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
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullh.md) | 26 | `declaration-track:53fb057d17a1a7b62c7a6be4f7430e2fc000980e00c30d62b714da3ac1d315af` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullshift.md) | 28 | `declaration-track:69283e283de27e5e33c1b669fc2d9101df485146c2642909228cada0daa351c9` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullshift-ae.md) | 31 | `result-track:f80f72ff264f2b59de7e58c11c08044e1237459f8295deb769e5020a6894d157` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullshift-continuous.md) | 35 | `result-track:8bdf03ac598f20d445cfe1a386d976874292c4b1faad7ec2762f2ec3f22f6530` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/weighted-shift-integrable.md) | 43 | `result-track:759eff762e170c62305a2398c0d1a1f0a858be9b2b91cca9c267283665488bd7` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/vector.md) | 52 | `declaration-track:b9ac81e77856f15277d444c3905c8e6bbe874b3ae2382f231166c2fb389c19e8` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/vector-norm-le.md) | 54 | `result-track:770ccff436ad54cbc18053c889974812b72e647fc9c71c3f4da4832ecc4fad40` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/vector-add.md) | 61 | `result-track:854179e9456f5dd25e90400d3e9f5e3951812c6a2de31704476f8e0a05143ae8` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/vector-smul.md) | 66 | `result-track:20ae3812876f9f2495166e56dc4693029d5b03ceb39a3fc113735c87a2859db0` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/linearmap.md) | 70 | `declaration-track:61c32fc659fec51778c2681d1208c7ca12208881e6c2e4bd27b3244704036e3a` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullconvolution.md) | 75 | `declaration-track:88d3165b3181611b8cae9b1d4255b8569396163fbca8fea20424d939a71cdc76` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullconvolution-apply.md) | 78 | `result-track:f760576c9767cd34bc7aae524e3f00c4fe562c91b7abc30ef1668dbb24cf22b3` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullconvolution-norm-le.md) | 81 | `result-track:2d30298e16f2360063a5452803ac1c5d5930896f100b7a5f451a58e426e301e1` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullconvolution-sub-kernel.md) | 85 | `result-track:17e26942f5c8c53f654599fd16948172d816b08c1cabaf6d82a63941037cad25` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullconvolution-norm-sub-le.md) | 93 | `result-track:39a8dafec5506f2f1ad75e80e7730546ac3be279d8b1b9b1018fb0567ab23abe` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/actualfull.md) | 98 | `declaration-track:673dcedc44f624200fb71540004fe0415bc9148dc32b23994899f55254f84dbf` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/actualfull-apply.md) | 100 | `result-track:3f13326a95cbbb4d5662c5c48c24bfa1c736687b420ef5824724fcfafa6fcea6` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/actualfull-norm-le.md) | 103 | `result-track:32d24e60b661efc7341c4240203cc08cca560aa1199d1adde36727b877fa6a58` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/fullh-source-edition-2.md) | 121 | `declaration-track:7dc8f2fd8bc1469b8a997f98c34ab73d9b906c3c9148ef725d598a00b9b080eb` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextensionfunction.md) | 123 | `declaration-track:ed2b48bf38f54a67ff1fe7bae62f56e199ff30f9b33745ceee8dfde5c98bd28e` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextensionfunction-memlp.md) | 125 | `result-track:d6920c706574c557aef24f1fbf905e8ea7cbd89cab9e67a89ffe5f944e92b35e` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextensionvector.md) | 129 | `declaration-track:7ba6e24de8b9fef4c29c4afd0eed10d629ae72795ff4e281685b0740cddbf493` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextensionvector-ae.md) | 132 | `result-track:593c497d671149053ccf701b3c327fc2350fd78424817d68939bcd10d774cf93` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextensionvector-norm.md) | 136 | `result-track:61d2ebabadf5278e888626081bc0810a013b92c1d656bc98d2eb16aac6ad7a09` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextensionvector-add.md) | 141 | `result-track:3bf97dc8b0a00331dd1e1fd23c6859509fd3a24e7dc886a5d6c2b4e089aec1e8` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextensionvector-smul.md) | 153 | `result-track:359b450f1eb4f6b147e107f945f01c2738c59773dd6b12e3703672427a6a4d71` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextension.md) | 166 | `declaration-track:297e714e81b17279f2df7f1138f7f5f7fb524bb3fa8b8a4a61b5a6879b8a0b7f` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextension-ae.md) | 172 | `result-track:b959ae508e27c643c0bb7066e5c3f7a6c938611491ce0cf6c6aaf1f07e860226` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextension-norm.md) | 176 | `result-track:38075365fbd5aaa92caa4e629c88e922341e9da0906047086edc39a664739a6b` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextension-ae-halfline.md) | 179 | `result-track:fcc02ad3836f76c55cd9e79e7778a78a42bb824e790a1d8089b31beb65dfa8bf` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextension-ae-nonpositive.md) | 185 | `result-track:bf08bd1b5248a4124da6754bafaf4075ea59665042b2d9c648f2fb97d8fda808` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/restriction.md) | 194 | `declaration-track:8350b8c554c78725396dca8084b55fd0eeb7865503adfbe8aafaecea47084784` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/restriction-ae.md) | 196 | `result-track:c7f785f9b9eb56dbdd36c46eb51ebda113561b682a417d865b18e7b584e49d16` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/restriction-norm-le.md) | 199 | `result-track:9b28dc62d19afd30e7702aca1456a58d465a12f1455838e49dd1d4105d24956a` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/restriction-opnorm-le.md) | 202 | `result-track:3e6c8d1877b71911e2f1966ab06e77559f27c13b12f536fad79d60731dec8869` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/restriction-zeroextension.md) | 207 | `result-track:198a440803ccd52fe11883cb65d76089d3f86d1f64108e06a59094d53e7b0585` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/restriction-comp-zeroextension.md) | 210 | `result-track:44fa0bff10664d2875ad876d4de8e45f84efc1201592967dded28f5b37009751` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/halfconvolution.md) | 227 | `declaration-track:a14cc4737f8e39d400e27cb9987aed7b164e94c429deb66cf4e1c3429edbb00f` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/halfconvolution-apply.md) | 230 | `result-track:13b2df7deb9b695675332f31c57428c1ffe6f20b3dce41beca375bbb574d63b1` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/halfconvolution-apply-norm-le.md) | 234 | `result-track:5a9746934d48e95553438458d184f1c0615c3694369b819e67b3f225dd2b7b7c` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/halfconvolution-norm-le.md) | 241 | `result-track:c26c1214d6d163769283715f2c7a32270b40527e633e81d3e34e3343dbe267c2` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/halfconvolution-sub-kernel.md) | 246 | `result-track:78b60bb430da8486634ac8b0ef88e416cb38d560c37c1a481008cd47aca2cc59` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/halfconvolution-norm-sub-le.md) | 255 | `result-track:3ec4253b4d023ddbfe55477e0c6bc194eafd0e6513577911b1cbf7d639fdfcb8` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceoperator.md) | 260 | `declaration-track:31802084116d5cd5bc876d83fa5f75c99dc5ab3262ceab9428a2a98158a14344` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceoperator-apply.md) | 262 | `result-track:5b15241de844f41171b05ee7b369e579dd445b4b25211d31fd8931b70a9c9c7c` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceoperator-apply-norm-le.md) | 266 | `result-track:666e11df0abfaa3b3f1ef380578f7dca5ab300b19db5ea0f1ef98d34eb25a581` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceoperator-norm-le.md) | 270 | `result-track:7357567e0e8dd2da5eb082e7f2d740da84d43addeab78cc747d9c583a8f76eae` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceenergy.md) | 274 | `declaration-track:1aad7e0df75d7a43b75f67ea05b18bd3d3db6211766c4890f021927cd3533d86` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceenergy-apply.md) | 276 | `result-track:54ed65ff82f37edc1d0a583cc7bca97feffe3bbdae0c2ab22aac87b8a0802fe6` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceenergy-ispositive.md) | 279 | `result-track:fe3c7852a8f175e9779c464980e26d7ce7ad1ae214b2df100e3410f26e6185d5` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceenergy-isselfadjoint.md) | 282 | `result-track:c82aa7b98f206775cf004fdaeef8015a4aff331d5db111301b0cb9e3f5f473a6` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceenergy-inner.md) | 285 | `result-track:f86f8e9fc1b6454fd5dffe3764841587e498ebb855275ba7fa7a237dbc5a2e22` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceenergy-re-inner.md) | 290 | `result-track:acd19d09a123c77494844ba73106fb6d90f46df7f7b5f5c50c66dc1e1cb84c85` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceenergy-kernel.md) | 295 | `result-track:f11e79e6539833e560cb50fb376af8bc0dc75ad50082f76ea7f56c66324b633e` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceenergy-norm.md) | 298 | `result-track:a81563fe25087006e05e5268e673af896d78ef957c526b241e60c542e35dc2a4` |
| 56 | `theorem` | [smul_integrable_of_memLp_two](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/smul-integrable-of-memlp-two.md) | 317 | `result-track:486ea37e6b0196bfa85a06f20997f3ed867c1f821bddbb4575aecc8f3603dc12` |
| 57 | `theorem` | [integral_norm_smul_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/integral-norm-smul-le.md) | 322 | `result-track:4871fed339ce1a509d42027218c65fcaa084bdf362c9e20af32d64bd7eefa85c` |
| 58 | `def` | [convolutionFunction](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolutionfunction.md) | 337 | `declaration-track:e297a6539c06ef5a4a4bfce311a1b3118fe988cd3c5cc932a22df67ccaa6bd7c` |
| 59 | `theorem` | [convolution_integrand_integrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolution-integrand-integrable.md) | 340 | `result-track:07f22106766457de1eb4e4c557aee525f8af565b9701e82983dd17721f1252b0` |
| 60 | `theorem` | [convolution_norm_integral_bound](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolution-norm-integral-bound.md) | 345 | `result-track:15f53e80600478e138444099eb4978f886c934f3f1bc52bbb1a7970d5be912fc` |
| 61 | `theorem` | [convolution_integrand_stronglyMeasurable](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolution-integrand-stronglymeasurable.md) | 354 | `result-track:226c5fad1d0ed21fa1ed8996f251093051b6bc97b296f30e62a30b8942941c25` |
| 62 | `theorem` | [convolution_product_integrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolution-product-integrable.md) | 359 | `result-track:76e24186a7b4b1a6de2b476ac2404d6895b0d88d0f8000acd9ed2a0c6f9c6d6f` |
| 63 | `theorem` | [convolutionFunction_integrableOn](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolutionfunction-integrableon.md) | 374 | `result-track:b08abc84d5d614a53c6b4c8983108d4126b7f6b80c255801b4045ffb717a66d0` |
| 64 | `theorem` | [vector_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/vector-setintegral.md) | 378 | `result-track:d5c050864978383cd5c1e9ca9023201305c07cb6afc8335aceb7c1907569fedf` |
| 65 | `theorem` | [actualFull_ae_convolution](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/actualfull-ae-convolution.md) | 393 | `result-track:32eb6c75417f167fe341d7064e405e8c6b89560ab686f5b2003fbce434475810` |
| 66 | `theorem` | [convolutionFunction_commuted](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolutionfunction-commuted.md) | 405 | `result-track:e7b21585b0bd3f88d0ee7a336585b3279d410b8c53e7173287f949432c2decd9` |
| 67 | `theorem` | [causal_integrand_identity](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/causal-integrand-identity.md) | 411 | `result-track:c7928ac5d4d6a2144001131bced001b67c1968a8536bd7d40d65d740a2f0887b` |
| 68 | `theorem` | [convolutionFunction_zeroExtension_eq_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolutionfunction-zeroextension-eq-setintegral.md) | 423 | `result-track:51cd3cece9d1ba0b673f6e4b4fabe78613811fdae38b4232c80c252092b05289` |
| 69 | `theorem` | [causal_setIntegral_integrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/causal-setintegral-integrable.md) | 432 | `result-track:60f2fea201e2e7f279108413194d04c7180ca0dc95e2521c0842c066149ec5e3` |
| 70 | `theorem` | [causal_intervalIntegrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/causal-intervalintegrable.md) | 442 | `result-track:1dc18acd1fc64d66ef82a4e40ffd4ae4a61dc80b93af36db4756f4fcdc220c0a` |
| 71 | `theorem` | [convolutionFunction_zeroExtension_nonpositive](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/convolutionfunction-zeroextension-nonpositive.md) | 447 | `result-track:c22cf85164bb597bd4cc903a0dce0ccead467562da4b84551e5a0f4b949b688c` |
| 72 | `theorem` | [sourceOperator_ae_causal_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceoperator-ae-causal-setintegral.md) | 452 | `result-track:a26fc6449cd33f9c3ad824d5b4892ef54ae07fd55b2f3fa8dd12a79f250ec5d8` |
| 73 | `theorem` | [sourceOperator_ae_causal_integral](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/sourceoperator-ae-causal-integral.md) | 463 | `result-track:221fe250f66a02b11fb1f6b8a2266941180407c7d969dd76a0d22dd580456858` |
| 74 | `theorem` | [full_sourceOperator_causal](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/full-sourceoperator-causal.md) | 472 | `result-track:ade3859bd523584147f2579277336f292c3c01635009eb7a3f26b945acd7a275` |
| 75 | `theorem` | [zeroExtension_sourceOperator](../../../../MeasureAndIntegration/SourceConvolutionAeCombinedNamespaced.lean/declarations/zeroextension-sourceoperator.md) | 479 | `result-track:7201417ba73838bfeda935dbadcc2cee75190d8ffb411bab9b2d40948bf42f2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0c984dc6f0c3758691e96905af1e6aeb2266d871ba0c5abdd9a20ff13ac54cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant8b4fc69e800d1b0f15cbbc38cc7641a431293ddcb0c22bc2827d3d434a1ab3b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
