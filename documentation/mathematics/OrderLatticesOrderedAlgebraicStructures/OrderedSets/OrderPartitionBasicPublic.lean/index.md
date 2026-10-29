# Order Partition Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**90 observed declarations and anonymous commands**, 74 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant938549bddbb4dd7a429679ab94ef6c4d330d2b0e0526d6f3a009b47b8e616674.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80493a048ab16bb1db1a5cf2fa3b5028ea865e61`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Partition](declarations/partition.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Simps.coe](declarations/simps-coe.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_parts](declarations/coe-parts.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [ext](declarations/ext.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [sSupIndep](declarations/ssupindep.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [disjoint](declarations/disjoint.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [pairwiseDisjoint](declarations/pairwisedisjoint.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [eq_or_disjoint](declarations/eq-or-disjoint.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eq_of_not_disjoint](declarations/eq-of-not-disjoint.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sSup_eq](declarations/ssup-eq.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [iSup_eq](declarations/isup-eq.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [le_of_mem](declarations/le-of-mem.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [parts_nonempty](declarations/parts-nonempty.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [bot_notMem](declarations/bot-notmem.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [ne_bot_of_mem](declarations/ne-bot-of-mem.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [bot_lt_of_mem](declarations/bot-lt-of-mem.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [copy](declarations/copy.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mem_copy_iff](declarations/mem-copy-iff.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [partscopyEquiv](declarations/partscopyequiv.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [removeBot](declarations/removebot.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [mem_removeBot](declarations/mem-removebot.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [notMem_of_bot](declarations/notmem-of-bot.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [ne_bot_of_mem'](declarations/ne-bot-of-mem-source-edition-2.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [le_def](declarations/le-def.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [exists_le_of_mem_le](declarations/exists-le-of-mem-le.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [existsUnique_of_mem_le](declarations/existsunique-of-mem-le.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instOrderTop](declarations/instordertop.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [top_def](declarations/top-def.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [parts_top](declarations/parts-top.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mem_top_iff](declarations/mem-top-iff.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [parts_top_subset](declarations/parts-top-subset.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instSemilatticeInf](declarations/instsemilatticeinf.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mem_inf_iff](declarations/mem-inf-iff.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [sUnion_eq](declarations/sunion-eq.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [nonempty_of_mem](declarations/nonempty-of-mem.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [empty_notMem](declarations/empty-notmem.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [subset_of_mem](declarations/subset-of-mem.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [mem_iff_exists](declarations/mem-iff-exists.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [eq_of_mem_inter](declarations/eq-of-mem-inter.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [eq_of_mem_of_mem](declarations/eq-of-mem-of-mem.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mem_iff_unique](declarations/mem-iff-unique.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [subset_sUnion_and_mem_iff_mem](declarations/subset-sunion-and-mem-iff-mem.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [subset_sUnion_iff_mem](declarations/subset-sunion-iff-mem.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [rep](declarations/rep.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [rep_mem](declarations/rep-mem.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [rep_mem_supp](declarations/rep-mem-supp.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [Rel](declarations/rel.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [rel_le_iff_le](declarations/rel-le-iff-le.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Rel.exists](declarations/rel-exists.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Rel.forall](declarations/rel-forall.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [rel_rfl_iff](declarations/rel-rfl-iff.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [Rel.symm](declarations/rel-symm.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [rel_comm](declarations/rel-comm.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Rel.trans](declarations/rel-trans.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Rel.left_mem](declarations/rel-left-mem.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [Rel.right_mem](declarations/rel-right-mem.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [rep_rel](declarations/rep-rel.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [partOf](declarations/partof.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [partOf_subset](declarations/partof-subset.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [mem_partOf_iff](declarations/mem-partof-iff.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [eq_partOf_of_mem](declarations/eq-partof-of-mem.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [mem_iff_mem_partOf_mem](declarations/mem-iff-mem-partof-mem.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [mem_partOf](declarations/mem-partof.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [partOf_mem](declarations/partof-mem.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [partOf_rep](declarations/partof-rep.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [mem_iff_exists_partOf](declarations/mem-iff-exists-partof.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [partOf_nonempty_iff](declarations/partof-nonempty-iff.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [partOf_eq_empty_iff](declarations/partof-eq-empty-iff.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [rel_iff_partOf_eq_partOf_of_mem](declarations/rel-iff-partof-eq-partof-of-mem.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [rel_iff_partOf_eq_partOf](declarations/rel-iff-partof-eq-partof.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `structure` | [IsRepFun](declarations/isrepfun.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [apply_mem](declarations/apply-mem.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [image_subset](declarations/image-subset.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [mapsTo](declarations/mapsto.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [mapsTo_of_disjoint](declarations/mapsto-of-disjoint.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [apply_mem_iff](declarations/apply-mem-iff.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [apply_eq_apply_iff_rel](declarations/apply-eq-apply-iff-rel.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [apply_eq_apply_iff](declarations/apply-eq-apply-iff-source-edition-2.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [forall_apply_eq_apply_iff](declarations/forall-apply-eq-apply-iff.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [apply_eq_apply_iff'](declarations/apply-eq-apply-iff.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [idem](declarations/idem.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [apply_apply](declarations/apply-apply.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [exists_extend_partial](declarations/exists-extend-partial-source-edition-2.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [exists_extend_partial'](declarations/exists-extend-partial.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [nonempty](declarations/nonempty.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dccf50d8fe74cc3bc7f01b473fba95e04572d6b4855b7552707f506872d107f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant938549bddbb4dd7a429679ab94ef6c4d330d2b0e0526d6f3a009b47b8e616674.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
