# Algebra Mv Polynomial Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**179 observed declarations and anonymous commands**, 150 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7178d84d5d72120af9e5fa24a7ec65eb19c6c00`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [MvPolynomial](declarations/mvpolynomial.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [decidableEqMvPolynomial](declarations/decidableeqmvpolynomial.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [commSemiring](declarations/commsemiring.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [inhabited](declarations/inhabited.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [distribuMulAction](declarations/distribumulaction.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [smulZeroClass](declarations/smulzeroclass.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [faithfulSMul](declarations/faithfulsmul.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [module](declarations/module.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [isScalarTower](declarations/isscalartower.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [algebra](declarations/algebra.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [isScalarTower_right](declarations/isscalartower-right.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [smulCommClass_right](declarations/smulcommclass-right.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [unique](declarations/unique.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [monomial](declarations/monomial.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [one_def](declarations/one-def.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [single_eq_monomial](declarations/single-eq-monomial.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_def](declarations/mul-def.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [C](declarations/c.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [algebraMap_eq](declarations/algebramap-eq.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [X](declarations/x.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [monomial_left_injective](declarations/monomial-left-injective.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monomial_left_inj](declarations/monomial-left-inj.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [C_apply](declarations/c-apply.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [C_0](declarations/c-0.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [C_1](declarations/c-1.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [C_mul_monomial](declarations/c-mul-monomial.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [C_add](declarations/c-add.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [C_mul](declarations/c-mul-source-edition-2.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [C_pow](declarations/c-pow.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [C_injective](declarations/c-injective.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [C_surjective](declarations/c-surjective.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [C_inj](declarations/c-inj.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [C_eq_zero](declarations/c-eq-zero.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [C_ne_zero](declarations/c-ne-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [nontrivial_of_nontrivial](declarations/nontrivial-of-nontrivial.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [infinite_of_infinite](declarations/infinite-of-infinite.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [infinite_of_nonempty](declarations/infinite-of-nonempty.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [C_eq_coe_nat](declarations/c-eq-coe-nat.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [C_mul'](declarations/c-mul.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [smul_eq_C_mul](declarations/smul-eq-c-mul.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [C_eq_smul_one](declarations/c-eq-smul-one.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [smul_monomial](declarations/smul-monomial.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [X_injective](declarations/x-injective.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [X_inj](declarations/x-inj.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [monomial_pow](declarations/monomial-pow.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [monomial_mul](declarations/monomial-mul.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [monomialOneHom](declarations/monomialonehom.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [monomialOneHom_apply](declarations/monomialonehom-apply.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [X_pow_eq_monomial](declarations/x-pow-eq-monomial.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [monomial_add_single](declarations/monomial-add-single.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [monomial_single_add](declarations/monomial-single-add.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [C_mul_X_pow_eq_monomial](declarations/c-mul-x-pow-eq-monomial.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [C_mul_X_eq_monomial](declarations/c-mul-x-eq-monomial.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [monomial_zero](declarations/monomial-zero-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [monomial_zero'](declarations/monomial-zero.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [monomial_eq_zero](declarations/monomial-eq-zero.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sum_monomial_eq](declarations/sum-monomial-eq.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sum_C](declarations/sum-c.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [monomial_sum_one](declarations/monomial-sum-one.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [monomial_sum_index](declarations/monomial-sum-index.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [monomial_finsupp_sum_index](declarations/monomial-finsupp-sum-index.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [monomial_eq_monomial_iff](declarations/monomial-eq-monomial-iff.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [monomial_eq](declarations/monomial-eq.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [prod_X_pow_eq_monomial](declarations/prod-x-pow-eq-monomial.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [induction_on_monomial](declarations/induction-on-monomial.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [induction_on'](declarations/induction-on-source-edition-2.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [monomial_add_induction_on](declarations/monomial-add-induction-on.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [induction_on''](declarations/induction-on-source-edition-3.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [induction_on](declarations/induction-on.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [ringHom_ext](declarations/ringhom-ext-source-edition-2.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [ringHom_ext'](declarations/ringhom-ext.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [hom_eq_hom](declarations/hom-eq-hom.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [is_id](declarations/is-id.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [algHom_ext'](declarations/alghom-ext.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [algHom_ext](declarations/alghom-ext-source-edition-2.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [algHom_C](declarations/alghom-c.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [adjoin_range_X](declarations/adjoin-range-x.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [linearMap_ext](declarations/linearmap-ext.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [support](declarations/support.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [finsupp_support_eq_support](declarations/finsupp-support-eq-support.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [support_monomial](declarations/support-monomial.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [support_monomial_subset](declarations/support-monomial-subset.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [support_add](declarations/support-add.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [support_X](declarations/support-x.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [support_X_pow](declarations/support-x-pow.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [support_zero](declarations/support-zero.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [support_smul](declarations/support-smul.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [support_sum](declarations/support-sum.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [coeff](declarations/coeff.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [mem_support_iff](declarations/mem-support-iff.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [notMem_support_iff](declarations/notmem-support-iff.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [sum_def](declarations/sum-def.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [support_mul](declarations/support-mul.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [disjoint_support_monomial](declarations/disjoint-support-monomial.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [ext](declarations/ext.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [coeff_add](declarations/coeff-add.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [coeff_zero](declarations/coeff-zero.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [coeff_zero_X](declarations/coeff-zero-x.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [coeffAddMonoidHom](declarations/coeffaddmonoidhom.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [lcoeff](declarations/lcoeff.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [coeff_sum](declarations/coeff-sum.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [monic_monomial_eq](declarations/monic-monomial-eq.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [coeff_monomial](declarations/coeff-monomial.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [coeff_C](declarations/coeff-c.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [eq_C_of_isEmpty](declarations/eq-c-of-isempty.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [coeff_one](declarations/coeff-one.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [coeff_zero_C](declarations/coeff-zero-c.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [coeff_zero_one](declarations/coeff-zero-one.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [coeff_X_pow](declarations/coeff-x-pow.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [coeff_X'](declarations/coeff-x-source-edition-2.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [coeff_X](declarations/coeff-x.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [coeff_C_mul](declarations/coeff-c-mul.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [coeff_mul](declarations/coeff-mul.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [coeff_mul_monomial](declarations/coeff-mul-monomial.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [coeff_monomial_mul](declarations/coeff-monomial-mul-source-edition-2.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [coeff_mul_X](declarations/coeff-mul-x-source-edition-2.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [coeff_X_mul](declarations/coeff-x-mul-source-edition-2.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `lemma` | [coeff_single_X_pow](declarations/coeff-single-x-pow.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `lemma` | [coeff_single_X](declarations/coeff-single-x.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [support_mul_X](declarations/support-mul-x.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [support_X_mul](declarations/support-x-mul.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [support_smul_eq](declarations/support-smul-eq.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [support_sdiff_support_subset_support_add](declarations/support-sdiff-support-subset-support-add.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [support_symmDiff_support_subset_support_add](declarations/support-symmdiff-support-subset-support-add.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [coeff_mul_monomial'](declarations/coeff-mul-monomial-source-edition-2.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [coeff_monomial_mul'](declarations/coeff-monomial-mul.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [coeff_mul_X'](declarations/coeff-mul-x.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [coeff_X_mul'](declarations/coeff-x-mul.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [eq_zero_iff](declarations/eq-zero-iff.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [ne_zero_iff](declarations/ne-zero-iff.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [X_ne_zero](declarations/x-ne-zero.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [support_eq_empty](declarations/support-eq-empty.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `lemma` | [support_nonempty](declarations/support-nonempty.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [exists_coeff_ne_zero](declarations/exists-coeff-ne-zero.md) | 763 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [C_dvd_iff_dvd_coeff](declarations/c-dvd-iff-dvd-coeff.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `lemma` | [isRegular_X](declarations/isregular-x.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `lemma` | [isRegular_X_pow](declarations/isregular-x-pow.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `lemma` | [isRegular_prod_X](declarations/isregular-prod-x.md) | 794 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [coeffs](declarations/coeffs.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `lemma` | [coeffs_zero](declarations/coeffs-zero.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `lemma` | [coeffs_one](declarations/coeffs-one.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `lemma` | [coeffs_eq_empty_of_subsingleton](declarations/coeffs-eq-empty-of-subsingleton.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `lemma` | [coeffs_one_of_nontrivial](declarations/coeffs-one-of-nontrivial.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `lemma` | [mem_coeffs_iff](declarations/mem-coeffs-iff.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `lemma` | [coeff_mem_coeffs](declarations/coeff-mem-coeffs.md) | 826 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `lemma` | [zero_notMem_coeffs](declarations/zero-notmem-coeffs.md) | 831 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `lemma` | [coeffs_C](declarations/coeffs-c.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `lemma` | [coeffs_C_subset](declarations/coeffs-c-subset.md) | 842 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `lemma` | [coeffs_mul_X](declarations/coeffs-mul-x.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `lemma` | [coeffs_X_mul](declarations/coeffs-x-mul.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `lemma` | [coeffs_add](declarations/coeffs-add.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [constantCoeff](declarations/constantcoeff.md) | 882 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [constantCoeff_eq](declarations/constantcoeff-eq.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [constantCoeff_C](declarations/constantcoeff-c.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [constantCoeff_X](declarations/constantcoeff-x.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [constantCoeff_smul](declarations/constantcoeff-smul.md) | 903 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [constantCoeff_monomial](declarations/constantcoeff-monomial.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [constantCoeff_comp_C](declarations/constantcoeff-comp-c.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [constantCoeff_comp_algebraMap](declarations/constantcoeff-comp-algebramap.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `theorem` | [support_sum_monomial_coeff](declarations/support-sum-monomial-coeff.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `theorem` | [as_sum](declarations/as-sum.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `def` | [coeffsIn](declarations/coeffsin.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `lemma` | [mem_coeffsIn](declarations/mem-coeffsin.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `lemma` | [monomial_mem_coeffsIn](declarations/monomial-mem-coeffsin.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `lemma` | [C_mem_coeffsIn](declarations/c-mem-coeffsin.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `lemma` | [one_coeffsIn](declarations/one-coeffsin.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `lemma` | [mul_monomial_mem_coeffsIn](declarations/mul-monomial-mem-coeffsin.md) | 967 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `lemma` | [monomial_mul_mem_coeffsIn](declarations/monomial-mul-mem-coeffsin.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `lemma` | [mul_X_mem_coeffsIn](declarations/mul-x-mem-coeffsin.md) | 981 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `lemma` | [X_mul_mem_coeffsIn](declarations/x-mul-mem-coeffsin.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `lemma` | [coeffsIn_eq_span_monomial](declarations/coeffsin-eq-span-monomial.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `lemma` | [coeffsIn_le](declarations/coeffsin-le.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `lemma` | [mem_coeffsIn_iff_coeffs_subset](declarations/mem-coeffsin-iff-coeffs-subset.md) | 1003 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `lemma` | [coeffsIn_mul](declarations/coeffsin-mul.md) | 1016 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `lemma` | [coeffsIn_pow](declarations/coeffsin-pow.md) | 1031 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `lemma` | [le_coeffsIn_pow](declarations/le-coeffsin-pow.md) | 1035 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2423f87767ef8b0a2ee25be0ed2f1f440a8241b4c5db78b25086ac3f344313b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantafe6759516934e2098b5a458493d20fb4ffd46d25e950552dc6bbd6cc2bcb7e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
