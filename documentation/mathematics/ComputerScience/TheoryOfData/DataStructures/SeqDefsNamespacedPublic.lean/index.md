# Seq Defs Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**107 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant1c3d3502521a363b6fc5e4f1ec6de599737c31dfbd73d233d22540671df620c8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cc0b64be24862aea76108761c07701a27d69933`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SeqDefsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeq](declarations/isseq.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Seq](declarations/seq.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Seq1](declarations/seq1.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [get?](declarations/get.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [val_eq_get](declarations/val-eq-get.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [get?_mk](declarations/get-mk.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_stable](declarations/le-stable.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ge_stable](declarations/ge-stable.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [nil](declarations/nil.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [cons](declarations/cons.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [val_cons](declarations/val-cons.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [get?_nil](declarations/get-nil.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [get?_zero_eq_none](declarations/get-zero-eq-none.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [get?_cons_zero](declarations/get-cons-zero.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [get?_cons_succ](declarations/get-cons-succ.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cons_ne_nil](declarations/cons-ne-nil.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nil_ne_cons](declarations/nil-ne-cons.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons_injective2](declarations/cons-injective2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cons_left_injective](declarations/cons-left-injective.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cons_right_injective](declarations/cons-right-injective.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cons_eq_cons](declarations/cons-eq-cons.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [head](declarations/head.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [tail](declarations/tail.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [destruct](declarations/destruct.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [head_eq_destruct](declarations/head-eq-destruct.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [get?_tail](declarations/get-tail.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [destruct_nil](declarations/destruct-nil.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [destruct_cons](declarations/destruct-cons.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [destruct_eq_none](declarations/destruct-eq-none.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [destruct_eq_cons](declarations/destruct-eq-cons.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [head_nil](declarations/head-nil.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [head_cons](declarations/head-cons.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tail_nil](declarations/tail-nil.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tail_cons](declarations/tail-cons.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [head_eq_some](declarations/head-eq-some.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [head_eq_none](declarations/head-eq-none.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [head_eq_none_iff](declarations/head-eq-none-iff.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [recOn](declarations/recon.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [omap](declarations/omap.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Corec.f](declarations/corec-f.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [corec](declarations/corec.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [corec_eq](declarations/corec-eq.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [corec_nil](declarations/corec-nil.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [corec_cons](declarations/corec-cons.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [BisimO](declarations/bisimo.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [IsBisimulation](declarations/isbisimulation.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eq_of_bisim](declarations/eq-of-bisim.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [eq_of_bisim'](declarations/eq-of-bisim-source-edition-2.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eq_of_bisim_strong](declarations/eq-of-bisim-strong.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coinduction](declarations/coinduction.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [coinduction2](declarations/coinduction2.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TerminatedAt](declarations/terminatedat.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [terminatedAtDecidable](declarations/terminatedatdecidable.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [Terminates](declarations/terminates.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [length](declarations/length-source-edition-2.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [length'](declarations/length.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [terminated_stable](declarations/terminated-stable.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [not_terminates_iff](declarations/not-terminates-iff.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [terminatedAt_nil](declarations/terminatedat-nil.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [cons_not_terminatedAt_zero](declarations/cons-not-terminatedat-zero.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [cons_terminatedAt_succ_iff](declarations/cons-terminatedat-succ-iff.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [terminates_nil](declarations/terminates-nil.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [terminates_cons_iff](declarations/terminates-cons-iff.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [terminatedAt_zero_iff](declarations/terminatedat-zero-iff.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [Mem](declarations/mem.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [get?_mem](declarations/get-mem.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mem_iff_exists_get?](declarations/mem-iff-exists-get.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [notMem_nil](declarations/notmem-nil.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [mem_cons](declarations/mem-cons.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mem_cons_of_mem](declarations/mem-cons-of-mem.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [eq_or_mem_of_mem_cons](declarations/eq-or-mem-of-mem-cons.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_cons_iff](declarations/mem-cons-iff.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [mem_rec_on](declarations/mem-rec-on.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [ofList](declarations/oflist.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [coeList](declarations/coelist.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [ofList_nil](declarations/oflist-nil.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [ofList_get?](declarations/oflist-get.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [ofList_injective](declarations/oflist-injective.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [ofStream](declarations/ofstream.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [coeStream](declarations/coestream.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [ofMLList](declarations/ofmllist.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [coeMLList](declarations/coemllist.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [toMLList](declarations/tomllist.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [forceToList](declarations/forcetolist.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [take](declarations/take.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [toList](declarations/tolist-source-edition-2.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [toStream](declarations/tostream.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [toListOrStream](declarations/tolistorstream.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [toList'](declarations/tolist.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [append](declarations/append.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [map](declarations/map.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [join](declarations/join.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [drop](declarations/drop.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [splitAt](declarations/splitat.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [zipWith](declarations/zipwith.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [zip](declarations/zip.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [unzip](declarations/unzip.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [nats](declarations/nats.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [enum](declarations/enum.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [fold](declarations/fold.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [update](declarations/update.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [set](declarations/set.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [Pairwise](declarations/pairwise.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd06380fcdfe51c8c2f969eb50f1617be872c1ecc0b7797bf62f78e3f232379d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant1c3d3502521a363b6fc5e4f1ec6de599737c31dfbd73d233d22540671df620c8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
