# Special Functions Exp Exp Public Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 79 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97aa22cce9a0173e19aa13b00bb213f5a48ebef8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_bound_sq](declarations/exp-bound-sq.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [locally_lipschitz_exp](declarations/locally-lipschitz-exp.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [continuous_exp](declarations/continuous-exp-source-edition-2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [continuousOn_exp](declarations/continuouson-exp-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [exp_sub_sum_range_isBigO_pow](declarations/exp-sub-sum-range-isbigo-pow.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [exp_sub_sum_range_succ_isLittleO_pow](declarations/exp-sub-sum-range-succ-islittleo-pow-source-edition-2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Filter.Tendsto.cexp](declarations/filter-tendsto-cexp.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ContinuousWithinAt.cexp](declarations/continuouswithinat-cexp.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ContinuousAt.cexp](declarations/continuousat-cexp.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ContinuousOn.cexp](declarations/continuouson-cexp.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Continuous.cexp](declarations/continuous-cexp.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [UniformContinuousOn.cexp](declarations/uniformcontinuouson-cexp.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [continuous_exp](declarations/continuous-exp.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuousOn_exp](declarations/continuouson-exp.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [exp_sub_sum_range_isBigO_pow](declarations/exp-sub-sum-range-isbigo-pow-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [exp_sub_sum_range_succ_isLittleO_pow](declarations/exp-sub-sum-range-succ-islittleo-pow.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Filter.Tendsto.rexp](declarations/filter-tendsto-rexp.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ContinuousWithinAt.rexp](declarations/continuouswithinat-rexp.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ContinuousAt.rexp](declarations/continuousat-rexp.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ContinuousOn.rexp](declarations/continuouson-rexp.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Continuous.rexp](declarations/continuous-rexp.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exp_half](declarations/exp-half.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [tendsto_exp_atTop](declarations/tendsto-exp-attop.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_exp_neg_le_exp_neg_one](declarations/mul-exp-neg-le-exp-neg-one.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tendsto_exp_neg_atTop_nhds_zero](declarations/tendsto-exp-neg-attop-nhds-zero.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tendsto_exp_nhds_zero_nhds_one](declarations/tendsto-exp-nhds-zero-nhds-one.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tendsto_exp_atBot](declarations/tendsto-exp-atbot.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tendsto_exp_atBot_nhdsGT](declarations/tendsto-exp-atbot-nhdsgt.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isBoundedUnder_ge_exp_comp](declarations/isboundedunder-ge-exp-comp.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isBoundedUnder_le_exp_comp](declarations/isboundedunder-le-exp-comp.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tendsto_exp_div_pow_atTop](declarations/tendsto-exp-div-pow-attop.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tendsto_pow_mul_exp_neg_atTop_nhds_zero](declarations/tendsto-pow-mul-exp-neg-attop-nhds-zero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tendsto_mul_exp_add_div_pow_atTop](declarations/tendsto-mul-exp-add-div-pow-attop.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tendsto_div_pow_mul_exp_add_atTop](declarations/tendsto-div-pow-mul-exp-add-attop.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [expOrderIso](declarations/exporderiso.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_expOrderIso_apply](declarations/coe-exporderiso-apply.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_comp_expOrderIso](declarations/coe-comp-exporderiso.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [range_exp](declarations/range-exp.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [image_exp_Ioi](declarations/image-exp-ioi.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [image_exp_Ici](declarations/image-exp-ici.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [image_exp_Icc](declarations/image-exp-icc.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [image_exp_Ico](declarations/image-exp-ico.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [image_exp_Ioc](declarations/image-exp-ioc.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [image_exp_Ioo](declarations/image-exp-ioo.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [image_exp_uIcc](declarations/image-exp-uicc.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [image_exp_Iio](declarations/image-exp-iio.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [image_exp_Iic](declarations/image-exp-iic.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_exp_atTop](declarations/map-exp-attop.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [comap_exp_atTop](declarations/comap-exp-attop.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tendsto_exp_comp_atTop](declarations/tendsto-exp-comp-attop.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [tendsto_comp_exp_atTop](declarations/tendsto-comp-exp-attop.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_exp_atBot](declarations/map-exp-atbot.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [comap_exp_nhdsGT_zero](declarations/comap-exp-nhdsgt-zero.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [tendsto_comp_exp_atBot](declarations/tendsto-comp-exp-atbot.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [comap_exp_nhds_zero](declarations/comap-exp-nhds-zero.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [tendsto_exp_comp_nhds_zero](declarations/tendsto-exp-comp-nhds-zero.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isOpenEmbedding_exp](declarations/isopenembedding-exp.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [map_exp_nhds](declarations/map-exp-nhds.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [comap_exp_nhds_exp](declarations/comap-exp-nhds-exp.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [isLittleO_pow_exp_atTop](declarations/islittleo-pow-exp-attop.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [isBigO_exp_comp_exp_comp](declarations/isbigo-exp-comp-exp-comp.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [isTheta_exp_comp_exp_comp](declarations/istheta-exp-comp-exp-comp.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [isLittleO_exp_comp_exp_comp](declarations/islittleo-exp-comp-exp-comp.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [isLittleO_one_exp_comp](declarations/islittleo-one-exp-comp.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [isBigO_one_exp_comp](declarations/isbigo-one-exp-comp.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [isBigO_exp_comp_one](declarations/isbigo-exp-comp-one.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [isTheta_exp_comp_one](declarations/istheta-exp-comp-one.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [summable_exp_nat_mul_iff](declarations/summable-exp-nat-mul-iff.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [summable_exp_neg_nat](declarations/summable-exp-neg-nat.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [summable_exp_nat_mul_of_ge](declarations/summable-exp-nat-mul-of-ge.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [summable_pow_mul_exp_neg_nat_mul](declarations/summable-pow-mul-exp-neg-nat-mul.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [HasSum.rexp](declarations/hassum-rexp.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [comap_exp_cobounded](declarations/comap-exp-cobounded.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [comap_exp_nhds_zero](declarations/comap-exp-nhds-zero-source-edition-2.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [comap_exp_nhdsNE](declarations/comap-exp-nhdsne.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [tendsto_exp_nhds_zero_iff](declarations/tendsto-exp-nhds-zero-iff.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [tendsto_exp_comap_re_atTop](declarations/tendsto-exp-comap-re-attop.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [tendsto_exp_comap_re_atBot](declarations/tendsto-exp-comap-re-atbot.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [tendsto_exp_comap_re_atBot_nhdsNE](declarations/tendsto-exp-comap-re-atbot-nhdsne.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [HasSum.cexp](declarations/hassum-cexp.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3585e56b5e167cabf905d5ac0947bf2d6bd53a4789c0af4f9395842610c2254c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
