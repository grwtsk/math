# Weighted Summatory Integral

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca7fa70f797788aa2f0162c3c26e24f5f65b3906`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeightedSummatoryIntegral.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [moebiusCoefficient](declarations/moebiuscoefficient.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [moebius_coefficient_zero](declarations/moebius-coefficient-zero.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [moebius_coefficient_one](declarations/moebius-coefficient-one.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [mertens](declarations/mertens.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pickup](declarations/pickup.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [finitePickupAt](declarations/finitepickupat.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [finitePickup](declarations/finitepickup.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [atomWeight](declarations/atomweight.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mertens_zero](declarations/mertens-zero.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mertens_one](declarations/mertens-one.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pickup_zero](declarations/pickup-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [finite_pickup_at_one](declarations/finite-pickup-at-one.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [finite_pickup_zero](declarations/finite-pickup-zero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [finite_pickup_prefix_flux](declarations/finite-pickup-prefix-flux.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [upper_touching_atom_zero](declarations/upper-touching-atom-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [atom_reset_difference](declarations/atom-reset-difference.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lower_touching_atom_later_reading](declarations/lower-touching-atom-later-reading.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [closed_prefix_split](declarations/closed-prefix-split.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finite_pickup_reset](declarations/finite-pickup-reset.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_closed_prefix_iff](declarations/mem-closed-prefix-iff.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_reset_remainder_iff](declarations/mem-reset-remainder-iff.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zero_prefix_eq_mertens](declarations/zero-prefix-eq-mertens.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inverse_half_derivative](declarations/inverse-half-derivative.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [material_integrand_integrable](declarations/material-integrand-integrable.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [material_integral_eq_finite](declarations/material-integral-eq-finite.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FiniteIntegrationIdentity](declarations/finiteintegrationidentity.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [finite_integration_identity](declarations/finite-integration-identity.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pickup_eq_interval_integral](declarations/pickup-eq-interval-integral.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [exp_inverse_half](declarations/exp-inverse-half.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [pickup_eq_closed_finite_sum](declarations/pickup-eq-closed-finite-sum.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [square_inverse_half](declarations/square-inverse-half.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pickup_original_reset](declarations/pickup-original-reset.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [WholePickupPoly](declarations/wholepickuppoly.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a12b773fe83dc698119b8f6710bebc7f22bb5a78201bfa275aec641c23cb6a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
