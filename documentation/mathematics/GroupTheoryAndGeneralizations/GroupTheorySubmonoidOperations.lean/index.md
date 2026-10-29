# Group Theory Submonoid Operations

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**180 observed declarations and anonymous commands**, 126 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5571172e066dee37586abc057c9167c7ebf595f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupTheorySubmonoidOperations.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Submonoid.toAddSubmonoid](declarations/submonoid-toaddsubmonoid-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [AddSubmonoid.toSubmonoid'](declarations/addsubmonoid-tosubmonoid-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Submonoid.toAddSubmonoid_closure](declarations/submonoid-toaddsubmonoid-closure.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [AddSubmonoid.toSubmonoid'_closure](declarations/addsubmonoid-tosubmonoid-closure.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [AddSubmonoid.toSubmonoid](declarations/addsubmonoid-tosubmonoid.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Submonoid.toAddSubmonoid'](declarations/submonoid-toaddsubmonoid.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [AddSubmonoid.toSubmonoid_closure](declarations/addsubmonoid-tosubmonoid-closure-source-edition-2.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Submonoid.toAddSubmonoid'_closure](declarations/submonoid-toaddsubmonoid-closure-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [comap](declarations/comap.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_comap](declarations/coe-comap.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_comap](declarations/mem-comap.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comap_comap](declarations/comap-comap.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comap_id](declarations/comap-id.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [map](declarations/map.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_map](declarations/coe-map.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_map](declarations/mem-map.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_map_of_mem](declarations/mem-map-of-mem.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_coe_mem_map](declarations/apply-coe-mem-map.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_map](declarations/map-map.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_map_iff_mem](declarations/mem-map-iff-mem.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_le_of_le_comap](declarations/map-le-of-le-comap.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [le_comap_of_map_le](declarations/le-comap-of-map-le.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [le_comap_map](declarations/le-comap-map.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monotone_map](declarations/monotone-map.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [monotone_comap](declarations/monotone-comap.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_comap_map](declarations/map-comap-map.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comap_map_comap](declarations/comap-map-comap.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_sup](declarations/map-sup.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_iSup](declarations/map-isup.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [comap_inf](declarations/comap-inf.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comap_iInf](declarations/comap-iinf.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_bot](declarations/map-bot.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comap_top](declarations/comap-top.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [map_id](declarations/map-id.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [gciMapComap](declarations/gcimapcomap.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [comap_map_eq_of_injective](declarations/comap-map-eq-of-injective.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comap_surjective_of_injective](declarations/comap-surjective-of-injective.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_injective_of_injective](declarations/map-injective-of-injective.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [comap_inf_map_of_injective](declarations/comap-inf-map-of-injective.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [comap_iInf_map_of_injective](declarations/comap-iinf-map-of-injective.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [comap_sup_map_of_injective](declarations/comap-sup-map-of-injective.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [comap_iSup_map_of_injective](declarations/comap-isup-map-of-injective.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [map_le_map_iff_of_injective](declarations/map-le-map-iff-of-injective.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_strictMono_of_injective](declarations/map-strictmono-of-injective.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [giMapComap](declarations/gimapcomap.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_comap_eq_of_surjective](declarations/map-comap-eq-of-surjective.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [map_surjective_of_surjective](declarations/map-surjective-of-surjective.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [comap_injective_of_surjective](declarations/comap-injective-of-surjective.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_inf_comap_of_surjective](declarations/map-inf-comap-of-surjective.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [map_iInf_comap_of_surjective](declarations/map-iinf-comap-of-surjective.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map_sup_comap_of_surjective](declarations/map-sup-comap-of-surjective.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_iSup_comap_of_surjective](declarations/map-isup-comap-of-surjective.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [comap_le_comap_iff_of_surjective](declarations/comap-le-comap-iff-of-surjective.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [comap_strictMono_of_surjective](declarations/comap-strictmono-of-surjective.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [one](declarations/one.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_one](declarations/coe-one-source-edition-2.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_eq_one](declarations/coe-eq-one.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [one_def](declarations/one-def.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [AddSubmonoidClass.nSMul](declarations/addsubmonoidclass-nsmul.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [nPow](declarations/npow.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coe_pow](declarations/coe-pow.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mk_pow](declarations/mk-pow.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [subtype](declarations/subtype-source-edition-2.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [coe_subtype](declarations/coe-subtype-source-edition-2.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [mul](declarations/mul.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [one](declarations/one-source-edition-2.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coe_mul](declarations/coe-mul.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coe_one](declarations/coe-one.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [mk_mul_mk](declarations/mk-mul-mk.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mul_def](declarations/mul-def.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [one_def](declarations/one-def-source-edition-2.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [toMulOneClass](declarations/tomuloneclass.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [pow_mem](declarations/pow-mem.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [toMonoid](declarations/tomonoid.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [toCommMonoid](declarations/tocommmonoid.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [toOrderedCommMonoid](declarations/toorderedcommmonoid.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [toLinearOrderedCommMonoid](declarations/tolinearorderedcommmonoid.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [toOrderedCancelCommMonoid](declarations/toorderedcancelcommmonoid.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [toLinearOrderedCancelCommMonoid](declarations/tolinearorderedcancelcommmonoid.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [subtype](declarations/subtype.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [topEquiv](declarations/topequiv.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [topEquiv_toMonoidHom](declarations/topequiv-tomonoidhom.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [equivMapOfInjective](declarations/equivmapofinjective.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coe_equivMapOfInjective_apply](declarations/coe-equivmapofinjective-apply.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [closure_closure_coe_preimage](declarations/closure-closure-coe-preimage.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [prod](declarations/prod.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coe_prod](declarations/coe-prod.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [mem_prod](declarations/mem-prod.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [prod_mono](declarations/prod-mono.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [prod_top](declarations/prod-top.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [top_prod](declarations/top-prod.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [top_prod_top](declarations/top-prod-top.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [bot_prod_bot](declarations/bot-prod-bot.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [prodEquiv](declarations/prodequiv.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [map_inl](declarations/map-inl.md) | 908 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [map_inr](declarations/map-inr.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [prod_bot_sup_bot_prod](declarations/prod-bot-sup-bot-prod.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [mem_map_equiv](declarations/mem-map-equiv.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [map_equiv_eq_comap_symm](declarations/map-equiv-eq-comap-symm.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [comap_equiv_eq_map_symm](declarations/comap-equiv-eq-map-symm.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [map_equiv_top](declarations/map-equiv-top.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [le_prod_iff](declarations/le-prod-iff.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [prod_le_iff](declarations/prod-le-iff.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [mrange](declarations/mrange.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coe_mrange](declarations/coe-mrange.md) | 1045 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [mem_mrange](declarations/mem-mrange.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [mrange_eq_map](declarations/mrange-eq-map.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [map_mrange](declarations/map-mrange.md) | 1063 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [mrange_top_iff_surjective](declarations/mrange-top-iff-surjective.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [mrange_top_of_surjective](declarations/mrange-top-of-surjective.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [mclosure_preimage_le](declarations/mclosure-preimage-le.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [map_mclosure](declarations/map-mclosure.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [restrict](declarations/restrict.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [restrict_mrange](declarations/restrict-mrange.md) | 1118 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [codRestrict](declarations/codrestrict.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [mrangeRestrict](declarations/mrangerestrict.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [coe_mrangeRestrict](declarations/coe-mrangerestrict.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [mrangeRestrict_surjective](declarations/mrangerestrict-surjective.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [mker](declarations/mker.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [mem_mker](declarations/mem-mker.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [coe_mker](declarations/coe-mker.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `instance` | [decidableMemMker](declarations/decidablememmker.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [comap_mker](declarations/comap-mker.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [comap_bot'](declarations/comap-bot.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [restrict_mker](declarations/restrict-mker.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [mrangeRestrict_mker](declarations/mrangerestrict-mker.md) | 1202 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [mker_one](declarations/mker-one.md) | 1210 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [prod_map_comap_prod'](declarations/prod-map-comap-prod.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [mker_prod_map](declarations/mker-prod-map.md) | 1226 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [mker_inl](declarations/mker-inl.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [mker_inr](declarations/mker-inr.md) | 1241 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [mker_fst](declarations/mker-fst.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [mker_snd](declarations/mker-snd.md) | 1251 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `def` | [submonoidComap](declarations/submonoidcomap.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `def` | [submonoidMap](declarations/submonoidmap.md) | 1271 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [submonoidMap_surjective](declarations/submonoidmap-surjective.md) | 1281 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [mrange_inl](declarations/mrange-inl-source-edition-2.md) | 1295 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [mrange_inr](declarations/mrange-inr.md) | 1300 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [mrange_inl'](declarations/mrange-inl.md) | 1305 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [mrange_inr'](declarations/mrange-inr-source-edition-2.md) | 1311 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [mrange_fst](declarations/mrange-fst.md) | 1317 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [mrange_snd](declarations/mrange-snd.md) | 1323 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [prod_eq_bot_iff](declarations/prod-eq-bot-iff.md) | 1329 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [prod_eq_top_iff](declarations/prod-eq-top-iff.md) | 1336 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [mrange_inl_sup_mrange_inr](declarations/mrange-inl-sup-mrange-inr.md) | 1344 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [inclusion](declarations/inclusion.md) | 1352 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [range_subtype](declarations/range-subtype.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [eq_top_iff'](declarations/eq-top-iff.md) | 1364 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [eq_bot_iff_forall](declarations/eq-bot-iff-forall.md) | 1370 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [nontrivial_iff_exists_ne_one](declarations/nontrivial-iff-exists-ne-one.md) | 1376 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [bot_or_nontrivial](declarations/bot-or-nontrivial.md) | 1386 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [bot_or_exists_ne_one](declarations/bot-or-exists-ne-one.md) | 1395 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [submonoidCongr](declarations/submonoidcongr.md) | 1411 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `def` | [ofLeftInverse'](declarations/ofleftinverse.md) | 1424 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [submonoidMap](declarations/submonoidmap-source-edition-2.md) | 1448 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [coe_submonoidMap_apply](declarations/coe-submonoidmap-apply.md) | 1454 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [submonoidMap_symm_apply](declarations/submonoidmap-symm-apply.md) | 1461 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [Submonoid.equivMapOfInjective_coe_mulEquiv](declarations/submonoid-equivmapofinjective-coe-mulequiv.md) | 1470 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `instance` | [smul](declarations/smul.md) | 1498 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `instance` | [smulCommClass_left](declarations/smulcommclass-left.md) | 1502 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `instance` | [smulCommClass_right](declarations/smulcommclass-right.md) | 1509 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `instance` | [isScalarTower](declarations/isscalartower.md) | 1516 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [smul_def](declarations/smul-def.md) | 1522 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `instance` | [faithfulSMul](declarations/faithfulsmul.md) | 1527 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `instance` | [mulAction](declarations/mulaction.md) | 1537 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 1541 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `instance` | [mulDistribMulAction](declarations/muldistribmulaction.md) | 1546 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `example` | [(anonymous)](declarations/example.md) | 1550 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b0db9dfb9c69d6a97a81bf5428570e2319c5fb52eeaa9acdbee0e11ba965852 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Operations/Variantc4dbba396fbbb8b4ce47084ad660dec96d4cc8b1ce41eee06997784c3954d725.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
