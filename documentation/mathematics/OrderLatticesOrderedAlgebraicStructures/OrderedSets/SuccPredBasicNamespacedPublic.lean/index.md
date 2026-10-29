# Succ Pred Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**122 observed declarations and anonymous commands**, 108 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3e27aa28086a2a4f0df94f5150eebfaeae9b4ffa83015599b9b5ef71cc695fdb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b760b9b84b67691b8bd019d4ba4704f2abf107e6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/SuccPredBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [SuccOrder](declarations/succorder.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [PredOrder](declarations/predorder.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [SuccOrder.ofSuccLeIff](declarations/succorder-ofsuccleiff.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SuccOrder.ofCore](declarations/succorder-ofcore.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [SuccOrder.ofLinearWellFoundedLT](declarations/succorder-oflinearwellfoundedlt.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [succ](declarations/succ.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_succ](declarations/le-succ.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [max_of_succ_le](declarations/max-of-succ-le.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [succ_le_of_lt](declarations/succ-le-of-lt.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [succ_le_iff_isMax](declarations/succ-le-iff-ismax.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lt_succ_iff_not_isMax](declarations/lt-succ-iff-not-ismax.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [wcovBy_succ](declarations/wcovby-succ.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [covBy_succ_of_not_isMax](declarations/covby-succ-of-not-ismax.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lt_succ_of_le_of_not_isMax](declarations/lt-succ-of-le-of-not-ismax.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [succ_le_iff_of_not_isMax](declarations/succ-le-iff-of-not-ismax-source-edition-2.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [succ_le_iff_of_not_isMax'](declarations/succ-le-iff-of-not-ismax.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [succ_lt_succ_of_not_isMax](declarations/succ-lt-succ-of-not-ismax.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [succ_le_succ](declarations/succ-le-succ.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [succ_mono](declarations/succ-mono.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [le_succ_of_wcovBy](declarations/le-succ-of-wcovby.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [le_succ_iterate](declarations/le-succ-iterate.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isMax_iterate_succ_of_eq_of_lt](declarations/ismax-iterate-succ-of-eq-of-lt.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isMax_iterate_succ_of_eq_of_ne](declarations/ismax-iterate-succ-of-eq-of-ne.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Iic_subset_Iio_succ_of_not_isMax](declarations/iic-subset-iio-succ-of-not-ismax.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Ici_succ_of_not_isMax](declarations/ici-succ-of-not-ismax.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Icc_subset_Ico_succ_right_of_not_isMax](declarations/icc-subset-ico-succ-right-of-not-ismax.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Ioc_subset_Ioo_succ_right_of_not_isMax](declarations/ioc-subset-ioo-succ-right-of-not-ismax.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Icc_succ_left_of_not_isMax](declarations/icc-succ-left-of-not-ismax.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Ico_succ_left_of_not_isMax](declarations/ico-succ-left-of-not-ismax.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lt_succ](declarations/lt-succ.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lt_succ_of_le](declarations/lt-succ-of-le.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [succ_le_iff](declarations/succ-le-iff.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [succ_lt_succ](declarations/succ-lt-succ.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [succ_strictMono](declarations/succ-strictmono.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [covBy_succ](declarations/covby-succ.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Iic_subset_Iio_succ](declarations/iic-subset-iio-succ.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Ici_succ](declarations/ici-succ.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Icc_subset_Ico_succ_right](declarations/icc-subset-ico-succ-right.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Ioc_subset_Ioo_succ_right](declarations/ioc-subset-ioo-succ-right.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Icc_succ_left](declarations/icc-succ-left.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Ico_succ_left](declarations/ico-succ-left.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [succ_eq_iff_isMax](declarations/succ-eq-iff-ismax.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [le_iff_eq_or_succ_le](declarations/le-iff-eq-or-succ-le-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [le_iff_eq_or_succ_le'](declarations/le-iff-eq-or-succ-le.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [le_and_le_succ_iff](declarations/le-and-le-succ-iff.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [le_succ_and_le_iff](declarations/le-succ-and-le-iff.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [succ_eq_of_covBy](declarations/succ-eq-of-covby.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Succ Pred Basic Namespaced Public](declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-su.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [succ_eq_iff_covBy](declarations/succ-eq-iff-covby.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [succ_top](declarations/succ-top.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [succ_le_iff_eq_top](declarations/succ-le-iff-eq-top.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [lt_succ_iff_ne_top](declarations/lt-succ-iff-ne-top.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [bot_lt_succ](declarations/bot-lt-succ.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [succ_ne_bot](declarations/succ-ne-bot.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [succ_max](declarations/succ-max.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [succ_min](declarations/succ-min.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [le_of_lt_succ](declarations/le-of-lt-succ.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [lt_succ_iff_of_not_isMax](declarations/lt-succ-iff-of-not-ismax-source-edition-2.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [lt_succ_iff_of_not_isMax'](declarations/lt-succ-iff-of-not-ismax.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [succ_lt_succ_iff_of_not_isMax](declarations/succ-lt-succ-iff-of-not-ismax.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [succ_le_succ_iff_of_not_isMax](declarations/succ-le-succ-iff-of-not-ismax.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Iio_succ_of_not_isMax](declarations/iio-succ-of-not-ismax.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Ico_succ_right_of_not_isMax](declarations/ico-succ-right-of-not-ismax.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [Ioo_succ_right_of_not_isMax](declarations/ioo-succ-right-of-not-ismax.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [succ_eq_succ_iff_of_not_isMax](declarations/succ-eq-succ-iff-of-not-ismax.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [le_succ_iff_eq_or_le](declarations/le-succ-iff-eq-or-le.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lt_succ_iff_eq_or_lt_of_not_isMax](declarations/lt-succ-iff-eq-or-lt-of-not-ismax.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [not_isMin_succ](declarations/not-ismin-succ.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Iic_succ](declarations/iic-succ.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Icc_succ_right](declarations/icc-succ-right.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Ioc_succ_right](declarations/ioc-succ-right.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Iio_succ_eq_insert_of_not_isMax](declarations/iio-succ-eq-insert-of-not-ismax.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Ico_succ_right_eq_insert_of_not_isMax](declarations/ico-succ-right-eq-insert-of-not-ismax.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [Ioo_succ_right_eq_insert_of_not_isMax](declarations/ioo-succ-right-eq-insert-of-not-ismax.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [lt_succ_iff](declarations/lt-succ-iff.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [succ_le_succ_iff](declarations/succ-le-succ-iff.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [succ_lt_succ_iff](declarations/succ-lt-succ-iff.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Iio_succ](declarations/iio-succ.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [Ico_succ_right](declarations/ico-succ-right.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [Ioo_succ_right](declarations/ioo-succ-right.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [succ_eq_succ_iff](declarations/succ-eq-succ-iff.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [succ_injective](declarations/succ-injective.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [succ_ne_succ_iff](declarations/succ-ne-succ-iff.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [lt_succ_iff_eq_or_lt](declarations/lt-succ-iff-eq-or-lt.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [lt_succ_iff_eq_or_gt](declarations/lt-succ-iff-eq-or-gt.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [Iio_succ_eq_insert](declarations/iio-succ-eq-insert.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [Ico_succ_right_eq_insert](declarations/ico-succ-right-eq-insert.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Ioo_succ_right_eq_insert](declarations/ioo-succ-right-eq-insert.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Ioo_eq_empty_iff_le_succ](declarations/ioo-eq-empty-iff-le-succ.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [lt_succ_bot_iff](declarations/lt-succ-bot-iff.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [le_succ_bot_iff](declarations/le-succ-bot-iff.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [succ_eq_sInf](declarations/succ-eq-sinf.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [succ_eq_iInf](declarations/succ-eq-iinf.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [succ_eq_csInf](declarations/succ-eq-csinf.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [isMin_iterate_pred_of_eq_of_lt](declarations/ismin-iterate-pred-of-eq-of-lt.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [isMin_iterate_pred_of_eq_of_ne](declarations/ismin-iterate-pred-of-eq-of-ne.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [le_succ_pred](declarations/le-succ-pred.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [pred_le_iff_le_succ](declarations/pred-le-iff-le-succ.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [gc_pred_succ](declarations/gc-pred-succ.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [succ_pred_of_not_isMin](declarations/succ-pred-of-not-ismin.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [succ_pred](declarations/succ-pred.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [pred_succ_iterate_of_not_isMax](declarations/pred-succ-iterate-of-not-ismax.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [succ_coe_of_isMax](declarations/succ-coe-of-ismax.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [succ_coe_of_not_isMax](declarations/succ-coe-of-not-ismax.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [succ_coe](declarations/succ-coe.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [orderPred_top](declarations/orderpred-top.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [orderPred_coe](declarations/orderpred-coe.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [pred_untop](declarations/pred-untop.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `abbrev` | [SuccOrder.ofOrderIso](declarations/succorder-oforderiso.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `instance` | [Set.OrdConnected.predOrder](declarations/set-ordconnected-predorder.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [coe_pred_of_mem](declarations/coe-pred-of-mem.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [isMin_of_pred_notMem](declarations/ismin-of-pred-notmem.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [pred_notMem_iff_isMin](declarations/pred-notmem-iff-ismin.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `instance` | [Set.OrdConnected.succOrder](declarations/set-ordconnected-succorder.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [coe_succ_of_mem](declarations/coe-succ-of-mem.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [isMax_of_succ_notMem](declarations/ismax-of-succ-notmem.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [succ_notMem_iff_isMax](declarations/succ-notmem-iff-ismax.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e534c03553b586a170ccc52e20192d0b9d2f0b05e5cd6140b22f0450b0f1145c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3e27aa28086a2a4f0df94f5150eebfaeae9b4ffa83015599b9b5ef71cc695fdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
