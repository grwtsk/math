# Real Rpow Int Cast

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**212 observed declarations and anonymous commands**, 207 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ComplexAnalysis/Real/Variante541db7342a70318ab01fc691563f728adbb28811b3250c085be588be877ff94.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bea0a4314cce192c863845d04916d940dc85d9f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/RealRpowIntCast.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rpow](declarations/rpow.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [rpow_eq_pow](declarations/rpow-eq-pow.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [rpow_def](declarations/rpow-def.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rpow_def_of_nonneg](declarations/rpow-def-of-nonneg.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rpow_def_of_pos](declarations/rpow-def-of-pos.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exp_mul](declarations/exp-mul.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rpow_intCast](declarations/rpow-intcast.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rpow_natCast](declarations/rpow-natcast.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [exp_one_rpow](declarations/exp-one-rpow.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [exp_one_pow](declarations/exp-one-pow.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rpow_eq_zero_iff_of_nonneg](declarations/rpow-eq-zero-iff-of-nonneg.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [rpow_eq_zero](declarations/rpow-eq-zero.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [rpow_ne_zero](declarations/rpow-ne-zero.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rpow_def_of_neg](declarations/rpow-def-of-neg.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rpow_def_of_nonpos](declarations/rpow-def-of-nonpos.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rpow_pos_of_pos](declarations/rpow-pos-of-pos.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rpow_zero](declarations/rpow-zero.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rpow_zero_pos](declarations/rpow-zero-pos.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [zero_rpow](declarations/zero-rpow.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_rpow_eq_iff](declarations/zero-rpow-eq-iff.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_zero_rpow_iff](declarations/eq-zero-rpow-iff.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rpow_one](declarations/rpow-one.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [one_rpow](declarations/one-rpow.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [zero_rpow_le_one](declarations/zero-rpow-le-one.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [zero_rpow_nonneg](declarations/zero-rpow-nonneg.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rpow_nonneg](declarations/rpow-nonneg.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [abs_rpow_of_nonneg](declarations/abs-rpow-of-nonneg.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [abs_rpow_le_abs_rpow](declarations/abs-rpow-le-abs-rpow.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [abs_rpow_le_exp_log_mul](declarations/abs-rpow-le-exp-log-mul.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [rpow_inv_log](declarations/rpow-inv-log.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [rpow_inv_log_le_exp_one](declarations/rpow-inv-log-le-exp-one.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [norm_rpow_of_nonneg](declarations/norm-rpow-of-nonneg.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rpow_add](declarations/rpow-add-source-edition-2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [rpow_add'](declarations/rpow-add.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [rpow_of_add_eq](declarations/rpow-of-add-eq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rpow_add_of_nonneg](declarations/rpow-add-of-nonneg.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [le_rpow_add](declarations/le-rpow-add.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rpow_sum_of_pos](declarations/rpow-sum-of-pos.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rpow_sum_of_nonneg](declarations/rpow-sum-of-nonneg.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rpow_neg](declarations/rpow-neg.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [rpow_sub](declarations/rpow-sub.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [rpow_sub'](declarations/rpow-sub-source-edition-2.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.HasCompactSupport.rpow_const](declarations/root-hascompactsupport-rpow-const.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ofReal_cpow](declarations/ofreal-cpow.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ofReal_cpow_of_nonpos](declarations/ofreal-cpow-of-nonpos.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [cpow_ofReal](declarations/cpow-ofreal.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [cpow_ofReal_re](declarations/cpow-ofreal-re.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [cpow_ofReal_im](declarations/cpow-ofreal-im.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [norm_cpow_of_ne_zero](declarations/norm-cpow-of-ne-zero.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [norm_cpow_of_imp](declarations/norm-cpow-of-imp.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [norm_cpow_le](declarations/norm-cpow-le.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_cpow_real](declarations/norm-cpow-real.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [norm_cpow_inv_nat](declarations/norm-cpow-inv-nat.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [norm_cpow_eq_rpow_re_of_pos](declarations/norm-cpow-eq-rpow-re-of-pos.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [norm_cpow_eq_rpow_re_of_nonneg](declarations/norm-cpow-eq-rpow-re-of-nonneg.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [norm_ofReal_cpow_eventually_eq_atTop](declarations/norm-ofreal-cpow-eventually-eq-attop.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [norm_natCast_cpow_of_re_ne_zero](declarations/norm-natcast-cpow-of-re-ne-zero.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [norm_natCast_cpow_of_pos](declarations/norm-natcast-cpow-of-pos.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [norm_natCast_cpow_pos_of_pos](declarations/norm-natcast-cpow-pos-of-pos.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [cpow_mul_ofReal_nonneg](declarations/cpow-mul-ofreal-nonneg.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [evalRpowZero](declarations/evalrpowzero.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [evalRpow](declarations/evalrpow-source-edition-2.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [rpow_mul](declarations/rpow-mul.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [rpow_pow_comm](declarations/rpow-pow-comm.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [rpow_zpow_comm](declarations/rpow-zpow-comm.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [rpow_add_intCast](declarations/rpow-add-intcast.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [rpow_add_natCast](declarations/rpow-add-natcast-source-edition-2.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [rpow_sub_intCast](declarations/rpow-sub-intcast.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [rpow_sub_natCast](declarations/rpow-sub-natcast-source-edition-2.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [rpow_add_intCast'](declarations/rpow-add-intcast-source-edition-2.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [rpow_add_natCast'](declarations/rpow-add-natcast.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [rpow_sub_intCast'](declarations/rpow-sub-intcast-source-edition-2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [rpow_sub_natCast'](declarations/rpow-sub-natcast.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [rpow_add_one](declarations/rpow-add-one.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [rpow_sub_one](declarations/rpow-sub-one.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [rpow_add_one'](declarations/rpow-add-one-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [rpow_one_add'](declarations/rpow-one-add.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [rpow_sub_one'](declarations/rpow-sub-one-source-edition-2.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [rpow_one_sub'](declarations/rpow-one-sub.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [rpow_two](declarations/rpow-two.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [rpow_neg_one](declarations/rpow-neg-one.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mul_rpow](declarations/mul-rpow.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [inv_rpow](declarations/inv-rpow.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [div_rpow](declarations/div-rpow.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [log_rpow](declarations/log-rpow.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [mul_log_eq_log_iff](declarations/mul-log-eq-log-iff.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [rpow_rpow_inv](declarations/rpow-rpow-inv.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [rpow_inv_rpow](declarations/rpow-inv-rpow.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [pow_rpow_inv_natCast](declarations/pow-rpow-inv-natcast.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [rpow_inv_natCast_pow](declarations/rpow-inv-natcast-pow.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [rpow_natCast_mul](declarations/rpow-natcast-mul.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [rpow_mul_natCast](declarations/rpow-mul-natcast.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [rpow_intCast_mul](declarations/rpow-intcast-mul.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [rpow_mul_intCast](declarations/rpow-mul-intcast.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [rpow_lt_rpow](declarations/rpow-lt-rpow.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [strictMonoOn_rpow_Ici_of_exponent_pos](declarations/strictmonoon-rpow-ici-of-exponent-pos.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [rpow_le_rpow](declarations/rpow-le-rpow.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [monotoneOn_rpow_Ici_of_exponent_nonneg](declarations/monotoneon-rpow-ici-of-exponent-nonneg.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [rpow_lt_rpow_of_neg](declarations/rpow-lt-rpow-of-neg.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [rpow_le_rpow_of_nonpos](declarations/rpow-le-rpow-of-nonpos.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [rpow_lt_rpow_iff](declarations/rpow-lt-rpow-iff.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [rpow_le_rpow_iff](declarations/rpow-le-rpow-iff.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [rpow_lt_rpow_iff_of_neg](declarations/rpow-lt-rpow-iff-of-neg.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [rpow_le_rpow_iff_of_neg](declarations/rpow-le-rpow-iff-of-neg.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [le_rpow_inv_iff_of_pos](declarations/le-rpow-inv-iff-of-pos.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [rpow_inv_le_iff_of_pos](declarations/rpow-inv-le-iff-of-pos.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [lt_rpow_inv_iff_of_pos](declarations/lt-rpow-inv-iff-of-pos.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [rpow_inv_lt_iff_of_pos](declarations/rpow-inv-lt-iff-of-pos.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [le_rpow_inv_iff_of_neg](declarations/le-rpow-inv-iff-of-neg.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [lt_rpow_inv_iff_of_neg](declarations/lt-rpow-inv-iff-of-neg.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [rpow_inv_lt_iff_of_neg](declarations/rpow-inv-lt-iff-of-neg.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [rpow_inv_le_iff_of_neg](declarations/rpow-inv-le-iff-of-neg.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [rpow_lt_rpow_of_exponent_lt](declarations/rpow-lt-rpow-of-exponent-lt.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [rpow_le_rpow_of_exponent_le](declarations/rpow-le-rpow-of-exponent-le.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [rpow_lt_rpow_of_exponent_neg](declarations/rpow-lt-rpow-of-exponent-neg.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [strictAntiOn_rpow_Ioi_of_exponent_neg](declarations/strictantion-rpow-ioi-of-exponent-neg.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [rpow_le_rpow_of_exponent_nonpos](declarations/rpow-le-rpow-of-exponent-nonpos.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [antitoneOn_rpow_Ioi_of_exponent_nonpos](declarations/antitoneon-rpow-ioi-of-exponent-nonpos.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [rpow_le_rpow_left_iff](declarations/rpow-le-rpow-left-iff.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [rpow_lt_rpow_left_iff](declarations/rpow-lt-rpow-left-iff.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [rpow_lt_rpow_of_exponent_gt](declarations/rpow-lt-rpow-of-exponent-gt.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [rpow_le_rpow_of_exponent_ge](declarations/rpow-le-rpow-of-exponent-ge.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [rpow_le_rpow_left_iff_of_base_lt_one](declarations/rpow-le-rpow-left-iff-of-base-lt-one.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [rpow_lt_rpow_left_iff_of_base_lt_one](declarations/rpow-lt-rpow-left-iff-of-base-lt-one.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [rpow_lt_one](declarations/rpow-lt-one.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [rpow_le_one](declarations/rpow-le-one.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [rpow_lt_one_of_one_lt_of_neg](declarations/rpow-lt-one-of-one-lt-of-neg.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [rpow_le_one_of_one_le_of_nonpos](declarations/rpow-le-one-of-one-le-of-nonpos.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [one_lt_rpow](declarations/one-lt-rpow.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [one_le_rpow](declarations/one-le-rpow.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [one_lt_rpow_of_pos_of_lt_one_of_neg](declarations/one-lt-rpow-of-pos-of-lt-one-of-neg.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [one_le_rpow_of_pos_of_le_one_of_nonpos](declarations/one-le-rpow-of-pos-of-le-one-of-nonpos.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [rpow_lt_one_iff_of_pos](declarations/rpow-lt-one-iff-of-pos.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [rpow_lt_one_iff](declarations/rpow-lt-one-iff-source-edition-2.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [rpow_lt_one_iff'](declarations/rpow-lt-one-iff.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [one_lt_rpow_iff_of_pos](declarations/one-lt-rpow-iff-of-pos.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [one_lt_rpow_iff](declarations/one-lt-rpow-iff.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [rpow_le_rpow_of_exponent_ge_of_imp](declarations/rpow-le-rpow-of-exponent-ge-of-imp.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [rpow_le_rpow_of_exponent_ge'](declarations/rpow-le-rpow-of-exponent-ge-source-edition-2.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [rpow_max](declarations/rpow-max.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [self_le_rpow_of_le_one](declarations/self-le-rpow-of-le-one.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [self_le_rpow_of_one_le](declarations/self-le-rpow-of-one-le.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [rpow_le_self_of_le_one](declarations/rpow-le-self-of-le-one.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [rpow_le_self_of_one_le](declarations/rpow-le-self-of-one-le.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [self_lt_rpow_of_lt_one](declarations/self-lt-rpow-of-lt-one.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [self_lt_rpow_of_one_lt](declarations/self-lt-rpow-of-one-lt.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [rpow_lt_self_of_lt_one](declarations/rpow-lt-self-of-lt-one.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [rpow_lt_self_of_one_lt](declarations/rpow-lt-self-of-one-lt.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [rpow_left_injOn](declarations/rpow-left-injon.md) | 755 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [rpow_left_inj](declarations/rpow-left-inj.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [rpow_inv_eq](declarations/rpow-inv-eq.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [eq_rpow_inv](declarations/eq-rpow-inv.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [le_rpow_iff_log_le](declarations/le-rpow-iff-log-le.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `lemma` | [le_pow_iff_log_le](declarations/le-pow-iff-log-le.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `lemma` | [le_zpow_iff_log_le](declarations/le-zpow-iff-log-le.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `lemma` | [le_rpow_of_log_le](declarations/le-rpow-of-log-le.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `lemma` | [le_pow_of_log_le](declarations/le-pow-of-log-le.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `lemma` | [le_zpow_of_log_le](declarations/le-zpow-of-log-le.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [lt_rpow_iff_log_lt](declarations/lt-rpow-iff-log-lt.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `lemma` | [lt_pow_iff_log_lt](declarations/lt-pow-iff-log-lt.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `lemma` | [lt_zpow_iff_log_lt](declarations/lt-zpow-iff-log-lt.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `lemma` | [lt_rpow_of_log_lt](declarations/lt-rpow-of-log-lt.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `lemma` | [lt_pow_of_log_lt](declarations/lt-pow-of-log-lt.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `lemma` | [lt_zpow_of_log_lt](declarations/lt-zpow-of-log-lt.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `lemma` | [rpow_le_iff_le_log](declarations/rpow-le-iff-le-log.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `lemma` | [pow_le_iff_le_log](declarations/pow-le-iff-le-log.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `lemma` | [zpow_le_iff_le_log](declarations/zpow-le-iff-le-log.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `lemma` | [le_log_of_rpow_le](declarations/le-log-of-rpow-le.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `lemma` | [le_log_of_pow_le](declarations/le-log-of-pow-le.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `lemma` | [le_log_of_zpow_le](declarations/le-log-of-zpow-le.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `lemma` | [rpow_le_of_le_log](declarations/rpow-le-of-le-log.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `lemma` | [pow_le_of_le_log](declarations/pow-le-of-le-log.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `lemma` | [zpow_le_of_le_log](declarations/zpow-le-of-le-log.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `lemma` | [rpow_lt_iff_lt_log](declarations/rpow-lt-iff-lt-log.md) | 837 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `lemma` | [pow_lt_iff_lt_log](declarations/pow-lt-iff-lt-log.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [zpow_lt_iff_lt_log](declarations/zpow-lt-iff-lt-log.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [lt_log_of_rpow_lt](declarations/lt-log-of-rpow-lt.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `lemma` | [lt_log_of_pow_lt](declarations/lt-log-of-pow-lt.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `lemma` | [lt_log_of_zpow_lt](declarations/lt-log-of-zpow-lt.md) | 852 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `lemma` | [rpow_lt_of_lt_log](declarations/rpow-lt-of-lt-log.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `lemma` | [pow_lt_of_lt_log](declarations/pow-lt-of-lt-log.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `lemma` | [zpow_lt_of_lt_log](declarations/zpow-lt-of-lt-log.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [rpow_le_one_iff_of_pos](declarations/rpow-le-one-iff-of-pos.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [abs_log_mul_self_rpow_lt](declarations/abs-log-mul-self-rpow-lt.md) | 870 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `lemma` | [log_le_rpow_div](declarations/log-le-rpow-div.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `lemma` | [log_natCast_le_rpow_div](declarations/log-natcast-le-rpow-div.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `lemma` | [strictMono_rpow_of_base_gt_one](declarations/strictmono-rpow-of-base-gt-one.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `lemma` | [monotone_rpow_of_base_ge_one](declarations/monotone-rpow-of-base-ge-one.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `lemma` | [strictAnti_rpow_of_base_lt_one](declarations/strictanti-rpow-of-base-lt-one.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `lemma` | [antitone_rpow_of_base_le_one](declarations/antitone-rpow-of-base-le-one.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `lemma` | [rpow_right_inj](declarations/rpow-right-inj.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `lemma` | [rpow_le_rpow_of_exponent_le_or_ge](declarations/rpow-le-rpow-of-exponent-le-or-ge.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `lemma` | [norm_prime_cpow_le_one_half](declarations/norm-prime-cpow-le-one-half.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `lemma` | [one_sub_prime_cpow_ne_zero](declarations/one-sub-prime-cpow-ne-zero.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `lemma` | [norm_natCast_cpow_le_norm_natCast_cpow_of_pos](declarations/norm-natcast-cpow-le-norm-natcast-cpow-of-pos.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `lemma` | [norm_natCast_cpow_le_norm_natCast_cpow_iff](declarations/norm-natcast-cpow-le-norm-natcast-cpow-iff.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `lemma` | [norm_log_natCast_le_rpow_div](declarations/norm-log-natcast-le-rpow-div.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [sqrt_eq_rpow](declarations/sqrt-eq-rpow.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [rpow_div_two_eq_sqrt](declarations/rpow-div-two-eq-sqrt.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `lemma` | [cpow_inv_two_re](declarations/cpow-inv-two-re.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `lemma` | [cpow_inv_two_im_eq_sqrt](declarations/cpow-inv-two-im-eq-sqrt.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `lemma` | [cpow_inv_two_im_eq_neg_sqrt](declarations/cpow-inv-two-im-eq-neg-sqrt.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `lemma` | [abs_cpow_inv_two_im](declarations/abs-cpow-inv-two-im.md) | 1018 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `lemma` | [inv_natCast_cpow_ofReal_pos](declarations/inv-natcast-cpow-ofreal-pos.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `theorem` | [isNat_rpow_pos](declarations/isnat-rpow-pos.md) | 1041 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `theorem` | [isNat_rpow_neg](declarations/isnat-rpow-neg.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `theorem` | [isInt_rpow_pos](declarations/isint-rpow-pos.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `theorem` | [isInt_rpow_neg](declarations/isint-rpow-neg.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [isRat_rpow_pos](declarations/israt-rpow-pos.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `theorem` | [isRat_rpow_neg](declarations/israt-rpow-neg.md) | 1067 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `def` | [evalRPow](declarations/evalrpow.md) | 1075 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1aa5a4d6ea01476e2cb45380d3e02d47b1d001590a17c58d92f27315e76573d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Real/Variante541db7342a70318ab01fc691563f728adbb28811b3250c085be588be877ff94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
