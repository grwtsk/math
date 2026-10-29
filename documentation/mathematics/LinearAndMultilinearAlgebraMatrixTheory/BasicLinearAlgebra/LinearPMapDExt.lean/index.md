# Linear PMap DExt

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**136 observed declarations and anonymous commands**, 93 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `714240dc1f4aac388a5a0264cacd1d5d1f4d3f78`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapDExt.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearPMap](declarations/linearpmap.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toFun'](declarations/tofun.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dExt](declarations/dext.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_zero](declarations/map-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext_iff](declarations/ext-iff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dExt_iff](declarations/dext-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext'](declarations/ext.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_add](declarations/map-add.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_neg](declarations/map-neg.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_sub](declarations/map-sub.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_smul](declarations/map-smul.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk_apply](declarations/mk-apply.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mkSpanSingleton'](declarations/mkspansingleton-source-edition-2.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [domain_mkSpanSingleton](declarations/domain-mkspansingleton.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mkSpanSingleton'_apply](declarations/mkspansingleton-apply.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mkSpanSingleton'_apply_self](declarations/mkspansingleton-apply-self.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [mkSpanSingleton](declarations/mkspansingleton.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mkSpanSingleton_apply](declarations/mkspansingleton-apply-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fst](declarations/fst.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fst_apply](declarations/fst-apply.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [snd](declarations/snd.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [snd_apply](declarations/snd-apply.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [le](declarations/le.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [apply_comp_inclusion](declarations/apply-comp-inclusion.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exists_of_le](declarations/exists-of-le.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eq_of_le_of_domain_eq](declarations/eq-of-le-of-domain-eq.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [eqLocus](declarations/eqlocus.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [bot](declarations/bot.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [inhabited](declarations/inhabited.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [semilatticeInf](declarations/semilatticeinf.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [orderBot](declarations/orderbot.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [le_of_eqLocus_ge](declarations/le-of-eqlocus-ge.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [domain_mono](declarations/domain-mono.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sup_aux](declarations/sup-aux.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [sup](declarations/sup.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [domain_sup](declarations/domain-sup.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [sup_apply](declarations/sup-apply.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [left_le_sup](declarations/left-le-sup.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [right_le_sup](declarations/right-le-sup.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sup_le](declarations/sup-le.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sup_h_of_disjoint](declarations/sup-h-of-disjoint.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instZero](declarations/instzero.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [zero_domain](declarations/zero-domain.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [zero_apply](declarations/zero-apply.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [instSMul](declarations/instsmul.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [smul_domain](declarations/smul-domain.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [smul_apply](declarations/smul-apply.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coe_smul](declarations/coe-smul.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [instMulAction](declarations/instmulaction.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [instNeg](declarations/instneg.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [neg_domain](declarations/neg-domain.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [neg_apply](declarations/neg-apply.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [instInvolutiveNeg](declarations/instinvolutiveneg.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [instAdd](declarations/instadd.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [add_domain](declarations/add-domain.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [add_apply](declarations/add-apply.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [instAddSemigroup](declarations/instaddsemigroup.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [instAddZeroClass](declarations/instaddzeroclass.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [instVAdd](declarations/instvadd.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [vadd_domain](declarations/vadd-domain.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [vadd_apply](declarations/vadd-apply.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coe_vadd](declarations/coe-vadd.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [instAddAction](declarations/instaddaction.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [instSub](declarations/instsub.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [sub_domain](declarations/sub-domain.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sub_apply](declarations/sub-apply.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [instSubtractionCommMonoid](declarations/instsubtractioncommmonoid.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [supSpanSingleton](declarations/supspansingleton.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [domain_supSpanSingleton](declarations/domain-supspansingleton.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [supSpanSingleton_apply_mk](declarations/supspansingleton-apply-mk.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [supSpanSingleton_apply_smul_self](declarations/supspansingleton-apply-smul-self.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [supSpanSingleton_apply_self](declarations/supspansingleton-apply-self.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [supSpanSingleton_apply_of_mem](declarations/supspansingleton-apply-of-mem.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [supSpanSingleton_apply_mk_of_mem](declarations/supspansingleton-apply-mk-of-mem.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [sSup_aux](declarations/ssup-aux.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [sSup](declarations/ssup.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [le_sSup](declarations/le-ssup.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [sSup_le](declarations/ssup-le.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [sSup_apply](declarations/ssup-apply.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [toPMap](declarations/topmap.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [toPMap_apply](declarations/topmap-apply.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [toPMap_domain](declarations/topmap-domain.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [compPMap](declarations/comppmap.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [compPMap_apply](declarations/comppmap-apply.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [codRestrict](declarations/codrestrict.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [comp](declarations/comp.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [coprod](declarations/coprod.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [coprod_apply](declarations/coprod-apply.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [domRestrict](declarations/domrestrict.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [domRestrict_domain](declarations/domrestrict-domain.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [domRestrict_apply](declarations/domrestrict-apply.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [domRestrict_le](declarations/domrestrict-le.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [graph](declarations/graph.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [mem_graph_iff'](declarations/mem-graph-iff-source-edition-2.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [mem_graph_iff](declarations/mem-graph-iff.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mem_graph](declarations/mem-graph.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [graph_map_fst_eq_domain](declarations/graph-map-fst-eq-domain.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [graph_map_snd_eq_range](declarations/graph-map-snd-eq-range.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [smul_graph](declarations/smul-graph.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [neg_graph](declarations/neg-graph.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [mem_graph_snd_inj](declarations/mem-graph-snd-inj.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [mem_graph_snd_inj'](declarations/mem-graph-snd-inj-source-edition-2.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [graph_fst_eq_zero_snd](declarations/graph-fst-eq-zero-snd.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [mem_domain_iff](declarations/mem-domain-iff.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [mem_domain_of_mem_graph](declarations/mem-domain-of-mem-graph.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [image_iff](declarations/image-iff.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [mem_range_iff](declarations/mem-range-iff.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [mem_domain_iff_of_eq_graph](declarations/mem-domain-iff-of-eq-graph.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [le_of_le_graph](declarations/le-of-le-graph.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [le_graph_of_le](declarations/le-graph-of-le.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [le_graph_iff](declarations/le-graph-iff.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [eq_of_eq_graph](declarations/eq-of-eq-graph.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [existsUnique_from_graph](declarations/existsunique-from-graph.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [valFromGraph](declarations/valfromgraph.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [valFromGraph_mem](declarations/valfromgraph-mem.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [toLinearPMapAux](declarations/tolinearpmapaux.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [toLinearPMap](declarations/tolinearpmap.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [toLinearPMap_domain](declarations/tolinearpmap-domain.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [toLinearPMap_apply_aux](declarations/tolinearpmap-apply-aux.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [mem_graph_toLinearPMap](declarations/mem-graph-tolinearpmap.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [toLinearPMap_graph_eq](declarations/tolinearpmap-graph-eq.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [toLinearPMap_range](declarations/tolinearpmap-range.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [inverse](declarations/inverse.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [inverse_domain](declarations/inverse-domain.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [mem_inverse_graph_snd_eq_zero](declarations/mem-inverse-graph-snd-eq-zero.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [inverse_graph](declarations/inverse-graph.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [inverse_range](declarations/inverse-range.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [mem_inverse_graph](declarations/mem-inverse-graph.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [inverse_apply_eq](declarations/inverse-apply-eq.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9d7292622632fbe2f967a43e245e2dc5cf19b74a68f248938477b4782cb2b87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variant45aab8dc64782b0e3b098d0e1ed9a4b4d4ca286efab2ebec07eed7fec50b3d50.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
