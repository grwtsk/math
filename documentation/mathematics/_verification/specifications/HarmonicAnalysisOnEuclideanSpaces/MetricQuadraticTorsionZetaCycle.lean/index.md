# Verification target: Metric Quadratic Torsion Zeta Cycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ea9409bb694d1d8a69795fa8cdfe2ad1a18310c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ea9409bb694d1d8a69795fa8cdfe2ad1a18310c`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Analysis.CurveTorsionGodelLoopCarrier` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ScalingLaplacianQuadraticMetric](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/scalinglaplacianquadraticmetric.md) | 27 | `declaration-track:63d96ba3485b7fc40739ea303a2f5a47d81f82b78ea994309e39b752a62b6a9b` |
| 2 | `theorem` | [scaling_laplacian_delta_eq_quadratic](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/scaling-laplacian-delta-eq-quadratic.md) | 36 | `result-track:3c93481b8952bfc210a7cceff6ca06a011bb5db75d4f5f35375e271b0e7bb558` |
| 3 | `theorem` | [scaling_laplacian_quadratic_reflect](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/scaling-laplacian-quadratic-reflect.md) | 44 | `result-track:497205d725cf8368ddb8e938a4c695555798378d586c50883e97964d34157f25` |
| 4 | `structure` | [CriticalFrequencyMetricCarrier](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/criticalfrequencymetriccarrier.md) | 52 | `declaration-track:6ffd0fa90d65cfadfd3c94ebafe090c5c66d01c2f20777a51ca1cfc53d437d3e` |
| 5 | `theorem` | [critical_frequency_metric_value_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/critical-frequency-metric-value-eq.md) | 61 | `result-track:fcb6f821f597d57bfd48c3d4aa770268eaee4179aaf08e03938bd308abef46e2` |
| 6 | `structure` | [ClosedPhaseCondition](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/closedphasecondition.md) | 68 | `declaration-track:82439a2a28294fa31e3f81e782a6e7743e1d730fd07830c26771f2ee8dcff68f` |
| 7 | `theorem` | [closed_phase_condition_eq_one](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/closed-phase-condition-eq-one.md) | 77 | `result-track:9ef65db1e5d666d7c2c440296c34d8d3e4bb43b1205faf15f637e178e9290b83` |
| 8 | `structure` | [ZetaCycleLengthWitness](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/zetacyclelengthwitness.md) | 84 | `declaration-track:d70265e85ea123ecadeb11eea16b084b34ffaa011f0eacbe0cc5241716d46d3d` |
| 9 | `def` | [ZetaCycleLengthWitness.toClosedPhaseCondition](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/zetacyclelengthwitness-toclosedphasecondition.md) | 93 | `declaration-track:03172a2bae2e8eccd1f821d2acfcaf447390117047a963855fcaf6239f5ec4d7` |
| 10 | `theorem` | [zeta_cycle_length_witness_closed](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/zeta-cycle-length-witness-closed.md) | 104 | `result-track:60a9d8a942c5e48377c162b676e9caa0ca30d3e523673f96e7d8cd0899ca048b` |
| 11 | `structure` | [ScalingLengthCover](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/scalinglengthcover.md) | 111 | `declaration-track:7e5c5933764e2c38bfa6857f75c30f40f3f4e71dd9fbb2b72d30ccc764e4210a` |
| 12 | `theorem` | [scaling_length_cover_one](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/scaling-length-cover-one.md) | 117 | `result-track:51d6c0905aade3e4ef82cb22a1ab245d4a1877945569edba3b62c0aad3153d0f` |
| 13 | `theorem` | [scaling_length_cover_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/scaling-length-cover-mul.md) | 125 | `result-track:60678f4c5bd294dc49fca5dd743f50fb56b30ed87b29a755b6df3c0a2e2fa14f` |
| 14 | `structure` | [CoveredZetaCycleStability](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/coveredzetacyclestability.md) | 133 | `declaration-track:aaef34ac08ecdc79f42fc8725904a73f70783e6351fb28309d1b78168b81e3b6` |
| 15 | `theorem` | [covered_zeta_cycle_stable](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/covered-zeta-cycle-stable.md) | 143 | `result-track:7de26298efbad2346b7feab1fd35007c895a575aa624d78c716d0bfbd4e7ab25` |
| 16 | `structure` | [MetricQuadraticTorsionBridge](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/metricquadratictorsionbridge.md) | 152 | `declaration-track:7c9b6deae008674db8059886dd15eae69ec83d378e93afe2b6f75e97fa21a37b` |
| 17 | `theorem` | [metric_quadratic_torsion_bridge_phase_closed](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/metric-quadratic-torsion-bridge-phase-closed.md) | 161 | `result-track:e610f3a927e105609b4456dbcf4deed6c721cdca92c0d6abe819dce2f962db43` |
| 18 | `theorem` | [metric_quadratic_torsion_bridge_orbit_closed](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/metric-quadratic-torsion-bridge-orbit-closed.md) | 170 | `result-track:ed62ed74cb36d8bed26efea66e00904a32aa9965d82a1d1a7704399d266f85de` |
| 19 | `structure` | [MetricQuadraticCurveTorsionBridge](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/metricquadraticcurvetorsionbridge.md) | 180 | `declaration-track:4a698702516493c7c0a2ed72ad6ed5b01b9748ae45c2252dd2493767e296e74b` |
| 20 | `theorem` | [metric_quadratic_curve_torsion_eq_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/metric-quadratic-curve-torsion-eq-zero.md) | 191 | `result-track:1517a91b9b20e9f8759f23daac1381e204e535f54c1c9ed27c9c9782f7d539c4` |
| 21 | `theorem` | [metric_quadratic_curve_torsion_phase_closed](../../../../HarmonicAnalysisOnEuclideanSpaces/MetricQuadraticTorsionZetaCycle.lean/declarations/metric-quadratic-curve-torsion-phase-closed.md) | 203 | `result-track:666da57aec5113be3281fe485beb8fc3d5b5a71ea162fe6fcaba5c837091aee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56d23a27a15e1d1b4825fafa1d0023e1498a3bb2e0ad16776d8609232ebe01aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/MetricQuadraticTorsionZetaCycle/Variant2b8cbad4cbe5e1da346f627b3894fddbc111270855bade44993698af77173624.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
