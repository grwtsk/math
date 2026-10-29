# Pow Asymptotics Namespaced Tendsto Rpow Mul Exp Neg Mul At Top Nhds Zero

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cffe78f934d18e0a535912f3e392e1e79f243d0a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/PowAsymptoticsNamespacedTendstoRpowMulExpNegMulAtTopNhdsZero.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_rpow_atTop](declarations/tendsto-rpow-attop.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [tendsto_rpow_neg_atTop](declarations/tendsto-rpow-neg-attop.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](declarations/tendsto-rpow-attop-of-base-lt-one.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [tendsto_rpow_atTop_of_base_gt_one](declarations/tendsto-rpow-attop-of-base-gt-one.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](declarations/tendsto-rpow-atbot-of-base-lt-one.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [tendsto_rpow_atBot_of_base_gt_one](declarations/tendsto-rpow-atbot-of-base-gt-one.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [tendsto_rpow_div_mul_add](declarations/tendsto-rpow-div-mul-add.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tendsto_rpow_div](declarations/tendsto-rpow-div.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tendsto_rpow_neg_div](declarations/tendsto-rpow-neg-div.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tendsto_exp_div_rpow_atTop](declarations/tendsto-exp-div-rpow-attop.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tendsto_exp_mul_div_rpow_atTop](declarations/tendsto-exp-mul-div-rpow-attop.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero](declarations/tendsto-rpow-mul-exp-neg-mul-attop-nhds-zero.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [NNReal.tendsto_rpow_atTop](declarations/nnreal-tendsto-rpow-attop.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ENNReal.tendsto_rpow_at_top](declarations/ennreal-tendsto-rpow-at-top.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isTheta_exp_arg_mul_im](declarations/istheta-exp-arg-mul-im.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isBigO_cpow_rpow](declarations/isbigo-cpow-rpow.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isTheta_cpow_rpow](declarations/istheta-cpow-rpow.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isTheta_cpow_const_rpow](declarations/istheta-cpow-const-rpow.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsBigOWith.rpow](declarations/isbigowith-rpow.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsBigO.rpow](declarations/isbigo-rpow.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsTheta.rpow](declarations/istheta-rpow.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsLittleO.rpow](declarations/islittleo-rpow.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsBigO.sqrt](declarations/isbigo-sqrt.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsLittleO.sqrt](declarations/islittleo-sqrt.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsTheta.sqrt](declarations/istheta-sqrt.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isBigO_atTop_natCast_rpow_of_tendsto_div_rpow](declarations/isbigo-attop-natcast-rpow-of-tendsto-div-rpow.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsBigO.mul_atTop_rpow_of_isBigO_rpow](declarations/isbigo-mul-attop-rpow-of-isbigo-rpow.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsBigO.mul_atTop_rpow_natCast_of_isBigO_rpow](declarations/isbigo-mul-attop-rpow-natcast-of-isbigo-rpow.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isLittleO_rpow_exp_pos_mul_atTop](declarations/islittleo-rpow-exp-pos-mul-attop.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isLittleO_zpow_exp_pos_mul_atTop](declarations/islittleo-zpow-exp-pos-mul-attop.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isLittleO_pow_exp_pos_mul_atTop](declarations/islittleo-pow-exp-pos-mul-attop.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isLittleO_rpow_exp_atTop](declarations/islittleo-rpow-exp-attop.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isLittleO_exp_neg_mul_rpow_atTop](declarations/islittleo-exp-neg-mul-rpow-attop.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isLittleO_log_rpow_atTop](declarations/islittleo-log-rpow-attop.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isLittleO_log_rpow_rpow_atTop](declarations/islittleo-log-rpow-rpow-attop.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isLittleO_abs_log_rpow_rpow_nhdsGT_zero](declarations/islittleo-abs-log-rpow-rpow-nhdsgt-zero.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isLittleO_log_rpow_nhdsGT_zero](declarations/islittleo-log-rpow-nhdsgt-zero.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [tendsto_log_div_rpow_nhdsGT_zero](declarations/tendsto-log-div-rpow-nhdsgt-zero.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [tendsto_log_mul_rpow_nhdsGT_zero](declarations/tendsto-log-mul-rpow-nhdsgt-zero.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [tendsto_log_mul_self_nhdsLT_zero](declarations/tendsto-log-mul-self-nhdslt-zero.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1a8927c16784bbbb7578d466998545c7e5cfe5db2ee78998c7af47cb641dacb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantb2595ba0f3741738a05a39c4e7e92ee2e692efb4df74b57141581fe474bbee65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
