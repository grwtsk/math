# Linear Algebra Finite Dimensional

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**139 observed declarations and anonymous commands**, 101 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9bd4711528e02e48be1c10bb6d7a39467adff0e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraFiniteDimensional.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteDimensional](declarations/finitedimensional.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [of_injective](declarations/of-injective.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [of_surjective](declarations/of-surjective.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [finiteDimensional_pi](declarations/finitedimensional-pi-source-edition-2.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [finiteDimensional_pi'](declarations/finitedimensional-pi.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [fintypeOfFintype](declarations/fintypeoffintype.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [finite_of_finite](declarations/finite-of-finite.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [of_fintype_basis](declarations/of-fintype-basis.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [fintypeBasisIndex](declarations/fintypebasisindex.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [of_finite_basis](declarations/of-finite-basis.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [finiteDimensional_submodule](declarations/finitedimensional-submodule.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [finiteDimensional_quotient](declarations/finitedimensional-quotient.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [finrank_eq_rank'](declarations/finrank-eq-rank.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finrank_of_infinite_dimensional](declarations/finrank-of-infinite-dimensional.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finiteDimensional_of_finrank](declarations/finitedimensional-of-finrank.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [finiteDimensional_of_finrank_eq_succ](declarations/finitedimensional-of-finrank-eq-succ.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fact_finiteDimensional_of_finrank_eq_succ](declarations/fact-finitedimensional-of-finrank-eq-succ.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finiteDimensional_iff_of_rank_eq_nsmul](declarations/finitedimensional-iff-of-rank-eq-nsmul.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finrank_eq_card_basis'](declarations/finrank-eq-card-basis.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [_root_.Basis.unique](declarations/root-basis-unique.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [finBasis](declarations/finbasis.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [finBasisOfFinrankEq](declarations/finbasisoffinrankeq.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [basisUnique](declarations/basisunique.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [basisUnique.repr_eq_zero_iff](declarations/basisunique-repr-eq-zero-iff.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cardinal_mk_le_finrank_of_linearIndependent](declarations/cardinal-mk-le-finrank-of-linearindependent.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fintype_card_le_finrank_of_linearIndependent](declarations/fintype-card-le-finrank-of-linearindependent.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [finset_card_le_finrank_of_linearIndependent](declarations/finset-card-le-finrank-of-linearindependent.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lt_aleph0_of_linearIndependent](declarations/lt-aleph0-of-linearindependent.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [_root_.LinearIndependent.finite](declarations/root-linearindependent-finite.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [not_linearIndependent_of_infinite](declarations/not-linearindependent-of-infinite.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finrank_pos_iff_exists_ne_zero](declarations/finrank-pos-iff-exists-ne-zero.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finrank_pos_iff](declarations/finrank-pos-iff.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finrank_pos](declarations/finrank-pos.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [finrank_zero_iff](declarations/finrank-zero-iff.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [_root_.Submodule.eq_top_of_finrank_eq](declarations/root-submodule-eq-top-of-finrank-eq.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [finiteDimensional_self](declarations/finitedimensional-self.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [span_of_finite](declarations/span-of-finite.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [span_singleton](declarations/span-singleton.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [span_finset](declarations/span-finset.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [_root_.CompleteLattice.Independent.subtype_ne_bot_le_finrank_aux](declarations/root-completelattice-independent-subtype-ne-bot-le-finrank-aux.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [_root_.CompleteLattice.Independent.fintypeNeBotOfFiniteDimensional](declarations/root-completelattice-independent-fintypenebotoffinitedimensional.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.CompleteLattice.Independent.subtype_ne_bot_le_finrank](declarations/root-completelattice-independent-subtype-ne-bot-le-finrank.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [exists_nontrivial_relation_of_rank_lt_card](declarations/exists-nontrivial-relation-of-rank-lt-card.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exists_nontrivial_relation_sum_zero_of_rank_succ_lt_card](declarations/exists-nontrivial-relation-sum-zero-of-rank-succ-lt-card.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [exists_relation_sum_zero_pos_coefficient_of_rank_succ_lt_card](declarations/exists-relation-sum-zero-pos-coefficient-of-rank-succ-lt-card.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [basisSingleton](declarations/basissingleton.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [basisSingleton_apply](declarations/basissingleton-apply.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [range_basisSingleton](declarations/range-basissingleton.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [finiteDimensional_of_rank_eq_nat](declarations/finitedimensional-of-rank-eq-nat.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [finiteDimensional_of_rank_eq_zero](declarations/finitedimensional-of-rank-eq-zero.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [finiteDimensional_of_rank_eq_one](declarations/finitedimensional-of-rank-eq-one.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [finrank_eq_zero_of_rank_eq_zero](declarations/finrank-eq-zero-of-rank-eq-zero.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [finiteDimensional_bot](declarations/finitedimensional-bot.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [bot_eq_top_of_rank_eq_zero](declarations/bot-eq-top-of-rank-eq-zero.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [rank_eq_zero](declarations/rank-eq-zero.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [finrank_eq_zero](declarations/finrank-eq-zero.md) | 684 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [fg_iff_finiteDimensional](declarations/fg-iff-finitedimensional.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [finiteDimensional_of_le](declarations/finitedimensional-of-le.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [finiteDimensional_inf_left](declarations/finitedimensional-inf-left.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [finiteDimensional_inf_right](declarations/finitedimensional-inf-right.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [finiteDimensional_sup](declarations/finitedimensional-sup.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [finiteDimensional_finset_sup](declarations/finitedimensional-finset-sup.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [finiteDimensional_iSup](declarations/finitedimensional-isup.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [finrank_quotient_add_finrank](declarations/finrank-quotient-add-finrank.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [finrank_lt](declarations/finrank-lt.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [finrank_sup_add_finrank_inf_eq](declarations/finrank-sup-add-finrank-inf-eq.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [finrank_add_le_finrank_add_finrank](declarations/finrank-add-le-finrank-add-finrank.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [eq_top_of_disjoint](declarations/eq-top-of-disjoint.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [finiteDimensional](declarations/finitedimensional-source-edition-2.md) | 816 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [finiteDimensional_finsupp](declarations/finitedimensional-finsupp.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [eq_of_le_of_finrank_le](declarations/eq-of-le-of-finrank-le.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [eq_of_le_of_finrank_eq](declarations/eq-of-le-of-finrank-eq.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [LinearEquiv.quotEquivOfEquiv](declarations/linearequiv-quotequivofequiv.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [LinearEquiv.quotEquivOfQuotEquiv](declarations/linearequiv-quotequivofquotequiv.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [surjective_of_injective](declarations/surjective-of-injective.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [finiteDimensional_of_surjective](declarations/finitedimensional-of-surjective.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [finiteDimensional_range](declarations/finitedimensional-range.md) | 910 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [injective_iff_surjective](declarations/injective-iff-surjective.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [ker_eq_bot_iff_range_eq_top](declarations/ker-eq-bot-iff-range-eq-top.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mul_eq_one_of_mul_eq_one](declarations/mul-eq-one-of-mul-eq-one.md) | 932 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [mul_eq_one_comm](declarations/mul-eq-one-comm.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [comp_eq_id_comm](declarations/comp-eq-id-comm.md) | 950 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [finrank_range_add_finrank_ker](declarations/finrank-range-add-finrank-ker.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [ofInjectiveEndo](declarations/ofinjectiveendo.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [coe_ofInjectiveEndo](declarations/coe-ofinjectiveendo.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [ofInjectiveEndo_right_inv](declarations/ofinjectiveendo-right-inv.md) | 986 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [ofInjectiveEndo_left_inv](declarations/ofinjectiveendo-left-inv.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [isUnit_iff_ker_eq_bot](declarations/isunit-iff-ker-eq-bot.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [isUnit_iff_range_eq_top](declarations/isunit-iff-range-eq-top.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [finrank_zero_iff_forall_zero](declarations/finrank-zero-iff-forall-zero.md) | 1028 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [basisOfFinrankZero](declarations/basisoffinrankzero.md) | 1033 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [injective_iff_surjective_of_finrank_eq_finrank](declarations/injective-iff-surjective-of-finrank-eq-finrank.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [ker_eq_bot_iff_range_eq_top_of_finrank_eq_finrank](declarations/ker-eq-bot-iff-range-eq-top-of-finrank-eq-finrank.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [linearEquivOfInjective](declarations/linearequivofinjective.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [linearEquivOfInjective_apply](declarations/linearequivofinjective-apply.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [FiniteDimensional.exists_mul_eq_one](declarations/finitedimensional-exists-mul-eq-one.md) | 1083 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [divisionRingOfFiniteDimensional](declarations/divisionringoffinitedimensional.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [fieldOfFiniteDimensional](declarations/fieldoffinitedimensional.md) | 1105 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [finrank_mono](declarations/finrank-mono.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [finrank_lt_finrank_of_lt](declarations/finrank-lt-finrank-of-lt.md) | 1123 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [finrank_strictMono](declarations/finrank-strictmono.md) | 1129 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [finrank_add_eq_of_isCompl](declarations/finrank-add-eq-of-iscompl.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [finrank_span_singleton](declarations/finrank-span-singleton.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [exists_smul_eq_of_finrank_eq_one](declarations/exists-smul-eq-of-finrank-eq-one.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [Set.finrank_mono](declarations/set-finrank-mono.md) | 1172 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [span_eq_top_of_linearIndependent_of_card_eq_finrank](declarations/span-eq-top-of-linearindependent-of-card-eq-finrank.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [basisOfLinearIndependentOfCardEqFinrank](declarations/basisoflinearindependentofcardeqfinrank.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [coe_basisOfLinearIndependentOfCardEqFinrank](declarations/coe-basisoflinearindependentofcardeqfinrank.md) | 1211 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [finsetBasisOfLinearIndependentOfCardEqFinrank](declarations/finsetbasisoflinearindependentofcardeqfinrank.md) | 1219 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coe_finsetBasisOfLinearIndependentOfCardEqFinrank](declarations/coe-finsetbasisoflinearindependentofcardeqfinrank.md) | 1226 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [setBasisOfLinearIndependentOfCardEqFinrank](declarations/setbasisoflinearindependentofcardeqfinrank.md) | 1236 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [coe_setBasisOfLinearIndependentOfCardEqFinrank](declarations/coe-setbasisoflinearindependentofcardeqfinrank.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [finrank_eq_one_iff_of_nonzero](declarations/finrank-eq-one-iff-of-nonzero-source-edition-2.md) | 1262 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [finrank_eq_one_iff_of_nonzero'](declarations/finrank-eq-one-iff-of-nonzero.md) | 1275 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [finrank_eq_one_iff](declarations/finrank-eq-one-iff-source-edition-2.md) | 1283 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [finrank_eq_one_iff'](declarations/finrank-eq-one-iff.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [finrank_le_one_iff](declarations/finrank-le-one-iff.md) | 1304 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [Submodule.finrank_le_one_iff_isPrincipal](declarations/submodule-finrank-le-one-iff-isprincipal.md) | 1322 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [Module.finrank_le_one_iff_top_isPrincipal](declarations/module-finrank-le-one-iff-top-isprincipal.md) | 1327 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [surjective_of_nonzero_of_finrank_eq_one](declarations/surjective-of-nonzero-of-finrank-eq-one.md) | 1336 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [is_simple_module_of_finrank_eq_one](declarations/is-simple-module-of-finrank-eq-one.md) | 1347 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [Subalgebra.finiteDimensional_toSubmodule](declarations/subalgebra-finitedimensional-tosubmodule.md) | 1379 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [FiniteDimensional.finiteDimensional_subalgebra](declarations/finitedimensional-finitedimensional-subalgebra.md) | 1389 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [Subalgebra.finiteDimensional_bot](declarations/subalgebra-finitedimensional-bot.md) | 1394 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [Subalgebra.eq_bot_of_rank_le_one](declarations/subalgebra-eq-bot-of-rank-le-one.md) | 1399 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [Subalgebra.eq_bot_of_finrank_one](declarations/subalgebra-eq-bot-of-finrank-one.md) | 1414 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [Subalgebra.rank_eq_one_iff](declarations/subalgebra-rank-eq-one-iff.md) | 1422 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Subalgebra.finrank_eq_one_iff](declarations/subalgebra-finrank-eq-one-iff.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [Subalgebra.bot_eq_top_iff_rank_eq_one](declarations/subalgebra-bot-eq-top-iff-rank-eq-one.md) | 1433 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [Subalgebra.bot_eq_top_iff_finrank_eq_one](declarations/subalgebra-bot-eq-top-iff-finrank-eq-one.md) | 1439 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [Subalgebra.isSimpleOrder_of_finrank](declarations/subalgebra-issimpleorder-of-finrank.md) | 1453 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [exists_ker_pow_eq_ker_pow_succ](declarations/exists-ker-pow-eq-ker-pow-succ.md) | 1482 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [ker_pow_constant](declarations/ker-pow-constant.md) | 1509 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [ker_pow_eq_ker_pow_finrank_of_le](declarations/ker-pow-eq-ker-pow-finrank-of-le.md) | 1522 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [ker_pow_le_ker_pow_finrank](declarations/ker-pow-le-ker-pow-finrank.md) | 1535 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [cardinal_mk_eq_cardinal_mk_field_pow_rank](declarations/cardinal-mk-eq-cardinal-mk-field-pow-rank.md) | 1553 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [cardinal_lt_aleph0_of_finiteDimensional](declarations/cardinal-lt-aleph0-of-finitedimensional.md) | 1563 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ce2e5531a356c1c1161e80cde98ac5e578b385487d7e771a8c7468d89fc2811 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant764f7ca13a498ae399b0f9a75f72d00dad3fda448aa0071c6cd0ecc54da95942.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
