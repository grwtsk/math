# Matroid Basic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**175 observed declarations and anonymous commands**, 154 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4ceaa2090a378ee1d0d1ad1e51bfd69077c5d75b03a44849a76c5eb83bdbe981.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a34f979a0f4c085432bf220d406cb80d2399b3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/MatroidBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Matroid.ExchangeProperty](declarations/matroid-exchangeproperty.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Matroid.ExistsMaximalSubsetProperty](declarations/matroid-existsmaximalsubsetproperty.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Matroid](declarations/matroid.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [Finite](declarations/finite.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [Nonempty](declarations/nonempty.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ground_nonempty](declarations/ground-nonempty.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ground_nonempty_iff](declarations/ground-nonempty-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [nonempty_type](declarations/nonempty-type.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ground_finite](declarations/ground-finite.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [set_finite](declarations/set-finite.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [finite_of_finite](declarations/finite-of-finite.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [RankFinite](declarations/rankfinite.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [rankFinite_of_finite](declarations/rankfinite-of-finite.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [RankInfinite](declarations/rankinfinite.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `class` | [RankPos](declarations/rankpos.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [rankPos_nonempty](declarations/rankpos-nonempty.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [antichain](declarations/antichain.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [encard_diff_le_aux](declarations/encard-diff-le-aux.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [encard_diff_eq](declarations/encard-diff-eq.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [encard_isBase_eq](declarations/encard-isbase-eq.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `macro` | [(anonymous)](declarations/macro.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inter_right_subset_ground](declarations/inter-right-subset-ground.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inter_left_subset_ground](declarations/inter-left-subset-ground.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [diff_subset_ground](declarations/diff-subset-ground.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ground_diff_subset_ground](declarations/ground-diff-subset-ground.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [singleton_subset_ground](declarations/singleton-subset-ground.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [subset_ground_of_subset](declarations/subset-ground-of-subset.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mem_ground_of_mem_of_subset](declarations/mem-ground-of-mem-of-subset.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [insert_subset_ground](declarations/insert-subset-ground.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ground_subset_ground](declarations/ground-subset-ground.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsBase.subset_ground](declarations/isbase-subset-ground.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsBase.exchange](declarations/isbase-exchange.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsBase.exchange_mem](declarations/isbase-exchange-mem.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsBase.eq_of_subset_isBase](declarations/isbase-eq-of-subset-isbase.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsBase.not_isBase_of_ssubset](declarations/isbase-not-isbase-of-ssubset.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsBase.insert_not_isBase](declarations/isbase-insert-not-isbase.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsBase.encard_diff_comm](declarations/isbase-encard-diff-comm.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsBase.ncard_diff_comm](declarations/isbase-ncard-diff-comm.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [IsBase.encard_eq_encard_of_isBase](declarations/isbase-encard-eq-encard-of-isbase.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [IsBase.ncard_eq_ncard_of_isBase](declarations/isbase-ncard-eq-ncard-of-isbase.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsBase.finite_of_finite](declarations/isbase-finite-of-finite.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsBase.infinite_of_infinite](declarations/isbase-infinite-of-infinite.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsBase.finite](declarations/isbase-finite.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsBase.infinite](declarations/isbase-infinite.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [empty_not_isBase](declarations/empty-not-isbase.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsBase.nonempty](declarations/isbase-nonempty.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsBase.rankPos_of_nonempty](declarations/isbase-rankpos-of-nonempty.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsBase.rankFinite_of_finite](declarations/isbase-rankfinite-of-finite.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsBase.rankInfinite_of_infinite](declarations/isbase-rankinfinite-of-infinite.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [not_rankFinite](declarations/not-rankfinite.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_rankInfinite](declarations/not-rankinfinite.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [rankFinite_or_rankInfinite](declarations/rankfinite-or-rankinfinite.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [not_rankFinite_iff](declarations/not-rankfinite-iff.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [not_rankInfinite_iff](declarations/not-rankinfinite-iff.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [IsBase.diff_finite_comm](declarations/isbase-diff-finite-comm.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsBase.diff_infinite_comm](declarations/isbase-diff-infinite-comm.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ext_isBase](declarations/ext-isbase.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ext_iff_isBase](declarations/ext-iff-isbase.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [isBase_compl_iff_maximal_disjoint_isBase](declarations/isbase-compl-iff-maximal-disjoint-isbase.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [Dep](declarations/dep.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [indep_iff](declarations/indep-iff.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [setOf_indep_eq](declarations/setof-indep-eq.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Indep.exists_isBase_superset](declarations/indep-exists-isbase-superset.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [dep_iff](declarations/dep-iff.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [setOf_dep_eq](declarations/setof-dep-eq.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [Indep.subset_ground](declarations/indep-subset-ground.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Dep.subset_ground](declarations/dep-subset-ground.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [indep_or_dep](declarations/indep-or-dep.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Indep.not_dep](declarations/indep-not-dep.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Dep.not_indep](declarations/dep-not-indep.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [dep_of_not_indep](declarations/dep-of-not-indep.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [indep_of_not_dep](declarations/indep-of-not-dep.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [not_dep_iff](declarations/not-dep-iff.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [not_indep_iff](declarations/not-indep-iff.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [indep_iff_not_dep](declarations/indep-iff-not-dep.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Indep.subset](declarations/indep-subset.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Dep.superset](declarations/dep-superset.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [IsBase.indep](declarations/isbase-indep.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [empty_indep](declarations/empty-indep.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Dep.nonempty](declarations/dep-nonempty.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Indep.finite](declarations/indep-finite.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [Indep.rankPos_of_nonempty](declarations/indep-rankpos-of-nonempty.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Indep.inter_right](declarations/indep-inter-right.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Indep.inter_left](declarations/indep-inter-left.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Indep.diff](declarations/indep-diff.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [IsBase.eq_of_subset_indep](declarations/isbase-eq-of-subset-indep.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [isBase_iff_maximal_indep](declarations/isbase-iff-maximal-indep.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Indep.isBase_of_maximal](declarations/indep-isbase-of-maximal.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [IsBase.dep_of_ssubset](declarations/isbase-dep-of-ssubset.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [IsBase.dep_of_insert](declarations/isbase-dep-of-insert.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [IsBase.mem_of_insert_indep](declarations/isbase-mem-of-insert-indep.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [IsBase.eq_exchange_of_diff_eq_singleton](declarations/isbase-eq-exchange-of-diff-eq-singleton.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [IsBase.exchange_isBase_of_indep](declarations/isbase-exchange-isbase-of-indep.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [IsBase.exchange_isBase_of_indep'](declarations/isbase-exchange-isbase-of-indep-source-edition-2.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [insert_isBase_of_insert_indep](declarations/insert-isbase-of-insert-indep.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [IsBase.insert_dep](declarations/isbase-insert-dep.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Indep.exists_insert_of_not_isBase](declarations/indep-exists-insert-of-not-isbase.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [Indep.exists_insert_of_not_maximal](declarations/indep-exists-insert-of-not-maximal.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Indep.isBase_of_forall_insert](declarations/indep-isbase-of-forall-insert.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [ground_indep_iff_isBase](declarations/ground-indep-iff-isbase.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [IsBase.exists_insert_of_ssubset](declarations/isbase-exists-insert-of-ssubset.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [ext_indep](declarations/ext-indep.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [ext_iff_indep](declarations/ext-iff-indep.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [ext_isBase_indep](declarations/ext-isbase-indep.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `class` | [Finitary](declarations/finitary.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [indep_of_forall_finite_subset_indep](declarations/indep-of-forall-finite-subset-indep.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [indep_iff_forall_finite_subset_indep](declarations/indep-iff-forall-finite-subset-indep.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [finitary_of_rankFinite](declarations/finitary-of-rankfinite.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [existsMaximalSubsetProperty_indep](declarations/existsmaximalsubsetproperty-indep.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [copy](declarations/copy.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [copyIndep](declarations/copyindep.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [copyBase](declarations/copybase.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [IsBasis](declarations/isbasis-source-edition-2.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [IsBasis'](declarations/isbasis.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [IsBasis'.indep](declarations/isbasis-indep-source-edition-2.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [IsBasis.indep](declarations/isbasis-indep.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [IsBasis.subset](declarations/isbasis-subset-source-edition-2.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [IsBasis.isBasis'](declarations/isbasis-isbasis.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [IsBasis'.isBasis](declarations/isbasis-isbasis-source-edition-2.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [IsBasis'.subset](declarations/isbasis-subset.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [IsBasis.subset_ground](declarations/isbasis-subset-ground.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [IsBasis.isBasis_inter_ground](declarations/isbasis-isbasis-inter-ground-source-edition-2.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [IsBasis.left_subset_ground](declarations/isbasis-left-subset-ground.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [IsBasis.eq_of_subset_indep](declarations/isbasis-eq-of-subset-indep-source-edition-2.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [IsBasis.Finite](declarations/isbasis-finite.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [isBasis_iff'](declarations/isbasis-iff.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [isBasis_iff](declarations/isbasis-iff-source-edition-2.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [isBasis'_iff_isBasis_inter_ground](declarations/isbasis-iff-isbasis-inter-ground.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [isBasis'_iff_isBasis](declarations/isbasis-iff-isbasis.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [isBasis_iff_isBasis'_subset_ground](declarations/isbasis-iff-isbasis-subset-ground.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [IsBasis'.isBasis_inter_ground](declarations/isbasis-isbasis-inter-ground.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [IsBasis'.eq_of_subset_indep](declarations/isbasis-eq-of-subset-indep.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [IsBasis'.insert_not_indep](declarations/isbasis-insert-not-indep.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [isBasis_iff_maximal](declarations/isbasis-iff-maximal.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Indep.isBasis_of_maximal_subset](declarations/indep-isbasis-of-maximal-subset.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [IsBasis.isBasis_subset](declarations/isbasis-isbasis-subset.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [isBasis_self_iff_indep](declarations/isbasis-self-iff-indep.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [Indep.isBasis_self](declarations/indep-isbasis-self.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [isBasis_empty_iff](declarations/isbasis-empty-iff.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [IsBasis.dep_of_ssubset](declarations/isbasis-dep-of-ssubset.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [IsBasis.insert_dep](declarations/isbasis-insert-dep.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [IsBasis.mem_of_insert_indep](declarations/isbasis-mem-of-insert-indep.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [IsBasis'.mem_of_insert_indep](declarations/isbasis-mem-of-insert-indep-source-edition-2.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [IsBasis.not_isBasis_of_ssubset](declarations/isbasis-not-isbasis-of-ssubset.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [Indep.subset_isBasis_of_subset](declarations/indep-subset-isbasis-of-subset.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [Indep.subset_isBasis'_of_subset](declarations/indep-subset-isbasis-of-subset-source-edition-2.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [exists_isBasis](declarations/exists-isbasis.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [exists_isBasis'](declarations/exists-isbasis-source-edition-2.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [exists_isBasis_subset_isBasis](declarations/exists-isbasis-subset-isbasis.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [IsBasis.exists_isBasis_inter_eq_of_superset](declarations/isbasis-exists-isbasis-inter-eq-of-superset.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [exists_isBasis_union_inter_isBasis](declarations/exists-isbasis-union-inter-isbasis.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [Indep.eq_of_isBasis](declarations/indep-eq-of-isbasis.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [IsBasis.exists_isBase](declarations/isbasis-exists-isbase.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [isBasis_ground_iff](declarations/isbasis-ground-iff.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [IsBase.isBasis_ground](declarations/isbase-isbasis-ground.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [Indep.isBasis_iff_forall_insert_dep](declarations/indep-isbasis-iff-forall-insert-dep.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [Indep.isBasis_of_forall_insert](declarations/indep-isbasis-of-forall-insert.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [Indep.isBasis_insert_iff](declarations/indep-isbasis-insert-iff.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [IsBasis.iUnion_isBasis_iUnion](declarations/isbasis-iunion-isbasis-iunion.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [IsBasis.isBasis_iUnion](declarations/isbasis-isbasis-iunion.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [IsBasis.isBasis_sUnion](declarations/isbasis-isbasis-sunion.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [Indep.isBasis_setOf_insert_isBasis](declarations/indep-isbasis-setof-insert-isbasis.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [IsBasis.union_isBasis_union](declarations/isbasis-union-isbasis-union.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [IsBasis.isBasis_union](declarations/isbasis-isbasis-union.md) | 1049 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [IsBasis.isBasis_union_of_subset](declarations/isbasis-isbasis-union-of-subset.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [IsBasis.insert_isBasis_insert](declarations/isbasis-insert-isbasis-insert.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [IsBase.isBase_of_isBasis_superset](declarations/isbase-isbase-of-isbasis-superset.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [Indep.exists_isBase_subset_union_isBase](declarations/indep-exists-isbase-subset-union-isbase.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [IsBasis.inter_eq_of_subset_indep](declarations/isbasis-inter-eq-of-subset-indep.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [IsBasis'.inter_eq_of_subset_indep](declarations/isbasis-inter-eq-of-subset-indep-source-edition-2.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [IsBase.isBasis_of_subset](declarations/isbase-isbasis-of-subset.md) | 1085 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [exists_isBasis_disjoint_isBasis_of_subset](declarations/exists-isbasis-disjoint-isbasis-of-subset.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [finite_setOf_matroid](declarations/finite-setof-matroid-source-edition-2.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [finite_setOf_matroid'](declarations/finite-setof-matroid.md) | 1116 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fd79c87e595655a5b18fc0fade6082b99f51e58c19ca5c1a8eb8f2ae46f0dae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4ceaa2090a378ee1d0d1ad1e51bfd69077c5d75b03a44849a76c5eb83bdbe981.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
