# Verification target: Bridge Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "323b8c336ff4a89b3f22c7b89317789d6afac106",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `323b8c336ff4a89b3f22c7b89317789d6afac106`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean.json)

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
| 1 | `def` | [baseMeasure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/basemeasure.md) | 56 | `declaration-track:00ac47d3191cccb20fdf841875194262b37d80d95543b3c8dca68a29a5cb5016` |
| 2 | `def` | [sourceMeasure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/sourcemeasure.md) | 60 | `declaration-track:c5ea339c33a8cec595fdc335b1243b030226c710a01644a46f801c3580d2a30e` |
| 3 | `theorem` | [corrected_source_aemeasurable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/corrected-source-aemeasurable.md) | 66 | `result-track:56f80e0289bc59b6b017013a5083cd4d7fa492d46e9c97683062077a8ba6edd7` |
| 4 | `theorem` | [density_aemeasurable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/density-aemeasurable.md) | 89 | `result-track:91f28d4e94ad23147d92c3cb4c821b8e77edd4bca2fc1f6df5940f13b1f0ba7d` |
| 5 | `theorem` | [density_lt_top](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/density-lt-top.md) | 96 | `result-track:86b0573955c10782bf9a174b303de861d5e93dce2a02e26f2fcb904ecef6fff1` |
| 6 | `theorem` | [density_toReal_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/density-toreal-ae.md) | 105 | `result-track:e795d4b9c671e2868609956b2928ba63920a9133261660a59460048ab4d82ebe` |
| 7 | `theorem` | [one_lt_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/one-lt-ae.md) | 116 | `result-track:26c8f7686bbd22474a7f8f6f3e81e8b6a4b36a9a5e00c05b6f67b57b4412089a` |
| 8 | `theorem` | [id_nonneg_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/id-nonneg-ae.md) | 123 | `result-track:ca2cd50fefba5d788241235c0dca251d35ecc3f5e1ee5b231155d888284ed0dd` |
| 9 | `theorem` | [exp_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/exp-integrable.md) | 131 | `result-track:5bad668297d36156e007b81fd6ad289e39eec69e383cadae2f20af49bb235638` |
| 10 | `theorem` | [integral_exp_eq_correctedTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/integral-exp-eq-correctedtransform.md) | 150 | `result-track:9eae37d50ba6732f6b77d01bd4daaea049390850063a5d44111e1e88b2b64d4b` |
| 11 | `theorem` | [complexMGF_eq_correctedTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/complexmgf-eq-correctedtransform.md) | 173 | `result-track:612da375ea371087803ec43b00d7d6682b09037d0bcd48cf905b3c4ad543f33c` |
| 12 | `theorem` | [real_laplace_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/real-laplace-integrable.md) | 182 | `result-track:9a4811f89788b9024de169a0635b90f922cf9f00cefa5c6922009f8453eb7cee` |
| 13 | `theorem` | [correction_at_shifted_center_analytic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/correction-at-shifted-center-analytic.md) | 198 | `result-track:572391da505adf8aab320a96c5169a639d58fd151a86db8b64915f8a51ff3d7e` |
| 14 | `theorem` | [corrected_transform_cleared_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/corrected-transform-cleared-tendsto.md) | 224 | `result-track:cf779d4a7b7f376582cb75a48f8647fc78a3684e38321347fdf5fcac5ee91961` |
| 15 | `theorem` | [correctedTransform_punctured_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/correctedtransform-punctured-differentiable.md) | 244 | `result-track:2612949cb5730bcc46db6e2204a31be7fa870c48859d3a442c628055fc4c7176` |
| 16 | `theorem` | [corrected_transform_exact_pole](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/corrected-transform-exact-pole.md) | 266 | `result-track:68e68976bed15dd6b9b420c001b2b20f193017c4c8635532abcde625a9fe39d9` |
| 17 | `theorem` | [corrected_order_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/corrected-order-nonneg.md) | 305 | `result-track:6b21edd3718a53d682ddaf123427be8be1480d5f12e86d5cb125be7ed44fe719` |
| 18 | `theorem` | [riemann_hypothesis_iff_no_right_shifted_values](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/riemann-hypothesis-iff-no-right-shifted-values.md) | 334 | `result-track:4cc7c1afb604112d61812f966ee4afa147e12fa03b6edfa63795c95064e5bd52` |
| 19 | `theorem` | [riemann_hypothesis_of_uniform_lower_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/riemann-hypothesis-of-uniform-lower-bound.md) | 362 | `result-track:9933a69f2e9dc6a370b14a28b7da82d308036971e875831be848e437e9fc5d7a` |
| 20 | `theorem` | [bridge_obligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeNamespacedEdition2.lean/declarations/bridge-obligation.md) | 393 | `result-track:0b22a010a5269260a188b1f5671bb3d58fd218c9152b2f8961b17a8edbb4b609` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95c10887f8e792cae0dd236ab7e7f9ff0c4fec96cd0a1a18ceb2a59d46eebc72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Bridge/Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
