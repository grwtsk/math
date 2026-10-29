# Rational Exp Trace

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/RationalExpTrace.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `875ba04830194bd422818d22a705a02d0cf197ff`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/RationalExpTrace.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Trace](declarations/trace.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [valueAt](declarations/valueat.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [radiusAt](declarations/radiusat.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [seedValue](declarations/seedvalue.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [exactSquares](declarations/exactsquares.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [exactValue](declarations/exactvalue.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [exactTrace](declarations/exacttrace.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [seedTail](declarations/seedtail.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [propagate](declarations/propagate.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [outputRadius](declarations/outputradius.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Valid](declarations/valid.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instDecidableValid](declarations/instdecidablevalid.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [check](declarations/check.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [checkWithin](declarations/checkwithin.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [check_iff_valid](declarations/check-iff-valid.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [checked_lengths](declarations/checked-lengths.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toComplex_seedValue](declarations/tocomplex-seedvalue.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toComplex_exactSquares](declarations/tocomplex-exactsquares.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toComplex_exactValue](declarations/tocomplex-exactvalue.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exactTrace_value](declarations/exacttrace-value.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exactTrace_radius](declarations/exacttrace-radius.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exactTrace_checked](declarations/exacttrace-checked.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cast_seedTail](declarations/cast-seedtail.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cast_propagate](declarations/cast-propagate.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [check_sound](declarations/check-sound.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [checked_radius_nonneg](declarations/checked-radius-nonneg.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exactValue_error](declarations/exactvalue-error.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [checkWithin_sound](declarations/checkwithin-sound.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [missing_values_rejected](declarations/missing-values-rejected.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [missing_radii_rejected](declarations/missing-radii-rejected.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [negativeOneTrace](declarations/negativeonetrace.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [negative_one_checked](declarations/negative-one-checked.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [negative_one_enclosure](declarations/negative-one-enclosure.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [wrong_input_rejected](declarations/wrong-input-rejected.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [wrong_seed_rejected](declarations/wrong-seed-rejected.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [wrong_square_rejected](declarations/wrong-square-rejected.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rounded_trace_control](declarations/rounded-trace-control.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [input_guards_rejected](declarations/input-guards-rejected.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coarse_is_not_precise](declarations/coarse-is-not-precise.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [malformed_trace_rejected](declarations/malformed-trace-rejected.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6783e3ca88ac8a158261e9fa6e18b8217b515fb42b45c5bb4c627ca17eec2c6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/RationalExpTrace.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
