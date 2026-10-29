# Ring Theory Polynomial Basic Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**92 observed declarations and anonymous commands**, 76 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51041a110ec6b5e459de21911b0198e43f3b65ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RingTheoryPolynomialBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instCharP](declarations/instcharp.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instExpChar](declarations/instexpchar.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [degreeLE](declarations/degreele.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [degreeLT](declarations/degreelt.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_degreeLE](declarations/mem-degreele.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [degreeLE_mono](declarations/degreele-mono.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [degreeLE_eq_span_X_pow](declarations/degreele-eq-span-x-pow.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_degreeLT](declarations/mem-degreelt.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [degreeLT_mono](declarations/degreelt-mono.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [degreeLT_eq_span_X_pow](declarations/degreelt-eq-span-x-pow.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [degreeLTEquiv](declarations/degreeltequiv.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [degreeLTEquiv_eq_zero_iff_eq_zero](declarations/degreeltequiv-eq-zero-iff-eq-zero.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eval_eq_sum_degreeLTEquiv](declarations/eval-eq-sum-degreeltequiv.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [degreeLT_succ_eq_degreeLE](declarations/degreelt-succ-eq-degreele.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [monicEquivDegreeLT](declarations/monicequivdegreelt.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exists_degree_le_of_mem_span](declarations/exists-degree-le-of-mem-span.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exists_degree_le_of_mem_span_of_finite](declarations/exists-degree-le-of-mem-span-of-finite.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [span_le_degreeLE_of_finite](declarations/span-le-degreele-of-finite.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [span_of_finite_le_degreeLT](declarations/span-of-finite-le-degreelt.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_finite](declarations/not-finite.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [geom_sum_X_comp_X_add_one_eq_sum](declarations/geom-sum-x-comp-x-add-one-eq-sum.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Monic.geom_sum](declarations/monic-geom-sum.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Monic.geom_sum'](declarations/monic-geom-sum-source-edition-2.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monic_geom_sum_X](declarations/monic-geom-sum-x.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [restriction](declarations/restriction.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coeff_restriction](declarations/coeff-restriction.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coeff_restriction'](declarations/coeff-restriction-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [support_restriction](declarations/support-restriction.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [map_restriction](declarations/map-restriction.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [degree_restriction](declarations/degree-restriction.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [natDegree_restriction](declarations/natdegree-restriction.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [monic_restriction](declarations/monic-restriction.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [restriction_zero](declarations/restriction-zero.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [restriction_one](declarations/restriction-one.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eval₂_restriction](declarations/eval-restriction.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [toSubring](declarations/tosubring.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coeff_toSubring](declarations/coeff-tosubring-source-edition-2.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coeff_toSubring'](declarations/coeff-tosubring.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [support_toSubring](declarations/support-tosubring.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [degree_toSubring](declarations/degree-tosubring.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [natDegree_toSubring](declarations/natdegree-tosubring.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [monic_toSubring](declarations/monic-tosubring.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [toSubring_zero](declarations/tosubring-zero.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [toSubring_one](declarations/tosubring-one.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map_toSubring](declarations/map-tosubring.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ofSubring](declarations/ofsubring.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coeff_ofSubring](declarations/coeff-ofsubring.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [coeffs_ofSubring](declarations/coeffs-ofsubring.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [ofPolynomial](declarations/ofpolynomial.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [mem_ofPolynomial](declarations/mem-ofpolynomial.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [degreeLE](declarations/degreele-source-edition-2.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [leadingCoeffNth](declarations/leadingcoeffnth.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [leadingCoeff](declarations/leadingcoeff.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [polynomial_mem_ideal_of_coeff_mem_ideal](declarations/polynomial-mem-ideal-of-coeff-mem-ideal.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mem_map_C_iff](declarations/mem-map-c-iff-source-edition-2.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Ring Theory Polynomial Basic Namespaced](declarations/ker-mapringhom.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [mem_leadingCoeffNth](declarations/mem-leadingcoeffnth.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [mem_leadingCoeffNth_zero](declarations/mem-leadingcoeffnth-zero.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [leadingCoeffNth_mono](declarations/leadingcoeffnth-mono.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mem_leadingCoeff](declarations/mem-leadingcoeff.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Ring Theory Polynomial Basic Namespaced](declarations/coeff-prod-mem-ideal-pow-tsub.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [polynomial_not_isField](declarations/polynomial-not-isfield.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [eq_zero_of_constant_mem_of_maximal](declarations/eq-zero-of-constant-mem-of-maximal.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isPrime_map_C_iff_isPrime](declarations/isprime-map-c-iff-isprime.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isPrime_map_C_of_isPrime](declarations/isprime-map-c-of-isprime.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [is_fg_degreeLE](declarations/is-fg-degreele.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [span_le_of_C_coeff_mem](declarations/span-le-of-c-coeff-mem.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mem_span_C_coeff](declarations/mem-span-c-coeff.md) | 729 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [exists_C_coeff_notMem](declarations/exists-c-coeff-notmem.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [prime_C_iff](declarations/prime-c-iff.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [prime_C_iff_of_fintype](declarations/prime-c-iff-of-fintype.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [prime_C_iff](declarations/prime-c-iff-source-edition-2.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [prime_rename_iff](declarations/prime-rename-iff.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Polynomial.isNoetherianRing](declarations/polynomial-isnoetherianring.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [linearIndependent_powers_iff_aeval](declarations/linearindependent-powers-iff-aeval.md) | 911 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [disjoint_ker_aeval_of_isCoprime](declarations/disjoint-ker-aeval-of-iscoprime.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [sup_aeval_range_eq_top_of_isCoprime](declarations/sup-aeval-range-eq-top-of-iscoprime.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [sup_ker_aeval_le_ker_aeval_mul](declarations/sup-ker-aeval-le-ker-aeval-mul.md) | 946 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [sup_ker_aeval_eq_ker_aeval_mul_of_coprime](declarations/sup-ker-aeval-eq-ker-aeval-mul-of-coprime.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [aeval_natDegree_le](declarations/aeval-natdegree-le.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [isNoetherianRing_fin_0](declarations/isnoetherianring-fin-0.md) | 1006 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [isNoetherianRing_fin](declarations/isnoetherianring-fin.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [isNoetherianRing](declarations/isnoetherianring.md) | 1021 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [noZeroDivisors_fin](declarations/nozerodivisors-fin.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [noZeroDivisors_of_finite](declarations/nozerodivisors-of-finite.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [(anonymous)](declarations/instance.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `instance` | [isDomain](declarations/isdomain.md) | 1064 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [map_mvPolynomial_eq_eval₂](declarations/map-mvpolynomial-eq-eval.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [mem_ideal_of_coeff_mem_ideal](declarations/mem-ideal-of-coeff-mem-ideal.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [mem_map_C_iff](declarations/mem-map-c-iff.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [ker_map](declarations/ker-map.md) | 1125 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [ker_mapAlgHom](declarations/ker-mapalghom.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbbadd720e732aebcfcd84eb124c4be01752a6de0287583e47d3a16cf9255b52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1b6c59ee64c02ec09ccec0e27175ff713f5245e2a6468d5d9342f58aeb61a4e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
