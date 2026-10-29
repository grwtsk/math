# Discrete Energy Balance

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**19 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Inequalities/DiscreteEnergyBalance.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a90ff5d9f8341c68b1a688e33138b0c2589b7db2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DiscreteEnergyBalance.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_successive_difference](declarations/sum-successive-difference.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SignedWorkLedger](declarations/signedworkledger.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [totalSupply](declarations/totalsupply.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cumulativeSupply](declarations/cumulativesupply.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [dissipation](declarations/dissipation.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dissipation_nonnegative](declarations/dissipation-nonnegative.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cumulativeSupply_eq_components](declarations/cumulativesupply-eq-components.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [finite_balance](declarations/finite-balance.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [balance_le_initial_add_supply](declarations/balance-le-initial-add-supply.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [energy_le_initial_add_supply](declarations/energy-le-initial-add-supply.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [CumulativeSupplyBound](declarations/cumulativesupplybound.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [energy_le_of_supply_bound](declarations/energy-le-of-supply-bound.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [energy_le_of_cumulativeSupplyBound](declarations/energy-le-of-cumulativesupplybound.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ReadoutGeometry](declarations/readoutgeometry.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [bilinear_readout_expansion](declarations/bilinear-readout-expansion.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bilinear_readout_reconstruction](declarations/bilinear-readout-reconstruction.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [gram_readout_reconstruction](declarations/gram-readout-reconstruction.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [signed_readout_reconstruction](declarations/signed-readout-reconstruction.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gram_residual_nonnegative](declarations/gram-residual-nonnegative.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=949c96835cebd2511f52c21569b90cd37c3277f266cf66276337e6c9630bf600 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/DiscreteEnergyBalance.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
