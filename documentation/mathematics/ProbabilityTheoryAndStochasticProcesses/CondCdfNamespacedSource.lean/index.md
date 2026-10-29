# Cond Cdf Namespaced Source

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**76 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/CondCdf/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ff22f63535d2a22bb2c37e21aea83df0babac79`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/CondCdfNamespacedSource.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [sequence_anti](declarations/sequence-anti.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sequence_le](declarations/sequence-le.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [prod_iInter](declarations/prod-iinter.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Real.iUnion_Iic_rat](declarations/real-iunion-iic-rat.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Real.iInter_Iic_rat](declarations/real-iinter-iic-rat.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [atBot_le_nhds_bot](declarations/atbot-le-nhds-bot.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [atTop_le_nhds_top](declarations/attop-le-nhds-top.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tendsto_of_antitone](declarations/tendsto-of-antitone.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ENNReal.ofReal_cinfi](declarations/ennreal-ofreal-cinfi.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lintegral_iInf_directed_of_measurable](declarations/lintegral-iinf-directed-of-measurable.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [IicSnd](declarations/iicsnd.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IicSnd_apply](declarations/iicsnd-apply.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IicSnd_univ](declarations/iicsnd-univ.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IicSnd_mono](declarations/iicsnd-mono.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IicSnd_le_fst](declarations/iicsnd-le-fst.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IicSnd_ac_fst](declarations/iicsnd-ac-fst.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsFiniteMeasure.IicSnd](declarations/isfinitemeasure-iicsnd.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [iInf_IicSnd_gt](declarations/iinf-iicsnd-gt.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tendsto_IicSnd_atTop](declarations/tendsto-iicsnd-attop.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tendsto_IicSnd_atBot](declarations/tendsto-iicsnd-atbot.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [preCdf](declarations/precdf.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [measurable_preCdf](declarations/measurable-precdf.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [withDensity_preCdf](declarations/withdensity-precdf.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [set_lintegral_preCdf_fst](declarations/set-lintegral-precdf-fst.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monotone_preCdf](declarations/monotone-precdf.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [set_lintegral_iInf_gt_preCdf](declarations/set-lintegral-iinf-gt-precdf.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [preCdf_le_one](declarations/precdf-le-one.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tendsto_lintegral_preCdf_atTop](declarations/tendsto-lintegral-precdf-attop.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tendsto_lintegral_preCdf_atBot](declarations/tendsto-lintegral-precdf-atbot.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tendsto_preCdf_atTop_one](declarations/tendsto-precdf-attop-one.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tendsto_preCdf_atBot_zero](declarations/tendsto-precdf-atbot-zero.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inf_gt_preCdf](declarations/inf-gt-precdf.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [HasCondCdf](declarations/hascondcdf.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hasCondCdf_ae](declarations/hascondcdf-ae.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [condCdfSet](declarations/condcdfset.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [measurableSet_condCdfSet](declarations/measurableset-condcdfset.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasCondCdf_of_mem_condCdfSet](declarations/hascondcdf-of-mem-condcdfset.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_condCdfSet_ae](declarations/mem-condcdfset-ae.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [condCdfRat](declarations/condcdfrat.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [condCdfRat_of_not_mem](declarations/condcdfrat-of-not-mem.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [condCdfRat_of_mem](declarations/condcdfrat-of-mem.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [monotone_condCdfRat](declarations/monotone-condcdfrat.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measurable_condCdfRat](declarations/measurable-condcdfrat.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [condCdfRat_nonneg](declarations/condcdfrat-nonneg.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [condCdfRat_le_one](declarations/condcdfrat-le-one.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tendsto_condCdfRat_atBot](declarations/tendsto-condcdfrat-atbot.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [tendsto_condCdfRat_atTop](declarations/tendsto-condcdfrat-attop.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [condCdfRat_ae_eq](declarations/condcdfrat-ae-eq.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ofReal_condCdfRat_ae_eq](declarations/ofreal-condcdfrat-ae-eq.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inf_gt_condCdfRat](declarations/inf-gt-condcdfrat.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [condCdf'_def'](declarations/condcdf-def.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [condCdf'_eq_condCdfRat](declarations/condcdf-eq-condcdfrat.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [condCdf'_nonneg](declarations/condcdf-nonneg-source-edition-2.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [bddBelow_range_condCdfRat_gt](declarations/bddbelow-range-condcdfrat-gt.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [monotone_condCdf'](declarations/monotone-condcdf.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [continuousWithinAt_condCdf'_Ici](declarations/continuouswithinat-condcdf-ici.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [condCdf](declarations/condcdf.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [condCdf_eq_condCdfRat](declarations/condcdf-eq-condcdfrat-source-edition-2.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [condCdf_nonneg](declarations/condcdf-nonneg.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [condCdf_le_one](declarations/condcdf-le-one.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [tendsto_condCdf_atBot](declarations/tendsto-condcdf-atbot.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [tendsto_condCdf_atTop](declarations/tendsto-condcdf-attop.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [condCdf_ae_eq](declarations/condcdf-ae-eq.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ofReal_condCdf_ae_eq](declarations/ofreal-condcdf-ae-eq.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [measurable_condCdf](declarations/measurable-condcdf.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [set_lintegral_condCdf_rat](declarations/set-lintegral-condcdf-rat.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [set_lintegral_condCdf](declarations/set-lintegral-condcdf.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lintegral_condCdf](declarations/lintegral-condcdf.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [stronglyMeasurable_condCdf](declarations/stronglymeasurable-condcdf.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [integrable_condCdf](declarations/integrable-condcdf.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [set_integral_condCdf](declarations/set-integral-condcdf.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [integral_condCdf](declarations/integral-condcdf.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [measure_condCdf_Iic](declarations/measure-condcdf-iic.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [measure_condCdf_univ](declarations/measure-condcdf-univ.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instIsProbabilityMeasure](declarations/instisprobabilitymeasure.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [measurable_measure_condCdf](declarations/measurable-measure-condcdf.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2484cc9ed5460b4b9fd9e754878aa8f1f5ec4549ecfd12477db6f71cef57699d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CondCDF/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean","GRWTSK/Analysis/MeasureTheory/CondCdf/Variant4b5df95b8a088303a33e59129843638460ae888b19f791e355f81009a9c87eca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
