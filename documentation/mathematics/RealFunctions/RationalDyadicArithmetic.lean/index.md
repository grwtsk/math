# Rational Dyadic Arithmetic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/RationalDyadicArithmetic.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0343df4901aad3635a6f3f4422a62b69a24e6af2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/RationalDyadicArithmetic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [denominator](declarations/denominator.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [down](declarations/down.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [up](declarations/up.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [rounded](declarations/rounded.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Ball](declarations/ball.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Holds](declarations/holds.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [roundBall](declarations/roundball.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ballAdd](declarations/balladd.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ballMul](declarations/ballmul.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ballScale](declarations/ballscale.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [denominator_pos](declarations/denominator-pos.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [down_le](declarations/down-le.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [le_up](declarations/le-up.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [down_nonneg](declarations/down-nonneg.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [up_nonneg](declarations/up-nonneg.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [down_zero](declarations/down-zero.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [up_zero](declarations/up-zero.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [holds_radius_nonneg](declarations/holds-radius-nonneg.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [roundBall_sound](declarations/roundball-sound.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ballAdd_sound](declarations/balladd-sound.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ballMul_sound](declarations/ballmul-sound.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ballScale_sound](declarations/ballscale-sound.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [outwardPropagation](declarations/outwardpropagation.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [propagate_nonneg](declarations/propagate-nonneg.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [propagate_le_outward](declarations/propagate-le-outward.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [checked_exp_outward_error](declarations/checked-exp-outward-error.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e302b7dfa6551c341a93c76fab36fff943a93f57b771d38b7a1b1440a2205357 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/RationalDyadicArithmetic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
