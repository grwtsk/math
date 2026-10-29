# Gamma Dirichlet

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**76 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fbdb1fee145a8837e7422afa9a2fe8c0464c20f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/GammaDirichlet.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [exactGamma](declarations/exactgamma.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [exactGamma_positive](declarations/exactgamma-positive.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [exactGamma_recurrence](declarations/exactgamma-recurrence.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [exactGamma_reflection](declarations/exactgamma-reflection.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [DirichletParameters](declarations/dirichletparameters.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [total](declarations/total.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [total_pos](declarations/total-pos.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [total_ne_zero](declarations/total-ne-zero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [gammaProduct](declarations/gammaproduct.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gammaProduct_pos](declarations/gammaproduct-pos.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [multivariateBeta](declarations/multivariatebeta.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [multivariateBeta_pos](declarations/multivariatebeta-pos.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mean](declarations/mean.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mean_pos](declarations/mean-pos.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sum_mean](declarations/sum-mean.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [variance](declarations/variance.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [covariance](declarations/covariance.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [covariance_self](declarations/covariance-self.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [covariance_of_ne](declarations/covariance-of-ne.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [covariance_comm](declarations/covariance-comm.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [monomialMoment](declarations/monomialmoment.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [concentrate](declarations/concentrate.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [concentrate_shape](declarations/concentrate-shape.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [concentrate_total](declarations/concentrate-total.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [concentrate_mean](declarations/concentrate-mean.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [concentrate_variance](declarations/concentrate-variance.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [reindex](declarations/reindex.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [reindex_shape](declarations/reindex-shape.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [reindex_total](declarations/reindex-total.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [Parameters](declarations/parameters.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [equalScale](declarations/equalscale.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [reindex](declarations/reindex-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reindex_shape](declarations/reindex-shape-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [reindex_scale](declarations/reindex-scale.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [reindex_total](declarations/reindex-total-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [reindex_gammaProduct](declarations/reindex-gammaproduct.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [rate](declarations/rate.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [rate_pos](declarations/rate-pos.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [scaleAll](declarations/scaleall.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [scaleAll_shape](declarations/scaleall-shape.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [scaleAll_scale](declarations/scaleall-scale.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [Path](declarations/path.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [gammaProductMeasure](declarations/gammaproductmeasure.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [gammaProductMeasure_probability](declarations/gammaproductmeasure-probability.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [prod_rpow_eq_rpow_sum](declarations/prod-rpow-eq-rpow-sum.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [weightedInverseScaleSum](declarations/weightedinversescalesum.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [weightedInverseScaleSum_pos](declarations/weightedinversescalesum-pos.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [normalizedGammaDensity](declarations/normalizedgammadensity.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [normalizedGammaDensity_pos](declarations/normalizedgammadensity-pos.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [dirichletDensity](declarations/dirichletdensity.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [dirichletDensity_pos](declarations/dirichletdensity-pos.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [normalizedGammaDensity_equalScale](declarations/normalizedgammadensity-equalscale.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [normalizedGammaDensity_scaleAll](declarations/normalizedgammadensity-scaleall.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [transportKernel](declarations/transportkernel.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [transportKernel_self](declarations/transportkernel-self.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [transportKernel_cocycle](declarations/transportkernel-cocycle.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [transportKernel_inverse](declarations/transportkernel-inverse.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [normalizedGammaDensity_reindex](declarations/normalizedgammadensity-reindex.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [transportKernel_reindex](declarations/transportkernel-reindex.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `structure` | [PositiveSample](declarations/positivesample.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [total](declarations/total-source-edition-2.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [total_pos](declarations/total-pos-source-edition-2.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [normalize](declarations/normalize.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [scale](declarations/scale.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [scale_total](declarations/scale-total.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [normalize_scale](declarations/normalize-scale.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [Refinement](declarations/refinement.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [mergeParameters](declarations/mergeparameters.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [mergePoint](declarations/mergepoint.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [mergeParameters_total](declarations/mergeparameters-total.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [interiorSimplexMeasurableSpace](declarations/interiorsimplexmeasurablespace.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `structure` | [AnalyticLaw](declarations/analyticlaw.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `structure` | [MeanLaw](declarations/meanlaw.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `structure` | [EqualScaleMeanLaw](declarations/equalscalemeanlaw.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `structure` | [DirichletMomentLaw](declarations/dirichletmomentlaw.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `structure` | [ChangeOfMeasure](declarations/changeofmeasure.md) | 735 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e8040346fb44aca50d95766a7d9d32f2feb7e103de419783615c728121a5225 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GammaDirichlet/Variant5cc54b9c520347b4ce60eb179839d0108740245eb94f6cd44ffa8ee4934629e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
