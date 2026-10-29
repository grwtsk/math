# Padic Numbers Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**142 observed declarations and anonymous commands**, 115 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a086f67d63d1db413964d538a37349956f65b76`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryLocalFields/PadicNumbersNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Rat.padicValuation](declarations/rat-padicvaluation.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Int.padicValuation](declarations/int-padicvaluation.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [Rat.padicValuation_cast](declarations/rat-padicvaluation-cast.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [Rat.padicValuation_natCast](declarations/rat-padicvaluation-natcast.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Rat.padicValuation_eq_zero_iff](declarations/rat-padicvaluation-eq-zero-iff.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Int.padicValuation_eq_zero_iff](declarations/int-padicvaluation-eq-zero-iff.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [Rat.padicValuation_self](declarations/rat-padicvaluation-self.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Int.padicValuation_self](declarations/int-padicvaluation-self.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [Int.padicValuation_le_one](declarations/int-padicvaluation-le-one.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [Int.padicValuation_eq_one_iff](declarations/int-padicvaluation-eq-one-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [Int.padicValuation_lt_one_iff](declarations/int-padicvaluation-lt-one-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Rat.padicValuation_le_one_iff](declarations/rat-padicvaluation-le-one-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Rat.surjective_padicValuation](declarations/rat-surjective-padicvaluation.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [PadicSeq](declarations/padicseq.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stationary](declarations/stationary.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [stationaryPoint](declarations/stationarypoint.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [stationaryPoint_spec](declarations/stationarypoint-spec.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [norm](declarations/norm.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [norm_zero_iff](declarations/norm-zero-iff.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [equiv_zero_of_val_eq_of_equiv_zero](declarations/equiv-zero-of-val-eq-of-equiv-zero.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [norm_nonzero_of_not_equiv_zero](declarations/norm-nonzero-of-not-equiv-zero.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [norm_eq_norm_app_of_nonzero](declarations/norm-eq-norm-app-of-nonzero.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_limZero_const_of_nonzero](declarations/not-limzero-const-of-nonzero.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [not_equiv_zero_const_of_nonzero](declarations/not-equiv-zero-const-of-nonzero.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [norm_nonneg](declarations/norm-nonneg.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lift_index_left_left](declarations/lift-index-left-left.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [lift_index_left](declarations/lift-index-left.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lift_index_right](declarations/lift-index-right.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [valuation](declarations/valuation.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [norm_eq_zpow_neg_valuation](declarations/norm-eq-zpow-neg-valuation.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [val_eq_iff_norm_eq](declarations/val-eq-iff-norm-eq.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [norm_mul](declarations/norm-mul.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eq_zero_iff_equiv_zero](declarations/eq-zero-iff-equiv-zero.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ne_zero_iff_nequiv_zero](declarations/ne-zero-iff-nequiv-zero.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [norm_const](declarations/norm-const.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [norm_values_discrete](declarations/norm-values-discrete.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_one](declarations/norm-one.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [norm_eq_of_equiv_aux](declarations/norm-eq-of-equiv-aux.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [norm_eq_of_equiv](declarations/norm-eq-of-equiv.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [norm_equiv](declarations/norm-equiv.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [norm_nonarchimedean_aux](declarations/norm-nonarchimedean-aux.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [norm_nonarchimedean](declarations/norm-nonarchimedean.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [norm_eq](declarations/norm-eq.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [norm_neg](declarations/norm-neg.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [norm_eq_of_add_equiv_zero](declarations/norm-eq-of-add-equiv-zero.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [add_eq_max_of_ne](declarations/add-eq-max-of-ne.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [Padic](declarations/padic.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [mk](declarations/mk.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [zero_def](declarations/zero-def.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mk_eq](declarations/mk-eq.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [const_equiv](declarations/const-equiv.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [coe_inj](declarations/coe-inj.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [coe_add](declarations/coe-add.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [coe_neg](declarations/coe-neg.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [coe_mul](declarations/coe-mul.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [coe_sub](declarations/coe-sub.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [coe_div](declarations/coe-div.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [coe_one](declarations/coe-one.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [coe_zero](declarations/coe-zero.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [padicNormE](declarations/padicnorme.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [defn](declarations/defn.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [nonarchimedean'](declarations/nonarchimedean.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [add_eq_max_of_ne'](declarations/add-eq-max-of-ne-source-edition-3.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [eq_padic_norm'](declarations/eq-padic-norm.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [image'](declarations/image.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [rat_dense'](declarations/rat-dense.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [div_nat_pos](declarations/div-nat-pos.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [limSeq](declarations/limseq.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [exi_rat_seq_conv](declarations/exi-rat-seq-conv.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [exi_rat_seq_conv_cauchy](declarations/exi-rat-seq-conv-cauchy.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [lim'](declarations/lim.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [lim](declarations/lim-source-edition-2.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [complete'](declarations/complete-source-edition-3.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [complete''](declarations/complete.md) | 773 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [metricSpace](declarations/metricspace.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [normedField](declarations/normedfield.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [isAbsoluteValue](declarations/isabsolutevalue.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [rat_dense](declarations/rat-dense-source-edition-2.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [denseRange_ratCast](declarations/denserange-ratcast.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [padicNormE.mul](declarations/padicnorme-mul.md) | 843 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [padicNormE.is_norm](declarations/padicnorme-is-norm.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [nonarchimedean](declarations/nonarchimedean-source-edition-2.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [add_eq_max_of_ne](declarations/add-eq-max-of-ne-source-edition-2.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [eq_padicNorm](declarations/eq-padicnorm.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [norm_p](declarations/norm-p.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [norm_p_lt_one](declarations/norm-p-lt-one.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [norm_p_zpow](declarations/norm-p-zpow.md) | 873 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [norm_p_pow](declarations/norm-p-pow.md) | 877 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [padicNormE.image](declarations/padicnorme-image.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [padicNormE.is_rat](declarations/padicnorme-is-rat.md) | 893 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [ratNorm](declarations/ratnorm.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [eq_ratNorm](declarations/eq-ratnorm.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [norm_rat_le_one](declarations/norm-rat-le-one.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [norm_int_le_one](declarations/norm-int-le-one.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [norm_intCast_lt_one_iff](declarations/norm-intcast-lt-one-iff.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [norm_natCast_lt_one_iff](declarations/norm-natcast-lt-one-iff.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [norm_intCast_eq_one_iff](declarations/norm-intcast-eq-one-iff.md) | 957 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [norm_natCast_eq_one_iff](declarations/norm-natcast-eq-one-iff.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [norm_int_le_pow_iff_dvd](declarations/norm-int-le-pow-iff-dvd.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [norm_eq_of_norm_add_lt_right](declarations/norm-eq-of-norm-add-lt-right.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [norm_eq_of_norm_add_lt_left](declarations/norm-eq-of-norm-add-lt-left.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [norm_eq_of_norm_sub_lt_right](declarations/norm-eq-of-norm-sub-lt-right.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [norm_eq_of_norm_sub_lt_left](declarations/norm-eq-of-norm-sub-lt-left.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [norm_natCast_p_sub_one](declarations/norm-natcast-p-sub-one.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [complete](declarations/complete-source-edition-2.md) | 1002 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [padicNormE_lim_le](declarations/padicnorme-lim-le.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [valuation](declarations/valuation-source-edition-2.md) | 1048 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [valuation_zero](declarations/valuation-zero.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [norm_eq_zpow_neg_valuation](declarations/norm-eq-zpow-neg-valuation-source-edition-2.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [valuation_ratCast](declarations/valuation-ratcast.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [valuation_intCast](declarations/valuation-intcast.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [valuation_natCast](declarations/valuation-natcast.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [valuation_ofNat](declarations/valuation-ofnat.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `lemma` | [valuation_one](declarations/valuation-one.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [valuation_p](declarations/valuation-p.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [le_valuation_add](declarations/le-valuation-add.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `lemma` | [valuation_mul](declarations/valuation-mul.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `lemma` | [valuation_inv](declarations/valuation-inv.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `lemma` | [valuation_pow](declarations/valuation-pow.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `lemma` | [valuation_zpow](declarations/valuation-zpow.md) | 1142 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [addValuationDef](declarations/addvaluationdef.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [AddValuation.map_zero](declarations/addvaluation-map-zero.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [AddValuation.map_one](declarations/addvaluation-map-one.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [AddValuation.map_mul](declarations/addvaluation-map-mul.md) | 1159 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [AddValuation.map_add](declarations/addvaluation-map-add.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [mulValuation](declarations/mulvaluation.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `lemma` | [comap_mulValuation_eq_padicValuation](declarations/comap-mulvaluation-eq-padicvaluation.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `lemma` | [comap_mulValuation_eq_int_padicValuation](declarations/comap-mulvaluation-eq-int-padicvaluation.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `lemma` | [norm_eq_zpow_log_mulValuation](declarations/norm-eq-zpow-log-mulvaluation.md) | 1210 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [norm_lt_zpow_iff_mulValuation_lt_exp](declarations/norm-lt-zpow-iff-mulvaluation-lt-exp.md) | 1214 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `lemma` | [norm_lt_norm_iff_mulValuation_lt](declarations/norm-lt-norm-iff-mulvaluation-lt.md) | 1222 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [addValuation](declarations/addvaluation.md) | 1230 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [addValuation.apply](declarations/addvaluation-apply.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [norm_le_pow_iff_norm_lt_pow_add_one](declarations/norm-le-pow-iff-norm-lt-pow-add-one.md) | 1244 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [norm_lt_pow_iff_norm_le_pow_sub_one](declarations/norm-lt-pow-iff-norm-le-pow-sub-one.md) | 1254 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [norm_le_one_iff_val_nonneg](declarations/norm-le-one-iff-val-nonneg.md) | 1258 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b3fe21f0154635134b3072943eabe990c621ac6f015404a43fac149eb87faea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant91a8dee2c66e6081f4fdc0af44233e118c67dce041a513d5b79f1650ef7713b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
