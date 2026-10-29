# Subsemigroup Operations Namespaced Source Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**112 observed declarations and anonymous commands**, 86 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Operations/Variantfcc65b892c7ecc54502138eaa4350968881647e2498c0055e17252c98ed2722f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `141fe686bf2b472e0ca5dd77a70bda8b05f84183`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/SubsemigroupOperationsNamespacedSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Subsemigroup.toAddSubsemigroup](declarations/subsemigroup-toaddsubsemigroup-source-edition-2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [AddSubsemigroup.toSubsemigroup'](declarations/addsubsemigroup-tosubsemigroup.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Subsemigroup.toAddSubsemigroup_closure](declarations/subsemigroup-toaddsubsemigroup-closure.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [AddSubsemigroup.toSubsemigroup'_closure](declarations/addsubsemigroup-tosubsemigroup-closure.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [AddSubsemigroup.toSubsemigroup](declarations/addsubsemigroup-tosubsemigroup-source-edition-2.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Subsemigroup.toAddSubsemigroup'](declarations/subsemigroup-toaddsubsemigroup.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [AddSubsemigroup.toSubsemigroup_closure](declarations/addsubsemigroup-tosubsemigroup-closure-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Subsemigroup.toAddSubsemigroup'_closure](declarations/subsemigroup-toaddsubsemigroup-closure-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [comap](declarations/comap.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coe_comap](declarations/coe-comap.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_comap](declarations/mem-comap.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comap_comap](declarations/comap-comap.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comap_id](declarations/comap-id.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [map](declarations/map.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_map](declarations/coe-map.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_map](declarations/mem-map.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_map_of_mem](declarations/mem-map-of-mem.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [apply_coe_mem_map](declarations/apply-coe-mem-map.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_map](declarations/map-map.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_map_iff_mem](declarations/mem-map-iff-mem.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_le_iff_le_comap](declarations/map-le-iff-le-comap.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [gc_map_comap](declarations/gc-map-comap.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [map_le_of_le_comap](declarations/map-le-of-le-comap.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [le_comap_of_map_le](declarations/le-comap-of-map-le.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [le_comap_map](declarations/le-comap-map.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_comap_le](declarations/map-comap-le.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monotone_map](declarations/monotone-map.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [monotone_comap](declarations/monotone-comap.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_comap_map](declarations/map-comap-map.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [comap_map_comap](declarations/comap-map-comap.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_sup](declarations/map-sup.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_iSup](declarations/map-isup.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [comap_inf](declarations/comap-inf.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comap_iInf](declarations/comap-iinf.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [map_bot](declarations/map-bot.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comap_top](declarations/comap-top.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [map_id](declarations/map-id.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [gciMapComap](declarations/gcimapcomap.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [comap_map_eq_of_injective](declarations/comap-map-eq-of-injective.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comap_surjective_of_injective](declarations/comap-surjective-of-injective.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [map_injective_of_injective](declarations/map-injective-of-injective.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [comap_inf_map_of_injective](declarations/comap-inf-map-of-injective.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [comap_iInf_map_of_injective](declarations/comap-iinf-map-of-injective.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [comap_sup_map_of_injective](declarations/comap-sup-map-of-injective.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [comap_iSup_map_of_injective](declarations/comap-isup-map-of-injective.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [map_le_map_iff_of_injective](declarations/map-le-map-iff-of-injective.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_strictMono_of_injective](declarations/map-strictmono-of-injective.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [giMapComap](declarations/gimapcomap.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_comap_eq_of_surjective](declarations/map-comap-eq-of-surjective.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [map_surjective_of_surjective](declarations/map-surjective-of-surjective.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [comap_injective_of_surjective](declarations/comap-injective-of-surjective.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_inf_comap_of_surjective](declarations/map-inf-comap-of-surjective.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [map_iInf_comap_of_surjective](declarations/map-iinf-comap-of-surjective.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map_sup_comap_of_surjective](declarations/map-sup-comap-of-surjective.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [map_iSup_comap_of_surjective](declarations/map-isup-comap-of-surjective.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [comap_le_comap_iff_of_surjective](declarations/comap-le-comap-iff-of-surjective.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [comap_strictMono_of_surjective](declarations/comap-strictmono-of-surjective.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_mul](declarations/coe-mul.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mk_mul_mk](declarations/mk-mul-mk.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mul_def](declarations/mul-def.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [toSemigroup](declarations/tosemigroup.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [toCommSemigroup](declarations/tocommsemigroup.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [subtype](declarations/subtype.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [topEquiv](declarations/topequiv.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [topEquiv_toMulHom](declarations/topequiv-tomulhom.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [equivMapOfInjective](declarations/equivmapofinjective.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_equivMapOfInjective_apply](declarations/coe-equivmapofinjective-apply.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [closure_closure_coe_preimage](declarations/closure-closure-coe-preimage.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [prod](declarations/prod.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coe_prod](declarations/coe-prod.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_prod](declarations/mem-prod.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [prod_mono](declarations/prod-mono.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [prod_top](declarations/prod-top.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [top_prod](declarations/top-prod.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [top_prod_top](declarations/top-prod-top.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [bot_prod_bot](declarations/bot-prod-bot.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [prodEquiv](declarations/prodequiv.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [mem_map_equiv](declarations/mem-map-equiv.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [map_equiv_eq_comap_symm](declarations/map-equiv-eq-comap-symm.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [comap_equiv_eq_map_symm](declarations/comap-equiv-eq-map-symm.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [map_equiv_top](declarations/map-equiv-top.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [le_prod_iff](declarations/le-prod-iff.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [srange](declarations/srange.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [coe_srange](declarations/coe-srange.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [mem_srange](declarations/mem-srange.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [srange_eq_map](declarations/srange-eq-map.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [map_srange](declarations/map-srange.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [srange_top_iff_surjective](declarations/srange-top-iff-surjective.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [srange_top_of_surjective](declarations/srange-top-of-surjective.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [mclosure_preimage_le](declarations/mclosure-preimage-le.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [map_mclosure](declarations/map-mclosure.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [restrict](declarations/restrict.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [restrict_apply](declarations/restrict-apply.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [codRestrict](declarations/codrestrict.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [srangeRestrict](declarations/srangerestrict.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coe_srangeRestrict](declarations/coe-srangerestrict.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [srangeRestrict_surjective](declarations/srangerestrict-surjective.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [prod_map_comap_prod'](declarations/prod-map-comap-prod.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [subsemigroupComap](declarations/subsemigroupcomap.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [subsemigroupMap](declarations/subsemigroupmap.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [subsemigroupMap_surjective](declarations/subsemigroupmap-surjective.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [srange_fst](declarations/srange-fst.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [srange_snd](declarations/srange-snd.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [prod_eq_top_iff](declarations/prod-eq-top-iff.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [inclusion](declarations/inclusion.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [range_subtype](declarations/range-subtype.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [eq_top_iff'](declarations/eq-top-iff.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [subsemigroupCongr](declarations/subsemigroupcongr.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [ofLeftInverse](declarations/ofleftinverse.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [subsemigroupMap](declarations/subsemigroupmap-source-edition-2.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f18386f56e9e6fdc644a083ee88c3a55f1add59d570116cfa2c4c6e70f7419c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Operations/Variantfcc65b892c7ecc54502138eaa4350968881647e2498c0055e17252c98ed2722f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
