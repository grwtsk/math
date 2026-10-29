# FDeriv Basic Fderiv Within

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**171 observed declarations and anonymous commands**, 161 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d8d9c24d5c267d02323df0ec84e4adcca2c07a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/FDerivBasicFderivWithin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasFDerivAtFilter](declarations/hasfderivatfilter.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasFDerivWithinAt](declarations/hasfderivwithinat.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasFDerivAt](declarations/hasfderivat.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [HasStrictFDerivAt](declarations/hasstrictfderivat.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [DifferentiableWithinAt](declarations/differentiablewithinat.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [DifferentiableAt](declarations/differentiableat.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fderivWithin](declarations/fderivwithin.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [fderiv](declarations/fderiv.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [DifferentiableOn](declarations/differentiableon.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Differentiable](declarations/differentiable.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fderivWithin_zero_of_not_differentiableWithinAt](declarations/fderivwithin-zero-of-not-differentiablewithinat.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [fderiv_zero_of_not_differentiableAt](declarations/fderiv-zero-of-not-differentiableat.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [HasFDerivWithinAt.lim](declarations/hasfderivwithinat-lim.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [HasFDerivWithinAt.unique_on](declarations/hasfderivwithinat-unique-on.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [UniqueDiffWithinAt.eq](declarations/uniquediffwithinat-eq.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [UniqueDiffOn.eq](declarations/uniquediffon-eq.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasFDerivAtFilter_iff_tendsto](declarations/hasfderivatfilter-iff-tendsto.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasFDerivWithinAt_iff_tendsto](declarations/hasfderivwithinat-iff-tendsto.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hasFDerivAt_iff_tendsto](declarations/hasfderivat-iff-tendsto.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasFDerivAt_iff_isLittleO_nhds_zero](declarations/hasfderivat-iff-islittleo-nhds-zero.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HasFDerivAt.le_of_lip'](declarations/hasfderivat-le-of-lip.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [HasFDerivAt.le_of_lip](declarations/hasfderivat-le-of-lip-source-edition-2.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasFDerivAtFilter.mono](declarations/hasfderivatfilter-mono.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HasFDerivWithinAt.mono_of_mem](declarations/hasfderivwithinat-mono-of-mem.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasFDerivWithinAt.mono](declarations/hasfderivwithinat-mono.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasFDerivAt.hasFDerivAtFilter](declarations/hasfderivat-hasfderivatfilter.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasFDerivAt.hasFDerivWithinAt](declarations/hasfderivat-hasfderivwithinat.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasFDerivWithinAt.differentiableWithinAt](declarations/hasfderivwithinat-differentiablewithinat.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [HasFDerivAt.differentiableAt](declarations/hasfderivat-differentiableat.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasFDerivWithinAt_univ](declarations/hasfderivwithinat-univ.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasFDerivWithinAt_insert](declarations/hasfderivwithinat-insert.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasFDerivWithinAt.insert](declarations/hasfderivwithinat-insert-source-edition-2.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasFDerivWithinAt_diff_singleton](declarations/hasfderivwithinat-diff-singleton.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HasStrictFDerivAt.isBigO_sub](declarations/hasstrictfderivat-isbigo-sub.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasFDerivAtFilter.isBigO_sub](declarations/hasfderivatfilter-isbigo-sub.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [HasStrictFDerivAt.hasFDerivAt](declarations/hasstrictfderivat-hasfderivat.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [HasStrictFDerivAt.differentiableAt](declarations/hasstrictfderivat-differentiableat.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [HasStrictFDerivAt.exists_lipschitzOnWith_of_nnnorm_lt](declarations/hasstrictfderivat-exists-lipschitzonwith-of-nnnorm-lt.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [HasStrictFDerivAt.exists_lipschitzOnWith](declarations/hasstrictfderivat-exists-lipschitzonwith.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasFDerivAt.lim](declarations/hasfderivat-lim.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [HasFDerivAt.unique](declarations/hasfderivat-unique.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hasFDerivWithinAt_inter'](declarations/hasfderivwithinat-inter-source-edition-2.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hasFDerivWithinAt_inter](declarations/hasfderivwithinat-inter.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasFDerivWithinAt.union](declarations/hasfderivwithinat-union.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [HasFDerivWithinAt.hasFDerivAt](declarations/hasfderivwithinat-hasfderivat.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [DifferentiableWithinAt.differentiableAt](declarations/differentiablewithinat-differentiableat.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [DifferentiableWithinAt.hasFDerivWithinAt](declarations/differentiablewithinat-hasfderivwithinat.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [DifferentiableAt.hasFDerivAt](declarations/differentiableat-hasfderivat.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [DifferentiableOn.hasFDerivAt](declarations/differentiableon-hasfderivat.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [DifferentiableOn.differentiableAt](declarations/differentiableon-differentiableat.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [DifferentiableOn.eventually_differentiableAt](declarations/differentiableon-eventually-differentiableat.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HasFDerivAt.fderiv](declarations/hasfderivat-fderiv.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [fderiv_eq](declarations/fderiv-eq.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [DifferentiableAt.le_of_lip](declarations/differentiableat-le-of-lip.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [HasFDerivWithinAt.fderivWithin](declarations/hasfderivwithinat-fderivwithin.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [hasFDerivWithinAt_of_not_mem_closure](declarations/hasfderivwithinat-of-not-mem-closure.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [DifferentiableWithinAt.mono](declarations/differentiablewithinat-mono.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [DifferentiableWithinAt.mono_of_mem](declarations/differentiablewithinat-mono-of-mem.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [differentiableWithinAt_univ](declarations/differentiablewithinat-univ.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [differentiableWithinAt_inter](declarations/differentiablewithinat-inter.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [differentiableWithinAt_inter'](declarations/differentiablewithinat-inter-source-edition-2.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [DifferentiableAt.differentiableWithinAt](declarations/differentiableat-differentiablewithinat.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Differentiable.differentiableAt](declarations/differentiable-differentiableat.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [DifferentiableAt.fderivWithin](declarations/differentiableat-fderivwithin.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [DifferentiableOn.mono](declarations/differentiableon-mono.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [differentiableOn_univ](declarations/differentiableon-univ.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Differentiable.differentiableOn](declarations/differentiable-differentiableon.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [differentiableOn_of_locally_differentiableOn](declarations/differentiableon-of-locally-differentiableon.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [fderivWithin_of_mem](declarations/fderivwithin-of-mem.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [fderivWithin_subset](declarations/fderivwithin-subset.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [fderivWithin_inter](declarations/fderivwithin-inter.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [fderivWithin_of_mem_nhds](declarations/fderivwithin-of-mem-nhds.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [fderivWithin_univ](declarations/fderivwithin-univ.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [fderivWithin_of_open](declarations/fderivwithin-of-open.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [fderivWithin_eq_fderiv](declarations/fderivwithin-eq-fderiv.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [fderiv_mem_iff](declarations/fderiv-mem-iff.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [fderivWithin_mem_iff](declarations/fderivwithin-mem-iff.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Asymptotics.IsBigO.hasFDerivWithinAt](declarations/asymptotics-isbigo-hasfderivwithinat.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Asymptotics.IsBigO.hasFDerivAt](declarations/asymptotics-isbigo-hasfderivat.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [HasFDerivWithinAt.isBigO](declarations/hasfderivwithinat-isbigo.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [HasFDerivAt.isBigO](declarations/hasfderivat-isbigo.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [HasFDerivAtFilter.tendsto_nhds](declarations/hasfderivatfilter-tendsto-nhds.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [HasFDerivWithinAt.continuousWithinAt](declarations/hasfderivwithinat-continuouswithinat.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [HasFDerivAt.continuousAt](declarations/hasfderivat-continuousat.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [DifferentiableWithinAt.continuousWithinAt](declarations/differentiablewithinat-continuouswithinat.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [DifferentiableAt.continuousAt](declarations/differentiableat-continuousat.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [DifferentiableOn.continuousOn](declarations/differentiableon-continuouson.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Differentiable.continuous](declarations/differentiable-continuous.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [HasStrictFDerivAt.continuousAt](declarations/hasstrictfderivat-continuousat.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [HasStrictFDerivAt.isBigO_sub_rev](declarations/hasstrictfderivat-isbigo-sub-rev.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [HasFDerivAtFilter.isBigO_sub_rev](declarations/hasfderivatfilter-isbigo-sub-rev.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [hasFDerivWithinAt_congr_set'](declarations/hasfderivwithinat-congr-set-source-edition-2.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [hasFDerivWithinAt_congr_set](declarations/hasfderivwithinat-congr-set.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [differentiableWithinAt_congr_set'](declarations/differentiablewithinat-congr-set-source-edition-2.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [differentiableWithinAt_congr_set](declarations/differentiablewithinat-congr-set.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [fderivWithin_congr_set'](declarations/fderivwithin-congr-set-source-edition-2.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [fderivWithin_congr_set](declarations/fderivwithin-congr-set.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [fderivWithin_eventually_congr_set'](declarations/fderivwithin-eventually-congr-set.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [fderivWithin_eventually_congr_set](declarations/fderivwithin-eventually-congr-set-source-edition-2.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Filter.EventuallyEq.hasStrictFDerivAt_iff](declarations/filter-eventuallyeq-hasstrictfderivat-iff.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [HasStrictFDerivAt.congr_fderiv](declarations/hasstrictfderivat-congr-fderiv.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [HasFDerivAt.congr_fderiv](declarations/hasfderivat-congr-fderiv.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [HasFDerivWithinAt.congr_fderiv](declarations/hasfderivwithinat-congr-fderiv.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [HasStrictFDerivAt.congr_of_eventuallyEq](declarations/hasstrictfderivat-congr-of-eventuallyeq.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [Filter.EventuallyEq.hasFDerivAtFilter_iff](declarations/filter-eventuallyeq-hasfderivatfilter-iff.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [HasFDerivAtFilter.congr_of_eventuallyEq](declarations/hasfderivatfilter-congr-of-eventuallyeq.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Filter.EventuallyEq.hasFDerivAt_iff](declarations/filter-eventuallyeq-hasfderivat-iff.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [Filter.EventuallyEq.differentiableAt_iff](declarations/filter-eventuallyeq-differentiableat-iff.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [Filter.EventuallyEq.hasFDerivWithinAt_iff](declarations/filter-eventuallyeq-hasfderivwithinat-iff.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Filter.EventuallyEq.hasFDerivWithinAt_iff_of_mem](declarations/filter-eventuallyeq-hasfderivwithinat-iff-of-mem.md) | 867 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [Filter.EventuallyEq.differentiableWithinAt_iff](declarations/filter-eventuallyeq-differentiablewithinat-iff.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Filter.EventuallyEq.differentiableWithinAt_iff_of_mem](declarations/filter-eventuallyeq-differentiablewithinat-iff-of-mem.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [HasFDerivWithinAt.congr_mono](declarations/hasfderivwithinat-congr-mono.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [HasFDerivWithinAt.congr](declarations/hasfderivwithinat-congr.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [HasFDerivWithinAt.congr'](declarations/hasfderivwithinat-congr-source-edition-2.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [HasFDerivWithinAt.congr_of_eventuallyEq](declarations/hasfderivwithinat-congr-of-eventuallyeq.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [HasFDerivAt.congr_of_eventuallyEq](declarations/hasfderivat-congr-of-eventuallyeq.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [DifferentiableWithinAt.congr_mono](declarations/differentiablewithinat-congr-mono.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [DifferentiableWithinAt.congr](declarations/differentiablewithinat-congr.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [DifferentiableWithinAt.congr_of_eventuallyEq](declarations/differentiablewithinat-congr-of-eventuallyeq.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [DifferentiableOn.congr_mono](declarations/differentiableon-congr-mono.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [DifferentiableOn.congr](declarations/differentiableon-congr-source-edition-2.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [differentiableOn_congr](declarations/differentiableon-congr.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [DifferentiableAt.congr_of_eventuallyEq](declarations/differentiableat-congr-of-eventuallyeq.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [DifferentiableWithinAt.fderivWithin_congr_mono](declarations/differentiablewithinat-fderivwithin-congr-mono.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Filter.EventuallyEq.fderivWithin_eq](declarations/filter-eventuallyeq-fderivwithin-eq.md) | 947 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Filter.EventuallyEq.fderiv_within'](declarations/filter-eventuallyeq-fderiv-within.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Filter.EventuallyEq.fderivWithin](declarations/filter-eventuallyeq-fderivwithin.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Filter.EventuallyEq.fderivWithin_eq_nhds](declarations/filter-eventuallyeq-fderivwithin-eq-nhds.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [fderivWithin_congr](declarations/fderivwithin-congr-source-edition-2.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [fderivWithin_congr'](declarations/fderivwithin-congr.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Filter.EventuallyEq.fderiv_eq](declarations/filter-eventuallyeq-fderiv-eq.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [Filter.EventuallyEq.fderiv](declarations/filter-eventuallyeq-fderiv.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [hasStrictFDerivAt_id](declarations/hasstrictfderivat-id.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [hasFDerivAtFilter_id](declarations/hasfderivatfilter-id.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [hasFDerivWithinAt_id](declarations/hasfderivwithinat-id.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [hasFDerivAt_id](declarations/hasfderivat-id.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [differentiableAt_id](declarations/differentiableat-id-source-edition-2.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [differentiableAt_id'](declarations/differentiableat-id.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [differentiableWithinAt_id](declarations/differentiablewithinat-id.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [differentiable_id](declarations/differentiable-id-source-edition-2.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [differentiable_id'](declarations/differentiable-id.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [differentiableOn_id](declarations/differentiableon-id.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [fderiv_id](declarations/fderiv-id-source-edition-2.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [fderiv_id'](declarations/fderiv-id.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [fderivWithin_id](declarations/fderivwithin-id-source-edition-2.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [fderivWithin_id'](declarations/fderivwithin-id.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [hasStrictFDerivAt_const](declarations/hasstrictfderivat-const.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [hasFDerivAtFilter_const](declarations/hasfderivatfilter-const.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [hasFDerivWithinAt_const](declarations/hasfderivwithinat-const.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [hasFDerivAt_const](declarations/hasfderivat-const.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [differentiableAt_const](declarations/differentiableat-const.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [differentiableWithinAt_const](declarations/differentiablewithinat-const.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [fderiv_const_apply](declarations/fderiv-const-apply.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [fderiv_const](declarations/fderiv-const.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [fderivWithin_const_apply](declarations/fderivwithin-const-apply.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [differentiable_const](declarations/differentiable-const.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [differentiableOn_const](declarations/differentiableon-const.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [hasFDerivWithinAt_singleton](declarations/hasfderivwithinat-singleton.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [hasFDerivAt_of_subsingleton](declarations/hasfderivat-of-subsingleton.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [differentiableOn_empty](declarations/differentiableon-empty.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [differentiableOn_singleton](declarations/differentiableon-singleton.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [Set.Subsingleton.differentiableOn](declarations/set-subsingleton-differentiableon.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [hasFDerivAt_zero_of_eventually_const](declarations/hasfderivat-zero-of-eventually-const.md) | 1141 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [HasStrictFDerivAt.of_not_mem_tsupport](declarations/hasstrictfderivat-of-not-mem-tsupport.md) | 1159 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [HasFDerivAt.of_not_mem_tsupport](declarations/hasfderivat-of-not-mem-tsupport.md) | 1164 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [HasFDerivWithinAt.of_not_mem_tsupport](declarations/hasfderivwithinat-of-not-mem-tsupport.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [fderiv_of_not_mem_tsupport](declarations/fderiv-of-not-mem-tsupport.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [support_fderiv_subset](declarations/support-fderiv-subset.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [tsupport_fderiv_subset](declarations/tsupport-fderiv-subset.md) | 1180 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [HasCompactSupport.fderiv](declarations/hascompactsupport-fderiv.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad8ec20c07cc6cdf65cc0176b3f53d4f71410a22237ec1a168039b095149613c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
