# Moments Variance Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 59 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant4bcf6b093579b5bc971df1ce24006a8ef51200c8ccdbefddfc0770c796dcfbb7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fb44c5e58fff94c17d9eba7503219c9a0c8b0a1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MomentsVarianceNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [evariance](declarations/evariance.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [variance](declarations/variance.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [evariance_congr](declarations/evariance-congr.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [variance_congr](declarations/variance-congr.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [evariance_zero_measure](declarations/evariance-zero-measure.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [variance_zero_measure](declarations/variance-zero-measure.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evariance_lt_top](declarations/evariance-lt-top.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [evariance_ne_top](declarations/evariance-ne-top.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [evariance_eq_top](declarations/evariance-eq-top.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evariance_lt_top_iff_memLp](declarations/evariance-lt-top-iff-memlp.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [evariance_eq_top_iff](declarations/evariance-eq-top-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [variance_of_not_memLp](declarations/variance-of-not-memlp.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [memLp_two_of_variance_ne_zero](declarations/memlp-two-of-variance-ne-zero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ofReal_variance](declarations/ofreal-variance.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evariance_eq_lintegral_ofReal](declarations/evariance-eq-lintegral-ofreal.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [variance_eq_integral](declarations/variance-eq-integral.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [ae_eq_integral_of_variance_eq_zero](declarations/ae-eq-integral-of-variance-eq-zero.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [variance_of_integral_eq_zero](declarations/variance-of-integral-eq-zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [evariance_zero](declarations/evariance-zero.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [evariance_eq_zero_iff](declarations/evariance-eq-zero-iff.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [evariance_mul](declarations/evariance-mul.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [variance_zero](declarations/variance-zero.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [covariance_self](declarations/covariance-self.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [variance_nonneg](declarations/variance-nonneg.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [variance_const_mul](declarations/variance-const-mul.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [variance_mul_const](declarations/variance-mul-const.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [variance_smul](declarations/variance-smul.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [variance_smul'](declarations/variance-smul-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [variance_eq_sub](declarations/variance-eq-sub.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [variance_add_const](declarations/variance-add-const.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [variance_const_add](declarations/variance-const-add.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [variance_fun_neg](declarations/variance-fun-neg.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [variance_neg](declarations/variance-neg.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [variance_sub_const](declarations/variance-sub-const.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [variance_const_sub](declarations/variance-const-sub.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [variance_add](declarations/variance-add.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [variance_fun_add](declarations/variance-fun-add.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [variance_sub](declarations/variance-sub.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [variance_fun_sub](declarations/variance-fun-sub.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [variance_sum'](declarations/variance-sum.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [variance_sum](declarations/variance-sum-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [variance_fun_sum'](declarations/variance-fun-sum-source-edition-2.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [variance_fun_sum](declarations/variance-fun-sum.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [variance_dirac](declarations/variance-dirac.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [variance_map](declarations/variance-map.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Moments Variance Namespaced Public](declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [variance_map_equiv](declarations/variance-map-equiv.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [variance_id_map](declarations/variance-id-map.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [variance_le_expectation_sq](declarations/variance-le-expectation-sq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [evariance_def'](declarations/evariance-def.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [meas_ge_le_evariance_div_sq](declarations/meas-ge-le-evariance-div-sq.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [meas_ge_le_variance_div_sq](declarations/meas-ge-le-variance-div-sq.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [IndepFun.variance_add](declarations/indepfun-variance-add.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [IndepFun.variance_fun_add](declarations/indepfun-variance-fun-add.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IndepFun.variance_sum](declarations/indepfun-variance-sum.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [variance_sum_pi](declarations/variance-sum-pi.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [variance_le_sub_mul_sub](declarations/variance-le-sub-mul-sub.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [variance_le_sq_of_bounded](declarations/variance-le-sq-of-bounded.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [variance_add_prod](declarations/variance-add-prod.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [variance_dual_prod'](declarations/variance-dual-prod.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [variance_dual_prod](declarations/variance-dual-prod-source-edition-2.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e5741aff3c14b57a5984b12f9c0ffc0b8012cfff9aa2d6a921fe7a36e5d0d32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant4bcf6b093579b5bc971df1ce24006a8ef51200c8ccdbefddfc0770c796dcfbb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
