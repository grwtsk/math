# Verification target: Fourier Transform Deriv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c09287ffc79cc80115f3e70237dffca6ab50a28",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c09287ffc79cc80115f3e70237dffca6ab50a28`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.CPolynomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Bounds` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasDerivAt_fourierChar](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasderivat-fourierchar.md) | 102 | `result-track:e24bbffa72553dd24ad37f4ce73056bf539444c2185af73edda075b77b7f934c` |
| 2 | `lemma` | [differentiable_fourierChar](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/differentiable-fourierchar.md) | 109 | `result-track:a39f5e8b3e3b04f42c272137e87b60ddff6364c31ae8bf2cde277172db7fc337` |
| 3 | `lemma` | [deriv_fourierChar](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/deriv-fourierchar.md) | 112 | `result-track:88d5b29904eeb28439269cabdda826442ebcadb10b356a712534b7bee23cabee` |
| 4 | `lemma` | [hasFDerivAt_fourierChar_neg_bilinear_right](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasfderivat-fourierchar-neg-bilinear-right.md) | 118 | `result-track:b3993a7b69b02e4329f80ae34c5eb46b8af88bbe7bbcd80f0158901069429411` |
| 5 | `lemma` | [fderiv_fourierChar_neg_bilinear_right_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fderiv-fourierchar-neg-bilinear-right-apply.md) | 130 | `result-track:1702a75cab1ddbfdbb6f2be2bd5c71b797528d358dac4c55a9cb19a7b6c31707` |
| 6 | `lemma` | [differentiable_fourierChar_neg_bilinear_right](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/differentiable-fourierchar-neg-bilinear-right.md) | 137 | `result-track:860284c3fe50eb59c52cfeb1e5c0cbd5dde18e47d4741f3e31b2a399bd6eb9f0` |
| 7 | `lemma` | [hasFDerivAt_fourierChar_neg_bilinear_left](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasfderivat-fourierchar-neg-bilinear-left.md) | 141 | `result-track:b98f38bd2e3f1c656e20d3cfbc2c926a6dcc7acab719be6903031553a05ec240` |
| 8 | `lemma` | [fderiv_fourierChar_neg_bilinear_left_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fderiv-fourierchar-neg-bilinear-left-apply.md) | 146 | `result-track:cf9050ad02d814fb5036b25c66b13ac4d1e66a0a61db22cbd43926d8c547afc8` |
| 9 | `lemma` | [differentiable_fourierChar_neg_bilinear_left](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/differentiable-fourierchar-neg-bilinear-left.md) | 153 | `result-track:8825fff7928e4d778e04c6ebf45c499f8809cc18f9f883558b38b6c852b2bdb6` |
| 10 | `def` | [fourierSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fouriersmulright.md) | 169 | `declaration-track:f66e59a60c35e443e490a406e80256bc6d2184bf050329c11a172b58c7d94610` |
| 11 | `lemma` | [fourierSMulRight_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fouriersmulright-apply.md) | 171 | `result-track:a347662d668b8d59473e97aff1b0fa95324977ddc978056ffa2e36de4f7fb48c` |
| 12 | `lemma` | [hasFDerivAt_fourierChar_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasfderivat-fourierchar-smul.md) | 175 | `result-track:03daf4b8eb11507221f7513aef6ed4ef91f967a30c936d22b213ba276138366e` |
| 13 | `lemma` | [norm_fourierSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/norm-fouriersmulright.md) | 187 | `result-track:245a222be8a10ad994c92c82bfe6051395215fcd82f3c8db482e9bcb372d7bd2` |
| 14 | `lemma` | [norm_fourierSMulRight_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/norm-fouriersmulright-le.md) | 193 | `result-track:86fdc48be0a4f93f06b6bd1cdd1b05ee3e139850b6f2d0b23aadac29c55957cb` |
| 15 | `lemma` | [Fourier Transform Deriv Namespaced](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier.md) | 199 | `result-track:339bbad09d45a47ae2e71c61cf35088e5bfaac52ea79144e8f8c710455d1bbb8` |
| 16 | `theorem` | [hasFDerivAt_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasfderivat-fourierintegral.md) | 217 | `result-track:81b44ece7899e2df962f4f4f1582acb09072e4b1f882de2a0e84c00ca7861218` |
| 17 | `lemma` | [fderiv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fderiv-fourierintegral.md) | 243 | `result-track:c28fe22f02d1aafd9e9297e01d2a3a4342b360773ed049220871d24ed5d69429` |
| 18 | `lemma` | [differentiable_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/differentiable-fourierintegral.md) | 251 | `result-track:cf0eed627f06e2f009408e522aa41b20fb6ebfcb4f13ea564e29bd456ac25943` |
| 19 | `theorem` | [fourierIntegral_fderiv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierintegral-fderiv.md) | 259 | `result-track:cf385194bca2b88bd375f146b38465ec5882fd2681dbfbf4a150f8387b99b6bb` |
| 20 | `def` | [fourierPowSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierpowsmulright.md) | 294 | `declaration-track:a35610e1b679345bdb45a8f67afddc976c11eb8a1c206f75eae838dc7646e184` |
| 21 | `lemma` | [fourierPowSMulRight_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierpowsmulright-apply.md) | 300 | `result-track:1d7e1539ecbcb8654a19a3cd7257aed23b8f5c707a84482d62b2df448b484fdd` |
| 22 | `lemma` | [fourierPowSMulRight_eq_comp](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierpowsmulright-eq-comp.md) | 308 | `result-track:53718a4ec2a93856e5b3f9dac2bebd82375549e4f24de7a998e7435269554d1f` |
| 23 | `lemma` | [Fourier Transform Deriv Namespaced](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier-source-edition-2.md) | 314 | `result-track:45f09d07142af6447396a511a63f74ebca8696b334d608b664040565c672f977` |
| 24 | `lemma` | [Fourier Transform Deriv Namespaced](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier-source-edition-3.md) | 321 | `result-track:64a2a75afab3c80da7a7f27a99850b9eaec972736e510605a75c6c2cb4376005` |
| 25 | `lemma` | [norm_fourierPowSMulRight_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/norm-fourierpowsmulright-le.md) | 330 | `result-track:1667542065f8bdcf17828490e60ac11d28b638129acd1f693f8efa1bc66111c5` |
| 26 | `lemma` | [norm_iteratedFDeriv_fourierPowSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/norm-iteratedfderiv-fourierpowsmulright.md) | 345 | `result-track:0c6dc1a3c17fe4502db87aae09c63d79cd45eb6693bfaefa4ce3d5f75d286ef5` |
| 27 | `lemma` | [Fourier Transform Deriv Namespaced](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasderivatfourier-source-edition-4.md) | 436 | `result-track:aee5e3a21155f7508022ea3f270acfa46e209094d4806cbfe8620d421c6ae4f4` |
| 28 | `lemma` | [integrable_fourierPowSMulRight](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/integrable-fourierpowsmulright.md) | 445 | `result-track:4ac01589df0f21f1e2dce07591c40d7745954ab8de6753311ee9379eafdcdb5e` |
| 29 | `lemma` | [hasFTaylorSeriesUpTo_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasftaylorseriesupto-fourierintegral-source-edition-2.md) | 451 | `result-track:6df0c16e2b09fcd28eccd59aedb08c965485c527401cb9251c4cd2a1652c9d9a` |
| 30 | `lemma` | [hasFTaylorSeriesUpTo_fourierIntegral'](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasftaylorseriesupto-fourierintegral.md) | 503 | `result-track:401fbad7dae76009eaa5c5631dae76fddf4ff7ea9c29362d0c3f999860d5d4c8` |
| 31 | `theorem` | [contDiff_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/contdiff-fourierintegral.md) | 511 | `result-track:2aaf20ba0f03d7e926879bd6cd3fbc007544328532b87436b64443442f81d923` |
| 32 | `lemma` | [iteratedFDeriv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/iteratedfderiv-fourierintegral-source-edition-2.md) | 523 | `result-track:e6a20685de6772a3d11be7c369623e886e365196fe991ae63326bc421b6418d2` |
| 33 | `theorem` | [fourierIntegral_iteratedFDeriv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierintegral-iteratedfderiv-source-edition-2.md) | 536 | `result-track:fae7e363d8d943efeb159b5563440c256650ecf880aadc1a6011e3b77c6a3441` |
| 34 | `theorem` | [fourierPowSMulRight_iteratedFDeriv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierpowsmulright-iteratedfderiv-fourierintegral.md) | 576 | `result-track:477383ae6a80d45786913e034626cbf0a20b5f1c603218288911941246755758` |
| 35 | `theorem` | [norm_fourierPowSMulRight_iteratedFDeriv_fourierIntegral_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/norm-fourierpowsmulright-iteratedfderiv-fourierintegral-le.md) | 610 | `result-track:e9c4c3be1b58dbc5f59d3106f3967dfddb9c5ab130df40a167b539d26782898f` |
| 36 | `lemma` | [pow_mul_norm_iteratedFDeriv_fourierIntegral_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/pow-mul-norm-iteratedfderiv-fourierintegral-le-source-edition-2.md) | 640 | `result-track:aeea029c4a32dbb1c2e4c655a4e7638b2f467958ec5f32d227b1fb1331bac5c6` |
| 37 | `theorem` | [hasFDerivAt_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasfderivat-fourierintegral-source-edition-2.md) | 682 | `result-track:ba56a1e174f07fb9f03936a5bf91c387ccd6ece17ca4605aed7edf915332975f` |
| 38 | `theorem` | [fderiv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fderiv-fourierintegral-source-edition-2.md) | 689 | `result-track:c40c85a35b3eb5e1e523ead3677ad7ba30b00dd6e04b178bbec54523c0adc9f3` |
| 39 | `theorem` | [differentiable_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/differentiable-fourierintegral-source-edition-2.md) | 694 | `result-track:e12faa10a7e8e1a789aaec72e052dbd883fcddbe52d7652d73e203086a1a20d7` |
| 40 | `theorem` | [fourierIntegral_fderiv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierintegral-fderiv-source-edition-2.md) | 701 | `result-track:fc5e68fcc76d8204293b91f33c059cfe2d8d0726360b5393d71d870656ef9e3b` |
| 41 | `theorem` | [contDiff_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/contdiff-fourierintegral-source-edition-2.md) | 708 | `result-track:c804dc2958c87458ca9166d95c06083582c06bee31f4fe725cc5ff39d8408dbe` |
| 42 | `theorem` | [iteratedFDeriv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/iteratedfderiv-fourierintegral.md) | 715 | `result-track:dcf198858da2eb394767b71c221c50954ca187a212576d4ed601c7863f7d71b8` |
| 43 | `theorem` | [fourierIntegral_iteratedFDeriv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierintegral-iteratedfderiv.md) | 723 | `result-track:47684edcffe815fbfdb7ce863279ee808eacef942a9cc4c77d13c9613970eb8e` |
| 44 | `lemma` | [pow_mul_norm_iteratedFDeriv_fourierIntegral_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/pow-mul-norm-iteratedfderiv-fourierintegral-le.md) | 732 | `result-track:83502b32bea1f4d417a0f5517663739b85b20dce0e13459551282a1eaf50959b` |
| 45 | `lemma` | [hasDerivAt_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/hasderivat-fourierintegral.md) | 765 | `result-track:23f80d0160933d780b3de5852b327743ead8f7777e07eed903e017efe15eeb9b` |
| 46 | `theorem` | [deriv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/deriv-fourierintegral.md) | 788 | `result-track:62a7051d188c518b0ddee07759ef1cb809b63ac04f36c2e0381bc3c67fc24043` |
| 47 | `theorem` | [fourierIntegral_deriv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierintegral-deriv.md) | 796 | `result-track:fee90e38de99f583d233afa4c38740b55c32fd447fa8835042e24dc3feffc76b` |
| 48 | `theorem` | [iteratedDeriv_fourierIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/iteratedderiv-fourierintegral.md) | 808 | `result-track:9933f2bfd3505d09025d2df949cfce273c45a64eb1deccad6e7f9a7d8081bea2` |
| 49 | `theorem` | [fourierIntegral_iteratedDeriv](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierTransformDerivNamespaced.lean/declarations/fourierintegral-iteratedderiv.md) | 824 | `result-track:9a737babdfd59deb765fb77f8fa1df557ce26b0eda64aa45a8667ec9c89f07af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f52db9c10103dbf8fcaed593607cfdec4aa2cc2c186556fd50880c01a1a83d4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FourierTransformDeriv/Variant443ffe4c8b32d3c70a2d777807eada6c9cd0cd329e7344509cd77c0de3444646.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
