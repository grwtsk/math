# Non Unital Subalgebra Subtype Apply

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**194 observed declarations and anonymous commands**, 137 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/NonUnitalSubalgebra/Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `680a173b91789eed7742b4a2907af590daaa97eb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/NonUnitalSubalgebraSubtypeApply.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instInvolutiveStar](declarations/instinvolutivestar.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instStarMul](declarations/inststarmul.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instStarAddMonoid](declarations/inststaraddmonoid.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instStarRing](declarations/inststarring.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instStarModule](declarations/inststarmodule.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [subtype](declarations/subtype.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [subtype_apply](declarations/subtype-apply.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [subtype_injective](declarations/subtype-injective.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [NonUnitalStarSubalgebra](declarations/nonunitalstarsubalgebra.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instSetLike](declarations/instsetlike.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ofClass](declarations/ofclass.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instNonUnitalSubsemiringClass](declarations/instnonunitalsubsemiringclass.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instSMulMemClass](declarations/instsmulmemclass.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instStarMemClass](declarations/inststarmemclass.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instNonUnitalSubringClass](declarations/instnonunitalsubringclass.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_carrier](declarations/mem-carrier.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ext](declarations/ext.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_toNonUnitalSubalgebra](declarations/mem-tononunitalsubalgebra.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_toNonUnitalSubalgebra](declarations/coe-tononunitalsubalgebra.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toNonUnitalSubalgebra_injective](declarations/tononunitalsubalgebra-injective.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toNonUnitalSubalgebra_inj](declarations/tononunitalsubalgebra-inj.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toNonUnitalSubalgebra_le_iff](declarations/tononunitalsubalgebra-le-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [copy](declarations/copy.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_copy](declarations/coe-copy.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [copy_eq](declarations/copy-eq.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toNonUnitalSubring](declarations/tononunitalsubring.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mem_toNonUnitalSubring](declarations/mem-tononunitalsubring.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_toNonUnitalSubring](declarations/coe-tononunitalsubring.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toNonUnitalSubring_injective](declarations/tononunitalsubring-injective.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toNonUnitalSubring_inj](declarations/tononunitalsubring-inj.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instInhabited](declarations/instinhabited.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [toNonUnitalSemiring](declarations/tononunitalsemiring.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [toNonUnitalCommSemiring](declarations/tononunitalcommsemiring.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [toNonUnitalRing](declarations/tononunitalring.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [toNonUnitalCommRing](declarations/tononunitalcommring.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toNonUnitalSubalgebra'](declarations/tononunitalsubalgebra.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [module'](declarations/module.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instModule](declarations/instmodule.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instIsScalarTower'](declarations/instisscalartower.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instIsScalarTower](declarations/instisscalartower-source-edition-2.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [instSMulCommClass'](declarations/instsmulcommclass-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [noZeroSMulDivisors_bot](declarations/nozerosmuldivisors-bot.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [coe_add](declarations/coe-add.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_mul](declarations/coe-mul.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_zero](declarations/coe-zero.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_neg](declarations/coe-neg.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_sub](declarations/coe-sub.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_smul](declarations/coe-smul.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_eq_zero](declarations/coe-eq-zero.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [toNonUnitalSubalgebra_subtype](declarations/tononunitalsubalgebra-subtype.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toSubring_subtype](declarations/tosubring-subtype.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [map](declarations/map.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_mono](declarations/map-mono.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [map_injective](declarations/map-injective.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [map_id](declarations/map-id.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [map_map](declarations/map-map.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mem_map](declarations/mem-map.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_toNonUnitalSubalgebra](declarations/map-tononunitalsubalgebra.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coe_map](declarations/coe-map.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [comap](declarations/comap.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_le](declarations/map-le.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [mem_comap](declarations/mem-comap.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coe_comap](declarations/coe-comap.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [instNoZeroDivisors](declarations/instnozerodivisors.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [toNonUnitalStarSubalgebra](declarations/tononunitalstarsubalgebra.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_toNonUnitalStarSubalgebra](declarations/mem-tononunitalstarsubalgebra.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coe_toNonUnitalStarSubalgebra](declarations/coe-tononunitalstarsubalgebra.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [toNonUnitalStarSubalgebra_toNonUnitalSubalgebra](declarations/tononunitalstarsubalgebra-tononunitalsubalgebra.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [_root_.NonUnitalStarSubalgebra.toNonUnitalSubalgebra_toNonUnitalStarSubalgebra](declarations/root-nonunitalstarsubalgebra-tononunitalsubalgebra-tononunitalstarsubalg.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [range](declarations/range.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_range](declarations/mem-range.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_range_self](declarations/mem-range-self.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coe_range](declarations/coe-range.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [range_comp](declarations/range-comp.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [range_comp_le_range](declarations/range-comp-le-range.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [codRestrict](declarations/codrestrict.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [subtype_comp_codRestrict](declarations/subtype-comp-codrestrict.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [coe_codRestrict](declarations/coe-codrestrict.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [injective_codRestrict](declarations/injective-codrestrict.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `abbrev` | [rangeRestrict](declarations/rangerestrict.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [equalizer](declarations/equalizer.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [mem_equalizer](declarations/mem-equalizer.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [ofLeftInverse'](declarations/ofleftinverse.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [ofLeftInverse'_apply](declarations/ofleftinverse-apply.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [ofLeftInverse'_symm_apply](declarations/ofleftinverse-symm-apply.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [ofInjective'](declarations/ofinjective.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [ofInjective'_apply](declarations/ofinjective-apply.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [instInvolutiveStar](declarations/instinvolutivestar-source-edition-2.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mem_star_iff](declarations/mem-star-iff.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [star_mem_star_iff](declarations/star-mem-star-iff.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coe_star](declarations/coe-star.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [star_mono](declarations/star-mono.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [star_adjoin_comm](declarations/star-adjoin-comm.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [starClosure](declarations/starclosure.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [starClosure_le](declarations/starclosure-le.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [starClosure_le_iff](declarations/starclosure-le-iff.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [starClosure_toNonunitalSubalgebra](declarations/starclosure-tononunitalsubalgebra.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [starClosure_mono](declarations/starclosure-mono.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [adjoin](declarations/adjoin.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [adjoin_eq_starClosure_adjoin](declarations/adjoin-eq-starclosure-adjoin.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [adjoin_toNonUnitalSubalgebra](declarations/adjoin-tononunitalsubalgebra.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [subset_adjoin](declarations/subset-adjoin.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [star_subset_adjoin](declarations/star-subset-adjoin.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [self_mem_adjoin_singleton](declarations/self-mem-adjoin-singleton.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [star_self_mem_adjoin_singleton](declarations/star-self-mem-adjoin-singleton.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [adjoin_induction](declarations/adjoin-induction.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [gc](declarations/gc.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [gi](declarations/gi.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [adjoin_le](declarations/adjoin-le.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [adjoin_le_iff](declarations/adjoin-le-iff.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [adjoin_eq](declarations/adjoin-eq.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [adjoin_eq_span](declarations/adjoin-eq-span.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [span_eq_toSubmodule](declarations/span-eq-tosubmodule.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [_root_.NonUnitalSubalgebra.starClosure_eq_adjoin](declarations/root-nonunitalsubalgebra-starclosure-eq-adjoin.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [(anonymous)](declarations/instance.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [coe_top](declarations/coe-top.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [mem_top](declarations/mem-top.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [top_toNonUnitalSubalgebra](declarations/top-tononunitalsubalgebra.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [toNonUnitalSubalgebra_eq_top](declarations/tononunitalsubalgebra-eq-top.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [mem_sup_left](declarations/mem-sup-left.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [mem_sup_right](declarations/mem-sup-right.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [mul_mem_sup](declarations/mul-mem-sup.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [map_sup](declarations/map-sup.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [map_inf](declarations/map-inf.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [coe_inf](declarations/coe-inf.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [mem_inf](declarations/mem-inf.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [inf_toNonUnitalSubalgebra](declarations/inf-tononunitalsubalgebra.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [coe_sInf](declarations/coe-sinf.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [mem_sInf](declarations/mem-sinf.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [sInf_toNonUnitalSubalgebra](declarations/sinf-tononunitalsubalgebra.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [coe_iInf](declarations/coe-iinf.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [mem_iInf](declarations/mem-iinf.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [map_iInf](declarations/map-iinf.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [iInf_toNonUnitalSubalgebra](declarations/iinf-tononunitalsubalgebra.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [mem_bot](declarations/mem-bot.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [toNonUnitalSubalgebra_bot](declarations/tononunitalsubalgebra-bot.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [coe_bot](declarations/coe-bot.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [eq_top_iff](declarations/eq-top-iff.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [range_id](declarations/range-id.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [map_bot](declarations/map-bot.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [comap_top](declarations/comap-top.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [toTop](declarations/totop.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [range_eq_top](declarations/range-eq-top.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [map_top](declarations/map-top.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [_root_.NonUnitalStarAlgHom.map_adjoin](declarations/root-nonunitalstaralghom-map-adjoin.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [_root_.NonUnitalStarAlgHom.map_adjoin_singleton](declarations/root-nonunitalstaralghom-map-adjoin-singleton.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `instance` | [subsingleton_of_subsingleton](declarations/subsingleton-of-subsingleton.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `instance` | [_root_.NonUnitalStarAlgHom.subsingleton](declarations/root-nonunitalstaralghom-subsingleton.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [inclusion](declarations/inclusion.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [inclusion_injective](declarations/inclusion-injective.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [inclusion_self](declarations/inclusion-self.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [inclusion_mk](declarations/inclusion-mk.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [inclusion_right](declarations/inclusion-right.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [inclusion_inclusion](declarations/inclusion-inclusion.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [val_inclusion](declarations/val-inclusion.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [range_val](declarations/range-val.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [prod](declarations/prod.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [coe_prod](declarations/coe-prod.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [prod_toNonUnitalSubalgebra](declarations/prod-tononunitalsubalgebra.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [mem_prod](declarations/mem-prod.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [prod_top](declarations/prod-top.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [prod_mono](declarations/prod-mono.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [prod_inf_prod](declarations/prod-inf-prod.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [coe_iSup_of_directed](declarations/coe-isup-of-directed.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [iSupLift](declarations/isuplift.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [iSupLift_inclusion](declarations/isuplift-inclusion.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [iSupLift_comp_inclusion](declarations/isuplift-comp-inclusion.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [iSupLift_mk](declarations/isuplift-mk.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [iSupLift_of_mem](declarations/isuplift-of-mem.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [center](declarations/center.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [coe_center](declarations/coe-center.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [center_toNonUnitalSubalgebra](declarations/center-tononunitalsubalgebra.md) | 1117 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [center_eq_top](declarations/center-eq-top.md) | 1122 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `instance` | [instNonUnitalCommSemiring](declarations/instnonunitalcommsemiring.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `instance` | [instNonUnitalCommRing](declarations/instnonunitalcommring.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [mem_center_iff](declarations/mem-center-iff.md) | 1135 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `def` | [centralizer](declarations/centralizer.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [coe_centralizer](declarations/coe-centralizer.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [mem_centralizer_iff](declarations/mem-centralizer-iff.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [centralizer_le](declarations/centralizer-le.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [centralizer_univ](declarations/centralizer-univ.md) | 1165 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [centralizer_toNonUnitalSubalgebra](declarations/centralizer-tononunitalsubalgebra.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [coe_centralizer_centralizer](declarations/coe-centralizer-centralizer.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `lemma` | [adjoin_le_centralizer_centralizer](declarations/adjoin-le-centralizer-centralizer.md) | 1189 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `lemma` | [commute_of_mem_adjoin_of_forall_mem_commute](declarations/commute-of-mem-adjoin-of-forall-mem-commute.md) | 1197 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `lemma` | [commute_of_mem_adjoin_singleton_of_commute](declarations/commute-of-mem-adjoin-singleton-of-commute.md) | 1203 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `lemma` | [commute_of_mem_adjoin_self](declarations/commute-of-mem-adjoin-self.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `abbrev` | [adjoinNonUnitalCommSemiringOfComm](declarations/adjoinnonunitalcommsemiringofcomm.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `abbrev` | [adjoinNonUnitalCommRingOfComm](declarations/adjoinnonunitalcommringofcomm.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7cc8230ec70d915e616493ae16336d33e5bc2686bce7255af9ec0d4a6ca2bfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/NonUnitalSubalgebra/Variant568d3331d3596a45bd2b60b763aee245ea0ea09b164f84bfd13c7510bd04805a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
