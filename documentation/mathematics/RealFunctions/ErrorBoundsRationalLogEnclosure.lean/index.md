# Error Bounds Rational Log Enclosure

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/RationalLogEnclosure.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dabc4dd637ed635c34990e9512bcf27c7c7ae78`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/ErrorBoundsRationalLogEnclosure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [gridNode](declarations/gridnode.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [lowerGrid](declarations/lowergrid.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [upperGrid](declarations/uppergrid.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [gridCenter](declarations/gridcenter.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gridRadius](declarations/gridradius.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mantissa](declarations/mantissa.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [center](declarations/center.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [radius](declarations/radius.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [validScale](declarations/validscale.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [checkWithin](declarations/checkwithin.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cast_gridNode](declarations/cast-gridnode.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [cast_lowerGrid](declarations/cast-lowergrid.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cast_upperGrid](declarations/cast-uppergrid.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cast_gridCenter](declarations/cast-gridcenter.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cast_gridRadius](declarations/cast-gridradius.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [cast_mantissa](declarations/cast-mantissa.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cast_center](declarations/cast-center.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cast_radius](declarations/cast-radius.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [validScale_iff](declarations/validscale-iff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [log_error](declarations/log-error.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [center_nonneg](declarations/center-nonneg.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [radius_nonneg](declarations/radius-nonneg.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [radius_formula](declarations/radius-formula.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [radius_le](declarations/radius-le.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [checkWithin_sound](declarations/checkwithin-sound.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [common_precision_checked](declarations/common-precision-checked.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [admissible_checked](declarations/admissible-checked.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [boundary_consistent](declarations/boundary-consistent.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [log_two_control](declarations/log-two-control.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [shared_error_control](declarations/shared-error-control.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [invalid_scale_controls](declarations/invalid-scale-controls.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a668170047873ad358e7542265e7ecd6dae11070a0cff591429c4b5f8c02df7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/RationalLogEnclosure.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
