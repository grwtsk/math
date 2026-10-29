# Non Unital Subalgebra Namespaced Subtype Apply

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**195 observed declarations and anonymous commands**, 139 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant48f2c2030b54ad9db6a68235acfa50d86fbac16f7f4886a2a6e716f9074dfab0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47e5f0a71cad883e8c7b586a095a93d8d398f581`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/NonUnitalSubalgebraNamespacedSubtypeApply.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [subtype](declarations/subtype.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [subtype_apply](declarations/subtype-apply.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [subtype_injective](declarations/subtype-injective.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [NonUnitalSubalgebra](declarations/nonunitalsubalgebra.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofClass](declarations/ofclass.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instNonUnitalSubsemiringClass](declarations/instnonunitalsubsemiringclass.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instSMulMemClass](declarations/instsmulmemclass.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_carrier](declarations/mem-carrier.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ext](declarations/ext.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_toNonUnitalSubsemiring](declarations/mem-tononunitalsubsemiring.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_toNonUnitalSubsemiring](declarations/coe-tononunitalsubsemiring.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toNonUnitalSubsemiring_injective](declarations/tononunitalsubsemiring-injective.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toNonUnitalSubsemiring_inj](declarations/tononunitalsubsemiring-inj.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_toSubmodule](declarations/mem-tosubmodule.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_toSubmodule](declarations/coe-tosubmodule.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toSubmodule_injective](declarations/tosubmodule-injective.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toSubmodule_inj](declarations/tosubmodule-inj.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [copy](declarations/copy.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_copy](declarations/coe-copy.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [copy_eq](declarations/copy-eq.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instNonUnitalSubringClass](declarations/instnonunitalsubringclass.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toNonUnitalSubring](declarations/tononunitalsubring-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_toNonUnitalSubring](declarations/mem-tononunitalsubring.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coe_toNonUnitalSubring](declarations/coe-tononunitalsubring.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toNonUnitalSubring_injective](declarations/tononunitalsubring-injective.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toNonUnitalSubring_inj](declarations/tononunitalsubring-inj.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [toNonUnitalNonAssocSemiring](declarations/tononunitalnonassocsemiring.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [toNonUnitalSemiring](declarations/tononunitalsemiring.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [toNonUnitalCommSemiring](declarations/tononunitalcommsemiring.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [toNonUnitalNonAssocRing](declarations/tononunitalnonassocring.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [toNonUnitalRing](declarations/tononunitalring.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [toNonUnitalCommRing](declarations/tononunitalcommring.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toSubmodule'](declarations/tosubmodule.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toNonUnitalSubsemiring'](declarations/tononunitalsubsemiring.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [toNonUnitalSubring'](declarations/tononunitalsubring.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instModule'](declarations/instmodule.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instModule](declarations/instmodule-source-edition-2.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [instIsScalarTower'](declarations/instisscalartower.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instSMulCommClass'](declarations/instsmulcommclass.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instSMulCommClass](declarations/instsmulcommclass-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [noZeroSMulDivisors_bot](declarations/nozerosmuldivisors-bot.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coe_add](declarations/coe-add.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_mul](declarations/coe-mul.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coe_zero](declarations/coe-zero.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coe_neg](declarations/coe-neg.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_sub](declarations/coe-sub.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_smul](declarations/coe-smul.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coe_eq_zero](declarations/coe-eq-zero.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [toNonUnitalSubsemiring_subtype](declarations/tononunitalsubsemiring-subtype.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [toSubring_subtype](declarations/tosubring-subtype.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [toSubmoduleEquiv](declarations/tosubmoduleequiv.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [map](declarations/map.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [map_mono](declarations/map-mono.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [map_injective](declarations/map-injective.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [map_id](declarations/map-id.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_map](declarations/map-map.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mem_map](declarations/mem-map.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [map_toSubmodule](declarations/map-tosubmodule.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_toNonUnitalSubsemiring](declarations/map-tononunitalsubsemiring.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [coe_map](declarations/coe-map.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [comap](declarations/comap.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_le](declarations/map-le.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mem_comap](declarations/mem-comap.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [coe_comap](declarations/coe-comap.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [noZeroDivisors](declarations/nozerodivisors.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [toNonUnitalSubalgebra](declarations/tononunitalsubalgebra.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_toNonUnitalSubalgebra](declarations/mem-tononunitalsubalgebra.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_toNonUnitalSubalgebra](declarations/coe-tononunitalsubalgebra.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [toNonUnitalSubalgebra_mk](declarations/tononunitalsubalgebra-mk.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [toNonUnitalSubalgebra_toSubmodule](declarations/tononunitalsubalgebra-tosubmodule.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Non Unital Subalgebra Namespaced Subtype Apply](declarations/tosubmodule-tononunitalsubalgebra.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [range](declarations/range.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mem_range](declarations/mem-range.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mem_range_self](declarations/mem-range-self.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [coe_range](declarations/coe-range.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [range_comp](declarations/range-comp.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [range_comp_le_range](declarations/range-comp-le-range.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [codRestrict](declarations/codrestrict.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [subtype_comp_codRestrict](declarations/subtype-comp-codrestrict.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [coe_codRestrict](declarations/coe-codrestrict.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [injective_codRestrict](declarations/injective-codrestrict.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `abbrev` | [rangeRestrict](declarations/rangerestrict.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [equalizer](declarations/equalizer.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [mem_equalizer](declarations/mem-equalizer.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [fintypeRange](declarations/fintyperange.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [span_eq_toSubmodule](declarations/span-eq-tosubmodule.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [adjoin](declarations/adjoin.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [adjoin_toSubmodule](declarations/adjoin-tosubmodule.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [subset_adjoin](declarations/subset-adjoin.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [self_mem_adjoin_singleton](declarations/self-mem-adjoin-singleton.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [gc](declarations/gc.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [gi](declarations/gi.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [adjoin_le](declarations/adjoin-le.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [adjoin_le_iff](declarations/adjoin-le-iff.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [adjoin_union](declarations/adjoin-union.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [adjoin_eq](declarations/adjoin-eq.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [adjoin_induction](declarations/adjoin-induction-source-edition-2.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [adjoin_induction₂](declarations/adjoin-induction.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [adjoin_eq_span](declarations/adjoin-eq-span.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [adjoin_empty](declarations/adjoin-empty.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [adjoin_univ](declarations/adjoin-univ.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [Non Unital Subalgebra Namespaced Subtype Apply](declarations/map-adjoin.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [Non Unital Subalgebra Namespaced Subtype Apply](declarations/map-adjoin-singleton.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [coe_top](declarations/coe-top.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [mem_top](declarations/mem-top.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [top_toSubmodule](declarations/top-tosubmodule.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [top_toNonUnitalSubsemiring](declarations/top-tononunitalsubsemiring.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [top_toSubring](declarations/top-tosubring.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [toSubmodule_eq_top](declarations/tosubmodule-eq-top.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [toNonUnitalSubsemiring_eq_top](declarations/tononunitalsubsemiring-eq-top.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [to_subring_eq_top](declarations/to-subring-eq-top.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [mem_sup_left](declarations/mem-sup-left.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [mem_sup_right](declarations/mem-sup-right.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [mul_mem_sup](declarations/mul-mem-sup.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [map_sup](declarations/map-sup.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [map_inf](declarations/map-inf.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [coe_inf](declarations/coe-inf.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [mem_inf](declarations/mem-inf.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [inf_toSubmodule](declarations/inf-tosubmodule.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [inf_toNonUnitalSubsemiring](declarations/inf-tononunitalsubsemiring.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [coe_sInf](declarations/coe-sinf.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [mem_sInf](declarations/mem-sinf.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [sInf_toSubmodule](declarations/sinf-tosubmodule.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [sInf_toNonUnitalSubsemiring](declarations/sinf-tononunitalsubsemiring.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [coe_iInf](declarations/coe-iinf.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [mem_iInf](declarations/mem-iinf.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [map_iInf](declarations/map-iinf.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [iInf_toSubmodule](declarations/iinf-tosubmodule.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [mem_bot](declarations/mem-bot.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [toSubmodule_bot](declarations/tosubmodule-bot.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [coe_bot](declarations/coe-bot.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [eq_top_iff](declarations/eq-top-iff.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [range_id](declarations/range-id.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [map_top](declarations/map-top.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [map_bot](declarations/map-bot.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [comap_top](declarations/comap-top.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [toTop](declarations/totop.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [range_eq_top](declarations/range-eq-top.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [range_val](declarations/range-val.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `instance` | [subsingleton_of_subsingleton](declarations/subsingleton-of-subsingleton.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [prod](declarations/prod.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [coe_prod](declarations/coe-prod.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [prod_toSubmodule](declarations/prod-tosubmodule.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [mem_prod](declarations/mem-prod.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [prod_top](declarations/prod-top.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [prod_mono](declarations/prod-mono.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [prod_inf_prod](declarations/prod-inf-prod.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `instance` | [Non Unital Subalgebra Namespaced Subtype Apply](declarations/subsingleton.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [inclusion](declarations/inclusion.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [inclusion_injective](declarations/inclusion-injective.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [inclusion_self](declarations/inclusion-self.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [inclusion_mk](declarations/inclusion-mk.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [inclusion_right](declarations/inclusion-right.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [inclusion_inclusion](declarations/inclusion-inclusion.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [coe_inclusion](declarations/coe-inclusion.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [coe_iSup_of_directed](declarations/coe-isup-of-directed.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [iSupLift](declarations/isuplift.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [iSupLift_inclusion](declarations/isuplift-inclusion.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [iSupLift_comp_inclusion](declarations/isuplift-comp-inclusion.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [iSupLift_mk](declarations/isuplift-mk.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [iSupLift_of_mem](declarations/isuplift-of-mem.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [Non Unital Subalgebra Namespaced Subtype Apply](declarations/smul-mem-center.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [center](declarations/center.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [coe_center](declarations/coe-center.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `instance` | [center.instNonUnitalCommSemiring](declarations/center-instnonunitalcommsemiring.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `instance` | [center.instNonUnitalCommRing](declarations/center-instnonunitalcommring.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [center_toNonUnitalSubsemiring](declarations/center-tononunitalsubsemiring.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `lemma` | [center_toNonUnitalSubring](declarations/center-tononunitalsubring.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `example` | [(anonymous)](declarations/example.md) | 1109 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [center_eq_top](declarations/center-eq-top.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [mem_center_iff](declarations/mem-center-iff.md) | 1120 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [Non Unital Subalgebra Namespaced Subtype Apply](declarations/smul-mem-centralizer.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `def` | [centralizer](declarations/centralizer.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [coe_centralizer](declarations/coe-centralizer.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [mem_centralizer_iff](declarations/mem-centralizer-iff.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [centralizer_le](declarations/centralizer-le.md) | 1149 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [centralizer_univ](declarations/centralizer-univ.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `lemma` | [adjoin_le_centralizer_centralizer](declarations/adjoin-le-centralizer-centralizer.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `lemma` | [commute_of_mem_adjoin_of_forall_mem_commute](declarations/commute-of-mem-adjoin-of-forall-mem-commute.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `lemma` | [commute_of_mem_adjoin_singleton_of_commute](declarations/commute-of-mem-adjoin-singleton-of-commute.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `lemma` | [commute_of_mem_adjoin_self](declarations/commute-of-mem-adjoin-self.md) | 1183 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `abbrev` | [adjoinNonUnitalCommSemiringOfComm](declarations/adjoinnonunitalcommsemiringofcomm.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `abbrev` | [adjoinNonUnitalCommRingOfComm](declarations/adjoinnonunitalcommringofcomm.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `def` | [nonUnitalSubalgebraOfNonUnitalSubsemiring](declarations/nonunitalsubalgebraofnonunitalsubsemiring.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [mem_nonUnitalSubalgebraOfNonUnitalSubsemiring](declarations/mem-nonunitalsubalgebraofnonunitalsubsemiring.md) | 1222 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `def` | [nonUnitalSubalgebraOfNonUnitalSubring](declarations/nonunitalsubalgebraofnonunitalsubring.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [mem_nonUnitalSubalgebraOfNonUnitalSubring](declarations/mem-nonunitalsubalgebraofnonunitalsubring.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d43266599e0d6dfe7ac15a7570920905534c745d33cf430f65738b101a056a56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant48f2c2030b54ad9db6a68235acfa50d86fbac16f7f4886a2a6e716f9074dfab0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
