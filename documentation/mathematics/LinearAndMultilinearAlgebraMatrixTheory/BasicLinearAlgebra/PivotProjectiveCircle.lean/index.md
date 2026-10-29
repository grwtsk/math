# Pivot Projective Circle

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06afab30e20e08f0acbfb7f8f4d41d49dc5fdaec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotProjectiveCircle.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RealCircle](declarations/realcircle.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [firstPivot](declarations/firstpivot.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [secondPivot](declarations/secondpivot.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [firstPivot_apply](declarations/firstpivot-apply.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [secondPivot_apply](declarations/secondpivot-apply.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [doubleAngle](declarations/doubleangle.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [doubleAngle_unit](declarations/doubleangle-unit.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [doubleAngle_scale](declarations/doubleangle-scale.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fullRankFrame_denominator_pos](declarations/fullrankframe-denominator-pos.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [frameCircle](declarations/framecircle.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [frameCircle_eq_of_rowSpace_eq](declarations/framecircle-eq-of-rowspace-eq.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [circleMap](declarations/circlemap.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [circleMap_representedPlane](declarations/circlemap-representedplane.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [circleMap_normalizedPivotPlane](declarations/circlemap-normalizedpivotplane.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous_circleMap_normalizedPivotPlane](declarations/continuous-circlemap-normalizedpivotplane.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuous_circleMap](declarations/continuous-circlemap.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [firstPoint](declarations/firstpoint.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [secondPoint](declarations/secondpoint.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [circleMap_firstPoint](declarations/circlemap-firstpoint.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [circleMap_secondPoint](declarations/circlemap-secondpoint.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [normalized_frame_eq_first](declarations/normalized-frame-eq-first.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [normalized_frame_eq_second](declarations/normalized-frame-eq-second.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [firstPoint_secondPoint_cover](declarations/firstpoint-secondpoint-cover.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [firstPoint_eq_secondPoint_inv](declarations/firstpoint-eq-secondpoint-inv.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [firstCircle_fst_ne_neg_one](declarations/firstcircle-fst-ne-neg-one.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [firstCircle_coordinate](declarations/firstcircle-coordinate.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [firstCircle_inverse](declarations/firstcircle-inverse.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [circleInverse](declarations/circleinverse.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [circleInverse_firstPoint](declarations/circleinverse-firstpoint.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [circleInverse_circleMap](declarations/circleinverse-circlemap.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [circleMap_circleInverse](declarations/circlemap-circleinverse.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [circleEquiv](declarations/circleequiv.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [continuous_firstPoint](declarations/continuous-firstpoint.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [continuous_secondPoint](declarations/continuous-secondpoint.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [bounded_chart_cover](declarations/bounded-chart-cover.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [compactSpace_intrinsicProjectiveLine](declarations/compactspace-intrinsicprojectiveline.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [circleHomeomorph](declarations/circlehomeomorph.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59fe4d0c9c8ba26739b4a53959e5370f970fd0784f1e3567e57b69ee21ea940f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
