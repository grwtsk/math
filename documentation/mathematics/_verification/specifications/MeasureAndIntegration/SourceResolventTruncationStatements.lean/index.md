# Verification target: Source Resolvent Truncation Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "013c8944ec2042466d2d97a7ffc8e8899cfa9e76",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `013c8944ec2042466d2d97a7ffc8e8899cfa9e76`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean.json)

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
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullh-source-edition-2.md) | 19 | `declaration-track:7a079da389c2f884db1e153b2c19a19ec0a0f8dcc93d9d306744a0d16ca1a160` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullshift.md) | 21 | `declaration-track:fdacbc9cbf4b3e1d2b7a921e252ff1190f0751c1b10ded2030bb2033d1a8e0a3` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullshift-ae.md) | 24 | `result-track:3c1440d594363d2ce0ee12748de4ca7a09b5c8d2c3156dd05e6bd2831af9c1c2` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullshift-continuous.md) | 28 | `result-track:830d5d82bfa21973e4ca7f406072bb302a81bdf9be775c5b942181f46e3125a8` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/weighted-shift-integrable.md) | 36 | `result-track:fb980ac20564ff36eb0cb4c8cbab096687a81a446e4142ed045e9d0ce89edaa6` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/vector.md) | 45 | `declaration-track:fa0ba40919edc9e5fd7d265f79cce4818df1f642e34ef6bcc2eeec09028e6e83` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/vector-norm-le.md) | 47 | `result-track:decf35e36296462d9ffcd3554a7843a09e25719d11aa7aaaa7fff25afc9fe8dd` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/vector-add.md) | 54 | `result-track:7b12a6854c02454e1d7049fac66dc383106d8e0ade5074d11c315e4fb2695a91` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/vector-smul.md) | 59 | `result-track:dcb479067b5e48e32e78eaba1679f75a23f4e313e469efebb3084e31e9f0076a` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/linearmap.md) | 63 | `declaration-track:23b88db21419428aa8f5ac4471066a9a7b1d9e49fd4486d5f97a37fada6d6374` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullconvolution.md) | 68 | `declaration-track:fb6674b09b18a13a17f05222dbead5204dbd68293155d7f52009759dea516a94` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullconvolution-apply.md) | 71 | `result-track:700e4fc29f0c171b025c4b5cfaeddb58b9bb3e7f36eaac19a9c7a96d4fe7ea86` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullconvolution-norm-le.md) | 74 | `result-track:9cfd9c95af8fd7d5634bb6c0babf37107eb7c6c8774d85d6b553227d86f96edf` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullconvolution-sub-kernel.md) | 78 | `result-track:5b96dbf7049d07a6bcaa14e0f23ad68a9edc90c097a0869403a56afd2c3827b9` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullconvolution-norm-sub-le.md) | 86 | `result-track:c6f7707f0a73ce10ceb05984c37bb5a1cba49bea91cdebc42a25ffeddb65f58d` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/actualfull.md) | 91 | `declaration-track:e03de8786032422cefa538635466fcbc5e70f54468530951718b6dbda6554a29` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/actualfull-apply.md) | 93 | `result-track:ba3ed2578a228291a51d1a9255743ca4f07edb78817cf9908ed67b5ae98eb1c8` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/actualfull-norm-le.md) | 96 | `result-track:106199554733261c11841c205afc22093918ab5dbb86c98f58616b9f8ad8c841` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/fullh.md) | 114 | `declaration-track:155de66a86292ab9ed1172bad654c92d70dfeb046a123e1ac3420e15fc651439` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextensionfunction.md) | 116 | `declaration-track:5fcff4417003a345745a0eaa84da7cda5a3aafbacd7e3cbb7d548590ecf1785f` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextensionfunction-memlp.md) | 118 | `result-track:87bf0eb704721ac90d19344e8eda62ca8fcaea87e52cbcaaa72e21813293ee01` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextensionvector.md) | 122 | `declaration-track:75de77cbeb5ceed86ccf1df25c955f7c3c73f1704243da14cc6b79464b542c1d` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextensionvector-ae.md) | 125 | `result-track:78ec02fa6ce9bf01c0b071e63d164788bb500dc004a18b213e6da2e4564a2b7c` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextensionvector-norm.md) | 129 | `result-track:5107e9c501ae5a15eb55d40211688fcb414e7ba59bbde89c8003116ce9825d38` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextensionvector-add.md) | 134 | `result-track:95db525be096257aa0685a43ab15b0902e08717abee578e3bac31ef14ec2b76c` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextensionvector-smul.md) | 146 | `result-track:e715b9a21b0cd5c9fec1cf5b18a908578123073496d9e6b2000bc495b7056288` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextension.md) | 159 | `declaration-track:820f7af9db8643fdac2c8a11b4f128b6b8799286d6218e9b6055932b207ef32a` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextension-ae.md) | 165 | `result-track:4a1ed004945dc09c7fe63f7f4a42143b834ef46f34b2df4f6533fbf7448125f0` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextension-norm.md) | 169 | `result-track:437a7fe480731f6084a07b031c224c1c380ce265bb65c85761e068c6f92de765` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextension-ae-halfline.md) | 172 | `result-track:03465a86b23939da2b4c80fe9ff5796260dc73878ea68209489eb3b5dc2f5991` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/zeroextension-ae-nonpositive.md) | 178 | `result-track:ffb6b822dd966841b6545b9ece6dc074cbc381b0493f5e68cdef28223231b451` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/restriction.md) | 187 | `declaration-track:c703517473d73b2c36dc9fe803906189854dc0348c3d6cfab0fb4afe96730ba1` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/restriction-ae.md) | 189 | `result-track:9bb609b5fd2ccde2dbfbff2a4f862d76ebac97072e86b7b81a0db80ac8f2c1c9` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/restriction-norm-le.md) | 192 | `result-track:2ceddf7c9ea0ed967a8a03d0a631be16c0f5e4c9695a6254d3e615706bcd308a` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/restriction-opnorm-le.md) | 195 | `result-track:e0b4b3e3c088006ff8d47ff30c6f1ab55cf813afc9e157e53a03fef054da31a7` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/restriction-zeroextension.md) | 200 | `result-track:f2428175d62b4e930c7e92e1ba6bc280fa6728cd195325161c0200c1084a2526` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/restriction-comp-zeroextension.md) | 203 | `result-track:e656284150c9873f96bde96c7e80dcf580222fc47b8b62d6077aa49c80cdecba` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/halfconvolution.md) | 220 | `declaration-track:1a28e00f762b35cb871ed97c60ad485786a260c4d42ed19bb66ece7e15f002c6` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/halfconvolution-apply.md) | 223 | `result-track:5341207e106c9636d74132823c4a59611716847118279ee494171c640f77605f` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/halfconvolution-apply-norm-le.md) | 227 | `result-track:b627acdfee51957460c6c8c513033a6253296a07e150e58155d2c6b90ec34efe` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/halfconvolution-norm-le.md) | 234 | `result-track:bea5c4b44ed504b4b24cdff51090d0650449a6f586c9cdeb7a38de5e2c394b3f` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/halfconvolution-sub-kernel.md) | 239 | `result-track:d0e027bb0e5ec5f988f3a2701efaff002b41b63ef127efb7a8954ece28c168a9` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/halfconvolution-norm-sub-le.md) | 248 | `result-track:3f53b2567557e2097c402c0f21cef836d6915a3ea46385fd61f27639cbfd700b` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceoperator.md) | 253 | `declaration-track:60b8a86ff5a6ff985834f8081a9a58f20358039c7c12648898351f45cd34d564` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceoperator-apply.md) | 255 | `result-track:d65e6a0d63eaa543a978bc26f0df84f7b1f20518871ec141b5798cfde8ea8c22` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceoperator-apply-norm-le.md) | 259 | `result-track:5f69003d73d788ccbe4e1c70d34d3142e06be5edb5f84c389a0a58f16aee9b49` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceoperator-norm-le.md) | 263 | `result-track:3a3b78c51568f6386d9ad955de59c2d22fe642b89547d2839bf60d22209b0c11` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceenergy.md) | 267 | `declaration-track:f9a6e355cf0df5f95f7a3f0c6d1f96f14e01f90feeaa81e2b7c37ab6f6edf907` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceenergy-apply.md) | 269 | `result-track:33fac4502c195c7e55007a147e7b619483f73e944e6cb294fd8549e5fb2dd6e8` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceenergy-ispositive.md) | 272 | `result-track:fa2bfd6f1dcdf903e034d32bc86cf72ee9d5e4a46e96bb606b4fe2bc7929cd86` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceenergy-isselfadjoint.md) | 275 | `result-track:668053641a7faa36e551660bb2846569dc43ca7fa9fd08f2ddf1eae81aaac20c` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceenergy-inner.md) | 278 | `result-track:7d8bd106b710322349c85309cf109cc4a87b43606990f5c83a2f3d44c437bebd` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceenergy-re-inner.md) | 283 | `result-track:14b8b4faf854b9bede758abb2a2c4ca4f13dec2b29e1ce62562e4168affd08cf` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceenergy-kernel.md) | 288 | `result-track:d47bebeafe30160e6759f7cf825cb09730482737315c3703147383ae554484ec` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceenergy-norm.md) | 291 | `result-track:502cce6b9c6b043c501d29c0dcde3a3f3264f3f021e723438f27747e048979e9` |
| 56 | `def` | [truncatedKernel](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedkernel.md) | 307 | `declaration-track:75e11c78056be7017c26e34d17b5f67f9f1fcb036f4fbc3750560b105d43b054` |
| 57 | `theorem` | [truncatedKernel_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedkernel-integrable.md) | 309 | `result-track:497c90ab25bb360a23f36f25fedcafe83a96106cec995ebd60824aa2dfd9338d` |
| 58 | `theorem` | [truncatedKernel_memLp](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedkernel-memlp.md) | 312 | `result-track:fd9137331fafc8767cd4a0d1e855427489f4ae764610c932bda1aabe8e4a04fc` |
| 59 | `theorem` | [kernel_sub_truncated](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/kernel-sub-truncated.md) | 315 | `result-track:57df1c4012288f6f222c47055b6ef6afbe791599dbce4589c91cc0a396831ee2` |
| 60 | `theorem` | [norm_kernel_sub_truncated_integral](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/norm-kernel-sub-truncated-integral.md) | 326 | `result-track:0a2fbcb8776aa09192b31c74417415eccd061371b5b32038179a8373ac1f075b` |
| 61 | `theorem` | [tail_majorant_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/tail-majorant-integrable.md) | 334 | `result-track:e6307580c0ef57bad63db2b5cacfe8d8a26c41f68ec276746efe6ec27ad4b76c` |
| 62 | `theorem` | [tail_majorant_integral](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/tail-majorant-integral.md) | 345 | `result-track:6eb269c14e5c6c0f08366438516a0af810c16834ee55dc9a5abecebe21b8ae07` |
| 63 | `theorem` | [kernel_tail_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/kernel-tail-integral-le.md) | 357 | `result-track:a7290260fc27a47299defe8036ad20b521673bbe4ae39ab9d80830844347f833` |
| 64 | `theorem` | [norm_kernel_sub_truncated_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/norm-kernel-sub-truncated-integral-le.md) | 365 | `result-track:2ef7723aa96a8501ae04458178cfe508972f3b28c4c8605aa1b9175601be465f` |
| 65 | `def` | [kernelMass](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/kernelmass.md) | 371 | `declaration-track:3939c0284c2cfd2eb5ed6e0b374216e1b58802fee113831395809fc98a1de05a` |
| 66 | `theorem` | [kernelMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/kernelmass-nonneg.md) | 373 | `result-track:517aefabc63c9d9048f42077d4fdad0b18830ef7fa5c9af75aad0eb37b6f2721` |
| 67 | `theorem` | [truncated_norm_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncated-norm-integral-le.md) | 375 | `result-track:3aab135db7801030fa03a0c7796a4e6772098e98f067d6862c5d56ebca9968cb` |
| 68 | `def` | [truncatedOperator](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedoperator.md) | 380 | `declaration-track:b45fded2a98ee244d3e85ecdc3e87377421355c1a440cb347d751c0908845196` |
| 69 | `theorem` | [truncatedOperator_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedoperator-norm-le.md) | 383 | `result-track:44dcacdc584f25eb14b58ea7c1e183d34c012097aa1aa8dac97b7cbd0b86f5e0` |
| 70 | `theorem` | [operator_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/operator-norm-sub-le.md) | 386 | `result-track:2849b1e6052f6be9790d8c121a8cec05da380ba82fa5e5c53021385812d5b145` |
| 71 | `def` | [truncatedEnergy](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedenergy.md) | 392 | `declaration-track:c1f982d126ebcbf2bb7021bf052495615d30d087d51f1e8c7bf0986382163689` |
| 72 | `theorem` | [truncatedEnergy_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedenergy-ispositive.md) | 395 | `result-track:8345d5fdd62794311d6f4f037b5faa29beb8e5f7aa68033c6a803cccb3d3d12c` |
| 73 | `theorem` | [norm_energy_difference](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/norm-energy-difference.md) | 398 | `result-track:2107256592c4a8befdf021b56b7e121d6e36fff6812e56f0a03b34a6916b2018` |
| 74 | `theorem` | [energy_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/energy-norm-sub-le.md) | 415 | `result-track:39e07dcbf7a9a7a4c247db45f86a9ccc559eef8e75b031d886a6e29af1aeebb0` |
| 75 | `def` | [diagonalCutoff](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/diagonalcutoff.md) | 427 | `declaration-track:1c78bf7b3b62824439c6ba61a9cfd0cf5e9dfd7e65f52f5124b880db56f75ea6` |
| 76 | `theorem` | [diagonalCutoff_ge_two](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/diagonalcutoff-ge-two.md) | 429 | `result-track:4f9e5c5cbde6db1b6ffd2f9e5d84ca914a85739b73971ce7c0bc0283d41ecc03` |
| 77 | `theorem` | [diagonal_exp_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/diagonal-exp-le.md) | 431 | `result-track:32cd2b7e4bd5163f958b852094c878be853db31f83f0ac0358f97c2231461bbd` |
| 78 | `theorem` | [diagonal_operator_error_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/diagonal-operator-error-le.md) | 441 | `result-track:df68aa27daa4ecdeee5835906e5faef2c03e512e508652a5fd844e39a34b03ba` |
| 79 | `theorem` | [diagonal_energy_error_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/diagonal-energy-error-le.md) | 447 | `result-track:1d52066b4bd8106dfde4721fd46af258f50fca3b4ec98e7a517ac84f05569a49` |
| 80 | `def` | [positiveShift](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveshift.md) | 474 | `declaration-track:093edd529531a365165dfca111163eefe4e423457a0bb34a1e8ce921dd03efae` |
| 81 | `theorem` | [positiveShift_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveshift-ispositive.md) | 478 | `result-track:c002b4a9f4dbd132ce1d4b8caa5037237deebc620cf3fcee020b66b524df7e27` |
| 82 | `theorem` | [positiveShift_coercive](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveshift-coercive.md) | 485 | `result-track:a3739e2604367064daf56468d2a98ea447099a3191ee97d34d7cabf34a47955b` |
| 83 | `theorem` | [positiveShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveshift-isunit.md) | 500 | `result-track:dbdfc7f03c9d1ebeb969552cd9c83bf9656843d92ba7dec78c3d2a67932b0a7a` |
| 84 | `def` | [positiveResolvent](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveresolvent.md) | 511 | `declaration-track:8159deb71740c834d43916c7e1de8daa9c5bc1017b0c2af56d2c6b1c200d27ca` |
| 85 | `theorem` | [positiveShift_mul_resolvent](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveshift-mul-resolvent.md) | 515 | `result-track:09dd98bcbd2635aa02647e099deb4999e6ff3fcea314feb09b726908a9a7489d` |
| 86 | `theorem` | [resolvent_mul_positiveShift](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/resolvent-mul-positiveshift.md) | 520 | `result-track:035cb6e202a37569d6bb67d263bef0e1a87997de25d47471c33cf8781dbcb27e` |
| 87 | `theorem` | [positiveShift_resolvent_apply](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveshift-resolvent-apply.md) | 525 | `result-track:d31fbf883396c30333798dc2af32e91c8600d42a8a21c0859bb5dde180694287` |
| 88 | `theorem` | [positiveResolvent_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveresolvent-norm-le.md) | 532 | `result-track:348063ea581b0cd9ec579f63d92e8943ab705d7a63703bd09c06170b79170a0c` |
| 89 | `theorem` | [positiveResolvent_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveresolvent-ispositive.md) | 548 | `result-track:ae60c5bcc527bf6ab3df9cdc12225ef048e69f9ec2c183c7aa91877ce1ee8edf` |
| 90 | `theorem` | [positiveResolvent_sub](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveresolvent-sub.md) | 559 | `result-track:84777675e39a1cd85c0918fd0c175fa762d7ffd9319946c8fa313575483ab4b0` |
| 91 | `theorem` | [positiveResolvent_sub_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/positiveresolvent-sub-norm-le.md) | 571 | `result-track:f5091c9cb595e8b0ec12727f401163a23398cc7da3d5e9ef8d2c6041e469cf18` |
| 92 | `def` | [regularizedMass](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/regularizedmass.md) | 585 | `declaration-track:6d5968ffa04088d23481377e7cd3d24118cbb0a19a499f8979c931556baba778` |
| 93 | `theorem` | [abs_re_inner_map_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/abs-re-inner-map-le.md) | 589 | `result-track:5f09caa293ff18ba2aa55de90cbb73143e2836060f8c26248451682a23b055b5` |
| 94 | `theorem` | [regularizedMass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/regularizedmass-sub-abs-le.md) | 598 | `result-track:edc582a472b121514d83bb7f56bac54208f28dc5e82ac31d5a0970df441b6d92` |
| 95 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/reference-regularizedmass-sub-abs-le.md) | 618 | `result-track:f87150916d373d88cb1e1b5fa85cf0703baf3fff45efb14139747ea0768dd6ae` |
| 96 | `def` | [sourceMass](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourcemass.md) | 652 | `declaration-track:82f396d940189acced096c8731ed6bcc6851f6b6ea7fd70553e3e5b2d8ac8802` |
| 97 | `def` | [truncatedMass](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedmass.md) | 655 | `declaration-track:d3312bb55ae6a86e0237bf095e661f72f5ef7228bd242cbb18eef56558a9a0e1` |
| 98 | `theorem` | [sourceShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourceshift-isunit.md) | 658 | `result-track:3eaa170af02548c2ff61272ac61941cec6ae9612d96cb8beafb0f0feb08b616b` |
| 99 | `theorem` | [truncatedShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedshift-isunit.md) | 663 | `result-track:3a980318526f78f7c81dc01d2df4cb09cf8e82cabc6d2c34e426653a68d2a9c6` |
| 100 | `theorem` | [sourceMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourcemass-nonneg.md) | 668 | `result-track:7a800aeecd67eef95c9d4f436d7964337050d07d4fc7bc5d6dbffad4b5c52757` |
| 101 | `theorem` | [truncatedMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedmass-nonneg.md) | 673 | `result-track:ffb348e87779f2702f98a54ff3c127f1adf4cc1db31b92b9ab5730d104eca055` |
| 102 | `theorem` | [regularizedMass_le_norm_sq](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/regularizedmass-le-norm-sq.md) | 678 | `result-track:1b3028fc10674f9f3811231eed0eb33dd4956b17deb2d2c931c13471a6d0571e` |
| 103 | `theorem` | [sourceMass_le_half](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/sourcemass-le-half.md) | 697 | `result-track:3905fae0805a4ab802ca9167ce86a7c789fc7b2022df07f7ee6ba037e4bdd5c8` |
| 104 | `theorem` | [truncatedMass_le_half](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/truncatedmass-le-half.md) | 702 | `result-track:e53c71a931546b290d1654ab9d0d02c0c458fad26451c1ba5a87fee133a9630b` |
| 105 | `theorem` | [mass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/mass-sub-abs-le.md) | 708 | `result-track:3c6b74023779d5642ef073714169cd30dcefe4c8bd9c6b1a21dd4882918cc0d6` |
| 106 | `theorem` | [diagonal_mass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/diagonal-mass-sub-abs-le.md) | 720 | `result-track:a5e4d3f4214b3e73869b7617fae0617b54c8bd9c3c1a34b4b66b96f2dc93e5ae` |
| 107 | `theorem` | [diagonal_mass_sub_abs_tendsto_zero](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/diagonal-mass-sub-abs-tendsto-zero.md) | 734 | `result-track:bc756d9bc9aeedb80ccc486401a78109625df3b50a4f30a3fe2c997c44651858` |
| 108 | `theorem` | [diagonal_mass_sub_tendsto_zero](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/diagonal-mass-sub-tendsto-zero.md) | 746 | `result-track:7fa4dd000d57e9ab8bdfeb1acd530ae629e5354bd395d1dd7dcbf559eb071ad0` |
| 109 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-4.md) | 761 | `declaration-track:2d359bfb9e1206cd826bce72e95b9666df1c3426530cc2312d083063daf50f7d` |
| 110 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-5.md) | 764 | `declaration-track:33ad2209ea77e6156248eda1814a043cf9285191e2ee03752928ad5634c763ef` |
| 111 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-12.md) | 767 | `declaration-track:ff1167953cc482ed83622b1f271de2d1cda4e000bc004dbb194f07903f23598d` |
| 112 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-6.md) | 769 | `declaration-track:5352812c984bbb548491074c17917303af71324c2f397990ce5b4ebae2788604` |
| 113 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-7.md) | 771 | `declaration-track:5fc302e59789bb49525decb5566e285f83fa4058637f0e23ef30ba0a616b87d2` |
| 114 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-11.md) | 772 | `declaration-track:ea68c5da658336d9ace62b89fb6dd14d599eb81ccf849411fdbe011924c7fdf4` |
| 115 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-3.md) | 773 | `declaration-track:202384a4440ccc701ad449214de75b4080287815e58d70482e0142d971c792a3` |
| 116 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-8.md) | 774 | `declaration-track:72b6301cfa836759d2ed28288505c06a7fb407d9134fb8ce8b41a0baf2efd99d` |
| 117 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-9.md) | 776 | `declaration-track:ac48a84a2b364560fcaf71fb492a2994fffd999cfb200da1129a67b003c616dc` |
| 118 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-10.md) | 780 | `declaration-track:c3b5bb58467a937751830acba4d31c0cd080cbbffcad079994bb8c0242fdc78b` |
| 119 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example-source-edition-2.md) | 783 | `declaration-track:0d5693bf426b3850454e439029980318ec3fdc6de918941217dc242915af7e23` |
| 120 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceResolventTruncationStatements.lean/declarations/example.md) | 786 | `declaration-track:0830cf54358441b443bff959dc2ec97ca8e8c8d188a7cd704d3fa7374902617b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8f9fd32a5639d958d92a9eb55b6fd539f9b71aae1f6dc8314653016303b2683 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceResolventTruncationStatements/Variante867a0716cab6c4539eb71905a1297283e6345e9042d47e96c423f97559e6528.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
