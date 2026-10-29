# Verification target: Bridge Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fe14de2b83f50fe6d39b0b0565b2a5150dad686",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fe14de2b83f50fe6d39b0b0565b2a5150dad686`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Landau.Correction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Laplace.Continuation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.ComplexMGF` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseMeasure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/basemeasure.md) | 55 | `declaration-track:61d9fa82230583cbcea29c8815dd2517770fe6c2d971ebf0e4244e297b204a74` |
| 2 | `def` | [sourceMeasure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/sourcemeasure.md) | 59 | `declaration-track:9e29b993dc68da6a05e60b115e7051f801575b663bb4ee4b9669024c3aede417` |
| 3 | `theorem` | [corrected_source_aemeasurable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/corrected-source-aemeasurable.md) | 65 | `result-track:0d4a89161f4298e19a472bfb4b8db60858b1ebf7a1aacc0dd4f8fb83394a22de` |
| 4 | `theorem` | [density_aemeasurable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/density-aemeasurable.md) | 89 | `result-track:ad57ab5233cba3dce685a79d7dace53802a1eb16dece26643f5f1e2579752f87` |
| 5 | `theorem` | [density_lt_top](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/density-lt-top.md) | 96 | `result-track:fee97555de732b241010dbab79946ddab1f55e75173558b875b59330833b246e` |
| 6 | `theorem` | [density_toReal_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/density-toreal-ae.md) | 105 | `result-track:8248bb7fb494316d3f43f21e9af174681c8653e45fd76fb30f196664946ff909` |
| 7 | `theorem` | [one_lt_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/one-lt-ae.md) | 116 | `result-track:811af6c88f00780bfe37f8408d374c03b7135c5f5c24adc0a96724cfa2dce6db` |
| 8 | `theorem` | [id_nonneg_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/id-nonneg-ae.md) | 123 | `result-track:36907f25cef931396123f75624ccaaee7a6ec1156bf19b91f7ee55996fe829fd` |
| 9 | `theorem` | [exp_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/exp-integrable.md) | 131 | `result-track:502331bb517226f1f0ccadd084ab29d087a8e3740a8d3d540b83e4d9ef712825` |
| 10 | `theorem` | [integral_exp_eq_correctedTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/integral-exp-eq-correctedtransform.md) | 150 | `result-track:e8dfd61c91eba05f2a3f93f41a5fc4655c3a4ff2184690dd19050672d38c4b9f` |
| 11 | `theorem` | [complexMGF_eq_correctedTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/complexmgf-eq-correctedtransform.md) | 173 | `result-track:8241344c775af45f6f784c8eac06f9b7cbc1056374a35a964bd3fe877efed26b` |
| 12 | `theorem` | [real_laplace_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/real-laplace-integrable.md) | 182 | `result-track:fac77ece8ba947a4d7b3c0a3a548183b2e1909eda0fe335bdbc0deb0d2e72c64` |
| 13 | `theorem` | [correction_at_shifted_center_analytic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/correction-at-shifted-center-analytic.md) | 198 | `result-track:9b690dc21d81bc144ab839db973262fbb3e78d47af934170d9ce3a7c205ec54a` |
| 14 | `theorem` | [corrected_transform_cleared_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/corrected-transform-cleared-tendsto.md) | 224 | `result-track:0877ef9ae304aba3516fad223f0990ab12f0c10ea2095bcf2cd1d85e16b4eb6e` |
| 15 | `theorem` | [correctedTransform_punctured_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/correctedtransform-punctured-differentiable.md) | 244 | `result-track:ba8e957079da81d927433d8869f73ee71be3e6a4c5908a7684710d21b2734d4c` |
| 16 | `theorem` | [corrected_transform_exact_pole](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/corrected-transform-exact-pole.md) | 267 | `result-track:120acc560a9b4284ae6b3078f15ad493bb566da9b9ab0771104f385f70ce720e` |
| 17 | `theorem` | [corrected_order_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/corrected-order-nonneg.md) | 306 | `result-track:bff443c5f9a48eaa0ec02dc477e70e81d21b1313dc5e113df8176ab1fe52552b` |
| 18 | `theorem` | [riemann_hypothesis_iff_no_right_shifted_values](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/riemann-hypothesis-iff-no-right-shifted-values.md) | 335 | `result-track:028f758d0c80cf52082a1fd72048f1541db348d91ea454c0223f88a56e6a402b` |
| 19 | `theorem` | [riemann_hypothesis_of_uniform_lower_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/riemann-hypothesis-of-uniform-lower-bound.md) | 363 | `result-track:2470610891fb0c9bd8eba4d9ad8859d07c2dcb39d02625562f3e352bae17ce62` |
| 20 | `theorem` | [bridge_obligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition1.lean/declarations/bridge-obligation.md) | 394 | `result-track:e578a8b9ee85f6764060a09407d8460567071105f074be1f111d0c63d57ebbeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae18801e86b8350a568a07afe7202be2faf774222accac205a2d554537e0e740 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Bridge/Variant617786a7286b28c25ffe7daf79a7e02c2769014ab19c15f882eabdbaaa8c2b9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
