# Ordinal Arithmetic Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**194 observed declarations and anonymous commands**, 170 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant9355aebfbf099bcf55cecf1352baccc659500c3c6084e2238300927670e086bf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3856b5bfc272ee5500cc0784bfd391ad8321bf08`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalArithmeticPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_add](declarations/lift-add.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [lift_add_one](declarations/lift-add-one.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lift_succ](declarations/lift-succ.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instAddLeftReflectLE](declarations/instaddleftreflectle.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [add_lt_add_iff_left'](declarations/add-lt-add-iff-left.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instAddLeftStrictMono](declarations/instaddleftstrictmono.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instAddLeftReflectLT](declarations/instaddleftreflectlt.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instAddRightReflectLT](declarations/instaddrightreflectlt.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [add_le_add_iff_right](declarations/add-le-add-iff-right.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [add_right_cancel](declarations/add-right-cancel.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isSuccLimit_iff](declarations/issucclimit-iff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isSuccPrelimit_zero](declarations/issuccprelimit-zero.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [not_isSuccLimit_zero](declarations/not-issucclimit-zero.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isSuccPrelimit_lift](declarations/issuccprelimit-lift.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isSuccLimit_lift](declarations/issucclimit-lift.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [natCast_lt_of_isSuccLimit](declarations/natcast-lt-of-issucclimit.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [one_lt_of_isSuccLimit](declarations/one-lt-of-issucclimit.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zero_or_succ_or_isSuccLimit](declarations/zero-or-succ-or-issucclimit.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [limitRecOn](declarations/limitrecon.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [limitRecOn_zero](declarations/limitrecon-zero.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [limitRecOn_add_one](declarations/limitrecon-add-one.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [limitRecOn_succ](declarations/limitrecon-succ.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [limitRecOn_limit](declarations/limitrecon-limit.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [orderTopToTypeSucc](declarations/ordertoptotypesucc.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [enum_succ_eq_top](declarations/enum-succ-eq-top.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [has_succ_of_type_succ_lt](declarations/has-succ-of-type-succ-lt.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toType_noMax_of_succ_lt](declarations/totype-nomax-of-succ-lt.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bounded_singleton](declarations/bounded-singleton.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pred](declarations/pred.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pred_add_one](declarations/pred-add-one.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pred_succ](declarations/pred-succ.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [pred_eq_of_isSuccPrelimit](declarations/pred-eq-of-issuccprelimit.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [_root_.Order.IsSuccLimit.ordinalPred_eq](declarations/root-order-issucclimit-ordinalpred-eq.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [pred_zero](declarations/pred-zero.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pred_le_iff_le_succ](declarations/pred-le-iff-le-succ.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lt_pred_iff_succ_lt](declarations/lt-pred-iff-succ-lt.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pred_le_self](declarations/pred-le-self.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [pred_succ_gi](declarations/pred-succ-gi.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pred_surjective](declarations/pred-surjective.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [self_le_succ_pred](declarations/self-le-succ-pred.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pred_eq_iff_isSuccPrelimit](declarations/pred-eq-iff-issuccprelimit.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [pred_lt_iff_not_isSuccPrelimit](declarations/pred-lt-iff-not-issuccprelimit.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [succ_pred_eq_iff_not_isSuccPrelimit](declarations/succ-pred-eq-iff-not-issuccprelimit.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lift_pred](declarations/lift-pred.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [sub](declarations/sub.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [sub_eq_zero_of_lt](declarations/sub-eq-zero-of-lt.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [add_sub_cancel_of_le](declarations/add-sub-cancel-of-le.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [add_sub_cancel](declarations/add-sub-cancel.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [le_add_sub](declarations/le-add-sub.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [sub_le](declarations/sub-le.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lt_sub](declarations/lt-sub.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sub_eq_of_add_eq](declarations/sub-eq-of-add-eq.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [sub_le_self](declarations/sub-le-self.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [le_sub_of_le](declarations/le-sub-of-le.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [sub_lt_of_le](declarations/sub-lt-of-le.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [sub_zero](declarations/sub-zero.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [zero_sub](declarations/zero-sub.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sub_self](declarations/sub-self.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sub_eq_zero_iff_le](declarations/sub-eq-zero-iff-le.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [sub_ne_zero_iff_lt](declarations/sub-ne-zero-iff-lt.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [sub_sub](declarations/sub-sub.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [add_sub_add_cancel](declarations/add-sub-add-cancel.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [le_sub_of_add_le](declarations/le-sub-of-add-le.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [sub_lt_of_lt_add](declarations/sub-lt-of-lt-add.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [lt_add_iff](declarations/lt-add-iff.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [add_le_iff](declarations/add-le-iff.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [lt_add_iff_of_isSuccLimit](declarations/lt-add-iff-of-issucclimit.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [add_le_iff_of_isSuccLimit](declarations/add-le-iff-of-issucclimit.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [isNormal_add_right](declarations/isnormal-add-right.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [isSuccLimit_add](declarations/issucclimit-add.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [isSuccLimit_sub](declarations/issucclimit-sub.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [monoid](declarations/monoid.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [type_prod_lex](declarations/type-prod-lex.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mul_eq_zero'](declarations/mul-eq-zero.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [monoidWithZero](declarations/monoidwithzero.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [noZeroDivisors](declarations/nozerodivisors.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [lift_mul](declarations/lift-mul.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [card_mul](declarations/card-mul.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [leftDistribClass](declarations/leftdistribclass.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mul_succ](declarations/mul-succ.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [mulLeftMono](declarations/mulleftmono.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [mulRightMono](declarations/mulrightmono.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [le_mul_left](declarations/le-mul-left.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [le_mul_right](declarations/le-mul-right.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [mul_le_of_limit_aux](declarations/mul-le-of-limit-aux.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [mul_le_iff_of_isSuccLimit](declarations/mul-le-iff-of-issucclimit.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [isNormal_mul_right](declarations/isnormal-mul-right.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [lt_mul_iff_of_isSuccLimit](declarations/lt-mul-iff-of-issucclimit.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [lt_mul_add_one_iff](declarations/lt-mul-add-one-iff.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [isSuccLimit_mul_right](declarations/issucclimit-mul-right.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [isSuccPrelimit_mul_right](declarations/issuccprelimit-mul-right.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [isSuccLimit_mul_left](declarations/issucclimit-mul-left.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [isSuccPrelimit_mul_left](declarations/issuccprelimit-mul-left.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [nsmul_eq_mul](declarations/nsmul-eq-mul.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [add_mul_limit_aux](declarations/add-mul-limit-aux.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [add_mul_add_one](declarations/add-mul-add-one.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [add_mul_succ](declarations/add-mul-succ.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [add_mul_of_isSuccLimit](declarations/add-mul-of-issucclimit.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [mul_two](declarations/mul-two.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `instance` | [div](declarations/div.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [div_zero](declarations/div-zero.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [mul_div_gc](declarations/mul-div-gc.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [mul_le_iff_le_div](declarations/mul-le-iff-le-div.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [lt_mul_iff_div_lt](declarations/lt-mul-iff-div-lt.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [lt_mul_succ_div](declarations/lt-mul-succ-div.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [lt_mul_div_add](declarations/lt-mul-div-add.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [div_le](declarations/div-le.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [lt_div](declarations/lt-div.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [div_pos](declarations/div-pos.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [div_le_of_le_mul](declarations/div-le-of-le-mul.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [mul_lt_of_lt_div](declarations/mul-lt-of-lt-div.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [zero_div](declarations/zero-div.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [mul_div_le](declarations/mul-div-le.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [div_le_left](declarations/div-le-left.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [mul_add_div](declarations/mul-add-div.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [div_eq_zero_of_lt](declarations/div-eq-zero-of-lt.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [mul_div_cancel](declarations/mul-div-cancel.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [mul_add_div_mul](declarations/mul-add-div-mul.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [mul_div_mul_cancel](declarations/mul-div-mul-cancel.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [div_eq](declarations/div-eq.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [div_eq_iff](declarations/div-eq-iff.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [div_eq_iff'](declarations/div-eq-iff-source-edition-2.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [div_eq_one_iff](declarations/div-eq-one-iff.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [div_one](declarations/div-one.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [div_self](declarations/div-self.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [mul_sub](declarations/mul-sub.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [isSuccLimit_add_iff](declarations/issucclimit-add-iff.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [isSuccLimit_add_iff_of_isSuccLimit](declarations/issucclimit-add-iff-of-issucclimit.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [dvd_add_iff](declarations/dvd-add-iff.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [div_mul_cancel](declarations/div-mul-cancel.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [le_of_dvd](declarations/le-of-dvd.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [dvd_antisymm](declarations/dvd-antisymm.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `instance` | [mod](declarations/mod.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [mod_def](declarations/mod-def.md) | 726 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [mod_le](declarations/mod-le.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [mod_zero](declarations/mod-zero.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [mod_eq_of_lt](declarations/mod-eq-of-lt.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [zero_mod](declarations/zero-mod.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [div_add_mod](declarations/div-add-mod.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [mod_lt](declarations/mod-lt.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [mod_self](declarations/mod-self.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [mod_one](declarations/mod-one.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [dvd_of_mod_eq_zero](declarations/dvd-of-mod-eq-zero.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [mod_eq_zero_of_dvd](declarations/mod-eq-zero-of-dvd.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [dvd_iff_mod_eq_zero](declarations/dvd-iff-mod-eq-zero.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [mul_add_mod_self](declarations/mul-add-mod-self.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [mul_mod](declarations/mul-mod.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [mul_add_mod_mul](declarations/mul-add-mod-mul.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [mul_mod_mul](declarations/mul-mod-mul.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [mod_mod_of_dvd](declarations/mod-mod-of-dvd.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [mod_mod](declarations/mod-mod.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [lt_mul_iff](declarations/lt-mul-iff.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [forall_lt_mul](declarations/forall-lt-mul.md) | 806 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [exists_lt_mul](declarations/exists-lt-mul.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `instance` | [instCharZero](declarations/instcharzero.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [one_add_natCast](declarations/one-add-natcast.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [one_add_ofNat](declarations/one-add-ofnat.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [natCast_mul](declarations/natcast-mul.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [natCast_sub](declarations/natcast-sub.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [natCast_div](declarations/natcast-div.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [natCast_mod](declarations/natcast-mod.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [lift_natCast](declarations/lift-natcast.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [lift_ofNat](declarations/lift-ofnat.md) | 864 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [typein_lt_nat](declarations/typein-lt-nat.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [typein_lt_fin](declarations/typein-lt-fin.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [enum_lt_fin](declarations/enum-lt-fin.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [lt_omega0](declarations/lt-omega0.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [natCast_lt_omega0](declarations/natcast-lt-omega0.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [enum_lt_nat](declarations/enum-lt-nat.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [eq_natCast_of_le_natCast](declarations/eq-natcast-of-le-natcast.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [eq_natCast_or_omega0_le](declarations/eq-natcast-or-omega0-le.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [natCast_image_Iio](declarations/natcast-image-iio.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [omega0_pos](declarations/omega0-pos.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [omega0_ne_zero](declarations/omega0-ne-zero.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `theorem` | [one_lt_omega0](declarations/one-lt-omega0.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [isSuccLimit_omega0](declarations/issucclimit-omega0.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [omega0_le](declarations/omega0-le.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [omega0_le_of_isSuccLimit](declarations/omega0-le-of-issucclimit.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [natCast_add_omega0](declarations/natcast-add-omega0.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [one_add_omega0](declarations/one-add-omega0.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [add_omega0](declarations/add-omega0.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [natCast_add_of_omega0_le](declarations/natcast-add-of-omega0-le.md) | 959 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [one_add_of_omega0_le](declarations/one-add-of-omega0-le.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `theorem` | [isSuccPrelimit_iff_omega0_dvd](declarations/issuccprelimit-iff-omega0-dvd.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `theorem` | [natCast_mod_omega0](declarations/natcast-mod-omega0.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `theorem` | [add_one_of_aleph0_le](declarations/add-one-of-aleph0-le.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [isSuccLimit_ord](declarations/issucclimit-ord.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [noMaxOrder](declarations/nomaxorder.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `abbrev` | [orderBotAleph0OrdToType](declarations/orderbotaleph0ordtotype.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fc031e38aa00245314e5034b7db67397f47ab2f0caa0cfa23b271771e867782 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant9355aebfbf099bcf55cecf1352baccc659500c3c6084e2238300927670e086bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
