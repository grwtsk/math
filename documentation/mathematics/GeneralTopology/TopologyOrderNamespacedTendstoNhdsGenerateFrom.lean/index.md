# Topology Order Namespaced Tendsto Nhds Generate From

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**164 observed declarations and anonymous commands**, 135 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `136aa517e684d22a8f9f80eb74e71f4f42251704`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologyOrderNamespacedTendstoNhdsGenerateFrom.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GenerateOpen](declarations/generateopen.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [generateFrom](declarations/generatefrom.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isOpen_generateFrom_of_mem](declarations/isopen-generatefrom-of-mem.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nhds_generateFrom](declarations/nhds-generatefrom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tendsto_nhds_generateFrom](declarations/tendsto-nhds-generatefrom.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mkOfNhds](declarations/mkofnhds.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nhds_mkOfNhds](declarations/nhds-mkofnhds.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nhds_mkOfNhds_single](declarations/nhds-mkofnhds-single.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nhds_mkOfNhds_filterBasis](declarations/nhds-mkofnhds-filterbasis.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [le_def](declarations/le-def.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_generateFrom_iff_subset_isOpen](declarations/le-generatefrom-iff-subset-isopen.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkOfClosure](declarations/mkofclosure.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mkOfClosure_sets](declarations/mkofclosure-sets.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [gc_generateFrom](declarations/gc-generatefrom.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [gciGenerateFrom](declarations/gcigeneratefrom.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [generateFrom_anti](declarations/generatefrom-anti.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [generateFrom_setOf_isOpen](declarations/generatefrom-setof-isopen.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leftInverse_generateFrom](declarations/leftinverse-generatefrom.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [generateFrom_surjective](declarations/generatefrom-surjective.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [setOf_isOpen_injective](declarations/setof-isopen-injective.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsOpen.mono](declarations/isopen-mono.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsClosed.mono](declarations/isclosed-mono.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [closure.mono](declarations/closure-mono.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isOpen_implies_isOpen_iff](declarations/isopen-implies-isopen-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [TopologicalSpace.isOpen_top_iff](declarations/topologicalspace-isopen-top-iff.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `class` | [DiscreteTopology](declarations/discretetopology.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [discreteTopology_bot](declarations/discretetopology-bot.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isOpen_discrete](declarations/isopen-discrete.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isClosed_discrete](declarations/isclosed-discrete.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [closure_discrete](declarations/closure-discrete.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dense_discrete](declarations/dense-discrete.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [denseRange_discrete](declarations/denserange-discrete.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [continuous_of_discreteTopology](declarations/continuous-of-discretetopology.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nhds_discrete](declarations/nhds-discrete.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_nhds_discrete](declarations/mem-nhds-discrete.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [le_of_nhds_le_nhds](declarations/le-of-nhds-le-nhds.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [eq_of_nhds_eq_nhds](declarations/eq-of-nhds-eq-nhds.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [eq_bot_of_singletons_open](declarations/eq-bot-of-singletons-open.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [forall_open_iff_discrete](declarations/forall-open-iff-discrete.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [discreteTopology_iff_forall_isClosed](declarations/discretetopology-iff-forall-isclosed.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [singletons_open_iff_discrete](declarations/singletons-open-iff-discrete.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [discreteTopology_iff_singleton_mem_nhds](declarations/discretetopology-iff-singleton-mem-nhds.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [discreteTopology_iff_nhds](declarations/discretetopology-iff-nhds.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [discreteTopology_iff_nhds_ne](declarations/discretetopology-iff-nhds-ne.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [TopologicalSpace.induced](declarations/topologicalspace-induced.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isOpen_induced_iff](declarations/isopen-induced-iff.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isClosed_induced_iff](declarations/isclosed-induced-iff.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [TopologicalSpace.coinduced](declarations/topologicalspace-coinduced.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isOpen_coinduced](declarations/isopen-coinduced.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [preimage_nhds_coinduced](declarations/preimage-nhds-coinduced.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Continuous.coinduced_le](declarations/continuous-coinduced-le.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coinduced_le_iff_le_induced](declarations/coinduced-le-iff-le-induced.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Continuous.le_induced](declarations/continuous-le-induced.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [gc_coinduced_induced](declarations/gc-coinduced-induced.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [induced_mono](declarations/induced-mono.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coinduced_mono](declarations/coinduced-mono.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [induced_top](declarations/induced-top.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [induced_inf](declarations/induced-inf.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [induced_iInf](declarations/induced-iinf.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coinduced_bot](declarations/coinduced-bot.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coinduced_sup](declarations/coinduced-sup.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coinduced_iSup](declarations/coinduced-isup.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [induced_id](declarations/induced-id.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [induced_compose](declarations/induced-compose.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [induced_const](declarations/induced-const.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coinduced_id](declarations/coinduced-id.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coinduced_compose](declarations/coinduced-compose.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Equiv.induced_symm](declarations/equiv-induced-symm.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Equiv.coinduced_symm](declarations/equiv-coinduced-symm.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [inhabitedTopologicalSpace](declarations/inhabitedtopologicalspace.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [sierpinskiSpace](declarations/sierpinskispace.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [continuous_empty_function](declarations/continuous-empty-function.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [le_generateFrom](declarations/le-generatefrom.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [induced_generateFrom_eq](declarations/induced-generatefrom-eq.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [le_induced_generateFrom](declarations/le-induced-generatefrom.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [nhdsAdjoint](declarations/nhdsadjoint.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [gc_nhds](declarations/gc-nhds.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [nhds_mono](declarations/nhds-mono.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [le_iff_nhds](declarations/le-iff-nhds.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [nhdsAdjoint_nhds](declarations/nhdsadjoint-nhds.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [nhdsAdjoint_nhds_of_ne](declarations/nhdsadjoint-nhds-of-ne.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [isOpen_singleton_nhdsAdjoint](declarations/isopen-singleton-nhdsadjoint.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [le_nhdsAdjoint_iff'](declarations/le-nhdsadjoint-iff-source-edition-2.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [le_nhdsAdjoint_iff](declarations/le-nhdsadjoint-iff.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [nhds_iInf](declarations/nhds-iinf.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [nhds_sInf](declarations/nhds-sinf.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [nhds_inf](declarations/nhds-inf.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [nhds_top](declarations/nhds-top.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [isOpen_sup](declarations/isopen-sup.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [continuous_iff_coinduced_le](declarations/continuous-iff-coinduced-le.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [continuous_iff_le_induced](declarations/continuous-iff-le-induced.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [continuous_generateFrom](declarations/continuous-generatefrom.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [continuous_induced_dom](declarations/continuous-induced-dom.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [continuous_induced_rng](declarations/continuous-induced-rng.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [continuous_coinduced_rng](declarations/continuous-coinduced-rng.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [continuous_coinduced_dom](declarations/continuous-coinduced-dom.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [continuous_le_dom](declarations/continuous-le-dom.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [continuous_le_rng](declarations/continuous-le-rng.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [continuous_sup_dom](declarations/continuous-sup-dom.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [continuous_sup_rng_left](declarations/continuous-sup-rng-left.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [continuous_sup_rng_right](declarations/continuous-sup-rng-right.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [continuous_sSup_dom](declarations/continuous-ssup-dom.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [continuous_sSup_rng](declarations/continuous-ssup-rng.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [continuous_iSup_dom](declarations/continuous-isup-dom.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [continuous_iSup_rng](declarations/continuous-isup-rng.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [continuous_inf_rng](declarations/continuous-inf-rng.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [continuous_inf_dom_left](declarations/continuous-inf-dom-left.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [continuous_inf_dom_right](declarations/continuous-inf-dom-right.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [continuous_sInf_dom](declarations/continuous-sinf-dom.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [continuous_sInf_rng](declarations/continuous-sinf-rng.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [continuous_iInf_dom](declarations/continuous-iinf-dom.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [continuous_iInf_rng](declarations/continuous-iinf-rng.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [continuous_bot](declarations/continuous-bot.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [continuous_top](declarations/continuous-top.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [continuous_id_iff_le](declarations/continuous-id-iff-le.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [continuous_id_of_le](declarations/continuous-id-of-le.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [mem_nhds_induced](declarations/mem-nhds-induced.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [nhds_induced](declarations/nhds-induced.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [induced_iff_nhds_eq](declarations/induced-iff-nhds-eq.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [map_nhds_induced_of_surjective](declarations/map-nhds-induced-of-surjective.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [isOpen_induced_eq](declarations/isopen-induced-eq.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [isOpen_induced](declarations/isopen-induced.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [map_nhds_induced_eq](declarations/map-nhds-induced-eq.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [map_nhds_induced_of_mem](declarations/map-nhds-induced-of-mem.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [closure_induced](declarations/closure-induced.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [isClosed_induced_iff'](declarations/isclosed-induced-iff-source-edition-2.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [isOpen_singleton_true](declarations/isopen-singleton-true.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [nhds_true](declarations/nhds-true.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [nhds_false](declarations/nhds-false.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [tendsto_nhds_true](declarations/tendsto-nhds-true.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [tendsto_nhds_Prop](declarations/tendsto-nhds-prop.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [continuous_Prop](declarations/continuous-prop.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [isOpen_iff_continuous_mem](declarations/isopen-iff-continuous-mem.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [generateFrom_union](declarations/generatefrom-union.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [setOf_isOpen_sup](declarations/setof-isopen-sup.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [generateFrom_iUnion](declarations/generatefrom-iunion.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [setOf_isOpen_iSup](declarations/setof-isopen-isup.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [generateFrom_sUnion](declarations/generatefrom-sunion.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [setOf_isOpen_sSup](declarations/setof-isopen-ssup.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [generateFrom_union_isOpen](declarations/generatefrom-union-isopen.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [generateFrom_iUnion_isOpen](declarations/generatefrom-iunion-isopen.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [generateFrom_inter](declarations/generatefrom-inter.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [generateFrom_iInter](declarations/generatefrom-iinter.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [generateFrom_iInter_of_generateFrom_eq_self](declarations/generatefrom-iinter-of-generatefrom-eq-self.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [isOpen_iSup_iff](declarations/isopen-isup-iff.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [isClosed_iSup_iff](declarations/isclosed-isup-iff.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f77a7b2fcb169610a465c0bd80c8a231e11cb7cbadb2a3bb7967145a30a2e08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Order/Variant078c457f68fbb5ec628c61a0b8e4c3f8c5ed89d15c9db9940797cf11d341878c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
