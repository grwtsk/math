# Algebra Exponential

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 82 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ee37b8478fad935bf98072edba783fc30d1ed91`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponential.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [expSeries](declarations/expseries.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [expSeries_eq_ofScalars](declarations/expseries-eq-ofscalars.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [exp](declarations/exp.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [expSeries_apply_eq](declarations/expseries-apply-eq-source-edition-2.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [expSeries_apply_eq'](declarations/expseries-apply-eq.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [expSeries_sum_eq](declarations/expseries-sum-eq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exp_eq_tsum](declarations/exp-eq-tsum.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exp_eq_ofScalarsSum](declarations/exp-eq-ofscalarssum.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [expSeries_apply_zero](declarations/expseries-apply-zero.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [exp_zero](declarations/exp-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [exp_op](declarations/exp-op.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [exp_unop](declarations/exp-unop.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [star_exp](declarations/star-exp.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [_root_.IsSelfAdjoint.exp](declarations/root-isselfadjoint-exp.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [_root_.Commute.exp_right](declarations/root-commute-exp-right.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [_root_.Commute.exp_left](declarations/root-commute-exp-left.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [_root_.Commute.exp](declarations/root-commute-exp.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [expSeries_apply_eq_div](declarations/expseries-apply-eq-div.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [expSeries_apply_eq_div'](declarations/expseries-apply-eq-div-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [expSeries_sum_eq_div](declarations/expseries-sum-eq-div.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exp_eq_tsum_div](declarations/exp-eq-tsum-div.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [norm_expSeries_summable_of_mem_ball](declarations/norm-expseries-summable-of-mem-ball-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [norm_expSeries_summable_of_mem_ball'](declarations/norm-expseries-summable-of-mem-ball.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [expSeries_summable_of_mem_ball](declarations/expseries-summable-of-mem-ball-source-edition-2.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [expSeries_summable_of_mem_ball'](declarations/expseries-summable-of-mem-ball.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [expSeries_hasSum_exp_of_mem_ball](declarations/expseries-hassum-exp-of-mem-ball.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [expSeries_hasSum_exp_of_mem_ball'](declarations/expseries-hassum-exp-of-mem-ball-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [hasFPowerSeriesOnBall_exp_of_radius_pos](declarations/hasfpowerseriesonball-exp-of-radius-pos.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hasFPowerSeriesAt_exp_zero_of_radius_pos](declarations/hasfpowerseriesat-exp-zero-of-radius-pos.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [continuousOn_exp](declarations/continuouson-exp.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [analyticAt_exp_of_mem_ball](declarations/analyticat-exp-of-mem-ball.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exp_add_of_commute_of_mem_ball](declarations/exp-add-of-commute-of-mem-ball.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [invertibleExpOfMemBall](declarations/invertibleexpofmemball.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isUnit_exp_of_mem_ball](declarations/isunit-exp-of-mem-ball.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [invOf_exp_of_mem_ball](declarations/invof-exp-of-mem-ball.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [map_exp_of_mem_ball](declarations/map-exp-of-mem-ball.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [algebraMap_exp_comm_of_mem_ball](declarations/algebramap-exp-comm-of-mem-ball.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [norm_expSeries_div_summable_of_mem_ball](declarations/norm-expseries-div-summable-of-mem-ball.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [expSeries_div_summable_of_mem_ball](declarations/expseries-div-summable-of-mem-ball.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [expSeries_div_hasSum_exp_of_mem_ball](declarations/expseries-div-hassum-exp-of-mem-ball.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [exp_neg_of_mem_ball](declarations/exp-neg-of-mem-ball.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [exp_add_of_mem_ball](declarations/exp-add-of-mem-ball.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [expSeries_radius_eq_top](declarations/expseries-radius-eq-top.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [expSeries_radius_pos](declarations/expseries-radius-pos.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [norm_expSeries_summable](declarations/norm-expseries-summable.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [norm_expSeries_summable'](declarations/norm-expseries-summable-source-edition-2.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [expSeries_summable](declarations/expseries-summable-source-edition-2.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [expSeries_summable'](declarations/expseries-summable.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [expSeries_hasSum_exp](declarations/expseries-hassum-exp.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exp_series_hasSum_exp'](declarations/exp-series-hassum-exp.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [exp_hasFPowerSeriesOnBall](declarations/exp-hasfpowerseriesonball.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [exp_hasFPowerSeriesAt_zero](declarations/exp-hasfpowerseriesat-zero.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [exp_continuous](declarations/exp-continuous.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [_root_.Filter.Tendsto.exp](declarations/root-filter-tendsto-exp.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [exp_analytic](declarations/exp-analytic.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [exp_add_of_commute](declarations/exp-add-of-commute.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [invertibleExp](declarations/invertibleexp.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isUnit_exp](declarations/isunit-exp.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [invOf_exp](declarations/invof-exp.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [_root_.Ring.inverse_exp](declarations/root-ring-inverse-exp.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [exp_mem_unitary_of_mem_skewAdjoint](declarations/exp-mem-unitary-of-mem-skewadjoint.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [exp_sum_of_commute](declarations/exp-sum-of-commute.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [exp_nsmul](declarations/exp-nsmul.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [map_exp](declarations/map-exp.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [exp_smul](declarations/exp-smul.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [exp_units_conj](declarations/exp-units-conj.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [exp_units_conj'](declarations/exp-units-conj-source-edition-2.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [_root_.Prod.fst_exp](declarations/root-prod-fst-exp.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [_root_.Prod.snd_exp](declarations/root-prod-snd-exp.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [_root_.Pi.coe_exp](declarations/root-pi-coe-exp.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [_root_.Pi.exp_def](declarations/root-pi-exp-def.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [_root_.Function.update_exp](declarations/root-function-update-exp.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [algebraMap_exp_comm](declarations/algebramap-exp-comm.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [norm_expSeries_div_summable](declarations/norm-expseries-div-summable.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [expSeries_div_summable](declarations/expseries-div-summable.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [expSeries_div_hasSum_exp](declarations/expseries-div-hassum-exp.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [exp_neg](declarations/exp-neg.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [exp_zsmul](declarations/exp-zsmul.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [exp_conj](declarations/exp-conj.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [exp_conj'](declarations/exp-conj-source-edition-2.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [exp_add](declarations/exp-add.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [exp_sum](declarations/exp-sum.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [expSeries_eq_expSeries](declarations/expseries-eq-expseries.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [exp_eq_exp](declarations/exp-eq-exp-source-edition-2.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [exp_ℝ_ℂ_eq_exp_ℂ_ℂ](declarations/exp-eq-exp.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [of_real_exp_ℝ_ℝ](declarations/of-real-exp.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59ec1c41b35b0a18699b33aceb200320e1bae04b253481ad8d8585ac259ee84e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant8c7eefe70cc76e76913031b7931e2bda4a757be24aea69a16414a2e0268603d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
