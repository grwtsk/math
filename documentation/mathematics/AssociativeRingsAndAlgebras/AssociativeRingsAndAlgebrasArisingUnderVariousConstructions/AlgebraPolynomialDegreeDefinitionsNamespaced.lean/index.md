# Algebra Polynomial Degree Definitions Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**116 observed declarations and anonymous commands**, 110 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Definitions/Variant439ff0f65c5a0e3e6f163fdc2fb032a766ba5a493cddbcf0cf45464226823d13.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e05ccc2c9839e09897620dfc1ec99f0f150ed679`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialDegreeDefinitionsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [degree](declarations/degree.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [natDegree](declarations/natdegree.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [leadingCoeff](declarations/leadingcoeff.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Monic](declarations/monic.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Monic.def](declarations/monic-def.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [Monic.decidable](declarations/monic-decidable.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Monic.leadingCoeff](declarations/monic-leadingcoeff.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Monic.coeff_natDegree](declarations/monic-coeff-natdegree.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [degree_zero](declarations/degree-zero.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [natDegree_zero](declarations/natdegree-zero.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coeff_natDegree](declarations/coeff-natdegree.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [degree_eq_bot](declarations/degree-eq-bot.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [degree_ne_bot](declarations/degree-ne-bot.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [degree_eq_natDegree](declarations/degree-eq-natdegree.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [degree_eq_iff_natDegree_eq](declarations/degree-eq-iff-natdegree-eq.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [degree_eq_iff_natDegree_eq_of_pos](declarations/degree-eq-iff-natdegree-eq-of-pos.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [natDegree_eq_of_degree_eq_some](declarations/natdegree-eq-of-degree-eq-some.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [degree_ne_of_natDegree_ne](declarations/degree-ne-of-natdegree-ne.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [degree_le_natDegree](declarations/degree-le-natdegree.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [natDegree_eq_of_degree_eq](declarations/natdegree-eq-of-degree-eq.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [le_degree_of_ne_zero](declarations/le-degree-of-ne-zero.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [degree_mono](declarations/degree-mono.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [degree_le_degree](declarations/degree-le-degree.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [natDegree_le_iff_degree_le](declarations/natdegree-le-iff-degree-le.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [natDegree_lt_iff_degree_lt](declarations/natdegree-lt-iff-degree-lt.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [natDegree_le_natDegree](declarations/natdegree-le-natdegree.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [degree_C](declarations/degree-c.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [degree_C_le](declarations/degree-c-le.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [degree_C_lt](declarations/degree-c-lt.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [degree_one_le](declarations/degree-one-le.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [natDegree_C](declarations/natdegree-c.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [natDegree_one](declarations/natdegree-one.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [natDegree_natCast](declarations/natdegree-natcast.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [natDegree_ofNat](declarations/natdegree-ofnat.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [degree_natCast_le](declarations/degree-natcast-le.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [degree_monomial](declarations/degree-monomial.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [degree_C_mul_X_pow](declarations/degree-c-mul-x-pow.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [degree_C_mul_X](declarations/degree-c-mul-x.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [degree_monomial_le](declarations/degree-monomial-le.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [degree_C_mul_X_pow_le](declarations/degree-c-mul-x-pow-le.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [degree_C_mul_X_le](declarations/degree-c-mul-x-le.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [natDegree_C_mul_X_pow](declarations/natdegree-c-mul-x-pow.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [natDegree_C_mul_X](declarations/natdegree-c-mul-x.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [natDegree_monomial](declarations/natdegree-monomial.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [natDegree_monomial_le](declarations/natdegree-monomial-le.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [natDegree_monomial_eq](declarations/natdegree-monomial-eq.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [coeff_ne_zero_of_eq_degree](declarations/coeff-ne-zero-of-eq-degree.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [degree_X_pow_le](declarations/degree-x-pow-le.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [degree_X_le](declarations/degree-x-le.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [natDegree_X_le](declarations/natdegree-x-le.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [withBotSucc_degree_eq_natDegree_add_one](declarations/withbotsucc-degree-eq-natdegree-add-one.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [degree_one](declarations/degree-one.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [degree_X](declarations/degree-x.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [natDegree_X](declarations/natdegree-x.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [degree_neg](declarations/degree-neg.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [degree_neg_le_of_le](declarations/degree-neg-le-of-le.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [natDegree_neg](declarations/natdegree-neg.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [natDegree_neg_le_of_le](declarations/natdegree-neg-le-of-le.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [natDegree_intCast](declarations/natdegree-intcast.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [degree_intCast_le](declarations/degree-intcast-le.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [leadingCoeff_neg](declarations/leadingcoeff-neg.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [nextCoeff](declarations/nextcoeff.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [nextCoeff_eq_zero](declarations/nextcoeff-eq-zero.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [nextCoeff_ne_zero](declarations/nextcoeff-ne-zero.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [nextCoeff_C_eq_zero](declarations/nextcoeff-c-eq-zero.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [nextCoeff_of_natDegree_pos](declarations/nextcoeff-of-natdegree-pos.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [degree_add_le](declarations/degree-add-le.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [degree_add_le_of_degree_le](declarations/degree-add-le-of-degree-le.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [degree_add_le_of_le](declarations/degree-add-le-of-le.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [natDegree_add_le](declarations/natdegree-add-le.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [natDegree_add_le_of_degree_le](declarations/natdegree-add-le-of-degree-le.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [natDegree_add_le_of_le](declarations/natdegree-add-le-of-le.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [leadingCoeff_zero](declarations/leadingcoeff-zero.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [leadingCoeff_eq_zero](declarations/leadingcoeff-eq-zero.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [leadingCoeff_ne_zero](declarations/leadingcoeff-ne-zero.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [leadingCoeff_eq_zero_iff_deg_eq_bot](declarations/leadingcoeff-eq-zero-iff-deg-eq-bot.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [natDegree_C_mul_X_pow_le](declarations/natdegree-c-mul-x-pow-le.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [degree_erase_le](declarations/degree-erase-le.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [degree_erase_lt](declarations/degree-erase-lt.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [degree_update_le](declarations/degree-update-le.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [degree_sum_le](declarations/degree-sum-le.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [degree_mul_le](declarations/degree-mul-le.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [degree_mul_le_of_le](declarations/degree-mul-le-of-le.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [degree_pow_le](declarations/degree-pow-le.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [degree_pow_le_of_le](declarations/degree-pow-le-of-le.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [leadingCoeff_monomial](declarations/leadingcoeff-monomial.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [leadingCoeff_C_mul_X_pow](declarations/leadingcoeff-c-mul-x-pow.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [leadingCoeff_C_mul_X](declarations/leadingcoeff-c-mul-x.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [leadingCoeff_C](declarations/leadingcoeff-c.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [leadingCoeff_X_pow](declarations/leadingcoeff-x-pow.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [leadingCoeff_X](declarations/leadingcoeff-x.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [monic_X_pow](declarations/monic-x-pow.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [monic_X](declarations/monic-x.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [leadingCoeff_one](declarations/leadingcoeff-one.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [monic_one](declarations/monic-one.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Monic.ne_zero](declarations/monic-ne-zero.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Monic.ne_zero_of_ne](declarations/monic-ne-zero-of-ne.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [Monic.ne_zero_of_polynomial_ne](declarations/monic-ne-zero-of-polynomial-ne.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [natDegree_mul_le](declarations/natdegree-mul-le.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [natDegree_mul_le_of_le](declarations/natdegree-mul-le-of-le.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [natDegree_pow_le](declarations/natdegree-pow-le.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [natDegree_pow_le_of_le](declarations/natdegree-pow-le-of-le.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [natDegree_eq_zero_iff_degree_le_zero](declarations/natdegree-eq-zero-iff-degree-le-zero.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [degree_zero_le](declarations/degree-zero-le.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [degree_le_iff_coeff_zero](declarations/degree-le-iff-coeff-zero.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [degree_lt_iff_coeff_zero](declarations/degree-lt-iff-coeff-zero.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [natDegree_pos_iff_degree_pos](declarations/natdegree-pos-iff-degree-pos.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [degree_X_pow](declarations/degree-x-pow.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [natDegree_X_pow](declarations/natdegree-x-pow.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [degree_sub_le](declarations/degree-sub-le.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [degree_sub_le_of_le](declarations/degree-sub-le-of-le.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [natDegree_sub_le](declarations/natdegree-sub-le.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [natDegree_sub_le_of_le](declarations/natdegree-sub-le-of-le.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [degree_sub_lt](declarations/degree-sub-lt.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [degree_X_sub_C_le](declarations/degree-x-sub-c-le.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [natDegree_X_sub_C_le](declarations/natdegree-x-sub-c-le.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3132cb9ba95d339ca2c1e293b0d8fb4b308915075152034bfd5c24c77958201a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Definitions/Variant439ff0f65c5a0e3e6f163fdc2fb032a766ba5a493cddbcf0cf45464226823d13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
