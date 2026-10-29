# Surface Polygon Radial Filling

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aef6274b44e788648e9e434b09c3160ca14c8af`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonRadialFilling.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [RadialSource](declarations/radialsource.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [apexSource](declarations/apexsource.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [RadialGluingStep](declarations/radialgluingstep.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [RadialConnected](declarations/radialconnected.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [radialSetoid](declarations/radialsetoid.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [FilledPolygonQuotient](declarations/filledpolygonquotient.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [radialQuotientTopology_is_coinduced](declarations/radialquotienttopology-is-coinduced.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [radialProjection](declarations/radialprojection.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [radialProjection_continuous](declarations/radialprojection-continuous.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [radialProjection_isQuotientMap](declarations/radialprojection-isquotientmap.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [sectorMap](declarations/sectormap.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sectorMap_continuous](declarations/sectormap-continuous.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [radialProjection_eq_of_step](declarations/radialprojection-eq-of-step.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [radius_zero_is_apex](declarations/radius-zero-is-apex.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [outerSource](declarations/outersource.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [outerProjection](declarations/outerprojection.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [outerProjection_continuous](declarations/outerprojection-continuous.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [parentBoundaryStep_respected](declarations/parentboundarystep-respected.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [parentBoundaryConnected_respected](declarations/parentboundaryconnected-respected.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [boundaryInclusion](declarations/boundaryinclusion.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [boundaryInclusion_continuous](declarations/boundaryinclusion-continuous.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [boundaryInclusion_projection](declarations/boundaryinclusion-projection.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [all_original_corners_same_outer_vertex](declarations/all-original-corners-same-outer-vertex.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [step_preserves_radius](declarations/step-preserves-radius.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [connected_preserves_radius](declarations/connected-preserves-radius.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [radialCoordinate](declarations/radialcoordinate.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [radialCoordinate_projection](declarations/radialcoordinate-projection.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [radialCoordinate_continuous](declarations/radialcoordinate-continuous.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [projection_ne_of_radius_ne](declarations/projection-ne-of-radius-ne.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [apexPoint](declarations/apexpoint.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [outerVertex](declarations/outervertex.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [radialInteriorPoint](declarations/radialinteriorpoint.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [radialCoordinate_apex](declarations/radialcoordinate-apex.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [radialCoordinate_outerVertex](declarations/radialcoordinate-outervertex.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [radialCoordinate_interior](declarations/radialcoordinate-interior.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [midpoint_ne_zero](declarations/midpoint-ne-zero.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [midpoint_ne_one](declarations/midpoint-ne-one.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [apex_ne_outerVertex](declarations/apex-ne-outervertex.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [interior_ne_apex](declarations/interior-ne-apex.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [interior_ne_outerVertex](declarations/interior-ne-outervertex.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [three_radial_strata_distinct](declarations/three-radial-strata-distinct.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [filledPolygon_nontrivial](declarations/filledpolygon-nontrivial.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [genusTwo_radial_strata](declarations/genustwo-radial-strata.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [genusThree_radial_strata](declarations/genusthree-radial-strata.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [original_one_cell_source_count](declarations/original-one-cell-source-count.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40aed49fe77d7859c1a1d882db529dbbb8808cf1ca7273c9e9b9c273e232defb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialFilling.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
