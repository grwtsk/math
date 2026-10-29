# List Perm

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**165 observed declarations and anonymous commands**, 160 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc1ee5b90e2e2fed9b580964ed2ef3adcc18783a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListPerm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Perm](declarations/perm.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Perm.refl](declarations/perm-refl.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Perm.symm](declarations/perm-symm.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [perm_comm](declarations/perm-comm.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Perm.swap'](declarations/perm-swap.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Perm.eqv](declarations/perm-eqv.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Perm.of_eq](declarations/perm-of-eq.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [isSetoid](declarations/issetoid.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Perm.mem_iff](declarations/perm-mem-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Perm.subset](declarations/perm-subset.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Perm.subset_congr_left](declarations/perm-subset-congr-left.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Perm.subset_congr_right](declarations/perm-subset-congr-right.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Perm.append_right](declarations/perm-append-right.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Perm.append_left](declarations/perm-append-left.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Perm.append](declarations/perm-append.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Perm.append_cons](declarations/perm-append-cons.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [perm_middle](declarations/perm-middle.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [perm_append_singleton](declarations/perm-append-singleton.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [perm_append_comm](declarations/perm-append-comm.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [concat_perm](declarations/concat-perm.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Perm.length_eq](declarations/perm-length-eq.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Perm.eq_nil](declarations/perm-eq-nil.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Perm.nil_eq](declarations/perm-nil-eq.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [perm_nil](declarations/perm-nil.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nil_perm](declarations/nil-perm.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [not_perm_nil_cons](declarations/not-perm-nil-cons.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [reverse_perm](declarations/reverse-perm.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [perm_cons_append_cons](declarations/perm-cons-append-cons.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [perm_replicate](declarations/perm-replicate.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [replicate_perm](declarations/replicate-perm.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [perm_singleton](declarations/perm-singleton.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [singleton_perm](declarations/singleton-perm.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [singleton_perm_singleton](declarations/singleton-perm-singleton.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [perm_cons_erase](declarations/perm-cons-erase.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [perm_induction_on](declarations/perm-induction-on.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Perm.filterMap](declarations/perm-filtermap.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Perm.map](declarations/perm-map.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Perm.pmap](declarations/perm-pmap.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Perm.filter](declarations/perm-filter.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [filter_append_perm](declarations/filter-append-perm.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [exists_perm_sublist](declarations/exists-perm-sublist.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Perm.sizeOf_eq_sizeOf](declarations/perm-sizeof-eq-sizeof.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [perm_comp_perm](declarations/perm-comp-perm.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [perm_comp_forall₂](declarations/perm-comp-forall.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [forall₂_comp_perm_eq_perm_comp_forall₂](declarations/forall-comp-perm-eq-perm-comp-forall.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [rel_perm_imp](declarations/rel-perm-imp.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [rel_perm](declarations/rel-perm.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [Subperm](declarations/subperm.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [nil_subperm](declarations/nil-subperm.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Perm.subperm_left](declarations/perm-subperm-left.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Perm.subperm_right](declarations/perm-subperm-right.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Sublist.subperm](declarations/sublist-subperm.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Perm.subperm](declarations/perm-subperm.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Subperm.refl](declarations/subperm-refl.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Subperm.trans](declarations/subperm-trans.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Subperm.length_le](declarations/subperm-length-le.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Subperm.perm_of_length_le](declarations/subperm-perm-of-length-le.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Subperm.antisymm](declarations/subperm-antisymm.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Subperm.subset](declarations/subperm-subset.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Subperm.filter](declarations/subperm-filter.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Sublist.exists_perm_append](declarations/sublist-exists-perm-append.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Perm.countP_eq](declarations/perm-countp-eq.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Subperm.countP_le](declarations/subperm-countp-le.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Perm.countP_congr](declarations/perm-countp-congr.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [countP_eq_countP_filter_add](declarations/countp-eq-countp-filter-add.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [Perm.count_eq](declarations/perm-count-eq.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Subperm.count_le](declarations/subperm-count-le.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Perm.foldl_eq'](declarations/perm-foldl-eq-source-edition-2.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Perm.foldl_eq](declarations/perm-foldl-eq.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Perm.foldr_eq](declarations/perm-foldr-eq.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Perm.rec_heq](declarations/perm-rec-heq.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Perm.fold_op_eq](declarations/perm-fold-op-eq.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Perm.prod_eq'](declarations/perm-prod-eq.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Perm.prod_eq](declarations/perm-prod-eq-source-edition-2.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [prod_reverse](declarations/prod-reverse.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [perm_inv_core](declarations/perm-inv-core.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Perm.cons_inv](declarations/perm-cons-inv.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [perm_cons](declarations/perm-cons.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [perm_append_left_iff](declarations/perm-append-left-iff.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [perm_append_right_iff](declarations/perm-append-right-iff.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [perm_option_to_list](declarations/perm-option-to-list.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [subperm_cons](declarations/subperm-cons.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [cons_subperm_of_mem](declarations/cons-subperm-of-mem.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [subperm_append_left](declarations/subperm-append-left.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [subperm_append_right](declarations/subperm-append-right.md) | 710 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Subperm.exists_of_length_lt](declarations/subperm-exists-of-length-lt.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Nodup.subperm](declarations/nodup-subperm.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [perm_ext](declarations/perm-ext.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Nodup.sublist_ext](declarations/nodup-sublist-ext.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Perm.erase](declarations/perm-erase.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [subperm_cons_erase](declarations/subperm-cons-erase.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [erase_subperm](declarations/erase-subperm.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [Subperm.erase](declarations/subperm-erase.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Perm.diff_right](declarations/perm-diff-right.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Perm.diff_left](declarations/perm-diff-left.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Perm.diff](declarations/perm-diff.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Subperm.diff_right](declarations/subperm-diff-right.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [erase_cons_subperm_cons_erase](declarations/erase-cons-subperm-cons-erase.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [subperm_cons_diff](declarations/subperm-cons-diff.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [subset_cons_diff](declarations/subset-cons-diff.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Perm.bagInter_right](declarations/perm-baginter-right.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Perm.bagInter_left](declarations/perm-baginter-left.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Perm.bagInter](declarations/perm-baginter.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [cons_perm_iff_perm_erase](declarations/cons-perm-iff-perm-erase.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [perm_iff_count](declarations/perm-iff-count.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [perm_replicate_append_replicate](declarations/perm-replicate-append-replicate.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Subperm.cons_right](declarations/subperm-cons-right.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [subperm_append_diff_self_of_count_le](declarations/subperm-append-diff-self-of-count-le.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [subperm_ext_iff](declarations/subperm-ext-iff.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [decidableSubperm](declarations/decidablesubperm.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [subperm_singleton_iff](declarations/subperm-singleton-iff.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Subperm.cons_left](declarations/subperm-cons-left.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [decidablePerm](declarations/decidableperm.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Perm.dedup](declarations/perm-dedup.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Perm.insert](declarations/perm-insert.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [perm_insert_swap](declarations/perm-insert-swap.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [perm_insertNth](declarations/perm-insertnth.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [Perm.union_right](declarations/perm-union-right.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [Perm.union_left](declarations/perm-union-left.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Perm.union](declarations/perm-union.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Perm.inter_right](declarations/perm-inter-right.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [Perm.inter_left](declarations/perm-inter-left.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [Perm.inter](declarations/perm-inter.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Perm.inter_append](declarations/perm-inter-append.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Perm.pairwise_iff](declarations/perm-pairwise-iff.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Pairwise.perm](declarations/pairwise-perm.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Perm.pairwise](declarations/perm-pairwise.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Perm.nodup_iff](declarations/perm-nodup-iff.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Perm.join](declarations/perm-join.md) | 1065 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Perm.bind_right](declarations/perm-bind-right.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [Perm.join_congr](declarations/perm-join-congr.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Perm.bind_left](declarations/perm-bind-left.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [bind_append_perm](declarations/bind-append-perm.md) | 1087 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [map_append_bind_perm](declarations/map-append-bind-perm.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [Perm.product_right](declarations/perm-product-right.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Perm.product_left](declarations/perm-product-left.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [Perm.product](declarations/perm-product.md) | 1111 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [perm_lookmap](declarations/perm-lookmap.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [Perm.erasep](declarations/perm-erasep.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [Perm.take_inter](declarations/perm-take-inter.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [Perm.drop_inter](declarations/perm-drop-inter.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [Perm.dropSlice_inter](declarations/perm-dropslice-inter.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [perm_of_mem_permutationsAux](declarations/perm-of-mem-permutationsaux.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [perm_of_mem_permutations](declarations/perm-of-mem-permutations.md) | 1211 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [length_permutationsAux](declarations/length-permutationsaux.md) | 1216 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [length_permutations](declarations/length-permutations.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [mem_permutations_of_perm_lemma](declarations/mem-permutations-of-perm-lemma.md) | 1232 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [mem_permutationsAux_of_perm](declarations/mem-permutationsaux-of-perm.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [mem_permutations](declarations/mem-permutations-source-edition-2.md) | 1258 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [DecEq_eq](declarations/deceq-eq.md) | 1263 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [perm_permutations'Aux_comm](declarations/perm-permutations-aux-comm.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [Perm.permutations'](declarations/perm-permutations-source-edition-2.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [permutations_perm_permutations'](declarations/permutations-perm-permutations.md) | 1305 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [mem_permutations'](declarations/mem-permutations.md) | 1325 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [Perm.permutations](declarations/perm-permutations.md) | 1329 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [perm_permutations_iff](declarations/perm-permutations-iff-source-edition-2.md) | 1335 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [perm_permutations'_iff](declarations/perm-permutations-iff.md) | 1341 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [nthLe_permutations'Aux](declarations/nthle-permutations-aux.md) | 1347 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [count_permutations'Aux_self](declarations/count-permutations-aux-self.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [length_permutations'Aux](declarations/length-permutations-aux.md) | 1372 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [permutations'Aux_nthLe_zero](declarations/permutations-aux-nthle-zero.md) | 1380 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [injective_permutations'Aux](declarations/injective-permutations-aux.md) | 1386 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [nodup_permutations'Aux_of_not_mem](declarations/nodup-permutations-aux-of-not-mem.md) | 1395 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [nodup_permutations'Aux_iff](declarations/nodup-permutations-aux-iff.md) | 1408 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [nodup_permutations](declarations/nodup-permutations.md) | 1440 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d9c352d59a4d63cb3b1dcf02ea1b223651cbc1a11acefbcdae023bb1e408a3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variantef782948927fb35f9109c5bc0046df56341fbd52df09e7f2940ba5652648af64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
