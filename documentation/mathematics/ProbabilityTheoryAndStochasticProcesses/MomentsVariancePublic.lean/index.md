# Moments Variance Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant216c4c4d4cd97f51c19ab8101eec246b669299eb784fcafa932539514eea38f1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d4cd5520e38b284aebe26ceba80cdad6772213d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MomentsVariancePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [evariance](declarations/evariance.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [variance](declarations/variance.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [evariance_congr](declarations/evariance-congr.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [variance_congr](declarations/variance-congr.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [evariance_zero_measure](declarations/evariance-zero-measure.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [variance_zero_measure](declarations/variance-zero-measure.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evariance_lt_top](declarations/evariance-lt-top.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [evariance_ne_top](declarations/evariance-ne-top.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evariance_eq_top](declarations/evariance-eq-top.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evariance_lt_top_iff_memLp](declarations/evariance-lt-top-iff-memlp.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [evariance_eq_top_iff](declarations/evariance-eq-top-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [variance_of_not_memLp](declarations/variance-of-not-memlp.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [memLp_two_of_variance_ne_zero](declarations/memlp-two-of-variance-ne-zero.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ofReal_variance](declarations/ofreal-variance.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evariance_eq_lintegral_ofReal](declarations/evariance-eq-lintegral-ofreal.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [variance_eq_integral](declarations/variance-eq-integral.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [ae_eq_integral_of_variance_eq_zero](declarations/ae-eq-integral-of-variance-eq-zero.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [variance_of_integral_eq_zero](declarations/variance-of-integral-eq-zero.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [evariance_zero](declarations/evariance-zero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [evariance_eq_zero_iff](declarations/evariance-eq-zero-iff.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [evariance_mul](declarations/evariance-mul.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [variance_zero](declarations/variance-zero.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [covariance_self](declarations/covariance-self.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [variance_nonneg](declarations/variance-nonneg.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [variance_const_mul](declarations/variance-const-mul.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [variance_mul_const](declarations/variance-mul-const.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [variance_smul](declarations/variance-smul.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [variance_smul'](declarations/variance-smul-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [variance_eq_sub](declarations/variance-eq-sub.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [variance_add_const](declarations/variance-add-const.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [variance_const_add](declarations/variance-const-add.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [variance_fun_neg](declarations/variance-fun-neg.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [variance_neg](declarations/variance-neg.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [variance_sub_const](declarations/variance-sub-const.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [variance_const_sub](declarations/variance-const-sub.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [variance_add](declarations/variance-add.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [variance_fun_add](declarations/variance-fun-add.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [variance_sub](declarations/variance-sub.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [variance_fun_sub](declarations/variance-fun-sub.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [variance_sum'](declarations/variance-sum-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [variance_sum](declarations/variance-sum.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [variance_fun_sum'](declarations/variance-fun-sum.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [variance_fun_sum](declarations/variance-fun-sum-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [variance_dirac](declarations/variance-dirac.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [variance_map](declarations/variance-map.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [_root_.MeasureTheory.MeasurePreserving.variance_fun_comp](declarations/root-measuretheory-measurepreserving-variance-fun-comp.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [variance_map_equiv](declarations/variance-map-equiv.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [variance_id_map](declarations/variance-id-map.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [variance_le_expectation_sq](declarations/variance-le-expectation-sq.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [evariance_def'](declarations/evariance-def.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [meas_ge_le_evariance_div_sq](declarations/meas-ge-le-evariance-div-sq.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [meas_ge_le_variance_div_sq](declarations/meas-ge-le-variance-div-sq.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IndepFun.variance_add](declarations/indepfun-variance-add.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [IndepFun.variance_fun_add](declarations/indepfun-variance-fun-add.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IndepFun.variance_sum](declarations/indepfun-variance-sum.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [variance_sum_pi](declarations/variance-sum-pi.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [variance_le_sub_mul_sub](declarations/variance-le-sub-mul-sub.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [variance_le_sq_of_bounded](declarations/variance-le-sq-of-bounded.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [variance_add_prod](declarations/variance-add-prod.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [variance_dual_prod'](declarations/variance-dual-prod.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [variance_dual_prod](declarations/variance-dual-prod-source-edition-2.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d99bf867e8fd1a7e1240cb8a654fb1baa2ad7805e11146b87d5c49cfd5ebb83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant216c4c4d4cd97f51c19ab8101eec246b669299eb784fcafa932539514eea38f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
