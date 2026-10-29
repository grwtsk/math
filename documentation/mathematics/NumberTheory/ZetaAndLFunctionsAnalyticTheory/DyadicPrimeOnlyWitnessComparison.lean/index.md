# Dyadic Prime Only Witness Comparison

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e03ce3e7505050efbf02d0758083f5bab764205`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyWitnessComparison.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [primeOnlyMass0](declarations/primeonlymass0.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [primeOnlyMass1](declarations/primeonlymass1.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mass0_eq_primeOnly_add_higherPrimePower](declarations/mass0-eq-primeonly-add-higherprimepower.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mass1_eq_primeOnly_add_higherPrimePower](declarations/mass1-eq-primeonly-add-higherprimepower.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [greenPrimeOnlyArithmeticFourierCoordinate](declarations/greenprimeonlyarithmeticfouriercoordinate.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [greenHigherPrimePowerArithmeticCorrection](declarations/greenhigherprimepowerarithmeticcorrection.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [greenPrimeOnlyArithmeticFourierCoordinate_zero](declarations/greenprimeonlyarithmeticfouriercoordinate-zero.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [greenHigherPrimePowerArithmeticCorrection_zero](declarations/greenhigherprimepowerarithmeticcorrection-zero.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [greenArithmeticFourierCoordinate_eq_primeOnly_sub_higherPrimePower](declarations/greenarithmeticfouriercoordinate-eq-primeonly-sub-higherprimepower.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [higherPrimePowerFourierModeEnergy_eq_correction](declarations/higherprimepowerfouriermodeenergy-eq-correction.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [greenPrimeOnlyFourierModeEnergy](declarations/greenprimeonlyfouriermodeenergy.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [greenPrimeOnlyFourierModeEnergy_nonnegative](declarations/greenprimeonlyfouriermodeenergy-nonnegative.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [real_add_sq_le_two](declarations/real-add-sq-le-two.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [real_sub_sq_le_two](declarations/real-sub-sq-le-two.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [complex_norm_add_sq_le_two](declarations/complex-norm-add-sq-le-two.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [complex_norm_sub_sq_le_two](declarations/complex-norm-sub-sq-le-two.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fullModeEnergy_le_primeOnly_add_higherPower](declarations/fullmodeenergy-le-primeonly-add-higherpower.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [primeOnlyModeEnergy_le_full_add_higherPower](declarations/primeonlymodeenergy-le-full-add-higherpower.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [greenPrimeOnlyFourierShellEnergy](declarations/greenprimeonlyfouriershellenergy.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [greenPrimeOnlyFourierHead](declarations/greenprimeonlyfourierhead.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [greenPrimeOnlyFourierHead_nonnegative](declarations/greenprimeonlyfourierhead-nonnegative.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [higherPrimePowerFourierShellEnergy](declarations/higherprimepowerfouriershellenergy.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [higherPrimePowerFourierHead](declarations/higherprimepowerfourierhead.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [higherPrimePowerFourierShellEnergy_nonnegative](declarations/higherprimepowerfouriershellenergy-nonnegative.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [higherPrimePowerFourierHead_nonnegative](declarations/higherprimepowerfourierhead-nonnegative.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [higherPrimePowerFourierHead_le_tsum](declarations/higherprimepowerfourierhead-le-tsum.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fullFourierShell_le_primeOnly_add_higherPower](declarations/fullfouriershell-le-primeonly-add-higherpower.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [fullFourierHead_le_primeOnly_add_higherPower](declarations/fullfourierhead-le-primeonly-add-higherpower.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [primeOnlyFourierShell_le_full_add_higherPower](declarations/primeonlyfouriershell-le-full-add-higherpower.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [primeOnlyFourierHead_le_full_add_higherPower](declarations/primeonlyfourierhead-le-full-add-higherpower.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fullGreenPrimeOnlyCoordinateStage](declarations/fullgreenprimeonlycoordinatestage.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fullGreenPrimeOnlyCoordinateStage_nonnegative](declarations/fullgreenprimeonlycoordinatestage-nonnegative.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [higherPrimePowerFiniteWitnessEnergy](declarations/higherprimepowerfinitewitnessenergy.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [higherPrimePowerFiniteWitnessEnergy_nonnegative](declarations/higherprimepowerfinitewitnessenergy-nonnegative.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [higherPrimePowerFiniteWitnessEnergy_le_full](declarations/higherprimepowerfinitewitnessenergy-le-full.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [fullStage_le_two_primeOnly_add_residual](declarations/fullstage-le-two-primeonly-add-residual.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [primeOnlyStage_le_two_full_add_residual](declarations/primeonlystage-le-two-full-add-residual.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2efae4073b9015ad4957fe0f0ee34523cf3530798eb2282caf7e2b95bf50082 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyWitnessComparison.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
