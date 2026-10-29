# Complex Exp Scaling

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f346671610e4c06e4cb5befd909e7b6ff792218`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/ComplexExpScaling.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [squaredValue](declarations/squaredvalue.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [squaringRadius](declarations/squaringradius.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [roundedRadius](declarations/roundedradius.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [scaledTaylor](declarations/scaledtaylor.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [scaledRadius](declarations/scaledradius.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [squaredValue_zero](declarations/squaredvalue-zero.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [squaredValue_succ](declarations/squaredvalue-succ.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [squaringRadius_nonneg](declarations/squaringradius-nonneg.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [squaringRadius_eq](declarations/squaringradius-eq.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [roundedRadius_zero_rounding](declarations/roundedradius-zero-rounding.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [square_error](declarations/square-error.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_squaredValue_le_one](declarations/norm-squaredvalue-le-one.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [squaring_error](declarations/squaring-error.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [squaring_trace_error](declarations/squaring-trace-error.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_exp_le_one](declarations/norm-exp-le-one.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [scaled_re_nonpos](declarations/scaled-re-nonpos.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exponential_reconstruct](declarations/exponential-reconstruct.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [scaled_seed_error](declarations/scaled-seed-error.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [scaled_exp_error](declarations/scaled-exp-error.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [scaled_exp_trace_error](declarations/scaled-exp-trace-error.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [one_add_pow_mul_remaining_le_one](declarations/one-add-pow-mul-remaining-le-one.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [squaringRadius_le_fraction](declarations/squaringradius-le-fraction.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [squaringRadius_le_twice](declarations/squaringradius-le-twice.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [scaled_exp_error_le_twice](declarations/scaled-exp-error-le-twice.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [quadratic_radius_control](declarations/quadratic-radius-control.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [outside_unit_disk_control](declarations/outside-unit-disk-control.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [early_rounding_control](declarations/early-rounding-control.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [empty_seed_control](declarations/empty-seed-control.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zero_exponent_exact](declarations/zero-exponent-exact.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19e7684201b2853cd6f91e8ce15e006ae87f2030c769c6205967e6c5504dae62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/ComplexExpScaling.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
