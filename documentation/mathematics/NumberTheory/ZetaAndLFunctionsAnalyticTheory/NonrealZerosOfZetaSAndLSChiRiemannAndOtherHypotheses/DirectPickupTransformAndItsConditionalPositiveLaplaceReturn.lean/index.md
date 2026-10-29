# Direct Pickup Transform And Its Conditional Positive Laplace Return

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DirectPickupTransformAndItsConditionalPositiveLaplaceReturn.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pickupTransform](declarations/pickuptransform.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [normalizedPickupTransform](declarations/normalizedpickuptransform.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [normalizedPickupTransform_eq](declarations/normalizedpickuptransform-eq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [normalizedPickupTransform_eq_initial](declarations/normalizedpickuptransform-eq-initial.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [normalizedPickupTransform_meromorphic](declarations/normalizedpickuptransform-meromorphic.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [regularizedZeta_ne_zero_positive_real](declarations/regularizedzeta-ne-zero-positive-real.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [normalizedPickupTransform_analytic_positive_real](declarations/normalizedpickuptransform-analytic-positive-real.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [correctedPickupTransform](declarations/correctedpickuptransform.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pickupTransform_order_at_zero](declarations/pickuptransform-order-at-zero.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [normalizedPickupTransform_order_at_zero](declarations/normalizedpickuptransform-order-at-zero.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pickupTransform_order_negative](declarations/pickuptransform-order-negative.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [correctedPickupTransform_order_at_zero](declarations/correctedpickuptransform-order-at-zero.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [no_right_zero_of_positive_laplace_return](declarations/no-right-zero-of-positive-laplace-return.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [riemann_hypothesis_of_positive_laplace_return](declarations/riemann-hypothesis-of-positive-laplace-return.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [pickupTimeMeasure](declarations/pickuptimemeasure.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [polynomialPickupDensity](declarations/polynomialpickupdensity.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [polynomialPickupMeasure](declarations/polynomialpickupmeasure.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [riemann_hypothesis_of_polynomial_pickup_and_initial_transform](declarations/riemann-hypothesis-of-polynomial-pickup-and-initial-transform.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [polynomial_correction_real_integrable](declarations/polynomial-correction-real-integrable.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [polynomial_correction_complex_integrable](declarations/polynomial-correction-complex-integrable.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [polynomialCorrectionTransform](declarations/polynomialcorrectiontransform.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [polynomialCorrectionTransform_eq_measure](declarations/polynomialcorrectiontransform-eq-measure.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [polynomialCorrectionTransform_analytic](declarations/polynomialcorrectiontransform-analytic.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [riemann_hypothesis_of_polynomial_pickup](declarations/riemann-hypothesis-of-polynomial-pickup.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [riemann_hypothesis_of_real_polynomial_pickup](declarations/riemann-hypothesis-of-real-polynomial-pickup.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pickup_initial_integrable_of_growth](declarations/pickup-initial-integrable-of-growth.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [riemann_hypothesis_of_real_polynomial_pickup_and_direct_identity](declarations/riemann-hypothesis-of-real-polynomial-pickup-and-direct-identity.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f42e428d5869d922b98ef4dd49729694a18707ac610b001df6bbd4188376729c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
