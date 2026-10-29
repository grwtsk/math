# Verification target: Fixed Source Filter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25ffbc6faea99aa010fa5c347b3a43f371133fdf",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FixedSourceFilter.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FixedSourceFilter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25ffbc6faea99aa010fa5c347b3a43f371133fdf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PoleCancellation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedBump](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/fixedbump.md) | 16 | `declaration-track:1fa40f248e47cf0610780723158e8a1073e261a773de4c4b39270734d1815912` |
| 2 | `def` | [fixedBumpFirst](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/fixedbumpfirst.md) | 19 | `declaration-track:dfbeb53358831333e125e13ad59733dd1c19dc52b2aa39eae29fb3de73e70a7b` |
| 3 | `def` | [v](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-source-edition-2.md) | 22 | `declaration-track:9685b9507ba7f982d7ae3ca6a6309cb060ace955800d1783275b1eecc779ba4f` |
| 4 | `def` | [V](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v.md) | 25 | `declaration-track:3c6c06e9706fdcb434209663c2dbf66595aa34f4e594fcecd3c00f8d26e5c59a` |
| 5 | `theorem` | [sourceNormalization_one](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/sourcenormalization-one.md) | 27 | `result-track:c3428fbab4b36e95db250360df8b69c202cef5ab3dec1fd61d04d3dea561d283` |
| 6 | `theorem` | [fixedBump_eq_scaled](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/fixedbump-eq-scaled.md) | 30 | `result-track:5b45c5eb6f7070c36954b322dbed42eb927254f40eb69ecd33abed1663563a08` |
| 7 | `theorem` | [fixedBump_weak_second_derivative](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/fixedbump-weak-second-derivative.md) | 34 | `result-track:e326009eebb20f31001cf2de46c735d16b6e131f25f6207a0d6bc38859ed176d` |
| 8 | `theorem` | [fixedBump_hasDerivAt](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/fixedbump-hasderivat.md) | 39 | `result-track:78950ba17eac1774035f21611393e6423bff9d016bf71207f5fba7d1baa6a987` |
| 9 | `theorem` | [fixedBumpFirst_hasDerivAt](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/fixedbumpfirst-hasderivat.md) | 46 | `result-track:126d556853c91019e3cc4d87804927b24821fc2d4df74aa7b1b1cd349d96e7ac` |
| 10 | `theorem` | [fixedBump_deriv](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/fixedbump-deriv.md) | 53 | `result-track:b233aa7e1c7f3e2089826b1f7a5610e0d00405a1d77f2d80cfb607fc67538fd0` |
| 11 | `theorem` | [fixedBump_second_deriv](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/fixedbump-second-deriv.md) | 57 | `result-track:15697946bb489e3a58afe5b1ea2edc325e644d20bc729f5c674b7d1130c27b04` |
| 12 | `theorem` | [v_eq_fixed_differential](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-eq-fixed-differential.md) | 62 | `result-track:f4a1be129a67f25b608a16b6f2f0528a1d59a90b34251489ebcf5ab23ac472cc` |
| 13 | `theorem` | [v_contDiff](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-contdiff.md) | 68 | `result-track:c8d72e8eb003f55bc2a58a55a2b2504d5e35bf6cd0a38a3578da5dd2cecd252b` |
| 14 | `theorem` | [v_hasCompactSupport](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-hascompactsupport.md) | 70 | `result-track:8d1352b29ec46b49521552577adb24248cbafadba927acecebdf16b8584bfde2` |
| 15 | `theorem` | [v_zero_of_one_le_abs](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-zero-of-one-le-abs.md) | 73 | `result-track:134bdf523d169c15d77a7146afb88888eeebb8b4a5a7b51b413631f82a95da22` |
| 16 | `theorem` | [v_support_subset](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-support-subset.md) | 76 | `result-track:1708e071cbaf258bec9d3be15e71c04a2733087ce457def2b8645552f7ba3c4f` |
| 17 | `theorem` | [v_even](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-even.md) | 86 | `result-track:ca1b0961cea79f95666e1b50ab654c1de6f474c200cd574afbaa13c2f5082e09` |
| 18 | `theorem` | [v_integrable](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-integrable.md) | 88 | `result-track:1091c4f662e95cce691233d2de30fe4f1fa899f0aa753fec1718068de54e4dfb` |
| 19 | `theorem` | [v_memLp_two](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-memlp-two.md) | 90 | `result-track:14d14f5ceb8824b8de4d8331bfc5e151d3d13198ac65d757c21eeb745703dbcb` |
| 20 | `theorem` | [v_square_integrable](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-square-integrable.md) | 93 | `result-track:464d4814e9c4fc1ae7dda88611761061bac1d96fa84b6633dd4817b422393dbe` |
| 21 | `theorem` | [v_square_integral](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-square-integral.md) | 96 | `result-track:0b417728c0e75b6802c3cf61567235bd4fae8c0dedab4a66a5f8dc7a30ff938b` |
| 22 | `theorem` | [v_deriv_hasCompactSupport](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-deriv-hascompactsupport.md) | 98 | `result-track:216b01900fe8782755ae11dcc153b1a75a8ff8df5272cd2387f7f433b6c45f51` |
| 23 | `theorem` | [v_deriv_bounded](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-deriv-bounded.md) | 100 | `result-track:f742e4802a67ddb9d34fbd818d6a4fb54cfdb6893f645a7141211b9b9fffd9bb` |
| 24 | `theorem` | [v_complex_eq_actual](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-complex-eq-actual.md) | 103 | `result-track:fca9ffe55d00944908447bb3c9287a4f3924d691bda05c44ee4c589b51c11261` |
| 25 | `theorem` | [V_integrable](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-integrable-source-edition-2.md) | 107 | `result-track:5770f5ea60d00fbb498385b4eb4d8a134782d62043d58daa24ae87410c17dab0` |
| 26 | `theorem` | [V_eq_bilateral](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-eq-bilateral.md) | 116 | `result-track:303f59262d92e9393d242815174edf85bf074f225de0100b30aa2ce05324423e` |
| 27 | `theorem` | [V_eq_closed_formula](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-eq-closed-formula.md) | 125 | `result-track:cafff5e73e73d0b3a204df8eb39a81527747709c3367be32e48970b3614feaa0` |
| 28 | `theorem` | [V_positive_pole_zero](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-positive-pole-zero.md) | 129 | `result-track:10baf160bb9b50493be0543c7b76651b1936b177c37570a49dd7a97f9097c2c2` |
| 29 | `theorem` | [V_negative_pole_zero](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-negative-pole-zero.md) | 132 | `result-track:bdaeab92acb24a6c224f65bbf0fcca6ff0f6540d093744f9733f340d77687975` |
| 30 | `def` | [removedFilter](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/removedfilter.md) | 137 | `declaration-track:15822d5177426d48305d0ae7bcfd21427f45dba7139dab6fbb7605db89a53dc5` |
| 31 | `def` | [positivePoleSlope](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/positivepoleslope.md) | 143 | `declaration-track:9ce27926dd0e15f3a49cb493cf6b7c5e30d3cbea12b5fadfcf259ab574dafcbe` |
| 32 | `theorem` | [V_eq_removedFilter](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-eq-removedfilter.md) | 147 | `result-track:d91433147ad4bab1d916e43ae2bbdce84e1f2c72493571a56e2c324a95ba86e9` |
| 33 | `theorem` | [removedFilter_differentiableAt](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/removedfilter-differentiableat.md) | 153 | `result-track:ee667b70f2bfa7f2841713fd5428eccbec347aaff7c8d66584c116caa465e15a` |
| 34 | `theorem` | [removedFilter_positive_pole](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/removedfilter-positive-pole.md) | 160 | `result-track:7499f2029c4a560f0f2f0a1f30e72e45e2f87fa6fa8adc8199a912b108cb4fd4` |
| 35 | `theorem` | [positivePoleSlope_pos](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/positivepoleslope-pos.md) | 165 | `result-track:95f56ec4169ad0c80030b5bd724173f3d41a5670d07c7f7efd1ca2971b3ac4d5` |
| 36 | `theorem` | [V_hasDerivAt_positive_pole](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-hasderivat-positive-pole.md) | 179 | `result-track:1ad1343aba6c905151b70e852234b075a3fe3e158507dbf606d5182d01e04a90` |
| 37 | `theorem` | [V_deriv_positive_pole](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-deriv-positive-pole.md) | 191 | `result-track:2fa8893c860dcee4af96ef786b99632332e4d1c1bc708a79a9ac6ae1b34fae2b` |
| 38 | `theorem` | [V_deriv_positive_pole_ne_zero](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-deriv-positive-pole-ne-zero.md) | 194 | `result-track:7066696947b0b0ed3c39639bdd474286dabf003a0a6d7181b0b74cf84f303ce6` |
| 39 | `theorem` | [V_removed_pole_limit](../../../../MeasureAndIntegration/FixedSourceFilter.lean/declarations/v-removed-pole-limit.md) | 200 | `result-track:155cdbcfcc70e24db1c6bf135446151ebce243313dfc7e379bc83fc73a40bc9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b55f73e1b752d44bfeb7c13c2d6511b84c61093217603d48560a3ef9fe35d3f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FixedSourceFilter/Variant435f1ecce60686b4984216819310bb31ade77ca9e1701c67557ff57dc6c25547.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
