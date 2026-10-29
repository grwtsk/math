# Initial Formula

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76b2ad5ffe2373e33cd15334a5f0a9a5b7216591`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/InitialFormula.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rCoeff](declarations/rcoeff.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sCoeff](declarations/scoeff.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [scalePolynomial](declarations/scalepolynomial.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [positivePolynomial](declarations/positivepolynomial.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mixedPolynomial](declarations/mixedpolynomial.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [scalePolynomial_eval](declarations/scalepolynomial-eval.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [positivePolynomial_eval](declarations/positivepolynomial-eval.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mixedPolynomial_eval](declarations/mixedpolynomial-eval.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [positivePolynomial_expansion](declarations/positivepolynomial-expansion.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mixedPolynomial_expansion](declarations/mixedpolynomial-expansion.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [positivePolynomial_natDegree_le](declarations/positivepolynomial-natdegree-le.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mixedPolynomial_natDegree_le](declarations/mixedpolynomial-natdegree-le.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [positivePolynomial_coeff](declarations/positivepolynomial-coeff.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [positivePolynomial_neg_coeff](declarations/positivepolynomial-neg-coeff.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mixedPolynomial_coeff](declarations/mixedpolynomial-coeff.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [polynomialKernel](declarations/polynomialkernel.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sourceKernel](declarations/sourcekernel.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [equation20Summand](declarations/equation20summand.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [polynomialKernel_positive](declarations/polynomialkernel-positive.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [polynomialKernel_negative](declarations/polynomialkernel-negative.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [polynomialKernel_mixed](declarations/polynomialkernel-mixed.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sourceKernel_eq_equation20Summand](declarations/sourcekernel-eq-equation20summand.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [weightedPolynomial](declarations/weightedpolynomial.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [weightedPolynomial_eq_sum](declarations/weightedpolynomial-eq-sum.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weightedPolynomial_integrable](declarations/weightedpolynomial-integrable.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integral_weightedPolynomial](declarations/integral-weightedpolynomial.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [weighted_expandedSummand_eq](declarations/weighted-expandedsummand-eq.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [occurrence_integrable](declarations/occurrence-integrable.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_occurrence](declarations/integral-occurrence.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [occurrenceIntegrand](declarations/occurrenceintegrand.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [scaleMajorant](declarations/scalemajorant.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [scaleMajorant_nonneg](declarations/scalemajorant-nonneg.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [scaleMajorant_integrable](declarations/scalemajorant-integrable.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [occurrenceIntegrand_norm_le](declarations/occurrenceintegrand-norm-le.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [integral_norm_le](declarations/integral-norm-le.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [integral_norms_summable](declarations/integral-norms-summable.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [summedIntegrand_eq](declarations/summedintegrand-eq.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [integral_tsum_occurrences](declarations/integral-tsum-occurrences.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [integrals_enorm_ne_top](declarations/integrals-enorm-ne-top.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [summedIntegrand_integrable](declarations/summedintegrand-integrable.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [weightedSource_laplace_integrable](declarations/weightedsource-laplace-integrable.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [equation20](declarations/equation20.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [equation20_norms_summable](declarations/equation20-norms-summable.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [InitialFormulaCheckpoint](declarations/initialformulacheckpoint.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [initial_formula_checkpoint](declarations/initial-formula-checkpoint.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0f147c32290649881c781e1c023420c278b2acf691fd07d2b5ff2af503fdbcf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260fInitialFormula/Variant3f4b983ef78bc595cf206801a1111dc2b2e15417879dfa0fb37574960b09260f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
