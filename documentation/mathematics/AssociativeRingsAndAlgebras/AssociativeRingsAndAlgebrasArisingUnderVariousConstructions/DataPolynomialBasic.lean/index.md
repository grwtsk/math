# Data Polynomial Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**201 observed declarations and anonymous commands**, 165 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant580e8295104df0f40059f8e6ab62db213475b02b98de69aeaceb5c90a6e19eee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `439d0de2d5c58b2f44b561cbd529764cd9a8bfca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Polynomial](declarations/polynomial.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [forall_iff_forall_finsupp](declarations/forall-iff-forall-finsupp.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [exists_iff_exists_finsupp](declarations/exists-iff-exists-finsupp.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [eta](declarations/eta.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [zero](declarations/zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [one](declarations/one.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [add'](declarations/add.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [neg'](declarations/neg.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [sub](declarations/sub.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [mul'](declarations/mul.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [smulZeroClass](declarations/smulzeroclass.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ofFinsupp_zero](declarations/offinsupp-zero.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ofFinsupp_one](declarations/offinsupp-one.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofFinsupp_add](declarations/offinsupp-add.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ofFinsupp_neg](declarations/offinsupp-neg.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ofFinsupp_sub](declarations/offinsupp-sub.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ofFinsupp_mul](declarations/offinsupp-mul.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ofFinsupp_smul](declarations/offinsupp-smul.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofFinsupp_pow](declarations/offinsupp-pow.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toFinsupp_zero](declarations/tofinsupp-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toFinsupp_one](declarations/tofinsupp-one.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toFinsupp_add](declarations/tofinsupp-add.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toFinsupp_neg](declarations/tofinsupp-neg.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toFinsupp_sub](declarations/tofinsupp-sub.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toFinsupp_mul](declarations/tofinsupp-mul.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toFinsupp_smul](declarations/tofinsupp-smul.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toFinsupp_pow](declarations/tofinsupp-pow.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.IsSMulRegular.polynomial](declarations/root-issmulregular-polynomial.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toFinsupp_injective](declarations/tofinsupp-injective.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toFinsupp_inj](declarations/tofinsupp-inj.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toFinsupp_eq_zero](declarations/tofinsupp-eq-zero.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toFinsupp_eq_one](declarations/tofinsupp-eq-one.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ofFinsupp_inj](declarations/offinsupp-inj.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ofFinsupp_eq_zero](declarations/offinsupp-eq-zero.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ofFinsupp_eq_one](declarations/offinsupp-eq-one.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [inhabited](declarations/inhabited.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [natCast](declarations/natcast.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [semiring](declarations/semiring.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [distribSMul](declarations/distribsmul.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [faithfulSMul](declarations/faithfulsmul.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [module](declarations/module.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [isScalarTower](declarations/isscalartower.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [isScalarTower_right](declarations/isscalartower-right.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [unique](declarations/unique.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [toFinsuppIso](declarations/tofinsuppiso.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [ofFinsupp_sum](declarations/offinsupp-sum.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [toFinsupp_sum](declarations/tofinsupp-sum.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [support](declarations/support.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [support_ofFinsupp](declarations/support-offinsupp.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [support_toFinsupp](declarations/support-tofinsupp.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [support_zero](declarations/support-zero.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [support_eq_empty](declarations/support-eq-empty.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [card_support_eq_zero](declarations/card-support-eq-zero.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [monomial](declarations/monomial.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [toFinsupp_monomial](declarations/tofinsupp-monomial.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ofFinsupp_single](declarations/offinsupp-single.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [monomial_zero_right](declarations/monomial-zero-right.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [monomial_zero_one](declarations/monomial-zero-one.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [monomial_add](declarations/monomial-add.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [monomial_mul_monomial](declarations/monomial-mul-monomial.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [monomial_pow](declarations/monomial-pow.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [smul_monomial](declarations/smul-monomial.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [monomial_injective](declarations/monomial-injective.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [monomial_eq_zero_iff](declarations/monomial-eq-zero-iff.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [support_add](declarations/support-add.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [C](declarations/c.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [monomial_zero_left](declarations/monomial-zero-left.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [toFinsupp_C](declarations/tofinsupp-c.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [C_0](declarations/c-0.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [C_1](declarations/c-1.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [C_mul](declarations/c-mul.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [C_add](declarations/c-add.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [smul_C](declarations/smul-c.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [C_bit0](declarations/c-bit0.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [C_bit1](declarations/c-bit1.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [C_pow](declarations/c-pow.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [C_eq_nat_cast](declarations/c-eq-nat-cast.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [C_mul_monomial](declarations/c-mul-monomial.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [monomial_mul_C](declarations/monomial-mul-c.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [X](declarations/x.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [monomial_one_one_eq_X](declarations/monomial-one-one-eq-x.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [monomial_one_right_eq_X_pow](declarations/monomial-one-right-eq-x-pow.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [toFinsupp_X](declarations/tofinsupp-x.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [X_mul](declarations/x-mul.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [X_pow_mul](declarations/x-pow-mul.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [X_mul_C](declarations/x-mul-c.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [X_pow_mul_C](declarations/x-pow-mul-c.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [X_pow_mul_assoc](declarations/x-pow-mul-assoc.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [X_pow_mul_assoc_C](declarations/x-pow-mul-assoc-c.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [commute_X](declarations/commute-x.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [commute_X_pow](declarations/commute-x-pow.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [monomial_mul_X](declarations/monomial-mul-x.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [monomial_mul_X_pow](declarations/monomial-mul-x-pow.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [X_mul_monomial](declarations/x-mul-monomial.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [X_pow_mul_monomial](declarations/x-pow-mul-monomial.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [coeff](declarations/coeff.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [coeff_ofFinsupp](declarations/coeff-offinsupp.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [coeff_injective](declarations/coeff-injective.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [coeff_inj](declarations/coeff-inj.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [toFinsupp_apply](declarations/tofinsupp-apply.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [coeff_monomial](declarations/coeff-monomial.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [coeff_zero](declarations/coeff-zero.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [coeff_one_zero](declarations/coeff-one-zero.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [coeff_X_one](declarations/coeff-x-one.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [coeff_X_zero](declarations/coeff-x-zero.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [coeff_monomial_succ](declarations/coeff-monomial-succ.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coeff_X](declarations/coeff-x.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [coeff_X_of_ne_one](declarations/coeff-x-of-ne-one.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [not_mem_support_iff](declarations/not-mem-support-iff.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coeff_C](declarations/coeff-c.md) | 722 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [coeff_C_zero](declarations/coeff-c-zero.md) | 728 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coeff_C_ne_zero](declarations/coeff-c-ne-zero.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [coeff_C_succ](declarations/coeff-c-succ.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [coeff_nat_cast_ite](declarations/coeff-nat-cast-ite.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [C_mul_X_pow_eq_monomial](declarations/c-mul-x-pow-eq-monomial.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [toFinsupp_C_mul_X_pow](declarations/tofinsupp-c-mul-x-pow.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [C_mul_X_eq_monomial](declarations/c-mul-x-eq-monomial.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [toFinsupp_C_mul_X](declarations/tofinsupp-c-mul-x.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [C_injective](declarations/c-injective.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [C_inj](declarations/c-inj.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [C_eq_zero](declarations/c-eq-zero.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [C_ne_zero](declarations/c-ne-zero.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [subsingleton_iff_subsingleton](declarations/subsingleton-iff-subsingleton.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [Nontrivial.of_polynomial_ne](declarations/nontrivial-of-polynomial-ne.md) | 786 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [forall_eq_iff_forall_eq](declarations/forall-eq-iff-forall-eq.md) | 790 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [ext_iff](declarations/ext-iff.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [ext](declarations/ext.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [addSubmonoid_closure_setOf_eq_monomial](declarations/addsubmonoid-closure-setof-eq-monomial.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [addHom_ext](declarations/addhom-ext-source-edition-2.md) | 818 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [addHom_ext'](declarations/addhom-ext.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [lhom_ext'](declarations/lhom-ext.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [eq_zero_of_eq_zero](declarations/eq-zero-of-eq-zero.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `theorem` | [support_monomial](declarations/support-monomial.md) | 844 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `theorem` | [support_monomial'](declarations/support-monomial-source-edition-2.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [support_C_mul_X](declarations/support-c-mul-x-source-edition-2.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [support_C_mul_X'](declarations/support-c-mul-x.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [support_C_mul_X_pow](declarations/support-c-mul-x-pow-source-edition-2.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [support_C_mul_X_pow'](declarations/support-c-mul-x-pow.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [support_binomial'](declarations/support-binomial.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [support_trinomial'](declarations/support-trinomial.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [X_pow_eq_monomial](declarations/x-pow-eq-monomial.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [toFinsupp_X_pow](declarations/tofinsupp-x-pow.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [smul_X_eq_monomial](declarations/smul-x-eq-monomial.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [support_X_pow](declarations/support-x-pow.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [support_X_empty](declarations/support-x-empty.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [support_X](declarations/support-x.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [monomial_left_inj](declarations/monomial-left-inj.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [binomial_eq_binomial](declarations/binomial-eq-binomial.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [nat_cast_mul](declarations/nat-cast-mul.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `def` | [sum](declarations/sum.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [sum_def](declarations/sum-def.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [sum_eq_of_subset](declarations/sum-eq-of-subset.md) | 951 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [mul_eq_sum_sum](declarations/mul-eq-sum-sum.md) | 958 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [sum_zero_index](declarations/sum-zero-index.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [sum_monomial_index](declarations/sum-monomial-index.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [sum_C_index](declarations/sum-c-index.md) | 978 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [sum_X_index](declarations/sum-x-index.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [sum_add_index](declarations/sum-add-index.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [sum_add'](declarations/sum-add.md) | 997 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [sum_add](declarations/sum-add-source-edition-2.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `theorem` | [sum_smul_index](declarations/sum-smul-index.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [sum_monomial_eq](declarations/sum-monomial-eq.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [sum_C_mul_X_pow_eq](declarations/sum-c-mul-x-pow-eq.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `theorem` | [toFinsupp_erase](declarations/tofinsupp-erase.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [ofFinsupp_erase](declarations/offinsupp-erase.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `theorem` | [support_erase](declarations/support-erase.md) | 1038 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [monomial_add_erase](declarations/monomial-add-erase.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [coeff_erase](declarations/coeff-erase.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [erase_zero](declarations/erase-zero.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `theorem` | [erase_monomial](declarations/erase-monomial.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `theorem` | [erase_same](declarations/erase-same.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `theorem` | [erase_ne](declarations/erase-ne.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `def` | [update](declarations/update.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `theorem` | [coeff_update](declarations/coeff-update.md) | 1086 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `theorem` | [coeff_update_apply](declarations/coeff-update-apply.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `theorem` | [coeff_update_same](declarations/coeff-update-same.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `theorem` | [coeff_update_ne](declarations/coeff-update-ne.md) | 1103 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `theorem` | [update_zero_eq_erase](declarations/update-zero-eq-erase.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `theorem` | [support_update](declarations/support-update.md) | 1113 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `theorem` | [support_update_zero](declarations/support-update-zero.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `theorem` | [support_update_ne_zero](declarations/support-update-ne-zero.md) | 1125 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `instance` | [commSemiring](declarations/commsemiring.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `instance` | [intCast](declarations/intcast.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `instance` | [ring](declarations/ring.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `theorem` | [coeff_neg](declarations/coeff-neg.md) | 1159 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `theorem` | [coeff_sub](declarations/coeff-sub.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `theorem` | [monomial_neg](declarations/monomial-neg.md) | 1174 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `theorem` | [support_neg](declarations/support-neg.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `theorem` | [C_eq_int_cast](declarations/c-eq-int-cast.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `instance` | [commRing](declarations/commring.md) | 1190 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `instance` | [nontrivial](declarations/nontrivial.md) | 1200 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `theorem` | [X_ne_zero](declarations/x-ne-zero.md) | 1207 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `theorem` | [rat_smul_eq_C_mul](declarations/rat-smul-eq-c-mul.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `theorem` | [nontrivial_iff](declarations/nontrivial-iff.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `instance` | [repr](declarations/repr.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db2655f716ec4faae117a6b841f62b08e0b018dad4f706928ecb524ffc7fd1ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant580e8295104df0f40059f8e6ab62db213475b02b98de69aeaceb5c90a6e19eee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
