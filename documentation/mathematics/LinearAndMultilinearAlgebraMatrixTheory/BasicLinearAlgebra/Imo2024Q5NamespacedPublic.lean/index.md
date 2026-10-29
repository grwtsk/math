# Imo2024 Q5 Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd43e09546994d5f3a34803d1b5d9af4fc0b4db3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5NamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cell](declarations/cell.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [InteriorRow](declarations/interiorrow.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [MonsterData](declarations/monsterdata.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [MonsterData.monsterCells](declarations/monsterdata-monstercells.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Adjacent](declarations/adjacent.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Path](declarations/path.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Path.firstMonster](declarations/path-firstmonster.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Strategy](declarations/strategy.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Strategy.play](declarations/strategy-play.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Strategy.WinsIn](declarations/strategy-winsin.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Strategy.ForcesWinIn](declarations/strategy-forceswinin.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Cell.reflect](declarations/cell-reflect.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [row1](declarations/row1.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [coe_coe_row1](declarations/coe-coe-row1.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [row2](declarations/row2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [MonsterData.reflect](declarations/monsterdata-reflect.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [MonsterData.reflect_reflect](declarations/monsterdata-reflect-reflect.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [MonsterData.notMem_monsterCells_of_fst_eq_zero](declarations/monsterdata-notmem-monstercells-of-fst-eq-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [MonsterData.le_N_of_mem_monsterCells](declarations/monsterdata-le-n-of-mem-monstercells.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [MonsterData.mk_mem_monsterCells_iff_of_le](declarations/monsterdata-mk-mem-monstercells-iff-of-le.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [MonsterData.mem_monsterCells_iff_of_le](declarations/monsterdata-mem-monstercells-iff-of-le.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [MonsterData.mk_mem_monsterCells_iff](declarations/monsterdata-mk-mem-monstercells-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Adjacent.le_of_lt](declarations/adjacent-le-of-lt.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [Path.exists_mem_fst_eq](declarations/path-exists-mem-fst-eq.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Path.exists_mem_le_fst](declarations/path-exists-mem-le-fst.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Path.findFstEq](declarations/path-findfsteq.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Path.find_eq_some_findFstEq](declarations/path-find-eq-some-findfsteq.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Path.findFstEq_mem_cells](declarations/path-findfsteq-mem-cells.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Path.findFstEq_fst](declarations/path-findfsteq-fst.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [find?_eq_eq_find?_le](declarations/find-eq-eq-find-le.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [Path.findFstEq_eq_find?_le](declarations/path-findfsteq-eq-find-le.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [Path.firstMonster_isSome](declarations/path-firstmonster-issome.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [Path.firstMonster_eq_none](declarations/path-firstmonster-eq-none.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Path.one_lt_length_cells](declarations/path-one-lt-length-cells.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Path.tail](declarations/path-tail.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [Path.tail_induction](declarations/path-tail-induction.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Path.tail_findFstEq](declarations/path-tail-findfsteq.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Path.tail_firstMonster](declarations/path-tail-firstmonster.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [Path.firstMonster_eq_of_findFstEq_mem](declarations/path-firstmonster-eq-of-findfsteq-mem.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Path.findFstEq_fst_sub_one_mem](declarations/path-findfsteq-fst-sub-one-mem.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Path.mem_of_firstMonster_eq_some](declarations/path-mem-of-firstmonster-eq-some.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Path.ofFn](declarations/path-offn.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Path.ofFn_cells](declarations/path-offn-cells.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Path.ofFn_firstMonster_eq_none](declarations/path-offn-firstmonster-eq-none.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [Path.reflect](declarations/path-reflect.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Path.firstMonster_reflect](declarations/path-firstmonster-reflect.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [Strategy.play_comp_castLE](declarations/strategy-play-comp-castle.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [Strategy.play_apply_of_le](declarations/strategy-play-apply-of-le.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [Strategy.play_zero](declarations/strategy-play-zero.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [Strategy.play_one](declarations/strategy-play-one.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [Strategy.play_two](declarations/strategy-play-two.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Strategy.WinsIn.mono](declarations/strategy-winsin-mono.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Strategy.ForcesWinIn.mono](declarations/strategy-forceswinin-mono.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [baseMonsterData](declarations/basemonsterdata.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [monsterData12](declarations/monsterdata12.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [monsterData12_apply_row2](declarations/monsterdata12-apply-row2.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [row1_mem_monsterCells_monsterData12](declarations/row1-mem-monstercells-monsterdata12.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [row2_mem_monsterCells_monsterData12](declarations/row2-mem-monstercells-monsterdata12.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Strategy.not_forcesWinIn_two](declarations/strategy-not-forceswinin-two.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Strategy.ForcesWinIn.three_le](declarations/strategy-forceswinin-three-le.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [fn0](declarations/fn0.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [injective_fn0](declarations/injective-fn0.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [path0](declarations/path0.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [fn1OfNotEdge](declarations/fn1ofnotedge.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [path1OfNotEdge](declarations/path1ofnotedge.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [fn2OfNotEdge](declarations/fn2ofnotedge.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [path2OfNotEdge](declarations/path2ofnotedge.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [fn1OfEdge0](declarations/fn1ofedge0.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [path1OfEdge0](declarations/path1ofedge0.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [path1OfEdgeN](declarations/path1ofedgen.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [fn2OfEdge0](declarations/fn2ofedge0.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [fn2OfEdge0_apply_eq_fn1OfEdge0_apply_of_lt](declarations/fn2ofedge0-apply-eq-fn1ofedge0-apply-of-lt.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [path2OfEdge0](declarations/path2ofedge0.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [path2OfEdge0Def](declarations/path2ofedge0def.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [path2OfEdgeNDef](declarations/path2ofedgendef.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [path1](declarations/path1.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [path2](declarations/path2.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [winningStrategy](declarations/winningstrategy.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [path0_firstMonster_eq_apply_row1](declarations/path0-firstmonster-eq-apply-row1.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [winningStrategy_play_one](declarations/winningstrategy-play-one.md) | 781 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [winningStrategy_play_two](declarations/winningstrategy-play-two.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [path1_firstMonster_of_not_edge](declarations/path1-firstmonster-of-not-edge.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [path2_firstMonster_of_not_edge](declarations/path2-firstmonster-of-not-edge.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [winningStrategy_play_one_eq_none_or_play_two_eq_none_of_not_edge](declarations/winningstrategy-play-one-eq-none-or-play-two-eq-none-of-not-edge.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [path2OfEdge0_firstMonster_eq_none_of_path1OfEdge0_firstMonster_eq_some](declarations/path2ofedge0-firstmonster-eq-none-of-path1ofedge0-firstmonster-eq-some.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [winningStrategy_play_one_eq_none_or_play_two_eq_none_of_edge_zero](declarations/winningstrategy-play-one-eq-none-or-play-two-eq-none-of-edge-zero.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [winningStrategy_play_one_of_edge_N](declarations/winningstrategy-play-one-of-edge-n.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [winningStrategy_play_two_of_edge_N](declarations/winningstrategy-play-two-of-edge-n.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [winningStrategy_play_one_eq_none_or_play_two_eq_none_of_edge_N](declarations/winningstrategy-play-one-eq-none-or-play-two-eq-none-of-edge-n.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [winningStrategy_play_one_eq_none_or_play_two_eq_none](declarations/winningstrategy-play-one-eq-none-or-play-two-eq-none.md) | 1029 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [winningStrategy_forcesWinIn_three](declarations/winningstrategy-forceswinin-three.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [answer](declarations/answer.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [result](declarations/result.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54f5652b08a6e398a0dba8eaa1cfce38ccd8c36f459013fa7adc8418e39a6bb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant89fe429f017a63483141b40a362a9e5d9b0acedb0d2d289db7f73608017b21ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
