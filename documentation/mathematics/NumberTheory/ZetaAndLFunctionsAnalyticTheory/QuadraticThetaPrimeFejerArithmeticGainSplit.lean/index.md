# Quadratic Theta Prime Fejer Arithmetic Gain Split

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**22 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f26232f427a5ab8833a3ed2e4b1378ebe24ad129`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerArithmeticGainSplit.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [gradedBandwidthGain](declarations/gradedbandwidthgain.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [gradedArithmeticGainRequirement](declarations/gradedarithmeticgainrequirement.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gradedSplitSmoothedValueExponent](declarations/gradedsplitsmoothedvalueexponent.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [gradedSmoothedValueGainRequirement_eq_bandwidth_add_arithmetic](declarations/gradedsmoothedvaluegainrequirement-eq-bandwidth-add-arithmetic.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [gradedSplitSmoothedValueExponent_eq](declarations/gradedsplitsmoothedvalueexponent-eq.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gradedSplitSmoothedValueExponent_le_quadratic_iff](declarations/gradedsplitsmoothedvalueexponent-le-quadratic-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [bandwidthNeutralization_le_quadratic_iff](declarations/bandwidthneutralization-le-quadratic-iff.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [pureBandwidthNeutralization_misses_quadratic](declarations/purebandwidthneutralization-misses-quadratic.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundaryMinimalFejerBandwidthExponent](declarations/boundaryminimalfejerbandwidthexponent.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [truncatedFourierBoundary_boundaryMinimal](declarations/truncatedfourierboundary-boundaryminimal.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [boundaryMinimal_totalSplitGain](declarations/boundaryminimal-totalsplitgain.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ThresholdGradedPrimeFejerSplitSupplier](declarations/thresholdgradedprimefejersplitsupplier.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [thresholdGradedPrimeFejerSplitSupplier_arithmeticGain_requirement](declarations/thresholdgradedprimefejersplitsupplier-arithmeticgain-requirement.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [thresholdGradedPrimeFejerSplitSupplier_totalGain_floor](declarations/thresholdgradedprimefejersplitsupplier-totalgain-floor.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ThresholdGradedPrimeFejerSplitSupplier.toThresholdGradedPrimeFejerSupplier](declarations/thresholdgradedprimefejersplitsupplier-tothresholdgradedprimefejersuppli.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sevenEighths_boundaryMinimalFejerBandwidthExponent](declarations/seveneighths-boundaryminimalfejerbandwidthexponent.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sevenEighths_gradedBandwidthGain_at_boundaryMinimum](declarations/seveneighths-gradedbandwidthgain-at-boundaryminimum.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sevenEighths_gradedArithmeticGainRequirement](declarations/seveneighths-gradedarithmeticgainrequirement.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sevenEighths_boundaryMinimal_exactGainSplit](declarations/seveneighths-boundaryminimal-exactgainsplit.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sevenEighths_splitSupplier_arithmeticGain_ge_eighth](declarations/seveneighths-splitsupplier-arithmeticgain-ge-eighth.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sevenEighths_splitSupplier_totalGain_ge_quarter](declarations/seveneighths-splitsupplier-totalgain-ge-quarter.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sevenEighths_splitSupplier_to_partialDiscrepancy](declarations/seveneighths-splitsupplier-to-partialdiscrepancy.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1cb88ce9d603a714a4c16537be4f4c2d3b2f7a277d4144626978f2010240cc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticGainSplit.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
