# Initial Formula Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fa70a130343044ca3fb1a14286c77206441f14c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/InitialFormulaNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rCoeff](declarations/rcoeff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sCoeff](declarations/scoeff.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [scalePolynomial](declarations/scalepolynomial.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [positivePolynomial](declarations/positivepolynomial.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mixedPolynomial](declarations/mixedpolynomial.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [scalePolynomial_eval](declarations/scalepolynomial-eval.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [positivePolynomial_eval](declarations/positivepolynomial-eval.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mixedPolynomial_eval](declarations/mixedpolynomial-eval.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [positivePolynomial_expansion](declarations/positivepolynomial-expansion.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mixedPolynomial_expansion](declarations/mixedpolynomial-expansion.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [positivePolynomial_natDegree_le](declarations/positivepolynomial-natdegree-le.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mixedPolynomial_natDegree_le](declarations/mixedpolynomial-natdegree-le.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [positivePolynomial_coeff](declarations/positivepolynomial-coeff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [positivePolynomial_neg_coeff](declarations/positivepolynomial-neg-coeff.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mixedPolynomial_coeff](declarations/mixedpolynomial-coeff.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [polynomialKernel](declarations/polynomialkernel.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sourceKernel](declarations/sourcekernel.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [equation20Summand](declarations/equation20summand.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [polynomialKernel_positive](declarations/polynomialkernel-positive.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [polynomialKernel_negative](declarations/polynomialkernel-negative.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [polynomialKernel_mixed](declarations/polynomialkernel-mixed.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sourceKernel_eq_equation20Summand](declarations/sourcekernel-eq-equation20summand.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [weightedPolynomial](declarations/weightedpolynomial.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [weightedPolynomial_eq_sum](declarations/weightedpolynomial-eq-sum.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weightedPolynomial_integrable](declarations/weightedpolynomial-integrable.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integral_weightedPolynomial](declarations/integral-weightedpolynomial.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [weighted_expandedSummand_eq](declarations/weighted-expandedsummand-eq.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [occurrence_integrable](declarations/occurrence-integrable.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_occurrence](declarations/integral-occurrence.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [occurrenceIntegrand](declarations/occurrenceintegrand.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [scaleMajorant](declarations/scalemajorant.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [scaleMajorant_nonneg](declarations/scalemajorant-nonneg.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [scaleMajorant_integrable](declarations/scalemajorant-integrable.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [occurrenceIntegrand_norm_le](declarations/occurrenceintegrand-norm-le.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [integral_norm_le](declarations/integral-norm-le.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_norms_summable](declarations/integral-norms-summable.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [summedIntegrand_eq](declarations/summedintegrand-eq.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [integral_tsum_occurrences](declarations/integral-tsum-occurrences.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [integrals_enorm_ne_top](declarations/integrals-enorm-ne-top.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [summedIntegrand_integrable](declarations/summedintegrand-integrable.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [weightedSource_laplace_integrable](declarations/weightedsource-laplace-integrable.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [equation20](declarations/equation20.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [equation20_norms_summable](declarations/equation20-norms-summable.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [InitialFormulaCheckpoint](declarations/initialformulacheckpoint.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [initial_formula_checkpoint](declarations/initial-formula-checkpoint.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2c0ea3b839e0d8632beef72b4953622e497ec5bcb7b5ff989aa6300ae5b3f89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Varianta60c675eef844f2c96f10ac1eb9118689ab8b93afd7c8584abea8e3808fe5374.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
