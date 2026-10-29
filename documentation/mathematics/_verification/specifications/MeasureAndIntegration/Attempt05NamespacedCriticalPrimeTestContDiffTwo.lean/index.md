# Verification target: Attempt05 Namespaced Critical Prime Test Cont Diff Two

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f688ed52eb18111d276a0c1f4a9d81d5fdbbecc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9c8f9080869568d7891720db8ea643010c91a3f5d9ec3ba8ef4fe8aaeeec359b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f688ed52eb18111d276a0c1f4a9d81d5fdbbecc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9c8f9080869568d7891720db8ea643010c91a3f5d9ec3ba8ef4fe8aaeeec359b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9c8f9080869568d7891720db8ea643010c91a3f5d9ec3ba8ef4fe8aaeeec359b.lean.json)

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
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/criticalprimetest-contdiff-two.md) | 35 | `result-track:4b08b9ddf2a85a6333871cc507fcbd1711d3ca173c0d89a63566ca451aba7091` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/criticalprimetest-deriv-lipschitz.md) | 41 | `result-track:34d9ce93f2412dcff995bee30bc436d5c9b226b57a2f7f4e2dbc8a246cd59fb8` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-slope-phases-lipschitz.md) | 50 | `result-track:234adc64b4dca9d89d79408d4ab93c993edfdd9f085640686412af8158541518` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-lipschitz.md) | 57 | `result-track:4f8ad1f3524c716729866aea02219e39c6dfc33ce563c7a9cac66fc0e39da0e1` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-absolutelycontinuous.md) | 73 | `result-track:038c828c10f6f993983392203fd54f4dc7864451d7e2bd59f50d7b60a8e550ab` |
| 6 | `def` | [pairedTailCurvature](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature.md) | 88 | `declaration-track:efb4f9f21ebb2221272f903b7020ab2f70851c27a7db43af96c9ce38ae4fb963` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature-intervalintegrable.md) | 90 | `result-track:b277012d815c6d1950cb93b4c371fe3c34e86b89addf59c2861e3cfae8414f62` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature-ae-hasderivat.md) | 94 | `result-track:b9e93985793f42c2271f6505822b22a66db73762b35761b1a2cf2b125faa81e9` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-integral-zero.md) | 102 | `result-track:beda51453bf931dccac588b3ac7c754ad4451303e7c237938439c39040d7055a` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-delta-pairing-intervalintegrable.md) | 110 | `result-track:6697f74b3f1adfd2cd77313bae1b351831a8656172cd311c0df510479387c67a` |
| 11 | `theorem` | [actual_first_Abel](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-first-abel.md) | 118 | `result-track:fd4a4c83d1740d72188f7c1a7c4d812c26ada95712bc50a5407615c70bcb26c8` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-bridge-curvature-intervalintegrable.md) | 155 | `result-track:d1c4f2a3bcf5437a658b0249b198cff0536d6259ce8551ded1a585485538705d` |
| 13 | `theorem` | [actual_second_Abel](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-second-abel.md) | 163 | `result-track:a0a97f5188abafb0ea0b9da5246c844dda889263793b019244eee5209e697843` |
| 14 | `def` | [negativeCurvatureWork](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework.md) | 190 | `declaration-track:e93f654c8df90ff094f791d73efd7a4b0533d92200d3d1b73b09a71fda17e658` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework-integrand-intervalintegrable.md) | 193 | `result-track:cef394316978692b1595b0e14dafef45c9381e789fbe97dd524e867610b67b25` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework-nonneg.md) | 208 | `result-track:8fff43b4a17fe07080c07f954b5ee3c80879bb329634e32a6e73f86d0651af74` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-work-ge-negativecurvaturework.md) | 213 | `result-track:c5813cc5d31dce3a8851aa004e2926b38cfff82a9798eb02cb8b94dd152695db` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturetailbudget.md) | 229 | `declaration-track:c6689e6dca418aebbbc99544f72ab38196a419fb8e0da3a58f71d7c364d028aa` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-tail-of-negativecurvature-budget.md) | 232 | `result-track:3243a01570c8825a8f1d93e6867011fd2371f2040f27b79724d458a3525b1dd3` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../MeasureAndIntegration/Attempt05NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-estimate-of-negativecurvature-budget.md) | 240 | `result-track:27c8540ef73b44108905520c59ec39f0ae47d89e4712e34a6c020f6af6806638` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ea9534fe0bc66aac02abceef898b78f7851fd381ddff46658a8148e9c8312b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9c8f9080869568d7891720db8ea643010c91a3f5d9ec3ba8ef4fe8aaeeec359b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9c8f9080869568d7891720db8ea643010c91a3f5d9ec3ba8ef4fe8aaeeec359b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
