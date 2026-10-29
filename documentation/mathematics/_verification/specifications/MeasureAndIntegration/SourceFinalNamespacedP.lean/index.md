# Verification target: Source Final Namespaced P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27bb206ef9c9fe0867f26cac058b52d30f83a38b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27bb206ef9c9fe0867f26cac058b52d30f83a38b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/p.md) | 23 | `declaration-track:e538297016d36471ac8e37487b5d1b317436b4cdc40a608cda57d538dfc88eaa` |
| 2 | `abbrev` | [a](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/a.md) | 24 | `declaration-track:1687b78e40fbc38dbe12b4321b6e4d3fe91f8faf2bb2af3026afc98201b63861` |
| 3 | `def` | [firstTerm](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/firstterm.md) | 26 | `declaration-track:7ce27863d2fe519156e6b2a9ada25e3e809f3782b70e0f3ef779eecca09cb2c3` |
| 4 | `def` | [secondTerm](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/secondterm.md) | 28 | `declaration-track:e24039a14e78b06724623a29700bbe7b8c010f11246f627fb86dca7e9473eefb` |
| 5 | `def` | [firstSeries](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/firstseries.md) | 30 | `declaration-track:511da9030c56845dde7cae0b8830cbc526818605a798f2c5fe176c4620b731cb` |
| 6 | `def` | [secondSeries](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/secondseries.md) | 32 | `declaration-track:656fdf5f9e51f54d6cd553d9bfca9ed96a0f6b3abb1c776040ffc143b130e14b` |
| 7 | `def` | [weight](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/weight.md) | 34 | `declaration-track:e0d1e9dc4f56240a053bfa56fc0edf0caaa8ff96071ca2b04d0242b8f7324612` |
| 8 | `theorem` | [weight_eq](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/weight-eq.md) | 36 | `result-track:8c79fe3f30515bcb137add625722b352f824a5ce7c5939b70fb9b227648cfe60` |
| 9 | `theorem` | [weight_summable](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/weight-summable.md) | 41 | `result-track:a71f2abfb4fdcee06202bf98bf20c261f98130bf6e974d4125e49d0735425c4d` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/pairedterm-hasderivat.md) | 46 | `result-track:388b6592e70205726251ce6eff7999432cc5c508d60985e20f7f83c57ca0406a` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/firstterm-hasderivat.md) | 63 | `result-track:a4565b61cf2e46dce932d2cd859a81388e6ae75c82237b66d283a97d08c70ace` |
| 12 | `def` | [lowerCoefficient](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/lowercoefficient.md) | 81 | `declaration-track:2a8901476327b6596f37d03cfbfcb1869938778225ffce54bf94ab3b108b7ee5` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/lowercoefficient-pos.md) | 83 | `result-track:b0aa5a1a1687b15edf4df4c4b8714dd03dcbfc30a65ed258f3ca4f807912ba19` |
| 14 | `theorem` | [rate_lower](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/rate-lower.md) | 86 | `result-track:381d7a1dff1ac707a7518ba8e7f6397546bdddfb8fcaa5ea5e04a54d88f3bd0f` |
| 15 | `theorem` | [firstTerm_bound](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/firstterm-bound.md) | 95 | `result-track:8644130a7d18feb1bbe42d9a398cd2c2fb227b0a62a0382f954e6ceba60b3220` |
| 16 | `theorem` | [secondTerm_bound](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/secondterm-bound.md) | 124 | `result-track:a1371b71067a1e3f4aa71dd1ffb68d558913d2cabf21ed82213ad5d132ca4fcf` |
| 17 | `theorem` | [firstTerm_summable](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/firstterm-summable.md) | 141 | `result-track:d2930fce74ad3ecc49f8259cf58e2bcab780187f974f90c1af490faab3be7292` |
| 18 | `theorem` | [secondTerm_summable](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/secondterm-summable.md) | 148 | `result-track:24f9b7abea91210347e5cd333ec169af5e80dfbdd5fe9996a9783ce75db78287` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/actualprofile-hasderivat.md) | 154 | `result-track:a9685283535c2a1063b060d08de368d5787adad4b0628a72ed2a5bf90d7a3bfb` |
| 20 | `theorem` | [actualProfile_deriv](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/actualprofile-deriv.md) | 169 | `result-track:dd9ae32d44ff9ea77238bea7662c8147aff6c8bcfd461e81cd25f763ac8ece2c` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/firstseries-hasderivat.md) | 172 | `result-track:7432b980a87ce2f4b9c61886a51649dcae0d51c797118c49e8983060d91b0632` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/actualprofile-second-hasderivat.md) | 184 | `result-track:6a420dc9779603fb817407fe26eb1c3b97d78ddda58c4d1de0cbdd6aad49fac8` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/actualprofile-second-deriv.md) | 190 | `result-track:1f4cc757b3a2670c81e87003aae93f2b10a08bc00f81569508bf0a845ef9c6fd` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/secondterm-nonneg.md) | 194 | `result-track:f04e5eb177c60fa82282d780627f7b8d5bb969fa182822f7b66c1df3871049eb` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/exponential-firstmoment-integrable.md) | 198 | `result-track:5ebecc76cbf4b2bd1a8e1df3ffb9a389ba20d2c840533c49633f759060a13307` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/exponential-firstmoment-integral.md) | 211 | `result-track:28fa434c33e9d549a181db0c76aadb34ca2df8ca983ca017a8ec29dd77097342` |
| 27 | `def` | [momentTerm](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/momentterm.md) | 219 | `declaration-track:15622d3fce44eee76fd0afbf5b26bc6e7eb3845cdd446530297677393ba449bf` |
| 28 | `def` | [curvatureKernel](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/curvaturekernel.md) | 221 | `declaration-track:cccb58e605713ff15cfecce0beb9229ab391536490401bf22344c20216c47b92` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/momentterm-nonneg.md) | 223 | `result-track:18ea1ed4982e9e33657aeef1871f4ad8058caef14450cd0383fa95d0439ea1ce` |
| 30 | `theorem` | [momentTerm_integrable](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/momentterm-integrable.md) | 228 | `result-track:33c4a56975934c034d14649552cf192f7bfe3f1d159422c4795845712b11979a` |
| 31 | `theorem` | [momentTerm_integral](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/momentterm-integral.md) | 233 | `result-track:c4cb8f40fb29791ff050bfd40d62947b81b966a847b39e41ecb057cd97ae5bf3` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/momentterm-hassum.md) | 238 | `result-track:0864f583a0f9dbea3e80128a89c55b3878163c15bdf47a4b3c32ea344b7c7549` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/curvaturekernel-continuouson.md) | 254 | `result-track:a346d979bb5fb02d41fcaf2a27b3b872eb6354f048b82cd5adb9d8896cf733cf` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/momentterm-integral-norm.md) | 261 | `result-track:5ce76352f666215cb3a526357034d460d5d5722269f46d5a5b55f2716cfcf420` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/momentterm-integral-norm-summable.md) | 269 | `result-track:62ac8cdc836ae36aa785ee2baa572405e49159d672ada2484cea4e0457511478` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top.md) | 277 | `result-track:02ae72538b15812fbbe42e9b71a40e368fbc844fa47d3c797168c2b56a166275` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/curvaturekernel-integrable.md) | 289 | `result-track:1f8f32beba52e8141724e738173f5e22dc507f2bc0ce5d23b90aa717169e276c` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/secondseries-eq-curvatureintegral.md) | 303 | `result-track:86eebaec847972d3ebbc96256c50802f0730d91c1403d24a80bc5459445890e0` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/actualprofile-second-integral.md) | 314 | `result-track:f54da1f0d4be8b89de8289cc31be4bcf0380694bc7560c953571ab95bb84d271` |
| 40 | `theorem` | [curvatureKernel_pos](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/curvaturekernel-pos.md) | 321 | `result-track:e0f7b76a19a640285b8f40a6eb9d9767e3856b1a7a50b0af52d26dffcf6c4427` |
| 41 | `theorem` | [secondSeries_pos](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/secondseries-pos.md) | 326 | `result-track:fcee1d3ea26828d44c17a41692fe78c6f2f6b519004ad956c1606a387f4c725a` |
| 42 | `theorem` | [actualGamma_second_derivative](../../../../MeasureAndIntegration/SourceFinalNamespacedP.lean/declarations/actualgamma-second-derivative.md) | 333 | `result-track:736399d7afbc194ba0093c87391abae1056e3acdf5d6b76c61c96c140501aa92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=216bfc45b12bd4629580b29dbb6d65db5286edfde5940a9e5d35d90c76ef73c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
