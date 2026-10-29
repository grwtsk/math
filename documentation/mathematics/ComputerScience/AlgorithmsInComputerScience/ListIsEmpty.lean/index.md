# List Is Empty

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**222 observed declarations and anonymous commands**, 199 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianta6b44d6dc55d2fc6e1f4e6ff43c9722853cf25e6ebc4e040ee91efd5dc1cc1c3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1856ebb2605b8b7d1b33b3a86d5c2641a855e94`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/ListIsEmpty.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `axiom` | [ADMIT](declarations/admit.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [IsEmpty](declarations/isempty.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [IsEmpty.false'](declarations/isempty-false.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Unique](declarations/unique.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [IsLeftId](declarations/isleftid.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Injective](declarations/injective.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [injective_elim](declarations/injective-elim.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [injective_intro](declarations/injective-intro.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Surjective](declarations/surjective.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [surjective_elim](declarations/surjective-elim.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [surjective_intro](declarations/surjective-intro.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Bijective](declarations/bijective.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Involutive](declarations/involutive.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [involutive_elim](declarations/involutive-elim.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [involutive_intro](declarations/involutive-intro.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Involutive.injective](declarations/involutive-injective.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Involutive.surjective](declarations/involutive-surjective.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Involutive.bijective](declarations/involutive-bijective.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [Mem](declarations/mem.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_spec](declarations/mem-spec.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_none](declarations/mem-none.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [iget](declarations/iget.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [init](declarations/init.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [last](declarations/last.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [ilast](declarations/ilast.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [head'](declarations/head.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ihead](declarations/ihead.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [nth_le](declarations/nth-le.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [modify_head](declarations/modify-head.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Empty](declarations/empty.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_eq_mem](declarations/mem-eq-mem.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [subset_trans](declarations/subset-trans.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [unique_of_is_empty](declarations/unique-of-is-empty.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [X.cons_ne_nil](declarations/x-cons-ne-nil.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [X.cons_ne_self](declarations/x-cons-ne-self.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [X.head_eq_of_cons_eq](declarations/x-head-eq-of-cons-eq.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [X.tail_eq_of_cons_eq](declarations/x-tail-eq-of-cons-eq.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cons_injective](declarations/cons-injective.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [X.cons_inj](declarations/x-cons-inj.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [X.exists_cons_of_ne_nil](declarations/x-exists-cons-of-ne-nil.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [X.mem_singleton_self](declarations/x-mem-singleton-self.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [X.eq_of_mem_singleton](declarations/x-eq-of-mem-singleton.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [X.mem_singleton](declarations/x-mem-singleton.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [X.mem_of_mem_cons_of_mem](declarations/x-mem-of-mem-cons-of-mem.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [_root_.decidable.list.eq_or_ne_mem_of_mem](declarations/root-decidable-list-eq-or-ne-mem-of-mem.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [X.eq_or_ne_mem_of_mem](declarations/x-eq-or-ne-mem-of-mem.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [X.not_mem_append](declarations/x-not-mem-append.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [X.ne_nil_of_mem](declarations/x-ne-nil-of-mem.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [mem_split](declarations/mem-split.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [X.mem_of_ne_of_mem](declarations/x-mem-of-ne-of-mem.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [X.ne_of_not_mem_cons](declarations/x-ne-of-not-mem-cons.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [X.not_mem_of_not_mem_cons](declarations/x-not-mem-of-not-mem-cons.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [X.not_mem_cons_of_ne_of_not_mem](declarations/x-not-mem-cons-of-ne-of-not-mem.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [X.ne_and_not_mem_of_not_mem_cons](declarations/x-ne-and-not-mem-of-not-mem-cons.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [X.mem_map](declarations/x-mem-map.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [X.mem_map_of_mem](declarations/x-mem-map-of-mem.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mem_map_of_injective](declarations/mem-map-of-injective.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [_root_.function.involutive.exists_mem_and_apply_eq_iff](declarations/root-function-involutive-exists-mem-and-apply-eq-iff.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mem_map_of_involutive](declarations/mem-map-of-involutive.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [X.forall_mem_map_iff](declarations/x-forall-mem-map-iff.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [X.map_eq_nil](declarations/x-map-eq-nil.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [X.mem_flatten](declarations/x-mem-flatten.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [X.exists_of_mem_flatten](declarations/x-exists-of-mem-flatten.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [X.mem_flatten_of_mem](declarations/x-mem-flatten-of-mem.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [X.mem_flatMap](declarations/x-mem-flatmap.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [X.exists_of_mem_flatMap](declarations/x-exists-of-mem-flatmap.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [X.mem_flatMap_of_mem](declarations/x-mem-flatmap-of-mem.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [X.flatMap_map](declarations/x-flatmap-map.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [map_flatMap'](declarations/map-flatmap.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [X.length_eq_zero](declarations/x-length-eq-zero.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [X.length_singleton](declarations/x-length-singleton.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [X.length_pos_of_mem](declarations/x-length-pos-of-mem.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [X.exists_mem_of_length_pos](declarations/x-exists-mem-of-length-pos.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [X.length_pos_iff_exists_mem](declarations/x-length-pos-iff-exists-mem.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [X.ne_nil_of_length_pos](declarations/x-ne-nil-of-length-pos.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [length_pos_of_ne_nil](declarations/length-pos-of-ne-nil.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [length_pos_iff_ne_nil](declarations/length-pos-iff-ne-nil.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [X.exists_mem_of_ne_nil](declarations/x-exists-mem-of-ne-nil.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [X.length_eq_one](declarations/x-length-eq-one.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [exists_of_length_succ](declarations/exists-of-length-succ.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [length_injective_iff](declarations/length-injective-iff.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [length_injective](declarations/length-injective.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [length_eq_two](declarations/length-eq-two.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [length_eq_three](declarations/length-eq-three.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [X.empty_eq](declarations/x-empty-eq.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [X.forall_mem_nil](declarations/x-forall-mem-nil.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [X.forall_mem_cons](declarations/x-forall-mem-cons.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [forall_mem_of_forall_mem_cons](declarations/forall-mem-of-forall-mem-cons.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [X.forall_mem_singleton](declarations/x-forall-mem-singleton.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [X.forall_mem_append](declarations/x-forall-mem-append.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [not_exists_mem_nil](declarations/not-exists-mem-nil.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [exists_mem_cons_of](declarations/exists-mem-cons-of.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [exists_mem_cons_of_exists](declarations/exists-mem-cons-of-exists.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [or_exists_of_exists_mem_cons](declarations/or-exists-of-exists-mem-cons.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [exists_mem_cons_iff](declarations/exists-mem-cons-iff.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [X.subset_def](declarations/x-subset-def.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [X.subset_append_of_subset_left](declarations/x-subset-append-of-subset-left.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [X.subset_append_of_subset_right](declarations/x-subset-append-of-subset-right.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [X.cons_subset](declarations/x-cons-subset.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [cons_subset_of_subset_of_mem](declarations/cons-subset-of-subset-of-mem.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [append_subset_of_subset_of_subset](declarations/append-subset-of-subset-of-subset.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [append_subset_iff](declarations/append-subset-iff.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [eq_nil_of_subset_nil'](declarations/eq-nil-of-subset-nil.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [X.eq_nil_iff_forall_not_mem](declarations/x-eq-nil-iff-forall-not-mem.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [X.map_subset](declarations/x-map-subset.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [map_subset_iff](declarations/map-subset-iff.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [append_eq_has_append](declarations/append-eq-has-append.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [X.singleton_append](declarations/x-singleton-append.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [X.append_ne_nil_of_ne_nil_left](declarations/x-append-ne-nil-of-ne-nil-left.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [X.append_ne_nil_of_ne_nil_right](declarations/x-append-ne-nil-of-ne-nil-right.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [X.append_eq_nil](declarations/x-append-eq-nil.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [X.nil_eq_append_iff](declarations/x-nil-eq-append-iff.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [X.append_eq_cons_iff](declarations/x-append-eq-cons-iff.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [X.cons_eq_append_iff](declarations/x-cons-eq-append-iff.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [X.append_eq_append_iff](declarations/x-append-eq-append-iff.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [X.take_append_drop](declarations/x-take-append-drop.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [X.append_inj](declarations/x-append-inj.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [X.append_inj_right](declarations/x-append-inj-right-source-edition-2.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [X.append_inj_left](declarations/x-append-inj-left-source-edition-2.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [X.append_inj'](declarations/x-append-inj-source-edition-2.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [X.append_inj_right'](declarations/x-append-inj-right.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [X.append_inj_left'](declarations/x-append-inj-left.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [append_left_cancel](declarations/append-left-cancel.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [append_right_cancel](declarations/append-right-cancel.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [append_right_injective](declarations/append-right-injective.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [X.append_right_inj](declarations/x-append-right-inj.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [append_left_injective](declarations/append-left-injective.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [X.append_left_inj](declarations/x-append-left-inj.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [X.map_eq_append_split](declarations/x-map-eq-append-split.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [X.replicate_succ](declarations/x-replicate-succ.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [X.mem_replicate](declarations/x-mem-replicate.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [X.eq_of_mem_replicate](declarations/x-eq-of-mem-replicate.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [X.eq_replicate_of_mem](declarations/x-eq-replicate-of-mem.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [eq_replicate'](declarations/eq-replicate.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [X.eq_replicate](declarations/x-eq-replicate.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [replicate_add](declarations/replicate-add.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [replicate_subset_singleton](declarations/replicate-subset-singleton.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [subset_singleton_iff](declarations/subset-singleton-iff.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [map_const''](declarations/map-const.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [eq_of_mem_map_const](declarations/eq-of-mem-map-const.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [map_replicate'](declarations/map-replicate.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [tail_replicate'](declarations/tail-replicate.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [flatten_replicate_nil'](declarations/flatten-replicate-nil.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [replicate_left_injective](declarations/replicate-left-injective.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [replicate_left_inj'](declarations/replicate-left-inj.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [replicate_right_injective](declarations/replicate-right-injective.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [replicate_right_inj](declarations/replicate-right-inj.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [mem_pure](declarations/mem-pure.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `instance` | [(anonymous)](declarations/instance.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [bind_eq_flatMap](declarations/bind-eq-flatmap.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [X.flatMap_append](declarations/x-flatmap-append.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [X.flatMap_singleton'](declarations/x-flatmap-singleton-source-edition-2.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [X.flatMap_singleton''](declarations/x-flatmap-singleton.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [map_eq_flatMap'](declarations/map-eq-flatmap.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [flatMap_assoc'](declarations/flatmap-assoc.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [X.concat_nil](declarations/x-concat-nil.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [X.concat_cons](declarations/x-concat-cons.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [X.concat_eq_append](declarations/x-concat-eq-append.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [X.init_eq_of_concat_eq](declarations/x-init-eq-of-concat-eq.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [X.last_eq_of_concat_eq](declarations/x-last-eq-of-concat-eq.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [X.concat_ne_nil](declarations/x-concat-ne-nil.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [X.concat_append](declarations/x-concat-append.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [X.length_concat](declarations/x-length-concat.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [X.append_concat](declarations/x-append-concat.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [X.reverse_nil](declarations/x-reverse-nil.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [X.reverse_cons](declarations/x-reverse-cons.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [X.reverseAux_eq](declarations/x-reverseaux-eq.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [reverse_cons'](declarations/reverse-cons.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [X.reverse_append](declarations/x-reverse-append.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [X.reverse_concat](declarations/x-reverse-concat.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [X.reverse_reverse](declarations/x-reverse-reverse.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [reverse_involutive](declarations/reverse-involutive.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [reverse_injective](declarations/reverse-injective.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [reverse_surjective](declarations/reverse-surjective.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [reverse_bijective](declarations/reverse-bijective.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [reverse_inj'](declarations/reverse-inj.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [X.reverse_eq_iff](declarations/x-reverse-eq-iff.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [reverse_eq_nil](declarations/reverse-eq-nil.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [concat_eq_reverse_cons](declarations/concat-eq-reverse-cons.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [X.length_reverse](declarations/x-length-reverse.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [map_reverse'](declarations/map-reverse.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [map_reverse_core](declarations/map-reverse-core.md) | 858 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [X.mem_reverse](declarations/x-mem-reverse.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [reverse_replicate'](declarations/reverse-replicate.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [empty_iff_eq_nil](declarations/empty-iff-eq-nil.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [length_init](declarations/length-init.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [last_cons](declarations/last-cons.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [last_append_singleton](declarations/last-append-singleton.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [last_append](declarations/last-append.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [last_concat](declarations/last-concat.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [last_singleton](declarations/last-singleton.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [last_cons_cons](declarations/last-cons-cons.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [init_append_last](declarations/init-append-last.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `theorem` | [last_congr](declarations/last-congr.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `theorem` | [last_mem](declarations/last-mem.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [last_replicate_succ](declarations/last-replicate-succ.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [getLast?_is_none](declarations/getlast-is-none.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [getLast?_is_some](declarations/getlast-is-some.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [mem_getLast?_eq_last](declarations/mem-getlast-eq-last.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [getLast?_eq_last_of_ne_nil](declarations/getlast-eq-last-of-ne-nil.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [mem_getLast?_cons](declarations/mem-getlast-cons.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [X.mem_of_mem_getLast?](declarations/x-mem-of-mem-getlast.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `theorem` | [init_append_getLast?](declarations/init-append-getlast.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [ilast_eq_getLast?](declarations/ilast-eq-getlast.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [getLast?_append_cons](declarations/getlast-append-cons.md) | 987 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `theorem` | [getLast?_cons_cons'](declarations/getlast-cons-cons.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [getLast?_append_of_ne_nil](declarations/getlast-append-of-ne-nil.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [getLast?_append'](declarations/getlast-append.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [head_eq_head'](declarations/head-eq-head.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `theorem` | [mem_of_mem_head'](declarations/mem-of-mem-head.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `theorem` | [X.head'_cons](declarations/x-head-cons.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `theorem` | [X.tail_nil](declarations/x-tail-nil.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `theorem` | [X.tail_cons](declarations/x-tail-cons.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `theorem` | [X.head_append](declarations/x-head-append.md) | 1030 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `theorem` | [head'_append](declarations/head-append.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `theorem` | [head'_append_of_ne_nil](declarations/head-append-of-ne-nil.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `theorem` | [tail_append_singleton_of_ne_nil](declarations/tail-append-singleton-of-ne-nil.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `theorem` | [cons_head'_tail](declarations/cons-head-tail.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `theorem` | [head_mem_head'](declarations/head-mem-head.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `theorem` | [cons_head_tail'](declarations/cons-head-tail-source-edition-2.md) | 1054 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=417eab69ef41e2225a907f72fce82a2dceddd6cf3b3b0883694d713420262224 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianta6b44d6dc55d2fc6e1f4e6ff43c9722853cf25e6ebc4e040ee91efd5dc1cc1c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
