# Moments Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 60 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant0c69a9e1a36bcb900714237870f5d91f8c839686c96b65d471e3591fea042271.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5438d3c6889d2d6588734b359836af66d9787bfb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MomentsBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [moment](declarations/moment.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [centralMoment](declarations/centralmoment.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [moment_zero](declarations/moment-zero.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [moment_zero_measure](declarations/moment-zero-measure.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [centralMoment_zero](declarations/centralmoment-zero.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [centralMoment_zero_measure](declarations/centralmoment-zero-measure.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [centralMoment_one'](declarations/centralmoment-one.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [centralMoment_one](declarations/centralmoment-one-source-edition-2.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [centralMoment_two_eq_variance](declarations/centralmoment-two-eq-variance.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mgf](declarations/mgf.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [cgf](declarations/cgf.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mgf_zero_fun](declarations/mgf-zero-fun.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cgf_zero_fun](declarations/cgf-zero-fun.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mgf_zero_measure](declarations/mgf-zero-measure.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cgf_zero_measure](declarations/cgf-zero-measure.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mgf_const'](declarations/mgf-const.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mgf_const](declarations/mgf-const-source-edition-2.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cgf_const'](declarations/cgf-const-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [cgf_const](declarations/cgf-const.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mgf_zero'](declarations/mgf-zero-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mgf_zero](declarations/mgf-zero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cgf_zero'](declarations/cgf-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cgf_zero](declarations/cgf-zero-source-edition-2.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mgf_undef](declarations/mgf-undef.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cgf_undef](declarations/cgf-undef.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mgf_nonneg](declarations/mgf-nonneg.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mgf_pos'](declarations/mgf-pos-source-edition-2.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mgf_pos](declarations/mgf-pos.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mgf_pos_iff](declarations/mgf-pos-iff.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [exp_cgf](declarations/exp-cgf.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [mgf_map](declarations/mgf-map.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mgf_id_map](declarations/mgf-id-map.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mgf_congr](declarations/mgf-congr.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [mgf_congr_identDistrib](declarations/mgf-congr-identdistrib.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mgf_neg](declarations/mgf-neg.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cgf_neg](declarations/cgf-neg.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mgf_smul_left](declarations/mgf-smul-left.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mgf_const_add](declarations/mgf-const-add.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mgf_add_const](declarations/mgf-add-const.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [mgf_add_measure](declarations/mgf-add-measure.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [mgf_sum_measure](declarations/mgf-sum-measure.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [mgf_smul_measure](declarations/mgf-smul-measure.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [mgf_mono_of_nonneg](declarations/mgf-mono-of-nonneg.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mgf_anti_of_nonpos](declarations/mgf-anti-of-nonpos.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IndepFun.exp_mul](declarations/indepfun-exp-mul.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IndepFun.mgf_add](declarations/indepfun-mgf-add-source-edition-2.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IndepFun.mgf_add'](declarations/indepfun-mgf-add.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IndepFun.cgf_add](declarations/indepfun-cgf-add.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [aestronglyMeasurable_exp_mul_add](declarations/aestronglymeasurable-exp-mul-add.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [aestronglyMeasurable_exp_mul_sum](declarations/aestronglymeasurable-exp-mul-sum.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IndepFun.integrable_exp_mul_add](declarations/indepfun-integrable-exp-mul-add.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [iIndepFun.integrable_exp_mul_sum](declarations/iindepfun-integrable-exp-mul-sum.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [iIndepFun.mgf_sum](declarations/iindepfun-mgf-sum.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [iIndepFun.cgf_sum](declarations/iindepfun-cgf-sum.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mgf_congr_of_identDistrib](declarations/mgf-congr-of-identdistrib.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [mgf_sum_of_identDistrib](declarations/mgf-sum-of-identdistrib.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [measure_ge_le_exp_mul_mgf](declarations/measure-ge-le-exp-mul-mgf.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [measure_le_le_exp_mul_mgf](declarations/measure-le-le-exp-mul-mgf.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [measure_ge_le_exp_cgf](declarations/measure-ge-le-exp-cgf.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [measure_le_le_exp_cgf](declarations/measure-le-le-exp-cgf.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [mgf_dirac](declarations/mgf-dirac.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [mgf_dirac'](declarations/mgf-dirac-source-edition-2.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [aemeasurable_exp_mul](declarations/aemeasurable-exp-mul.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [integrable_exp_mul_of_le](declarations/integrable-exp-mul-of-le.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=049e73510f9ceb38a0c5d34e6a4d5ceef2de06f787299b1256449f8184882ad9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Basic/Variant0c69a9e1a36bcb900714237870f5d91f8c839686c96b65d471e3591fea042271.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
