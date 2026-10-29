# Topology Order Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**207 observed declarations and anonymous commands**, 170 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Order/Variant2705ffc65ea519f775d4e9678578a2dbb18f096325f857c6267ac2bd83af86c5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8acdd3aee23b43330bc36aa8f7f1819a16a2a55`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologyOrderPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GenerateOpen](declarations/generateopen.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [generateFrom](declarations/generatefrom.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isOpen_generateFrom_of_mem](declarations/isopen-generatefrom-of-mem.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nhds_generateFrom](declarations/nhds-generatefrom.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [tendsto_nhds_generateFrom_iff](declarations/tendsto-nhds-generatefrom-iff.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mkOfNhds](declarations/mkofnhds.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nhds_mkOfNhds_of_hasBasis](declarations/nhds-mkofnhds-of-hasbasis.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nhds_mkOfNhds](declarations/nhds-mkofnhds.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [nhds_mkOfNhds_single](declarations/nhds-mkofnhds-single.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nhds_mkOfNhds_filterBasis](declarations/nhds-mkofnhds-filterbasis.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_def](declarations/le-def.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_generateFrom_iff_subset_isOpen](declarations/le-generatefrom-iff-subset-isopen.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [mkOfClosure](declarations/mkofclosure.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mkOfClosure_sets](declarations/mkofclosure-sets.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gc_generateFrom](declarations/gc-generatefrom.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [gciGenerateFrom](declarations/gcigeneratefrom.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [generateFrom_anti](declarations/generatefrom-anti.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [generateFrom_setOfPred_isOpen](declarations/generatefrom-setofpred-isopen.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [leftInverse_generateFrom](declarations/leftinverse-generatefrom.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [generateFrom_surjective](declarations/generatefrom-surjective.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [setOfPred_isOpen_injective](declarations/setofpred-isopen-injective.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsOpen.mono](declarations/isopen-mono.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsClosed.mono](declarations/isclosed-mono.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [closure.mono](declarations/closure-mono.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isOpen_implies_isOpen_iff](declarations/isopen-implies-isopen-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `class` | [IndiscreteTopology](declarations/indiscretetopology.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [NontrivialTopology](declarations/nontrivialtopology.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [TopologicalSpace.indiscrete_or_nontrivial](declarations/topologicalspace-indiscrete-or-nontrivial.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [TopologicalSpace.not_indiscrete_iff](declarations/topologicalspace-not-indiscrete-iff.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [TopologicalSpace.not_nontrivial_iff](declarations/topologicalspace-not-nontrivial-iff.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IndiscreteTopology.isOpen_iff](declarations/indiscretetopology-isopen-iff.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [TopologicalSpace.isOpen_top_iff](declarations/topologicalspace-isopen-top-iff.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IndiscreteTopology.isClosed_iff](declarations/indiscretetopology-isclosed-iff.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [dense_indiscrete](declarations/dense-indiscrete.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [closure_indiscrete](declarations/closure-indiscrete.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [continuous_of_indiscreteTopology](declarations/continuous-of-indiscretetopology.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `class` | [DiscreteTopology](declarations/discretetopology.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [discreteTopology_bot](declarations/discretetopology-bot.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isOpen_discrete](declarations/isopen-discrete.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isClosed_discrete](declarations/isclosed-discrete.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [closure_discrete](declarations/closure-discrete.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dense_discrete](declarations/dense-discrete.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [denseRange_discrete](declarations/denserange-discrete.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [continuous_of_discreteTopology](declarations/continuous-of-discretetopology.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [continuous_discrete_rng](declarations/continuous-discrete-rng.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [nhds_discrete](declarations/nhds-discrete.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mem_nhds_discrete](declarations/mem-nhds-discrete.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [le_of_nhds_le_nhds](declarations/le-of-nhds-le-nhds.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eq_bot_of_singletons_open](declarations/eq-bot-of-singletons-open.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [discreteTopology_iff_forall_isOpen](declarations/discretetopology-iff-forall-isopen.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [discreteTopology_iff_forall_isClosed](declarations/discretetopology-iff-forall-isclosed.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [discreteTopology_iff_isOpen_singleton](declarations/discretetopology-iff-isopen-singleton.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [DiscreteTopology.of_finite_of_isClosed_singleton](declarations/discretetopology-of-finite-of-isclosed-singleton.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [discreteTopology_iff_singleton_mem_nhds](declarations/discretetopology-iff-singleton-mem-nhds.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [discreteTopology_iff_nhds](declarations/discretetopology-iff-nhds.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [discreteTopology_iff_nhds_ne](declarations/discretetopology-iff-nhds-ne.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [DiscreteTopology.of_continuous_injective](declarations/discretetopology-of-continuous-injective.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isOpen_induced_iff](declarations/isopen-induced-iff.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isClosed_induced_iff](declarations/isclosed-induced-iff.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [isOpen_coinduced](declarations/isopen-coinduced.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isClosed_coinduced](declarations/isclosed-coinduced.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [preimage_nhds_coinduced](declarations/preimage-nhds-coinduced.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Continuous.coinduced_le](declarations/continuous-coinduced-le.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [coinduced_le_iff_le_induced](declarations/coinduced-le-iff-le-induced.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Continuous.le_induced](declarations/continuous-le-induced.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [gc_coinduced_induced](declarations/gc-coinduced-induced.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [induced_mono](declarations/induced-mono.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [coinduced_mono](declarations/coinduced-mono.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [induced_top](declarations/induced-top.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [induced_inf](declarations/induced-inf.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [induced_iInf](declarations/induced-iinf.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [induced_sInf](declarations/induced-sinf.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [coinduced_bot](declarations/coinduced-bot.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [coinduced_sup](declarations/coinduced-sup.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [coinduced_iSup](declarations/coinduced-isup.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [coinduced_sSup](declarations/coinduced-ssup.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [induced_id](declarations/induced-id.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [induced_fun_id](declarations/induced-fun-id.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [induced_compose](declarations/induced-compose.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [induced_const](declarations/induced-const.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [coinduced_id](declarations/coinduced-id.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [coinduced_compose](declarations/coinduced-compose.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Equiv.induced_symm](declarations/equiv-induced-symm.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Equiv.coinduced_symm](declarations/equiv-coinduced-symm.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [WithTopology.topology_eq_induced](declarations/withtopology-topology-eq-induced.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `instance` | [inhabitedTopologicalSpace](declarations/inhabitedtopologicalspace.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [Nontrivial.of_nontrivialTopology](declarations/nontrivial-of-nontrivialtopology.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [(anonymous)](declarations/instance.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `abbrev` | [WithDiscreteTopology](declarations/withdiscretetopology.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [WithTopology.nontrivialTopology_iff](declarations/withtopology-nontrivialtopology-iff.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [Nat.cast_continuous](declarations/nat-cast-continuous.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [Int.cast_continuous](declarations/int-cast-continuous.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [sierpinskiSpace](declarations/sierpinskispace.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [continuous_empty_function](declarations/continuous-empty-function.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [le_generateFrom](declarations/le-generatefrom.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [induced_generateFrom_eq](declarations/induced-generatefrom-eq.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [le_induced_generateFrom](declarations/le-induced-generatefrom.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [generateFrom_insert_of_generateOpen](declarations/generatefrom-insert-of-generateopen.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [generateFrom_insert_univ](declarations/generatefrom-insert-univ.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [generateFrom_insert_empty](declarations/generatefrom-insert-empty.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [nhdsAdjoint](declarations/nhdsadjoint.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [gc_nhds](declarations/gc-nhds.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [nhds_mono](declarations/nhds-mono.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [le_iff_nhds](declarations/le-iff-nhds.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [isOpen_singleton_nhdsAdjoint](declarations/isopen-singleton-nhdsadjoint.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [nhds_nhdsAdjoint_same](declarations/nhds-nhdsadjoint-same.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [nhds_nhdsAdjoint_of_ne](declarations/nhds-nhdsadjoint-of-ne.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [nhds_nhdsAdjoint](declarations/nhds-nhdsadjoint.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [le_nhdsAdjoint_iff'](declarations/le-nhdsadjoint-iff.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [le_nhdsAdjoint_iff](declarations/le-nhdsadjoint-iff-source-edition-2.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [nhds_iInf](declarations/nhds-iinf.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [nhds_sInf](declarations/nhds-sinf.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [nhds_inf](declarations/nhds-inf.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [nhds_top](declarations/nhds-top.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [isOpen_sup](declarations/isopen-sup.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [IndiscreteTopology.nhds_eq](declarations/indiscretetopology-nhds-eq.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [clusterPt_of_indiscreteTopology](declarations/clusterpt-of-indiscretetopology.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [Inseparable.all](declarations/inseparable-all.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [IndiscreteTopology.of_forall_inseparable](declarations/indiscretetopology-of-forall-inseparable.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [TopologicalSpace.indiscrete_iff_forall_inseparable](declarations/topologicalspace-indiscrete-iff-forall-inseparable.md) | 748 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [TopologicalSpace.nontrivial_iff_exists_not_inseparable](declarations/topologicalspace-nontrivial-iff-exists-not-inseparable.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [continuous_iff_coinduced_le](declarations/continuous-iff-coinduced-le.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [continuous_iff_le_induced](declarations/continuous-iff-le-induced.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [continuous_generateFrom_iff](declarations/continuous-generatefrom-iff.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [continuous_induced_dom](declarations/continuous-induced-dom.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [continuous_induced_rng](declarations/continuous-induced-rng.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [continuous_coinduced_rng](declarations/continuous-coinduced-rng.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [continuous_coinduced_dom](declarations/continuous-coinduced-dom.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [continuous_le_dom](declarations/continuous-le-dom.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [continuous_le_rng](declarations/continuous-le-rng.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [continuous_sup_dom](declarations/continuous-sup-dom.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [continuous_sup_rng_left](declarations/continuous-sup-rng-left.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [continuous_sup_rng_right](declarations/continuous-sup-rng-right.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [continuous_sSup_dom](declarations/continuous-ssup-dom.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [continuous_sSup_rng](declarations/continuous-ssup-rng.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [continuous_iSup_dom](declarations/continuous-isup-dom.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [continuous_iSup_rng](declarations/continuous-isup-rng.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [continuous_inf_rng](declarations/continuous-inf-rng.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [continuous_inf_dom_left](declarations/continuous-inf-dom-left.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [continuous_inf_dom_right](declarations/continuous-inf-dom-right.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [continuous_sInf_dom](declarations/continuous-sinf-dom.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [continuous_sInf_rng](declarations/continuous-sinf-rng.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [continuous_iInf_dom](declarations/continuous-iinf-dom.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [continuous_iInf_rng](declarations/continuous-iinf-rng.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [continuous_bot](declarations/continuous-bot.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [continuous_top](declarations/continuous-top.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [continuous_id_iff_le](declarations/continuous-id-iff-le.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [continuous_id_of_le](declarations/continuous-id-of-le.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [mem_nhds_induced](declarations/mem-nhds-induced.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [nhds_induced](declarations/nhds-induced.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [induced_iff_nhds_eq](declarations/induced-iff-nhds-eq.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [map_nhds_induced_of_surjective](declarations/map-nhds-induced-of-surjective.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [continuous_nhdsAdjoint_dom](declarations/continuous-nhdsadjoint-dom.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [coinduced_nhdsAdjoint](declarations/coinduced-nhdsadjoint.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [isOpen_induced_eq](declarations/isopen-induced-eq.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [isOpen_induced](declarations/isopen-induced.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [isClosed_induced](declarations/isclosed-induced.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [map_nhds_induced_eq](declarations/map-nhds-induced-eq.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [map_nhds_induced_of_mem](declarations/map-nhds-induced-of-mem.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [closure_induced](declarations/closure-induced.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [isClosed_induced_iff'](declarations/isclosed-induced-iff-source-edition-2.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [isOpen_singleton_true](declarations/isopen-singleton-true.md) | 949 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [nhds_true](declarations/nhds-true.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [nhds_false](declarations/nhds-false.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [tendsto_nhds_true](declarations/tendsto-nhds-true.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [tendsto_nhds_Prop](declarations/tendsto-nhds-prop.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [continuous_Prop](declarations/continuous-prop.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [isOpen_iff_continuous_mem](declarations/isopen-iff-continuous-mem.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [generateFrom_union](declarations/generatefrom-union.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [setOfPred_isOpen_sup](declarations/setofpred-isopen-sup.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [generateFrom_iUnion](declarations/generatefrom-iunion.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [setOfPred_isOpen_iSup](declarations/setofpred-isopen-isup.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [generateFrom_sUnion](declarations/generatefrom-sunion.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [setOfPred_isOpen_sSup](declarations/setofpred-isopen-ssup.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [generateFrom_union_isOpen](declarations/generatefrom-union-isopen.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [generateFrom_iUnion_isOpen](declarations/generatefrom-iunion-isopen.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [generateFrom_inter](declarations/generatefrom-inter.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [generateFrom_iInter](declarations/generatefrom-iinter.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [generateFrom_iInter_of_generateFrom_eq_self](declarations/generatefrom-iinter-of-generatefrom-eq-self.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [isOpen_iSup_iff](declarations/isopen-isup-iff.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [isOpen_sSup_iff](declarations/isopen-ssup-iff.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [isClosed_iSup_iff](declarations/isclosed-isup-iff.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [isClosed_sSup_iff](declarations/isclosed-ssup-iff.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39826c0fdd313b630b2637f1aeeb79d1094858a754d7a7f03c25bf99b93b3e1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Order/Variant2705ffc65ea519f775d4e9678578a2dbb18f096325f857c6267ac2bd83af86c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
