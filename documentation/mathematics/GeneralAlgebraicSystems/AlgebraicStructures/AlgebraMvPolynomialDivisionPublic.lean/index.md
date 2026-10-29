# Algebra Mv Polynomial Division Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Division/Variantf5920e3849d3030fd2c091d4c99d18623a3364ebba17948a4cd0b1444794efbc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a881f5630d9951cd39e4bf54ece294e24f313b7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialDivisionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [divMonomial](declarations/divmonomial.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coeff_divMonomial](declarations/coeff-divmonomial.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [support_divMonomial](declarations/support-divmonomial.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero_divMonomial](declarations/zero-divmonomial.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [divMonomial_zero](declarations/divmonomial-zero.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [add_divMonomial](declarations/add-divmonomial.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [divMonomial_add](declarations/divmonomial-add.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [divMonomial_monomial_mul](declarations/divmonomial-monomial-mul.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [divMonomial_mul_monomial](declarations/divmonomial-mul-monomial.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [divMonomial_monomial](declarations/divmonomial-monomial.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [modMonomial](declarations/modmonomial.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coeff_modMonomial_of_not_le](declarations/coeff-modmonomial-of-not-le.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeff_modMonomial_of_le](declarations/coeff-modmonomial-of-le.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [monomial_mul_modMonomial](declarations/monomial-mul-modmonomial.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_monomial_modMonomial](declarations/mul-monomial-modmonomial.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [monomial_modMonomial](declarations/monomial-modmonomial.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [divMonomial_add_modMonomial](declarations/divmonomial-add-modmonomial.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [modMonomial_add_divMonomial](declarations/modmonomial-add-divmonomial.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [monomial_one_dvd_iff_modMonomial_eq_zero](declarations/monomial-one-dvd-iff-modmonomial-eq-zero.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [X_mul_divMonomial](declarations/x-mul-divmonomial.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [X_divMonomial](declarations/x-divmonomial.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_X_divMonomial](declarations/mul-x-divmonomial.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [X_mul_modMonomial](declarations/x-mul-modmonomial.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_X_modMonomial](declarations/mul-x-modmonomial.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [modMonomial_X](declarations/modmonomial-x.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [divMonomial_add_modMonomial_single](declarations/divmonomial-add-modmonomial-single.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [modMonomial_add_divMonomial_single](declarations/modmonomial-add-divmonomial-single.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [X_dvd_iff_modMonomial_eq_zero](declarations/x-dvd-iff-modmonomial-eq-zero.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [monomial_dvd_monomial](declarations/monomial-dvd-monomial.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [monomial_one_dvd_monomial_one](declarations/monomial-one-dvd-monomial-one.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [X_dvd_X](declarations/x-dvd-x.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [X_dvd_monomial](declarations/x-dvd-monomial.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [eq_divMonomial_single](declarations/eq-divmonomial-single.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [eq_modMonomial_single](declarations/eq-modmonomial-single.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [eq_modMonomial_single_iff](declarations/eq-modmonomial-single-iff.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [X_dvd_mul_iff](declarations/x-dvd-mul-iff.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [X_prime](declarations/x-prime.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dvd_X_mul_iff](declarations/dvd-x-mul-iff.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [dvd_monomial_mul_iff_exists](declarations/dvd-monomial-mul-iff-exists.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=081daa568bb607624665355d9418962e356b353b72e734c597c3243f4b52c0f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Division/Variantf5920e3849d3030fd2c091d4c99d18623a3364ebba17948a4cd0b1444794efbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
