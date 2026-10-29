# Topology Order Tendsto Nhds Generate From Iff

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**176 observed declarations and anonymous commands**, 149 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5bb7f454ae5677054c1bf642953a47e5a1a53560`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologyOrderTendstoNhdsGenerateFromIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GenerateOpen](declarations/generateopen.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [generateFrom](declarations/generatefrom.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isOpen_generateFrom_of_mem](declarations/isopen-generatefrom-of-mem.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nhds_generateFrom](declarations/nhds-generatefrom.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [tendsto_nhds_generateFrom_iff](declarations/tendsto-nhds-generatefrom-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mkOfNhds](declarations/mkofnhds.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nhds_mkOfNhds_of_hasBasis](declarations/nhds-mkofnhds-of-hasbasis.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nhds_mkOfNhds](declarations/nhds-mkofnhds.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nhds_mkOfNhds_single](declarations/nhds-mkofnhds-single.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nhds_mkOfNhds_filterBasis](declarations/nhds-mkofnhds-filterbasis.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_def](declarations/le-def.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_generateFrom_iff_subset_isOpen](declarations/le-generatefrom-iff-subset-isopen.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkOfClosure](declarations/mkofclosure.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mkOfClosure_sets](declarations/mkofclosure-sets.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gc_generateFrom](declarations/gc-generatefrom.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [gciGenerateFrom](declarations/gcigeneratefrom.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [generateFrom_anti](declarations/generatefrom-anti.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [generateFrom_setOf_isOpen](declarations/generatefrom-setof-isopen.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [leftInverse_generateFrom](declarations/leftinverse-generatefrom.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [generateFrom_surjective](declarations/generatefrom-surjective.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [setOf_isOpen_injective](declarations/setof-isopen-injective.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsOpen.mono](declarations/isopen-mono.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsClosed.mono](declarations/isclosed-mono.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [closure.mono](declarations/closure-mono.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isOpen_implies_isOpen_iff](declarations/isopen-implies-isopen-iff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [TopologicalSpace.isOpen_top_iff](declarations/topologicalspace-isopen-top-iff.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [DiscreteTopology](declarations/discretetopology.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [discreteTopology_bot](declarations/discretetopology-bot.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isOpen_discrete](declarations/isopen-discrete.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isClosed_discrete](declarations/isclosed-discrete.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [closure_discrete](declarations/closure-discrete.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [dense_discrete](declarations/dense-discrete.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [denseRange_discrete](declarations/denserange-discrete.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [continuous_of_discreteTopology](declarations/continuous-of-discretetopology.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [continuous_discrete_rng](declarations/continuous-discrete-rng.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [nhds_discrete](declarations/nhds-discrete.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mem_nhds_discrete](declarations/mem-nhds-discrete.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [le_of_nhds_le_nhds](declarations/le-of-nhds-le-nhds.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [eq_bot_of_singletons_open](declarations/eq-bot-of-singletons-open.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [forall_open_iff_discrete](declarations/forall-open-iff-discrete.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [discreteTopology_iff_forall_isClosed](declarations/discretetopology-iff-forall-isclosed.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [singletons_open_iff_discrete](declarations/singletons-open-iff-discrete.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [DiscreteTopology.of_finite_of_isClosed_singleton](declarations/discretetopology-of-finite-of-isclosed-singleton.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [discreteTopology_iff_singleton_mem_nhds](declarations/discretetopology-iff-singleton-mem-nhds.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [discreteTopology_iff_nhds](declarations/discretetopology-iff-nhds.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [discreteTopology_iff_nhds_ne](declarations/discretetopology-iff-nhds-ne.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [DiscreteTopology.of_continuous_injective](declarations/discretetopology-of-continuous-injective.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isOpen_induced_iff](declarations/isopen-induced-iff.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isClosed_induced_iff](declarations/isclosed-induced-iff-source-edition-2.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isOpen_coinduced](declarations/isopen-coinduced.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isClosed_coinduced](declarations/isclosed-coinduced.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [preimage_nhds_coinduced](declarations/preimage-nhds-coinduced.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Continuous.coinduced_le](declarations/continuous-coinduced-le.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coinduced_le_iff_le_induced](declarations/coinduced-le-iff-le-induced.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Continuous.le_induced](declarations/continuous-le-induced.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [gc_coinduced_induced](declarations/gc-coinduced-induced.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [induced_mono](declarations/induced-mono.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coinduced_mono](declarations/coinduced-mono.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [induced_top](declarations/induced-top.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [induced_inf](declarations/induced-inf.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [induced_iInf](declarations/induced-iinf.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [induced_sInf](declarations/induced-sinf.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [coinduced_bot](declarations/coinduced-bot.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [coinduced_sup](declarations/coinduced-sup.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coinduced_iSup](declarations/coinduced-isup.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [coinduced_sSup](declarations/coinduced-ssup.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [induced_id](declarations/induced-id.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [induced_compose](declarations/induced-compose.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [induced_const](declarations/induced-const.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [coinduced_id](declarations/coinduced-id.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [coinduced_compose](declarations/coinduced-compose.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Equiv.induced_symm](declarations/equiv-induced-symm.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Equiv.coinduced_symm](declarations/equiv-coinduced-symm.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [inhabitedTopologicalSpace](declarations/inhabitedtopologicalspace.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [sierpinskiSpace](declarations/sierpinskispace.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [continuous_empty_function](declarations/continuous-empty-function.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [le_generateFrom](declarations/le-generatefrom.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [induced_generateFrom_eq](declarations/induced-generatefrom-eq.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [le_induced_generateFrom](declarations/le-induced-generatefrom.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [generateFrom_insert_of_generateOpen](declarations/generatefrom-insert-of-generateopen.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [generateFrom_insert_univ](declarations/generatefrom-insert-univ.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [generateFrom_insert_empty](declarations/generatefrom-insert-empty.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [nhdsAdjoint](declarations/nhdsadjoint.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [gc_nhds](declarations/gc-nhds.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [nhds_mono](declarations/nhds-mono.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [le_iff_nhds](declarations/le-iff-nhds.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [isOpen_singleton_nhdsAdjoint](declarations/isopen-singleton-nhdsadjoint.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [nhds_nhdsAdjoint_same](declarations/nhds-nhdsadjoint-same.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [nhds_nhdsAdjoint_of_ne](declarations/nhds-nhdsadjoint-of-ne.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [nhds_nhdsAdjoint](declarations/nhds-nhdsadjoint.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [le_nhdsAdjoint_iff'](declarations/le-nhdsadjoint-iff-source-edition-2.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [le_nhdsAdjoint_iff](declarations/le-nhdsadjoint-iff.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [nhds_iInf](declarations/nhds-iinf.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [nhds_sInf](declarations/nhds-sinf.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [nhds_inf](declarations/nhds-inf.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [nhds_top](declarations/nhds-top.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [isOpen_sup](declarations/isopen-sup.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [continuous_iff_coinduced_le](declarations/continuous-iff-coinduced-le.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [continuous_iff_le_induced](declarations/continuous-iff-le-induced.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [continuous_generateFrom_iff](declarations/continuous-generatefrom-iff.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [continuous_induced_dom](declarations/continuous-induced-dom.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [continuous_induced_rng](declarations/continuous-induced-rng.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [continuous_coinduced_rng](declarations/continuous-coinduced-rng.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [continuous_coinduced_dom](declarations/continuous-coinduced-dom.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [continuous_le_dom](declarations/continuous-le-dom.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [continuous_le_rng](declarations/continuous-le-rng.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [continuous_sup_dom](declarations/continuous-sup-dom.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [continuous_sup_rng_left](declarations/continuous-sup-rng-left.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [continuous_sup_rng_right](declarations/continuous-sup-rng-right.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [continuous_sSup_dom](declarations/continuous-ssup-dom.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [continuous_sSup_rng](declarations/continuous-ssup-rng.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [continuous_iSup_dom](declarations/continuous-isup-dom.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [continuous_iSup_rng](declarations/continuous-isup-rng.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [continuous_inf_rng](declarations/continuous-inf-rng.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [continuous_inf_dom_left](declarations/continuous-inf-dom-left.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [continuous_inf_dom_right](declarations/continuous-inf-dom-right.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [continuous_sInf_dom](declarations/continuous-sinf-dom.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [continuous_sInf_rng](declarations/continuous-sinf-rng.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [continuous_iInf_dom](declarations/continuous-iinf-dom.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [continuous_iInf_rng](declarations/continuous-iinf-rng.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [continuous_bot](declarations/continuous-bot.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [continuous_top](declarations/continuous-top.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [continuous_id_iff_le](declarations/continuous-id-iff-le.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [continuous_id_of_le](declarations/continuous-id-of-le.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [mem_nhds_induced](declarations/mem-nhds-induced.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [nhds_induced](declarations/nhds-induced.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [induced_iff_nhds_eq](declarations/induced-iff-nhds-eq.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [map_nhds_induced_of_surjective](declarations/map-nhds-induced-of-surjective.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [continuous_nhdsAdjoint_dom](declarations/continuous-nhdsadjoint-dom.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [coinduced_nhdsAdjoint](declarations/coinduced-nhdsadjoint.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [isOpen_induced_eq](declarations/isopen-induced-eq.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [isOpen_induced](declarations/isopen-induced.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [map_nhds_induced_eq](declarations/map-nhds-induced-eq.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [map_nhds_induced_of_mem](declarations/map-nhds-induced-of-mem.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [closure_induced](declarations/closure-induced.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [isClosed_induced_iff'](declarations/isclosed-induced-iff.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [isOpen_singleton_true](declarations/isopen-singleton-true.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [nhds_true](declarations/nhds-true.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [nhds_false](declarations/nhds-false.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [tendsto_nhds_true](declarations/tendsto-nhds-true.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [tendsto_nhds_Prop](declarations/tendsto-nhds-prop.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [continuous_Prop](declarations/continuous-prop.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [isOpen_iff_continuous_mem](declarations/isopen-iff-continuous-mem.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [generateFrom_union](declarations/generatefrom-union.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [setOf_isOpen_sup](declarations/setof-isopen-sup.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [generateFrom_iUnion](declarations/generatefrom-iunion.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [setOf_isOpen_iSup](declarations/setof-isopen-isup.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [generateFrom_sUnion](declarations/generatefrom-sunion.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [setOf_isOpen_sSup](declarations/setof-isopen-ssup.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [generateFrom_union_isOpen](declarations/generatefrom-union-isopen.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [generateFrom_iUnion_isOpen](declarations/generatefrom-iunion-isopen.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [generateFrom_inter](declarations/generatefrom-inter.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [generateFrom_iInter](declarations/generatefrom-iinter.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [generateFrom_iInter_of_generateFrom_eq_self](declarations/generatefrom-iinter-of-generatefrom-eq-self.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [isOpen_iSup_iff](declarations/isopen-isup-iff.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [isOpen_sSup_iff](declarations/isopen-ssup-iff.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [isClosed_iSup_iff](declarations/isclosed-isup-iff.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [isClosed_sSup_iff](declarations/isclosed-ssup-iff.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd2b07970acdaa7b9e4bc8649eb8fb0fccaa7a738891f75198ed247c405be6f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Order/Variant6ece6355253475a79e358e301c1ed01df1f7642133e225a3fffe4bce349c1527.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
