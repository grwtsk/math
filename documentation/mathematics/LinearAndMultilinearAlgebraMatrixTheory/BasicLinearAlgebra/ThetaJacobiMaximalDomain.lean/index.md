# Theta Jacobi Maximal Domain

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80a886dcd9c4be62878660fcad4bb23a6aab70ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaJacobiMaximalDomain.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiExpression](declarations/jacobiexpression.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [jacobiExpression_zero](declarations/jacobiexpression-zero.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [jacobiExpression_succ](declarations/jacobiexpression-succ.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [standard_zero_inner](declarations/standard-zero-inner.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [standard_succ_inner](declarations/standard-succ-inner.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [jacobiOperator_coordinate](declarations/jacobioperator-coordinate.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [jacobiExpression_memℓp_of_mem_domain](declarations/jacobiexpression-mem-p-of-mem-domain.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [standard_inner_of_expression_eq](declarations/standard-inner-of-expression-eq.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [jacobiDomainMap](declarations/jacobidomainmap.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [core_inner_of_expression_eq](declarations/core-inner-of-expression-eq.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [domain_inner_of_expression_eq](declarations/domain-inner-of-expression-eq.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mem_domain_of_expression_eq](declarations/mem-domain-of-expression-eq.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_domain_of_jacobiExpression_memℓp](declarations/mem-domain-of-jacobiexpression-mem-p.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_jacobiDomain_iff_memℓp_expression](declarations/mem-jacobidomain-iff-mem-p-expression.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coefficientDomain](declarations/coefficientdomain.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_coefficientDomain_iff](declarations/mem-coefficientdomain-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coefficientDomain_eq_jacobiDomain](declarations/coefficientdomain-eq-jacobidomain.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_jacobiDomain_iff_summable_norm_sq](declarations/mem-jacobidomain-iff-summable-norm-sq.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [coefficientAction](declarations/coefficientaction.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coefficientAction_apply](declarations/coefficientaction-apply.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [coefficientOperator](declarations/coefficientoperator.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coefficientOperator_eq_jacobiOperator](declarations/coefficientoperator-eq-jacobioperator.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coefficientOperator_isSelfAdjoint](declarations/coefficientoperator-isselfadjoint.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_jacobiGraph_iff_expression](declarations/mem-jacobigraph-iff-expression.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [jacobiOperator_eq_expression_vector](declarations/jacobioperator-eq-expression-vector.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [rawPoint_mem_coefficientDomain](declarations/rawpoint-mem-coefficientdomain.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d8de2eca8829a6ee6378c47cf357fc85fdd42cc9800d78f11c3e7d3a9bd4afa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiMaximalDomain/Variant0a8a964a279cc91e4d99386c96e14341194c1269446ecd2de2d186b7efb01d41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
