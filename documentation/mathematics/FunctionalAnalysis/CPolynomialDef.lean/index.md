# CPolynomial Def

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c3e142d2e567652b9e04f535b76892a0f2fa7c6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/CPolynomialDef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HasFiniteFPowerSeriesOnBall](declarations/hasfinitefpowerseriesonball.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [HasFiniteFPowerSeriesOnBall.mk'](declarations/hasfinitefpowerseriesonball-mk.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasFiniteFPowerSeriesAt](declarations/hasfinitefpowerseriesat.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [HasFiniteFPowerSeriesAt.hasFPowerSeriesAt](declarations/hasfinitefpowerseriesat-hasfpowerseriesat.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [HasFiniteFPowerSeriesAt.finite](declarations/hasfinitefpowerseriesat-finite.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [CPolynomialAt](declarations/cpolynomialat.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [CPolynomialOn](declarations/cpolynomialon.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [HasFiniteFPowerSeriesOnBall.hasFiniteFPowerSeriesAt](declarations/hasfinitefpowerseriesonball-hasfinitefpowerseriesat.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [HasFiniteFPowerSeriesAt.cpolynomialAt](declarations/hasfinitefpowerseriesat-cpolynomialat.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [HasFiniteFPowerSeriesOnBall.cpolynomialAt](declarations/hasfinitefpowerseriesonball-cpolynomialat.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [CPolynomialAt.analyticAt](declarations/cpolynomialat-analyticat.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [CPolynomialAt.analyticWithinAt](declarations/cpolynomialat-analyticwithinat.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [CPolynomialOn.analyticOnNhd](declarations/cpolynomialon-analyticonnhd.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [CPolynomialOn.analyticOn](declarations/cpolynomialon-analyticon.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [HasFiniteFPowerSeriesOnBall.congr](declarations/hasfinitefpowerseriesonball-congr.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HasFiniteFPowerSeriesOnBall.of_le](declarations/hasfinitefpowerseriesonball-of-le.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasFiniteFPowerSeriesAt.of_le](declarations/hasfinitefpowerseriesat-of-le.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasFiniteFPowerSeriesOnBall.comp_sub](declarations/hasfinitefpowerseriesonball-comp-sub.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [HasFiniteFPowerSeriesOnBall.mono](declarations/hasfinitefpowerseriesonball-mono.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HasFiniteFPowerSeriesAt.congr](declarations/hasfinitefpowerseriesat-congr.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HasFiniteFPowerSeriesAt.eventually](declarations/hasfinitefpowerseriesat-eventually.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [CPolynomialAt.congr](declarations/cpolynomialat-congr-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [CPolynomialAt_congr](declarations/cpolynomialat-congr.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [CPolynomialOn.mono](declarations/cpolynomialon-mono.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [CPolynomialOn.congr'](declarations/cpolynomialon-congr-source-edition-3.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [CPolynomialOn_congr'](declarations/cpolynomialon-congr.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [CPolynomialOn.congr](declarations/cpolynomialon-congr-source-edition-4.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [CPolynomialOn_congr](declarations/cpolynomialon-congr-source-edition-2.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ContinuousLinearMap.comp_hasFiniteFPowerSeriesOnBall](declarations/continuouslinearmap-comp-hasfinitefpowerseriesonball.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ContinuousLinearMap.comp_cpolynomialOn](declarations/continuouslinearmap-comp-cpolynomialon.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasFiniteFPowerSeriesOnBall.eq_partialSum](declarations/hasfinitefpowerseriesonball-eq-partialsum-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasFiniteFPowerSeriesOnBall.eq_partialSum'](declarations/hasfinitefpowerseriesonball-eq-partialsum.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasFiniteFPowerSeriesOnBall.eq_zero_of_bound_zero](declarations/hasfinitefpowerseriesonball-eq-zero-of-bound-zero.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [HasFiniteFPowerSeriesOnBall.bound_zero_of_eq_zero](declarations/hasfinitefpowerseriesonball-bound-zero-of-eq-zero.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasFiniteFPowerSeriesAt.eventually_zero_of_bound_zero](declarations/hasfinitefpowerseriesat-eventually-zero-of-bound-zero.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [HasFiniteFPowerSeriesOnBall.eq_const_of_bound_one](declarations/hasfinitefpowerseriesonball-eq-const-of-bound-one.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [HasFiniteFPowerSeriesAt.eventually_const_of_bound_one](declarations/hasfinitefpowerseriesat-eventually-const-of-bound-one.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [HasFiniteFPowerSeriesOnBall.continuousOn](declarations/hasfinitefpowerseriesonball-continuouson.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [HasFiniteFPowerSeriesAt.continuousAt](declarations/hasfinitefpowerseriesat-continuousat.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [CPolynomialAt.continuousAt](declarations/cpolynomialat-continuousat.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [CPolynomialOn.continuousOn](declarations/cpolynomialon-continuouson.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [CPolynomialOn.continuous](declarations/cpolynomialon-continuous.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [FormalMultilinearSeries.sum_of_finite](declarations/formalmultilinearseries-sum-of-finite.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [FormalMultilinearSeries.hasSum_of_finite](declarations/formalmultilinearseries-hassum-of-finite.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [FormalMultilinearSeries.hasFiniteFPowerSeriesOnBall_of_finite](declarations/formalmultilinearseries-hasfinitefpowerseriesonball-of-finite.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [HasFiniteFPowerSeriesOnBall.sum](declarations/hasfinitefpowerseriesonball-sum.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [FormalMultilinearSeries.continuousOn_of_finite](declarations/formalmultilinearseries-continuouson-of-finite.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [changeOriginSeriesTerm_bound](declarations/changeoriginseriesterm-bound.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [changeOriginSeries_finite_of_finite](declarations/changeoriginseries-finite-of-finite.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [changeOriginSeries_sum_eq_partialSum_of_finite](declarations/changeoriginseries-sum-eq-partialsum-of-finite.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [changeOrigin_finite_of_finite](declarations/changeorigin-finite-of-finite.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [hasFiniteFPowerSeriesOnBall_changeOrigin](declarations/hasfinitefpowerseriesonball-changeorigin.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [changeOrigin_eval_of_finite](declarations/changeorigin-eval-of-finite.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cpolynomialAt_changeOrigin_of_finite](declarations/cpolynomialat-changeorigin-of-finite.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [HasFiniteFPowerSeriesOnBall.changeOrigin](declarations/hasfinitefpowerseriesonball-changeorigin-source-edition-2.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasFiniteFPowerSeriesOnBall.cpolynomialAt_of_mem](declarations/hasfinitefpowerseriesonball-cpolynomialat-of-mem.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasFiniteFPowerSeriesOnBall.cpolynomialOn](declarations/hasfinitefpowerseriesonball-cpolynomialon.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isOpen_cpolynomialAt](declarations/isopen-cpolynomialat.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [CPolynomialAt.eventually_cpolynomialAt](declarations/cpolynomialat-eventually-cpolynomialat.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [CPolynomialAt.exists_mem_nhds_cpolynomialOn](declarations/cpolynomialat-exists-mem-nhds-cpolynomialon.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [CPolynomialAt.exists_ball_cpolynomialOn](declarations/cpolynomialat-exists-ball-cpolynomialon.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6391b2af5f229a1a897e4443da072a1c924e5ee9a47fafcf96297fedf90e11db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
