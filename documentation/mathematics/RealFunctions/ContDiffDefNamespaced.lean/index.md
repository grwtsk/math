# Cont Diff Def Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**179 observed declarations and anonymous commands**, 169 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40b673d2a4a18360984ddc9c8558d622a443ccf7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/ContDiffDefNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HasFTaylorSeriesUpToOn](declarations/hasftaylorseriesuptoon.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [HasFTaylorSeriesUpToOn.zero_eq'](declarations/hasftaylorseriesuptoon-zero-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [HasFTaylorSeriesUpToOn.congr](declarations/hasftaylorseriesuptoon-congr.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [HasFTaylorSeriesUpToOn.mono](declarations/hasftaylorseriesuptoon-mono.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasFTaylorSeriesUpToOn.of_le](declarations/hasftaylorseriesuptoon-of-le.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [HasFTaylorSeriesUpToOn.continuousOn](declarations/hasftaylorseriesuptoon-continuouson.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFTaylorSeriesUpToOn_zero_iff](declarations/hasftaylorseriesuptoon-zero-iff.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasFTaylorSeriesUpToOn_top_iff](declarations/hasftaylorseriesuptoon-top-iff.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFTaylorSeriesUpToOn_top_iff'](declarations/hasftaylorseriesuptoon-top-iff-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasFTaylorSeriesUpToOn.hasFDerivWithinAt](declarations/hasftaylorseriesuptoon-hasfderivwithinat.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasFTaylorSeriesUpToOn.differentiableOn](declarations/hasftaylorseriesuptoon-differentiableon.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [HasFTaylorSeriesUpToOn.hasFDerivAt](declarations/hasftaylorseriesuptoon-hasfderivat.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [HasFTaylorSeriesUpToOn.eventually_hasFDerivAt](declarations/hasftaylorseriesuptoon-eventually-hasfderivat.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [HasFTaylorSeriesUpToOn.differentiableAt](declarations/hasftaylorseriesuptoon-differentiableat.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasFTaylorSeriesUpToOn_succ_iff_left](declarations/hasftaylorseriesuptoon-succ-iff-left.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HasFTaylorSeriesUpToOn.shift_of_succ](declarations/hasftaylorseriesuptoon-shift-of-succ.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasFTaylorSeriesUpToOn_succ_iff_right](declarations/hasftaylorseriesuptoon-succ-iff-right.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ContDiffWithinAt](declarations/contdiffwithinat.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [contDiffWithinAt_nat](declarations/contdiffwithinat-nat.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ContDiffWithinAt.of_le](declarations/contdiffwithinat-of-le.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [contDiffWithinAt_iff_forall_nat_le](declarations/contdiffwithinat-iff-forall-nat-le.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [contDiffWithinAt_top](declarations/contdiffwithinat-top.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ContDiffWithinAt.continuousWithinAt](declarations/contdiffwithinat-continuouswithinat.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ContDiffWithinAt.congr_of_eventuallyEq](declarations/contdiffwithinat-congr-of-eventuallyeq.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ContDiffWithinAt.congr_of_eventuallyEq_insert](declarations/contdiffwithinat-congr-of-eventuallyeq-insert.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ContDiffWithinAt.congr_of_eventually_eq'](declarations/contdiffwithinat-congr-of-eventually-eq.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Filter.EventuallyEq.contDiffWithinAt_iff](declarations/filter-eventuallyeq-contdiffwithinat-iff.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ContDiffWithinAt.congr](declarations/contdiffwithinat-congr.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ContDiffWithinAt.congr'](declarations/contdiffwithinat-congr-source-edition-2.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContDiffWithinAt.mono_of_mem](declarations/contdiffwithinat-mono-of-mem.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ContDiffWithinAt.mono](declarations/contdiffwithinat-mono.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ContDiffWithinAt.congr_nhds](declarations/contdiffwithinat-congr-nhds-source-edition-2.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [contDiffWithinAt_congr_nhds](declarations/contdiffwithinat-congr-nhds.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [contDiffWithinAt_inter'](declarations/contdiffwithinat-inter-source-edition-2.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [contDiffWithinAt_inter](declarations/contdiffwithinat-inter.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [contDiffWithinAt_insert_self](declarations/contdiffwithinat-insert-self.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [contDiffWithinAt_insert](declarations/contdiffwithinat-insert-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ContDiffWithinAt.insert](declarations/contdiffwithinat-insert.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ContDiffWithinAt.differentiable_within_at'](declarations/contdiffwithinat-differentiable-within-at.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ContDiffWithinAt.differentiableWithinAt](declarations/contdiffwithinat-differentiablewithinat.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [contDiffWithinAt_succ_iff_hasFDerivWithinAt](declarations/contdiffwithinat-succ-iff-hasfderivwithinat.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [contDiffWithinAt_succ_iff_hasFDerivWithinAt'](declarations/contdiffwithinat-succ-iff-hasfderivwithinat-source-edition-2.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ContDiffOn](declarations/contdiffon.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasFTaylorSeriesUpToOn.contDiffOn](declarations/hasftaylorseriesuptoon-contdiffon.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ContDiffOn.contDiffWithinAt](declarations/contdiffon-contdiffwithinat.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ContDiffWithinAt.contDiffOn'](declarations/contdiffwithinat-contdiffon.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ContDiffWithinAt.contDiffOn](declarations/contdiffwithinat-contdiffon-source-edition-2.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ContDiffWithinAt.eventually](declarations/contdiffwithinat-eventually.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ContDiffOn.of_le](declarations/contdiffon-of-le.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ContDiffOn.of_succ](declarations/contdiffon-of-succ.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [ContDiffOn.one_of_succ](declarations/contdiffon-one-of-succ.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [contDiffOn_iff_forall_nat_le](declarations/contdiffon-iff-forall-nat-le.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [contDiffOn_top](declarations/contdiffon-top.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [contDiffOn_all_iff_nat](declarations/contdiffon-all-iff-nat.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ContDiffOn.continuousOn](declarations/contdiffon-continuouson.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [ContDiffOn.congr](declarations/contdiffon-congr.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [contDiffOn_congr](declarations/contdiffon-congr-source-edition-2.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ContDiffOn.mono](declarations/contdiffon-mono.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ContDiffOn.congr_mono](declarations/contdiffon-congr-mono.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ContDiffOn.differentiableOn](declarations/contdiffon-differentiableon.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [contDiffOn_of_locally_contDiffOn](declarations/contdiffon-of-locally-contdiffon.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [contDiffOn_succ_iff_hasFDerivWithinAt](declarations/contdiffon-succ-iff-hasfderivwithinat.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [iteratedFDerivWithin](declarations/iteratedfderivwithin.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ftaylorSeriesWithin](declarations/ftaylorserieswithin.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [iteratedFDerivWithin_zero_apply](declarations/iteratedfderivwithin-zero-apply.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [iteratedFDerivWithin_zero_eq_comp](declarations/iteratedfderivwithin-zero-eq-comp.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [norm_iteratedFDerivWithin_zero](declarations/norm-iteratedfderivwithin-zero.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [iteratedFDerivWithin_succ_apply_left](declarations/iteratedfderivwithin-succ-apply-left.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [iteratedFDerivWithin_succ_eq_comp_left](declarations/iteratedfderivwithin-succ-eq-comp-left.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [fderivWithin_iteratedFDerivWithin](declarations/fderivwithin-iteratedfderivwithin.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [norm_fderivWithin_iteratedFDerivWithin](declarations/norm-fderivwithin-iteratedfderivwithin.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [iteratedFDerivWithin_succ_apply_right](declarations/iteratedfderivwithin-succ-apply-right.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [iteratedFDerivWithin_succ_eq_comp_right](declarations/iteratedfderivwithin-succ-eq-comp-right.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [norm_iteratedFDerivWithin_fderivWithin](declarations/norm-iteratedfderivwithin-fderivwithin.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [iteratedFDerivWithin_one_apply](declarations/iteratedfderivwithin-one-apply.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Filter.EventuallyEq.iterated_fderiv_within'](declarations/filter-eventuallyeq-iterated-fderiv-within.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Filter.EventuallyEq.iteratedFDerivWithin](declarations/filter-eventuallyeq-iteratedfderivwithin.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Filter.EventuallyEq.iteratedFDerivWithin_eq](declarations/filter-eventuallyeq-iteratedfderivwithin-eq.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [iteratedFDerivWithin_congr](declarations/iteratedfderivwithin-congr.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Set.EqOn.iteratedFDerivWithin](declarations/set-eqon-iteratedfderivwithin.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [iteratedFDerivWithin_eventually_congr_set'](declarations/iteratedfderivwithin-eventually-congr-set-source-edition-2.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [iteratedFDerivWithin_eventually_congr_set](declarations/iteratedfderivwithin-eventually-congr-set.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [iteratedFDerivWithin_congr_set](declarations/iteratedfderivwithin-congr-set.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [iteratedFDerivWithin_inter'](declarations/iteratedfderivwithin-inter.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [iteratedFDerivWithin_inter](declarations/iteratedfderivwithin-inter-source-edition-2.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [iteratedFDerivWithin_inter_open](declarations/iteratedfderivwithin-inter-open.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [contDiffOn_zero](declarations/contdiffon-zero.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [contDiffWithinAt_zero](declarations/contdiffwithinat-zero.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [HasFTaylorSeriesUpToOn.eq_ftaylor_series_of_uniqueDiffOn](declarations/hasftaylorseriesuptoon-eq-ftaylor-series-of-uniquediffon.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [ContDiffOn.ftaylorSeriesWithin](declarations/contdiffon-ftaylorserieswithin.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn](declarations/contdiffon-of-continuouson-differentiableon.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [contDiffOn_of_differentiableOn](declarations/contdiffon-of-differentiableon.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [ContDiffOn.continuousOn_iteratedFDerivWithin](declarations/contdiffon-continuouson-iteratedfderivwithin.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [ContDiffOn.differentiableOn_iteratedFDerivWithin](declarations/contdiffon-differentiableon-iteratedfderivwithin.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedFDerivWithin](declarations/contdiffwithinat-differentiablewithinat-iteratedfderivwithin.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn](declarations/contdiffon-iff-continuouson-differentiableon.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [contDiffOn_succ_of_fderivWithin](declarations/contdiffon-succ-of-fderivwithin.md) | 1129 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [contDiffOn_succ_iff_fderivWithin](declarations/contdiffon-succ-iff-fderivwithin.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [contDiffOn_succ_iff_has_fderiv_within](declarations/contdiffon-succ-iff-has-fderiv-within.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [contDiffOn_succ_iff_fderiv_of_open](declarations/contdiffon-succ-iff-fderiv-of-open.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [contDiffOn_top_iff_fderivWithin](declarations/contdiffon-top-iff-fderivwithin.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [contDiffOn_top_iff_fderiv_of_open](declarations/contdiffon-top-iff-fderiv-of-open.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [ContDiffOn.fderivWithin](declarations/contdiffon-fderivwithin.md) | 1202 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [ContDiffOn.fderiv_of_open](declarations/contdiffon-fderiv-of-open.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [ContDiffOn.continuousOn_fderivWithin](declarations/contdiffon-continuouson-fderivwithin.md) | 1218 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [ContDiffOn.continuousOn_fderiv_of_open](declarations/contdiffon-continuouson-fderiv-of-open.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `structure` | [HasFTaylorSeriesUpTo](declarations/hasftaylorseriesupto.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [HasFTaylorSeriesUpTo.zero_eq'](declarations/hasftaylorseriesupto-zero-eq.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [hasFTaylorSeriesUpToOn_univ_iff](declarations/hasftaylorseriesuptoon-univ-iff.md) | 1246 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [HasFTaylorSeriesUpTo.hasFTaylorSeriesUpToOn](declarations/hasftaylorseriesupto-hasftaylorseriesuptoon.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [HasFTaylorSeriesUpTo.ofLe](declarations/hasftaylorseriesupto-ofle.md) | 1274 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [HasFTaylorSeriesUpTo.continuous](declarations/hasftaylorseriesupto-continuous.md) | 1279 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [hasFTaylorSeriesUpTo_zero_iff](declarations/hasftaylorseriesupto-zero-iff.md) | 1285 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [hasFTaylorSeriesUpTo_top_iff](declarations/hasftaylorseriesupto-top-iff.md) | 1291 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [hasFTaylorSeriesUpTo_top_iff'](declarations/hasftaylorseriesupto-top-iff-source-edition-2.md) | 1298 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [HasFTaylorSeriesUpTo.hasFDerivAt](declarations/hasftaylorseriesupto-hasfderivat.md) | 1308 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [HasFTaylorSeriesUpTo.differentiable](declarations/hasftaylorseriesupto-differentiable.md) | 1314 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [hasFTaylorSeriesUpTo_succ_iff_right](declarations/hasftaylorseriesupto-succ-iff-right.md) | 1320 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [ContDiffAt](declarations/contdiffat.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [contDiffWithinAt_univ](declarations/contdiffwithinat-univ.md) | 1343 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [contDiffAt_top](declarations/contdiffat-top.md) | 1347 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [ContDiffAt.contDiffWithinAt](declarations/contdiffat-contdiffwithinat.md) | 1351 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [ContDiffWithinAt.contDiffAt](declarations/contdiffwithinat-contdiffat.md) | 1355 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [ContDiffOn.contDiffAt](declarations/contdiffon-contdiffat.md) | 1360 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [ContDiffAt.congr_of_eventuallyEq](declarations/contdiffat-congr-of-eventuallyeq.md) | 1364 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [ContDiffAt.of_le](declarations/contdiffat-of-le.md) | 1369 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [ContDiffAt.continuousAt](declarations/contdiffat-continuousat.md) | 1373 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [ContDiffAt.differentiableAt](declarations/contdiffat-differentiableat.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [contDiffAt_succ_iff_hasFDerivAt](declarations/contdiffat-succ-iff-hasfderivat.md) | 1384 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [ContDiffAt.eventually](declarations/contdiffat-eventually.md) | 1403 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [ContDiff](declarations/contdiff.md) | 1416 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [HasFTaylorSeriesUpTo.contDiff](declarations/hasftaylorseriesupto-contdiff.md) | 1423 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [contDiffOn_univ](declarations/contdiffon-univ.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [contDiff_iff_contDiffAt](declarations/contdiff-iff-contdiffat.md) | 1438 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [ContDiff.contDiffAt](declarations/contdiff-contdiffat.md) | 1442 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [ContDiff.contDiffWithinAt](declarations/contdiff-contdiffwithinat.md) | 1446 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [contDiff_top](declarations/contdiff-top.md) | 1450 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [contDiff_all_iff_nat](declarations/contdiff-all-iff-nat.md) | 1454 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [ContDiff.contDiffOn](declarations/contdiff-contdiffon.md) | 1458 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [contDiff_zero](declarations/contdiff-zero.md) | 1463 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [contDiffAt_zero](declarations/contdiffat-zero.md) | 1468 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [contDiffAt_one_iff](declarations/contdiffat-one-iff.md) | 1472 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [ContDiff.of_le](declarations/contdiff-of-le.md) | 1480 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [ContDiff.of_succ](declarations/contdiff-of-succ.md) | 1484 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [ContDiff.one_of_succ](declarations/contdiff-one-of-succ.md) | 1488 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [ContDiff.continuous](declarations/contdiff-continuous.md) | 1492 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [ContDiff.differentiable](declarations/contdiff-differentiable.md) | 1497 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [contDiff_iff_forall_nat_le](declarations/contdiff-iff-forall-nat-le.md) | 1501 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [contDiff_succ_iff_has_fderiv](declarations/contdiff-succ-iff-has-fderiv.md) | 1506 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [iteratedFDeriv](declarations/iteratedfderiv.md) | 1519 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [ftaylorSeries](declarations/ftaylorseries.md) | 1525 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [iteratedFDeriv_zero_apply](declarations/iteratedfderiv-zero-apply.md) | 1532 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [iteratedFDeriv_zero_eq_comp](declarations/iteratedfderiv-zero-eq-comp.md) | 1537 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [norm_iteratedFDeriv_zero](declarations/norm-iteratedfderiv-zero.md) | 1543 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [iteratedFDeriv_with_zero_eq](declarations/iteratedfderiv-with-zero-eq.md) | 1548 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [iteratedFDeriv_succ_apply_left](declarations/iteratedfderiv-succ-apply-left.md) | 1551 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [iteratedFDeriv_succ_eq_comp_left](declarations/iteratedfderiv-succ-eq-comp-left.md) | 1559 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [fderiv_iteratedFDeriv](declarations/fderiv-iteratedfderiv.md) | 1568 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [tsupport_iteratedFDeriv_subset](declarations/tsupport-iteratedfderiv-subset.md) | 1577 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [support_iteratedFDeriv_subset](declarations/support-iteratedfderiv-subset.md) | 1586 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [HasCompactSupport.iteratedFDeriv](declarations/hascompactsupport-iteratedfderiv.md) | 1589 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [norm_fderiv_iteratedFDeriv](declarations/norm-fderiv-iteratedfderiv.md) | 1594 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [iteratedFDerivWithin_univ](declarations/iteratedfderivwithin-univ.md) | 1600 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [iteratedFDerivWithin_of_isOpen](declarations/iteratedfderivwithin-of-isopen.md) | 1610 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [ftaylorSeriesWithin_univ](declarations/ftaylorserieswithin-univ.md) | 1626 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [iteratedFDeriv_succ_apply_right](declarations/iteratedfderiv-succ-apply-right.md) | 1632 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [iteratedFDeriv_succ_eq_comp_right](declarations/iteratedfderiv-succ-eq-comp-right.md) | 1641 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [norm_iteratedFDeriv_fderiv](declarations/norm-iteratedfderiv-fderiv.md) | 1648 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [iteratedFDeriv_one_apply](declarations/iteratedfderiv-one-apply.md) | 1655 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [contDiff_iff_ftaylorSeries](declarations/contdiff-iff-ftaylorseries.md) | 1662 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [contDiff_iff_continuous_differentiable](declarations/contdiff-iff-continuous-differentiable.md) | 1670 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [ContDiff.continuous_iteratedFDeriv](declarations/contdiff-continuous-iteratedfderiv.md) | 1679 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [ContDiff.differentiable_iteratedFDeriv](declarations/contdiff-differentiable-iteratedfderiv.md) | 1685 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [contDiff_of_differentiable_iteratedFDeriv](declarations/contdiff-of-differentiable-iteratedfderiv.md) | 1690 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [contDiff_succ_iff_fderiv](declarations/contdiff-succ-iff-fderiv.md) | 1698 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [contDiff_one_iff_fderiv](declarations/contdiff-one-iff-fderiv.md) | 1704 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [contDiff_top_iff_fderiv](declarations/contdiff-top-iff-fderiv.md) | 1710 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [ContDiff.continuous_fderiv](declarations/contdiff-continuous-fderiv.md) | 1716 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [ContDiff.continuous_fderiv_apply](declarations/contdiff-continuous-fderiv-apply.md) | 1723 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c1e075655610d9859ef1d36c878b88e444d01754636fab52464e22290dde254 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiffDef/Variant3c3196e75ec179d4a374d122afc544dd7c900bd57634bd0b797c4098f0b5021f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
