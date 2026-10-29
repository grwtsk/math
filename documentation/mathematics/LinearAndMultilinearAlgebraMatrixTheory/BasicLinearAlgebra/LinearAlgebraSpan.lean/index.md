# Linear Algebra Span

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**130 observed declarations and anonymous commands**, 122 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6b4415b3be762e3b779b42c608e391ce93a9b2f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSpan.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [span](declarations/span.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_span](declarations/mem-span.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [subset_span](declarations/subset-span.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [span_le](declarations/span-le.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [span_mono](declarations/span-mono.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [span_monotone](declarations/span-monotone.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [span_eq_of_le](declarations/span-eq-of-le.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [span_eq](declarations/span-eq.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [span_eq_span](declarations/span-eq-span.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [span_coe_eq_restrictScalars](declarations/span-coe-eq-restrictscalars.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_span](declarations/map-span.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_span_le](declarations/map-span-le.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [span_insert_zero](declarations/span-insert-zero.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [span_preimage_le](declarations/span-preimage-le.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [closure_subset_span](declarations/closure-subset-span.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [closure_le_toAddSubmonoid_span](declarations/closure-le-toaddsubmonoid-span.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [span_closure](declarations/span-closure.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [span_induction](declarations/span-induction.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [span_induction₂](declarations/span-induction-source-edition-2.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [span_induction'](declarations/span-induction-source-edition-3.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [span_span_coe_preimage](declarations/span-span-coe-preimage.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [span_nat_eq_addSubmonoid_closure](declarations/span-nat-eq-addsubmonoid-closure.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [span_nat_eq](declarations/span-nat-eq.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [span_int_eq_addSubgroup_closure](declarations/span-int-eq-addsubgroup-closure.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [span_int_eq](declarations/span-int-eq.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [gi](declarations/gi.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [span_empty](declarations/span-empty.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [span_univ](declarations/span-univ.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [span_union](declarations/span-union.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [span_iUnion](declarations/span-iunion-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [span_iUnion₂](declarations/span-iunion.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [span_attach_biUnion](declarations/span-attach-biunion.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sup_span](declarations/sup-span.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [span_sup](declarations/span-sup.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [span_eq_iSup_of_singleton_spans](declarations/span-eq-isup-of-singleton-spans.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [span_range_eq_iSup](declarations/span-range-eq-isup.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [span_smul_le](declarations/span-smul-le.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [subset_span_trans](declarations/subset-span-trans.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [span_smul_eq_of_isUnit](declarations/span-smul-eq-of-isunit.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coe_iSup_of_directed](declarations/coe-isup-of-directed.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mem_iSup_of_directed](declarations/mem-isup-of-directed.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mem_sSup_of_directed](declarations/mem-ssup-of-directed.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coe_iSup_of_chain](declarations/coe-isup-of-chain.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coe_scott_continuous](declarations/coe-scott-continuous.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mem_iSup_of_chain](declarations/mem-isup-of-chain.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_sup](declarations/mem-sup-source-edition-2.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mem_sup'](declarations/mem-sup.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coe_sup](declarations/coe-sup.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [sup_toAddSubmonoid](declarations/sup-toaddsubmonoid.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sup_toAddSubgroup](declarations/sup-toaddsubgroup.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_span_singleton_self](declarations/mem-span-singleton-self.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [nontrivial_span_singleton](declarations/nontrivial-span-singleton.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_span_singleton](declarations/mem-span-singleton.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [le_span_singleton_iff](declarations/le-span-singleton-iff.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [span_singleton_eq_top_iff](declarations/span-singleton-eq-top-iff.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [span_zero_singleton](declarations/span-zero-singleton.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [span_singleton_eq_range](declarations/span-singleton-eq-range.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [span_singleton_smul_le](declarations/span-singleton-smul-le.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [span_singleton_group_smul_eq](declarations/span-singleton-group-smul-eq.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [span_singleton_smul_eq](declarations/span-singleton-smul-eq.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [disjoint_span_singleton](declarations/disjoint-span-singleton.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [disjoint_span_singleton'](declarations/disjoint-span-singleton-source-edition-2.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mem_span_singleton_trans](declarations/mem-span-singleton-trans.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [span_insert](declarations/span-insert.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [span_insert_eq_span](declarations/span-insert-eq-span.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [span_span](declarations/span-span.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [mem_span_insert](declarations/mem-span-insert-source-edition-2.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_span_pair](declarations/mem-span-pair.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [span_le_restrictScalars](declarations/span-le-restrictscalars.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [span_subset_span](declarations/span-subset-span.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [span_span_of_tower](declarations/span-span-of-tower.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [span_eq_bot](declarations/span-eq-bot.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [span_singleton_eq_bot](declarations/span-singleton-eq-bot.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [span_zero](declarations/span-zero.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [span_singleton_le_iff_mem](declarations/span-singleton-le-iff-mem.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [span_singleton_eq_span_singleton](declarations/span-singleton-eq-span-singleton.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [span_image](declarations/span-image.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [apply_mem_span_image_of_mem_span](declarations/apply-mem-span-image-of-mem-span.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [apply_mem_span_image_iff_mem_span](declarations/apply-mem-span-image-iff-mem-span.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [map_subtype_span_singleton](declarations/map-subtype-span-singleton.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [not_mem_span_of_apply_not_mem_span_image](declarations/not-mem-span-of-apply-not-mem-span-image.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [iSup_span](declarations/isup-span.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [iSup_eq_span](declarations/isup-eq-span.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [iSup_toAddSubmonoid](declarations/isup-toaddsubmonoid.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [iSup_induction](declarations/isup-induction-source-edition-2.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [iSup_induction'](declarations/isup-induction.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [singleton_span_isCompactElement](declarations/singleton-span-iscompactelement.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [finset_span_isCompactElement](declarations/finset-span-iscompactelement.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [finite_span_isCompactElement](declarations/finite-span-iscompactelement.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [submodule_eq_sSup_le_nonzero_spans](declarations/submodule-eq-ssup-le-nonzero-spans.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [lt_sup_iff_not_mem](declarations/lt-sup-iff-not-mem.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mem_iSup](declarations/mem-isup.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [mem_span_finite_of_mem_span](declarations/mem-span-finite-of-mem-span.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [prod](declarations/prod.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [prod_coe](declarations/prod-coe.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mem_prod](declarations/mem-prod.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [span_prod_le](declarations/span-prod-le.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [prod_top](declarations/prod-top.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [prod_bot](declarations/prod-bot.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [prod_mono](declarations/prod-mono.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [prod_inf_prod](declarations/prod-inf-prod.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [prod_sup_prod](declarations/prod-sup-prod.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [span_neg](declarations/span-neg.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mem_span_insert'](declarations/mem-span-insert.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [comap_map_eq](declarations/comap-map-eq.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [comap_map_eq_self](declarations/comap-map-eq-self.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [wcovby_span_singleton_sup](declarations/wcovby-span-singleton-sup.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [covby_span_singleton_sup](declarations/covby-span-singleton-sup.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [map_le_map_iff](declarations/map-le-map-iff-source-edition-2.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [map_le_map_iff'](declarations/map-le-map-iff.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [map_injective](declarations/map-injective.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [map_eq_top_iff](declarations/map-eq-top-iff.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [toSpanSingleton](declarations/tospansingleton.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [span_singleton_eq_range](declarations/span-singleton-eq-range-source-edition-2.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [toSpanSingleton_one](declarations/tospansingleton-one.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [toSpanSingleton_zero](declarations/tospansingleton-zero.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [eqOn_span_iff](declarations/eqon-span-iff.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [eqOn_span'](declarations/eqon-span-source-edition-2.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [eqOn_span](declarations/eqon-span.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [ext_on](declarations/ext-on.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [ext_on_range](declarations/ext-on-range.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [ker_toSpanSingleton](declarations/ker-tospansingleton.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [span_singleton_sup_ker_eq_top](declarations/span-singleton-sup-ker-eq-top.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [toSpanNonzeroSingleton](declarations/tospannonzerosingleton.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [toSpanNonzeroSingleton_one](declarations/tospannonzerosingleton-one.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `abbrev` | [coord](declarations/coord.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [coord_self](declarations/coord-self.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [coord_apply_smul](declarations/coord-apply-smul.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df7bdb64ea35f9ad54892ae41edbd28fc5bae365f30e6a30b22ad83cf6d1fc14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Span/Variantd68d0e973a4e14cbcee3673826d7ed657bd065122d75c7bc7739dd960f4b97de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
