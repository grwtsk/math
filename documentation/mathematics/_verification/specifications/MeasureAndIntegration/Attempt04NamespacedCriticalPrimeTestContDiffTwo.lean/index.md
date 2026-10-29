# Verification target: Attempt04 Namespaced Critical Prime Test Cont Diff Two

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24f334381c33aaedbc3861cd308c83fdab65a596",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24f334381c33aaedbc3861cd308c83fdab65a596`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean.json)

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
| 1 | `theorem` | [criticalPrimeTest_contDiff_two](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/criticalprimetest-contdiff-two.md) | 35 | `result-track:93f867c67c0f75d67e06330a57bedba7351b89239c38057ca77e0d83c7077794` |
| 2 | `theorem` | [criticalPrimeTest_deriv_lipschitz](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/criticalprimetest-deriv-lipschitz.md) | 41 | `result-track:61ebd8c9e21d884d93b20aa5f643926813e210f577e505079222c630c0006b3e` |
| 3 | `theorem` | [actual_slope_phases_lipschitz](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-slope-phases-lipschitz.md) | 50 | `result-track:c8a99e1150604f8c0e6bcb7889bfbc41880cb3fa96affbc510c9ec18618d22b2` |
| 4 | `theorem` | [pairedTailTest_deriv_lipschitz](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-lipschitz.md) | 57 | `result-track:042945f0827920cb54de0d3a87277bb444df4d52b4c45db6d3960a762139c681` |
| 5 | `theorem` | [pairedTailTest_deriv_absolutelyContinuous](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-absolutelycontinuous.md) | 73 | `result-track:6f5c591794c24d6ca66d9cbd8e0bd6aaa1fe272dd20c59b2d2a77bc7bebb2f86` |
| 6 | `def` | [pairedTailCurvature](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature.md) | 88 | `declaration-track:6760c83d8b0d4b52be34c89e03f55ebf75a8fe7be5d0805ab4d300aade8b62c1` |
| 7 | `theorem` | [pairedTailCurvature_intervalIntegrable](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature-intervalintegrable.md) | 90 | `result-track:0a6004e4f287ae578b7f76c800a77bbc9752b4b37127e7e300aa5cb530f86f5a` |
| 8 | `theorem` | [pairedTailCurvature_ae_hasDerivAt](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailcurvature-ae-hasderivat.md) | 94 | `result-track:89e75c28ce1ad02a85063b18cad4cd49829d94c284f46d198904dcfc80a3758a` |
| 9 | `theorem` | [pairedTailTest_deriv_integral_zero](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/pairedtailtest-deriv-integral-zero.md) | 102 | `result-track:22ea83f9eec20bc8c2abf7bf87a85c841a9adde75754e5c399e445e6dfc71fc7` |
| 10 | `theorem` | [actual_delta_pairing_intervalIntegrable](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-delta-pairing-intervalintegrable.md) | 110 | `result-track:2932dfff7117631ee8adc6edd4c801ebf83f7b117ff2f547b94a1176be6eebd4` |
| 11 | `theorem` | [actual_first_Abel](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-first-abel.md) | 118 | `result-track:60fa827917bf0acd09848dc3b53b215202812e368bdd829b73dbcdb8aa8bf919` |
| 12 | `theorem` | [actual_bridge_curvature_intervalIntegrable](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-bridge-curvature-intervalintegrable.md) | 155 | `result-track:4c7ac82ed5396dffd8f258ed2558f4e85c07b3e488b17ff5cc1d9b25104f5b70` |
| 13 | `theorem` | [actual_second_Abel](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-second-abel.md) | 163 | `result-track:511d3896227410257f1e992853d2f9c103df02f444b250b640a7f9f4e8d5b1d1` |
| 14 | `def` | [negativeCurvatureWork](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework.md) | 190 | `declaration-track:e77610e4359483b58188b8ac1278b3b8e485003ab55d74be7a58154953541e15` |
| 15 | `theorem` | [negativeCurvatureWork_integrand_intervalIntegrable](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework-integrand-intervalintegrable.md) | 193 | `result-track:f4b453ff5bc2a4d216543fd885546c16310a99518a65d84dd40a74235bde5bf1` |
| 16 | `theorem` | [negativeCurvatureWork_nonneg](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturework-nonneg.md) | 208 | `result-track:3c36d253f32a71c0682643146cfc0d064e7aa471bf2af306b3c2a95de2e6cd44` |
| 17 | `theorem` | [actual_work_ge_negativeCurvatureWork](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-work-ge-negativecurvaturework.md) | 213 | `result-track:06c7a9837c91721ece1c664f291f47549c27a6807af7c5a6bd7064134d71ccd3` |
| 18 | `def` | [NegativeCurvatureTailBudget](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/negativecurvaturetailbudget.md) | 228 | `declaration-track:4c977ec459598c5c589d3fbce82e331ac90f774383017b50f22225e819667fbc` |
| 19 | `theorem` | [actual_tail_of_negativeCurvature_budget](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-tail-of-negativecurvature-budget.md) | 231 | `result-track:f3400f8c2573e52c959f18580802890004fb414993541e7cad5bb5504885de02` |
| 20 | `theorem` | [actual_estimate_of_negativeCurvature_budget](../../../../MeasureAndIntegration/Attempt04NamespacedCriticalPrimeTestContDiffTwo.lean/declarations/actual-estimate-of-negativecurvature-budget.md) | 239 | `result-track:4728b938b840779c3e795a4b96c5ca015c6afe30ecb06e80383a4af9a6491918` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3bea1d1dfa051990807dd8cad7450e68fa935ed8f702e72be7e1ff0eb5f673e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variantf38ab510e7c828d8bcc09e8cfae7e966af7ef888fb09722fe317d8b08f5d8118.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
