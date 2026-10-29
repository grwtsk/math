# Theta Jacobi Recurrence Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa61d530af43b55638a986e9524f5812aece71c1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ThetaJacobiRecurrenceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [multiplicationMap](declarations/multiplicationmap.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [multiplicationMap_formalAdjoint](declarations/multiplicationmap-formaladjoint.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [multiplicationMap_powerVector](declarations/multiplicationmap-powervector.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [polynomialFlag](declarations/polynomialflag.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [polynomialFlag_le_domain](declarations/polynomialflag-le-domain.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [monicVector](declarations/monicvector.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [monicVector_ne_zero](declarations/monicvector-ne-zero.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [monicVector_norm_pos](declarations/monicvector-norm-pos.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [monicVector_mem_flag](declarations/monicvector-mem-flag.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [orthogonalPolynomial_mem_flag](declarations/orthogonalpolynomial-mem-flag.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [orthogonalPolynomial_mem_domain](declarations/orthogonalpolynomial-mem-domain.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [monicVector_inner_flag_eq_zero](declarations/monicvector-inner-flag-eq-zero.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [orthogonalPolynomial_inner_flag_eq_zero](declarations/orthogonalpolynomial-inner-flag-eq-zero.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [domainFlag](declarations/domainflag.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [domainFlag_map_subtype](declarations/domainflag-map-subtype.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [multiplication_flag](declarations/multiplication-flag.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [basisDomainVector](declarations/basisdomainvector.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [upper_band_zero](declarations/upper-band-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lower_band_zero](declarations/lower-band-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [monicDomainVector](declarations/monicdomainvector.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [monicVector_inner_power](declarations/monicvector-inner-power.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [powerDomain_monic_decomposition](declarations/powerdomain-monic-decomposition.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [monicVector_inner_multiplication](declarations/monicvector-inner-multiplication.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [hopping](declarations/hopping.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hopping_positive](declarations/hopping-positive.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [upper_hopping_coefficient](declarations/upper-hopping-coefficient.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [lower_hopping_coefficient](declarations/lower-hopping-coefficient.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [diagonal](declarations/diagonal.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [diagonal_coefficient](declarations/diagonal-coefficient.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [multiplication_basis_zero](declarations/multiplication-basis-zero.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [multiplication_basis_succ](declarations/multiplication-basis-succ.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [standardVector_mem_jacobiDomain](declarations/standardvector-mem-jacobidomain.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [standardDomainVector](declarations/standarddomainvector.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [domainUnitary_standardVector](declarations/domainunitary-standardvector.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [jacobiOperator_standard_zero](declarations/jacobioperator-standard-zero.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [jacobiOperator_standard_succ](declarations/jacobioperator-standard-succ.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c939c6078a5ad1a8c8a9c3b472bc66aa47a14c2df7eed9369e54f27bb4b4ac0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ThetaJacobiRecurrence/Variantdd51a76d99da84cebf541e5eb831d40f3b8abdd101ab0cad205bfa00f3b01302.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
