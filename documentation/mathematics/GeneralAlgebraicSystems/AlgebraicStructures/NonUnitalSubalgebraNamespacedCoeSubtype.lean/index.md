# Non Unital Subalgebra Namespaced Coe Subtype

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**174 observed declarations and anonymous commands**, 121 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f68d5df669ef619d2215dcab83e04f7957aaa0e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/NonUnitalSubalgebraNamespacedCoeSubtype.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instInvolutiveStar](declarations/instinvolutivestar-source-edition-2.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instStarMul](declarations/inststarmul.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instStarRing](declarations/inststarring.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instStarModule](declarations/inststarmodule.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [subtype](declarations/subtype.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coeSubtype](declarations/coesubtype.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [NonUnitalStarSubalgebra](declarations/nonunitalstarsubalgebra.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instSetLike](declarations/instsetlike.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instNonUnitalSubsemiringClass](declarations/instnonunitalsubsemiringclass.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instSMulMemClass](declarations/instsmulmemclass.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instStarMemClass](declarations/inststarmemclass.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instNonUnitalSubringClass](declarations/instnonunitalsubringclass.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_carrier](declarations/mem-carrier.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ext](declarations/ext.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_toNonUnitalSubalgebra](declarations/mem-tononunitalsubalgebra.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_toNonUnitalSubalgebra](declarations/coe-tononunitalsubalgebra.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toNonUnitalSubalgebra_injective](declarations/tononunitalsubalgebra-injective.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toNonUnitalSubalgebra_inj](declarations/tononunitalsubalgebra-inj.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toNonUnitalSubalgebra_le_iff](declarations/tononunitalsubalgebra-le-iff.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [copy](declarations/copy.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_copy](declarations/coe-copy.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [copy_eq](declarations/copy-eq.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toNonUnitalSubring](declarations/tononunitalsubring.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_toNonUnitalSubring](declarations/mem-tononunitalsubring.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_toNonUnitalSubring](declarations/coe-tononunitalsubring.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toNonUnitalSubring_injective](declarations/tononunitalsubring-injective.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toNonUnitalSubring_inj](declarations/tononunitalsubring-inj.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instInhabited](declarations/instinhabited.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [toNonUnitalSemiring](declarations/tononunitalsemiring.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [toNonUnitalCommSemiring](declarations/tononunitalcommsemiring.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [toNonUnitalRing](declarations/tononunitalring.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [toNonUnitalCommRing](declarations/tononunitalcommring.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toNonUnitalSubalgebra'](declarations/tononunitalsubalgebra.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [module'](declarations/module.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instModule](declarations/instmodule.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instIsScalarTower'](declarations/instisscalartower.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instIsScalarTower](declarations/instisscalartower-source-edition-2.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instSMulCommClass'](declarations/instsmulcommclass.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instSMulCommClass](declarations/instsmulcommclass-source-edition-2.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [noZeroSMulDivisors_bot](declarations/nozerosmuldivisors-bot.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coe_add](declarations/coe-add.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coe_mul](declarations/coe-mul.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_zero](declarations/coe-zero.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coe_neg](declarations/coe-neg.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_sub](declarations/coe-sub.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_smul](declarations/coe-smul.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_eq_zero](declarations/coe-eq-zero.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toNonUnitalSubalgebra_subtype](declarations/tononunitalsubalgebra-subtype.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [toSubring_subtype](declarations/tosubring-subtype.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [map](declarations/map.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_mono](declarations/map-mono.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [map_injective](declarations/map-injective.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map_id](declarations/map-id.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_map](declarations/map-map.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mem_map](declarations/mem-map.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [map_toNonUnitalSubalgebra](declarations/map-tononunitalsubalgebra.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_map](declarations/coe-map.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [comap](declarations/comap.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [map_le](declarations/map-le.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_comap](declarations/mem-comap.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coe_comap](declarations/coe-comap.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instNoZeroDivisors](declarations/instnozerodivisors.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [toNonUnitalStarSubalgebra](declarations/tononunitalstarsubalgebra.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mem_toNonUnitalStarSubalgebra](declarations/mem-tononunitalstarsubalgebra.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coe_toNonUnitalStarSubalgebra](declarations/coe-tononunitalstarsubalgebra.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [toNonUnitalStarSubalgebra_toNonUnitalSubalgebra](declarations/tononunitalstarsubalgebra-tononunitalsubalgebra.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Non Unital Subalgebra Namespaced Coe Subtype](declarations/tononunitalsubalgebra-tononunitalstarsubalgebra.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [range](declarations/range.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [mem_range](declarations/mem-range.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_range_self](declarations/mem-range-self.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [coe_range](declarations/coe-range.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [range_comp](declarations/range-comp.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [range_comp_le_range](declarations/range-comp-le-range.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [codRestrict](declarations/codrestrict.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [subtype_comp_codRestrict](declarations/subtype-comp-codrestrict.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_codRestrict](declarations/coe-codrestrict.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [injective_codRestrict](declarations/injective-codrestrict.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [rangeRestrict](declarations/rangerestrict.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [equalizer](declarations/equalizer.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mem_equalizer](declarations/mem-equalizer.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [ofLeftInverse'](declarations/ofleftinverse.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [ofLeftInverse'_apply](declarations/ofleftinverse-apply.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [ofLeftInverse'_symm_apply](declarations/ofleftinverse-symm-apply.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [ofInjective'](declarations/ofinjective.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [ofInjective'_apply](declarations/ofinjective-apply.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [instInvolutiveStar](declarations/instinvolutivestar.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mem_star_iff](declarations/mem-star-iff.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [star_mem_star_iff](declarations/star-mem-star-iff.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coe_star](declarations/coe-star.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [star_mono](declarations/star-mono.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [star_adjoin_comm](declarations/star-adjoin-comm.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [starClosure](declarations/starclosure.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [starClosure_le](declarations/starclosure-le.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [starClosure_le_iff](declarations/starclosure-le-iff.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [starClosure_toNonunitalSubalgebra](declarations/starclosure-tononunitalsubalgebra.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [starClosure_mono](declarations/starclosure-mono.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [adjoin](declarations/adjoin.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [adjoin_eq_starClosure_adjoin](declarations/adjoin-eq-starclosure-adjoin.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [adjoin_toNonUnitalSubalgebra](declarations/adjoin-tononunitalsubalgebra.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [subset_adjoin](declarations/subset-adjoin.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [star_subset_adjoin](declarations/star-subset-adjoin.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [self_mem_adjoin_singleton](declarations/self-mem-adjoin-singleton.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [star_self_mem_adjoin_singleton](declarations/star-self-mem-adjoin-singleton.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [gc](declarations/gc.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [gi](declarations/gi.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [adjoin_le](declarations/adjoin-le.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [adjoin_le_iff](declarations/adjoin-le-iff.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [Non Unital Subalgebra Namespaced Coe Subtype](declarations/starclosure-eq-adjoin.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coe_top](declarations/coe-top.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [mem_top](declarations/mem-top.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [top_toNonUnitalSubalgebra](declarations/top-tononunitalsubalgebra.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [toNonUnitalSubalgebra_eq_top](declarations/tononunitalsubalgebra-eq-top.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [mem_sup_left](declarations/mem-sup-left.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [mem_sup_right](declarations/mem-sup-right.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [mul_mem_sup](declarations/mul-mem-sup.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [map_sup](declarations/map-sup.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [coe_inf](declarations/coe-inf.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [mem_inf](declarations/mem-inf.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [inf_toNonUnitalSubalgebra](declarations/inf-tononunitalsubalgebra.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [coe_sInf](declarations/coe-sinf.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [mem_sInf](declarations/mem-sinf.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [sInf_toNonUnitalSubalgebra](declarations/sinf-tononunitalsubalgebra.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [coe_iInf](declarations/coe-iinf.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [mem_iInf](declarations/mem-iinf.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [iInf_toNonUnitalSubalgebra](declarations/iinf-tononunitalsubalgebra.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [mem_bot](declarations/mem-bot.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [toNonUnitalSubalgebra_bot](declarations/tononunitalsubalgebra-bot.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [coe_bot](declarations/coe-bot.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [eq_top_iff](declarations/eq-top-iff.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [range_top_iff_surjective](declarations/range-top-iff-surjective.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [range_id](declarations/range-id.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [map_top](declarations/map-top.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [map_bot](declarations/map-bot.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [comap_top](declarations/comap-top.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [toTop](declarations/totop.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [subsingleton_of_subsingleton](declarations/subsingleton-of-subsingleton.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `instance` | [Non Unital Subalgebra Namespaced Coe Subtype](declarations/subsingleton.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [range_val](declarations/range-val.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `def` | [inclusion](declarations/inclusion.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [inclusion_injective](declarations/inclusion-injective.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [inclusion_self](declarations/inclusion-self.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [inclusion_mk](declarations/inclusion-mk.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [inclusion_right](declarations/inclusion-right.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [inclusion_inclusion](declarations/inclusion-inclusion.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [val_inclusion](declarations/val-inclusion.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [prod](declarations/prod.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [coe_prod](declarations/coe-prod.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [prod_toNonUnitalSubalgebra](declarations/prod-tononunitalsubalgebra.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [mem_prod](declarations/mem-prod.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [prod_top](declarations/prod-top.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [prod_mono](declarations/prod-mono.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [prod_inf_prod](declarations/prod-inf-prod.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [coe_iSup_of_directed](declarations/coe-isup-of-directed.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [iSupLift](declarations/isuplift.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [iSupLift_inclusion](declarations/isuplift-inclusion.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [iSupLift_comp_inclusion](declarations/isuplift-comp-inclusion.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [iSupLift_mk](declarations/isuplift-mk.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [iSupLift_of_mem](declarations/isuplift-of-mem.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [center](declarations/center.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [coe_center](declarations/coe-center.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [center_toNonUnitalSubalgebra](declarations/center-tononunitalsubalgebra.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [center_eq_top](declarations/center-eq-top.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `instance` | [instNonUnitalCommSemiring](declarations/instnonunitalcommsemiring.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `instance` | [instNonUnitalCommRing](declarations/instnonunitalcommring.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [mem_center_iff](declarations/mem-center-iff.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [centralizer](declarations/centralizer.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [coe_centralizer](declarations/coe-centralizer.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [mem_centralizer_iff](declarations/mem-centralizer-iff.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [centralizer_le](declarations/centralizer-le.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [centralizer_univ](declarations/centralizer-univ.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6f938f5acd42586cac317711c7f3d1cedf59d8c4d3993b877db52a568be44a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
