# Mean Square Laplace Holomorphy

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d3afc1e5e733abfba81c9b96afbaad5d860e83b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/MeanSquareLaplaceHolomorphy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [intervalEnergy](declarations/intervalenergy.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [interval_energy_eq_energy](declarations/interval-energy-eq-energy.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [pickup_square_continuous](declarations/pickup-square-continuous.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [interval_energy_hasDerivAt](declarations/interval-energy-hasderivat.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [interval_energy_continuous](declarations/interval-energy-continuous.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [interval_energy_nonnegative](declarations/interval-energy-nonnegative.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [dampedEnergy](declarations/dampedenergy.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [damped_energy_continuous](declarations/damped-energy-continuous.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [damped_energy_nonnegative](declarations/damped-energy-nonnegative.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [damped_energy_bound](declarations/damped-energy-bound.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [damped_energy_integrable_of_bound](declarations/damped-energy-integrable-of-bound.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [polynomial_exponential_tendsto_zero](declarations/polynomial-exponential-tendsto-zero.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [damped_energy_tendsto_zero_of_bound](declarations/damped-energy-tendsto-zero-of-bound.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [weightedSquaredPickup](declarations/weightedsquaredpickup.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weighted_squared_pickup_nonnegative](declarations/weighted-squared-pickup-nonnegative.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [weightedEnergyPrimitive](declarations/weightedenergyprimitive.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [weighted_energy_primitive_hasDerivAt](declarations/weighted-energy-primitive-hasderivat.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [weighted_energy_primitive_tendsto_of_bound](declarations/weighted-energy-primitive-tendsto-of-bound.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [energy_poly_weighted_squared_pickup_integrable](declarations/energy-poly-weighted-squared-pickup-integrable.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [weightedAbsolutePickup](declarations/weightedabsolutepickup.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [weighted_absolute_pickup_continuous](declarations/weighted-absolute-pickup-continuous.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [weighted_absolute_pickup_nonnegative](declarations/weighted-absolute-pickup-nonnegative.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [weighted_absolute_pickup_bound](declarations/weighted-absolute-pickup-bound.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [energy_poly_weighted_absolute_pickup_integrable](declarations/energy-poly-weighted-absolute-pickup-integrable.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [energy_poly_laplace_integrable](declarations/energy-poly-laplace-integrable.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [timeWeightedAbsolutePickup](declarations/timeweightedabsolutepickup.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [time_weighted_absolute_pickup_continuous](declarations/time-weighted-absolute-pickup-continuous.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [time_weighted_absolute_pickup_nonnegative](declarations/time-weighted-absolute-pickup-nonnegative.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [time_weighted_absolute_pickup_bound](declarations/time-weighted-absolute-pickup-bound.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [energy_poly_time_weighted_absolute_pickup_integrable](declarations/energy-poly-time-weighted-absolute-pickup-integrable.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pickup_laplace_derivative_energy_bound](declarations/pickup-laplace-derivative-energy-bound.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [energy_poly_laplace_hasDerivAt](declarations/energy-poly-laplace-hasderivat.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [energy_poly_laplace_holomorphic](declarations/energy-poly-laplace-holomorphic.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fe86be88154aca51148390a97649f7fe7fbb25cf3a78f7b34b95c0036f435e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/MeanSquareLaplaceHolomorphy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
