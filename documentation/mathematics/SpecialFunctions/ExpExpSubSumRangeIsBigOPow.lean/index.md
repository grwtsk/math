# Exp Exp Sub Sum Range Is Big OPow

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**69 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1272eb89a229af163e16b805e3268067b535db9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/ExpExpSubSumRangeIsBigOPow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_bound_sq](declarations/exp-bound-sq.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [locally_lipschitz_exp](declarations/locally-lipschitz-exp.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [continuous_exp](declarations/continuous-exp.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [continuousOn_exp](declarations/continuouson-exp.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [exp_sub_sum_range_isBigO_pow](declarations/exp-sub-sum-range-isbigo-pow-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [exp_sub_sum_range_succ_isLittleO_pow](declarations/exp-sub-sum-range-succ-islittleo-pow-source-edition-2.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Filter.Tendsto.cexp](declarations/filter-tendsto-cexp.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ContinuousWithinAt.cexp](declarations/continuouswithinat-cexp.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ContinuousAt.cexp](declarations/continuousat-cexp.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ContinuousOn.cexp](declarations/continuouson-cexp.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Continuous.cexp](declarations/continuous-cexp.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [UniformContinuousOn.cexp](declarations/uniformcontinuouson-cexp.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [continuous_exp](declarations/continuous-exp-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuousOn_exp](declarations/continuouson-exp-source-edition-2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [exp_sub_sum_range_isBigO_pow](declarations/exp-sub-sum-range-isbigo-pow.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [exp_sub_sum_range_succ_isLittleO_pow](declarations/exp-sub-sum-range-succ-islittleo-pow.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Filter.Tendsto.rexp](declarations/filter-tendsto-rexp.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ContinuousWithinAt.rexp](declarations/continuouswithinat-rexp.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ContinuousAt.rexp](declarations/continuousat-rexp.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ContinuousOn.rexp](declarations/continuouson-rexp.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Continuous.rexp](declarations/continuous-rexp.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exp_half](declarations/exp-half.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tendsto_exp_atTop](declarations/tendsto-exp-attop.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [tendsto_exp_neg_atTop_nhds_zero](declarations/tendsto-exp-neg-attop-nhds-zero.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tendsto_exp_nhds_zero_nhds_one](declarations/tendsto-exp-nhds-zero-nhds-one.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tendsto_exp_atBot](declarations/tendsto-exp-atbot.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tendsto_exp_atBot_nhdsGT](declarations/tendsto-exp-atbot-nhdsgt.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isBoundedUnder_ge_exp_comp](declarations/isboundedunder-ge-exp-comp.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isBoundedUnder_le_exp_comp](declarations/isboundedunder-le-exp-comp.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tendsto_exp_div_pow_atTop](declarations/tendsto-exp-div-pow-attop.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tendsto_pow_mul_exp_neg_atTop_nhds_zero](declarations/tendsto-pow-mul-exp-neg-attop-nhds-zero.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tendsto_mul_exp_add_div_pow_atTop](declarations/tendsto-mul-exp-add-div-pow-attop.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tendsto_div_pow_mul_exp_add_atTop](declarations/tendsto-div-pow-mul-exp-add-attop.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [expOrderIso](declarations/exporderiso.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coe_expOrderIso_apply](declarations/coe-exporderiso-apply.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_comp_expOrderIso](declarations/coe-comp-exporderiso.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [range_exp](declarations/range-exp.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_exp_atTop](declarations/map-exp-attop.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [comap_exp_atTop](declarations/comap-exp-attop.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [tendsto_exp_comp_atTop](declarations/tendsto-exp-comp-attop.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [tendsto_comp_exp_atTop](declarations/tendsto-comp-exp-attop.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [map_exp_atBot](declarations/map-exp-atbot.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [comap_exp_nhdsGT_zero](declarations/comap-exp-nhdsgt-zero.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tendsto_comp_exp_atBot](declarations/tendsto-comp-exp-atbot.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [comap_exp_nhds_zero](declarations/comap-exp-nhds-zero-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [tendsto_exp_comp_nhds_zero](declarations/tendsto-exp-comp-nhds-zero.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isOpenEmbedding_exp](declarations/isopenembedding-exp.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_exp_nhds](declarations/map-exp-nhds.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [comap_exp_nhds_exp](declarations/comap-exp-nhds-exp.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isLittleO_pow_exp_atTop](declarations/islittleo-pow-exp-attop.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isBigO_exp_comp_exp_comp](declarations/isbigo-exp-comp-exp-comp.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isTheta_exp_comp_exp_comp](declarations/istheta-exp-comp-exp-comp.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [isLittleO_exp_comp_exp_comp](declarations/islittleo-exp-comp-exp-comp.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isLittleO_one_exp_comp](declarations/islittleo-one-exp-comp.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [isBigO_one_exp_comp](declarations/isbigo-one-exp-comp.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [isBigO_exp_comp_one](declarations/isbigo-exp-comp-one.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isTheta_exp_comp_one](declarations/istheta-exp-comp-one.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [summable_exp_nat_mul_iff](declarations/summable-exp-nat-mul-iff.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [summable_exp_neg_nat](declarations/summable-exp-neg-nat.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [summable_pow_mul_exp_neg_nat_mul](declarations/summable-pow-mul-exp-neg-nat-mul.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [HasSum.rexp](declarations/hassum-rexp.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [comap_exp_cobounded](declarations/comap-exp-cobounded.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [comap_exp_nhds_zero](declarations/comap-exp-nhds-zero.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [comap_exp_nhdsNE](declarations/comap-exp-nhdsne.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [tendsto_exp_nhds_zero_iff](declarations/tendsto-exp-nhds-zero-iff.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [tendsto_exp_comap_re_atTop](declarations/tendsto-exp-comap-re-attop.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [tendsto_exp_comap_re_atBot](declarations/tendsto-exp-comap-re-atbot.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [tendsto_exp_comap_re_atBot_nhdsNE](declarations/tendsto-exp-comap-re-atbot-nhdsne.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [HasSum.cexp](declarations/hassum-cexp.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c73adcf7af4def0f700fe9df8c7639c72e886d1b9880089816d6a0d071e2b5f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Exp/Variant673508b7ab14e4a695dd5a288b07bee10458933518b6e4fc51986f63c20fdfcf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
