# Polynomial Coeff Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13b9666e4c3036fb88db8011afae7dda62ca792b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialCoeffNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [coeff_add](declarations/coeff-add.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [support_smul](declarations/support-smul.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [card_support_mul_le](declarations/card-support-mul-le.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [lsum](declarations/lsum.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [lcoeff](declarations/lcoeff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lcoeff_apply](declarations/lcoeff-apply.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [finset_sum_coeff](declarations/finset-sum-coeff.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [coeff_list_sum](declarations/coeff-list-sum.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coeff_list_sum_map](declarations/coeff-list-sum-map.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coeff_sum](declarations/coeff-sum.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coeff_mul](declarations/coeff-mul.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mul_coeff_zero](declarations/mul-coeff-zero.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_coeff_one](declarations/mul-coeff-one.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [constantCoeff](declarations/constantcoeff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isUnit_C](declarations/isunit-c.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeff_mul_X_zero](declarations/coeff-mul-x-zero.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coeff_X_mul_zero](declarations/coeff-x-mul-zero.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coeff_C_mul_X_pow](declarations/coeff-c-mul-x-pow.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coeff_C_mul_X](declarations/coeff-c-mul-x.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coeff_C_mul](declarations/coeff-c-mul.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [C_mul'](declarations/c-mul.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coeff_mul_C](declarations/coeff-mul-c.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [coeff_mul_natCast](declarations/coeff-mul-natcast.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [coeff_natCast_mul](declarations/coeff-natcast-mul.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [coeff_mul_ofNat](declarations/coeff-mul-ofnat.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [coeff_ofNat_mul](declarations/coeff-ofnat-mul.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [coeff_mul_intCast](declarations/coeff-mul-intcast.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [coeff_intCast_mul](declarations/coeff-intcast-mul.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coeff_X_pow](declarations/coeff-x-pow.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coeff_X_pow_self](declarations/coeff-x-pow-self.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [support_binomial](declarations/support-binomial.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [support_trinomial](declarations/support-trinomial.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [card_support_binomial](declarations/card-support-binomial.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [card_support_trinomial](declarations/card-support-trinomial.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coeff_mul_X_pow](declarations/coeff-mul-x-pow-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coeff_X_pow_mul](declarations/coeff-x-pow-mul.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coeff_mul_X_pow'](declarations/coeff-mul-x-pow.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coeff_X_pow_mul'](declarations/coeff-x-pow-mul-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coeff_mul_X](declarations/coeff-mul-x.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [coeff_X_mul](declarations/coeff-x-mul.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coeff_mul_monomial](declarations/coeff-mul-monomial.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coeff_monomial_mul](declarations/coeff-monomial-mul.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coeff_mul_monomial_zero](declarations/coeff-mul-monomial-zero.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [coeff_monomial_zero_mul](declarations/coeff-monomial-zero-mul.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mul_X_pow_eq_zero](declarations/mul-x-pow-eq-zero.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isRegular_X_pow](declarations/isregular-x-pow.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [isRegular_X](declarations/isregular-x.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coeff_X_add_C_pow](declarations/coeff-x-add-c-pow.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [coeff_X_add_one_pow](declarations/coeff-x-add-one-pow.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [coeff_one_add_X_pow](declarations/coeff-one-add-x-pow.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [C_dvd_iff_dvd_coeff](declarations/c-dvd-iff-dvd-coeff.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [smul_eq_C_mul](declarations/smul-eq-c-mul.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [update_eq_add_sub_coeff](declarations/update-eq-add-sub-coeff.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [natCast_coeff_zero](declarations/natcast-coeff-zero.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [natCast_inj](declarations/natcast-inj.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [intCast_coeff_zero](declarations/intcast-coeff-zero.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [intCast_inj](declarations/intcast-inj.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [charZero](declarations/charzero.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [charP](declarations/charp.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69145e94bdfaafaa0ab4c70256f06ae9aadd6466e838979cab5b1fe4e2ff4aa6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variant4ed26ec62a5df95538baae7f50634735f8fd12cf301b85d952d55fe6702f0889.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
