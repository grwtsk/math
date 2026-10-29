# Ring Theory Subsemiring Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**221 observed declarations and anonymous commands**, 142 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a4cac017cfb69c2edf204c63963e7d297b6563c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheorySubsemiringBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [AddSubmonoidWithOneClass](declarations/addsubmonoidwithoneclass.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [natCast_mem](declarations/natcast-mem.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [SubsemiringClass](declarations/subsemiringclass.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_nat_mem](declarations/coe-nat-mem.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [nontrivial](declarations/nontrivial.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [noZeroDivisors](declarations/nozerodivisors.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [subtype](declarations/subtype.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_pow](declarations/coe-pow-source-edition-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [toCommSemiring](declarations/tocommsemiring-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [toOrderedSemiring](declarations/toorderedsemiring.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [toStrictOrderedSemiring](declarations/tostrictorderedsemiring.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [toOrderedCommSemiring](declarations/toorderedcommsemiring-source-edition-2.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [toStrictOrderedCommSemiring](declarations/tostrictorderedcommsemiring.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [toLinearOrderedSemiring](declarations/tolinearorderedsemiring-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [toLinearOrderedCommSemiring](declarations/tolinearorderedcommsemiring.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [Subsemiring](declarations/subsemiring.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_toSubmonoid](declarations/mem-tosubmonoid.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_carrier](declarations/mem-carrier.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ext](declarations/ext.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [copy](declarations/copy.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_copy](declarations/coe-copy.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [copy_eq](declarations/copy-eq.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toSubmonoid_injective](declarations/tosubmonoid-injective.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toSubmonoid_strictMono](declarations/tosubmonoid-strictmono.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toSubmonoid_mono](declarations/tosubmonoid-mono.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toAddSubmonoid_injective](declarations/toaddsubmonoid-injective.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toAddSubmonoid_strictMono](declarations/toaddsubmonoid-strictmono.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toAddSubmonoid_mono](declarations/toaddsubmonoid-mono.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [mk'](declarations/mk.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_mk'](declarations/coe-mk.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_mk'](declarations/mem-mk.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mk'_toSubmonoid](declarations/mk-tosubmonoid.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mk'_toAddSubmonoid](declarations/mk-toaddsubmonoid.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [one_mem](declarations/one-mem.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [zero_mem](declarations/zero-mem.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mul_mem](declarations/mul-mem.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [add_mem](declarations/add-mem.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [list_prod_mem](declarations/list-prod-mem.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [list_sum_mem](declarations/list-sum-mem.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [multiset_prod_mem](declarations/multiset-prod-mem.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [multiset_sum_mem](declarations/multiset-sum-mem.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [prod_mem](declarations/prod-mem.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sum_mem](declarations/sum-mem.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [toNonAssocSemiring](declarations/tononassocsemiring.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_one](declarations/coe-one.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_zero](declarations/coe-zero.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coe_add](declarations/coe-add.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [coe_mul](declarations/coe-mul.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [nontrivial](declarations/nontrivial-source-edition-2.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [pow_mem](declarations/pow-mem.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [noZeroDivisors](declarations/nozerodivisors-source-edition-2.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [toSemiring](declarations/tosemiring.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_pow](declarations/coe-pow.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [toCommSemiring](declarations/tocommsemiring.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [subtype](declarations/subtype-source-edition-2.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_subtype](declarations/coe-subtype-source-edition-2.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [toOrderedSemiring](declarations/toorderedsemiring-source-edition-2.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [toStrictOrderedSemiring](declarations/tostrictorderedsemiring-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [toOrderedCommSemiring](declarations/toorderedcommsemiring.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [toStrictOrderedCommSemiring](declarations/tostrictorderedcommsemiring-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [toLinearOrderedSemiring](declarations/tolinearorderedsemiring.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [toLinearOrderedCommSemiring](declarations/tolinearorderedcommsemiring-source-edition-2.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [nsmul_mem](declarations/nsmul-mem.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_toSubmonoid](declarations/coe-tosubmonoid.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_carrier_toSubmonoid](declarations/coe-carrier-tosubmonoid.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_toAddSubmonoid](declarations/mem-toaddsubmonoid.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_toAddSubmonoid](declarations/coe-toaddsubmonoid.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_top](declarations/mem-top.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coe_top](declarations/coe-top.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [topEquiv](declarations/topequiv.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [comap](declarations/comap.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [coe_comap](declarations/coe-comap.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_comap](declarations/mem-comap.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [comap_comap](declarations/comap-comap.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [map](declarations/map.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coe_map](declarations/coe-map.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [mem_map](declarations/mem-map.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [map_id](declarations/map-id.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [map_map](declarations/map-map.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [equivMapOfInjective](declarations/equivmapofinjective.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coe_equivMapOfInjective_apply](declarations/coe-equivmapofinjective-apply.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [rangeS](declarations/ranges.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [coe_rangeS](declarations/coe-ranges.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [mem_rangeS](declarations/mem-ranges.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [rangeS_eq_map](declarations/ranges-eq-map.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [mem_rangeS_self](declarations/mem-ranges-self.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [map_rangeS](declarations/map-ranges.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [fintypeRangeS](declarations/fintyperanges.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [coe_bot](declarations/coe-bot.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [mem_bot](declarations/mem-bot.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [coe_inf](declarations/coe-inf.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mem_inf](declarations/mem-inf.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [coe_sInf](declarations/coe-sinf.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [mem_sInf](declarations/mem-sinf.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [sInf_toSubmonoid](declarations/sinf-tosubmonoid.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [sInf_toAddSubmonoid](declarations/sinf-toaddsubmonoid.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [eq_top_iff'](declarations/eq-top-iff.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [center](declarations/center.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [coe_center](declarations/coe-center.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [center_toSubmonoid](declarations/center-tosubmonoid.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [mem_center_iff](declarations/mem-center-iff.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [decidableMemCenter](declarations/decidablememcenter.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [center_eq_top](declarations/center-eq-top.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [commSemiring](declarations/commsemiring.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [centralizer](declarations/centralizer.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [coe_centralizer](declarations/coe-centralizer.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [centralizer_toSubmonoid](declarations/centralizer-tosubmonoid.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [mem_centralizer_iff](declarations/mem-centralizer-iff.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [center_le_centralizer](declarations/center-le-centralizer.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [centralizer_le](declarations/centralizer-le.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [centralizer_eq_top_iff_subset](declarations/centralizer-eq-top-iff-subset.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [centralizer_univ](declarations/centralizer-univ.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [closure](declarations/closure.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [mem_closure](declarations/mem-closure.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [subset_closure](declarations/subset-closure.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [not_mem_of_not_mem_closure](declarations/not-mem-of-not-mem-closure.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [closure_le](declarations/closure-le.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [closure_mono](declarations/closure-mono.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [closure_eq_of_le](declarations/closure-eq-of-le.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [mem_map_equiv](declarations/mem-map-equiv.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [map_equiv_eq_comap_symm](declarations/map-equiv-eq-comap-symm.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [comap_equiv_eq_map_symm](declarations/comap-equiv-eq-map-symm.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [subsemiringClosure](declarations/subsemiringclosure.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [subsemiringClosure_coe](declarations/subsemiringclosure-coe.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [subsemiringClosure_toAddSubmonoid](declarations/subsemiringclosure-toaddsubmonoid.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [subsemiringClosure_eq_closure](declarations/subsemiringclosure-eq-closure.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [closure_submonoid_closure](declarations/closure-submonoid-closure.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [coe_closure_eq](declarations/coe-closure-eq.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [mem_closure_iff](declarations/mem-closure-iff.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [closure_addSubmonoid_closure](declarations/closure-addsubmonoid-closure.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [closure_induction](declarations/closure-induction.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [closure_induction₂](declarations/closure-induction-source-edition-2.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [mem_closure_iff_exists_list](declarations/mem-closure-iff-exists-list.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [gi](declarations/gi.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [closure_eq](declarations/closure-eq.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [closure_empty](declarations/closure-empty.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [closure_univ](declarations/closure-univ.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [closure_union](declarations/closure-union.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [closure_iUnion](declarations/closure-iunion.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [closure_sUnion](declarations/closure-sunion.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [map_sup](declarations/map-sup.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [map_iSup](declarations/map-isup.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [comap_inf](declarations/comap-inf.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [comap_iInf](declarations/comap-iinf.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [map_bot](declarations/map-bot.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [comap_top](declarations/comap-top.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [prod](declarations/prod.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [coe_prod](declarations/coe-prod.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [mem_prod](declarations/mem-prod.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [prod_mono](declarations/prod-mono.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [prod_mono_right](declarations/prod-mono-right.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [prod_mono_left](declarations/prod-mono-left.md) | 1062 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [prod_top](declarations/prod-top.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [top_prod](declarations/top-prod.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [top_prod_top](declarations/top-prod-top.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [prodEquiv](declarations/prodequiv.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [mem_iSup_of_directed](declarations/mem-isup-of-directed.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [coe_iSup_of_directed](declarations/coe-isup-of-directed.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [mem_sSup_of_directedOn](declarations/mem-ssup-of-directedon.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [coe_sSup_of_directedOn](declarations/coe-ssup-of-directedon.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [domRestrict](declarations/domrestrict.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `def` | [codRestrict](declarations/codrestrict.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [restrict](declarations/restrict.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [coe_restrict_apply](declarations/coe-restrict-apply.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [comp_restrict](declarations/comp-restrict.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `def` | [rangeSRestrict](declarations/rangesrestrict.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [coe_rangeSRestrict](declarations/coe-rangesrestrict.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [rangeSRestrict_surjective](declarations/rangesrestrict-surjective.md) | 1171 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [rangeS_top_iff_surjective](declarations/ranges-top-iff-surjective.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [rangeS_top_of_surjective](declarations/ranges-top-of-surjective.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `def` | [eqLocusS](declarations/eqlocuss.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [eqLocusS_same](declarations/eqlocuss-same.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [eqOn_sclosure](declarations/eqon-sclosure.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [eq_of_eqOn_stop](declarations/eq-of-eqon-stop.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [eq_of_eqOn_sdense](declarations/eq-of-eqon-sdense.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [sclosure_preimage_le](declarations/sclosure-preimage-le.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [map_closureS](declarations/map-closures.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `def` | [inclusion](declarations/inclusion.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [rangeS_subtype](declarations/ranges-subtype.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [range_fst](declarations/range-fst.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [range_snd](declarations/range-snd.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [prod_bot_sup_bot_prod](declarations/prod-bot-sup-bot-prod.md) | 1253 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `def` | [subsemiringCongr](declarations/subsemiringcongr.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `def` | [ofLeftInverseS](declarations/ofleftinverses.md) | 1279 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [ofLeftInverseS_apply](declarations/ofleftinverses-apply.md) | 1291 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [ofLeftInverseS_symm_apply](declarations/ofleftinverses-symm-apply.md) | 1297 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `def` | [subsemiringMap](declarations/subsemiringmap.md) | 1305 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `instance` | [smul](declarations/smul.md) | 1332 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [smul_def](declarations/smul-def.md) | 1335 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `instance` | [smulCommClass_left](declarations/smulcommclass-left.md) | 1339 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `instance` | [smulCommClass_right](declarations/smulcommclass-right.md) | 1344 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `instance` | [isScalarTower](declarations/isscalartower.md) | 1350 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `instance` | [faithfulSMul](declarations/faithfulsmul.md) | 1355 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `instance` | [(anonymous)](declarations/instance.md) | 1359 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `instance` | [mulAction](declarations/mulaction.md) | 1367 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 1371 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `instance` | [mulDistribMulAction](declarations/muldistribmulaction.md) | 1376 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `instance` | [mulActionWithZero](declarations/mulactionwithzero.md) | 1381 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `instance` | [module](declarations/module.md) | 1387 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 1393 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `instance` | [center.smulCommClass_left](declarations/center-smulcommclass-left.md) | 1397 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `instance` | [center.smulCommClass_right](declarations/center-smulcommclass-right.md) | 1402 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `def` | [closureCommSemiringOfComm](declarations/closurecommsemiringofcomm.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `def` | [posSubmonoid](declarations/possubmonoid.md) | 1430 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [mem_posSubmonoid](declarations/mem-possubmonoid.md) | 1438 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c1e8c5a3bc40f14b69738b0988ce14862329bbfb16d70c9c1c58b44cf511a2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
