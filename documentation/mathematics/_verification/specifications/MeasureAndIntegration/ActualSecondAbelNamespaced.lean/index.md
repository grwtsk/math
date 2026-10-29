# Verification target: Actual Second Abel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5655bfb748837159698f2d62a3eb4840c31ccc6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5655bfb748837159698f2d62a3eb4840c31ccc6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/criticalprimetest-contdiff-two.md) | 35 | `result-track:2df8780d8dffe347aaaa25097c45eada52d617d625cd061af45cd80a4a69d863` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/criticalprimetest-deriv-lipschitz.md) | 41 | `result-track:97e006a1adc5a6d3b81e068dbcf8c5aef8cccf9876a127f214d24479b93b2964` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/actual-slope-phases-lipschitz.md) | 50 | `result-track:24beb2d46c85923e8ea174b1e1ec00036be9ef8182f248e2aa7399f644269603` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/pairedtailtest-deriv-lipschitz.md) | 57 | `result-track:660719075dd7cc9d1e6e8c91ee7b068b1391d1349164e8aaeef096d38fd58e47` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/pairedtailtest-deriv-absolutelycontinuous.md) | 73 | `result-track:c79b5ed1584434e150e0b806bda311ea8444a7e85f4304ce2b36b587631a2b43` |
| 6 | `def` | [pairedTailCurvature](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/pairedtailcurvature.md) | 88 | `declaration-track:86616be37c3c92d8c50ee9df8d13b085c157acf1ee0d251aacfb3b60723f4b31` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/pairedtailcurvature-intervalintegrable.md) | 90 | `result-track:fcbf95a005cee3956232d3131ea4ca4218ea9c225c7b0d6e2b939dd77d2c5912` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/pairedtailcurvature-ae-hasderivat.md) | 94 | `result-track:4b8d6b40dd3044d95d471b6c27775f8b7aea94ea7ab31f083342445255bd7509` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/pairedtailtest-deriv-integral-zero.md) | 102 | `result-track:775e3c9854bf8f5b9579a9b8b6090109f3197c86327e856a1223e9a7203c8727` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/actual-delta-pairing-intervalintegrable.md) | 110 | `result-track:43bcf107075b68123e15ebb5bb563261e2e8370b42cc903522f77c5a42d014a3` |
| 11 | `theorem` | [actual_first_Abel](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/actual-first-abel.md) | 118 | `result-track:7bff59a2fd5d959cc430a713d33fff51b2c150be7713d979e59dd6d8cb373274` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/actual-bridge-curvature-intervalintegrable.md) | 155 | `result-track:9f8cc9828315a9c0ffccec0400344d147fa384480964367e2b5ac945dfa753ba` |
| 13 | `theorem` | [actual_second_Abel](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/actual-second-abel.md) | 163 | `result-track:e89482570e9f09aa7839d1639e99e430c325c53704886ceb47f07efb4e60ec84` |
| 14 | `def` | [negativeCurvatureWork](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/negativecurvaturework.md) | 190 | `declaration-track:d8ab3fff33c1e970facde35609c3aad645c19a7ca143beb2276b1ffb66719636` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/negativecurvaturework-integrand-intervalintegrable.md) | 193 | `result-track:2f65b05bb421f0096e8a1db834fc775e186620d83476806d9d8553e480ad91a0` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/negativecurvaturework-nonneg.md) | 208 | `result-track:35c7c2e1afdd54ff138165c4fb2a98820e005b6bf571cad785a15d0373194302` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/actual-work-ge-negativecurvaturework.md) | 213 | `result-track:105bdd07a4b9803884fd4dd539b5d15e0f81a90784c7bfda0d71e7958d71019d` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/negativecurvaturetailbudget.md) | 229 | `declaration-track:ccdbe20875ce96f7a1ab2f356ed09e88b38521b09d7b262ca6ecfb027c4fb024` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/actual-tail-of-negativecurvature-budget.md) | 232 | `result-track:228617b65e708a65b98bcce8b52af1a4370782a6a65effbdc6ebede6f15c1ce6` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../MeasureAndIntegration/ActualSecondAbelNamespaced.lean/declarations/actual-estimate-of-negativecurvature-budget.md) | 240 | `result-track:735f6cb42f5f8e370289c528610a400e7a603bf495f3af1ac5495ef55ef8242e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5de0211e027a9dc3769a59bd9da052581aec1aea4da8b840b420f79ba43bb986 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ActualSecondAbel/Variantbb36ca0a946e0084ed1483f44528c6733759c6511bd513e8484c02df86583f67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
