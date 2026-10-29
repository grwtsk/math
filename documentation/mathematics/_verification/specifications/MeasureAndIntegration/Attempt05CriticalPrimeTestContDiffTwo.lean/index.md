# Verification target: Attempt05 Critical Prime Test Cont Diff Two

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe131e0be72ce618ed57e2215374c4360c9c2211",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant4fd8c9eeebba845e0245a58a31770dec4a7e9b7fec27236671ffd745271f2736.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe131e0be72ce618ed57e2215374c4360c9c2211`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant4fd8c9eeebba845e0245a58a31770dec4a7e9b7fec27236671ffd745271f2736.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant4fd8c9eeebba845e0245a58a31770dec4a7e9b7fec27236671ffd745271f2736.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/criticalprimetest-contdiff-two.md) | 27 | `result-track:5997688f7bfbb6572fe5b8552d979873caa01f1cf4cb78e49a7ccd45962f42e1` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/criticalprimetest-deriv-lipschitz.md) | 33 | `result-track:21ee1850191e9be42e68fed9cb436bfa22bfce71c6326e19088eca44c8d68ee2` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/actual-slope-phases-lipschitz.md) | 42 | `result-track:8e86af54007ffd8d8e74f1941ccae6262ac2da07572da19dfe11df09b2070c7f` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-lipschitz.md) | 49 | `result-track:ba22b4408e67d8b5180dc772134932815c24f937a28b98f7e0579a156b68ccfe` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-absolutelycontinuous.md) | 65 | `result-track:1a4c1ed2a3d5916b62b7e5e2fc36be2ebeaa2d9504e42e67dcd2531faf0dd80b` |
| 6 | `def` | [pairedTailCurvature](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature.md) | 80 | `declaration-track:8b7a3212faa220cdcf2cb069c483c3226e535273e4d7206ed80fae0650b43272` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature-intervalintegrable.md) | 82 | `result-track:44b96f2aa8c5005d4277d782bbff20a40e6397fd4394e725feb686131522a9ad` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature-ae-hasderivat.md) | 86 | `result-track:fc981297c6f1e455313820e6aeb6600a7c6a66529689ddac20d0da8f9d5d4f7f` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-integral-zero.md) | 94 | `result-track:920e0c4f660315692cee9a673c255152353c3ce9d1aa4d8b23dbe7b61997f0c7` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/actual-delta-pairing-intervalintegrable.md) | 102 | `result-track:87ea33cfd017097375b945a7cbe0feabb4e151805750e97c03246649b2aee283` |
| 11 | `theorem` | [actual_first_Abel](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/actual-first-abel.md) | 110 | `result-track:f1f64888a38cc3122e5377267dc79e586e48de5019893aeaa0264e4bcd3e950c` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/actual-bridge-curvature-intervalintegrable.md) | 147 | `result-track:02b8f4ce4e38106f21c30b949610505ec98ec04711bb04cf089faffd42d30f4a` |
| 13 | `theorem` | [actual_second_Abel](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/actual-second-abel.md) | 155 | `result-track:8aaa7cf2708df39b848c601cbc981a48c5c6874818ad86bc7d45ae68b26a4507` |
| 14 | `def` | [negativeCurvatureWork](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework.md) | 182 | `declaration-track:a0ebd89896886d8687194af7b7968afe33397d63c37e0b694c57218a755e934b` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework-integrand-intervalintegrable.md) | 185 | `result-track:2e413391802145af19ddab1721a182cc09c51200766c2b7ec08b4b3041cb192c` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework-nonneg.md) | 200 | `result-track:906b5fddcb7d76f58baf3f5655627476e5e0e6b0f18af09b38149d4629c827e7` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/actual-work-ge-negativecurvaturework.md) | 205 | `result-track:0663dbfa937a6164087105f0b3504149a1d3ccdbab7fd3596102e015c78e3f41` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturetailbudget.md) | 221 | `declaration-track:8fd30fae282cee224422024694b617e341d693b5ec031cdcdd57d77b1f304f64` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/actual-tail-of-negativecurvature-budget.md) | 224 | `result-track:7d0d1b2e74a4b659f80491b131c1320651c568882caa451bdbf2b142ada027fc` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../MeasureAndIntegration/Attempt05CriticalPrimeTestContDiffTwo.lean/declarations/actual-estimate-of-negativecurvature-budget.md) | 232 | `result-track:ae956d49a0ae5bb0d9964e8deed7da11f517fee3c50fd88d40308a8a11c0d5db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee12646f0bd9cbf6ece721dde52fb6dddf0dd3a52896861c5237c4f685c0a76b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant4fd8c9eeebba845e0245a58a31770dec4a7e9b7fec27236671ffd745271f2736.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant4fd8c9eeebba845e0245a58a31770dec4a7e9b7fec27236671ffd745271f2736.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
