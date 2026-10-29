# Verification target: Bridge Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ccdbbdaffa2ba8e19cc0cbb65dbf46a3726b34",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ccdbbdaffa2ba8e19cc0cbb65dbf46a3726b34`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Landau.Correction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Laplace.Continuation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.ComplexMGF` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseMeasure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/basemeasure.md) | 48 | `declaration-track:a44d9ec956906370e5cc8aeacdf3021f00eec9c7bf78cdd0f6cd0915dcbda290` |
| 2 | `def` | [sourceMeasure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/sourcemeasure.md) | 52 | `declaration-track:3dd08e6be97214b52f81deb581537962df335e067ec86c48f38822b8b07d2a97` |
| 3 | `theorem` | [corrected_source_aemeasurable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/corrected-source-aemeasurable.md) | 58 | `result-track:8ea9fadb738866c085083f1eaf0024bb31b6fb3c13d5ae17d31b246bd08aa7e0` |
| 4 | `theorem` | [density_aemeasurable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/density-aemeasurable.md) | 81 | `result-track:9a42216c85ebb3ac9dd99cbd460c72f94792e6eaf4b781c75535a4bb259cf20f` |
| 5 | `theorem` | [density_lt_top](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/density-lt-top.md) | 88 | `result-track:3b46523997fa72451896372a99902a94efb8628d7f560e777be04ee5a727afe1` |
| 6 | `theorem` | [density_toReal_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/density-toreal-ae.md) | 97 | `result-track:ed60c701297ccb15affd5db81eb56d2ac5e67c875f9a60353c72ec8b82f19dba` |
| 7 | `theorem` | [one_lt_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/one-lt-ae.md) | 108 | `result-track:b25909962902f4d6728e9fabf9c787da1f2a7bb8a77b15e52519e4490180442f` |
| 8 | `theorem` | [id_nonneg_ae](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/id-nonneg-ae.md) | 115 | `result-track:79893aca0cb3897677e07f049a9924730360df18e63a75b470d13a15615264c3` |
| 9 | `theorem` | [exp_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/exp-integrable.md) | 123 | `result-track:fe3e7e6a065a76a1f9e6cdf6dd76c32aa5d7b037e0ff6341768931e1f57958fe` |
| 10 | `theorem` | [integral_exp_eq_correctedTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/integral-exp-eq-correctedtransform.md) | 142 | `result-track:15b89ef503677d56e5f07001da9bc643a9ec8ab93f2f2957ec50d1be3a83a129` |
| 11 | `theorem` | [complexMGF_eq_correctedTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/complexmgf-eq-correctedtransform.md) | 165 | `result-track:2c0100ad3f545996ea706f0639b51fdc9de33945176097b221e9097201006674` |
| 12 | `theorem` | [real_laplace_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/real-laplace-integrable.md) | 174 | `result-track:bb7f52bc01292052327d0a64e71be415e4d2e80d469b13f06c79a6deb5ea98d1` |
| 13 | `theorem` | [correction_at_shifted_center_analytic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/correction-at-shifted-center-analytic.md) | 190 | `result-track:c3a9f4153a6bbe3ebc5b74f99b00b41d7759d28e2995c9b7c4f7f11ef5fa719f` |
| 14 | `theorem` | [corrected_transform_cleared_tendsto](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/corrected-transform-cleared-tendsto.md) | 216 | `result-track:0b8c4fe7ea5eccd0d68e2ff784a944256ac875c80efb37186bc62e19bb925abf` |
| 15 | `theorem` | [correctedTransform_punctured_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/correctedtransform-punctured-differentiable.md) | 236 | `result-track:fb603a1fadcb482cf67bb08bb4ae1d6ff31fd9c7dc03548b14400d4b62525685` |
| 16 | `theorem` | [corrected_transform_exact_pole](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/corrected-transform-exact-pole.md) | 258 | `result-track:dc4495a71390830ba1a678e3faf225bd04792333be1392c9e4542694e4829653` |
| 17 | `theorem` | [corrected_order_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/corrected-order-nonneg.md) | 297 | `result-track:ae81a40ddaca2d478f1adfab47f62e5d7d0cca056c6b047ec35927caf878e553` |
| 18 | `theorem` | [riemann_hypothesis_iff_no_right_shifted_values](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/riemann-hypothesis-iff-no-right-shifted-values.md) | 326 | `result-track:c339472790f478b8fce49ad63eaf738641b3813e141b3cd342df580e7299011d` |
| 19 | `theorem` | [riemann_hypothesis_of_uniform_lower_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/riemann-hypothesis-of-uniform-lower-bound.md) | 354 | `result-track:8bfdc40fd31b6b86f5a97fae7cc124c0492a29c109964d9abc593d52a8141565` |
| 20 | `theorem` | [bridge_obligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BridgeEdition2.lean/declarations/bridge-obligation.md) | 385 | `result-track:0370d39d83902fd1ee181bc72f38cad6ac0b0fdcbfd7c96464cd4f88de7d0b13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90e3af43e0bb9a50b90a64aa3a2c71647e38f16eec63bab299faa959e18353ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Bridge/Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
