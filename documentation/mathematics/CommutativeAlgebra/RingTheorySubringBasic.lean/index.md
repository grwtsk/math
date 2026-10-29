# Ring Theory Subring Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**224 observed declarations and anonymous commands**, 154 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a7e91e6a598bac845be6974d92a6d9ab37dda03`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheorySubringBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [SubringClass](declarations/subringclass.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-32.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_int_mem](declarations/coe-int-mem.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-26.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [subtype](declarations/subtype-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeSubtype](declarations/coesubtype.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_natCast](declarations/coe-natcast-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_intCast](declarations/coe-intcast.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [Subring](declarations/subring.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-28.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_toSubsemiring](declarations/mem-tosubsemiring.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_carrier](declarations/mem-carrier.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_mk](declarations/mem-mk-source-edition-2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_set_mk](declarations/coe-set-mk.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mk_le_mk](declarations/mk-le-mk.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ext](declarations/ext.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [copy](declarations/copy.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_copy](declarations/coe-copy.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [copy_eq](declarations/copy-eq.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toSubsemiring_injective](declarations/tosubsemiring-injective.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toSubsemiring_strictMono](declarations/tosubsemiring-strictmono.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toSubsemiring_mono](declarations/tosubsemiring-mono.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toAddSubgroup_injective](declarations/toaddsubgroup-injective.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toAddSubgroup_strictMono](declarations/toaddsubgroup-strictmono.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toAddSubgroup_mono](declarations/toaddsubgroup-mono.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toSubmonoid_injective](declarations/tosubmonoid-injective.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toSubmonoid_strictMono](declarations/tosubmonoid-strictmono.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toSubmonoid_mono](declarations/tosubmonoid-mono.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [mk'](declarations/mk.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mem_mk'](declarations/mem-mk.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mk'_toSubmonoid](declarations/mk-tosubmonoid.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mk'_toAddSubgroup](declarations/mk-toaddsubgroup.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Subsemiring.toSubring](declarations/subsemiring-tosubring.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [one_mem](declarations/one-mem.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [zero_mem](declarations/zero-mem.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mul_mem](declarations/mul-mem.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [add_mem](declarations/add-mem.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [neg_mem](declarations/neg-mem.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sub_mem](declarations/sub-mem.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [list_prod_mem](declarations/list-prod-mem.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [list_sum_mem](declarations/list-sum-mem.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [multiset_prod_mem](declarations/multiset-prod-mem.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [multiset_sum_mem](declarations/multiset-sum-mem.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [prod_mem](declarations/prod-mem.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [sum_mem](declarations/sum-mem.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [toRing](declarations/toring.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [zsmul_mem](declarations/zsmul-mem.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [pow_mem](declarations/pow-mem.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_add](declarations/coe-add.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_neg](declarations/coe-neg.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_mul](declarations/coe-mul.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [coe_zero](declarations/coe-zero.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_one](declarations/coe-one.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_pow](declarations/coe-pow.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coe_eq_zero_iff](declarations/coe-eq-zero-iff.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [toCommRing](declarations/tocommring.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-27.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [toOrderedRing](declarations/toorderedring.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [toOrderedCommRing](declarations/toorderedcommring.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [toLinearOrderedRing](declarations/tolinearorderedring.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [toLinearOrderedCommRing](declarations/tolinearorderedcommring.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [subtype](declarations/subtype.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coeSubtype](declarations/coesubtype-source-edition-2.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [coe_natCast](declarations/coe-natcast.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [coe_intCast](declarations/coe-intcast-source-edition-2.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coe_toSubsemiring](declarations/coe-tosubsemiring.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [mem_toSubmonoid](declarations/mem-tosubmonoid.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coe_toSubmonoid](declarations/coe-tosubmonoid.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mem_toAddSubgroup](declarations/mem-toaddsubgroup.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [coe_toAddSubgroup](declarations/coe-toaddsubgroup.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mem_top](declarations/mem-top.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coe_top](declarations/coe-top.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [topEquiv](declarations/topequiv.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [comap](declarations/comap.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [coe_comap](declarations/coe-comap.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mem_comap](declarations/mem-comap.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [comap_comap](declarations/comap-comap.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [map](declarations/map.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coe_map](declarations/coe-map.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [mem_map](declarations/mem-map.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [map_id](declarations/map-id.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [map_map](declarations/map-map.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [equivMapOfInjective](declarations/equivmapofinjective.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coe_equivMapOfInjective_apply](declarations/coe-equivmapofinjective-apply.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [range](declarations/range.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [coe_range](declarations/coe-range.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mem_range](declarations/mem-range.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [range_eq_map](declarations/range-eq-map.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mem_range_self](declarations/mem-range-self.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_range](declarations/map-range.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [fintypeRange](declarations/fintyperange.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance-source-edition-29.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coe_bot](declarations/coe-bot.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [mem_bot](declarations/mem-bot.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [coe_inf](declarations/coe-inf.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [mem_inf](declarations/mem-inf.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [coe_sInf](declarations/coe-sinf.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [mem_sInf](declarations/mem-sinf.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coe_iInf](declarations/coe-iinf.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [mem_iInf](declarations/mem-iinf.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [sInf_toSubmonoid](declarations/sinf-tosubmonoid.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [sInf_toAddSubgroup](declarations/sinf-toaddsubgroup.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `instance` | [(anonymous)](declarations/instance.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [eq_top_iff'](declarations/eq-top-iff.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [center](declarations/center.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [coe_center](declarations/coe-center.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [center_toSubsemiring](declarations/center-tosubsemiring.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [mem_center_iff](declarations/mem-center-iff.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [decidableMemCenter](declarations/decidablememcenter.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [center_eq_top](declarations/center-eq-top.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [center.coe_inv](declarations/center-coe-inv.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [center.coe_div](declarations/center-coe-div.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [centralizer](declarations/centralizer.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [coe_centralizer](declarations/coe-centralizer.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [centralizer_toSubmonoid](declarations/centralizer-tosubmonoid.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [centralizer_toSubsemiring](declarations/centralizer-tosubsemiring.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [mem_centralizer_iff](declarations/mem-centralizer-iff.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [center_le_centralizer](declarations/center-le-centralizer.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [centralizer_le](declarations/centralizer-le.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [centralizer_eq_top_iff_subset](declarations/centralizer-eq-top-iff-subset.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [centralizer_univ](declarations/centralizer-univ.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [closure](declarations/closure.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [mem_closure](declarations/mem-closure.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [subset_closure](declarations/subset-closure.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [not_mem_of_not_mem_closure](declarations/not-mem-of-not-mem-closure.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [closure_le](declarations/closure-le.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [closure_mono](declarations/closure-mono.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [closure_eq_of_le](declarations/closure-eq-of-le.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [closure_induction](declarations/closure-induction-source-edition-2.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [closure_induction₂](declarations/closure-induction.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [mem_closure_iff](declarations/mem-closure-iff.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [closureCommRingOfComm](declarations/closurecommringofcomm.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [exists_list_of_mem_closure](declarations/exists-list-of-mem-closure.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [gi](declarations/gi.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [closure_eq](declarations/closure-eq.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [closure_empty](declarations/closure-empty.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [closure_univ](declarations/closure-univ.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [closure_union](declarations/closure-union.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [closure_iUnion](declarations/closure-iunion.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [closure_sUnion](declarations/closure-sunion.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [map_sup](declarations/map-sup.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [map_iSup](declarations/map-isup.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [comap_inf](declarations/comap-inf.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [comap_iInf](declarations/comap-iinf.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [map_bot](declarations/map-bot.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [comap_top](declarations/comap-top.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [prod](declarations/prod.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [coe_prod](declarations/coe-prod.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [mem_prod](declarations/mem-prod.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [prod_mono](declarations/prod-mono.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [prod_mono_right](declarations/prod-mono-right.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [prod_mono_left](declarations/prod-mono-left.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [prod_top](declarations/prod-top.md) | 1117 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [top_prod](declarations/top-prod.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [top_prod_top](declarations/top-prod-top.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [prodEquiv](declarations/prodequiv.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [mem_iSup_of_directed](declarations/mem-isup-of-directed.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [coe_iSup_of_directed](declarations/coe-isup-of-directed.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [mem_sSup_of_directedOn](declarations/mem-ssup-of-directedon.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [coe_sSup_of_directedOn](declarations/coe-ssup-of-directedon.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [mem_map_equiv](declarations/mem-map-equiv.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [map_equiv_eq_comap_symm](declarations/map-equiv-eq-comap-symm.md) | 1173 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [comap_equiv_eq_map_symm](declarations/comap-equiv-eq-map-symm.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `def` | [rangeRestrict](declarations/rangerestrict.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [coe_rangeRestrict](declarations/coe-rangerestrict.md) | 1199 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [rangeRestrict_surjective](declarations/rangerestrict-surjective.md) | 1203 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [range_top_iff_surjective](declarations/range-top-iff-surjective.md) | 1209 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [range_top_of_surjective](declarations/range-top-of-surjective.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `def` | [eqLocus](declarations/eqlocus.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [eqLocus_same](declarations/eqlocus-same.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [eqOn_set_closure](declarations/eqon-set-closure.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [eq_of_eqOn_set_top](declarations/eq-of-eqon-set-top.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [eq_of_eqOn_set_dense](declarations/eq-of-eqon-set-dense.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [closure_preimage_le](declarations/closure-preimage-le-source-edition-2.md) | 1247 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [map_closure](declarations/map-closure.md) | 1253 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `def` | [inclusion](declarations/inclusion.md) | 1267 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [range_subtype](declarations/range-subtype.md) | 1272 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [range_fst](declarations/range-fst.md) | 1277 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [range_snd](declarations/range-snd.md) | 1282 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [prod_bot_sup_bot_prod](declarations/prod-bot-sup-bot-prod.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `def` | [subringCongr](declarations/subringcongr.md) | 1303 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `def` | [ofLeftInverse](declarations/ofleftinverse.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [ofLeftInverse_apply](declarations/ofleftinverse-apply.md) | 1323 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [ofLeftInverse_symm_apply](declarations/ofleftinverse-symm-apply.md) | 1329 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `def` | [subringMap](declarations/subringmap.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [InClosure.recOn](declarations/inclosure-recon.md) | 1352 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [closure_preimage_le](declarations/closure-preimage-le.md) | 1398 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [AddSubgroup.int_mul_mem](declarations/addsubgroup-int-mul-mem.md) | 1404 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 1429 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [smul_def](declarations/smul-def.md) | 1432 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `instance` | [smulCommClass_left](declarations/smulcommclass-left.md) | 1437 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `instance` | [smulCommClass_right](declarations/smulcommclass-right.md) | 1443 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 1450 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `instance` | [(anonymous)](declarations/instance-source-edition-30.md) | 1455 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 1460 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1465 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1470 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 1475 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1479 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 1484 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `instance` | [(anonymous)](declarations/instance-source-edition-31.md) | 1490 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `instance` | [center.smulCommClass_left](declarations/center-smulcommclass-left.md) | 1494 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `instance` | [center.smulCommClass_right](declarations/center-smulcommclass-right.md) | 1499 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `def` | [Units.posSubgroup](declarations/units-possubgroup.md) | 1510 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `theorem` | [Units.mem_posSubgroup](declarations/units-mem-possubgroup.md) | 1517 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5d26b85ceb903f0410654fce336742633db634d4d7fde48564b57b698dac228 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
