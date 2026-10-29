# Polynomial Basic Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**94 observed declarations and anonymous commands**, 75 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant9cc36b83bac082208070495d9b0db2e13dc946d2ac9118b385d3a3933900436d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c29e1314ab11ac4476d2cf5e3a25b5f3b8ac0289`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [degreeLE](declarations/degreele.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [degreeLT](declarations/degreelt.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_degreeLE](declarations/mem-degreele.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [degreeLE_mono](declarations/degreele-mono.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [degreeLE_eq_span_X_pow](declarations/degreele-eq-span-x-pow.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_degreeLT](declarations/mem-degreelt.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [degreeLT_mono](declarations/degreelt-mono.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [degreeLT_eq_span_X_pow](declarations/degreelt-eq-span-x-pow.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [degreeLTEquiv](declarations/degreeltequiv.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [degreeLTEquiv_eq_zero_iff_eq_zero](declarations/degreeltequiv-eq-zero-iff-eq-zero.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eval_eq_sum_degreeLTEquiv](declarations/eval-eq-sum-degreeltequiv.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [frange](declarations/frange.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [frange_zero](declarations/frange-zero.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_frange_iff](declarations/mem-frange-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [frange_one](declarations/frange-one.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeff_mem_frange](declarations/coeff-mem-frange.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [geom_sum_X_comp_X_add_one_eq_sum](declarations/geom-sum-x-comp-x-add-one-eq-sum.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Monic.geom_sum](declarations/monic-geom-sum-source-edition-2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Monic.geom_sum'](declarations/monic-geom-sum.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [monic_geom_sum_X](declarations/monic-geom-sum-x.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [restriction](declarations/restriction.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coeff_restriction](declarations/coeff-restriction.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coeff_restriction'](declarations/coeff-restriction-source-edition-2.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [support_restriction](declarations/support-restriction.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_restriction](declarations/map-restriction.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [degree_restriction](declarations/degree-restriction.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [natDegree_restriction](declarations/natdegree-restriction.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [monic_restriction](declarations/monic-restriction.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [restriction_zero](declarations/restriction-zero.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [restriction_one](declarations/restriction-one.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [eval₂_restriction](declarations/eval-restriction.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [toSubring](declarations/tosubring.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coeff_toSubring](declarations/coeff-tosubring.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coeff_toSubring'](declarations/coeff-tosubring-source-edition-2.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [support_toSubring](declarations/support-tosubring.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [degree_toSubring](declarations/degree-tosubring.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [natDegree_toSubring](declarations/natdegree-tosubring.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [monic_toSubring](declarations/monic-tosubring.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toSubring_zero](declarations/tosubring-zero.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toSubring_one](declarations/tosubring-one.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [map_toSubring](declarations/map-tosubring.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ofSubring](declarations/ofsubring.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coeff_ofSubring](declarations/coeff-ofsubring.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [frange_ofSubring](declarations/frange-ofsubring.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_ker_modByMonic](declarations/mem-ker-modbymonic.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ker_modByMonicHom](declarations/ker-modbymonichom.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [ofPolynomial](declarations/ofpolynomial.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mem_ofPolynomial](declarations/mem-ofpolynomial.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [degreeLE](declarations/degreele-source-edition-2.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [leadingCoeffNth](declarations/leadingcoeffnth.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [leadingCoeff](declarations/leadingcoeff.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [polynomial_mem_ideal_of_coeff_mem_ideal](declarations/polynomial-mem-ideal-of-coeff-mem-ideal.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [mem_map_C_iff](declarations/mem-map-c-iff.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Polynomial Basic Namespaced](declarations/ker-mapringhom.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mem_leadingCoeffNth](declarations/mem-leadingcoeffnth.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_leadingCoeffNth_zero](declarations/mem-leadingcoeffnth-zero.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [leadingCoeffNth_mono](declarations/leadingcoeffnth-mono.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [mem_leadingCoeff](declarations/mem-leadingcoeff.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [Polynomial Basic Namespaced](declarations/coeff-prod-mem-ideal-pow-tsub.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [polynomial_not_isField](declarations/polynomial-not-isfield.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [eq_zero_of_constant_mem_of_maximal](declarations/eq-zero-of-constant-mem-of-maximal.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [isPrime_map_C_iff_isPrime](declarations/isprime-map-c-iff-isprime.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isPrime_map_C_of_isPrime](declarations/isprime-map-c-of-isprime.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [is_fg_degreeLE](declarations/is-fg-degreele.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [prime_C_iff](declarations/prime-c-iff-source-edition-2.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [prime_C_iff_of_fintype](declarations/prime-c-iff-of-fintype.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [prime_C_iff](declarations/prime-c-iff.md) | 799 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [prime_rename_iff](declarations/prime-rename-iff.md) | 823 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Polynomial.isNoetherianRing](declarations/polynomial-isnoetherianring.md) | 889 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [exists_irreducible_of_degree_pos](declarations/exists-irreducible-of-degree-pos.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [exists_irreducible_of_natDegree_pos](declarations/exists-irreducible-of-natdegree-pos.md) | 977 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [exists_irreducible_of_natDegree_ne_zero](declarations/exists-irreducible-of-natdegree-ne-zero.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [linearIndependent_powers_iff_aeval](declarations/linearindependent-powers-iff-aeval.md) | 989 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [disjoint_ker_aeval_of_coprime](declarations/disjoint-ker-aeval-of-coprime.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [sup_aeval_range_eq_top_of_coprime](declarations/sup-aeval-range-eq-top-of-coprime.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [sup_ker_aeval_le_ker_aeval_mul](declarations/sup-ker-aeval-le-ker-aeval-mul.md) | 1023 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [sup_ker_aeval_eq_ker_aeval_mul_of_coprime](declarations/sup-ker-aeval-eq-ker-aeval-mul-of-coprime.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [isNoetherianRing_fin_0](declarations/isnoetherianring-fin-0.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [isNoetherianRing_fin](declarations/isnoetherianring-fin.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [isNoetherianRing](declarations/isnoetherianring.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [noZeroDivisors_fin](declarations/nozerodivisors-fin.md) | 1095 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [noZeroDivisors_of_finite](declarations/nozerodivisors-of-finite.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [map_mvPolynomial_eq_eval₂](declarations/map-mvpolynomial-eq-eval.md) | 1141 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [mem_ideal_of_coeff_mem_ideal](declarations/mem-ideal-of-coeff-mem-ideal.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mem_map_C_iff](declarations/mem-map-c-iff-source-edition-2.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [ker_map](declarations/ker-map.md) | 1198 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1217 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [uniqueFactorizationMonoid_of_fintype](declarations/uniquefactorizationmonoid-of-fintype.md) | 1238 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `instance` | [(anonymous)](declarations/instance.md) | 1250 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dcc067a05fbebccbd577d40f798d45d46a250da7c04b344a9fbed2b98dfb4b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant9cc36b83bac082208070495d9b0db2e13dc946d2ac9118b385d3a3933900436d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
