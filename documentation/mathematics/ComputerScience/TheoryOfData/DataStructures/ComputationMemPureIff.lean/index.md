# Computation Mem Pure Iff

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**181 observed declarations and anonymous commands**, 135 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27573d8f6c6e48b6d13044f63fa3a7c09934ba50`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Computation](declarations/computation.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [pure](declarations/pure.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [think](declarations/think.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [thinkN](declarations/thinkn.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [head](declarations/head.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [tail](declarations/tail.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [empty](declarations/empty.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [runFor](declarations/runfor.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [destruct](declarations/destruct.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [run](declarations/run.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [destruct_eq_pure](declarations/destruct-eq-pure.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [destruct_eq_think](declarations/destruct-eq-think.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [destruct_pure](declarations/destruct-pure.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [destruct_think](declarations/destruct-think.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [destruct_empty](declarations/destruct-empty.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [head_pure](declarations/head-pure.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [head_think](declarations/head-think.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [head_empty](declarations/head-empty.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [tail_pure](declarations/tail-pure.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [tail_think](declarations/tail-think.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tail_empty](declarations/tail-empty.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [think_empty](declarations/think-empty.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [recOn](declarations/recon.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Corec.f](declarations/corec-f.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [corec](declarations/corec.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [lmap](declarations/lmap.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [rmap](declarations/rmap.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [corec_eq](declarations/corec-eq.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [BisimO](declarations/bisimo.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsBisimulation](declarations/isbisimulation.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eq_of_bisim](declarations/eq-of-bisim.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Mem](declarations/mem.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [le_stable](declarations/le-stable.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_unique](declarations/mem-unique.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Mem.left_unique](declarations/mem-left-unique.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `class` | [Terminates](declarations/terminates.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [terminates_iff](declarations/terminates-iff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [terminates_of_mem](declarations/terminates-of-mem.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [terminates_def](declarations/terminates-def.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ret_mem](declarations/ret-mem.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [eq_of_pure_mem](declarations/eq-of-pure-mem.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mem_pure_iff](declarations/mem-pure-iff.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [ret_terminates](declarations/ret-terminates.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [think_mem](declarations/think-mem.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [think_terminates](declarations/think-terminates.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [of_think_mem](declarations/of-think-mem.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [of_think_terminates](declarations/of-think-terminates.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [notMem_empty](declarations/notmem-empty.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_terminates_empty](declarations/not-terminates-empty.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [eq_empty_of_not_terminates](declarations/eq-empty-of-not-terminates.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [thinkN_mem](declarations/thinkn-mem.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [thinkN_terminates](declarations/thinkn-terminates.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [of_thinkN_terminates](declarations/of-thinkn-terminates.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [Promises](declarations/promises.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mem_promises](declarations/mem-promises.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [empty_promises](declarations/empty-promises.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [length](declarations/length.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [get](declarations/get.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [get_mem](declarations/get-mem.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [get_eq_of_mem](declarations/get-eq-of-mem.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mem_of_get_eq](declarations/mem-of-get-eq.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [get_think](declarations/get-think.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [get_thinkN](declarations/get-thinkn.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [get_promises](declarations/get-promises.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_of_promises](declarations/mem-of-promises.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [get_eq_of_promises](declarations/get-eq-of-promises.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Results](declarations/results.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [results_of_terminates](declarations/results-of-terminates-source-edition-2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [results_of_terminates'](declarations/results-of-terminates.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Results.mem](declarations/results-mem.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Results.terminates](declarations/results-terminates.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Results.length](declarations/results-length.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Results.val_unique](declarations/results-val-unique.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Results.len_unique](declarations/results-len-unique.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [exists_results_of_mem](declarations/exists-results-of-mem.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [get_pure](declarations/get-pure.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [length_pure](declarations/length-pure.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [results_pure](declarations/results-pure.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [length_think](declarations/length-think.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [results_think](declarations/results-think.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [of_results_think](declarations/of-results-think.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [results_think_iff](declarations/results-think-iff.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [results_thinkN](declarations/results-thinkn.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [results_thinkN_pure](declarations/results-thinkn-pure.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [length_thinkN](declarations/length-thinkn.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [eq_thinkN](declarations/eq-thinkn-source-edition-2.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [eq_thinkN'](declarations/eq-thinkn.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [memRecOn](declarations/memrecon.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [terminatesRecOn](declarations/terminatesrecon.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [map](declarations/map.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [Bind.g](declarations/bind-g.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [Bind.f](declarations/bind-f.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [bind](declarations/bind.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [has_bind_eq_bind](declarations/has-bind-eq-bind.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [join](declarations/join.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [map_pure](declarations/map-pure.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [map_think](declarations/map-think-source-edition-2.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [destruct_map](declarations/destruct-map.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [map_id](declarations/map-id.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_comp](declarations/map-comp.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [ret_bind](declarations/ret-bind.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [think_bind](declarations/think-bind.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [bind_pure](declarations/bind-pure.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [bind_pure'](declarations/bind-pure-source-edition-2.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [bind_assoc](declarations/bind-assoc.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [results_bind](declarations/results-bind.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [mem_bind](declarations/mem-bind.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [terminates_bind](declarations/terminates-bind.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [get_bind](declarations/get-bind.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [length_bind](declarations/length-bind.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [of_results_bind](declarations/of-results-bind.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [exists_of_mem_bind](declarations/exists-of-mem-bind.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [bind_promises](declarations/bind-promises.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [monad](declarations/monad.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [has_map_eq_map](declarations/has-map-eq-map.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [pure_def](declarations/pure-def.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [map_pure'](declarations/map-pure-source-edition-2.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [map_think'](declarations/map-think.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [mem_map](declarations/mem-map.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [exists_of_mem_map](declarations/exists-of-mem-map.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [terminates_map](declarations/terminates-map.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [terminates_map_iff](declarations/terminates-map-iff.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [orElse](declarations/orelse.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [instAlternativeComputation](declarations/instalternativecomputation.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [ret_orElse](declarations/ret-orelse.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [orElse_pure](declarations/orelse-pure.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [orElse_think](declarations/orelse-think.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [empty_orElse](declarations/empty-orelse.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [orElse_empty](declarations/orelse-empty.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [Equiv](declarations/equiv.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [Equiv.refl](declarations/equiv-refl.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [Equiv.symm](declarations/equiv-symm.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [Equiv.trans](declarations/equiv-trans.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [Equiv.equivalence](declarations/equiv-equivalence.md) | 827 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [equiv_of_mem](declarations/equiv-of-mem.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [terminates_congr](declarations/terminates-congr.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [promises_congr](declarations/promises-congr.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [get_equiv](declarations/get-equiv.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [think_equiv](declarations/think-equiv.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [thinkN_equiv](declarations/thinkn-equiv.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [bind_congr](declarations/bind-congr.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [equiv_pure_of_mem](declarations/equiv-pure-of-mem.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [LiftRel](declarations/liftrel.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [LiftRel.swap](declarations/liftrel-swap.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [lift_eq_iff_equiv](declarations/lift-eq-iff-equiv.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [LiftRel.refl](declarations/liftrel-refl.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [LiftRel.symm](declarations/liftrel-symm.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [LiftRel.trans](declarations/liftrel-trans.md) | 888 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [LiftRel.equiv](declarations/liftrel-equiv.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [LiftRel.imp](declarations/liftrel-imp.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [terminates_of_liftRel](declarations/terminates-of-liftrel.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [rel_of_liftRel](declarations/rel-of-liftrel.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [liftRel_of_mem](declarations/liftrel-of-mem.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [exists_of_liftRel_left](declarations/exists-of-liftrel-left.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [exists_of_liftRel_right](declarations/exists-of-liftrel-right.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [liftRel_def](declarations/liftrel-def.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [liftRel_bind](declarations/liftrel-bind.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [liftRel_pure_left](declarations/liftrel-pure-left.md) | 973 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [liftRel_pure_right](declarations/liftrel-pure-right.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [liftRel_pure](declarations/liftrel-pure.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [liftRel_think_left](declarations/liftrel-think-left.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [liftRel_think_right](declarations/liftrel-think-right.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [liftRel_mem_cases](declarations/liftrel-mem-cases.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [liftRel_congr](declarations/liftrel-congr.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [liftRel_map](declarations/liftrel-map.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [map_congr](declarations/map-congr.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `def` | [LiftRelAux](declarations/liftrelaux.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `lemma` | [liftRelAux_inl_inl](declarations/liftrelaux-inl-inl.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `lemma` | [liftRelAux_inl_inr](declarations/liftrelaux-inl-inr.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `lemma` | [liftRelAux_inr_inl](declarations/liftrelaux-inr-inl.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `lemma` | [liftRelAux_inr_inr](declarations/liftrelaux-inr-inr.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [LiftRelAux.ret_left](declarations/liftrelaux-ret-left.md) | 1042 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [LiftRelAux.swap](declarations/liftrelaux-swap.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [LiftRelAux.ret_right](declarations/liftrelaux-ret-right.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [LiftRelRec.lem](declarations/liftrelrec-lem.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [liftRel_rec](declarations/liftrel-rec.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cf5e455a257bcae55abe179be9eb1eab36aa9c4e714fe29c9388d3ede4f4110 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
