# Simple Graph Path

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**208 observed declarations and anonymous commands**, 178 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7162a73fd67332fcb414fd5f87f1e75d8aa0bfd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/SimpleGraphPath.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IsTrail](declarations/istrail-source-edition-2.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsPath](declarations/ispath-source-edition-2.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsPath.isTrail](declarations/ispath-istrail.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [IsCircuit](declarations/iscircuit.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsCircuit.isTrail](declarations/iscircuit-istrail.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [IsCycle](declarations/iscycle.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsCycle.isCircuit](declarations/iscycle-iscircuit.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isTrail_copy](declarations/istrail-copy.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsPath.mk'](declarations/ispath-mk.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isPath_def](declarations/ispath-def.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isPath_copy](declarations/ispath-copy.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isCircuit_copy](declarations/iscircuit-copy.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsCircuit.not_nil](declarations/iscircuit-not-nil.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isCycle_def](declarations/iscycle-def.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isCycle_copy](declarations/iscycle-copy.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsCycle.not_nil](declarations/iscycle-not-nil.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsTrail.nil](declarations/istrail-nil.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsTrail.of_cons](declarations/istrail-of-cons.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cons_isTrail_iff](declarations/cons-istrail-iff.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsTrail.reverse](declarations/istrail-reverse.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reverse_isTrail_iff](declarations/reverse-istrail-iff.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsTrail.of_append_left](declarations/istrail-of-append-left.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsTrail.of_append_right](declarations/istrail-of-append-right.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsTrail.count_edges_le_one](declarations/istrail-count-edges-le-one.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsTrail.count_edges_eq_one](declarations/istrail-count-edges-eq-one.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsTrail.length_le_card_edgeFinset](declarations/istrail-length-le-card-edgefinset.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsPath.nil](declarations/ispath-nil.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsPath.of_cons](declarations/ispath-of-cons.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cons_isPath_iff](declarations/cons-ispath-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsPath.cons](declarations/ispath-cons.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isPath_iff_eq_nil](declarations/ispath-iff-eq-nil.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsPath.reverse](declarations/ispath-reverse.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isPath_reverse_iff](declarations/ispath-reverse-iff.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsPath.of_append_left](declarations/ispath-of-append-left.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsPath.of_append_right](declarations/ispath-of-append-right.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsPath.of_adj](declarations/ispath-of-adj.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsCycle.not_of_nil](declarations/iscycle-not-of-nil.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsCycle.ne_bot](declarations/iscycle-ne-bot.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsCycle.three_le_length](declarations/iscycle-three-le-length.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [not_nil_of_isCycle_cons](declarations/not-nil-of-iscycle-cons.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [cons_isCycle_iff](declarations/cons-iscycle-iff.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [IsCycle.reverse](declarations/iscycle-reverse-source-edition-2.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isCycle_reverse](declarations/iscycle-reverse.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [IsCycle.isPath_of_append_right](declarations/iscycle-ispath-of-append-right.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [IsCycle.isPath_of_append_left](declarations/iscycle-ispath-of-append-left.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [IsPath.tail](declarations/ispath-tail.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsPath.length_lt](declarations/ispath-length-lt.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [IsPath.getVert_injOn](declarations/ispath-getvert-injon.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [IsPath.getVert_eq_start_iff](declarations/ispath-getvert-eq-start-iff.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [IsPath.getVert_eq_end_iff](declarations/ispath-getvert-eq-end-iff.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [IsPath.getVert_injOn_iff](declarations/ispath-getvert-injon-iff.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [IsCycle.getVert_injOn](declarations/iscycle-getvert-injon.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [IsCycle.getVert_injOn'](declarations/iscycle-getvert-injon-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [IsCycle.snd_ne_penultimate](declarations/iscycle-snd-ne-penultimate.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [IsCycle.getVert_endpoint_iff](declarations/iscycle-getvert-endpoint-iff.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [IsCycle.getVert_sub_one_ne_getVert_add_one](declarations/iscycle-getvert-sub-one-ne-getvert-add-one.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsTrail.takeUntil](declarations/istrail-takeuntil.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsTrail.dropUntil](declarations/istrail-dropuntil.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsPath.takeUntil](declarations/ispath-takeuntil.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsPath.dropUntil](declarations/ispath-dropuntil.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsTrail.rotate](declarations/istrail-rotate.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsCircuit.rotate](declarations/iscircuit-rotate.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsCycle.rotate](declarations/iscycle-rotate.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [IsCycle.isPath_takeUntil](declarations/iscycle-ispath-takeuntil.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [endpoint_notMem_support_takeUntil](declarations/endpoint-notmem-support-takeuntil.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [Path](declarations/path.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isPath](declarations/ispath.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [isTrail](declarations/istrail.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [nil](declarations/nil.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [singleton](declarations/singleton.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mk'_mem_edges_singleton](declarations/mk-mem-edges-singleton.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [reverse](declarations/reverse.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [count_support_eq_one](declarations/count-support-eq-one.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [count_edges_eq_one](declarations/count-edges-eq-one.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [nodup_support](declarations/nodup-support.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [loop_eq](declarations/loop-eq.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [notMem_edges_of_loop](declarations/notmem-edges-of-loop.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [cons_isCycle](declarations/cons-iscycle.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [bypass](declarations/bypass.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [bypass_copy](declarations/bypass-copy.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [bypass_isPath](declarations/bypass-ispath.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [length_bypass_le](declarations/length-bypass-le.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [bypass_eq_self_of_length_le](declarations/bypass-eq-self-of-length-le.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [toPath](declarations/topath.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [support_bypass_subset](declarations/support-bypass-subset.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [support_toPath_subset](declarations/support-topath-subset.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [darts_bypass_subset](declarations/darts-bypass-subset.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [edges_bypass_subset](declarations/edges-bypass-subset.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [darts_toPath_subset](declarations/darts-topath-subset.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [edges_toPath_subset](declarations/edges-topath-subset.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [map_isPath_of_injective](declarations/map-ispath-of-injective.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [IsPath.of_map](declarations/ispath-of-map.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [map_isPath_iff_of_injective](declarations/map-ispath-iff-of-injective.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [map_isTrail_iff_of_injective](declarations/map-istrail-iff-of-injective.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [map_isCycle_iff_of_injective](declarations/map-iscycle-iff-of-injective.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [mapLe_isTrail](declarations/maple-istrail.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [mapLe_isPath](declarations/maple-ispath.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [mapLe_isCycle](declarations/maple-iscycle.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [map](declarations/map-source-edition-2.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [map_injective](declarations/map-injective.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [mapEmbedding](declarations/mapembedding.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [mapEmbedding_injective](declarations/mapembedding-injective.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [IsPath.transfer](declarations/ispath-transfer.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [IsCycle.transfer](declarations/iscycle-transfer.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [IsPath.toDeleteEdges](declarations/ispath-todeleteedges.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [IsCycle.toDeleteEdges](declarations/iscycle-todeleteedges.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [toDeleteEdges_copy](declarations/todeleteedges-copy.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [Reachable](declarations/reachable.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [reachable_iff_nonempty_univ](declarations/reachable-iff-nonempty-univ.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [not_reachable_iff_isEmpty_walk](declarations/not-reachable-iff-isempty-walk.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Reachable.elim](declarations/reachable-elim.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Reachable.elim_path](declarations/reachable-elim-path.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Walk.reachable](declarations/walk-reachable.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Adj.reachable](declarations/adj-reachable.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Reachable.refl](declarations/reachable-refl.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Reachable.rfl](declarations/reachable-rfl.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Reachable.symm](declarations/reachable-symm.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [reachable_comm](declarations/reachable-comm.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Reachable.trans](declarations/reachable-trans.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [reachable_iff_reflTransGen](declarations/reachable-iff-refltransgen.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Reachable.map](declarations/reachable-map.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [Reachable.mono](declarations/reachable-mono.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Reachable.exists_isPath](declarations/reachable-exists-ispath.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Iso.reachable_iff](declarations/iso-reachable-iff.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Iso.symm_apply_reachable](declarations/iso-symm-apply-reachable.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `lemma` | [Reachable.mem_subgraphVerts](declarations/reachable-mem-subgraphverts.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [reachable_is_equivalence](declarations/reachable-is-equivalence.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `lemma` | [reachable_bot](declarations/reachable-bot.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [reachableSetoid](declarations/reachablesetoid.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [Preconnected](declarations/preconnected.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Preconnected.map](declarations/preconnected-map.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [Preconnected.mono](declarations/preconnected-mono.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [bot_preconnected_iff_subsingleton](declarations/bot-preconnected-iff-subsingleton.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [bot_preconnected](declarations/bot-preconnected.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [bot_not_preconnected](declarations/bot-not-preconnected.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [top_preconnected](declarations/top-preconnected.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Iso.preconnected_iff](declarations/iso-preconnected-iff.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [Preconnected.support_eq_univ](declarations/preconnected-support-eq-univ.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [adj_of_mem_walk_support](declarations/adj-of-mem-walk-support.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [mem_support_of_mem_walk_support](declarations/mem-support-of-mem-walk-support.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `lemma` | [mem_support_of_reachable](declarations/mem-support-of-reachable.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [Preconnected.exists_isPath](declarations/preconnected-exists-ispath.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `structure` | [Connected](declarations/connected.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [connected_iff_exists_forall_reachable](declarations/connected-iff-exists-forall-reachable.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `instance` | [(anonymous)](declarations/instance.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [Connected.map](declarations/connected-map.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [Connected.mono](declarations/connected-mono.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [Connected.exists_isPath](declarations/connected-exists-ispath.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [bot_not_connected](declarations/bot-not-connected.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [top_connected](declarations/top-connected.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Iso.connected_iff](declarations/iso-connected-iff.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `def` | [ConnectedComponent](declarations/connectedcomponent.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [connectedComponentMk](declarations/connectedcomponentmk.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `instance` | [inhabited](declarations/inhabited.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `instance` | [isEmpty](declarations/isempty.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [ind](declarations/ind.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [ind₂](declarations/ind-source-edition-2.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [sound](declarations/sound.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [exact](declarations/exact.md) | 1074 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [eq](declarations/eq.md) | 1079 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [connectedComponentMk_eq_of_adj](declarations/connectedcomponentmk-eq-of-adj.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [lift](declarations/lift.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [lift_mk](declarations/lift-mk.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [«exists»](declarations/exists.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [«forall»](declarations/forall.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [_root_.SimpleGraph.Preconnected.subsingleton_connectedComponent](declarations/root-simplegraph-preconnected-subsingleton-connectedcomponent.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `def` | [recOn](declarations/recon.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `def` | [map](declarations/map.md) | 1125 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [map_mk](declarations/map-mk.md) | 1130 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [map_id](declarations/map-id.md) | 1135 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [map_comp](declarations/map-comp.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [iso_image_comp_eq_map_iff_eq_comp](declarations/iso-image-comp-eq-map-iff-eq-comp.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [iso_inv_image_comp_eq_iff_eq_map](declarations/iso-inv-image-comp-eq-iff-eq-map.md) | 1155 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [connectedComponentEquiv](declarations/connectedcomponentequiv.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [connectedComponentEquiv_refl](declarations/connectedcomponentequiv-refl.md) | 1176 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [connectedComponentEquiv_symm](declarations/connectedcomponentequiv-symm.md) | 1182 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [connectedComponentEquiv_trans](declarations/connectedcomponentequiv-trans.md) | 1188 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [supp](declarations/supp.md) | 1199 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [supp_injective](declarations/supp-injective.md) | 1203 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [supp_inj](declarations/supp-inj.md) | 1212 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1215 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [mem_supp_iff](declarations/mem-supp-iff.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `lemma` | [mem_supp_congr_adj](declarations/mem-supp-congr-adj.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `lemma` | [adj_spanningCoe_induce_supp](declarations/adj-spanningcoe-induce-supp.md) | 1231 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [connectedComponentMk_mem](declarations/connectedcomponentmk-mem.md) | 1240 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [nonempty_supp](declarations/nonempty-supp.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `def` | [isoEquivSupp](declarations/isoequivsupp.md) | 1248 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `lemma` | [mem_coe_supp_of_adj](declarations/mem-coe-supp-of-adj.md) | 1255 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `lemma` | [eq_of_common_vertex](declarations/eq-of-common-vertex.md) | 1263 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `lemma` | [connectedComponentMk_supp_subset_supp](declarations/connectedcomponentmk-supp-subset-supp.md) | 1269 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `lemma` | [biUnion_supp_eq_supp](declarations/biunion-supp-eq-supp.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `lemma` | [top_supp_eq_univ](declarations/top-supp-eq-univ.md) | 1286 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `lemma` | [reachable_induce_supp](declarations/reachable-induce-supp.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `lemma` | [connected_induce_supp](declarations/connected-induce-supp.md) | 1304 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `lemma` | [pairwise_disjoint_supp_connectedComponent](declarations/pairwise-disjoint-supp-connectedcomponent.md) | 1317 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `lemma` | [iUnion_connectedComponentSupp](declarations/iunion-connectedcomponentsupp.md) | 1326 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [Preconnected.set_univ_walk_nonempty](declarations/preconnected-set-univ-walk-nonempty.md) | 1332 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [Connected.set_univ_walk_nonempty](declarations/connected-set-univ-walk-nonempty.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `def` | [IsBridge](declarations/isbridge.md) | 1347 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [isBridge_iff](declarations/isbridge-iff.md) | 1351 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [reachable_delete_edges_iff_exists_walk](declarations/reachable-delete-edges-iff-exists-walk.md) | 1354 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [isBridge_iff_adj_and_forall_walk_mem_edges](declarations/isbridge-iff-adj-and-forall-walk-mem-edges.md) | 1368 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [reachable_deleteEdges_iff_exists_cycle.aux](declarations/reachable-deleteedges-iff-exists-cycle-aux.md) | 1373 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [adj_and_reachable_delete_edges_iff_exists_cycle](declarations/adj-and-reachable-delete-edges-iff-exists-cycle.md) | 1399 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [isBridge_iff_adj_and_forall_cycle_notMem](declarations/isbridge-iff-adj-and-forall-cycle-notmem.md) | 1423 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [isBridge_iff_mem_and_forall_cycle_notMem](declarations/isbridge-iff-mem-and-forall-cycle-notmem.md) | 1435 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `lemma` | [Connected.connected_delete_edge_of_not_isBridge](declarations/connected-connected-delete-edge-of-not-isbridge.md) | 1443 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=847f966b4f7ce2f2f75d7b4e5ef27baa96d7be07ad3f35d3c218428f34412924 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant0c3e599dd900a841b30aeb01e65a655fab7338970724ec9fcc228c8bce788314.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
