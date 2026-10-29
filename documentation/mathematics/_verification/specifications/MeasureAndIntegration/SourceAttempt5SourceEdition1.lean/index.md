# Verification target: Source Attempt5 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51681f760ab8370c590a6e60ca9d916dd4fc3667",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51681f760ab8370c590a6e60ca9d916dd4fc3667`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/p.md) | 15 | `declaration-track:d9165e408f07dec4abe702d7fcf96aa129f4c7e0e147d16f29d5f9df45afafab` |
| 2 | `abbrev` | [a](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/a.md) | 16 | `declaration-track:9574e850097e2e73b22f64f1ba02978b214316fd64dd2ecebc71b5a8fe7e49d6` |
| 3 | `def` | [firstTerm](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/firstterm.md) | 18 | `declaration-track:a6a0ef3cf36048d576be11f5283182794fc4c8d69891fca5ff73a490fffa0401` |
| 4 | `def` | [secondTerm](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/secondterm.md) | 20 | `declaration-track:a27c36665058623f4d06e8627fa3df93920b3940936bf2bd0da04dfd8999b053` |
| 5 | `def` | [firstSeries](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/firstseries.md) | 22 | `declaration-track:0f265b2f9b8b7e5fc3dc7e7139c3cf1569fd2d08afb858b2a1bf13d25bf4a65b` |
| 6 | `def` | [secondSeries](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/secondseries.md) | 24 | `declaration-track:55d81aee7968c6d7833e23aed2fff49628c8af8e9fa2382aa2cc925a09362814` |
| 7 | `def` | [weight](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/weight.md) | 26 | `declaration-track:693f3d0e48ca13ab30b1c9f3d90b3cba84f04f0f1a8e474c7e760d83fd71c14c` |
| 8 | `theorem` | [weight_eq](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/weight-eq.md) | 28 | `result-track:6b37e5d7f7f45fd8febd7ae8b72126b33b512f7a110b952e7aec8fcd78bb07b9` |
| 9 | `theorem` | [weight_summable](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/weight-summable.md) | 33 | `result-track:db4fee5aa3d1e32d23fd977b008ab898bd709b3e3a2ff8d46be2d828b33918c0` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/pairedterm-hasderivat.md) | 38 | `result-track:a2805a4ba355b928137bbacc5a1e40109dee87a19f345496556fff1d9e02803e` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/firstterm-hasderivat.md) | 55 | `result-track:77b8d8f03e215da7a1a674b3cd55b39a7ecada54089ac91b457ed8e61769714f` |
| 12 | `def` | [lowerCoefficient](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/lowercoefficient.md) | 73 | `declaration-track:81e58487a3af0ff1ba186f26e7ae57ec9b680e5e6ab53760b42e2c86b20a1cc9` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/lowercoefficient-pos.md) | 75 | `result-track:74e8c00378208179eb90b2c6d8bf4f4772954c1a425f907cbe039d61b7e8bb2f` |
| 14 | `theorem` | [rate_lower](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/rate-lower.md) | 78 | `result-track:8dc3ef92d716e4b541cc3addb9c4a88285a36042bb2a30f5b2240487f09ca980` |
| 15 | `theorem` | [firstTerm_bound](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/firstterm-bound.md) | 87 | `result-track:7ec9d34933c953a78b44e2423dd95d19655c56c39207ab33fd370bf751525c89` |
| 16 | `theorem` | [secondTerm_bound](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/secondterm-bound.md) | 116 | `result-track:c6d073fe59b30277f2fe8bacd387c07dd930e5a4bc8e7a78a950d7fd230da69d` |
| 17 | `theorem` | [firstTerm_summable](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/firstterm-summable.md) | 133 | `result-track:fdb835f7e7b851a0b03db008f4db2815e0da19d3c18339920500481a58ed34ee` |
| 18 | `theorem` | [secondTerm_summable](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/secondterm-summable.md) | 140 | `result-track:8a7a19d2524a64d0fae3822993966ba478a6de84d35c4cb50a47eceae17eed2f` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/actualprofile-hasderivat.md) | 146 | `result-track:ef3d5dc0eb437fc4a3cdbf1c7a5dc9304efe16542c452dcc7f0253eb564f5b9f` |
| 20 | `theorem` | [actualProfile_deriv](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/actualprofile-deriv.md) | 161 | `result-track:9cd6d5d68307e1a6cff858ba2ec404d11188554b6dea8963c643296760983808` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/firstseries-hasderivat.md) | 164 | `result-track:51784de86209cc79274269e318119ac254429244f77267d356dc88427fe009fb` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/actualprofile-second-hasderivat.md) | 176 | `result-track:818a8fa6f1f0148be55da422a0999ef999ede126ae73198daeae7c37ad1be2d6` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/actualprofile-second-deriv.md) | 182 | `result-track:f01af1f2546ce70bf94984b81486011d57e500a3c29737a41ca09aceea352f8b` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/secondterm-nonneg.md) | 186 | `result-track:417b588ee5ff1e274ad6d1d516c6a1ea94cd65c3b1ffe96690ff7c319608ba83` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/exponential-firstmoment-integrable.md) | 190 | `result-track:e7ae73490c751a095b062fe16557fa644fc31e6d45a229541ccad61ef0db0a9a` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/exponential-firstmoment-integral.md) | 203 | `result-track:4520259c4274c7ec242d4069d4e68acf07a4176958046638d8b7c71a26ec6ca0` |
| 27 | `def` | [momentTerm](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/momentterm.md) | 210 | `declaration-track:edad19397e7635ae072b5c4e4193439d201c80d5b423f2ffe26de8eb8f404b59` |
| 28 | `def` | [curvatureKernel](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/curvaturekernel.md) | 212 | `declaration-track:5e8615222dfb9c2bcf83d5d23f10cf169ba3b04c5583dfd32f75c9583f5fb2cd` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/momentterm-nonneg.md) | 214 | `result-track:260ac32cd52e25943bdf8e5f7065fa895759945aaf7f8b3fc4af633058168494` |
| 30 | `theorem` | [momentTerm_integrable](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/momentterm-integrable.md) | 219 | `result-track:ab6021dedd61ac6c6d92a67dd47059bfd1ada600348832ad1a8918334012be01` |
| 31 | `theorem` | [momentTerm_integral](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/momentterm-integral.md) | 224 | `result-track:116bd4cd5a194f363dbb4a52ea1a2ff6ae726e7708d1348d4f6be547fad13bc8` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/momentterm-hassum.md) | 229 | `result-track:7f036ce51aad1270c6c82793c4058601e6c8bb454341df021e63641bcb370add` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/curvaturekernel-continuouson.md) | 241 | `result-track:0961a6a5b1c5b978be99b2a6b4ab2afad7dbabb61f3288be22fe35ccf81f383d` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/momentterm-integral-norm.md) | 248 | `result-track:ebc9119525b3c71ce891a0dd656575967437039d8e05239ec36d84c741bc1f72` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/momentterm-integral-norm-summable.md) | 256 | `result-track:ccddfd65ec7e7a39a9126a2db8b039380bd1436fa501ad07a97827c6f4c32211` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top.md) | 264 | `result-track:6dd8c31af6a8a2d1a8464ff7e68d910135153fb4abbc52dc00817828265b9474` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/curvaturekernel-integrable.md) | 276 | `result-track:a8395047c456cbef9185972108125a96e5b8792e20791ba39db9e7083e814107` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/secondseries-eq-curvatureintegral.md) | 290 | `result-track:72d8fd9d1d9d8ee2242f836d959f456ff8b1197a32c4f90b4cd223972c209efd` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../MeasureAndIntegration/SourceAttempt5SourceEdition1.lean/declarations/actualprofile-second-integral.md) | 301 | `result-track:e829d9c8ac481a782e8d42d40bccab64cb804e71a4212f154d33d200754b77b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=767c7763a34e4c04d0770f38d59f8698ae4e607a322cd0e8ee9488e1d27c13a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt5/Variant76b3fe3563c04eb9bea492ba53e86e9c615a2162bffa85439b3fab6da46a2e03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
