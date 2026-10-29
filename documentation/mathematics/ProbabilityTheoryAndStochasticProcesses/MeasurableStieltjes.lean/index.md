# Measurable Stieltjes

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant9fcd2ddf165fc065cab3b773c0172ea165abcc28ac2e882c93f892ca6ada7e67.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f12b7281d4ed94eab91d044ebf250079ca378c07`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjes.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [StieltjesFunction.measurable_measure](declarations/stieltjesfunction-measurable-measure.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsRatStieltjesPoint](declarations/isratstieltjespoint.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isRatStieltjesPoint_unit_prod_iff](declarations/isratstieltjespoint-unit-prod-iff.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [measurableSet_isRatStieltjesPoint](declarations/measurableset-isratstieltjespoint.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsRatStieltjesPoint.ite](declarations/isratstieltjespoint-ite.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [IsMeasurableRatCDF](declarations/ismeasurableratcdf.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsMeasurableRatCDF.nonneg](declarations/ismeasurableratcdf-nonneg.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [IsMeasurableRatCDF.le_one](declarations/ismeasurableratcdf-le-one.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsMeasurableRatCDF.tendsto_atTop_one](declarations/ismeasurableratcdf-tendsto-attop-one.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsMeasurableRatCDF.tendsto_atBot_zero](declarations/ismeasurableratcdf-tendsto-atbot-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsMeasurableRatCDF.iInf_rat_gt_eq](declarations/ismeasurableratcdf-iinf-rat-gt-eq.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [defaultRatCDF](declarations/defaultratcdf.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [monotone_defaultRatCDF](declarations/monotone-defaultratcdf.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [defaultRatCDF_nonneg](declarations/defaultratcdf-nonneg.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [defaultRatCDF_le_one](declarations/defaultratcdf-le-one.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [tendsto_defaultRatCDF_atTop](declarations/tendsto-defaultratcdf-attop.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [tendsto_defaultRatCDF_atBot](declarations/tendsto-defaultratcdf-atbot.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [iInf_rat_gt_defaultRatCDF](declarations/iinf-rat-gt-defaultratcdf.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [isRatStieltjesPoint_defaultRatCDF](declarations/isratstieltjespoint-defaultratcdf.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsMeasurableRatCDF_defaultRatCDF](declarations/ismeasurableratcdf-defaultratcdf.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toRatCDF](declarations/toratcdf.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [toRatCDF_of_isRatStieltjesPoint](declarations/toratcdf-of-isratstieltjespoint.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [toRatCDF_unit_prod](declarations/toratcdf-unit-prod.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [measurable_toRatCDF](declarations/measurable-toratcdf.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isMeasurableRatCDF_toRatCDF](declarations/ismeasurableratcdf-toratcdf.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_def'](declarations/ismeasurableratcdf-stieltjesfunctionaux-def.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_unit_prod](declarations/ismeasurableratcdf-stieltjesfunctionaux-unit-prod.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_eq](declarations/ismeasurableratcdf-stieltjesfunctionaux-eq.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_nonneg](declarations/ismeasurableratcdf-stieltjesfunctionaux-nonneg.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsMeasurableRatCDF.monotone_stieltjesFunctionAux](declarations/ismeasurableratcdf-monotone-stieltjesfunctionaux.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsMeasurableRatCDF.continuousWithinAt_stieltjesFunctionAux_Ici](declarations/ismeasurableratcdf-continuouswithinat-stieltjesfunctionaux-ici.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsMeasurableRatCDF.stieltjesFunction](declarations/ismeasurableratcdf-stieltjesfunction.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_eq](declarations/ismeasurableratcdf-stieltjesfunction-eq.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_nonneg](declarations/ismeasurableratcdf-stieltjesfunction-nonneg.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_le_one](declarations/ismeasurableratcdf-stieltjesfunction-le-one.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsMeasurableRatCDF.tendsto_stieltjesFunction_atBot](declarations/ismeasurableratcdf-tendsto-stieltjesfunction-atbot.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsMeasurableRatCDF.tendsto_stieltjesFunction_atTop](declarations/ismeasurableratcdf-tendsto-stieltjesfunction-attop.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsMeasurableRatCDF.measurable_stieltjesFunction](declarations/ismeasurableratcdf-measurable-stieltjesfunction.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsMeasurableRatCDF.stronglyMeasurable_stieltjesFunction](declarations/ismeasurableratcdf-stronglymeasurable-stieltjesfunction.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsMeasurableRatCDF.measure_stieltjesFunction_Iic](declarations/ismeasurableratcdf-measure-stieltjesfunction-iic.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsMeasurableRatCDF.measure_stieltjesFunction_univ](declarations/ismeasurableratcdf-measure-stieltjesfunction-univ.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [IsMeasurableRatCDF.instIsProbabilityMeasure_stieltjesFunction](declarations/ismeasurableratcdf-instisprobabilitymeasure-stieltjesfunction.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [IsMeasurableRatCDF.measurable_measure_stieltjesFunction](declarations/ismeasurableratcdf-measurable-measure-stieltjesfunction.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [stieltjesOfMeasurableRat](declarations/stieltjesofmeasurablerat.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [stieltjesOfMeasurableRat_eq](declarations/stieltjesofmeasurablerat-eq.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [stieltjesOfMeasurableRat_unit_prod](declarations/stieltjesofmeasurablerat-unit-prod.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [stieltjesOfMeasurableRat_nonneg](declarations/stieltjesofmeasurablerat-nonneg.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [stieltjesOfMeasurableRat_le_one](declarations/stieltjesofmeasurablerat-le-one.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [tendsto_stieltjesOfMeasurableRat_atBot](declarations/tendsto-stieltjesofmeasurablerat-atbot.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [tendsto_stieltjesOfMeasurableRat_atTop](declarations/tendsto-stieltjesofmeasurablerat-attop.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [measurable_stieltjesOfMeasurableRat](declarations/measurable-stieltjesofmeasurablerat.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [stronglyMeasurable_stieltjesOfMeasurableRat](declarations/stronglymeasurable-stieltjesofmeasurablerat.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [measure_stieltjesOfMeasurableRat_Iic](declarations/measure-stieltjesofmeasurablerat-iic.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [measure_stieltjesOfMeasurableRat_univ](declarations/measure-stieltjesofmeasurablerat-univ.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [instIsProbabilityMeasure_stieltjesOfMeasurableRat](declarations/instisprobabilitymeasure-stieltjesofmeasurablerat.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [measurable_measure_stieltjesOfMeasurableRat](declarations/measurable-measure-stieltjesofmeasurablerat.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a3b863d6a6efb5c273225880de6c07c0fe97194fc48e72fccd048e475f6d2dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant9fcd2ddf165fc065cab3b773c0172ea165abcc28ac2e882c93f892ca6ada7e67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
