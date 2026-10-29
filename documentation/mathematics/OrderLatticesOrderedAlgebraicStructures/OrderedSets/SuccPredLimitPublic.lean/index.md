# Succ Pred Limit Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**99 observed declarations and anonymous commands**, 91 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant11617b0a2d99c104fb4312d686714f7fb01836402fe9c519b8fd1bc9bafa3135.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b7880702370b918231a2ea0bda048017e1df197`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredLimitPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSuccPrelimit](declarations/issuccprelimit.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [not_isSuccPrelimit_iff](declarations/not-issuccprelimit-iff.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsSuccPrelimit.of_dense](declarations/issuccprelimit-of-dense.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isSuccPrelimit_toDual_iff](declarations/issuccprelimit-todual-iff.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [IsSuccLimit](declarations/issucclimit.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [IsPredLimit](declarations/ispredlimit.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isSuccLimit_toDual_iff](declarations/issucclimit-todual-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [not_isSuccLimit_iff](declarations/not-issucclimit-iff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsSuccPrelimit.isSuccLimit_of_not_isMin](declarations/issuccprelimit-issucclimit-of-not-ismin.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isSuccPrelimit_iff_isSuccLimit_of_not_isMin](declarations/issuccprelimit-iff-issucclimit-of-not-ismin.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isSuccPrelimit_iff_isSuccLimit](declarations/issuccprelimit-iff-issucclimit.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [_root_.IsMin.not_isSuccLimit](declarations/root-ismin-not-issucclimit.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.IsMin.isSuccPrelimit](declarations/root-ismin-issuccprelimit.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isSuccPrelimit_iff_forall_lt_nonempty_Ioo](declarations/issuccprelimit-iff-forall-lt-nonempty-ioo.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsSuccPrelimit.nonempty_Ioo_of_lt](declarations/issuccprelimit-nonempty-ioo-of-lt.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsSuccPrelimit.lt_iff_nonempty_Ioo](declarations/issuccprelimit-lt-iff-nonempty-ioo.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsSuccLimit.lt_iff_nonempty_Ioo](declarations/issucclimit-lt-iff-nonempty-ioo.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsSuccLimit.nonempty_Iio](declarations/issucclimit-nonempty-iio.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsSuccPrelimit.noMaxOrder_Iio](declarations/issuccprelimit-nomaxorder-iio.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isSuccPrelimit_bot](declarations/issuccprelimit-bot.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [not_isSuccLimit_bot](declarations/not-issucclimit-bot.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsSuccLimit.bot_lt](declarations/issucclimit-bot-lt.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsSuccLimit.ne_bot](declarations/issucclimit-ne-bot.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [IsSuccLimit.pos](declarations/issucclimit-pos.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsSuccLimit.ne_zero](declarations/issucclimit-ne-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsSuccPrelimit.subtypeVal](declarations/issuccprelimit-subtypeval.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsSuccLimit.subtypeVal](declarations/issucclimit-subtypeval.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsSuccPrelimit.mid](declarations/issuccprelimit-mid.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.WithTop.isSuccPrelimit_coe_iff](declarations/root-withtop-issuccprelimit-coe-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [_root_.WithTop.isSuccPrelimit_top](declarations/root-withtop-issuccprelimit-top.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [_root_.WithTop.isSuccPrelimit_iff](declarations/root-withtop-issuccprelimit-iff.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [_root_.WithTop.isSuccLimit_iff](declarations/root-withtop-issucclimit-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [_root_.WithTop.isSuccLimit_coe_iff](declarations/root-withtop-issucclimit-coe-iff.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [_root_.WithTop.isSuccLimit_top](declarations/root-withtop-issucclimit-top.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [_root_.WithTop.isPredPrelimit_iff](declarations/root-withtop-ispredprelimit-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.WithTop.isPredLimit_coe_iff](declarations/root-withtop-ispredlimit-coe-iff.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [_root_.WithTop.isPredLimit_iff](declarations/root-withtop-ispredlimit-iff.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsSuccPrelimit.isMax](declarations/issuccprelimit-ismax.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsSuccLimit.isMax](declarations/issucclimit-ismax.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [not_isSuccPrelimit_succ_of_not_isMax](declarations/not-issuccprelimit-succ-of-not-ismax.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [not_isSuccLimit_succ_of_not_isMax](declarations/not-issucclimit-succ-of-not-ismax.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsSuccPrelimit.succ_ne](declarations/issuccprelimit-succ-ne.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsSuccLimit.succ_ne](declarations/issucclimit-succ-ne.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [not_isSuccPrelimit_succ](declarations/not-issuccprelimit-succ.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [not_isSuccLimit_succ](declarations/not-issucclimit-succ.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsSuccPrelimit.isMin_of_noMax](declarations/issuccprelimit-ismin-of-nomax.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isSuccPrelimit_iff_of_noMax](declarations/issuccprelimit-iff-of-nomax.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_isSuccLimit_of_noMax](declarations/not-issucclimit-of-nomax.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [not_isSuccPrelimit_of_noMax](declarations/not-issuccprelimit-of-nomax.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isSuccLimit_iff_of_orderBot](declarations/issucclimit-iff-of-orderbot.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isSuccPrelimit_of_succ_ne](declarations/issuccprelimit-of-succ-ne.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [not_isSuccPrelimit_iff_succ_eq](declarations/not-issuccprelimit-iff-succ-eq.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [mem_range_succ_of_not_isSuccPrelimit](declarations/mem-range-succ-of-not-issuccprelimit.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mem_range_succ_or_isSuccPrelimit](declarations/mem-range-succ-or-issuccprelimit.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isMin_or_mem_range_succ_or_isSuccLimit](declarations/ismin-or-mem-range-succ-or-issucclimit.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isSuccPrelimit_of_succ_lt](declarations/issuccprelimit-of-succ-lt.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [IsSuccPrelimit.succ_lt](declarations/issuccprelimit-succ-lt.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [IsSuccLimit.succ_lt](declarations/issucclimit-succ-lt.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [IsSuccPrelimit.succ_lt_iff](declarations/issuccprelimit-succ-lt-iff.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [IsSuccLimit.succ_lt_iff](declarations/issucclimit-succ-lt-iff.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isSuccPrelimit_iff_succ_lt](declarations/issuccprelimit-iff-succ-lt.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isSuccPrelimit_iff_succ_ne](declarations/issuccprelimit-iff-succ-ne.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [not_isSuccPrelimit_iff_mem_range_succ](declarations/not-issuccprelimit-iff-mem-range-succ.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsSuccPrelimit.isMin](declarations/issuccprelimit-ismin.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isSuccPrelimit_iff_isMin](declarations/issuccprelimit-iff-ismin.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [not_isSuccLimit_of_isSuccArchimedean](declarations/not-issucclimit-of-issuccarchimedean.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [not_isSuccPrelimit_of_isSuccArchimedean](declarations/not-issuccprelimit-of-issuccarchimedean.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [isSuccPrelimit_iff_of_orderBot](declarations/issuccprelimit-iff-of-orderbot.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [_root_.WithTop.isSuccPrelimit_iff_of_isSuccArchimedean](declarations/root-withtop-issuccprelimit-iff-of-issuccarchimedean.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [_root_.WithTop.isSuccLimit_iff_of_isSuccArchimedean](declarations/root-withtop-issucclimit-iff-of-issuccarchimedean.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [IsSuccPrelimit.isLUB_Iio](declarations/issuccprelimit-islub-iio.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [IsSuccLimit.isLUB_Iio](declarations/issucclimit-islub-iio.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [IsSuccPrelimit.le_iff_forall_le](declarations/issuccprelimit-le-iff-forall-le.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [IsSuccLimit.le_iff_forall_le](declarations/issucclimit-le-iff-forall-le.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [_root_.IsLUB.isSuccPrelimit_of_notMem](declarations/root-islub-issuccprelimit-of-notmem.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [_root_.IsLUB.mem_of_not_isSuccPrelimit](declarations/root-islub-mem-of-not-issuccprelimit.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [_root_.IsLUB.isSuccLimit_of_notMem](declarations/root-islub-issucclimit-of-notmem.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [_root_.IsLUB.mem_of_not_isSuccLimit](declarations/root-islub-mem-of-not-issucclimit.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [isLUB_Iio_iff_isSuccPrelimit](declarations/islub-iio-iff-issuccprelimit.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [IsSuccPrelimit.le_succ_iff](declarations/issuccprelimit-le-succ-iff.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [IsSuccLimit.le_succ_iff](declarations/issucclimit-le-succ-iff.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [isSuccPrelimitRecOn](declarations/issuccprelimitrecon.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [isSuccPrelimitRecOn_of_isSuccPrelimit](declarations/issuccprelimitrecon-of-issuccprelimit.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [isSuccPrelimitRecOn_succ_of_not_isMax](declarations/issuccprelimitrecon-succ-of-not-ismax.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [isSuccPrelimitRecOn_succ](declarations/issuccprelimitrecon-succ.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [isSuccLimitRecOn](declarations/issucclimitrecon.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [isSuccLimitRecOn_of_isSuccLimit](declarations/issucclimitrecon-of-issucclimit.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [isSuccLimitRecOn_succ_of_not_isMax](declarations/issucclimitrecon-succ-of-not-ismax.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [isSuccLimitRecOn_succ](declarations/issucclimitrecon-succ.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [isSuccLimitRecOn_of_isMin](declarations/issucclimitrecon-of-ismin.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [prelimitRecOn](declarations/prelimitrecon.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [prelimitRecOn_of_isSuccPrelimit](declarations/prelimitrecon-of-issuccprelimit.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [prelimitRecOn_succ_of_not_isMax](declarations/prelimitrecon-succ-of-not-ismax.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [prelimitRecOn_succ](declarations/prelimitrecon-succ.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [limitRecOn](declarations/limitrecon.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [limitRecOn_isMin](declarations/limitrecon-ismin.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [limitRecOn_of_isSuccLimit](declarations/limitrecon-of-issucclimit.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [limitRecOn_succ_of_not_isMax](declarations/limitrecon-succ-of-not-ismax.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [limitRecOn_succ](declarations/limitrecon-succ.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f9036c452fe6b6b25694d9da06ee39e2298f77862dea7fbb00954e8f2946cdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Limit/Variant11617b0a2d99c104fb4312d686714f7fb01836402fe9c519b8fd1bc9bafa3135.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
