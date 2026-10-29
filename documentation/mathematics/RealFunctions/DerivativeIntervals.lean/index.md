# Derivative Intervals

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2b9174136fb88902cb0cb3f4b7d9a345b865828`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/DerivativeIntervals.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_deriv_pos](declarations/exp-deriv-pos.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [exp_strictMono](declarations/exp-strictmono.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [exp_deriv_interval](declarations/exp-deriv-interval.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [log_deriv_eq_inv](declarations/log-deriv-eq-inv.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [log_deriv_interval](declarations/log-deriv-interval.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [log_strictMonoOn](declarations/log-strictmonoon.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [arctan_deriv_eq](declarations/arctan-deriv-eq.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [arctan_deriv_pos](declarations/arctan-deriv-pos.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [arctan_deriv_le_one](declarations/arctan-deriv-le-one.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [arctan_deriv_interval](declarations/arctan-deriv-interval.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [arctan_deriv_mem_Icc](declarations/arctan-deriv-mem-icc.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [arctan_strictMono](declarations/arctan-strictmono.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [arsinh_deriv_eq](declarations/arsinh-deriv-eq.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sqrt_one_add_sq_ge_one](declarations/sqrt-one-add-sq-ge-one.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sqrt_one_add_sq_pos](declarations/sqrt-one-add-sq-pos.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [arsinh_deriv_pos](declarations/arsinh-deriv-pos.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [arsinh_deriv_le_one](declarations/arsinh-deriv-le-one.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [arsinh_deriv_interval](declarations/arsinh-deriv-interval.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [arsinh_deriv_mem_Icc](declarations/arsinh-deriv-mem-icc.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [arsinh_strictMono](declarations/arsinh-strictmono.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sin_deriv_eq](declarations/sin-deriv-eq.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sin_deriv_abs_le_one](declarations/sin-deriv-abs-le-one.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sin_deriv_mem_Icc](declarations/sin-deriv-mem-icc.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cos_deriv_eq](declarations/cos-deriv-eq.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cos_deriv_abs_le_one](declarations/cos-deriv-abs-le-one.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cos_deriv_mem_Icc](declarations/cos-deriv-mem-icc.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sinh_deriv_eq](declarations/sinh-deriv-eq.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sinh_deriv_ge_one](declarations/sinh-deriv-ge-one.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sinh_deriv_pos](declarations/sinh-deriv-pos.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sinh_strictMono](declarations/sinh-strictmono.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cosh_deriv_eq](declarations/cosh-deriv-eq.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cosh_deriv_zero](declarations/cosh-deriv-zero.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [cosh_deriv_pos_of_pos](declarations/cosh-deriv-pos-of-pos.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [cosh_deriv_neg_of_neg](declarations/cosh-deriv-neg-of-neg.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [cosh_strictAntiOn_nonpos](declarations/cosh-strictantion-nonpos.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [cosh_strictMonoOn_nonneg](declarations/cosh-strictmonoon-nonneg.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [one_le_exp_of_nonneg](declarations/one-le-exp-of-nonneg.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [one_add_le_exp](declarations/one-add-le-exp.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [add_one_le_exp'](declarations/add-one-le-exp.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [monotoneOn_of_deriv_nonneg](declarations/monotoneon-of-deriv-nonneg.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [strictMonoOn_of_deriv_pos](declarations/strictmonoon-of-deriv-pos.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [antitoneOn_of_deriv_nonpos](declarations/antitoneon-of-deriv-nonpos.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [strictAntiOn_of_deriv_neg](declarations/strictantion-of-deriv-neg.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a5307765af2a2871465690c1630dce92d2fb5c4561f97f533f9d17c52dff2f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DerivativeIntervals/Variantd50d7a368033ed7905a92445700ceb8e95ec41e31c08b7ed49bf585d68fcf0f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
