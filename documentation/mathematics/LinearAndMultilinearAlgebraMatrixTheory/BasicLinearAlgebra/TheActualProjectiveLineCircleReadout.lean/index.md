# The Actual Projective Line Circle Readout

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `925a634a4d405002a30235e5cc11b34fc191f5b5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TheActualProjectiveLineCircleReadout.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RealCircle](declarations/realcircle.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [firstPivot](declarations/firstpivot.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [secondPivot](declarations/secondpivot.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [firstPivot_apply](declarations/firstpivot-apply.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [secondPivot_apply](declarations/secondpivot-apply.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [doubleAngle](declarations/doubleangle.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [doubleAngle_unit](declarations/doubleangle-unit.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [doubleAngle_scale](declarations/doubleangle-scale.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fullRankFrame_denominator_pos](declarations/fullrankframe-denominator-pos.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [frameCircle](declarations/framecircle.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [frameCircle_eq_of_rowSpace_eq](declarations/framecircle-eq-of-rowspace-eq.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [circleMap](declarations/circlemap.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [circleMap_representedPlane](declarations/circlemap-representedplane.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [circleMap_normalizedPivotPlane](declarations/circlemap-normalizedpivotplane.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous_circleMap_normalizedPivotPlane](declarations/continuous-circlemap-normalizedpivotplane.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuous_circleMap](declarations/continuous-circlemap.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [firstPoint](declarations/firstpoint.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [secondPoint](declarations/secondpoint.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [circleMap_firstPoint](declarations/circlemap-firstpoint.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [circleMap_secondPoint](declarations/circlemap-secondpoint.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [normalized_frame_eq_first](declarations/normalized-frame-eq-first.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [normalized_frame_eq_second](declarations/normalized-frame-eq-second.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [firstPoint_secondPoint_cover](declarations/firstpoint-secondpoint-cover.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [firstPoint_eq_secondPoint_inv](declarations/firstpoint-eq-secondpoint-inv.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [firstCircle_fst_ne_neg_one](declarations/firstcircle-fst-ne-neg-one.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [firstCircle_coordinate](declarations/firstcircle-coordinate.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [firstCircle_inverse](declarations/firstcircle-inverse.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [circleInverse](declarations/circleinverse.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [circleInverse_firstPoint](declarations/circleinverse-firstpoint.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [circleInverse_circleMap](declarations/circleinverse-circlemap.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [circleMap_circleInverse](declarations/circlemap-circleinverse.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [circleEquiv](declarations/circleequiv.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [continuous_firstPoint](declarations/continuous-firstpoint.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [continuous_secondPoint](declarations/continuous-secondpoint.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [bounded_chart_cover](declarations/bounded-chart-cover.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [compactSpace_intrinsicProjectiveLine](declarations/compactspace-intrinsicprojectiveline.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [circleHomeomorph](declarations/circlehomeomorph.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e1a00c1cb074703e90de806c971052c0095a459c0481397e27a16b7cf5d4d68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PivotProjectiveCircle/Variant5317e181bfcba4d86ddf228ca0e87eef9a7077a6a378aecf6809625a196be1c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
