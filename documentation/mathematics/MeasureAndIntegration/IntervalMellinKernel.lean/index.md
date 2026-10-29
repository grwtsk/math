# Interval Mellin Kernel

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/IntervalMellinKernel.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28cb1e86a7b4b71d993a7934b75cf9604b369aec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/IntervalMellinKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [logPower](declarations/logpower.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [density](declarations/density.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [kernel](declarations/kernel.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [logMoment](declarations/logmoment.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [densityBound](declarations/densitybound.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sensitivity](declarations/sensitivity.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [densityBound_pos](declarations/densitybound-pos.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sensitivity_nonneg](declarations/sensitivity-nonneg.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [exp_real_log](declarations/exp-real-log.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [density_eq_logPower_div](declarations/density-eq-logpower-div.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [density_continuousOn](declarations/density-continuouson.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [weighted_density_continuousOn](declarations/weighted-density-continuouson.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [density_intervalIntegrable](declarations/density-intervalintegrable.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [weighted_density_intervalIntegrable](declarations/weighted-density-intervalintegrable.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_density_le](declarations/norm-density-le.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [norm_weighted_density_le](declarations/norm-weighted-density-le.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasDerivAt_density](declarations/hasderivat-density.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasDerivAt_kernel](declarations/hasderivat-kernel.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [differentiable_kernel](declarations/differentiable-kernel.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [deriv_kernel](declarations/deriv-kernel.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [norm_kernel_le](declarations/norm-kernel-le.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [norm_logMoment_le](declarations/norm-logmoment-le.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [convex_re_le](declarations/convex-re-le.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [norm_kernel_sub_le](declarations/norm-kernel-sub-le.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasDerivAt_logPower](declarations/hasderivat-logpower.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [parameter_mul_kernel](declarations/parameter-mul-kernel.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [kernel_eq_quotient](declarations/kernel-eq-quotient.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [norm_logPower_le](declarations/norm-logpower-le.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [norm_kernel_le_quotient_bound](declarations/norm-kernel-le-quotient-bound.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [norm_kernel_le_min](declarations/norm-kernel-le-min.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [kernel_zero](declarations/kernel-zero.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [kernel_zero_ne_zero](declarations/kernel-zero-ne-zero.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [kernel_same](declarations/kernel-same.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [kernel_one](declarations/kernel-one.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [densityBound_of_le_one](declarations/densitybound-of-le-one.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [finite_enclosure_error](declarations/finite-enclosure-error.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [finite_enclosure_error_with_tail](declarations/finite-enclosure-error-with-tail.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1486c17a2537ac28b02497b7236e07f79ac8bd4b2148819d69a7637169df1936 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/IntervalMellinKernel.lean","GRWTSK/Analysis/ComplexAnalysis/IntervalMellinKernel.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
