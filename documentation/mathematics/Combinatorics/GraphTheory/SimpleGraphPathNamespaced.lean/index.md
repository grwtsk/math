# Simple Graph Path Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**208 observed declarations and anonymous commands**, 178 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `550ea2a70d013bce47ef461a3e3ba0fc60361346`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsTrail](declarations/istrail-source-edition-2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsPath](declarations/ispath.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsPath.isTrail](declarations/ispath-istrail.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [IsCircuit](declarations/iscircuit.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsCircuit.isTrail](declarations/iscircuit-istrail.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [IsCycle](declarations/iscycle.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsCycle.isCircuit](declarations/iscycle-iscircuit.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isTrail_copy](declarations/istrail-copy.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsPath.mk'](declarations/ispath-mk.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isPath_def](declarations/ispath-def.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isPath_copy](declarations/ispath-copy.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isCircuit_copy](declarations/iscircuit-copy.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsCircuit.not_nil](declarations/iscircuit-not-nil.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isCycle_def](declarations/iscycle-def.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isCycle_copy](declarations/iscycle-copy.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsCycle.not_nil](declarations/iscycle-not-nil.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsTrail.nil](declarations/istrail-nil.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsTrail.of_cons](declarations/istrail-of-cons.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cons_isTrail_iff](declarations/cons-istrail-iff.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsTrail.reverse](declarations/istrail-reverse.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reverse_isTrail_iff](declarations/reverse-istrail-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsTrail.of_append_left](declarations/istrail-of-append-left.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsTrail.of_append_right](declarations/istrail-of-append-right.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsTrail.count_edges_le_one](declarations/istrail-count-edges-le-one.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsTrail.count_edges_eq_one](declarations/istrail-count-edges-eq-one.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsTrail.length_le_card_edgeFinset](declarations/istrail-length-le-card-edgefinset.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsPath.nil](declarations/ispath-nil.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsPath.of_cons](declarations/ispath-of-cons.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cons_isPath_iff](declarations/cons-ispath-iff.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsPath.cons](declarations/ispath-cons.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isPath_iff_eq_nil](declarations/ispath-iff-eq-nil.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsPath.reverse](declarations/ispath-reverse.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isPath_reverse_iff](declarations/ispath-reverse-iff.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsPath.of_append_left](declarations/ispath-of-append-left.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsPath.of_append_right](declarations/ispath-of-append-right.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsPath.of_adj](declarations/ispath-of-adj.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsCycle.not_of_nil](declarations/iscycle-not-of-nil.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsCycle.ne_bot](declarations/iscycle-ne-bot.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsCycle.three_le_length](declarations/iscycle-three-le-length.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [not_nil_of_isCycle_cons](declarations/not-nil-of-iscycle-cons.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cons_isCycle_iff](declarations/cons-iscycle-iff.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [IsCycle.reverse](declarations/iscycle-reverse.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isCycle_reverse](declarations/iscycle-reverse-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [IsCycle.isPath_of_append_right](declarations/iscycle-ispath-of-append-right.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [IsCycle.isPath_of_append_left](declarations/iscycle-ispath-of-append-left.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [IsPath.tail](declarations/ispath-tail.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsPath.length_lt](declarations/ispath-length-lt.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [IsPath.getVert_injOn](declarations/ispath-getvert-injon.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [IsPath.getVert_eq_start_iff](declarations/ispath-getvert-eq-start-iff.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [IsPath.getVert_eq_end_iff](declarations/ispath-getvert-eq-end-iff.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [IsPath.getVert_injOn_iff](declarations/ispath-getvert-injon-iff.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [IsCycle.getVert_injOn](declarations/iscycle-getvert-injon.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [IsCycle.getVert_injOn'](declarations/iscycle-getvert-injon-source-edition-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [IsCycle.snd_ne_penultimate](declarations/iscycle-snd-ne-penultimate.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [IsCycle.getVert_endpoint_iff](declarations/iscycle-getvert-endpoint-iff.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [IsCycle.getVert_sub_one_ne_getVert_add_one](declarations/iscycle-getvert-sub-one-ne-getvert-add-one.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsTrail.takeUntil](declarations/istrail-takeuntil.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsTrail.dropUntil](declarations/istrail-dropuntil.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsPath.takeUntil](declarations/ispath-takeuntil.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsPath.dropUntil](declarations/ispath-dropuntil.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsTrail.rotate](declarations/istrail-rotate.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsCircuit.rotate](declarations/iscircuit-rotate.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsCycle.rotate](declarations/iscycle-rotate.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [IsCycle.isPath_takeUntil](declarations/iscycle-ispath-takeuntil.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [endpoint_notMem_support_takeUntil](declarations/endpoint-notmem-support-takeuntil.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [Path](declarations/path.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isPath](declarations/ispath-source-edition-2.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [isTrail](declarations/istrail.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [nil](declarations/nil.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [singleton](declarations/singleton.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mk'_mem_edges_singleton](declarations/mk-mem-edges-singleton.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [reverse](declarations/reverse.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [count_support_eq_one](declarations/count-support-eq-one.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [count_edges_eq_one](declarations/count-edges-eq-one.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [nodup_support](declarations/nodup-support.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [loop_eq](declarations/loop-eq.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [notMem_edges_of_loop](declarations/notmem-edges-of-loop.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [cons_isCycle](declarations/cons-iscycle.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [bypass](declarations/bypass.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [bypass_copy](declarations/bypass-copy.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [bypass_isPath](declarations/bypass-ispath.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [length_bypass_le](declarations/length-bypass-le.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [bypass_eq_self_of_length_le](declarations/bypass-eq-self-of-length-le.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [toPath](declarations/topath.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [support_bypass_subset](declarations/support-bypass-subset.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [support_toPath_subset](declarations/support-topath-subset.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [darts_bypass_subset](declarations/darts-bypass-subset.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [edges_bypass_subset](declarations/edges-bypass-subset.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [darts_toPath_subset](declarations/darts-topath-subset.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [edges_toPath_subset](declarations/edges-topath-subset.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [map_isPath_of_injective](declarations/map-ispath-of-injective.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [IsPath.of_map](declarations/ispath-of-map.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [map_isPath_iff_of_injective](declarations/map-ispath-iff-of-injective.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [map_isTrail_iff_of_injective](declarations/map-istrail-iff-of-injective.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [map_isCycle_iff_of_injective](declarations/map-iscycle-iff-of-injective.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mapLe_isTrail](declarations/maple-istrail.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mapLe_isPath](declarations/maple-ispath.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [mapLe_isCycle](declarations/maple-iscycle.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [map](declarations/map-source-edition-2.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [map_injective](declarations/map-injective.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [mapEmbedding](declarations/mapembedding.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mapEmbedding_injective](declarations/mapembedding-injective.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [IsPath.transfer](declarations/ispath-transfer.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [IsCycle.transfer](declarations/iscycle-transfer.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [IsPath.toDeleteEdges](declarations/ispath-todeleteedges.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [IsCycle.toDeleteEdges](declarations/iscycle-todeleteedges.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [toDeleteEdges_copy](declarations/todeleteedges-copy.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [Reachable](declarations/reachable.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [reachable_iff_nonempty_univ](declarations/reachable-iff-nonempty-univ.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [not_reachable_iff_isEmpty_walk](declarations/not-reachable-iff-isempty-walk.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Reachable.elim](declarations/reachable-elim.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Reachable.elim_path](declarations/reachable-elim-path.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Walk.reachable](declarations/walk-reachable.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Adj.reachable](declarations/adj-reachable.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Reachable.refl](declarations/reachable-refl.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Reachable.rfl](declarations/reachable-rfl.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Reachable.symm](declarations/reachable-symm.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [reachable_comm](declarations/reachable-comm.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Reachable.trans](declarations/reachable-trans.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [reachable_iff_reflTransGen](declarations/reachable-iff-refltransgen.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Reachable.map](declarations/reachable-map.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [Reachable.mono](declarations/reachable-mono.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Reachable.exists_isPath](declarations/reachable-exists-ispath.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Iso.reachable_iff](declarations/iso-reachable-iff.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Iso.symm_apply_reachable](declarations/iso-symm-apply-reachable.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [Reachable.mem_subgraphVerts](declarations/reachable-mem-subgraphverts.md) | 895 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [reachable_is_equivalence](declarations/reachable-is-equivalence.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [reachable_bot](declarations/reachable-bot.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [reachableSetoid](declarations/reachablesetoid.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [Preconnected](declarations/preconnected.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Preconnected.map](declarations/preconnected-map.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [Preconnected.mono](declarations/preconnected-mono.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [bot_preconnected_iff_subsingleton](declarations/bot-preconnected-iff-subsingleton.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [bot_preconnected](declarations/bot-preconnected.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [bot_not_preconnected](declarations/bot-not-preconnected.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [top_preconnected](declarations/top-preconnected.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Iso.preconnected_iff](declarations/iso-preconnected-iff.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [Preconnected.support_eq_univ](declarations/preconnected-support-eq-univ.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [adj_of_mem_walk_support](declarations/adj-of-mem-walk-support.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [mem_support_of_mem_walk_support](declarations/mem-support-of-mem-walk-support.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [mem_support_of_reachable](declarations/mem-support-of-reachable.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [Preconnected.exists_isPath](declarations/preconnected-exists-ispath.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `structure` | [Connected](declarations/connected.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [connected_iff_exists_forall_reachable](declarations/connected-iff-exists-forall-reachable.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [Connected.map](declarations/connected-map.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [Connected.mono](declarations/connected-mono.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [Connected.exists_isPath](declarations/connected-exists-ispath.md) | 1032 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [bot_not_connected](declarations/bot-not-connected.md) | 1036 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [top_connected](declarations/top-connected.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Iso.connected_iff](declarations/iso-connected-iff.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [ConnectedComponent](declarations/connectedcomponent.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [connectedComponentMk](declarations/connectedcomponentmk.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `instance` | [inhabited](declarations/inhabited.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `instance` | [isEmpty](declarations/isempty.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [ind](declarations/ind-source-edition-2.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [ind₂](declarations/ind.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [sound](declarations/sound.md) | 1078 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [exact](declarations/exact.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [eq](declarations/eq.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [connectedComponentMk_eq_of_adj](declarations/connectedcomponentmk-eq-of-adj.md) | 1091 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [lift](declarations/lift.md) | 1097 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [lift_mk](declarations/lift-mk.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [«exists»](declarations/exists.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [«forall»](declarations/forall.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [Simple Graph Path Namespaced](declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-istrail-vari.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [recOn](declarations/recon.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `def` | [map](declarations/map.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [map_mk](declarations/map-mk.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [map_id](declarations/map-id.md) | 1143 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [map_comp](declarations/map-comp.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [iso_image_comp_eq_map_iff_eq_comp](declarations/iso-image-comp-eq-map-iff-eq-comp.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [iso_inv_image_comp_eq_iff_eq_map](declarations/iso-inv-image-comp-eq-iff-eq-map.md) | 1163 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [connectedComponentEquiv](declarations/connectedcomponentequiv.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [connectedComponentEquiv_refl](declarations/connectedcomponentequiv-refl.md) | 1184 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [connectedComponentEquiv_symm](declarations/connectedcomponentequiv-symm.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [connectedComponentEquiv_trans](declarations/connectedcomponentequiv-trans.md) | 1196 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [supp](declarations/supp.md) | 1207 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [supp_injective](declarations/supp-injective.md) | 1211 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [supp_inj](declarations/supp-inj.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1223 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [mem_supp_iff](declarations/mem-supp-iff.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `lemma` | [mem_supp_congr_adj](declarations/mem-supp-congr-adj.md) | 1232 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `lemma` | [adj_spanningCoe_induce_supp](declarations/adj-spanningcoe-induce-supp.md) | 1239 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [connectedComponentMk_mem](declarations/connectedcomponentmk-mem.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [nonempty_supp](declarations/nonempty-supp.md) | 1251 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `def` | [isoEquivSupp](declarations/isoequivsupp.md) | 1256 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `lemma` | [mem_coe_supp_of_adj](declarations/mem-coe-supp-of-adj.md) | 1263 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `lemma` | [eq_of_common_vertex](declarations/eq-of-common-vertex.md) | 1271 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `lemma` | [connectedComponentMk_supp_subset_supp](declarations/connectedcomponentmk-supp-subset-supp.md) | 1277 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `lemma` | [biUnion_supp_eq_supp](declarations/biunion-supp-eq-supp.md) | 1284 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `lemma` | [top_supp_eq_univ](declarations/top-supp-eq-univ.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `lemma` | [reachable_induce_supp](declarations/reachable-induce-supp.md) | 1302 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `lemma` | [connected_induce_supp](declarations/connected-induce-supp.md) | 1312 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `lemma` | [pairwise_disjoint_supp_connectedComponent](declarations/pairwise-disjoint-supp-connectedcomponent.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `lemma` | [iUnion_connectedComponentSupp](declarations/iunion-connectedcomponentsupp.md) | 1334 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [Preconnected.set_univ_walk_nonempty](declarations/preconnected-set-univ-walk-nonempty.md) | 1340 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [Connected.set_univ_walk_nonempty](declarations/connected-set-univ-walk-nonempty.md) | 1345 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `def` | [IsBridge](declarations/isbridge.md) | 1355 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [isBridge_iff](declarations/isbridge-iff.md) | 1359 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [reachable_delete_edges_iff_exists_walk](declarations/reachable-delete-edges-iff-exists-walk.md) | 1362 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [isBridge_iff_adj_and_forall_walk_mem_edges](declarations/isbridge-iff-adj-and-forall-walk-mem-edges.md) | 1376 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [reachable_deleteEdges_iff_exists_cycle.aux](declarations/reachable-deleteedges-iff-exists-cycle-aux.md) | 1381 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [adj_and_reachable_delete_edges_iff_exists_cycle](declarations/adj-and-reachable-delete-edges-iff-exists-cycle.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [isBridge_iff_adj_and_forall_cycle_notMem](declarations/isbridge-iff-adj-and-forall-cycle-notmem.md) | 1431 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [isBridge_iff_mem_and_forall_cycle_notMem](declarations/isbridge-iff-mem-and-forall-cycle-notmem.md) | 1443 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `lemma` | [Connected.connected_delete_edge_of_not_isBridge](declarations/connected-connected-delete-edge-of-not-isbridge.md) | 1451 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5879ee054a747a123dbe5ef1405b66487d1bca71c680c82248cb9d1722d129a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
