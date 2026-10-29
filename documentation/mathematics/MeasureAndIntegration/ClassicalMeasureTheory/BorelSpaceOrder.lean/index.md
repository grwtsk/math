# Borel Space Order

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**102 observed declarations and anonymous commands**, 88 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `517ca3c5463c6e3afa0b7d466bac6b87752cac37`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceOrder.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [borel_eq_generateFrom_Iio](declarations/borel-eq-generatefrom-iio.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [borel_eq_generateFrom_Ioi](declarations/borel-eq-generatefrom-ioi.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [borel_eq_generateFrom_Iic](declarations/borel-eq-generatefrom-iic.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [borel_eq_generateFrom_Ici](declarations/borel-eq-generatefrom-ici.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [measurableSet_Ici](declarations/measurableset-ici.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [nullMeasurableSet_Ici](declarations/nullmeasurableset-ici.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [measurableSet_Iic](declarations/measurableset-iic.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nullMeasurableSet_Iic](declarations/nullmeasurableset-iic.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [measurableSet_Icc](declarations/measurableset-icc.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nullMeasurableSet_Icc](declarations/nullmeasurableset-icc.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [nhdsWithin_Ici_isMeasurablyGenerated](declarations/nhdswithin-ici-ismeasurablygenerated.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [nhdsWithin_Iic_isMeasurablyGenerated](declarations/nhdswithin-iic-ismeasurablygenerated.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [nhdsWithin_Icc_isMeasurablyGenerated](declarations/nhdswithin-icc-ismeasurablygenerated.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [atTop_isMeasurablyGenerated](declarations/attop-ismeasurablygenerated.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [atBot_isMeasurablyGenerated](declarations/atbot-ismeasurablygenerated.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [measurableSet_le'](declarations/measurableset-le.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [measurableSet_le](declarations/measurableset-le-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [measurableSet_Iio](declarations/measurableset-iio.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [nullMeasurableSet_Iio](declarations/nullmeasurableset-iio.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [measurableSet_Ioi](declarations/measurableset-ioi.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nullMeasurableSet_Ioi](declarations/nullmeasurableset-ioi.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [measurableSet_Ioo](declarations/measurableset-ioo.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nullMeasurableSet_Ioo](declarations/nullmeasurableset-ioo.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [measurableSet_Ioc](declarations/measurableset-ioc.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nullMeasurableSet_Ioc](declarations/nullmeasurableset-ioc.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [measurableSet_Ico](declarations/measurableset-ico.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nullMeasurableSet_Ico](declarations/nullmeasurableset-ico.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [nhdsWithin_Ioi_isMeasurablyGenerated](declarations/nhdswithin-ioi-ismeasurablygenerated.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [nhdsWithin_Iio_isMeasurablyGenerated](declarations/nhdswithin-iio-ismeasurablygenerated.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [nhdsWithin_uIcc_isMeasurablyGenerated](declarations/nhdswithin-uicc-ismeasurablygenerated.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [measurableSet_lt'](declarations/measurableset-lt-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [measurableSet_lt](declarations/measurableset-lt.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [nullMeasurableSet_lt](declarations/nullmeasurableset-lt-source-edition-2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [nullMeasurableSet_lt'](declarations/nullmeasurableset-lt.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nullMeasurableSet_le](declarations/nullmeasurableset-le.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Set.OrdConnected.measurableSet](declarations/set-ordconnected-measurableset.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsPreconnected.measurableSet](declarations/ispreconnected-measurableset.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [generateFrom_Ico_mem_le_borel](declarations/generatefrom-ico-mem-le-borel.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Dense.borel_eq_generateFrom_Ico_mem_aux](declarations/dense-borel-eq-generatefrom-ico-mem-aux.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Dense.borel_eq_generateFrom_Ico_mem](declarations/dense-borel-eq-generatefrom-ico-mem.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [borel_eq_generateFrom_Ico](declarations/borel-eq-generatefrom-ico.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Dense.borel_eq_generateFrom_Ioc_mem_aux](declarations/dense-borel-eq-generatefrom-ioc-mem-aux.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Dense.borel_eq_generateFrom_Ioc_mem](declarations/dense-borel-eq-generatefrom-ioc-mem.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [borel_eq_generateFrom_Ioc](declarations/borel-eq-generatefrom-ioc.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ext_of_Ico_finite](declarations/ext-of-ico-finite.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ext_of_Ioc_finite](declarations/ext-of-ioc-finite.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ext_of_Ico'](declarations/ext-of-ico-source-edition-2.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ext_of_Ioc'](declarations/ext-of-ioc.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ext_of_Ico](declarations/ext-of-ico.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [ext_of_Ioc](declarations/ext-of-ioc-source-edition-2.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ext_of_Iic](declarations/ext-of-iic.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [ext_of_Ici](declarations/ext-of-ici.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [measurableSet_uIcc](declarations/measurableset-uicc.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [measurableSet_uIoc](declarations/measurableset-uioc.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Measurable.max](declarations/measurable-max.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [AEMeasurable.max](declarations/aemeasurable-max.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Measurable.min](declarations/measurable-min.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [AEMeasurable.min](declarations/aemeasurable-min.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [measurable_of_Iio](declarations/measurable-of-iio.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [UpperSemicontinuous.measurable](declarations/uppersemicontinuous-measurable.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [measurable_of_Ioi](declarations/measurable-of-ioi.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [LowerSemicontinuous.measurable](declarations/lowersemicontinuous-measurable.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [measurable_of_Iic](declarations/measurable-of-iic.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [measurable_of_Ici](declarations/measurable-of-ici.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Measurable.isLUB](declarations/measurable-islub.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Measurable.isLUB_of_mem](declarations/measurable-islub-of-mem.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [AEMeasurable.isLUB](declarations/aemeasurable-islub.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Measurable.isGLB](declarations/measurable-isglb.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Measurable.isGLB_of_mem](declarations/measurable-isglb-of-mem.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [AEMeasurable.isGLB](declarations/aemeasurable-isglb.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Monotone.measurable](declarations/monotone-measurable.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [aemeasurable_restrict_of_monotoneOn](declarations/aemeasurable-restrict-of-monotoneon.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Antitone.measurable](declarations/antitone-measurable.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [aemeasurable_restrict_of_antitoneOn](declarations/aemeasurable-restrict-of-antitoneon.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [MeasurableSet.of_mem_nhdsGT_aux](declarations/measurableset-of-mem-nhdsgt-aux.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [MeasurableSet.of_mem_nhdsGT](declarations/measurableset-of-mem-nhdsgt.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [measurableSet_bddAbove_range](declarations/measurableset-bddabove-range.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [measurableSet_bddBelow_range](declarations/measurableset-bddbelow-range.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Measurable.iSup_Prop](declarations/measurable-isup-prop.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Measurable.iInf_Prop](declarations/measurable-iinf-prop.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Measurable.iSup](declarations/measurable-isup.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [AEMeasurable.iSup](declarations/aemeasurable-isup.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Measurable.iInf](declarations/measurable-iinf.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [AEMeasurable.iInf](declarations/aemeasurable-iinf.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Measurable.sSup](declarations/measurable-ssup.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Measurable.sInf](declarations/measurable-sinf.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Measurable.biSup](declarations/measurable-bisup.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [AEMeasurable.biSup](declarations/aemeasurable-bisup.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Measurable.biInf](declarations/measurable-biinf.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [AEMeasurable.biInf](declarations/aemeasurable-biinf.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Measurable.liminf'](declarations/measurable-liminf-source-edition-2.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Measurable.limsup'](declarations/measurable-limsup-source-edition-2.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Measurable.liminf](declarations/measurable-liminf.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Measurable.limsup](declarations/measurable-limsup.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [Homemorph.toMeasurableEquiv](declarations/homemorph-tomeasurableequiv.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [IsFiniteMeasureOnCompacts.map](declarations/isfinitemeasureoncompacts-map.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [measure_eq_measure_preimage_add_measure_tsum_Ico_zpow](declarations/measure-eq-measure-preimage-add-measure-tsum-ico-zpow.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f45b0a23740e267764a4a4116877d00beceb9f4cf03061e297996eaf4a61d33f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Order/Variant2a57743f497a7237ad064acf66b91b9c50ba6fd3c4db4fe17ddf518c0cecbe3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
