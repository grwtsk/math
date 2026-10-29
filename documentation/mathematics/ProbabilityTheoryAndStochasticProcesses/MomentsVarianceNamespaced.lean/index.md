# Moments Variance Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad0659ef500b78f88913c5d1d3570ce665a1af31`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/ProbabilityTheoryAndStochasticProcesses/MomentsVarianceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [evariance](declarations/evariance.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [variance](declarations/variance.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [evariance_lt_top](declarations/evariance-lt-top.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [evariance_ne_top](declarations/evariance-ne-top.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [evariance_eq_top](declarations/evariance-eq-top.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [evariance_lt_top_iff_memLp](declarations/evariance-lt-top-iff-memlp.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [evariance_eq_top_iff](declarations/evariance-eq-top-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [variance_of_not_memLp](declarations/variance-of-not-memlp.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ofReal_variance](declarations/ofreal-variance.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evariance_eq_lintegral_ofReal](declarations/evariance-eq-lintegral-ofreal.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [variance_eq_integral](declarations/variance-eq-integral.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [variance_of_integral_eq_zero](declarations/variance-of-integral-eq-zero.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [evariance_zero](declarations/evariance-zero.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [evariance_eq_zero_iff](declarations/evariance-eq-zero-iff.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [evariance_mul](declarations/evariance-mul.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [variance_zero](declarations/variance-zero.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [variance_nonneg](declarations/variance-nonneg.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [variance_mul](declarations/variance-mul.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [variance_smul](declarations/variance-smul.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [variance_smul'](declarations/variance-smul-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [variance_def'](declarations/variance-def.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [variance_add_const](declarations/variance-add-const.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [variance_const_add](declarations/variance-const-add.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [variance_fun_neg](declarations/variance-fun-neg.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [variance_neg](declarations/variance-neg.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [variance_sub_const](declarations/variance-sub-const.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [variance_const_sub](declarations/variance-const-sub.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [variance_dirac](declarations/variance-dirac.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [variance_map](declarations/variance-map.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [variance_id_map](declarations/variance-id-map.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [variance_le_expectation_sq](declarations/variance-le-expectation-sq.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [evariance_def'](declarations/evariance-def.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [meas_ge_le_evariance_div_sq](declarations/meas-ge-le-evariance-div-sq.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [meas_ge_le_variance_div_sq](declarations/meas-ge-le-variance-div-sq.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IndepFun.variance_add](declarations/indepfun-variance-add.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IndepFun.variance_sum](declarations/indepfun-variance-sum.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [variance_le_sub_mul_sub](declarations/variance-le-sub-mul-sub.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [variance_le_sq_of_bounded](declarations/variance-le-sq-of-bounded.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f6de5be95514758e19deb65e1f7077251e055a28ee7f51357ec3fbf440305e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variant1e4c8d659cac96eff51c2ef430305bd3db4f8a9f2d2f76ad976e4275f4f2b5f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
