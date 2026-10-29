# Moments Variance

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4f85e63a93fe4e2421cb53371e82f97fb09653f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MomentsVariance.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [evariance](declarations/evariance.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [variance](declarations/variance.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [evariance_lt_top](declarations/evariance-lt-top.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [evariance_ne_top](declarations/evariance-ne-top.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [evariance_eq_top](declarations/evariance-eq-top.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [evariance_lt_top_iff_memLp](declarations/evariance-lt-top-iff-memlp.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [evariance_eq_top_iff](declarations/evariance-eq-top-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [variance_of_not_memLp](declarations/variance-of-not-memlp.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ofReal_variance](declarations/ofreal-variance.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evariance_eq_lintegral_ofReal](declarations/evariance-eq-lintegral-ofreal.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [variance_eq_integral](declarations/variance-eq-integral.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [variance_of_integral_eq_zero](declarations/variance-of-integral-eq-zero.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evariance_zero](declarations/evariance-zero.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evariance_eq_zero_iff](declarations/evariance-eq-zero-iff.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evariance_mul](declarations/evariance-mul.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [variance_zero](declarations/variance-zero.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [variance_nonneg](declarations/variance-nonneg.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [variance_mul](declarations/variance-mul.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [variance_smul](declarations/variance-smul-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [variance_smul'](declarations/variance-smul.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [variance_def'](declarations/variance-def.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [variance_add_const](declarations/variance-add-const.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [variance_const_add](declarations/variance-const-add.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [variance_fun_neg](declarations/variance-fun-neg.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [variance_neg](declarations/variance-neg.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [variance_sub_const](declarations/variance-sub-const.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [variance_const_sub](declarations/variance-const-sub.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [variance_dirac](declarations/variance-dirac.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [variance_map](declarations/variance-map.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [variance_id_map](declarations/variance-id-map.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [variance_le_expectation_sq](declarations/variance-le-expectation-sq.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [evariance_def'](declarations/evariance-def.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [meas_ge_le_evariance_div_sq](declarations/meas-ge-le-evariance-div-sq.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [meas_ge_le_variance_div_sq](declarations/meas-ge-le-variance-div-sq.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IndepFun.variance_add](declarations/indepfun-variance-add.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IndepFun.variance_sum](declarations/indepfun-variance-sum.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [variance_le_sub_mul_sub](declarations/variance-le-sub-mul-sub.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [variance_le_sq_of_bounded](declarations/variance-le-sq-of-bounded.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f77675f9b93116948420535113bcfda7909fa129f0954b7363938d96077b5cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variantaed88db3ff38f0d812e5c4bcc8bdb5d2c54026191913a275f7096520eb6c1be0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
