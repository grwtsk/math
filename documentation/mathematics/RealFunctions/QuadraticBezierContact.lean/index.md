# Quadratic Bezier Contact

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Geometry/QuadraticBezierContact.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acc35fb6f22980fd7246dec104df7ab9b1a9157c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/QuadraticBezierContact.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](declarations/point.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [lerp](declarations/lerp.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Segment](declarations/segment.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [eval](declarations/eval.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [velocity](declarations/velocity.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [curvatureDefect](declarations/curvaturedefect.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [splitPoint](declarations/splitpoint.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [left](declarations/left.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [right](declarations/right.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_zero](declarations/eval-zero.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_one](declarations/eval-one.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [splitPoint_eq_eval](declarations/splitpoint-eq-eval.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [left_eval](declarations/left-eval.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [right_eval](declarations/right-eval.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [left_join_point](declarations/left-join-point.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [right_join_point](declarations/right-join-point.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [join_point](declarations/join-point.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [left_velocity_one_scaled](declarations/left-velocity-one-scaled.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [right_velocity_zero_scaled](declarations/right-velocity-zero-scaled.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [symmetric_difference_eq_velocity](declarations/symmetric-difference-eq-velocity.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [left_curvatureDefect](declarations/left-curvaturedefect.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [right_curvatureDefect](declarations/right-curvaturedefect.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [midpoint_deviation](declarations/midpoint-deviation.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [HermiteJet](declarations/hermitejet.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [jet](declarations/jet.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [ScaledHermiteContact](declarations/scaledhermitecontact.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [ScaledHermiteContact.Positive](declarations/scaledhermitecontact-positive.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [splitContact](declarations/splitcontact.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [splitContact_positive](declarations/splitcontact-positive.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a4e08e3b99bc17344a0107a080812d837a652141e66763b8a63e16ab7c6a301 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Geometry/QuadraticBezierContact.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
