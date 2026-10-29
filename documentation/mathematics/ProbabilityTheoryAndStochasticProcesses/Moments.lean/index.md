# Moments

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bedd94d8fdc8540ee28df839cef4504a5a5ecede`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/Moments.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [moment](declarations/moment.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [centralMoment](declarations/centralmoment.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [moment_zero](declarations/moment-zero.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [centralMoment_zero](declarations/centralmoment-zero.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [centralMoment_one'](declarations/centralmoment-one.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [centralMoment_one](declarations/centralmoment-one-source-edition-2.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [centralMoment_two_eq_variance](declarations/centralmoment-two-eq-variance.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mgf](declarations/mgf.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [cgf](declarations/cgf.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mgf_zero_fun](declarations/mgf-zero-fun.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cgf_zero_fun](declarations/cgf-zero-fun.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mgf_zero_measure](declarations/mgf-zero-measure.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cgf_zero_measure](declarations/cgf-zero-measure.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mgf_const'](declarations/mgf-const-source-edition-2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mgf_const](declarations/mgf-const.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cgf_const'](declarations/cgf-const.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cgf_const](declarations/cgf-const-source-edition-2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mgf_zero'](declarations/mgf-zero-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mgf_zero](declarations/mgf-zero.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cgf_zero'](declarations/cgf-zero-source-edition-2.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cgf_zero](declarations/cgf-zero.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mgf_undef](declarations/mgf-undef.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cgf_undef](declarations/cgf-undef.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mgf_nonneg](declarations/mgf-nonneg.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mgf_pos'](declarations/mgf-pos.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mgf_pos](declarations/mgf-pos-source-edition-2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mgf_neg](declarations/mgf-neg.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cgf_neg](declarations/cgf-neg.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IndepFun.exp_mul](declarations/indepfun-exp-mul.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IndepFun.mgf_add](declarations/indepfun-mgf-add.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IndepFun.mgf_add'](declarations/indepfun-mgf-add-source-edition-2.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IndepFun.cgf_add](declarations/indepfun-cgf-add.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [aestronglyMeasurable_exp_mul_add](declarations/aestronglymeasurable-exp-mul-add.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [aestronglyMeasurable_exp_mul_sum](declarations/aestronglymeasurable-exp-mul-sum.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IndepFun.integrable_exp_mul_add](declarations/indepfun-integrable-exp-mul-add.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [iIndepFun.integrable_exp_mul_sum](declarations/iindepfun-integrable-exp-mul-sum.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [iIndepFun.mgf_sum](declarations/iindepfun-mgf-sum.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [iIndepFun.cgf_sum](declarations/iindepfun-cgf-sum.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [measure_ge_le_exp_mul_mgf](declarations/measure-ge-le-exp-mul-mgf.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measure_le_le_exp_mul_mgf](declarations/measure-le-le-exp-mul-mgf.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measure_ge_le_exp_cgf](declarations/measure-ge-le-exp-cgf.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [measure_le_le_exp_cgf](declarations/measure-le-le-exp-cgf.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=418f1ea40b527744f7fb149f7af6267fc746c6c5b2a5f12de8f5fbd2a7341892 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variantccef6519d735431242d3547bba7670780769500add2df136af2892499d4dfcac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
