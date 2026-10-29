# Initial Formula Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5821d1847af5320967e6e7ac504340255923935`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/InitialFormulaEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rCoeff](declarations/rcoeff.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sCoeff](declarations/scoeff.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [scalePolynomial](declarations/scalepolynomial.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [positivePolynomial](declarations/positivepolynomial.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mixedPolynomial](declarations/mixedpolynomial.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [scalePolynomial_eval](declarations/scalepolynomial-eval.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [positivePolynomial_eval](declarations/positivepolynomial-eval.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mixedPolynomial_eval](declarations/mixedpolynomial-eval.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [positivePolynomial_expansion](declarations/positivepolynomial-expansion.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mixedPolynomial_expansion](declarations/mixedpolynomial-expansion.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [positivePolynomial_natDegree_le](declarations/positivepolynomial-natdegree-le.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mixedPolynomial_natDegree_le](declarations/mixedpolynomial-natdegree-le.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [positivePolynomial_coeff](declarations/positivepolynomial-coeff.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [positivePolynomial_neg_coeff](declarations/positivepolynomial-neg-coeff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mixedPolynomial_coeff](declarations/mixedpolynomial-coeff.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [polynomialKernel](declarations/polynomialkernel.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [sourceKernel](declarations/sourcekernel.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [equation20Summand](declarations/equation20summand.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [polynomialKernel_positive](declarations/polynomialkernel-positive.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [polynomialKernel_negative](declarations/polynomialkernel-negative.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [polynomialKernel_mixed](declarations/polynomialkernel-mixed.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sourceKernel_eq_equation20Summand](declarations/sourcekernel-eq-equation20summand.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [weightedPolynomial](declarations/weightedpolynomial.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [weightedPolynomial_eq_sum](declarations/weightedpolynomial-eq-sum.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [weightedPolynomial_integrable](declarations/weightedpolynomial-integrable.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integral_weightedPolynomial](declarations/integral-weightedpolynomial.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [weighted_expandedSummand_eq](declarations/weighted-expandedsummand-eq.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [occurrence_integrable](declarations/occurrence-integrable.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_occurrence](declarations/integral-occurrence.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [occurrenceIntegrand](declarations/occurrenceintegrand.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [scaleMajorant](declarations/scalemajorant.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [scaleMajorant_nonneg](declarations/scalemajorant-nonneg.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [scaleMajorant_integrable](declarations/scalemajorant-integrable.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [occurrenceIntegrand_norm_le](declarations/occurrenceintegrand-norm-le.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integral_norm_le](declarations/integral-norm-le.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [integral_norms_summable](declarations/integral-norms-summable.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [summedIntegrand_eq](declarations/summedintegrand-eq.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [integral_tsum_occurrences](declarations/integral-tsum-occurrences.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [integrals_enorm_ne_top](declarations/integrals-enorm-ne-top.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [summedIntegrand_integrable](declarations/summedintegrand-integrable.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [weightedSource_laplace_integrable](declarations/weightedsource-laplace-integrable.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [equation20](declarations/equation20.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [equation20_norms_summable](declarations/equation20-norms-summable.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [InitialFormulaCheckpoint](declarations/initialformulacheckpoint.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [initial_formula_checkpoint](declarations/initial-formula-checkpoint.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df122901c9bbab398a57ded3115ce1f56f9e2c1a67d393da71b49cf393d737f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/InitialFormula/Variant134e88fb316d738968fa1ab39d914a248bdf45d01ef6a157cc614d973cb50dbf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
