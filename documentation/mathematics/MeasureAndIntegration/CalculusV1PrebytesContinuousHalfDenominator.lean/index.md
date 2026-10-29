# Calculus V1 Prebytes Continuous Half Denominator

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant3fde1b9bbe181274a62d3ce935e8c8bf343513385e40e59e9253b2c9065a1a25.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0731122ae29abc711bfdc934c5e4157ea1fa1f5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [continuousHalfDenominator](declarations/continuoushalfdenominator.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [continuousHalfRational](declarations/continuoushalfrational.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [continuousHalfScaleDerivative](declarations/continuoushalfscalederivative.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [continuousHalfDenominator_pos](declarations/continuoushalfdenominator-pos.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [continuousHalfRational_hasDerivAt](declarations/continuoushalfrational-hasderivat.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [continuousHalfRational_contDiff](declarations/continuoushalfrational-contdiff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [continuousHalfScaleDerivative_continuous](declarations/continuoushalfscalederivative-continuous.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [continuousHalfScaleDerivative_lt_zero](declarations/continuoushalfscalederivative-lt-zero.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [criticalContinuousMoment_eventually_eq_rational](declarations/criticalcontinuousmoment-eventually-eq-rational.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [criticalContinuousMoment_hasDerivAt](declarations/criticalcontinuousmoment-hasderivat.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [criticalContinuousMoment_contDiffAt](declarations/criticalcontinuousmoment-contdiffat.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [criticalContinuousMoment_contDiffOn](declarations/criticalcontinuousmoment-contdiffon.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [criticalContinuousMoment_deriv](declarations/criticalcontinuousmoment-deriv.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mangoldtWorkScaleDerivative](declarations/mangoldtworkscalederivative.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [criticalMangoldtWork_eventually_eq_sub](declarations/criticalmangoldtwork-eventually-eq-sub.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [criticalMangoldtWork_hasDerivAt](declarations/criticalmangoldtwork-hasderivat.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [criticalMangoldtWork_contDiffAt](declarations/criticalmangoldtwork-contdiffat.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [criticalMangoldtWork_contDiffOn](declarations/criticalmangoldtwork-contdiffon.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [criticalMangoldtWork_deriv](declarations/criticalmangoldtwork-deriv.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mangoldtWorkScaleDerivative_continuousOn](declarations/mangoldtworkscalederivative-continuouson.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [uIcc_subset_scaleDomain](declarations/uicc-subset-scaledomain.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [continuousHalfScaleDerivative_intervalIntegrable](declarations/continuoushalfscalederivative-intervalintegrable.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [closedPrimeMomentScaleDerivative_intervalIntegrable](declarations/closedprimemomentscalederivative-intervalintegrable.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mangoldtWorkScaleDerivative_intervalIntegrable](declarations/mangoldtworkscalederivative-intervalintegrable.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [criticalContinuousMoment_flux](declarations/criticalcontinuousmoment-flux.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [criticalMangoldtWork_flux](declarations/criticalmangoldtwork-flux.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [criticalMangoldtWork_flux_eq_sub](declarations/criticalmangoldtwork-flux-eq-sub.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0983d5a9dfaba510eb3c1546e8f9d5d04725e528f8c41a36017e53308ea36f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant3fde1b9bbe181274a62d3ce935e8c8bf343513385e40e59e9253b2c9065a1a25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
