# Simple Func Namespaced Forall Range Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**191 observed declarations and anonymous commands**, 143 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant1fa7a09f47a027632ff65dbd087b0150010223eb449003d259fe48c726abe658.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e96734f0a8a716cc778a3e8f1e0bef039aff8d9d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncNamespacedForallRangeIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SimpleFunc.](declarations/simplefunc.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instCoeFun](declarations/instcoefun.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_injective](declarations/coe-injective.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ext](declarations/ext.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [finite_range](declarations/finite-range.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [measurableSet_fiber](declarations/measurableset-fiber.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [apply_mk](declarations/apply-mk.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofIsEmpty](declarations/ofisempty.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [range](declarations/range.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_range](declarations/mem-range.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_range_self](declarations/mem-range-self.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_range](declarations/coe-range.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_range_of_measure_ne_zero](declarations/mem-range-of-measure-ne-zero.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forall_range_iff](declarations/forall-range-iff.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [exists_range_iff](declarations/exists-range-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [preimage_eq_empty_iff](declarations/preimage-eq-empty-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exists_forall_le](declarations/exists-forall-le.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [const](declarations/const.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instInhabited](declarations/instinhabited.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [const_apply](declarations/const-apply.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_const](declarations/coe-const.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [range_const](declarations/range-const.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [range_const_subset](declarations/range-const-subset.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [simpleFunc_bot](declarations/simplefunc-bot-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [simpleFunc_bot'](declarations/simplefunc-bot.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [measurableSet_cut](declarations/measurableset-cut.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [measurableSet_preimage](declarations/measurableset-preimage.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [measurable](declarations/measurable.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [aemeasurable](declarations/aemeasurable.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sum_measure_preimage_singleton](declarations/sum-measure-preimage-singleton.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_range_measure_preimage_singleton](declarations/sum-range-measure-preimage-singleton.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [piecewise](declarations/piecewise.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_piecewise](declarations/coe-piecewise.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [piecewise_apply](declarations/piecewise-apply.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [piecewise_compl](declarations/piecewise-compl.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [piecewise_univ](declarations/piecewise-univ.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [piecewise_empty](declarations/piecewise-empty.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [support_indicator](declarations/support-indicator.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [range_indicator](declarations/range-indicator.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measurable_bind](declarations/measurable-bind.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [bind](declarations/bind.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [bind_apply](declarations/bind-apply.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [map](declarations/map-source-edition-3.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [map_apply](declarations/map-apply.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map_map](declarations/map-map.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_map](declarations/coe-map.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [range_map](declarations/range-map.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_const](declarations/map-const.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_preimage](declarations/map-preimage.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [map_preimage_singleton](declarations/map-preimage-singleton.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [comp](declarations/comp.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_comp](declarations/coe-comp.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [range_comp_subset_range](declarations/range-comp-subset-range.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [extend](declarations/extend.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [extend_apply](declarations/extend-apply.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [extend_apply'](declarations/extend-apply-source-edition-2.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [extend_comp_eq'](declarations/extend-comp-eq.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [extend_comp_eq](declarations/extend-comp-eq-source-edition-2.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [seq](declarations/seq.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [seq_apply](declarations/seq-apply.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [pair](declarations/pair.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [pair_apply](declarations/pair-apply.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [pair_preimage](declarations/pair-preimage.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [pair_preimage_singleton](declarations/pair-preimage-singleton.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [bind_const](declarations/bind-const.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [instOne](declarations/instone.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [instMul](declarations/instmul.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [instDiv](declarations/instdiv.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [instInv](declarations/instinv.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instSup](declarations/instsup.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instInf](declarations/instinf.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [instLE](declarations/instle.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [const_one](declarations/const-one.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_one](declarations/coe-one.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coe_mul](declarations/coe-mul.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [coe_inv](declarations/coe-inv.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coe_div](declarations/coe-div.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_le](declarations/coe-le.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coe_sup](declarations/coe-sup.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [coe_inf](declarations/coe-inf.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mul_apply](declarations/mul-apply.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [div_apply](declarations/div-apply.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [inv_apply](declarations/inv-apply.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [sup_apply](declarations/sup-apply.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [inf_apply](declarations/inf-apply.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [range_one](declarations/range-one.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [range_eq_empty_of_isEmpty](declarations/range-eq-empty-of-isempty.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [eq_zero_of_mem_range_zero](declarations/eq-zero-of-mem-range-zero.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mul_eq_map₂](declarations/mul-eq-map.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [sup_eq_map₂](declarations/sup-eq-map.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [const_mul_eq_map](declarations/const-mul-eq-map.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [map_mul](declarations/map-mul.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [instSMul](declarations/instsmul.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [coe_smul](declarations/coe-smul.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [smul_apply](declarations/smul-apply.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [hasNatPow](declarations/hasnatpow.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [coe_pow](declarations/coe-pow.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [pow_apply](declarations/pow-apply.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [hasIntPow](declarations/hasintpow.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [coe_zpow](declarations/coe-zpow.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [zpow_apply](declarations/zpow-apply.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [instAddGroup](declarations/instaddgroup.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [instMonoid](declarations/instmonoid.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [instCommMonoid](declarations/instcommmonoid.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [instGroup](declarations/instgroup.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [instCommGroup](declarations/instcommgroup.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [instModule](declarations/instmodule.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [smul_eq_map](declarations/smul-eq-map.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [instPreorder](declarations/instpreorder.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [instOrderBot](declarations/instorderbot.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [instOrderTop](declarations/instordertop.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [instSemilatticeInf](declarations/instsemilatticeinf.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [instSemilatticeSup](declarations/instsemilatticesup.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [instLattice](declarations/instlattice.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [instBoundedOrder](declarations/instboundedorder.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [finset_sup_apply](declarations/finset-sup-apply.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [restrict](declarations/restrict.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [restrict_of_not_measurable](declarations/restrict-of-not-measurable.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [coe_restrict](declarations/coe-restrict.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [restrict_univ](declarations/restrict-univ.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [restrict_empty](declarations/restrict-empty.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [map_restrict_of_zero](declarations/map-restrict-of-zero.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [map_coe_ennreal_restrict](declarations/map-coe-ennreal-restrict.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [map_coe_nnreal_restrict](declarations/map-coe-nnreal-restrict.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [restrict_preimage](declarations/restrict-preimage.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [restrict_preimage_singleton](declarations/restrict-preimage-singleton.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [mem_restrict_range](declarations/mem-restrict-range.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [mem_image_of_mem_range_restrict](declarations/mem-image-of-mem-range-restrict.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [restrict_mono](declarations/restrict-mono.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [approx](declarations/approx.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [approx_apply](declarations/approx-apply.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [monotone_approx](declarations/monotone-approx.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [approx_comp](declarations/approx-comp.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [iSup_approx_apply](declarations/isup-approx-apply.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [ennrealRatEmbed](declarations/ennrealratembed.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [ennrealRatEmbed_encode](declarations/ennrealratembed-encode.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [eapprox](declarations/eapprox.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [eapprox_lt_top](declarations/eapprox-lt-top.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [monotone_eapprox](declarations/monotone-eapprox.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [iSup_eapprox_apply](declarations/isup-eapprox-apply.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [eapprox_comp](declarations/eapprox-comp.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [eapproxDiff](declarations/eapproxdiff.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [sum_eapproxDiff](declarations/sum-eapproxdiff.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [tsum_eapproxDiff](declarations/tsum-eapproxdiff.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [lintegral](declarations/lintegral-source-edition-2.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [lintegral_eq_of_subset](declarations/lintegral-eq-of-subset.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [lintegral_eq_of_subset'](declarations/lintegral-eq-of-subset-source-edition-2.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [map_lintegral](declarations/map-lintegral.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [add_lintegral](declarations/add-lintegral.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [const_mul_lintegral](declarations/const-mul-lintegral.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [lintegralₗ](declarations/lintegral.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [zero_lintegral](declarations/zero-lintegral.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [lintegral_add](declarations/lintegral-add.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [lintegral_smul](declarations/lintegral-smul.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [lintegral_zero](declarations/lintegral-zero.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [lintegral_sum](declarations/lintegral-sum.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [restrict_lintegral](declarations/restrict-lintegral.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [lintegral_restrict](declarations/lintegral-restrict.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [restrict_lintegral_eq_lintegral_restrict](declarations/restrict-lintegral-eq-lintegral-restrict.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [const_lintegral](declarations/const-lintegral.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [const_lintegral_restrict](declarations/const-lintegral-restrict.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [restrict_const_lintegral](declarations/restrict-const-lintegral.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [le_sup_lintegral](declarations/le-sup-lintegral.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [lintegral_mono](declarations/lintegral-mono.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [lintegral_eq_of_measure_preimage](declarations/lintegral-eq-of-measure-preimage.md) | 1135 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [lintegral_congr](declarations/lintegral-congr.md) | 1145 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [lintegral_map'](declarations/lintegral-map-source-edition-2.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [lintegral_map](declarations/lintegral-map.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [support_eq](declarations/support-eq.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [measurableSet_support](declarations/measurableset-support.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [FinMeasSupp](declarations/finmeassupp.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [finMeasSupp_iff_support](declarations/finmeassupp-iff-support.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [finMeasSupp_iff](declarations/finmeassupp-iff.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [meas_preimage_singleton_ne_zero](declarations/meas-preimage-singleton-ne-zero.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [map](declarations/map.md) | 1210 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [of_map](declarations/of-map.md) | 1214 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [map_iff](declarations/map-iff.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [pair](declarations/pair-source-edition-2.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [map₂](declarations/map-source-edition-2.md) | 1232 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [add](declarations/add.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [mul](declarations/mul.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [lintegral_lt_top](declarations/lintegral-lt-top.md) | 1249 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [of_lintegral_ne_top](declarations/of-lintegral-ne-top.md) | 1261 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [iff_lintegral_lt_top](declarations/iff-lintegral-lt-top.md) | 1268 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [induction](declarations/induction.md) | 1285 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [Measurable.ennreal_induction](declarations/measurable-ennreal-induction.md) | 1338 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b30961102d8cefc8f3cc1b8daace4a089d4ee1fb0a60ac07424bec2de6b3947 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SimpleFunc/Variant1fa7a09f47a027632ff65dbd087b0150010223eb449003d259fe48c726abe658.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
