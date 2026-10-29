# Verification target: Direct Pickup Transform And Its Conditional Positive Laplace Return

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57`.

Source path: `GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Laplace.Continuation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroEta` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pickupTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/pickuptransform.md) | 38 | `declaration-track:78e8334df857681868c61e75b290a496a1a187811a64c555c8901d3199052835` |
| 2 | `def` | [normalizedPickupTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/normalizedpickuptransform.md) | 43 | `declaration-track:5f3db95dc72cac6ed82f24d1e9eab1149d31484abd4acbbb0fe0a2807936fc5a` |
| 3 | `theorem` | [normalizedPickupTransform_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/normalizedpickuptransform-eq.md) | 48 | `result-track:d7b337d8e829fca649e47586b11266cb24440d2fe550b8966816f6255eff54dc` |
| 4 | `theorem` | [normalizedPickupTransform_eq_initial](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/normalizedpickuptransform-eq-initial.md) | 70 | `result-track:d112754140068e096174ae9c571eff30d31c4e158e0586bb2cfb4a05c2525658` |
| 5 | `theorem` | [normalizedPickupTransform_meromorphic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/normalizedpickuptransform-meromorphic.md) | 78 | `result-track:b6a7492bb3173ac55843b3e2719b0ddc39a01e8029765a768c94eca326e677c1` |
| 6 | `theorem` | [regularizedZeta_ne_zero_positive_real](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/regularizedzeta-ne-zero-positive-real.md) | 87 | `result-track:9904132cbdcc0a1b43798bd9ad0552e9a94106f56457de9616b73731da634e5a` |
| 7 | `theorem` | [normalizedPickupTransform_analytic_positive_real](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/normalizedpickuptransform-analytic-positive-real.md) | 102 | `result-track:ea90cc2e9a1c456e72a65577057007d4a1c24bd882baf7d331f7fc7b3a391394` |
| 8 | `def` | [correctedPickupTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/correctedpickuptransform.md) | 115 | `declaration-track:d77ffbaa46d7fe2ac1344a183e73bfa1182e881a049c3b95a94ca7379ee99a83` |
| 9 | `theorem` | [pickupTransform_order_at_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/pickuptransform-order-at-zero.md) | 119 | `result-track:1d6f76cc1b01f14a0d0390b2d1ae9e976162d76aefadf61e0caa341c9480e413` |
| 10 | `theorem` | [normalizedPickupTransform_order_at_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/normalizedpickuptransform-order-at-zero.md) | 159 | `result-track:ccf83d2bc97afffbbb272feb5704d84fecda5295ca7d08e9dc22776d9b875b73` |
| 11 | `theorem` | [pickupTransform_order_negative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/pickuptransform-order-negative.md) | 178 | `result-track:ce9bfd2a364a4998ecc8905abdff90a85b7b1cc6c646072b595c324c14f31c17` |
| 12 | `theorem` | [correctedPickupTransform_order_at_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/correctedpickuptransform-order-at-zero.md) | 187 | `result-track:d566bc0b50167c5d8be71e0dd4d14e6e8254254d4b792e000e357ea3e6b6b0c2` |
| 13 | `theorem` | [no_right_zero_of_positive_laplace_return](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/no-right-zero-of-positive-laplace-return.md) | 210 | `result-track:91b82b231831d292d789b5544e15196e338f1109039171a3fb69eff2fa75bc51` |
| 14 | `theorem` | [riemann_hypothesis_of_positive_laplace_return](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/riemann-hypothesis-of-positive-laplace-return.md) | 238 | `result-track:396c409ab1735586bd321e43d58cf9a602c5955dd9182e2ad61b491fb619594e` |
| 15 | `def` | [pickupTimeMeasure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/pickuptimemeasure.md) | 257 | `declaration-track:7be5b3472d4a4481bd909d235fc967d4b03a8f1decf4507422c4d858048e6f66` |
| 16 | `def` | [polynomialPickupDensity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/polynomialpickupdensity.md) | 260 | `declaration-track:9a0ca95543211dbc6659a5ed8642549efeb1d448fadc79b44f9d35731808d73f` |
| 17 | `def` | [polynomialPickupMeasure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/polynomialpickupmeasure.md) | 264 | `declaration-track:e3d0c35a929ad0422699dbefcdfad176017b47b90079b75248bd4c17810d96de` |
| 18 | `theorem` | [riemann_hypothesis_of_polynomial_pickup_and_initial_transform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/riemann-hypothesis-of-polynomial-pickup-and-initial-transform.md) | 272 | `result-track:be5beb61941b453300d8bb41a1a59e69f643034e4ff6a75bc1c5dbd32dce1757` |
| 19 | `theorem` | [polynomial_correction_real_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/polynomial-correction-real-integrable.md) | 339 | `result-track:94072a9329b9affc9623586f03fe39931abdd9bb7cacc43404513adb359af1ad` |
| 20 | `theorem` | [polynomial_correction_complex_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/polynomial-correction-complex-integrable.md) | 364 | `result-track:f8013417a406473ba36aeb6853f9ab7f89599c6bde512bc293b9139c3ca8789f` |
| 21 | `def` | [polynomialCorrectionTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/polynomialcorrectiontransform.md) | 381 | `declaration-track:0af60e74c1de232580de73c83caa1a0b1ce2633cf5fce5b2776d4d8d2a9e6c34` |
| 22 | `theorem` | [polynomialCorrectionTransform_eq_measure](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/polynomialcorrectiontransform-eq-measure.md) | 385 | `result-track:8b5d3c4313df6c76bf854879b63abc65079d741326a58cd43d3b91461b4f0de8` |
| 23 | `theorem` | [polynomialCorrectionTransform_analytic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/polynomialcorrectiontransform-analytic.md) | 412 | `result-track:0bd843b71c66582908fd6f69c4f4a98efa9bc15156493da361c2685ec613ec20` |
| 24 | `theorem` | [riemann_hypothesis_of_polynomial_pickup](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/riemann-hypothesis-of-polynomial-pickup.md) | 445 | `result-track:22e74744070a860d7d1a7c8f9d8c59c6836fd0380c9d84c44b5ecd3f8a87c821` |
| 25 | `theorem` | [riemann_hypothesis_of_real_polynomial_pickup](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/riemann-hypothesis-of-real-polynomial-pickup.md) | 478 | `result-track:3b6a60855eeae961ec907c72425b7428fcedb89442eb9020341c9c1a4865f1c6` |
| 26 | `theorem` | [pickup_initial_integrable_of_growth](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/pickup-initial-integrable-of-growth.md) | 496 | `result-track:8712fcf5ff70b9675d1e7bc5f55d228b7f74d04a61f5a2448d0af03322ba2054` |
| 27 | `theorem` | [riemann_hypothesis_of_real_polynomial_pickup_and_direct_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/declarations/riemann-hypothesis-of-real-polynomial-pickup-and-direct-identity.md) | 520 | `result-track:c2c00a68daedb754fd8fd6f063294f86ede9da800d5245b9432deca9c7000803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f604fb348dd2485f793b2d2a68b96b91d12994fea5f463e6031c33607dd25cab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean","GRWTSK/_verification/specifications/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
