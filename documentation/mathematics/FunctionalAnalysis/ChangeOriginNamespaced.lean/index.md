# Change Origin Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a45a0f0433d855565817fc2da22b97564dc61173`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/ChangeOriginNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [changeOriginSeriesTerm](declarations/changeoriginseriesterm.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [changeOriginSeriesTerm_apply](declarations/changeoriginseriesterm-apply.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [norm_changeOriginSeriesTerm](declarations/norm-changeoriginseriesterm.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nnnorm_changeOriginSeriesTerm](declarations/nnnorm-changeoriginseriesterm.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [nnnorm_changeOriginSeriesTerm_apply_le](declarations/nnnorm-changeoriginseriesterm-apply-le.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [changeOriginSeries](declarations/changeoriginseries.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nnnorm_changeOriginSeries_le_tsum](declarations/nnnorm-changeoriginseries-le-tsum.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nnnorm_changeOriginSeries_apply_le_tsum](declarations/nnnorm-changeoriginseries-apply-le-tsum.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [changeOrigin](declarations/changeorigin.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [changeOriginIndexEquiv](declarations/changeoriginindexequiv.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [changeOriginSeriesTerm_changeOriginIndexEquiv_symm](declarations/changeoriginseriesterm-changeoriginindexequiv-symm.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [changeOriginSeries_summable_aux₁](declarations/changeoriginseries-summable-aux-source-edition-3.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [changeOriginSeries_summable_aux₂](declarations/changeoriginseries-summable-aux-source-edition-2.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [changeOriginSeries_summable_aux₃](declarations/changeoriginseries-summable-aux.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [le_changeOriginSeries_radius](declarations/le-changeoriginseries-radius.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nnnorm_changeOrigin_le](declarations/nnnorm-changeorigin-le.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [changeOrigin_radius](declarations/changeorigin-radius.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [derivSeries](declarations/derivseries.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [radius_le_radius_derivSeries](declarations/radius-le-radius-derivseries.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [derivSeries_eq_zero](declarations/derivseries-eq-zero.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasFPowerSeriesOnBall_changeOrigin](declarations/hasfpowerseriesonball-changeorigin.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [changeOrigin_eval](declarations/changeorigin-eval.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [analyticAt_changeOrigin](declarations/analyticat-changeorigin.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HasFPowerSeriesWithinOnBall.changeOrigin](declarations/hasfpowerserieswithinonball-changeorigin.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasFPowerSeriesOnBall.changeOrigin](declarations/hasfpowerseriesonball-changeorigin-source-edition-2.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasFPowerSeriesWithinOnBall.analyticWithinAt_of_mem](declarations/hasfpowerserieswithinonball-analyticwithinat-of-mem.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasFPowerSeriesOnBall.analyticAt_of_mem](declarations/hasfpowerseriesonball-analyticat-of-mem.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasFPowerSeriesWithinOnBall.analyticOn](declarations/hasfpowerserieswithinonball-analyticon.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [HasFPowerSeriesOnBall.analyticOnNhd](declarations/hasfpowerseriesonball-analyticonnhd.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isOpen_analyticAt](declarations/isopen-analyticat.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [AnalyticAt.eventually_analyticAt](declarations/analyticat-eventually-analyticat.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [AnalyticAt.exists_mem_nhds_analyticOnNhd](declarations/analyticat-exists-mem-nhds-analyticonnhd.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [AnalyticAt.exists_ball_analyticOnNhd](declarations/analyticat-exists-ball-analyticonnhd.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91063a3b2244272395cd49f3bade60aa80d17397bc7c99fdf4777d541aa36336 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
