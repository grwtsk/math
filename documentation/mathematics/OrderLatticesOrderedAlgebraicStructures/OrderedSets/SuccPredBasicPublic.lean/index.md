# Succ Pred Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**122 observed declarations and anonymous commands**, 108 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `579dab7a4a7f5879e253555c02a4b61709c03f24`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [SuccOrder](declarations/succorder.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [PredOrder](declarations/predorder.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [SuccOrder.ofSuccLeIff](declarations/succorder-ofsuccleiff.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SuccOrder.ofCore](declarations/succorder-ofcore.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [SuccOrder.ofLinearWellFoundedLT](declarations/succorder-oflinearwellfoundedlt.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [succ](declarations/succ.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_succ](declarations/le-succ.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [max_of_succ_le](declarations/max-of-succ-le.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [succ_le_of_lt](declarations/succ-le-of-lt.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [succ_le_iff_isMax](declarations/succ-le-iff-ismax.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lt_succ_iff_not_isMax](declarations/lt-succ-iff-not-ismax.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [wcovBy_succ](declarations/wcovby-succ.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [covBy_succ_of_not_isMax](declarations/covby-succ-of-not-ismax.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lt_succ_of_le_of_not_isMax](declarations/lt-succ-of-le-of-not-ismax.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [succ_le_iff_of_not_isMax](declarations/succ-le-iff-of-not-ismax.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [succ_le_iff_of_not_isMax'](declarations/succ-le-iff-of-not-ismax-source-edition-2.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [succ_lt_succ_of_not_isMax](declarations/succ-lt-succ-of-not-ismax.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [succ_le_succ](declarations/succ-le-succ.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [succ_mono](declarations/succ-mono.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [le_succ_of_wcovBy](declarations/le-succ-of-wcovby.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [le_succ_iterate](declarations/le-succ-iterate.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isMax_iterate_succ_of_eq_of_lt](declarations/ismax-iterate-succ-of-eq-of-lt.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isMax_iterate_succ_of_eq_of_ne](declarations/ismax-iterate-succ-of-eq-of-ne.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Iic_subset_Iio_succ_of_not_isMax](declarations/iic-subset-iio-succ-of-not-ismax.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Ici_succ_of_not_isMax](declarations/ici-succ-of-not-ismax.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Icc_subset_Ico_succ_right_of_not_isMax](declarations/icc-subset-ico-succ-right-of-not-ismax.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Ioc_subset_Ioo_succ_right_of_not_isMax](declarations/ioc-subset-ioo-succ-right-of-not-ismax.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Icc_succ_left_of_not_isMax](declarations/icc-succ-left-of-not-ismax.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Ico_succ_left_of_not_isMax](declarations/ico-succ-left-of-not-ismax.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lt_succ](declarations/lt-succ.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lt_succ_of_le](declarations/lt-succ-of-le.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [succ_le_iff](declarations/succ-le-iff.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [succ_lt_succ](declarations/succ-lt-succ.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [succ_strictMono](declarations/succ-strictmono.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [covBy_succ](declarations/covby-succ.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Iic_subset_Iio_succ](declarations/iic-subset-iio-succ.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Ici_succ](declarations/ici-succ.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Icc_subset_Ico_succ_right](declarations/icc-subset-ico-succ-right.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Ioc_subset_Ioo_succ_right](declarations/ioc-subset-ioo-succ-right.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Icc_succ_left](declarations/icc-succ-left.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Ico_succ_left](declarations/ico-succ-left.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [succ_eq_iff_isMax](declarations/succ-eq-iff-ismax.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [le_iff_eq_or_succ_le](declarations/le-iff-eq-or-succ-le.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [le_iff_eq_or_succ_le'](declarations/le-iff-eq-or-succ-le-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [le_and_le_succ_iff](declarations/le-and-le-succ-iff.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_succ_and_le_iff](declarations/le-succ-and-le-iff.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [succ_eq_of_covBy](declarations/succ-eq-of-covby.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [_root_.OrderIso.map_succ](declarations/root-orderiso-map-succ.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [succ_eq_iff_covBy](declarations/succ-eq-iff-covby.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [succ_top](declarations/succ-top.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [succ_le_iff_eq_top](declarations/succ-le-iff-eq-top.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [lt_succ_iff_ne_top](declarations/lt-succ-iff-ne-top.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [bot_lt_succ](declarations/bot-lt-succ.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [succ_ne_bot](declarations/succ-ne-bot.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [succ_max](declarations/succ-max.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [succ_min](declarations/succ-min.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [le_of_lt_succ](declarations/le-of-lt-succ.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [lt_succ_iff_of_not_isMax](declarations/lt-succ-iff-of-not-ismax.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [lt_succ_iff_of_not_isMax'](declarations/lt-succ-iff-of-not-ismax-source-edition-2.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [succ_lt_succ_iff_of_not_isMax](declarations/succ-lt-succ-iff-of-not-ismax.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [succ_le_succ_iff_of_not_isMax](declarations/succ-le-succ-iff-of-not-ismax.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Iio_succ_of_not_isMax](declarations/iio-succ-of-not-ismax.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Ico_succ_right_of_not_isMax](declarations/ico-succ-right-of-not-ismax.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Ioo_succ_right_of_not_isMax](declarations/ioo-succ-right-of-not-ismax.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [succ_eq_succ_iff_of_not_isMax](declarations/succ-eq-succ-iff-of-not-ismax.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [le_succ_iff_eq_or_le](declarations/le-succ-iff-eq-or-le.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lt_succ_iff_eq_or_lt_of_not_isMax](declarations/lt-succ-iff-eq-or-lt-of-not-ismax.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [not_isMin_succ](declarations/not-ismin-succ.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Iic_succ](declarations/iic-succ.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Icc_succ_right](declarations/icc-succ-right.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Ioc_succ_right](declarations/ioc-succ-right.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Iio_succ_eq_insert_of_not_isMax](declarations/iio-succ-eq-insert-of-not-ismax.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Ico_succ_right_eq_insert_of_not_isMax](declarations/ico-succ-right-eq-insert-of-not-ismax.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Ioo_succ_right_eq_insert_of_not_isMax](declarations/ioo-succ-right-eq-insert-of-not-ismax.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lt_succ_iff](declarations/lt-succ-iff.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [succ_le_succ_iff](declarations/succ-le-succ-iff.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [succ_lt_succ_iff](declarations/succ-lt-succ-iff.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Iio_succ](declarations/iio-succ.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Ico_succ_right](declarations/ico-succ-right.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Ioo_succ_right](declarations/ioo-succ-right.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [succ_eq_succ_iff](declarations/succ-eq-succ-iff.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [succ_injective](declarations/succ-injective.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [succ_ne_succ_iff](declarations/succ-ne-succ-iff.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lt_succ_iff_eq_or_lt](declarations/lt-succ-iff-eq-or-lt.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lt_succ_iff_eq_or_gt](declarations/lt-succ-iff-eq-or-gt.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Iio_succ_eq_insert](declarations/iio-succ-eq-insert.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Ico_succ_right_eq_insert](declarations/ico-succ-right-eq-insert.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Ioo_succ_right_eq_insert](declarations/ioo-succ-right-eq-insert.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Ioo_eq_empty_iff_le_succ](declarations/ioo-eq-empty-iff-le-succ.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lt_succ_bot_iff](declarations/lt-succ-bot-iff.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [le_succ_bot_iff](declarations/le-succ-bot-iff.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [(anonymous)](declarations/instance.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [succ_eq_sInf](declarations/succ-eq-sinf.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [succ_eq_iInf](declarations/succ-eq-iinf.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [succ_eq_csInf](declarations/succ-eq-csinf.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [isMin_iterate_pred_of_eq_of_lt](declarations/ismin-iterate-pred-of-eq-of-lt.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [isMin_iterate_pred_of_eq_of_ne](declarations/ismin-iterate-pred-of-eq-of-ne.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [le_succ_pred](declarations/le-succ-pred.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [pred_le_iff_le_succ](declarations/pred-le-iff-le-succ.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [gc_pred_succ](declarations/gc-pred-succ.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [succ_pred_of_not_isMin](declarations/succ-pred-of-not-ismin.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [succ_pred](declarations/succ-pred.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [pred_succ_iterate_of_not_isMax](declarations/pred-succ-iterate-of-not-ismax.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [succ_coe_of_isMax](declarations/succ-coe-of-ismax.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [succ_coe_of_not_isMax](declarations/succ-coe-of-not-ismax.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [succ_coe](declarations/succ-coe.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [orderPred_top](declarations/orderpred-top.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [orderPred_coe](declarations/orderpred-coe.md) | 795 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [pred_untop](declarations/pred-untop.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `abbrev` | [SuccOrder.ofOrderIso](declarations/succorder-oforderiso.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [Set.OrdConnected.predOrder](declarations/set-ordconnected-predorder.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [coe_pred_of_mem](declarations/coe-pred-of-mem.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [isMin_of_pred_notMem](declarations/ismin-of-pred-notmem.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [pred_notMem_iff_isMin](declarations/pred-notmem-iff-ismin.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [Set.OrdConnected.succOrder](declarations/set-ordconnected-succorder.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [coe_succ_of_mem](declarations/coe-succ-of-mem.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [isMax_of_succ_notMem](declarations/ismax-of-succ-notmem.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [succ_notMem_iff_isMax](declarations/succ-notmem-iff-ismax.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2f8ec82762675365bddfe4e83c54a761ee89f4afba58ae3df54d9d5bb7510ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant62caa6fa9c2d6825960d7b211ca87df2454670e71d4a482f6ac20568f693a667.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
