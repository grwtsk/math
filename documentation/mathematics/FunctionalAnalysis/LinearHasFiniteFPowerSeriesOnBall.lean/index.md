# Linear Has Finite FPower Series On Ball

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f29a895e7f0293f071b37c2ed3928105db29198d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/LinearHasFiniteFPowerSeriesOnBall.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [fpowerSeries_radius](declarations/fpowerseries-radius.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [hasFiniteFPowerSeriesOnBall](declarations/hasfinitefpowerseriesonball.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [hasFPowerSeriesOnBall](declarations/hasfpowerseriesonball.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasFPowerSeriesAt](declarations/hasfpowerseriesat.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cpolynomialAt](declarations/cpolynomialat.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [analyticAt](declarations/analyticat-source-edition-2.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cpolynomialOn](declarations/cpolynomialon.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [analyticOnNhd](declarations/analyticonnhd-source-edition-3.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [analyticWithinAt](declarations/analyticwithinat.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [analyticOn](declarations/analyticon-source-edition-2.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [uncurryBilinear](declarations/uncurrybilinear.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [uncurryBilinear_apply](declarations/uncurrybilinear-apply.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [fpowerSeriesBilinear](declarations/fpowerseriesbilinear.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fpowerSeriesBilinear_apply_zero](declarations/fpowerseriesbilinear-apply-zero.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fpowerSeriesBilinear_apply_one](declarations/fpowerseriesbilinear-apply-one.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fpowerSeriesBilinear_apply_two](declarations/fpowerseriesbilinear-apply-two.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fpowerSeriesBilinear_apply_add_three](declarations/fpowerseriesbilinear-apply-add-three.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fpowerSeriesBilinear_radius](declarations/fpowerseriesbilinear-radius.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hasFPowerSeriesOnBall_bilinear](declarations/hasfpowerseriesonball-bilinear.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasFPowerSeriesAt_bilinear](declarations/hasfpowerseriesat-bilinear.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [analyticAt_bilinear](declarations/analyticat-bilinear.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [analyticWithinAt_bilinear](declarations/analyticwithinat-bilinear.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [analyticOnNhd_bilinear](declarations/analyticonnhd-bilinear.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [analyticOn_bilinear](declarations/analyticon-bilinear.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [analyticAt_id](declarations/analyticat-id.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [analyticWithinAt_id](declarations/analyticwithinat-id.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [analyticOnNhd_id](declarations/analyticonnhd-id.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [analyticOn_id](declarations/analyticon-id.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [analyticAt_fst](declarations/analyticat-fst.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [analyticWithinAt_fst](declarations/analyticwithinat-fst.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [analyticAt_snd](declarations/analyticat-snd.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [analyticWithinAt_snd](declarations/analyticwithinat-snd.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [analyticOnNhd_fst](declarations/analyticonnhd-fst.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [analyticOn_fst](declarations/analyticon-fst.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [analyticOnNhd_snd](declarations/analyticonnhd-snd.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [analyticOn_snd](declarations/analyticon-snd.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [analyticAt](declarations/analyticat.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [analyticOnNhd](declarations/analyticonnhd.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [analyticWithinAt](declarations/analyticwithinat-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [analyticOn](declarations/analyticon-source-edition-3.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [analyticAt](declarations/analyticat-source-edition-3.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [analyticOnNhd](declarations/analyticonnhd-source-edition-2.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [analyticWithinAt](declarations/analyticwithinat-source-edition-3.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [analyticOn](declarations/analyticon.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f32fc043f747740489af3d212d3d1fd4fe019ca9c53a20978b257e48fcc4a7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Linear/Variant41b989832a47b45acd3e26b1a90291f69c4efb19622441f93230abbecfbaa92c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
