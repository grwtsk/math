# Interval Finset Defs Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**130 observed declarations and anonymous commands**, 85 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant023c4216dc4c48cc0a97e5ceb876aa54e1db126b19097ee89c4d3b12059970a8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03a818648aa0d0ccc34298eb6f43d86e40412050`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/IntervalFinsetDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyFiniteOrder](declarations/locallyfiniteorder.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [LocallyFiniteOrder.mk'](declarations/locallyfiniteorder-mk.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [LocallyFiniteOrderTop](declarations/locallyfiniteordertop.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [LocallyFiniteOrderBot](declarations/locallyfiniteorderbot.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [LocallyFiniteOrder.ofIcc'](declarations/locallyfiniteorder-oficc.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [LocallyFiniteOrder.ofIcc](declarations/locallyfiniteorder-oficc-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [LocallyFiniteOrderTop.ofIci'](declarations/locallyfiniteordertop-ofici.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [LocallyFiniteOrderTop.ofIci](declarations/locallyfiniteordertop-ofici-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [IsEmpty.toLocallyFiniteOrder](declarations/isempty-tolocallyfiniteorder.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [IsEmpty.toLocallyFiniteOrderTop](declarations/isempty-tolocallyfiniteordertop.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Icc](declarations/icc.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Ico](declarations/ico.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Ioc](declarations/ioc.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Ioo](declarations/ioo.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_Icc](declarations/mem-icc.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_Ico](declarations/mem-ico-source-edition-2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_Ioc](declarations/mem-ioc.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_Ioo](declarations/mem-ioo.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mem_Icc'](declarations/mem-icc-source-edition-2.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mem_Ico'](declarations/mem-ico.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_Ioc'](declarations/mem-ioc-source-edition-2.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_Ioo'](declarations/mem-ioo-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_Icc](declarations/coe-icc.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coe_Ico](declarations/coe-ico.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_Ioo](declarations/coe-ioo.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [_root_.Fintype.card_Icc](declarations/root-fintype-card-icc.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [_root_.Fintype.card_Ico](declarations/root-fintype-card-ico.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [_root_.Fintype.card_Ioo](declarations/root-fintype-card-ioo.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Ici](declarations/ici.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Ioi](declarations/ioi.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_Ici](declarations/mem-ici.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_Ioi](declarations/mem-ioi.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_Ici](declarations/coe-ici.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coe_Ioi](declarations/coe-ioi.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [_root_.Fintype.card_Ici](declarations/root-fintype-card-ici.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.Fintype.card_Ioi](declarations/root-fintype-card-ioi.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Ici_one_eq_univ](declarations/ici-one-eq-univ.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Ici_eq_Icc](declarations/ici-eq-icc.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Ioi_eq_Ioc](declarations/ioi-eq-ioc.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [uIcc](declarations/uicc.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mem_uIcc](declarations/mem-uicc.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coe_uIcc](declarations/coe-uicc.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.Fintype.card_uIcc](declarations/root-fintype-card-uicc.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [elabFinsetBuilderIxx](declarations/elabfinsetbuilderixx.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instFintypeIcc](declarations/instfintypeicc.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [instFintypeIco](declarations/instfintypeico.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [instFintypeIoo](declarations/instfintypeioo.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [finite_Icc](declarations/finite-icc.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [finite_Ico](declarations/finite-ico.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [finite_Ioo](declarations/finite-ioo.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [instFintypeIci](declarations/instfintypeici.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [instFintypeIoi](declarations/instfintypeioi.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [finite_Ici](declarations/finite-ici.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [finite_Ioi](declarations/finite-ioi.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [fintypeUIcc](declarations/fintypeuicc.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [finite_uIcc](declarations/finite-uicc.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [LocallyFiniteOrder.ofFiniteIcc](declarations/locallyfiniteorder-offiniteicc.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [Fintype.toLocallyFiniteOrder](declarations/fintype-tolocallyfiniteorder.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [OrderEmbedding.locallyFiniteOrder](declarations/orderembedding-locallyfiniteorder.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [OrderDual.instLocallyFiniteOrder](declarations/orderdual-instlocallyfiniteorder.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [Finset.Icc_orderDual_def](declarations/finset-icc-orderdual-def.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [Finset.Ico_orderDual_def](declarations/finset-ico-orderdual-def.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [Finset.Ioo_orderDual_def](declarations/finset-ioo-orderdual-def.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [Finset.Icc_toDual](declarations/finset-icc-todual.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [Finset.Ico_toDual](declarations/finset-ico-todual.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [Finset.Ioo_toDual](declarations/finset-ioo-todual.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [Finset.Icc_ofDual](declarations/finset-icc-ofdual.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [Finset.Ico_ofDual](declarations/finset-ico-ofdual.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [Finset.Ioo_ofDual](declarations/finset-ioo-ofdual.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [OrderDual.instLocallyFiniteOrderBot](declarations/orderdual-instlocallyfiniteorderbot.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [Iic_orderDual_def](declarations/iic-orderdual-def.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [Iio_orderDual_def](declarations/iio-orderdual-def.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [Finset.Iic_toDual](declarations/finset-iic-todual.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [Finset.Iio_toDual](declarations/finset-iio-todual.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [Finset.Ici_ofDual](declarations/finset-ici-ofdual.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [Finset.Ioi_ofDual](declarations/finset-ioi-ofdual.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [Prod.instLocallyFiniteOrder](declarations/prod-instlocallyfiniteorder.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [Finset.Icc_prod_def](declarations/finset-icc-prod-def.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [Finset.Icc_product_Icc](declarations/finset-icc-product-icc.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [Finset.card_Icc_prod](declarations/finset-card-icc-prod.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [Prod.instLocallyFiniteOrderTop](declarations/prod-instlocallyfiniteordertop.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [Finset.Ici_prod_def](declarations/finset-ici-prod-def.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [Finset.Ici_product_Ici](declarations/finset-ici-product-ici.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [Finset.card_Ici_prod](declarations/finset-card-ici-prod.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [Finset.uIcc_prod_def](declarations/finset-uicc-prod-def.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [Finset.uIcc_product_uIcc](declarations/finset-uicc-product-uicc.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [Finset.card_uIcc_prod](declarations/finset-card-uicc-prod.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [insertTop](declarations/inserttop.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [some_mem_insertTop](declarations/some-mem-inserttop.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [top_mem_insertTop](declarations/top-mem-inserttop.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Icc_coe_top](declarations/icc-coe-top.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Icc_coe_coe](declarations/icc-coe-coe.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Ico_coe_top](declarations/ico-coe-top.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Ico_coe_coe](declarations/ico-coe-coe.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Ioc_coe_top](declarations/ioc-coe-top.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Ioc_coe_coe](declarations/ioc-coe-coe.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Ioo_coe_top](declarations/ioo-coe-top.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Ioo_coe_coe](declarations/ioo-coe-coe.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `abbrev` | [locallyFiniteOrder](declarations/locallyfiniteorder-source-edition-2.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `abbrev` | [locallyFiniteOrderTop](declarations/locallyfiniteordertop-source-edition-2.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [Subtype.instLocallyFiniteOrder](declarations/subtype-instlocallyfiniteorder.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [Subtype.instLocallyFiniteOrderTop](declarations/subtype-instlocallyfiniteordertop.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [subtype_Icc_eq](declarations/subtype-icc-eq.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [subtype_Ico_eq](declarations/subtype-ico-eq.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [subtype_Ioo_eq](declarations/subtype-ioo-eq.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [map_subtype_embedding_Icc](declarations/map-subtype-embedding-icc.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [map_subtype_embedding_Ico](declarations/map-subtype-embedding-ico.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [map_subtype_embedding_Ioc](declarations/map-subtype-embedding-ioc.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [map_subtype_embedding_Ioo](declarations/map-subtype-embedding-ioo.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [subtype_Ici_eq](declarations/subtype-ici-eq.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [subtype_Ioi_eq](declarations/subtype-ioi-eq.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [map_subtype_embedding_Ici](declarations/map-subtype-embedding-ici.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [map_subtype_embedding_Ioi](declarations/map-subtype-embedding-ioi.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [BddBelow.finite_of_bddAbove](declarations/bddbelow-finite-of-bddabove.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [Set.finite_iff_bddAbove](declarations/set-finite-iff-bddabove.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Set.finite_iff_bddBelow_bddAbove](declarations/set-finite-iff-bddbelow-bddabove.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `instance` | [(anonymous)](declarations/instance.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [toFinset_Icc](declarations/tofinset-icc.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [toFinset_Ico](declarations/tofinset-ico.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [toFinset_Ioo](declarations/tofinset-ioo.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `lemma` | [toFinset_Ici](declarations/tofinset-ici.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [toFinset_Ioi](declarations/tofinset-ioi.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `abbrev` | [LocallyFiniteOrder.ofOrderIsoClass](declarations/locallyfiniteorder-oforderisoclass.md) | 1126 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=733ce382aab6a4acd8e67331f088986f87ab2115b54b1bdf14a4945b9d6474a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant023c4216dc4c48cc0a97e5ceb876aa54e1db126b19097ee89c4d3b12059970a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
