# Verification target: Attempt03 Namespaced Critical Prime Test Cont Diff Two

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8288a98a03cd9d4e660558e3fa0aa21c4f0fb4da",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8288a98a03cd9d4e660558e3fa0aa21c4f0fb4da`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/criticalprimetest-contdiff-two.md) | 34 | `result-track:e9e8db327e139c264e36186f78f77d62a02b63e5585935397e17ba7a7547ad36` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/criticalprimetest-deriv-lipschitz.md) | 40 | `result-track:6369cf9fd4554ab4049a88f9e7adb6e692a5b14829e13ee72d168d90914b8b22` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-slope-phases-lipschitz.md) | 49 | `result-track:2ec236299347993fd3e266a1067ca474e926b978d457e056596fa379870e80fd` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-lipschitz.md) | 56 | `result-track:67584d56997bbb1f55e58a0c4e3fa800657e7716211ea66e119c6905383b63a7` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-absolutelycontinuous.md) | 69 | `result-track:1edeeb065053d6019b83e86da3380bfbbffa906e16045f2f5cdd7fb8aabb0ab6` |
| 6 | `def` | [pairedTailCurvature](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature.md) | 84 | `declaration-track:1abadc74275e7e77859b8644394e9c680aa5e189d6b374b0722a04f9713a944d` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature-intervalintegrable.md) | 86 | `result-track:490106a9198a9bbe9019eb696a4ca5b1640ce7c40f1933fee7d55988965b1dd4` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature-ae-hasderivat.md) | 90 | `result-track:9088b71c1551063c8ba79622907e9b4790ed77262c1ba88acd55422aa322752c` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-integral-zero.md) | 98 | `result-track:6b9c8ef70318841cfd990c6f370be190e9af1fe492ddd8771fe9d94f13245b80` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-delta-pairing-intervalintegrable.md) | 106 | `result-track:02ebeb0044ac35fda82bea63d1067c8587ec09c676bb75e4f105cbe1ef32dba1` |
| 11 | `theorem` | [actual_first_Abel](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-first-abel.md) | 114 | `result-track:542cfd2d02f00a92180057de9d538a0755e8afeaf0f0a596413c3f2166791858` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-bridge-curvature-intervalintegrable.md) | 151 | `result-track:04bfcf3569136153fdf293902a5e4e0e3e7f1725db828038fac40427e2b2b9d0` |
| 13 | `theorem` | [actual_second_Abel](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-second-abel.md) | 159 | `result-track:4c0f0a9c7e7ef925c8f323704d6dd22ad95dc4f64b61a65116885bbe06269b4c` |
| 14 | `def` | [negativeCurvatureWork](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework.md) | 186 | `declaration-track:de7c05bb63bd61be781149c66b9a34613b65bc1baaf67869ee9dc43bb5b0307f` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework-integrand-intervalintegrable.md) | 189 | `result-track:e9c5e71c907798680b93f7f12fadb38cf11dd30290bd554a49f532505065d690` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework-nonneg.md) | 204 | `result-track:8e990e16609a9620f583f35f18f2414cb27d4fc0133abd921a4f10866995e9d6` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-work-ge-negativecurvaturework.md) | 209 | `result-track:52f439c1e6689ba7850655407704330ee1d4cbce3fa1602d41ec929e833feeb9` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturetailbudget.md) | 221 | `declaration-track:e7bc62dfdfed67e7f1475db35f2aacf68097da48c1ee3df156fd18254651e356` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-tail-of-negativecurvature-budget.md) | 224 | `result-track:7787e6eb508e4ddd877796fbd357caf200d17a759bef2765e0b105d74ac0833e` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../MeasureAndIntegration/Attempt03NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-estimate-of-negativecurvature-budget.md) | 232 | `result-track:7ba7b24f63e409409396e67a4448f7ecc6874d0d134b45466ce059d4b65eaf40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43472fde10073558ff6e85329f7938b1b7c60125f2dae95377fbcc71c0bd3325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
