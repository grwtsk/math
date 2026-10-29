# Cond Cdf Source

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**76 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/CondCdf/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0fb5fbeaffc2ee14b2acb6e73debb2d1df9ab46`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/CondCdfSource.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [sequence_anti](declarations/sequence-anti.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sequence_le](declarations/sequence-le.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [prod_iInter](declarations/prod-iinter.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Real.iUnion_Iic_rat](declarations/real-iunion-iic-rat.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Real.iInter_Iic_rat](declarations/real-iinter-iic-rat.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [atBot_le_nhds_bot](declarations/atbot-le-nhds-bot.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [atTop_le_nhds_top](declarations/attop-le-nhds-top.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tendsto_of_antitone](declarations/tendsto-of-antitone.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ENNReal.ofReal_cinfi](declarations/ennreal-ofreal-cinfi.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lintegral_iInf_directed_of_measurable](declarations/lintegral-iinf-directed-of-measurable.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [IicSnd](declarations/iicsnd.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IicSnd_apply](declarations/iicsnd-apply.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IicSnd_univ](declarations/iicsnd-univ.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IicSnd_mono](declarations/iicsnd-mono.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IicSnd_le_fst](declarations/iicsnd-le-fst.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IicSnd_ac_fst](declarations/iicsnd-ac-fst.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsFiniteMeasure.IicSnd](declarations/isfinitemeasure-iicsnd.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [iInf_IicSnd_gt](declarations/iinf-iicsnd-gt.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tendsto_IicSnd_atTop](declarations/tendsto-iicsnd-attop.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tendsto_IicSnd_atBot](declarations/tendsto-iicsnd-atbot.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [preCdf](declarations/precdf.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [measurable_preCdf](declarations/measurable-precdf.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [withDensity_preCdf](declarations/withdensity-precdf.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [set_lintegral_preCdf_fst](declarations/set-lintegral-precdf-fst.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monotone_preCdf](declarations/monotone-precdf.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [set_lintegral_iInf_gt_preCdf](declarations/set-lintegral-iinf-gt-precdf.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [preCdf_le_one](declarations/precdf-le-one.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tendsto_lintegral_preCdf_atTop](declarations/tendsto-lintegral-precdf-attop.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tendsto_lintegral_preCdf_atBot](declarations/tendsto-lintegral-precdf-atbot.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tendsto_preCdf_atTop_one](declarations/tendsto-precdf-attop-one.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tendsto_preCdf_atBot_zero](declarations/tendsto-precdf-atbot-zero.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inf_gt_preCdf](declarations/inf-gt-precdf.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [HasCondCdf](declarations/hascondcdf.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hasCondCdf_ae](declarations/hascondcdf-ae.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [condCdfSet](declarations/condcdfset.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [measurableSet_condCdfSet](declarations/measurableset-condcdfset.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasCondCdf_of_mem_condCdfSet](declarations/hascondcdf-of-mem-condcdfset.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_condCdfSet_ae](declarations/mem-condcdfset-ae.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [condCdfRat](declarations/condcdfrat.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [condCdfRat_of_not_mem](declarations/condcdfrat-of-not-mem.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [condCdfRat_of_mem](declarations/condcdfrat-of-mem.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [monotone_condCdfRat](declarations/monotone-condcdfrat.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measurable_condCdfRat](declarations/measurable-condcdfrat.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [condCdfRat_nonneg](declarations/condcdfrat-nonneg.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [condCdfRat_le_one](declarations/condcdfrat-le-one.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tendsto_condCdfRat_atBot](declarations/tendsto-condcdfrat-atbot.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [tendsto_condCdfRat_atTop](declarations/tendsto-condcdfrat-attop.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [condCdfRat_ae_eq](declarations/condcdfrat-ae-eq.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ofReal_condCdfRat_ae_eq](declarations/ofreal-condcdfrat-ae-eq.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [inf_gt_condCdfRat](declarations/inf-gt-condcdfrat.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [condCdf'_def'](declarations/condcdf-def.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [condCdf'_eq_condCdfRat](declarations/condcdf-eq-condcdfrat.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [condCdf'_nonneg](declarations/condcdf-nonneg.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [bddBelow_range_condCdfRat_gt](declarations/bddbelow-range-condcdfrat-gt.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [monotone_condCdf'](declarations/monotone-condcdf.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [continuousWithinAt_condCdf'_Ici](declarations/continuouswithinat-condcdf-ici.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [condCdf](declarations/condcdf.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [condCdf_eq_condCdfRat](declarations/condcdf-eq-condcdfrat-source-edition-2.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [condCdf_nonneg](declarations/condcdf-nonneg-source-edition-2.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [condCdf_le_one](declarations/condcdf-le-one.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [tendsto_condCdf_atBot](declarations/tendsto-condcdf-atbot.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [tendsto_condCdf_atTop](declarations/tendsto-condcdf-attop.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [condCdf_ae_eq](declarations/condcdf-ae-eq.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ofReal_condCdf_ae_eq](declarations/ofreal-condcdf-ae-eq.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [measurable_condCdf](declarations/measurable-condcdf.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [set_lintegral_condCdf_rat](declarations/set-lintegral-condcdf-rat.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [set_lintegral_condCdf](declarations/set-lintegral-condcdf.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lintegral_condCdf](declarations/lintegral-condcdf.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [stronglyMeasurable_condCdf](declarations/stronglymeasurable-condcdf.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [integrable_condCdf](declarations/integrable-condcdf.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [set_integral_condCdf](declarations/set-integral-condcdf.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [integral_condCdf](declarations/integral-condcdf.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [measure_condCdf_Iic](declarations/measure-condcdf-iic.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [measure_condCdf_univ](declarations/measure-condcdf-univ.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [instIsProbabilityMeasure](declarations/instisprobabilitymeasure.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [measurable_measure_condCdf](declarations/measurable-measure-condcdf.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b875f5a4ebfff39c75ff19380da32c4cd3d104e7b03b43fa66cda6673ed14df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/CondCDF/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean","GRWTSK/Analysis/MeasureTheory/CondCdf/Variantd30314b3f5f7c85749572d53fdd46b6b09720e8f34d74893ae1a0f1b4d04d496.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
