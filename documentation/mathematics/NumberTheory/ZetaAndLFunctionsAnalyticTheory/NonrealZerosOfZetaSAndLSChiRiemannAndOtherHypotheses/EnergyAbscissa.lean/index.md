# Energy Abscissa

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a107f60cf1a498be022f6547623f15b01e840c82`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EnergyAbscissa.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PickupEnergySubexp](declarations/pickupenergysubexp.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [PickupCrossSubexp](declarations/pickupcrosssubexp.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PickupWeightedEnergyAll](declarations/pickupweightedenergyall.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [pickupEnergyPoly_subexp](declarations/pickupenergypoly-subexp.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pickupCrossPoly_subexp](declarations/pickupcrosspoly-subexp.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [pickupCrossSubexp_iff_pickupEnergySubexp](declarations/pickupcrosssubexp-iff-pickupenergysubexp.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pickupWeightedEnergyAll_of_subexp](declarations/pickupweightedenergyall-of-subexp.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pickupEnergy_le_weighted_integral](declarations/pickupenergy-le-weighted-integral.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pickupEnergySubexp_iff_weightedEnergyAll](declarations/pickupenergysubexp-iff-weightedenergyall.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pickup_tilt_integrable_of_weightedEnergyAll](declarations/pickup-tilt-integrable-of-weightedenergyall.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [riemannHypothesis_of_pickupWeightedEnergyAll](declarations/riemannhypothesis-of-pickupweightedenergyall.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [riemannHypothesis_of_pickupEnergySubexp](declarations/riemannhypothesis-of-pickupenergysubexp.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [riemannHypothesis_of_pickupCrossSubexp](declarations/riemannhypothesis-of-pickupcrosssubexp.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pickup_weighted_energy_integrable_initial](declarations/pickup-weighted-energy-integrable-initial.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pickup_weighted_energy_integrable_mono](declarations/pickup-weighted-energy-integrable-mono.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pickup_weighted_energy_integral_antitone](declarations/pickup-weighted-energy-integral-antitone.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [pickupEnergyConvergenceSet](declarations/pickupenergyconvergenceset.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [pickupEnergyAbscissa](declarations/pickupenergyabscissa.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pickupEnergyConvergenceSet_nonempty](declarations/pickupenergyconvergenceset-nonempty.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [pickupEnergyConvergenceSet_bddBelow](declarations/pickupenergyconvergenceset-bddbelow.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pickupEnergyAbscissa_nonneg](declarations/pickupenergyabscissa-nonneg.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [pickupEnergyAbscissa_le_of_integrable](declarations/pickupenergyabscissa-le-of-integrable.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pickupEnergyAbscissa_le_one](declarations/pickupenergyabscissa-le-one.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pickup_weighted_energy_integrable_above_abscissa](declarations/pickup-weighted-energy-integrable-above-abscissa.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pickupEnergyAbscissa_zero_iff_weightedEnergyAll](declarations/pickupenergyabscissa-zero-iff-weightedenergyall.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pickupEnergyAbscissa_zero_iff_crossSubexp](declarations/pickupenergyabscissa-zero-iff-crosssubexp.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [riemannHypothesis_of_pickupEnergyAbscissa_zero](declarations/riemannhypothesis-of-pickupenergyabscissa-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c55203c965e852c43a6088ca499d25ead29824d18f7264e94f242e26a62cab73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EnergyAbscissa/Variant9980316185c3dd707ad11c546357baa9b139ec19699f7230e23bf4f1065cc1d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
