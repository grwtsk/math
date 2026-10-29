# Succ Pred Basic Wcov By Succ

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**214 observed declarations and anonymous commands**, 190 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f84bf1acfeaf8625fc0ff6a0dd212c2412d22491`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicWcovBySucc.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [SuccOrder](declarations/succorder.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [PredOrder](declarations/predorder.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SuccOrder.ofSuccLeIff](declarations/succorder-ofsuccleiff.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [PredOrder.ofLePredIff](declarations/predorder-ofleprediff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [SuccOrder.ofCore](declarations/succorder-ofcore.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [PredOrder.ofCore](declarations/predorder-ofcore.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [SuccOrder.ofLinearWellFoundedLT](declarations/succorder-oflinearwellfoundedlt.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [PredOrder.ofLinearWellFoundedGT](declarations/predorder-oflinearwellfoundedgt.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [succ](declarations/succ.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_succ](declarations/le-succ.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [max_of_succ_le](declarations/max-of-succ-le.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [succ_le_of_lt](declarations/succ-le-of-lt.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [succ_le_iff_isMax](declarations/succ-le-iff-ismax.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lt_succ_iff_not_isMax](declarations/lt-succ-iff-not-ismax.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [wcovBy_succ](declarations/wcovby-succ.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [covBy_succ_of_not_isMax](declarations/covby-succ-of-not-ismax.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lt_succ_of_le_of_not_isMax](declarations/lt-succ-of-le-of-not-ismax.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [succ_le_iff_of_not_isMax](declarations/succ-le-iff-of-not-ismax.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [succ_lt_succ_of_not_isMax](declarations/succ-lt-succ-of-not-ismax.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [succ_le_succ](declarations/succ-le-succ.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [succ_mono](declarations/succ-mono.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [le_succ_of_wcovBy](declarations/le-succ-of-wcovby.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [le_succ_iterate](declarations/le-succ-iterate.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isMax_iterate_succ_of_eq_of_lt](declarations/ismax-iterate-succ-of-eq-of-lt.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isMax_iterate_succ_of_eq_of_ne](declarations/ismax-iterate-succ-of-eq-of-ne.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Iic_subset_Iio_succ_of_not_isMax](declarations/iic-subset-iio-succ-of-not-ismax.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Ici_succ_of_not_isMax](declarations/ici-succ-of-not-ismax.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Icc_subset_Ico_succ_right_of_not_isMax](declarations/icc-subset-ico-succ-right-of-not-ismax.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Ioc_subset_Ioo_succ_right_of_not_isMax](declarations/ioc-subset-ioo-succ-right-of-not-ismax.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Icc_succ_left_of_not_isMax](declarations/icc-succ-left-of-not-ismax.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Ico_succ_left_of_not_isMax](declarations/ico-succ-left-of-not-ismax.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lt_succ](declarations/lt-succ.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lt_succ_of_le](declarations/lt-succ-of-le.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [succ_le_iff](declarations/succ-le-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [succ_lt_succ](declarations/succ-lt-succ.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [succ_strictMono](declarations/succ-strictmono.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [covBy_succ](declarations/covby-succ.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Iic_subset_Iio_succ](declarations/iic-subset-iio-succ.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Ici_succ](declarations/ici-succ.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Icc_subset_Ico_succ_right](declarations/icc-subset-ico-succ-right.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Ioc_subset_Ioo_succ_right](declarations/ioc-subset-ioo-succ-right.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Icc_succ_left](declarations/icc-succ-left.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Ico_succ_left](declarations/ico-succ-left.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [succ_eq_iff_isMax](declarations/succ-eq-iff-ismax.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [le_iff_eq_or_succ_le](declarations/le-iff-eq-or-succ-le.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [le_le_succ_iff](declarations/le-le-succ-iff.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [succ_eq_of_covBy](declarations/succ-eq-of-covby.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [_root_.OrderIso.map_succ](declarations/root-orderiso-map-succ.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [succ_eq_iff_covBy](declarations/succ-eq-iff-covby.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [succ_top](declarations/succ-top.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [succ_le_iff_eq_top](declarations/succ-le-iff-eq-top.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [lt_succ_iff_ne_top](declarations/lt-succ-iff-ne-top.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [bot_lt_succ](declarations/bot-lt-succ.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [succ_ne_bot](declarations/succ-ne-bot.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [le_of_lt_succ](declarations/le-of-lt-succ.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [lt_succ_iff_of_not_isMax](declarations/lt-succ-iff-of-not-ismax.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [succ_lt_succ_iff_of_not_isMax](declarations/succ-lt-succ-iff-of-not-ismax.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [succ_le_succ_iff_of_not_isMax](declarations/succ-le-succ-iff-of-not-ismax.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Iio_succ_of_not_isMax](declarations/iio-succ-of-not-ismax.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Ico_succ_right_of_not_isMax](declarations/ico-succ-right-of-not-ismax.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Ioo_succ_right_of_not_isMax](declarations/ioo-succ-right-of-not-ismax.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [succ_eq_succ_iff_of_not_isMax](declarations/succ-eq-succ-iff-of-not-ismax.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [le_succ_iff_eq_or_le](declarations/le-succ-iff-eq-or-le.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [lt_succ_iff_eq_or_lt_of_not_isMax](declarations/lt-succ-iff-eq-or-lt-of-not-ismax.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [not_isMin_succ](declarations/not-ismin-succ.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Iic_succ](declarations/iic-succ.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Icc_succ_right](declarations/icc-succ-right.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Ioc_succ_right](declarations/ioc-succ-right.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Iio_succ_eq_insert_of_not_isMax](declarations/iio-succ-eq-insert-of-not-ismax.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Ico_succ_right_eq_insert_of_not_isMax](declarations/ico-succ-right-eq-insert-of-not-ismax.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Ioo_succ_right_eq_insert_of_not_isMax](declarations/ioo-succ-right-eq-insert-of-not-ismax.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lt_succ_iff](declarations/lt-succ-iff.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [succ_le_succ_iff](declarations/succ-le-succ-iff.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [succ_lt_succ_iff](declarations/succ-lt-succ-iff.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [Iio_succ](declarations/iio-succ.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Ico_succ_right](declarations/ico-succ-right.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Ioo_succ_right](declarations/ioo-succ-right.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [succ_eq_succ_iff](declarations/succ-eq-succ-iff.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [succ_injective](declarations/succ-injective.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [succ_ne_succ_iff](declarations/succ-ne-succ-iff.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [lt_succ_iff_eq_or_lt](declarations/lt-succ-iff-eq-or-lt.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [Iio_succ_eq_insert](declarations/iio-succ-eq-insert.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [Ico_succ_right_eq_insert](declarations/ico-succ-right-eq-insert.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [Ioo_succ_right_eq_insert](declarations/ioo-succ-right-eq-insert.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Ioo_eq_empty_iff_le_succ](declarations/ioo-eq-empty-iff-le-succ.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [lt_succ_bot_iff](declarations/lt-succ-bot-iff.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [le_succ_bot_iff](declarations/le-succ-bot-iff.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [succ_eq_sInf](declarations/succ-eq-sinf.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [succ_eq_iInf](declarations/succ-eq-iinf.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [succ_eq_csInf](declarations/succ-eq-csinf.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [pred](declarations/pred.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [pred_le](declarations/pred-le.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [min_of_le_pred](declarations/min-of-le-pred.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [le_pred_of_lt](declarations/le-pred-of-lt.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [le_pred_iff_isMin](declarations/le-pred-iff-ismin.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [pred_lt_iff_not_isMin](declarations/pred-lt-iff-not-ismin.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [pred_wcovBy](declarations/pred-wcovby.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [pred_covBy_of_not_isMin](declarations/pred-covby-of-not-ismin.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [pred_lt_of_not_isMin_of_le](declarations/pred-lt-of-not-ismin-of-le.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [le_pred_iff_of_not_isMin](declarations/le-pred-iff-of-not-ismin.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [pred_lt_pred_of_not_isMin](declarations/pred-lt-pred-of-not-ismin.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [pred_le_pred_of_not_isMin_of_le](declarations/pred-le-pred-of-not-ismin-of-le.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [pred_le_pred](declarations/pred-le-pred.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [pred_mono](declarations/pred-mono.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [pred_le_of_wcovBy](declarations/pred-le-of-wcovby.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [pred_iterate_le](declarations/pred-iterate-le.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [isMin_iterate_pred_of_eq_of_lt](declarations/ismin-iterate-pred-of-eq-of-lt.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [isMin_iterate_pred_of_eq_of_ne](declarations/ismin-iterate-pred-of-eq-of-ne.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [Ici_subset_Ioi_pred_of_not_isMin](declarations/ici-subset-ioi-pred-of-not-ismin.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [Iic_pred_of_not_isMin](declarations/iic-pred-of-not-ismin.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [Icc_subset_Ioc_pred_left_of_not_isMin](declarations/icc-subset-ioc-pred-left-of-not-ismin.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [Ico_subset_Ioo_pred_left_of_not_isMin](declarations/ico-subset-ioo-pred-left-of-not-ismin.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [Icc_pred_right_of_not_isMin](declarations/icc-pred-right-of-not-ismin.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [Ioc_pred_right_of_not_isMin](declarations/ioc-pred-right-of-not-ismin.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [pred_lt](declarations/pred-lt.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [pred_lt_of_le](declarations/pred-lt-of-le.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [le_pred_iff](declarations/le-pred-iff.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [pred_le_pred_of_le](declarations/pred-le-pred-of-le.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [pred_lt_pred](declarations/pred-lt-pred.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [pred_strictMono](declarations/pred-strictmono.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [pred_covBy](declarations/pred-covby.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [Ici_subset_Ioi_pred](declarations/ici-subset-ioi-pred.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [Iic_pred](declarations/iic-pred.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Icc_subset_Ioc_pred_left](declarations/icc-subset-ioc-pred-left.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Ico_subset_Ioo_pred_left](declarations/ico-subset-ioo-pred-left.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Icc_pred_right](declarations/icc-pred-right.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Ioc_pred_right](declarations/ioc-pred-right.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [pred_eq_iff_isMin](declarations/pred-eq-iff-ismin.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `lemma` | [le_iff_eq_or_le_pred](declarations/le-iff-eq-or-le-pred.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [pred_le_le_iff](declarations/pred-le-le-iff.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [pred_eq_of_covBy](declarations/pred-eq-of-covby.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [_root_.OrderIso.map_pred](declarations/root-orderiso-map-pred.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [pred_eq_iff_covBy](declarations/pred-eq-iff-covby.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [pred_bot](declarations/pred-bot.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [le_pred_iff_eq_bot](declarations/le-pred-iff-eq-bot.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [pred_lt_iff_ne_bot](declarations/pred-lt-iff-ne-bot.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [pred_lt_top](declarations/pred-lt-top.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [pred_ne_top](declarations/pred-ne-top.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [le_of_pred_lt](declarations/le-of-pred-lt.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [pred_lt_iff_of_not_isMin](declarations/pred-lt-iff-of-not-ismin.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [pred_lt_pred_iff_of_not_isMin](declarations/pred-lt-pred-iff-of-not-ismin.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [pred_le_pred_iff_of_not_isMin](declarations/pred-le-pred-iff-of-not-ismin.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [Ioi_pred_of_not_isMin](declarations/ioi-pred-of-not-ismin.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [Ioc_pred_left_of_not_isMin](declarations/ioc-pred-left-of-not-ismin.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [Ioo_pred_left_of_not_isMin](declarations/ioo-pred-left-of-not-ismin.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [pred_eq_pred_iff_of_not_isMin](declarations/pred-eq-pred-iff-of-not-ismin.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [pred_le_iff_eq_or_le](declarations/pred-le-iff-eq-or-le.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [pred_lt_iff_eq_or_lt_of_not_isMin](declarations/pred-lt-iff-eq-or-lt-of-not-ismin.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [not_isMax_pred](declarations/not-ismax-pred.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [Ici_pred](declarations/ici-pred.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [Ioi_pred_eq_insert_of_not_isMin](declarations/ioi-pred-eq-insert-of-not-ismin.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [Icc_pred_left](declarations/icc-pred-left.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [Ico_pred_left](declarations/ico-pred-left.md) | 836 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [pred_lt_iff](declarations/pred-lt-iff.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [pred_le_pred_iff](declarations/pred-le-pred-iff.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [pred_lt_pred_iff](declarations/pred-lt-pred-iff.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [Ioi_pred](declarations/ioi-pred.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [Ioc_pred_left](declarations/ioc-pred-left.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [Ioo_pred_left](declarations/ioo-pred-left.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [pred_eq_pred_iff](declarations/pred-eq-pred-iff.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [pred_injective](declarations/pred-injective.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [pred_ne_pred_iff](declarations/pred-ne-pred-iff.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [pred_lt_iff_eq_or_lt](declarations/pred-lt-iff-eq-or-lt.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [Ioi_pred_eq_insert](declarations/ioi-pred-eq-insert.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [Ico_pred_right_eq_insert](declarations/ico-pred-right-eq-insert.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [Ioo_pred_right_eq_insert](declarations/ioo-pred-right-eq-insert.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [Ioo_eq_empty_iff_pred_le](declarations/ioo-eq-empty-iff-pred-le.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [pred_top_lt_iff](declarations/pred-top-lt-iff.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [pred_top_le_iff](declarations/pred-top-le-iff.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [pred_eq_sSup](declarations/pred-eq-ssup.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [pred_eq_iSup](declarations/pred-eq-isup.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [pred_eq_csSup](declarations/pred-eq-cssup.md) | 933 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [le_succ_pred](declarations/le-succ-pred.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [pred_succ_le](declarations/pred-succ-le.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `lemma` | [pred_le_iff_le_succ](declarations/pred-le-iff-le-succ.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `lemma` | [gc_pred_succ](declarations/gc-pred-succ.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [succ_pred_of_not_isMin](declarations/succ-pred-of-not-ismin.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [pred_succ_of_not_isMax](declarations/pred-succ-of-not-ismax.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [succ_pred](declarations/succ-pred.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [pred_succ](declarations/pred-succ.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [pred_succ_iterate_of_not_isMax](declarations/pred-succ-iterate-of-not-ismax.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [succ_pred_iterate_of_not_isMin](declarations/succ-pred-iterate-of-not-ismin.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `instance` | [(anonymous)](declarations/instance.md) | 1022 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [succ_coe_of_isMax](declarations/succ-coe-of-ismax.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [succ_coe_of_not_isMax](declarations/succ-coe-of-not-ismax.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [succ_coe](declarations/succ-coe.md) | 1062 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1071 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `lemma` | [orderPred_top](declarations/orderpred-top.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `lemma` | [orderPred_coe](declarations/orderpred-coe.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [pred_untop](declarations/pred-untop.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1110 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `lemma` | [orderSucc_bot](declarations/ordersucc-bot.md) | 1153 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `lemma` | [orderSucc_coe](declarations/ordersucc-coe.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [succ_unbot](declarations/succ-unbot.md) | 1159 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1171 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `theorem` | [pred_coe_of_isMin](declarations/pred-coe-of-ismin.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `theorem` | [pred_coe_of_not_isMin](declarations/pred-coe-of-not-ismin.md) | 1208 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `theorem` | [pred_coe](declarations/pred-coe.md) | 1211 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 1222 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `abbrev` | [SuccOrder.ofOrderIso](declarations/succorder-oforderiso.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `abbrev` | [PredOrder.ofOrderIso](declarations/predorder-oforderiso.md) | 1253 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `instance` | [Set.OrdConnected.predOrder](declarations/set-ordconnected-predorder.md) | 1270 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `lemma` | [coe_pred_of_mem](declarations/coe-pred-of-mem.md) | 1296 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `lemma` | [isMin_of_pred_notMem](declarations/ismin-of-pred-notmem.md) | 1301 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `lemma` | [pred_notMem_iff_isMin](declarations/pred-notmem-iff-ismin.md) | 1309 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `instance` | [Set.OrdConnected.succOrder](declarations/set-ordconnected-succorder.md) | 1320 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `lemma` | [coe_succ_of_mem](declarations/coe-succ-of-mem.md) | 1326 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `lemma` | [isMax_of_succ_notMem](declarations/ismax-of-succ-notmem.md) | 1331 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `lemma` | [succ_notMem_iff_isMax](declarations/succ-notmem-iff-ismax.md) | 1340 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b378ed729657f1aa4e047b31d2aa81e2361075b24c88386440ce91278210685c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant01884b7097e514523ece66750b9ac2fea748c86c7321ff9d61fb5ff46127c5f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
