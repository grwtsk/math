# Clique Namespaced Not Is Clique Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**145 observed declarations and anonymous commands**, 123 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dc19580174aabe33fed24944c87b5ccf551fa74`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/CliqueNamespacedNotIsCliqueIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsClique](declarations/isclique.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isClique_iff](declarations/isclique-iff.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [not_isClique_iff](declarations/not-isclique-iff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isClique_iff_induce_eq](declarations/isclique-iff-induce-eq.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isClique_empty](declarations/isclique-empty.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isClique_singleton](declarations/isclique-singleton.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsClique.of_subsingleton](declarations/isclique-of-subsingleton.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isClique_pair](declarations/isclique-pair.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isClique_insert](declarations/isclique-insert-source-edition-2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isClique_insert_of_notMem](declarations/isclique-insert-of-notmem.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [IsClique.insert](declarations/isclique-insert.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsClique.mono](declarations/isclique-mono.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsClique.subset](declarations/isclique-subset.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isClique_bot_iff](declarations/isclique-bot-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsClique.map](declarations/isclique-map.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isClique_map_iff_of_nontrivial](declarations/isclique-map-iff-of-nontrivial.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isClique_map_iff](declarations/isclique-map-iff.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isClique_map_image_iff](declarations/isclique-map-image-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isClique_map_finset_iff_of_nontrivial](declarations/isclique-map-finset-iff-of-nontrivial.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isClique_map_finset_iff](declarations/isclique-map-finset-iff.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsClique.finsetMap](declarations/isclique-finsetmap.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsClique.of_induce](declarations/isclique-of-induce.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsClique.sdiff_of_sup_edge](declarations/isclique-sdiff-of-sup-edge.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isClique_sup_edge_of_ne_sdiff](declarations/isclique-sup-edge-of-ne-sdiff.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isClique_sup_edge_of_ne_iff](declarations/isclique-sup-edge-of-ne-iff.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [IsNClique](declarations/isnclique.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isNClique_iff](declarations/isnclique-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isNClique_empty](declarations/isnclique-empty.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isNClique_singleton](declarations/isnclique-singleton.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsNClique.mono](declarations/isnclique-mono.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsNClique.map](declarations/isnclique-map.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isNClique_map_iff](declarations/isnclique-map-iff.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isNClique_bot_iff](declarations/isnclique-bot-iff.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isNClique_zero](declarations/isnclique-zero.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isNClique_one](declarations/isnclique-one.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsNClique.insert](declarations/isnclique-insert.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsNClique.erase_of_mem](declarations/isnclique-erase-of-mem.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsNClique.insert_erase](declarations/isnclique-insert-erase.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [is3Clique_triple_iff](declarations/is3clique-triple-iff.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [is3Clique_iff](declarations/is3clique-iff.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [is3Clique_iff_exists_cycle_length_three](declarations/is3clique-iff-exists-cycle-length-three.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsNClique.of_induce](declarations/isnclique-of-induce.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [IsNClique.erase_of_sup_edge_of_mem](declarations/isnclique-erase-of-sup-edge-of-mem.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [CliqueFree](declarations/cliquefree.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsNClique.not_cliqueFree](declarations/isnclique-not-cliquefree.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_cliqueFree_of_top_embedding](declarations/not-cliquefree-of-top-embedding.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [topEmbeddingOfNotCliqueFree](declarations/topembeddingofnotcliquefree.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [not_cliqueFree_iff](declarations/not-cliquefree-iff.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [cliqueFree_iff](declarations/cliquefree-iff.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_cliqueFree_card_of_top_embedding](declarations/not-cliquefree-card-of-top-embedding.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [not_cliqueFree_zero](declarations/not-cliquefree-zero.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cliqueFree_bot](declarations/cliquefree-bot.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [CliqueFree.mono](declarations/cliquefree-mono.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [CliqueFree.anti](declarations/cliquefree-anti.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [CliqueFree.comap](declarations/cliquefree-comap.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [cliqueFree_map_iff](declarations/cliquefree-map-iff.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [cliqueFree_of_card_lt](declarations/cliquefree-of-card-lt.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [cliqueFree_completeMultipartiteGraph](declarations/cliquefree-completemultipartitegraph.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [topEmbedding](declarations/topembedding.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [not_cliqueFree_of_le_card](declarations/not-cliquefree-of-le-card.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [not_cliqueFree_of_infinite](declarations/not-cliquefree-of-infinite.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [not_cliqueFree_of_le_enatCard](declarations/not-cliquefree-of-le-enatcard.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [CliqueFree.replaceVertex](declarations/cliquefree-replacevertex.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [cliqueFree_one](declarations/cliquefree-one.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [cliqueFree_two](declarations/cliquefree-two.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [CliqueFree.mem_of_sup_edge_isNClique](declarations/cliquefree-mem-of-sup-edge-isnclique.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [CliqueFree.sup_edge](declarations/cliquefree-sup-edge.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [IsNClique.exists_not_adj_of_cliqueFree_succ](declarations/isnclique-exists-not-adj-of-cliquefree-succ.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [exists_of_maximal_cliqueFree_not_adj](declarations/exists-of-maximal-cliquefree-not-adj.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [CliqueFreeOn](declarations/cliquefreeon.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [CliqueFreeOn.subset](declarations/cliquefreeon-subset.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [CliqueFreeOn.mono](declarations/cliquefreeon-mono.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [CliqueFreeOn.anti](declarations/cliquefreeon-anti.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [cliqueFreeOn_empty](declarations/cliquefreeon-empty.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [cliqueFreeOn_singleton](declarations/cliquefreeon-singleton.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [cliqueFreeOn_univ](declarations/cliquefreeon-univ.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [CliqueFree.cliqueFreeOn](declarations/cliquefree-cliquefreeon.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [cliqueFreeOn_of_card_lt](declarations/cliquefreeon-of-card-lt.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [cliqueFreeOn_two](declarations/cliquefreeon-two.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [CliqueFreeOn.of_succ](declarations/cliquefreeon-of-succ.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [cliqueSet](declarations/cliqueset.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [mem_cliqueSet_iff](declarations/mem-cliqueset-iff.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [cliqueSet_eq_empty_iff](declarations/cliqueset-eq-empty-iff.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [cliqueSet_mono](declarations/cliqueset-mono.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [cliqueSet_mono'](declarations/cliqueset-mono-source-edition-2.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [cliqueSet_zero](declarations/cliqueset-zero.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [cliqueSet_one](declarations/cliqueset-one.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [cliqueSet_bot](declarations/cliqueset-bot.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [cliqueSet_map](declarations/cliqueset-map.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [cliqueSet_map_of_equiv](declarations/cliqueset-map-of-equiv.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [cliqueNum](declarations/cliquenum.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [fintype_cliqueNum_bddAbove](declarations/fintype-cliquenum-bddabove.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [IsClique.card_le_cliqueNum](declarations/isclique-card-le-cliquenum.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [exists_isNClique_cliqueNum](declarations/exists-isnclique-cliquenum.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `structure` | [IsMaximumClique](declarations/ismaximumclique.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [isMaximumClique_iff](declarations/ismaximumclique-iff.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [isMaximalClique_iff](declarations/ismaximalclique-iff.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [IsMaximumClique.isMaximalClique](declarations/ismaximumclique-ismaximalclique.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [maximumClique_card_eq_cliqueNum](declarations/maximumclique-card-eq-cliquenum.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [maximumClique_exists](declarations/maximumclique-exists.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [cliqueFinset](declarations/cliquefinset.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [mem_cliqueFinset_iff](declarations/mem-cliquefinset-iff.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [coe_cliqueFinset](declarations/coe-cliquefinset.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [cliqueFinset_eq_empty_iff](declarations/cliquefinset-eq-empty-iff.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [card_cliqueFinset_le](declarations/card-cliquefinset-le.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [cliqueFinset_mono](declarations/cliquefinset-mono.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [cliqueFinset_map](declarations/cliquefinset-map.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [cliqueFinset_map_of_equiv](declarations/cliquefinset-map-of-equiv.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `abbrev` | [IsIndepSet](declarations/isindepset.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [isIndepSet_iff](declarations/isindepset-iff.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [isClique_compl](declarations/isclique-compl.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [isIndepSet_compl](declarations/isindepset-compl.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [IsIndepSet.nonempty_mem_compl_mem_edge](declarations/isindepset-nonempty-mem-compl-mem-edge.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [isIndepSet_neighborSet_of_triangleFree](declarations/isindepset-neighborset-of-trianglefree.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [isIndepSet_induce](declarations/isindepset-induce.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `structure` | [IsNIndepSet](declarations/isnindepset.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [isNClique_compl](declarations/isnclique-compl.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [isNIndepSet_compl](declarations/isnindepset-compl.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [isNIndepSet_induce](declarations/isnindepset-induce.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [IndepSetFree](declarations/indepsetfree.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [cliqueFree_compl](declarations/cliquefree-compl.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [indepSetFree_compl](declarations/indepsetfree-compl.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [IndepSetFreeOn](declarations/indepsetfreeon.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [indepSetSet](declarations/indepsetset.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [mem_indepSetSet_iff](declarations/mem-indepsetset-iff.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [indepNum](declarations/indepnum.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `lemma` | [cliqueNum_compl](declarations/cliquenum-compl.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [indepNum_compl](declarations/indepnum-compl.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [IsIndepSet.card_le_indepNum](declarations/isindepset-card-le-indepnum.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [exists_isNIndepSet_indepNum](declarations/exists-isnindepset-indepnum.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `structure` | [IsMaximumIndepSet](declarations/ismaximumindepset.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [isMaximumClique_compl](declarations/ismaximumclique-compl.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [isMaximumIndepSet_compl](declarations/ismaximumindepset-compl.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [isMaximalIndepSet_iff](declarations/ismaximalindepset-iff.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [isMaximalClique_compl](declarations/ismaximalclique-compl.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [isMaximalIndepSet_compl](declarations/ismaximalindepset-compl.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [IsMaximumIndepSet.isMaximalIndepSet](declarations/ismaximumindepset-ismaximalindepset.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [maximumIndepSet_card_eq_indepNum](declarations/maximumindepset-card-eq-indepnum.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [maximumIndepSet_exists](declarations/maximumindepset-exists.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [indepSetFinset](declarations/indepsetfinset.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [mem_indepSetFinset_iff](declarations/mem-indepsetfinset-iff.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=289f09406d6f491f5dfbe49210040bd812871f95228e0c89aa3b0879289feff6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
