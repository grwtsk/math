# Surface Polygon Boundary Topology

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d0f5d976ef27da7df26ee01540a2bee36c01c8e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonBoundaryTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BoundaryPoint](declarations/boundarypoint.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [BoundaryGluingStep](declarations/boundarygluingstep.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [BoundaryConnected](declarations/boundaryconnected.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [boundarySetoid](declarations/boundarysetoid.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [PolygonBoundaryOneSkeleton](declarations/polygonboundaryoneskeleton.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quotientTopology_is_coinduced](declarations/quotienttopology-is-coinduced.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [boundaryProjection](declarations/boundaryprojection.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [boundaryProjection_continuous](declarations/boundaryprojection-continuous.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boundaryProjection_isQuotientMap](declarations/boundaryprojection-isquotientmap.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [orientedEdgeMap](declarations/orientededgemap.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [orientedEdgeMap_continuous](declarations/orientededgemap-continuous.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [quotient_eq_of_step](declarations/quotient-eq-of-step.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [opposite_a_edge_maps_agree](declarations/opposite-a-edge-maps-agree.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [opposite_b_edge_maps_agree](declarations/opposite-b-edge-maps-agree.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [adjacent_edge_maps_agree_01](declarations/adjacent-edge-maps-agree-01.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [adjacent_edge_maps_agree_12](declarations/adjacent-edge-maps-agree-12.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [adjacent_edge_maps_agree_23](declarations/adjacent-edge-maps-agree-23.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [adjacent_edge_maps_agree_next](declarations/adjacent-edge-maps-agree-next.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [originalCornerPoint](declarations/originalcornerpoint.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [a_start_endpoint_connected](declarations/a-start-endpoint-connected.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [a_end_endpoint_connected](declarations/a-end-endpoint-connected.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [b_end_endpoint_connected](declarations/b-end-endpoint-connected.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [b_start_endpoint_connected](declarations/b-start-endpoint-connected.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [direct_corner_gluing_preserved](declarations/direct-corner-gluing-preserved.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [corner_equivalence_preserved](declarations/corner-equivalence-preserved.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [all_original_corners_same_topological_vertex](declarations/all-original-corners-same-topological-vertex.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsEndpoint](declarations/isendpoint.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isEndpoint_symm](declarations/isendpoint-symm.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [step_preserves_endpoint](declarations/step-preserves-endpoint.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [boundary_connected_preserves_endpoint](declarations/boundary-connected-preserves-endpoint.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [midpoint](declarations/midpoint.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [midpoint_not_endpoint](declarations/midpoint-not-endpoint.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [edge_midpoint_ne_any_vertex](declarations/edge-midpoint-ne-any-vertex.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [boundary_one_skeleton_nontrivial](declarations/boundary-one-skeleton-nontrivial.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [genusTwo_topological_boundary_nontrivial](declarations/genustwo-topological-boundary-nontrivial.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [genusThree_topological_boundary_nontrivial](declarations/genusthree-topological-boundary-nontrivial.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [unchanged_edge_generator_count](declarations/unchanged-edge-generator-count.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6af127db9d5edeea5cf097afc7fa5ac3a4f88dfbc442b7f91891dc6d5a0ee73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonBoundaryTopology.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
