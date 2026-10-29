# Finite Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**97 observed declarations and anonymous commands**, 70 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2717a7f54ffd95469e2887ba3e965c8d7718449`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsFiniteMeasure](declarations/isfinitemeasure.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [not_isFiniteMeasure_iff](declarations/not-isfinitemeasure-iff.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [isFiniteMeasure_restrict](declarations/isfinitemeasure-restrict.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Restrict.isFiniteMeasure](declarations/restrict-isfinitemeasure.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [measure_lt_top](declarations/measure-lt-top.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [isFiniteMeasureRestrict](declarations/isfinitemeasurerestrict.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [measure_ne_top](declarations/measure-ne-top.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [measure_compl_le_add_of_le_add](declarations/measure-compl-le-add-of-le-add.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [measure_compl_le_add_iff](declarations/measure-compl-le-add-iff.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cofinite_eq_bot_iff](declarations/cofinite-eq-bot-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cofinite_eq_bot](declarations/cofinite-eq-bot.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [measureUnivNNReal](declarations/measureunivnnreal.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_measureUnivNNReal](declarations/coe-measureunivnnreal.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [isFiniteMeasureZero](declarations/isfinitemeasurezero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [measureUnivNNReal_zero](declarations/measureunivnnreal-zero.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [isFiniteMeasureAdd](declarations/isfinitemeasureadd.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [isFiniteMeasureSMulNNReal](declarations/isfinitemeasuresmulnnreal.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [IsFiniteMeasure.average](declarations/isfinitemeasure-average.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [isFiniteMeasureSMulOfNNRealTower](declarations/isfinitemeasuresmulofnnrealtower.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isFiniteMeasure_of_le](declarations/isfinitemeasure-of-le.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isFiniteMeasure_dirac](declarations/isfinitemeasure-dirac.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Measure.isFiniteMeasure_map](declarations/measure-isfinitemeasure-map.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Measure.isFiniteMeasure_of_map](declarations/measure-isfinitemeasure-of-map.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Measure.isFiniteMeasure_map_iff](declarations/measure-isfinitemeasure-map-iff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [IsFiniteMeasure_comap](declarations/isfinitemeasure-comap.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [measureUnivNNReal_eq_zero](declarations/measureunivnnreal-eq-zero.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [measureUnivNNReal_pos](declarations/measureunivnnreal-pos.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Measure.le_of_add_le_add_left](declarations/measure-le-of-add-le-add-left.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [Measure.eq_of_le_of_measure_univ_eq](declarations/measure-eq-of-le-of-measure-univ-eq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [summable_measure_toReal](declarations/summable-measure-toreal.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ae_eq_univ_iff_measure_eq](declarations/ae-eq-univ-iff-measure-eq.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ae_iff_measure_eq](declarations/ae-iff-measure-eq.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ae_mem_iff_measure_eq](declarations/ae-mem-iff-measure-eq.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [tendsto_measure_biUnion_Ici_zero_of_pairwise_disjoint](declarations/tendsto-measure-biunion-ici-zero-of-pairwise-disjoint.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [abs_measureReal_sub_le_measureReal_symmDiff'](declarations/abs-measurereal-sub-le-measurereal-symmdiff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [abs_measureReal_sub_le_measureReal_symmDiff](declarations/abs-measurereal-sub-le-measurereal-symmdiff-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ite_ae_eq_of_measure_zero](declarations/ite-ae-eq-of-measure-zero.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ite_ae_eq_of_measure_compl_zero](declarations/ite-ae-eq-of-measure-compl-zero.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [FiniteAtFilter](declarations/finiteatfilter.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finiteAtFilter_of_finite](declarations/finiteatfilter-of-finite.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [FiniteAtFilter.exists_mem_basis](declarations/finiteatfilter-exists-mem-basis.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [finiteAtBot](declarations/finiteatbot.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [FiniteSpanningSetsIn](declarations/finitespanningsetsin.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `class` | [IsLocallyFiniteMeasure](declarations/islocallyfinitemeasure.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Measure.finiteAt_nhds](declarations/measure-finiteat-nhds.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Measure.smul_finite](declarations/measure-smul-finite.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Measure.exists_isOpen_measure_lt_top](declarations/measure-exists-isopen-measure-lt-top.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [isLocallyFiniteMeasureSMulNNReal](declarations/islocallyfinitemeasuresmulnnreal.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Measure.isTopologicalBasis_isOpen_lt_top](declarations/measure-istopologicalbasis-isopen-lt-top.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `class` | [IsFiniteMeasureOnCompacts](declarations/isfinitemeasureoncompacts.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Finite Namespaced Public](declarations/measure-lt-top-source-line-351-occurrence-2.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Finite Namespaced Public](declarations/measure-ne-top-source-line-356-occurrence-2.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Finite Namespaced Public](declarations/measure-lt-top-source-line-362-occurrence-2.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [measure_closedBall_lt_top](declarations/measure-closedball-lt-top.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [measure_ball_ne_top](declarations/measure-ball-ne-top.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [measure_ball_lt_top](declarations/measure-ball-lt-top.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsFiniteMeasureOnCompacts.smul](declarations/isfinitemeasureoncompacts-smul.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [IsFiniteMeasureOnCompacts.smul_nnreal](declarations/isfinitemeasureoncompacts-smul-nnreal.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instIsFiniteMeasureOnCompactsRestrict](declarations/instisfinitemeasureoncompactsrestrict.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsFiniteMeasureOnCompacts.comap'](declarations/isfinitemeasureoncompacts-comap.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [exists_pos_measure_of_cover](declarations/exists-pos-measure-of-cover.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [exists_pos_preimage_ball](declarations/exists-pos-preimage-ball.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [exists_pos_ball](declarations/exists-pos-ball.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [exists_ne_forall_mem_nhds_pos_measure_preimage](declarations/exists-ne-forall-mem-nhds-pos-measure-preimage.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [ext_on_measurableSpace_of_generate_finite](declarations/ext-on-measurablespace-of-generate-finite.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [ext_of_generate_finite](declarations/ext-of-generate-finite.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [filter_mono](declarations/filter-mono.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [inf_of_left](declarations/inf-of-left.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [inf_of_right](declarations/inf-of-right.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [inf_ae_iff](declarations/inf-ae-iff.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [filter_mono_ae](declarations/filter-mono-ae.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [measure_mono](declarations/measure-mono.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mono](declarations/mono.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [eventually](declarations/eventually.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [filterSup](declarations/filtersup.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [finiteAt_nhdsWithin](declarations/finiteat-nhdswithin.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [finiteAt_principal](declarations/finiteat-principal.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [isLocallyFiniteMeasure_of_le](declarations/islocallyfinitemeasure-of-le.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [exists_open_superset_measure_lt_top'](declarations/exists-open-superset-measure-lt-top-source-edition-2.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [exists_open_superset_measure_lt_top](declarations/exists-open-superset-measure-lt-top.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [measure_lt_top_of_nhdsWithin](declarations/measure-lt-top-of-nhdswithin.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [measure_zero_of_nhdsWithin](declarations/measure-zero-of-nhdswithin.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [isFiniteMeasure_iff_isFiniteMeasureOnCompacts_of_compactSpace](declarations/isfinitemeasure-iff-isfinitemeasureoncompacts-of-compactspace.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [MeasureTheory.Measure.finiteSpanningSetsInCompact](declarations/measuretheory-measure-finitespanningsetsincompact.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [MeasureTheory.Measure.finiteSpanningSetsInOpen](declarations/measuretheory-measure-finitespanningsetsinopen.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [measure_Icc_lt_top](declarations/measure-icc-lt-top.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [measure_Ico_lt_top](declarations/measure-ico-lt-top.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [measure_Ioc_lt_top](declarations/measure-ioc-lt-top.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [measure_Ioo_lt_top](declarations/measure-ioo-lt-top.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a702e6b4bbd3ba469b36a7916dd4431665e5d0cb13173ef1df5dbdfe34d2ef7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Finite/Variantfb8262a41c573e3da770796773f013f5e020fdccb1925e58e47fb17877cb617b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
