# Infinite Sum Basic Source Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**190 observed declarations and anonymous commands**, 188 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc390c69e80cd16ccc5707fc50d8c3ce8e9a429e3f3865473df6ac7dfc7f6b3a5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c0a744f62cad68a5632f776658c9000dc08b3a2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumBasicSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasSum](declarations/hassum.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Summable](declarations/summable.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [HasSum.summable](declarations/hassum-summable.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasSum_zero](declarations/hassum-zero.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [hasSum_empty](declarations/hassum-empty.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [summable_zero](declarations/summable-zero.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [summable_empty](declarations/summable-empty.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tsum_eq_zero_of_not_summable](declarations/tsum-eq-zero-of-not-summable.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [summable_congr](declarations/summable-congr-source-edition-2.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Summable.congr](declarations/summable-congr.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasSum.hasSum_of_sum_eq](declarations/hassum-hassum-of-sum-eq.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [hasSum_iff_hasSum](declarations/hassum-iff-hassum.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Function.Injective.hasSum_iff](declarations/function-injective-hassum-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Function.Injective.summable_iff](declarations/function-injective-summable-iff.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasSum_extend_zero](declarations/hassum-extend-zero.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [summable_extend_zero](declarations/summable-extend-zero.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasSum_subtype_iff_of_support_subset](declarations/hassum-subtype-iff-of-support-subset.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasSum_subtype_iff_indicator](declarations/hassum-subtype-iff-indicator.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [summable_subtype_iff_indicator](declarations/summable-subtype-iff-indicator.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasSum_subtype_support](declarations/hassum-subtype-support.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasSum_fintype](declarations/hassum-fintype.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Finset.hasSum](declarations/finset-hassum.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Finset.summable](declarations/finset-summable.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Set.Finite.summable](declarations/set-finite-summable.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasSum_sum_of_ne_finset_zero](declarations/hassum-sum-of-ne-finset-zero.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [summable_of_ne_finset_zero](declarations/summable-of-ne-finset-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [summable_of_finite_support](declarations/summable-of-finite-support.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Summable.hasSum](declarations/summable-hassum.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hasSum_single](declarations/hassum-single.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasSum_ite_eq](declarations/hassum-ite-eq.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasSum_pi_single](declarations/hassum-pi-single.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Equiv.hasSum_iff](declarations/equiv-hassum-iff.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Function.Injective.hasSum_range_iff](declarations/function-injective-hassum-range-iff.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Equiv.summable_iff](declarations/equiv-summable-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Summable.prod_symm](declarations/summable-prod-symm.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Equiv.hasSum_iff_of_support](declarations/equiv-hassum-iff-of-support.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasSum_iff_hasSum_of_ne_zero_bij](declarations/hassum-iff-hassum-of-ne-zero-bij.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Equiv.summable_iff_of_support](declarations/equiv-summable-iff-of-support.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [HasSum.map](declarations/hassum-map.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Summable.map](declarations/summable-map.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Summable.map_iff_of_leftInverse](declarations/summable-map-iff-of-leftinverse.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Summable.map_iff_of_equiv](declarations/summable-map-iff-of-equiv.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [HasSum.tendsto_sum_nat](declarations/hassum-tendsto-sum-nat.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasSum.unique](declarations/hassum-unique.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Summable.hasSum_iff_tendsto_nat](declarations/summable-hassum-iff-tendsto-nat.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Function.Surjective.summable_iff_of_hasSum_iff](declarations/function-surjective-summable-iff-of-hassum-iff.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [HasSum.add](declarations/hassum-add.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Summable.add](declarations/summable-add.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [hasSum_sum](declarations/hassum-sum.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [summable_sum](declarations/summable-sum.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HasSum.add_disjoint](declarations/hassum-add-disjoint.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [hasSum_sum_disjoint](declarations/hassum-sum-disjoint.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasSum.add_isCompl](declarations/hassum-add-iscompl.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [HasSum.add_compl](declarations/hassum-add-compl.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Summable.add_compl](declarations/summable-add-compl.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasSum.compl_add](declarations/hassum-compl-add.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasSum.even_add_odd](declarations/hassum-even-add-odd.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Summable.compl_add](declarations/summable-compl-add.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Summable.even_add_odd](declarations/summable-even-add-odd.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [HasSum.sigma](declarations/hassum-sigma.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [HasSum.prod_fiberwise](declarations/hassum-prod-fiberwise.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Summable.sigma'](declarations/summable-sigma-source-edition-2.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [HasSum.sigma_of_hasSum](declarations/hassum-sigma-of-hassum.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [HasSum.update'](declarations/hassum-update.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [eq_add_of_hasSum_ite](declarations/eq-add-of-hassum-ite.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [tsum_congr_subtype](declarations/tsum-congr-subtype.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [tsum_eq_finsum](declarations/tsum-eq-finsum.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [tsum_eq_sum](declarations/tsum-eq-sum.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [tsum_zero](declarations/tsum-zero.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [tsum_empty](declarations/tsum-empty.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [tsum_congr](declarations/tsum-congr.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [tsum_fintype](declarations/tsum-fintype.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sum_eq_tsum_indicator](declarations/sum-eq-tsum-indicator.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [tsum_bool](declarations/tsum-bool.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [tsum_eq_single](declarations/tsum-eq-single.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [tsum_tsum_eq_single](declarations/tsum-tsum-eq-single.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [tsum_ite_eq](declarations/tsum-ite-eq.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [tsum_pi_single](declarations/tsum-pi-single.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Finset.tsum_subtype](declarations/finset-tsum-subtype-source-edition-2.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Finset.tsum_subtype'](declarations/finset-tsum-subtype.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [tsum_singleton](declarations/tsum-singleton.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [HasSum.tsum_eq](declarations/hassum-tsum-eq.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Summable.hasSum_iff](declarations/summable-hassum-iff.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [tsum_dite_right](declarations/tsum-dite-right.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [tsum_dite_left](declarations/tsum-dite-left.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Function.Surjective.tsum_eq_tsum_of_hasSum_iff_hasSum](declarations/function-surjective-tsum-eq-tsum-of-hassum-iff-hassum.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [tsum_eq_tsum_of_hasSum_iff_hasSum](declarations/tsum-eq-tsum-of-hassum-iff-hassum.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Equiv.tsum_eq](declarations/equiv-tsum-eq.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Equiv.tsum_eq_tsum_of_support](declarations/equiv-tsum-eq-tsum-of-support.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [tsum_eq_tsum_of_ne_zero_bij](declarations/tsum-eq-tsum-of-ne-zero-bij.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [tsum_subtype](declarations/tsum-subtype.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [tsum_subtype_eq_of_support_subset](declarations/tsum-subtype-eq-of-support-subset.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [tsum_univ](declarations/tsum-univ.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [tsum_image](declarations/tsum-image.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [tsum_range](declarations/tsum-range.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [tsum_add](declarations/tsum-add.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [tsum_sum](declarations/tsum-sum.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [tsum_eq_add_tsum_ite'](declarations/tsum-eq-add-tsum-ite-source-edition-2.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [tsum_sigma'](declarations/tsum-sigma.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [tsum_prod'](declarations/tsum-prod.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [tsum_comm'](declarations/tsum-comm-source-edition-2.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [tsum_iSup_decode₂](declarations/tsum-isup-decode.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [tsum_iUnion_decode₂](declarations/tsum-iunion-decode.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [rel_iSup_tsum](declarations/rel-isup-tsum.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [rel_iSup_sum](declarations/rel-isup-sum.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [rel_sup_add](declarations/rel-sup-add.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [tsum_add_tsum_compl](declarations/tsum-add-tsum-compl.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [tsum_union_disjoint](declarations/tsum-union-disjoint.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [tsum_finset_bUnion_disjoint](declarations/tsum-finset-bunion-disjoint.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [tsum_even_add_odd](declarations/tsum-even-add-odd.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [HasSum.neg](declarations/hassum-neg.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Summable.neg](declarations/summable-neg.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Summable.of_neg](declarations/summable-of-neg.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [summable_neg_iff](declarations/summable-neg-iff.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [HasSum.sub](declarations/hassum-sub.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Summable.sub](declarations/summable-sub.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Summable.trans_sub](declarations/summable-trans-sub.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [summable_iff_of_summable_sub](declarations/summable-iff-of-summable-sub.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [HasSum.update](declarations/hassum-update-source-edition-2.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Summable.update](declarations/summable-update.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [HasSum.hasSum_compl_iff](declarations/hassum-hassum-compl-iff.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [HasSum.hasSum_iff_compl](declarations/hassum-hassum-iff-compl.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Summable.summable_compl_iff](declarations/summable-summable-compl-iff.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Finset.hasSum_compl_iff](declarations/finset-hassum-compl-iff.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Finset.hasSum_iff_compl](declarations/finset-hassum-iff-compl.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Finset.summable_compl_iff](declarations/finset-summable-compl-iff.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Set.Finite.summable_compl_iff](declarations/set-finite-summable-compl-iff.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [hasSum_ite_sub_hasSum](declarations/hassum-ite-sub-hassum.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [tsum_neg](declarations/tsum-neg.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [tsum_sub](declarations/tsum-sub.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [sum_add_tsum_compl](declarations/sum-add-tsum-compl.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [tsum_eq_add_tsum_ite](declarations/tsum-eq-add-tsum-ite.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [hasSum_nat_add_iff](declarations/hassum-nat-add-iff-source-edition-2.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [summable_nat_add_iff](declarations/summable-nat-add-iff.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [hasSum_nat_add_iff'](declarations/hassum-nat-add-iff.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [HasSum.sum_range_add](declarations/hassum-sum-range-add.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [sum_add_tsum_nat_add'](declarations/sum-add-tsum-nat-add-source-edition-2.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [sum_add_tsum_nat_add](declarations/sum-add-tsum-nat-add.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [tsum_eq_zero_add'](declarations/tsum-eq-zero-add.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [tsum_eq_zero_add](declarations/tsum-eq-zero-add-source-edition-2.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [tendsto_sum_nat_add](declarations/tendsto-sum-nat-add.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [HasSum.int_rec](declarations/hassum-int-rec.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [HasSum.nonneg_add_neg](declarations/hassum-nonneg-add-neg.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [HasSum.pos_add_zero_add_neg](declarations/hassum-pos-add-zero-add-neg.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [summable_int_of_summable_nat](declarations/summable-int-of-summable-nat.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [HasSum.sum_nat_of_sum_int](declarations/hassum-sum-nat-of-sum-int.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [summable_iff_cauchySeq_finset](declarations/summable-iff-cauchyseq-finset.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [cauchySeq_finset_iff_vanishing](declarations/cauchyseq-finset-iff-vanishing.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [tendsto_tsum_compl_atTop_zero](declarations/tendsto-tsum-compl-attop-zero.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [summable_iff_vanishing](declarations/summable-iff-vanishing.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [Summable.summable_of_eq_zero_or_self](declarations/summable-summable-of-eq-zero-or-self.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Summable.indicator](declarations/summable-indicator.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [Summable.comp_injective](declarations/summable-comp-injective.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [Summable.subtype](declarations/summable-subtype.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [summable_subtype_and_compl](declarations/summable-subtype-and-compl.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [Summable.sigma_factor](declarations/summable-sigma-factor.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [Summable.sigma](declarations/summable-sigma.md) | 1201 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [Summable.prod_factor](declarations/summable-prod-factor.md) | 1206 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [tsum_sigma](declarations/tsum-sigma-source-edition-2.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [tsum_prod](declarations/tsum-prod-source-edition-2.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [tsum_comm](declarations/tsum-comm.md) | 1229 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [tsum_subtype_add_tsum_subtype_compl](declarations/tsum-subtype-add-tsum-subtype-compl.md) | 1236 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [sum_add_tsum_subtype_compl](declarations/sum-add-tsum-subtype-compl.md) | 1241 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [Summable.vanishing](declarations/summable-vanishing.md) | 1254 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [Summable.tendsto_cofinite_zero](declarations/summable-tendsto-cofinite-zero.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [Summable.tendsto_atTop_zero](declarations/summable-tendsto-attop-zero.md) | 1272 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [Summable.countable_support](declarations/summable-countable-support.md) | 1277 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [HasSum.const_smul](declarations/hassum-const-smul.md) | 1288 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [Summable.const_smul](declarations/summable-const-smul.md) | 1292 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [tsum_const_smul](declarations/tsum-const-smul.md) | 1296 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [HasSum.prod_mk](declarations/hassum-prod-mk.md) | 1309 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [Pi.hasSum](declarations/pi-hassum.md) | 1320 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [Pi.summable](declarations/pi-summable.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [tsum_apply](declarations/tsum-apply.md) | 1329 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [HasSum.op](declarations/hassum-op.md) | 1345 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [Summable.op](declarations/summable-op.md) | 1349 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [HasSum.unop](declarations/hassum-unop.md) | 1353 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [Summable.unop](declarations/summable-unop-source-edition-2.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [hasSum_op](declarations/hassum-op-source-edition-2.md) | 1363 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [hasSum_unop](declarations/hassum-unop-source-edition-2.md) | 1368 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [summable_op](declarations/summable-op-source-edition-2.md) | 1374 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [summable_unop](declarations/summable-unop.md) | 1380 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [tsum_op](declarations/tsum-op.md) | 1386 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [tsum_unop](declarations/tsum-unop.md) | 1393 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [HasSum.star](declarations/hassum-star.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [Summable.star](declarations/summable-star.md) | 1411 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [Summable.ofStar](declarations/summable-ofstar.md) | 1415 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [summable_star_iff](declarations/summable-star-iff-source-edition-2.md) | 1420 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [summable_star_iff'](declarations/summable-star-iff.md) | 1425 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [tsum_star](declarations/tsum-star.md) | 1431 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=246e763e5aaa773262e3ef74b755a5e12b08483e5fc6899baf415254cf56b26a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantc390c69e80cd16ccc5707fc50d8c3ce8e9a429e3f3865473df6ac7dfc7f6b3a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
