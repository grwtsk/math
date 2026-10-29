# Ring Theory Polynomial Basic Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**84 observed declarations and anonymous commands**, 70 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant15e16d6e6007057c18759a5967de72cadc54eb24ad1236dbdb0c8ea451c63b63.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d95319974c8cecbcdd6b3c0ca4975e56f96109`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RingTheoryPolynomialBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instCharP](declarations/instcharp.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instExpChar](declarations/instexpchar.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [degreeLE](declarations/degreele.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [degreeLT](declarations/degreelt.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_degreeLE](declarations/mem-degreele.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [degreeLE_mono](declarations/degreele-mono.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [degreeLE_eq_span_X_pow](declarations/degreele-eq-span-x-pow.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_degreeLT](declarations/mem-degreelt.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [monomial_coe_mem_degreeLT](declarations/monomial-coe-mem-degreelt.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [degreeLT_mono](declarations/degreelt-mono.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [degreeLT_eq_span_X_pow](declarations/degreelt-eq-span-x-pow.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [degreeLTEquiv](declarations/degreeltequiv.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [degreeLTEquiv_eq_zero_iff_eq_zero](declarations/degreeltequiv-eq-zero-iff-eq-zero.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eval_eq_sum_degreeLTEquiv](declarations/eval-eq-sum-degreeltequiv.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [degreeLT_succ_eq_degreeLE](declarations/degreelt-succ-eq-degreele.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [monicEquivDegreeLT](declarations/monicequivdegreelt.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exists_degree_le_of_mem_span](declarations/exists-degree-le-of-mem-span.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_degree_le_of_mem_span_of_finite](declarations/exists-degree-le-of-mem-span-of-finite.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [span_le_degreeLE_of_finite](declarations/span-le-degreele-of-finite.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [span_of_finite_le_degreeLT](declarations/span-of-finite-le-degreelt.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [not_finite](declarations/not-finite.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [geom_sum_X_comp_X_add_one_eq_sum](declarations/geom-sum-x-comp-x-add-one-eq-sum.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Monic.geom_sum](declarations/monic-geom-sum.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Monic.geom_sum'](declarations/monic-geom-sum-source-edition-2.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monic_geom_sum_X](declarations/monic-geom-sum-x.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [restriction](declarations/restriction.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coeff_restriction](declarations/coeff-restriction.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coeff_restriction'](declarations/coeff-restriction-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [support_restriction](declarations/support-restriction.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_restriction](declarations/map-restriction.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [degree_restriction](declarations/degree-restriction.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [natDegree_restriction](declarations/natdegree-restriction.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [monic_restriction](declarations/monic-restriction.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [restriction_zero](declarations/restriction-zero.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [restriction_one](declarations/restriction-one.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eval₂_restriction](declarations/eval-restriction.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [ofPolynomial](declarations/ofpolynomial.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_ofPolynomial](declarations/mem-ofpolynomial.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [degreeLE](declarations/degreele-source-edition-2.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [leadingCoeffNth](declarations/leadingcoeffnth.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [leadingCoeff](declarations/leadingcoeff.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [polynomial_mem_ideal_of_coeff_mem_ideal](declarations/polynomial-mem-ideal-of-coeff-mem-ideal.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mem_map_C_iff](declarations/mem-map-c-iff-source-edition-2.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [_root_.Polynomial.ker_mapRingHom](declarations/root-polynomial-ker-mapringhom.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mem_leadingCoeffNth](declarations/mem-leadingcoeffnth.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_leadingCoeffNth_zero](declarations/mem-leadingcoeffnth-zero.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [leadingCoeffNth_mono](declarations/leadingcoeffnth-mono.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mem_leadingCoeff](declarations/mem-leadingcoeff.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [leadingCoeff_mono](declarations/leadingcoeff-mono.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [map_C_leadingCoeff](declarations/map-c-leadingcoeff.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [leadingCoeff_top](declarations/leadingcoeff-top.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [leadingCoeff_mul_le](declarations/leadingcoeff-mul-le.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [leadingCoeff_finset_prod_le](declarations/leadingcoeff-finset-prod-le.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [leadingCoeff_pow_le](declarations/leadingcoeff-pow-le.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [_root_.Polynomial.coeff_prod_mem_ideal_pow_tsub](declarations/root-polynomial-coeff-prod-mem-ideal-pow-tsub.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [_root_.Polynomial.not_isField](declarations/root-polynomial-not-isfield.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [eq_zero_of_constant_mem_of_maximal](declarations/eq-zero-of-constant-mem-of-maximal.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isPrime_map_C_iff_isPrime](declarations/isprime-map-c-iff-isprime.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [isPrime_map_C_of_isPrime](declarations/isprime-map-c-of-isprime.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [is_fg_degreeLE](declarations/is-fg-degreele.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [map_C_comap_of_comap_eq_leadingCoeff](declarations/map-c-comap-of-comap-eq-leadingcoeff.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [span_le_of_C_coeff_mem](declarations/span-le-of-c-coeff-mem.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mem_span_C_coeff](declarations/mem-span-c-coeff.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [exists_C_coeff_notMem](declarations/exists-c-coeff-notmem.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [prime_C_iff](declarations/prime-c-iff.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [prime_C_iff_of_fintype](declarations/prime-c-iff-of-fintype.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [prime_C_iff](declarations/prime-c-iff-source-edition-2.md) | 717 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [prime_rename_iff](declarations/prime-rename-iff.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Polynomial.isNoetherianRing](declarations/polynomial-isnoetherianring.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [linearIndependent_powers_iff_aeval](declarations/linearindependent-powers-iff-aeval.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [disjoint_ker_aeval_of_isCoprime](declarations/disjoint-ker-aeval-of-iscoprime.md) | 839 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [sup_aeval_range_eq_top_of_isCoprime](declarations/sup-aeval-range-eq-top-of-iscoprime.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [sup_ker_aeval_le_ker_aeval_mul](declarations/sup-ker-aeval-le-ker-aeval-mul.md) | 861 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [sup_ker_aeval_eq_ker_aeval_mul_of_coprime](declarations/sup-ker-aeval-eq-ker-aeval-mul-of-coprime.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [aeval_natDegree_le](declarations/aeval-natdegree-le.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isNoetherianRing_fin_0](declarations/isnoetherianring-fin-0.md) | 919 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [isNoetherianRing_fin](declarations/isnoetherianring-fin.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [isNoetherianRing](declarations/isnoetherianring.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [map_mvPolynomial_eq_eval₂](declarations/map-mvpolynomial-eq-eval.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_ideal_of_coeff_mem_ideal](declarations/mem-ideal-of-coeff-mem-ideal.md) | 953 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mem_map_C_iff](declarations/mem-map-c-iff.md) | 965 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [ker_map](declarations/ker-map.md) | 994 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [ker_mapAlgHom](declarations/ker-mapalghom.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df0feb7d8d33d861559252f7555b2a9e849250b47621b73228d1fd8e257c465a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant15e16d6e6007057c18759a5967de72cadc54eb24ad1236dbdb0c8ea451c63b63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
