# Verification target: Source Convolution AEStatements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcf6c43556ee3ee9313d2f9ae8583b8c74ceb213",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcf6c43556ee3ee9313d2f9ae8583b8c74ceb213`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullh.md) | 18 | `declaration-track:cd489e76324eeb02ba2ac723b4720800426ceb468bba6403d9ddee1f4e29e5f7` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullshift.md) | 20 | `declaration-track:498506d50654a9c3bc4d312ec6018d220208eda9484dcf3ba0d1290f70528222` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullshift-ae.md) | 23 | `result-track:00dd202c874364d140c2b26a86cffc1809c72e56c4a1005fc5304d742c319c24` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullshift-continuous.md) | 27 | `result-track:ff45ff77492aa6d7f4314b1124b4622ecfeb3bcfe8cd22971b744d4d7ea399a4` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/weighted-shift-integrable.md) | 35 | `result-track:19640197f1fbb35f2ff6e823b8ec4ce1da0568da1abcc17e8b2e16c3d2d76114` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/vector.md) | 44 | `declaration-track:14866e7af24ade42b2e23458108f06ddfa259e4e78388b785acab62198b1d09b` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/vector-norm-le.md) | 46 | `result-track:bd9b777ed46baae4200edcb164f74b464d5c31b90122cddc22bf4f9e115556be` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/vector-add.md) | 53 | `result-track:211244a989377dd1e9518054356ee423e21a300d06481a451cc383e1b5e73a12` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/vector-smul.md) | 58 | `result-track:efbf1d0c9b0e1552033bcb6811554d4bc58f1686f3ab54ea2057f126eb3b3d0f` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/linearmap.md) | 62 | `declaration-track:c699f9403ab65d339023cd47e83f9ad3e086684245cc8acfa3efe5e501a5c43f` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullconvolution.md) | 67 | `declaration-track:4d8f5ff288f2550336efcc2b1b64e58a4244f0a3f4550a61562a11180f25985d` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullconvolution-apply.md) | 70 | `result-track:e8da47f8b60f87f728a57edd3500d379219123213f35e92dd212e37b6f9e2856` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullconvolution-norm-le.md) | 73 | `result-track:38c00e96c22b19ed603eb47419e80b5a017c1d29362915f972027ac4b0413236` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullconvolution-sub-kernel.md) | 77 | `result-track:d0b6358889ae67c9b52ad2d2049bbd5994fae326f455e79c7f656eead083d8fb` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullconvolution-norm-sub-le.md) | 85 | `result-track:921767d0ff15aea964315e194bd60ffdaebcbb281a7ce399b5f721c0b6180897` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/actualfull.md) | 90 | `declaration-track:e13dd2b4f405104e9c48d582c3445e3446904e555a424095a3ed8f01df40fc29` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/actualfull-apply.md) | 92 | `result-track:598d560c2a453585599ad5ab7095e74a2a71d110b101fe581242ca77f885ce38` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/actualfull-norm-le.md) | 95 | `result-track:7e9d7564851f114f2c21c47f7cf4e781cd1e1439435f6d67e04ab54c11796c6a` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/fullh-source-edition-2.md) | 113 | `declaration-track:d8c82fe5fcf115eaa6dc3f2406e86387518e8f2ef3ffe06c0958e0e0cad7e44f` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextensionfunction.md) | 115 | `declaration-track:3c8bf6ef79edbc58930152b647d0758d1e2c1ff83cb320563443782f14a5bd83` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextensionfunction-memlp.md) | 117 | `result-track:607a00cebc62f1e1812e9460915595de20160787b407508c80dc735d2713f3be` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextensionvector.md) | 121 | `declaration-track:83a4a21e630c01596bf7e738861036c9fc75abe17426e335a30aca68ac43ca84` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextensionvector-ae.md) | 124 | `result-track:56df8628e03613fb88739556c4358c89962cca20fadba349d5f10604ab8c9f3b` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextensionvector-norm.md) | 128 | `result-track:96fa0df9d2e88f821a0d105ea2e2d738858c685d1915e3d9e7f04c99d2fd0e1a` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextensionvector-add.md) | 133 | `result-track:850744f520d4d668df46f3faa7960e35da452d8f3fc600381b2aef448b78d06d` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextensionvector-smul.md) | 145 | `result-track:765366e5553331629d69861b05570aef3edb2d519f7d4f1c68b79e6d095094dc` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextension.md) | 158 | `declaration-track:54c9e61f9b6bb92106c665f2e382f1ff34a12326e5f9524df4c4307ba0de4db3` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextension-ae.md) | 164 | `result-track:91ffbbce9dc4f8e907ddbff82dc00a1b492363a28f655c17885f3aee47a99267` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextension-norm.md) | 168 | `result-track:5674cc767d7b0b83012837b5b40c8a631ee82d892ff064e2df78f4f29326c669` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextension-ae-halfline.md) | 171 | `result-track:07fe625283a75a7939ea5234ff99ae9f0d4a0c1a648fe8b3bd99cf9df9fa90f5` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextension-ae-nonpositive.md) | 177 | `result-track:04013fa50484ee7f89cdafa07a499c506509a0f15769aa890bcc30d45f91b863` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/restriction.md) | 186 | `declaration-track:e5b1dafc51b6de6571664053e553685535f20bfd98a988abdf737b2b9185aee1` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/restriction-ae.md) | 188 | `result-track:27c620e9161c02467aeafb21b7de6625d995f12c2f354bf3ca98ab585404eefb` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/restriction-norm-le.md) | 191 | `result-track:9fab24895a43d88229d5635dd3514f9f8efd0bfc38da5910b5f7a99bfcdcdfe8` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/restriction-opnorm-le.md) | 194 | `result-track:0e8a12ad0081934d8c4e1baff68b5c6a03bbe69ecb2c039b41afffb7f24ef3a3` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/restriction-zeroextension.md) | 199 | `result-track:0cf09581851a64139ef798be3f2a0287f8d58743858002d3c33370efbc7dec8d` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/restriction-comp-zeroextension.md) | 202 | `result-track:dc08354df8f4535a57584caa0c24fdbf2912809f3a60a060a26063993fdc6b0b` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/halfconvolution.md) | 219 | `declaration-track:0887d98ba77503cec1d232cfd5f3436194e20111d69e188c4a4f049d33ab1964` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/halfconvolution-apply.md) | 222 | `result-track:ca599af57311b5fbb02f311ed0cc315f65e92796cf62106423a789287a34727e` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/halfconvolution-apply-norm-le.md) | 226 | `result-track:011420a48bb39aa050c2a36a0a419a2d4cba3e20134ac2d64b5b26240d1dd78f` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/halfconvolution-norm-le.md) | 233 | `result-track:f743cb1d21afc73579c5926047afb6e746d71e72e6f01989dea2e6f9a13d6c2b` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/halfconvolution-sub-kernel.md) | 238 | `result-track:7e8fd6a88e116ae3494f43d92884e2fecd8eb0e5ecfd61e76f318adfb06ce15c` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/halfconvolution-norm-sub-le.md) | 247 | `result-track:4f8c5763ca8bf020dc1b13a514dc387ba7912e3dfe56985df32383a7391ce487` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceoperator.md) | 252 | `declaration-track:73d3474b6002b469071cd0167cdb726d7b0261b105b23fcc0850f61e1b128710` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceoperator-apply.md) | 254 | `result-track:2a0dd6b3bda379cfeab450793cbced861f221def6411d0d8e2b7de3005f4d258` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceoperator-apply-norm-le.md) | 258 | `result-track:fbfbaf02503265c7400c7dfbcc53b353c6acfa988eeff5c229ad23b940e597df` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceoperator-norm-le.md) | 262 | `result-track:82193887245d775ed8a57bd0077bf3cbbc09a26cb58f6b1ba68f58054538f099` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceenergy.md) | 266 | `declaration-track:53162f798d1d767be9dcc4a5766c474ef1e29ac6c524b0685fc46d903c4204e6` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceenergy-apply.md) | 268 | `result-track:40006fabefcf4ed87e863cf4c70b83387d51d078c68d20c8ba914b5fdee94606` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceenergy-ispositive.md) | 271 | `result-track:58a7850bdd63677d41539b4aa23ac8057bc5b502bb47bde4079687a024add5dd` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceenergy-isselfadjoint.md) | 274 | `result-track:2dc851632f8301a1ea80cb6785e431156c57aeb840ab5bf48a68f68e60c1f462` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceenergy-inner.md) | 277 | `result-track:4e538deb219742402a5c92f019c385d83266a02cc45dfcbb3f4f7e0bb884db08` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceenergy-re-inner.md) | 282 | `result-track:293dd2b58d68dd922859531f74636793f894e34bc1d89a13c98371283df04c52` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceenergy-kernel.md) | 287 | `result-track:b4f866c5c4461a45a014c80640ead574531e18d89a9815aaa02e76635f2869ac` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceenergy-norm.md) | 290 | `result-track:a6ce64be107c3eff4f68350099ebc09c459bfdd7ded7426d69e4d1295044afb1` |
| 56 | `theorem` | [smul_integrable_of_memLp_two](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/smul-integrable-of-memlp-two.md) | 309 | `result-track:1c57416c2db8b2058670d9758738c09e69b88fabb2a743bc834631f89310031b` |
| 57 | `theorem` | [integral_norm_smul_le](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/integral-norm-smul-le.md) | 314 | `result-track:2653a6289465b6fc32e17f5f4e62825f05be10f3c2ad635e19fd89f15d06b3f1` |
| 58 | `def` | [convolutionFunction](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolutionfunction.md) | 329 | `declaration-track:e14dae489e569b605c861352dc7626eaf39e343e4d9bb3ede9660f427517a17f` |
| 59 | `theorem` | [convolution_integrand_integrable](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolution-integrand-integrable.md) | 332 | `result-track:b4ed03fab7c5d6529cc97e02a40bc2fe8d21849b9187b2a6f4a53302a0e8e23f` |
| 60 | `theorem` | [convolution_norm_integral_bound](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolution-norm-integral-bound.md) | 337 | `result-track:c36d3ff0358f7f278dcc10fc6dd4f0d706445ade9437e2f679ef2e3c9d2dc416` |
| 61 | `theorem` | [convolution_integrand_stronglyMeasurable](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolution-integrand-stronglymeasurable.md) | 346 | `result-track:1066134a0c6d0364a101d47dc2b1fbdb35ae2853c740e4f16d3fb70c6f2a32bb` |
| 62 | `theorem` | [convolution_product_integrable](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolution-product-integrable.md) | 351 | `result-track:2bf43374e6fb095f3b04c9a4dfcdb0489c91cebe588687c8b087d33504b0a68d` |
| 63 | `theorem` | [convolutionFunction_integrableOn](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolutionfunction-integrableon.md) | 366 | `result-track:d6eed8ca9d36fb5dfd779a25b773c5d99d43842ec0c1ad8d60581c7281d990f4` |
| 64 | `theorem` | [vector_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/vector-setintegral.md) | 370 | `result-track:0f06b320c714d0d27757bf9dbc15a5f2f4b8f9c4b25c5c2b83a8351d4bd6765a` |
| 65 | `theorem` | [actualFull_ae_convolution](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/actualfull-ae-convolution.md) | 385 | `result-track:d0c02fba2bc8d549bd0aad8a394cc656db157374c8cd6de3267930094f111138` |
| 66 | `theorem` | [convolutionFunction_commuted](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolutionfunction-commuted.md) | 397 | `result-track:44891aa862e4cee2299af1cbd95e46fc530497db1befe5dc964a70a2ecea8b9d` |
| 67 | `theorem` | [causal_integrand_identity](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/causal-integrand-identity.md) | 403 | `result-track:8385ca97a8ad98135f60ab290635ab22c519a1185518d79f056f8f0f6990a010` |
| 68 | `theorem` | [convolutionFunction_zeroExtension_eq_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolutionfunction-zeroextension-eq-setintegral.md) | 415 | `result-track:c08ce1ba1c987ad391327e45b1dff70cf0ccd22b24292bc30e2a5aba12192304` |
| 69 | `theorem` | [causal_setIntegral_integrable](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/causal-setintegral-integrable.md) | 424 | `result-track:76748e639f5f850bec9be05453e4d58e0a250be4dd87d271de2af842dbf5bcf0` |
| 70 | `theorem` | [causal_intervalIntegrable](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/causal-intervalintegrable.md) | 434 | `result-track:44c94a87ffaeca9acd52e101530a9c8de79f2d83db587334d330de2be175a2e8` |
| 71 | `theorem` | [convolutionFunction_zeroExtension_nonpositive](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/convolutionfunction-zeroextension-nonpositive.md) | 439 | `result-track:ab93fd06a0d19baac9ba1a7132f5942e9256f3f8123e31e5288f59512ebfe7af` |
| 72 | `theorem` | [sourceOperator_ae_causal_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceoperator-ae-causal-setintegral.md) | 444 | `result-track:1ceb653e3346d217185b3d2287f64b51e057be2445018718fa755339bce45b48` |
| 73 | `theorem` | [sourceOperator_ae_causal_integral](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/sourceoperator-ae-causal-integral.md) | 455 | `result-track:a9b04bf6e781728dd35c04a2201726b5af9a0213f44c9732cd3fe2391b0e309f` |
| 74 | `theorem` | [full_sourceOperator_causal](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/full-sourceoperator-causal.md) | 464 | `result-track:914bfac0dea6a887e0b8f71082526552eccb438d05c108e5fdf25f134335adb4` |
| 75 | `theorem` | [zeroExtension_sourceOperator](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/zeroextension-sourceoperator.md) | 471 | `result-track:8b1ce7509253f7480e4ae1f0e793ac7bb230416bdc4b4da4f8bda1ac592acec5` |
| 76 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-8.md) | 493 | `declaration-track:4ba315447a8c485148d68566e27c6cb528fc53700d2841f9883c4e2ec5eaa363` |
| 77 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-13.md) | 495 | `declaration-track:aad1cfdbb15831b0dd26c429991d870cce9afaea51e902192cb587b8bf40cf20` |
| 78 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-7.md) | 498 | `declaration-track:4774392c937956550e7465439986e6a876c6e4fd25e033ad8eb4551cab6c5e77` |
| 79 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-15.md) | 500 | `declaration-track:c2e91a4eee7fd5af7769fba8f59e144630bf2e60c3b0bb6d34a3592340ee5733` |
| 80 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-5.md) | 502 | `declaration-track:242e6d50ece7e483e3fd63be7f5c2a168f23f50d035e8f6662da5c1a591172f5` |
| 81 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-10.md) | 504 | `declaration-track:67a746a214e97166d0b2e6deaf470c4618db8c34525b2077ed6c679c026bc9c8` |
| 82 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-14.md) | 507 | `declaration-track:bdc07948a8e7f21f5ac82c6215936a12ef81ccc8a8ae15177f56912c87fdbb41` |
| 83 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-2.md) | 510 | `declaration-track:0517f833d04438a38780284691cc28eeeb71796ef77a3be1b66b72668a617c77` |
| 84 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-9.md) | 512 | `declaration-track:5aca0f1c82603dfe6928359fef916b7bbb87834cd5b3fd96da1749a06c3ca282` |
| 85 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-11.md) | 515 | `declaration-track:6b00dc5c04553ee1d201fa2b8a89c7abf0bce87d4f17d48ccf2199a21b22ca64` |
| 86 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-16.md) | 517 | `declaration-track:c8385a6578411284a0e25e0c9c6a3293d17c4a82869588036ed77b88fde0e62c` |
| 87 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-18.md) | 519 | `declaration-track:eb03859854b2238e9fc489aa5fc0544a341cd6c0b18789bbc2ad8282ce950cdc` |
| 88 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-6.md) | 523 | `declaration-track:45600c9beb2ed5e5b2884d94810902f73ebc2ec44b0069ad0382fae7792e1e76` |
| 89 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-20.md) | 526 | `declaration-track:fbe403ccee9fac49f455f88b698314d1f9aa15afe242ee7ccf379919e26fe684` |
| 90 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example.md) | 529 | `declaration-track:013682c6afed92d0f2c1d09c89d63e7c8558dd492c5d5f81ba9397a115cfa233` |
| 91 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-3.md) | 532 | `declaration-track:0c114642c0b07b7f59fa27a1493313f1a94d39bd82a8be57c3216a77f00e9d5c` |
| 92 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-17.md) | 534 | `declaration-track:d8e1eb0de1714520fd3e9e1c69b8e7752fbb2f6f6daafe119a12ffe2c02e4249` |
| 93 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-4.md) | 537 | `declaration-track:0fa1d5fae20c705e8811b2a324e5c47c8d075d33dfc8bf454abe9ce74c42cc4c` |
| 94 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-12.md) | 540 | `declaration-track:a41239dd6e3aab2515624cafb8c05ef488d2154024f36fc4c03d9eb3eb0b6e41` |
| 95 | `example` | [(anonymous)](../../../../MeasureAndIntegration/SourceConvolutionAEStatements.lean/declarations/example-source-edition-19.md) | 542 | `declaration-track:f6b693346dc36b93e1400f906494b2c3f92bfc5263d2d0f3ca0a4e06df078bfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a68fd3ca34db6bc6c5d4a2d311f6d4cce4916c9b4cee7d831a0e37cdb3a1ac93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceConvolutionAEStatements/Variant1066b79412207331bbc09106d8d9c4170d6e3e52a0ddff678f248cbcd1d0162f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
