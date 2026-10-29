# Verification target: Source Mangoldt Work Scale Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "849e4d53f69ea7b60346bd2e409b23ab243207c8",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `849e4d53f69ea7b60346bd2e409b23ab243207c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeMomentScale` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuousHalfDenominator](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfdenominator.md) | 35 | `declaration-track:f2d6db4240bd1a2caa15124be7ade6b9cc9b7e4c5b7f752eaf11444dc4f9f843` |
| 2 | `def` | [continuousHalfRational](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfrational.md) | 38 | `declaration-track:edf95e6565f39fcda2404a46ee0b140b62d44ce986e29f1bad29f4d6e9601678` |
| 3 | `def` | [continuousHalfScaleDerivative](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfscalederivative.md) | 42 | `declaration-track:4169d33e7ff7417318c75b4dbdd7691fac779b5ec1330c41e7da9f2f364729c7` |
| 4 | `theorem` | [continuousHalfDenominator_pos](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfdenominator-pos.md) | 46 | `result-track:45c66108591c393ecec6f9d6148534aa83e1fabc49c3fd7f4e7ef7001eb69461` |
| 5 | `theorem` | [continuousHalfRational_hasDerivAt](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfrational-hasderivat.md) | 51 | `result-track:5d4e72b1df205a6a3daf20fe50b6a1d52434624f38dedcdefb330a3a056eb7fc` |
| 6 | `theorem` | [continuousHalfRational_contDiff](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfrational-contdiff.md) | 63 | `result-track:c31924e45ff0a9ebdb8f34a07630651d2589e423069397934cbe6cf4342c9b2f` |
| 7 | `theorem` | [continuousHalfScaleDerivative_continuous](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfscalederivative-continuous.md) | 71 | `result-track:ebe8545ac458fc8669f73feb8dda25980b19b6038d54b5dd08389eea6e22a1c0` |
| 8 | `theorem` | [continuousHalfScaleDerivative_lt_zero](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfscalederivative-lt-zero.md) | 80 | `result-track:8ea85defc67688f7e4abd4894a4c557073397e2513b8d118edeea1e51e95d3e8` |
| 9 | `theorem` | [criticalContinuousMoment_eventually_eq_rational](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalcontinuousmoment-eventually-eq-rational.md) | 91 | `result-track:0dff7cf69fc0d2ebf0435aab9a09a819fee11399a2bb82ee9a55082a93f6b914` |
| 10 | `theorem` | [criticalContinuousMoment_hasDerivAt](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalcontinuousmoment-hasderivat.md) | 97 | `result-track:98c742f1623dacd2337c9ce2038ee2c16a2c6d5f8c35780d29f22d9338fdfee8` |
| 11 | `theorem` | [criticalContinuousMoment_contDiffAt](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalcontinuousmoment-contdiffat.md) | 103 | `result-track:4975610fd187986c11bbab84c351acfbbdf8e084955b79114b81fc3fdaa3ba34` |
| 12 | `theorem` | [criticalContinuousMoment_contDiffOn](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalcontinuousmoment-contdiffon.md) | 109 | `result-track:6b4fcce8f01118ba4499c729d63f4595c040dde5da9e268dcae48902948855dd` |
| 13 | `theorem` | [criticalContinuousMoment_deriv](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalcontinuousmoment-deriv.md) | 114 | `result-track:a2bedb6198a856deb16ad4524180eb5cb791a538ef0fac7fe71923771d096f6d` |
| 14 | `def` | [mangoldtWorkScaleDerivative](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/mangoldtworkscalederivative.md) | 119 | `declaration-track:071e0a3c4c46aa6cfd9fba3cd6e339b5390d28e0a49b08c705d85c7d09cd4fde` |
| 15 | `theorem` | [criticalMangoldtWork_eventually_eq_sub](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalmangoldtwork-eventually-eq-sub.md) | 124 | `result-track:91e173f091b40b3d3a605ece1f7db58d208cecf50c880bd46a58825e5c590d79` |
| 16 | `theorem` | [criticalMangoldtWork_hasDerivAt](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalmangoldtwork-hasderivat.md) | 132 | `result-track:a65a6f32aa72d92a51d4f06d5abf71fe127a693c21dc95a7ef770f5f788039e8` |
| 17 | `theorem` | [criticalMangoldtWork_contDiffAt](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalmangoldtwork-contdiffat.md) | 139 | `result-track:64b2f91f111a4bcb38f7fa5a291366b8244bea48a2e77218116b3370c1b6c7bc` |
| 18 | `theorem` | [criticalMangoldtWork_contDiffOn](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalmangoldtwork-contdiffon.md) | 146 | `result-track:740a39a384c47f3fa4071d09b1bcedcb2c50c002c7cbd8231ce55b5f55ac3b65` |
| 19 | `theorem` | [criticalMangoldtWork_deriv](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalmangoldtwork-deriv.md) | 151 | `result-track:52ac04968f428b22fab2dce43b46f116b2f546e8c40f7d3bb8333e0d97220b7c` |
| 20 | `theorem` | [mangoldtWorkScaleDerivative_continuousOn](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/mangoldtworkscalederivative-continuouson.md) | 156 | `result-track:9997f084ec641bd5dffa3a681b989565ed4fb28267f13eadd95aa14aa902d0a3` |
| 21 | `theorem` | [uIcc_subset_scaleDomain](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/uicc-subset-scaledomain.md) | 164 | `result-track:79d6ed9db24777aa882c098ddffd760db0d8ac28e7ba4b073db9839750619efb` |
| 22 | `theorem` | [continuousHalfScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfscalederivative-intervalintegrable.md) | 172 | `result-track:4a883012eb64891439868c31a771b2bc6dd51efd509c42f3e71086ead21cc13b` |
| 23 | `theorem` | [closedPrimeMomentScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/closedprimemomentscalederivative-intervalintegrable.md) | 177 | `result-track:94b24cf5dde6823a7e23b40430c287b9bc5d83b93a9de5ee53afe9fb60fab08f` |
| 24 | `theorem` | [mangoldtWorkScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/mangoldtworkscalederivative-intervalintegrable.md) | 187 | `result-track:51f9e5795be26ee0723e4392a8b5fda67c54da4d3ca1e0bf17d849cfb46b82d6` |
| 25 | `theorem` | [criticalContinuousMoment_flux](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalcontinuousmoment-flux.md) | 194 | `result-track:bd3b09b68b71df7a2e59d1863f6c147df4ba3ce3edbc6d6f76d192959dafbe88` |
| 26 | `theorem` | [criticalMangoldtWork_flux](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalmangoldtwork-flux.md) | 202 | `result-track:159587fa862fda634e300baf2fd1740236ba358257035d9b5b92443b7c9d8f0d` |
| 27 | `theorem` | [criticalMangoldtWork_flux_eq_sub](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalmangoldtwork-flux-eq-sub.md) | 210 | `result-track:ede96f99a1aa6e0e3f87add795be44105cd3fada29a8866c3a65d02b8ba73e2b` |
| 28 | `theorem` | [continuousHalfScaleDerivative_flux_abs_lt_two](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfscalederivative-flux-abs-lt-two.md) | 219 | `result-track:7498867809ea74107defafc2f6863d76650c38cddd2f7cf8dd26a91354574a77` |
| 29 | `theorem` | [continuousHalfScaleDerivative_flux_nonpos](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfscalederivative-flux-nonpos.md) | 228 | `result-track:eb31b096b5c8acaea566d65cf3467b3261549a4d1be81c5b82064247c43e083a` |
| 30 | `theorem` | [continuousHalfScaleDerivative_flux_bounds](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/continuoushalfscalederivative-flux-bounds.md) | 240 | `result-track:bfcb65311e5a27a60d2b289fb7444e8a86fe380e9eda6d7fcf177fc416085d24` |
| 31 | `theorem` | [criticalContinuousMoment_antitoneOn](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/criticalcontinuousmoment-antitoneon.md) | 248 | `result-track:22eb8cc14ee8147a61e4316fc23dec5be566a83ad518852db3b2ad3da2568e73` |
| 32 | `theorem` | [negativeContinuousHalf_monotoneOn](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/negativecontinuoushalf-monotoneon.md) | 255 | `result-track:2c2c3901d79e7179387fdda21562b7181bc2eead31e3f1dfd5f970a3b1c675e8` |
| 33 | `def` | [IntegratedMangoldtWorkTailLowerBound](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/integratedmangoldtworktaillowerbound.md) | 261 | `declaration-track:a8efbe4760ef853c7abe1c888acd1310f3f983bf2f54b2f0e47209cb9ed9a4a7` |
| 34 | `theorem` | [work_tail_of_integrated_work_tail](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/work-tail-of-integrated-work-tail.md) | 267 | `result-track:1876e1c6511642d8a7f444a52a213be73d9579bb4e892387580ef5bbc22487e5` |
| 35 | `theorem` | [integrated_work_tail_of_work_tail](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/integrated-work-tail-of-work-tail.md) | 279 | `result-track:42c593cc93b4fb75f715c8e76d6c71fbdb60df649f04f9c779a3775228505780` |
| 36 | `theorem` | [integrated_work_tail_iff_work_tail](../../../../MeasureAndIntegration/SourceMangoldtWorkScaleNamespaced.lean/declarations/integrated-work-tail-iff-work-tail.md) | 294 | `result-track:197729ab963f5c45265b8f1592c77a3b6c1b0c6924ab0f6dc734270aeeef96dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7914e89d6470b033845a5768fbe2961036cda6793875dfed5d32860cfad25650 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/25SourceMangoldtWorkScale/Variantb1bfceb87f7b9811d6b64ba30f73c9cd013b12b9edf93d1f641fa5225601d6f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
