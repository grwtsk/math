# Moments Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**78 observed declarations and anonymous commands**, 74 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17f19e29a104382b33c6b64c5a3099841eef1c44`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MomentsBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [moment](declarations/moment.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [moment_def](declarations/moment-def.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [centralMoment](declarations/centralmoment.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [moment_zero](declarations/moment-zero.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [moment_zero_measure](declarations/moment-zero-measure.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [centralMoment_zero](declarations/centralmoment-zero.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [moment_one](declarations/moment-one.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [centralMoment_zero_measure](declarations/centralmoment-zero-measure.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [centralMoment_one'](declarations/centralmoment-one.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [centralMoment_one](declarations/centralmoment-one-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [centralMoment_two_eq_variance](declarations/centralmoment-two-eq-variance.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [centralMoment_congr_ae](declarations/centralmoment-congr-ae.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mgf](declarations/mgf.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [cgf](declarations/cgf.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mgf_zero_fun](declarations/mgf-zero-fun.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cgf_zero_fun](declarations/cgf-zero-fun.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mgf_zero_measure](declarations/mgf-zero-measure.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cgf_zero_measure](declarations/cgf-zero-measure.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mgf_const'](declarations/mgf-const.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mgf_const](declarations/mgf-const-source-edition-2.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cgf_const'](declarations/cgf-const-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cgf_const](declarations/cgf-const.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mgf_zero'](declarations/mgf-zero-source-edition-2.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mgf_zero](declarations/mgf-zero.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cgf_zero'](declarations/cgf-zero.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cgf_zero](declarations/cgf-zero-source-edition-2.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mgf_undef](declarations/mgf-undef.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cgf_undef](declarations/cgf-undef.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mgf_nonneg](declarations/mgf-nonneg.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mgf_pos'](declarations/mgf-pos-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mgf_pos](declarations/mgf-pos.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mgf_pos_iff](declarations/mgf-pos-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [exp_cgf](declarations/exp-cgf.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [mgf_map](declarations/mgf-map.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [mgf_id_map](declarations/mgf-id-map.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mgf_congr](declarations/mgf-congr.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [mgf_congr_identDistrib](declarations/mgf-congr-identdistrib.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mgf_neg](declarations/mgf-neg.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [cgf_neg](declarations/cgf-neg.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mgf_smul_left](declarations/mgf-smul-left.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mgf_const_mul](declarations/mgf-const-mul.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mgf_const_add](declarations/mgf-const-add.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mgf_add_const](declarations/mgf-add-const.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [mgf_add_measure](declarations/mgf-add-measure.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [mgf_sum_measure](declarations/mgf-sum-measure.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [mgf_smul_measure](declarations/mgf-smul-measure.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [mgf_mono_of_nonneg](declarations/mgf-mono-of-nonneg.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [mgf_anti_of_nonpos](declarations/mgf-anti-of-nonpos.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IndepFun.exp_mul](declarations/indepfun-exp-mul.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IndepFun.mgf_add](declarations/indepfun-mgf-add-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IndepFun.mgf_add'](declarations/indepfun-mgf-add.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IndepFun.cgf_add](declarations/indepfun-cgf-add.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [aestronglyMeasurable_exp_mul_add](declarations/aestronglymeasurable-exp-mul-add.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [aestronglyMeasurable_exp_mul_sum](declarations/aestronglymeasurable-exp-mul-sum.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IndepFun.integrable_exp_mul_add](declarations/indepfun-integrable-exp-mul-add.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [iIndepFun.integrable_exp_mul_sum](declarations/iindepfun-integrable-exp-mul-sum.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [iIndepFun.mgf_sum₀](declarations/iindepfun-mgf-sum.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [iIndepFun.mgf_sum](declarations/iindepfun-mgf-sum-source-edition-2.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [iIndepFun.cgf_sum₀](declarations/iindepfun-cgf-sum.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [iIndepFun.cgf_sum](declarations/iindepfun-cgf-sum-source-edition-2.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mgf_congr_of_identDistrib](declarations/mgf-congr-of-identdistrib.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mgf_sum_of_identDistrib₀](declarations/mgf-sum-of-identdistrib.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [mgf_sum_of_identDistrib](declarations/mgf-sum-of-identdistrib-source-edition-2.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [measure_ge_le_exp_mul_mgf](declarations/measure-ge-le-exp-mul-mgf.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [measure_le_le_exp_mul_mgf](declarations/measure-le-le-exp-mul-mgf.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [measure_ge_le_exp_cgf](declarations/measure-ge-le-exp-cgf.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [measure_le_le_exp_cgf](declarations/measure-le-le-exp-cgf.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [mgf_dirac](declarations/mgf-dirac-source-edition-2.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [mgf_dirac'](declarations/mgf-dirac.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [aemeasurable_exp_mul](declarations/aemeasurable-exp-mul.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [integrable_exp_mul_of_le](declarations/integrable-exp-mul-of-le.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [integrable_exp_mul_of_mem_Icc](declarations/integrable-exp-mul-of-mem-icc.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [integral_comp_id_comm'](declarations/integral-comp-id-comm-source-edition-4.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [integral_comp_id_comm](declarations/integral-comp-id-comm-source-edition-2.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [integral_id_map](declarations/integral-id-map-source-edition-2.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [integral_comp_id_comm'](declarations/integral-comp-id-comm.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [integral_comp_id_comm](declarations/integral-comp-id-comm-source-edition-3.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [integral_id_map](declarations/integral-id-map.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13b9b966f9bc0f6dd84e78f79c1522a2c930b60c950946c1b95747729435d467 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variante2a1629e64945e8f32e6a87aa38585095e97fb9a6df2d6db33af6313235e1a8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
