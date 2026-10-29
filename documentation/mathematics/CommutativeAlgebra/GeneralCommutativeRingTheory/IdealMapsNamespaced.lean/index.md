# Ideal Maps Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**174 observed declarations and anonymous commands**, 151 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78b13e000b0f7a434acd12f304133cec8247015a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/GeneralCommutativeRingTheory/IdealMapsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [map](declarations/map.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [comap](declarations/comap.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_comap](declarations/coe-comap.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [comap_coe](declarations/comap-coe.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [map_coe](declarations/map-coe.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [map_mono](declarations/map-mono.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_map_of_mem](declarations/mem-map-of-mem.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [apply_coe_mem_map](declarations/apply-coe-mem-map.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_comap](declarations/mem-comap.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [comap_mono](declarations/comap-mono.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comap_ne_top](declarations/comap-ne-top.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [exists_ideal_comap_le_prime](declarations/exists-ideal-comap-le-prime.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_le_comap_of_inv_on](declarations/map-le-comap-of-inv-on.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comap_le_map_of_inv_on](declarations/comap-le-map-of-inv-on.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [map_le_comap_of_inverse](declarations/map-le-comap-of-inverse.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comap_le_map_of_inverse](declarations/comap-le-map-of-inverse.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [IsPrime.comap](declarations/isprime-comap.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_top](declarations/map-top.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comap_id](declarations/comap-id.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [comap_idₐ](declarations/comap-id-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_id](declarations/map-id.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [map_idₐ](declarations/map-id-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [comap_comap](declarations/comap-comap.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [comap_comapₐ](declarations/comap-comap-source-edition-2.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [map_map](declarations/map-map-source-edition-2.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [map_mapₐ](declarations/map-map.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_span](declarations/map-span.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_le_of_le_comap](declarations/map-le-of-le-comap.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [le_comap_of_map_le](declarations/le-comap-of-map-le.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [le_comap_map](declarations/le-comap-map.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [comap_top](declarations/comap-top.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comap_eq_top_iff](declarations/comap-eq-top-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [map_bot](declarations/map-bot.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ne_bot_of_map_ne_bot](declarations/ne-bot-of-map-ne-bot.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [map_comap_map](declarations/map-comap-map.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comap_map_comap](declarations/comap-map-comap.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_sup](declarations/map-sup.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [comap_inf](declarations/comap-inf.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [map_iSup](declarations/map-isup.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [comap_iInf](declarations/comap-iinf.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map_sSup](declarations/map-ssup.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comap_sInf](declarations/comap-sinf-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [comap_sInf'](declarations/comap-sinf.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [comap_isPrime](declarations/comap-isprime.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_inf_le](declarations/map-inf-le.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [le_comap_sup](declarations/le-comap-sup.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Ideal Maps Namespaced](declarations/element-smul-restrictscalars.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [smul_restrictScalars](declarations/smul-restrictscalars.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [smul_top_eq_map](declarations/smul-top-eq-map.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coe_restrictScalars](declarations/coe-restrictscalars.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [restrictScalars_mul](declarations/restrictscalars-mul.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [map_comap_of_surjective](declarations/map-comap-of-surjective.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [giMapComap](declarations/gimapcomap.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [map_surjective_of_surjective](declarations/map-surjective-of-surjective.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [comap_injective_of_surjective](declarations/comap-injective-of-surjective.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [map_sup_comap_of_surjective](declarations/map-sup-comap-of-surjective.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [map_iSup_comap_of_surjective](declarations/map-isup-comap-of-surjective.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [map_inf_comap_of_surjective](declarations/map-inf-comap-of-surjective.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [map_iInf_comap_of_surjective](declarations/map-iinf-comap-of-surjective.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mem_image_of_mem_map_of_surjective](declarations/mem-image-of-mem-map-of-surjective.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [mem_map_iff_of_surjective](declarations/mem-map-iff-of-surjective.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [le_map_of_comap_le_of_surjective](declarations/le-map-of-comap-le-of-surjective.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [map_comap_eq_self_of_equiv](declarations/map-comap-eq-self-of-equiv.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [map_eq_submodule_map](declarations/map-eq-submodule-map.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [IsMaximal.comap_piEvalRingHom](declarations/ismaximal-comap-pievalringhom.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [comap_le_comap_iff_of_surjective](declarations/comap-le-comap-iff-of-surjective.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [orderEmbeddingOfSurjective](declarations/orderembeddingofsurjective.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [map_eq_top_or_isMaximal_of_surjective](declarations/map-eq-top-or-ismaximal-of-surjective.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [comap_bot_le_of_injective](declarations/comap-bot-le-of-injective.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [comap_bot_of_injective](declarations/comap-bot-of-injective.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [map_of_equiv](declarations/map-of-equiv.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [comap_of_equiv](declarations/comap-of-equiv.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [map_comap_of_equiv](declarations/map-comap-of-equiv.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [comap_symm](declarations/comap-symm.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [map_symm](declarations/map-symm.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [symm_apply_mem_of_equiv_iff](declarations/symm-apply-mem-of-equiv-iff.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [apply_mem_of_equiv_iff](declarations/apply-mem-of-equiv-iff.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mem_map_of_equiv](declarations/mem-map-of-equiv.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [relIsoOfBijective](declarations/relisoofbijective.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [comap_le_iff_le_map](declarations/comap-le-iff-le-map.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [comap_map_of_bijective](declarations/comap-map-of-bijective.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [isMaximal_map_iff_of_bijective](declarations/ismaximal-map-iff-of-bijective.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [isMaximal_comap_iff_of_bijective](declarations/ismaximal-comap-iff-of-bijective.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [map_isMaximal_of_equiv](declarations/map-ismaximal-of-equiv.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [comap_isMaximal_of_equiv](declarations/comap-ismaximal-of-equiv.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [isMaximal_iff_of_bijective](declarations/ismaximal-iff-of-bijective.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [comap_map_of_surjective](declarations/comap-map-of-surjective.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [relIsoOfSurjective](declarations/relisoofsurjective.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [comap_isMaximal_of_surjective](declarations/comap-ismaximal-of-surjective.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [map_mul](declarations/map-mul.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [mapHom](declarations/maphom.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [map_pow](declarations/map-pow.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [comap_radical](declarations/comap-radical.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [IsRadical.comap](declarations/isradical-comap.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [map_radical_le](declarations/map-radical-le.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [le_comap_mul](declarations/le-comap-mul.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [le_comap_pow](declarations/le-comap-pow.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [disjoint_map_primeCompl_iff_comap_le](declarations/disjoint-map-primecompl-iff-comap-le.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [comap_map_eq_self_iff_of_isPrime](declarations/comap-map-eq-self-iff-of-isprime.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [ker](declarations/ker.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [mem_ker](declarations/mem-ker.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [ker_eq](declarations/ker-eq.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [ker_eq_comap_bot](declarations/ker-eq-comap-bot.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [comap_ker](declarations/comap-ker.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [one_notMem_ker](declarations/one-notmem-ker.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [ker_ne_top](declarations/ker-ne-top.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [Ideal Maps Namespaced](declarations/ker-ringhom.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [ker_rangeSRestrict](declarations/ker-rangesrestrict.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [ker_coe_equiv](declarations/ker-coe-equiv.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [ker_coe_toRingHom](declarations/ker-coe-toringhom.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [ker_equiv](declarations/ker-equiv.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [ker_equiv_comp](declarations/ker-equiv-comp.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [injective_iff_ker_eq_bot](declarations/injective-iff-ker-eq-bot.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [ker_eq_bot_iff_eq_zero](declarations/ker-eq-bot-iff-eq-zero.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [ker_comp_of_injective](declarations/ker-comp-of-injective.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Ideal Maps Namespaced](declarations/ker-coe-equiv-source-line-733-occurrence-2.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [sub_mem_ker_iff](declarations/sub-mem-ker-iff.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [ker_rangeRestrict](declarations/ker-rangerestrict.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [ker_isPrime](declarations/ker-isprime.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [ker_isMaximal_of_surjective](declarations/ker-ismaximal-of-surjective.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [Module.annihilator](declarations/module-annihilator.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Module.mem_annihilator](declarations/module-mem-annihilator.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [LinearMap.annihilator_le_of_injective](declarations/linearmap-annihilator-le-of-injective.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [LinearMap.annihilator_le_of_surjective](declarations/linearmap-annihilator-le-of-surjective.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [LinearEquiv.annihilator_eq](declarations/linearequiv-annihilator-eq.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [Module.comap_annihilator](declarations/module-comap-annihilator.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [Module.annihilator_eq_bot](declarations/module-annihilator-eq-bot.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [Module.annihilator_eq_top_iff](declarations/module-annihilator-eq-top-iff.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `abbrev` | [annihilator](declarations/annihilator.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [annihilator_top](declarations/annihilator-top.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [mem_annihilator](declarations/mem-annihilator-source-edition-2.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [annihilator_bot](declarations/annihilator-bot.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [annihilator_eq_top_iff](declarations/annihilator-eq-top-iff.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [annihilator_mono](declarations/annihilator-mono.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [annihilator_iSup](declarations/annihilator-isup.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [le_annihilator_iff](declarations/le-annihilator-iff.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [annihilator_smul](declarations/annihilator-smul.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [annihilator_mul](declarations/annihilator-mul.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [mem_annihilator'](declarations/mem-annihilator.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [mem_annihilator_span](declarations/mem-annihilator-span.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [mem_annihilator_span_singleton](declarations/mem-annihilator-span-singleton.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [annihilator_span](declarations/annihilator-span.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [annihilator_span_singleton](declarations/annihilator-span-singleton.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [mul_annihilator](declarations/mul-annihilator.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [map_eq_bot_iff_le_ker](declarations/map-eq-bot-iff-le-ker.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [ker_le_comap](declarations/ker-le-comap.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `instance` | [map_isPrime_of_equiv](declarations/map-isprime-of-equiv.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [map_eq_bot_iff_of_injective](declarations/map-eq-bot-iff-of-injective.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `lemma` | [comap_map_of_surjective'](declarations/comap-map-of-surjective-source-edition-2.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [map_sInf](declarations/map-sinf.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [map_isPrime_of_surjective](declarations/map-isprime-of-surjective.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [map_ne_bot_of_ne_bot](declarations/map-ne-bot-of-ne-bot.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [map_eq_iff_sup_ker_eq_of_surjective](declarations/map-eq-iff-sup-ker-eq-of-surjective.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [map_radical_of_surjective](declarations/map-radical-of-surjective.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [liftOfRightInverseAux](declarations/liftofrightinverseaux.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [liftOfRightInverseAux_comp_apply](declarations/liftofrightinverseaux-comp-apply.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [liftOfRightInverse](declarations/liftofrightinverse.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `abbrev` | [liftOfSurjective](declarations/liftofsurjective.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [liftOfRightInverse_comp_apply](declarations/liftofrightinverse-comp-apply.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [liftOfRightInverse_comp](declarations/liftofrightinverse-comp.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [eq_liftOfRightInverse](declarations/eq-liftofrightinverse.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `lemma` | [ker_coe](declarations/ker-coe.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `lemma` | [coe_ideal_map](declarations/coe-ideal-map.md) | 1104 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `lemma` | [comap_ker](declarations/comap-ker-source-edition-2.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [idealMap](declarations/idealmap.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [FaithfulSMul.ker_algebraMap_eq_bot](declarations/faithfulsmul-ker-algebramap-eq-bot.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1141 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a5a3db8d0e0245b40097e4424f8940e6180aa7c4249c76ece749fb701938277 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Maps/Variant1a9bed5409f1eb9c610eb05afccc23778b31ea46c0f0d0ca8d37bf1e338de002.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
