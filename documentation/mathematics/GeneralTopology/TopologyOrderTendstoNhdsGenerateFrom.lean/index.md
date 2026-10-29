# Topology Order Tendsto Nhds Generate From

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**164 observed declarations and anonymous commands**, 135 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `987652d85471476cee875bf94b5a36143a178e1e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologyOrderTendstoNhdsGenerateFrom.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GenerateOpen](declarations/generateopen.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [generateFrom](declarations/generatefrom.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isOpen_generateFrom_of_mem](declarations/isopen-generatefrom-of-mem.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nhds_generateFrom](declarations/nhds-generatefrom.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tendsto_nhds_generateFrom](declarations/tendsto-nhds-generatefrom.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mkOfNhds](declarations/mkofnhds.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nhds_mkOfNhds](declarations/nhds-mkofnhds.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nhds_mkOfNhds_single](declarations/nhds-mkofnhds-single.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nhds_mkOfNhds_filterBasis](declarations/nhds-mkofnhds-filterbasis.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [le_def](declarations/le-def.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_generateFrom_iff_subset_isOpen](declarations/le-generatefrom-iff-subset-isopen.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkOfClosure](declarations/mkofclosure.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mkOfClosure_sets](declarations/mkofclosure-sets.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [gc_generateFrom](declarations/gc-generatefrom.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [gciGenerateFrom](declarations/gcigeneratefrom.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [generateFrom_anti](declarations/generatefrom-anti.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [generateFrom_setOf_isOpen](declarations/generatefrom-setof-isopen.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leftInverse_generateFrom](declarations/leftinverse-generatefrom.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [generateFrom_surjective](declarations/generatefrom-surjective.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [setOf_isOpen_injective](declarations/setof-isopen-injective.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsOpen.mono](declarations/isopen-mono.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsClosed.mono](declarations/isclosed-mono.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [closure.mono](declarations/closure-mono.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isOpen_implies_isOpen_iff](declarations/isopen-implies-isopen-iff.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [TopologicalSpace.isOpen_top_iff](declarations/topologicalspace-isopen-top-iff.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `class` | [DiscreteTopology](declarations/discretetopology.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [discreteTopology_bot](declarations/discretetopology-bot.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isOpen_discrete](declarations/isopen-discrete.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isClosed_discrete](declarations/isclosed-discrete.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [closure_discrete](declarations/closure-discrete.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [dense_discrete](declarations/dense-discrete.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [denseRange_discrete](declarations/denserange-discrete.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [continuous_of_discreteTopology](declarations/continuous-of-discretetopology.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [nhds_discrete](declarations/nhds-discrete.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_nhds_discrete](declarations/mem-nhds-discrete.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [le_of_nhds_le_nhds](declarations/le-of-nhds-le-nhds.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [eq_of_nhds_eq_nhds](declarations/eq-of-nhds-eq-nhds.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [eq_bot_of_singletons_open](declarations/eq-bot-of-singletons-open.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [forall_open_iff_discrete](declarations/forall-open-iff-discrete.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [discreteTopology_iff_forall_isClosed](declarations/discretetopology-iff-forall-isclosed.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [singletons_open_iff_discrete](declarations/singletons-open-iff-discrete.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [discreteTopology_iff_singleton_mem_nhds](declarations/discretetopology-iff-singleton-mem-nhds.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [discreteTopology_iff_nhds](declarations/discretetopology-iff-nhds.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [discreteTopology_iff_nhds_ne](declarations/discretetopology-iff-nhds-ne.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [TopologicalSpace.induced](declarations/topologicalspace-induced.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isOpen_induced_iff](declarations/isopen-induced-iff.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [isClosed_induced_iff](declarations/isclosed-induced-iff-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [TopologicalSpace.coinduced](declarations/topologicalspace-coinduced.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isOpen_coinduced](declarations/isopen-coinduced.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [preimage_nhds_coinduced](declarations/preimage-nhds-coinduced.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Continuous.coinduced_le](declarations/continuous-coinduced-le.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coinduced_le_iff_le_induced](declarations/coinduced-le-iff-le-induced.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Continuous.le_induced](declarations/continuous-le-induced.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [gc_coinduced_induced](declarations/gc-coinduced-induced.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [induced_mono](declarations/induced-mono.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coinduced_mono](declarations/coinduced-mono.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [induced_top](declarations/induced-top.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [induced_inf](declarations/induced-inf.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [induced_iInf](declarations/induced-iinf.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [coinduced_bot](declarations/coinduced-bot.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [coinduced_sup](declarations/coinduced-sup.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [coinduced_iSup](declarations/coinduced-isup.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [induced_id](declarations/induced-id.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [induced_compose](declarations/induced-compose.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [induced_const](declarations/induced-const.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coinduced_id](declarations/coinduced-id.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [coinduced_compose](declarations/coinduced-compose.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Equiv.induced_symm](declarations/equiv-induced-symm.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Equiv.coinduced_symm](declarations/equiv-coinduced-symm.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [inhabitedTopologicalSpace](declarations/inhabitedtopologicalspace.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [sierpinskiSpace](declarations/sierpinskispace.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [continuous_empty_function](declarations/continuous-empty-function.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [le_generateFrom](declarations/le-generatefrom.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [induced_generateFrom_eq](declarations/induced-generatefrom-eq.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [le_induced_generateFrom](declarations/le-induced-generatefrom.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [nhdsAdjoint](declarations/nhdsadjoint.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [gc_nhds](declarations/gc-nhds.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [nhds_mono](declarations/nhds-mono.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [le_iff_nhds](declarations/le-iff-nhds.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [nhdsAdjoint_nhds](declarations/nhdsadjoint-nhds.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [nhdsAdjoint_nhds_of_ne](declarations/nhdsadjoint-nhds-of-ne.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [isOpen_singleton_nhdsAdjoint](declarations/isopen-singleton-nhdsadjoint.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [le_nhdsAdjoint_iff'](declarations/le-nhdsadjoint-iff-source-edition-2.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [le_nhdsAdjoint_iff](declarations/le-nhdsadjoint-iff.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [nhds_iInf](declarations/nhds-iinf.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [nhds_sInf](declarations/nhds-sinf.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [nhds_inf](declarations/nhds-inf.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [nhds_top](declarations/nhds-top.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [isOpen_sup](declarations/isopen-sup.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [continuous_iff_coinduced_le](declarations/continuous-iff-coinduced-le.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [continuous_iff_le_induced](declarations/continuous-iff-le-induced.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [continuous_generateFrom](declarations/continuous-generatefrom.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [continuous_induced_dom](declarations/continuous-induced-dom.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [continuous_induced_rng](declarations/continuous-induced-rng.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [continuous_coinduced_rng](declarations/continuous-coinduced-rng.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [continuous_coinduced_dom](declarations/continuous-coinduced-dom.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [continuous_le_dom](declarations/continuous-le-dom.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [continuous_le_rng](declarations/continuous-le-rng.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [continuous_sup_dom](declarations/continuous-sup-dom.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [continuous_sup_rng_left](declarations/continuous-sup-rng-left.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [continuous_sup_rng_right](declarations/continuous-sup-rng-right.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [continuous_sSup_dom](declarations/continuous-ssup-dom.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [continuous_sSup_rng](declarations/continuous-ssup-rng.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [continuous_iSup_dom](declarations/continuous-isup-dom.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [continuous_iSup_rng](declarations/continuous-isup-rng.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [continuous_inf_rng](declarations/continuous-inf-rng.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [continuous_inf_dom_left](declarations/continuous-inf-dom-left.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [continuous_inf_dom_right](declarations/continuous-inf-dom-right.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [continuous_sInf_dom](declarations/continuous-sinf-dom.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [continuous_sInf_rng](declarations/continuous-sinf-rng.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [continuous_iInf_dom](declarations/continuous-iinf-dom.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [continuous_iInf_rng](declarations/continuous-iinf-rng.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [continuous_bot](declarations/continuous-bot.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [continuous_top](declarations/continuous-top.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [continuous_id_iff_le](declarations/continuous-id-iff-le.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [continuous_id_of_le](declarations/continuous-id-of-le.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [mem_nhds_induced](declarations/mem-nhds-induced.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [nhds_induced](declarations/nhds-induced.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [induced_iff_nhds_eq](declarations/induced-iff-nhds-eq.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [map_nhds_induced_of_surjective](declarations/map-nhds-induced-of-surjective.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [isOpen_induced_eq](declarations/isopen-induced-eq.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [isOpen_induced](declarations/isopen-induced.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [map_nhds_induced_eq](declarations/map-nhds-induced-eq.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [map_nhds_induced_of_mem](declarations/map-nhds-induced-of-mem.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [closure_induced](declarations/closure-induced.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [isClosed_induced_iff'](declarations/isclosed-induced-iff.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [isOpen_singleton_true](declarations/isopen-singleton-true.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [nhds_true](declarations/nhds-true.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [nhds_false](declarations/nhds-false.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [tendsto_nhds_true](declarations/tendsto-nhds-true.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [tendsto_nhds_Prop](declarations/tendsto-nhds-prop.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [continuous_Prop](declarations/continuous-prop.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [isOpen_iff_continuous_mem](declarations/isopen-iff-continuous-mem.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [generateFrom_union](declarations/generatefrom-union.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [setOf_isOpen_sup](declarations/setof-isopen-sup.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [generateFrom_iUnion](declarations/generatefrom-iunion.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [setOf_isOpen_iSup](declarations/setof-isopen-isup.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [generateFrom_sUnion](declarations/generatefrom-sunion.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [setOf_isOpen_sSup](declarations/setof-isopen-ssup.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [generateFrom_union_isOpen](declarations/generatefrom-union-isopen.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [generateFrom_iUnion_isOpen](declarations/generatefrom-iunion-isopen.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [generateFrom_inter](declarations/generatefrom-inter.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [generateFrom_iInter](declarations/generatefrom-iinter.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [generateFrom_iInter_of_generateFrom_eq_self](declarations/generatefrom-iinter-of-generatefrom-eq-self.md) | 1004 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [isOpen_iSup_iff](declarations/isopen-isup-iff.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [isClosed_iSup_iff](declarations/isclosed-isup-iff.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10d46ddc456e0094d4984b23bd0a092eb4bc7c861c61e19a97b60ab310a46b3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
