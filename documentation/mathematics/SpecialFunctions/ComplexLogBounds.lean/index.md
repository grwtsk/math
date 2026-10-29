# Complex Log Bounds

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45c37eb735ffa490a848dc1e3302813ea2349c71`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/SpecialFunctions/ComplexLogBounds.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [continuousOn_one_add_mul_inv](declarations/continuouson-one-add-mul-inv.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [log_eq_integral](declarations/log-eq-integral.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [log_inv_eq_integral](declarations/log-inv-eq-integral.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [logTaylor](declarations/logtaylor.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [logTaylor_zero](declarations/logtaylor-zero.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [logTaylor_succ](declarations/logtaylor-succ.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [logTaylor_at_zero](declarations/logtaylor-at-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [hasDerivAt_logTaylor](declarations/hasderivat-logtaylor.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [hasDerivAt_log_sub_logTaylor](declarations/hasderivat-log-sub-logtaylor.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [norm_one_add_mul_inv_le](declarations/norm-one-add-mul-inv-le.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integrable_pow_mul_norm_one_add_mul_inv](declarations/integrable-pow-mul-norm-one-add-mul-inv.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [norm_log_sub_logTaylor_le](declarations/norm-log-sub-logtaylor-le.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [norm_log_one_add_sub_self_le](declarations/norm-log-one-add-sub-self-le.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [log_sub_logTaylor_isBigO](declarations/log-sub-logtaylor-isbigo.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [log_sub_self_isBigO](declarations/log-sub-self-isbigo.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [norm_log_one_add_le](declarations/norm-log-one-add-le.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [norm_log_one_add_half_le_self](declarations/norm-log-one-add-half-le-self.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [norm_log_one_sub_inv_add_logTaylor_neg_le](declarations/norm-log-one-sub-inv-add-logtaylor-neg-le.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [norm_log_one_sub_inv_sub_self_le](declarations/norm-log-one-sub-inv-sub-self-le.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [hasSum_taylorSeries_log](declarations/hassum-taylorseries-log.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [hasSum_taylorSeries_neg_log](declarations/hassum-taylorseries-neg-log.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [tendsto_mul_log_one_add_of_tendsto](declarations/tendsto-mul-log-one-add-of-tendsto-source-edition-2.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [tendsto_one_add_cpow_exp_of_tendsto](declarations/tendsto-one-add-cpow-exp-of-tendsto.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [tendsto_one_add_div_cpow_exp](declarations/tendsto-one-add-div-cpow-exp.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [tendsto_nat_mul_log_one_add_of_tendsto](declarations/tendsto-nat-mul-log-one-add-of-tendsto-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [tendsto_one_add_pow_exp_of_tendsto](declarations/tendsto-one-add-pow-exp-of-tendsto-source-edition-2.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [tendsto_one_add_div_pow_exp](declarations/tendsto-one-add-div-pow-exp-source-edition-2.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [tendsto_mul_log_one_add_of_tendsto](declarations/tendsto-mul-log-one-add-of-tendsto.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [tendsto_one_add_rpow_exp_of_tendsto](declarations/tendsto-one-add-rpow-exp-of-tendsto.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [tendsto_one_add_div_rpow_exp](declarations/tendsto-one-add-div-rpow-exp.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [tendsto_nat_mul_log_one_add_of_tendsto](declarations/tendsto-nat-mul-log-one-add-of-tendsto.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [tendsto_one_add_pow_exp_of_tendsto](declarations/tendsto-one-add-pow-exp-of-tendsto.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [tendsto_one_add_div_pow_exp](declarations/tendsto-one-add-div-pow-exp.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d081e1f364440f626b5c0dde021f232277fac74b1bec902f8a3523419c8bb87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LogBounds/Variantac45bf985e50c06d8333c38c8569a4e3677afddf2dbd1b67b23c0041a5d98c8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
