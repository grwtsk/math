# Pow Asymptotics Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66fb2601c9d7d572f3950b54fbf9616034ffff6e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/PowAsymptoticsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_rpow_atTop](declarations/tendsto-rpow-attop.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [tendsto_rpow_neg_nhdsGT_zero](declarations/tendsto-rpow-neg-nhdsgt-zero.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [tendsto_rpow_neg_atTop](declarations/tendsto-rpow-neg-attop.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [tendsto_rpow_atTop_of_base_lt_one](declarations/tendsto-rpow-attop-of-base-lt-one.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [tendsto_rpow_atBot_of_base_lt_one](declarations/tendsto-rpow-atbot-of-base-lt-one.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [tendsto_rpow_atTop_of_base_gt_one](declarations/tendsto-rpow-attop-of-base-gt-one.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [tendsto_rpow_atBot_of_base_gt_one](declarations/tendsto-rpow-atbot-of-base-gt-one.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [tendsto_rpow_div_mul_add](declarations/tendsto-rpow-div-mul-add.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [tendsto_rpow_div](declarations/tendsto-rpow-div.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [tendsto_rpow_neg_div](declarations/tendsto-rpow-neg-div.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tendsto_exp_div_rpow_atTop](declarations/tendsto-exp-div-rpow-attop.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [tendsto_exp_mul_div_rpow_atTop](declarations/tendsto-exp-mul-div-rpow-attop.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero](declarations/tendsto-rpow-mul-exp-neg-mul-attop-nhds-zero.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [NNReal.tendsto_rpow_atTop](declarations/nnreal-tendsto-rpow-attop.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ENNReal.tendsto_rpow_at_top](declarations/ennreal-tendsto-rpow-at-top.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isTheta_exp_arg_mul_im](declarations/istheta-exp-arg-mul-im.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isBigO_cpow_rpow](declarations/isbigo-cpow-rpow.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isTheta_cpow_rpow](declarations/istheta-cpow-rpow.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isTheta_cpow_const_rpow](declarations/istheta-cpow-const-rpow.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsBigOWith.rpow](declarations/isbigowith-rpow.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsBigO.rpow](declarations/isbigo-rpow.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsTheta.rpow](declarations/istheta-rpow.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [IsLittleO.rpow](declarations/islittleo-rpow.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsBigO.sqrt](declarations/isbigo-sqrt.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsLittleO.sqrt](declarations/islittleo-sqrt.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsTheta.sqrt](declarations/istheta-sqrt.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isBigO_atTop_natCast_rpow_of_tendsto_div_rpow](declarations/isbigo-attop-natcast-rpow-of-tendsto-div-rpow.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsBigO.mul_atTop_rpow_of_isBigO_rpow](declarations/isbigo-mul-attop-rpow-of-isbigo-rpow.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsBigO.mul_atTop_rpow_natCast_of_isBigO_rpow](declarations/isbigo-mul-attop-rpow-natcast-of-isbigo-rpow.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsBigO.rpow_rpow_nhdsGE_zero_of_le_of_imp](declarations/isbigo-rpow-rpow-nhdsge-zero-of-le-of-imp.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsBigO.rpow_rpow_nhdsGE_zero_of_le](declarations/isbigo-rpow-rpow-nhdsge-zero-of-le.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsBigO.id_rpow_of_le_one](declarations/isbigo-id-rpow-of-le-one.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [isLittleO_rpow_exp_pos_mul_atTop](declarations/islittleo-rpow-exp-pos-mul-attop.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [isLittleO_zpow_exp_pos_mul_atTop](declarations/islittleo-zpow-exp-pos-mul-attop.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isLittleO_pow_exp_pos_mul_atTop](declarations/islittleo-pow-exp-pos-mul-attop.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isLittleO_rpow_exp_atTop](declarations/islittleo-rpow-exp-attop.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isLittleO_exp_neg_mul_rpow_atTop](declarations/islittleo-exp-neg-mul-rpow-attop.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [isLittleO_exp_mul_rpow_of_lt](declarations/islittleo-exp-mul-rpow-of-lt.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [isLittleO_log_rpow_atTop](declarations/islittleo-log-rpow-attop.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isLittleO_log_rpow_rpow_atTop](declarations/islittleo-log-rpow-rpow-attop.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isLittleO_abs_log_rpow_rpow_nhdsGT_zero](declarations/islittleo-abs-log-rpow-rpow-nhdsgt-zero.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isLittleO_log_rpow_nhdsGT_zero](declarations/islittleo-log-rpow-nhdsgt-zero.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [tendsto_log_div_rpow_nhdsGT_zero](declarations/tendsto-log-div-rpow-nhdsgt-zero.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [tendsto_log_mul_rpow_nhdsGT_zero](declarations/tendsto-log-mul-rpow-nhdsgt-zero.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [tendsto_log_mul_self_nhdsLT_zero](declarations/tendsto-log-mul-self-nhdslt-zero.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bbce9688785640ab26b1e3c3ef9418f0dd14131b733a502af3c52f6ffcb1dd31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variantf1b03c18e31b061d41e690ac92908039b1454737c7803d6269dd5c1f9cc1f3cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
