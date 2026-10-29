# Seq Defs Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**107 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant919c5a78c1bf6463b3606030b97b940bac3e2e0229a667df69b39b7ecb761bcf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2bb92ab1e4371027d346e21d0930684439009ec3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SeqDefsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeq](declarations/isseq.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Seq](declarations/seq.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Seq1](declarations/seq1.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [get?](declarations/get.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [val_eq_get](declarations/val-eq-get.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [get?_mk](declarations/get-mk.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_stable](declarations/le-stable.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ge_stable](declarations/ge-stable.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [nil](declarations/nil.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [cons](declarations/cons.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [val_cons](declarations/val-cons.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [get?_nil](declarations/get-nil.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [get?_zero_eq_none](declarations/get-zero-eq-none.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [get?_cons_zero](declarations/get-cons-zero.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [get?_cons_succ](declarations/get-cons-succ.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cons_ne_nil](declarations/cons-ne-nil.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nil_ne_cons](declarations/nil-ne-cons.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons_injective2](declarations/cons-injective2.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cons_left_injective](declarations/cons-left-injective.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cons_right_injective](declarations/cons-right-injective.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cons_eq_cons](declarations/cons-eq-cons.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [head](declarations/head.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tail](declarations/tail.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [destruct](declarations/destruct.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [head_eq_destruct](declarations/head-eq-destruct.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [get?_tail](declarations/get-tail.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [destruct_nil](declarations/destruct-nil.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [destruct_cons](declarations/destruct-cons.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [destruct_eq_none](declarations/destruct-eq-none.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [destruct_eq_cons](declarations/destruct-eq-cons.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [head_nil](declarations/head-nil.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [head_cons](declarations/head-cons.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tail_nil](declarations/tail-nil.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tail_cons](declarations/tail-cons.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [head_eq_some](declarations/head-eq-some.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [head_eq_none](declarations/head-eq-none.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [head_eq_none_iff](declarations/head-eq-none-iff.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [recOn](declarations/recon.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [omap](declarations/omap.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Corec.f](declarations/corec-f.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [corec](declarations/corec.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [corec_eq](declarations/corec-eq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [corec_nil](declarations/corec-nil.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [corec_cons](declarations/corec-cons.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [BisimO](declarations/bisimo.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IsBisimulation](declarations/isbisimulation.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eq_of_bisim](declarations/eq-of-bisim-source-edition-2.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [eq_of_bisim'](declarations/eq-of-bisim.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eq_of_bisim_strong](declarations/eq-of-bisim-strong.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coinduction](declarations/coinduction.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coinduction2](declarations/coinduction2.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TerminatedAt](declarations/terminatedat.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [terminatedAtDecidable](declarations/terminatedatdecidable.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [Terminates](declarations/terminates.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [length](declarations/length.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [length'](declarations/length-source-edition-2.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [terminated_stable](declarations/terminated-stable.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [not_terminates_iff](declarations/not-terminates-iff.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [terminatedAt_nil](declarations/terminatedat-nil.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [cons_not_terminatedAt_zero](declarations/cons-not-terminatedat-zero.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [cons_terminatedAt_succ_iff](declarations/cons-terminatedat-succ-iff.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [terminates_nil](declarations/terminates-nil.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [terminates_cons_iff](declarations/terminates-cons-iff.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [terminatedAt_zero_iff](declarations/terminatedat-zero-iff.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [Mem](declarations/mem.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [get?_mem](declarations/get-mem.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_iff_exists_get?](declarations/mem-iff-exists-get.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [notMem_nil](declarations/notmem-nil.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_cons](declarations/mem-cons.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [eq_or_mem_of_mem_cons](declarations/eq-or-mem-of-mem-cons.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_cons_iff](declarations/mem-cons-iff.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_rec_on](declarations/mem-rec-on.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [ofList](declarations/oflist.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [coeList](declarations/coelist.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [ofList_nil](declarations/oflist-nil.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [ofList_get?](declarations/oflist-get.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [ofList_injective](declarations/oflist-injective.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [ofStream](declarations/ofstream.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [coeStream](declarations/coestream.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [ofMLList](declarations/ofmllist.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [coeMLList](declarations/coemllist.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [toMLList](declarations/tomllist.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [forceToList](declarations/forcetolist.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [take](declarations/take.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [toList](declarations/tolist-source-edition-2.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [toStream](declarations/tostream.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toListOrStream](declarations/tolistorstream.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [toList'](declarations/tolist.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [append](declarations/append.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [map](declarations/map.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [join](declarations/join.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [drop](declarations/drop.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [splitAt](declarations/splitat.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [zipWith](declarations/zipwith.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [zip](declarations/zip.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [unzip](declarations/unzip.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [nats](declarations/nats.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [enum](declarations/enum.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [fold](declarations/fold.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [update](declarations/update.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [set](declarations/set.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [Pairwise](declarations/pairwise.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ede1426382e07d8840a8de78881ef7d55b2c1cdc4fb18a759b80802885c3af32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant919c5a78c1bf6463b3606030b97b940bac3e2e0229a667df69b39b7ecb761bcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
