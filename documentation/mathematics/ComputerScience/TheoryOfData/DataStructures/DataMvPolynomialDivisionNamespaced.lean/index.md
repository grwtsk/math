# Data Mv Polynomial Division Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db531071db2672896be741ab35c308b29d8b724a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataMvPolynomialDivisionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [divMonomial](declarations/divmonomial.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coeff_divMonomial](declarations/coeff-divmonomial.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [support_divMonomial](declarations/support-divmonomial.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero_divMonomial](declarations/zero-divmonomial.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [divMonomial_zero](declarations/divmonomial-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [add_divMonomial](declarations/add-divmonomial.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [divMonomial_add](declarations/divmonomial-add.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [divMonomial_monomial_mul](declarations/divmonomial-monomial-mul.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [divMonomial_mul_monomial](declarations/divmonomial-mul-monomial.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [divMonomial_monomial](declarations/divmonomial-monomial.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [modMonomial](declarations/modmonomial.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coeff_modMonomial_of_not_le](declarations/coeff-modmonomial-of-not-le.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeff_modMonomial_of_le](declarations/coeff-modmonomial-of-le.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [monomial_mul_modMonomial](declarations/monomial-mul-modmonomial.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mul_monomial_modMonomial](declarations/mul-monomial-modmonomial.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [monomial_modMonomial](declarations/monomial-modmonomial.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [divMonomial_add_modMonomial](declarations/divmonomial-add-modmonomial.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [modMonomial_add_divMonomial](declarations/modmonomial-add-divmonomial.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [monomial_one_dvd_iff_modMonomial_eq_zero](declarations/monomial-one-dvd-iff-modmonomial-eq-zero.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [X_mul_divMonomial](declarations/x-mul-divmonomial.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [X_divMonomial](declarations/x-divmonomial.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_X_divMonomial](declarations/mul-x-divmonomial.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [X_mul_modMonomial](declarations/x-mul-modmonomial.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_X_modMonomial](declarations/mul-x-modmonomial.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [modMonomial_X](declarations/modmonomial-x.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [divMonomial_add_modMonomial_single](declarations/divmonomial-add-modmonomial-single.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [modMonomial_add_divMonomial_single](declarations/modmonomial-add-divmonomial-single.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [X_dvd_iff_modMonomial_eq_zero](declarations/x-dvd-iff-modmonomial-eq-zero.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [monomial_dvd_monomial](declarations/monomial-dvd-monomial.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [monomial_one_dvd_monomial_one](declarations/monomial-one-dvd-monomial-one.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [X_dvd_X](declarations/x-dvd-x.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [X_dvd_monomial](declarations/x-dvd-monomial.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ad8f9ffd6fefdf3a8a832b96a29c5bc87ddfd68570b3d4601669584e2d2b2f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Division/Variantc3b7537ddd41f7379c6cd96e4a631306df7c3289b86b934377f079c7bc7117cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
