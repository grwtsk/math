# Algebra Mv Polynomial Basic Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**179 observed declarations and anonymous commands**, 150 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta74d69a38ef13e4ca216819f5ee15c43a0ab77859b0c4c22af7610026f6bcc60.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b77a216da2c1603a6cdfad58ad88182643ff4e7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [MvPolynomial](declarations/mvpolynomial.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [decidableEqMvPolynomial](declarations/decidableeqmvpolynomial.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [commSemiring](declarations/commsemiring.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [inhabited](declarations/inhabited.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [distribuMulAction](declarations/distribumulaction.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [smulZeroClass](declarations/smulzeroclass.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [faithfulSMul](declarations/faithfulsmul.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [module](declarations/module.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [isScalarTower](declarations/isscalartower.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [algebra](declarations/algebra.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [isScalarTower_right](declarations/isscalartower-right.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [smulCommClass_right](declarations/smulcommclass-right.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [unique](declarations/unique.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [monomial](declarations/monomial.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [one_def](declarations/one-def.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [single_eq_monomial](declarations/single-eq-monomial.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_def](declarations/mul-def.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [C](declarations/c.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [algebraMap_eq](declarations/algebramap-eq.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [X](declarations/x.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [monomial_left_injective](declarations/monomial-left-injective.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monomial_left_inj](declarations/monomial-left-inj.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [C_apply](declarations/c-apply.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [C_0](declarations/c-0.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [C_1](declarations/c-1.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [C_mul_monomial](declarations/c-mul-monomial.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [C_add](declarations/c-add.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [C_mul](declarations/c-mul-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [C_pow](declarations/c-pow.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [C_injective](declarations/c-injective.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [C_surjective](declarations/c-surjective.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [C_inj](declarations/c-inj.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [C_eq_zero](declarations/c-eq-zero.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [C_ne_zero](declarations/c-ne-zero.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [nontrivial_of_nontrivial](declarations/nontrivial-of-nontrivial.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [infinite_of_infinite](declarations/infinite-of-infinite.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [infinite_of_nonempty](declarations/infinite-of-nonempty.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [C_eq_coe_nat](declarations/c-eq-coe-nat.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [C_mul'](declarations/c-mul.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [smul_eq_C_mul](declarations/smul-eq-c-mul.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [C_eq_smul_one](declarations/c-eq-smul-one.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [smul_monomial](declarations/smul-monomial.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [X_injective](declarations/x-injective.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [X_inj](declarations/x-inj.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [monomial_pow](declarations/monomial-pow.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [monomial_mul](declarations/monomial-mul.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [monomialOneHom](declarations/monomialonehom.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [monomialOneHom_apply](declarations/monomialonehom-apply.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [X_pow_eq_monomial](declarations/x-pow-eq-monomial.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [monomial_add_single](declarations/monomial-add-single.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [monomial_single_add](declarations/monomial-single-add.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [C_mul_X_pow_eq_monomial](declarations/c-mul-x-pow-eq-monomial.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [C_mul_X_eq_monomial](declarations/c-mul-x-eq-monomial.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [monomial_zero](declarations/monomial-zero-source-edition-2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [monomial_zero'](declarations/monomial-zero.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [monomial_eq_zero](declarations/monomial-eq-zero.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sum_monomial_eq](declarations/sum-monomial-eq.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sum_C](declarations/sum-c.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [monomial_sum_one](declarations/monomial-sum-one.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [monomial_sum_index](declarations/monomial-sum-index.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [monomial_finsupp_sum_index](declarations/monomial-finsupp-sum-index.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [monomial_eq_monomial_iff](declarations/monomial-eq-monomial-iff.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [monomial_eq](declarations/monomial-eq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [prod_X_pow_eq_monomial](declarations/prod-x-pow-eq-monomial.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [induction_on_monomial](declarations/induction-on-monomial.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [induction_on'](declarations/induction-on-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [monomial_add_induction_on](declarations/monomial-add-induction-on.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [induction_on''](declarations/induction-on.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [induction_on](declarations/induction-on-source-edition-3.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [ringHom_ext](declarations/ringhom-ext.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [ringHom_ext'](declarations/ringhom-ext-source-edition-2.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [hom_eq_hom](declarations/hom-eq-hom.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [is_id](declarations/is-id.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [algHom_ext'](declarations/alghom-ext-source-edition-2.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [algHom_ext](declarations/alghom-ext.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [algHom_C](declarations/alghom-c.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [adjoin_range_X](declarations/adjoin-range-x.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [linearMap_ext](declarations/linearmap-ext.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [support](declarations/support.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [finsupp_support_eq_support](declarations/finsupp-support-eq-support.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [support_monomial](declarations/support-monomial.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [support_monomial_subset](declarations/support-monomial-subset.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [support_add](declarations/support-add.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [support_X](declarations/support-x.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [support_X_pow](declarations/support-x-pow.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [support_zero](declarations/support-zero.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [support_smul](declarations/support-smul.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [support_sum](declarations/support-sum.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [coeff](declarations/coeff.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [notMem_support_iff](declarations/notmem-support-iff.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [sum_def](declarations/sum-def.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [support_mul](declarations/support-mul.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [disjoint_support_monomial](declarations/disjoint-support-monomial.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [ext](declarations/ext.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coeff_add](declarations/coeff-add.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [coeff_zero](declarations/coeff-zero.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [coeff_zero_X](declarations/coeff-zero-x.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [coeffAddMonoidHom](declarations/coeffaddmonoidhom.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [lcoeff](declarations/lcoeff.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [coeff_sum](declarations/coeff-sum.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [monic_monomial_eq](declarations/monic-monomial-eq.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [coeff_monomial](declarations/coeff-monomial.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [coeff_C](declarations/coeff-c.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [eq_C_of_isEmpty](declarations/eq-c-of-isempty.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [coeff_one](declarations/coeff-one.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [coeff_zero_C](declarations/coeff-zero-c.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [coeff_zero_one](declarations/coeff-zero-one.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coeff_X_pow](declarations/coeff-x-pow.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [coeff_X'](declarations/coeff-x-source-edition-2.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [coeff_X](declarations/coeff-x.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [coeff_C_mul](declarations/coeff-c-mul.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coeff_mul](declarations/coeff-mul.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [coeff_mul_monomial](declarations/coeff-mul-monomial.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coeff_monomial_mul](declarations/coeff-monomial-mul.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [coeff_mul_X](declarations/coeff-mul-x-source-edition-2.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [coeff_X_mul](declarations/coeff-x-mul-source-edition-2.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [coeff_single_X_pow](declarations/coeff-single-x-pow.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [coeff_single_X](declarations/coeff-single-x.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [support_mul_X](declarations/support-mul-x.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [support_X_mul](declarations/support-x-mul.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [support_smul_eq](declarations/support-smul-eq.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [support_sdiff_support_subset_support_add](declarations/support-sdiff-support-subset-support-add.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [support_symmDiff_support_subset_support_add](declarations/support-symmdiff-support-subset-support-add.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [coeff_mul_monomial'](declarations/coeff-mul-monomial-source-edition-2.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [coeff_monomial_mul'](declarations/coeff-monomial-mul-source-edition-2.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [coeff_mul_X'](declarations/coeff-mul-x.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [coeff_X_mul'](declarations/coeff-x-mul.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [eq_zero_iff](declarations/eq-zero-iff.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [ne_zero_iff](declarations/ne-zero-iff.md) | 751 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [X_ne_zero](declarations/x-ne-zero.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [support_eq_empty](declarations/support-eq-empty.md) | 764 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [support_nonempty](declarations/support-nonempty.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [exists_coeff_ne_zero](declarations/exists-coeff-ne-zero.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [C_dvd_iff_dvd_coeff](declarations/c-dvd-iff-dvd-coeff.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [isRegular_X](declarations/isregular-x.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [isRegular_X_pow](declarations/isregular-x-pow.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [isRegular_prod_X](declarations/isregular-prod-x.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [coeffs](declarations/coeffs.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [coeffs_zero](declarations/coeffs-zero.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [coeffs_one](declarations/coeffs-one.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [coeffs_eq_empty_of_subsingleton](declarations/coeffs-eq-empty-of-subsingleton.md) | 821 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [coeffs_one_of_nontrivial](declarations/coeffs-one-of-nontrivial.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [mem_coeffs_iff](declarations/mem-coeffs-iff.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [coeff_mem_coeffs](declarations/coeff-mem-coeffs.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [zero_notMem_coeffs](declarations/zero-notmem-coeffs.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [coeffs_C](declarations/coeffs-c.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [coeffs_C_subset](declarations/coeffs-c-subset.md) | 850 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [coeffs_mul_X](declarations/coeffs-mul-x.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [coeffs_X_mul](declarations/coeffs-x-mul.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `lemma` | [coeffs_add](declarations/coeffs-add.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [constantCoeff](declarations/constantcoeff.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [constantCoeff_eq](declarations/constantcoeff-eq.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [constantCoeff_C](declarations/constantcoeff-c.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [constantCoeff_X](declarations/constantcoeff-x.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [constantCoeff_smul](declarations/constantcoeff-smul.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [constantCoeff_monomial](declarations/constantcoeff-monomial.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [constantCoeff_comp_C](declarations/constantcoeff-comp-c.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [constantCoeff_comp_algebraMap](declarations/constantcoeff-comp-algebramap.md) | 926 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [support_sum_monomial_coeff](declarations/support-sum-monomial-coeff.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [as_sum](declarations/as-sum.md) | 939 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [coeffsIn](declarations/coeffsin.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `lemma` | [mem_coeffsIn](declarations/mem-coeffsin.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `lemma` | [monomial_mem_coeffsIn](declarations/monomial-mem-coeffsin.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `lemma` | [C_mem_coeffsIn](declarations/c-mem-coeffsin.md) | 969 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `lemma` | [one_coeffsIn](declarations/one-coeffsin.md) | 972 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `lemma` | [mul_monomial_mem_coeffsIn](declarations/mul-monomial-mem-coeffsin.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `lemma` | [monomial_mul_mem_coeffsIn](declarations/monomial-mul-mem-coeffsin.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `lemma` | [mul_X_mem_coeffsIn](declarations/mul-x-mem-coeffsin.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `lemma` | [X_mul_mem_coeffsIn](declarations/x-mul-mem-coeffsin.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `lemma` | [coeffsIn_eq_span_monomial](declarations/coeffsin-eq-span-monomial.md) | 996 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `lemma` | [coeffsIn_le](declarations/coeffsin-le.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `lemma` | [mem_coeffsIn_iff_coeffs_subset](declarations/mem-coeffsin-iff-coeffs-subset.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [coeffsIn_mul](declarations/coeffsin-mul.md) | 1024 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [coeffsIn_pow](declarations/coeffsin-pow.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `lemma` | [le_coeffsIn_pow](declarations/le-coeffsin-pow.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7d4a3dbf9d5a0c6297351063171b4d6c7653526e7cc784a61d1ea2495190228 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta74d69a38ef13e4ca216819f5ee15c43a0ab77859b0c4c22af7610026f6bcc60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
