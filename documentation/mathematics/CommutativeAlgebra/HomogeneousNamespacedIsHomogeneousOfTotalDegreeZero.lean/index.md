# Homogeneous Namespaced Is Homogeneous Of Total Degree Zero

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b25e34205da9092f778d5fdcf86f94fa1095309f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/HomogeneousNamespacedIsHomogeneousOfTotalDegreeZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsHomogeneous](declarations/ishomogeneous.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [homogeneousSubmodule](declarations/homogeneoussubmodule.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_homogeneousSubmodule](declarations/mem-homogeneoussubmodule.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [homogeneousSubmodule_eq_finsupp_supported](declarations/homogeneoussubmodule-eq-finsupp-supported.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [homogeneousSubmodule_mul](declarations/homogeneoussubmodule-mul.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isHomogeneous_monomial](declarations/ishomogeneous-monomial.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isHomogeneous_of_totalDegree_zero](declarations/ishomogeneous-of-totaldegree-zero.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isHomogeneous_C](declarations/ishomogeneous-c.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isHomogeneous_zero](declarations/ishomogeneous-zero.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isHomogeneous_one](declarations/ishomogeneous-one.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isHomogeneous_X](declarations/ishomogeneous-x.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coeff_eq_zero](declarations/coeff-eq-zero.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inj_right](declarations/inj-right.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [add](declarations/add.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum](declarations/sum.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mul](declarations/mul.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [prod](declarations/prod.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [totalDegree](declarations/totaldegree.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [HomogeneousSubmodule.gcommSemiring](declarations/homogeneoussubmodule-gcommsemiring.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `example` | [(anonymous)](declarations/example.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [homogeneousComponent](declarations/homogeneouscomponent.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coeff_homogeneousComponent](declarations/coeff-homogeneouscomponent.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [homogeneousComponent_apply](declarations/homogeneouscomponent-apply.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [homogeneousComponent_isHomogeneous](declarations/homogeneouscomponent-ishomogeneous.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [homogeneousComponent_zero](declarations/homogeneouscomponent-zero.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [homogeneousComponent_C_mul](declarations/homogeneouscomponent-c-mul.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [homogeneousComponent_eq_zero'](declarations/homogeneouscomponent-eq-zero-source-edition-2.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [homogeneousComponent_eq_zero](declarations/homogeneouscomponent-eq-zero.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sum_homogeneousComponent](declarations/sum-homogeneouscomponent.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [homogeneousComponent_homogeneous_polynomial](declarations/homogeneouscomponent-homogeneous-polynomial.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6a9a4a1f6493c076ebbdf0ec3a34d6c957b37b7e85dafd86afcd4f2101494cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
