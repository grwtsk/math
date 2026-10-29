# Surface Polygon Perimeter Attachment

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c902501d3eb3ce7bb5df9a2b0804c1a39d7464f0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonPerimeterAttachment.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [PerimeterSeamStep](declarations/perimeterseamstep.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PerimeterConnected](declarations/perimeterconnected.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [perimeterSetoid](declarations/perimetersetoid.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [UnpairedPerimeter](declarations/unpairedperimeter.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [perimeter_topology_coinduced](declarations/perimeter-topology-coinduced.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [perimeterProjection](declarations/perimeterprojection.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [perimeterProjection_continuous](declarations/perimeterprojection-continuous.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [perimeterProjection_isQuotientMap](declarations/perimeterprojection-isquotientmap.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [perimeterEdgeMap](declarations/perimeteredgemap.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [perimeterEdgeMap_continuous](declarations/perimeteredgemap-continuous.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [perimeter_seam_01](declarations/perimeter-seam-01.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [perimeter_seam_12](declarations/perimeter-seam-12.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [perimeter_seam_23](declarations/perimeter-seam-23.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [perimeter_seam_next](declarations/perimeter-seam-next.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [seamStep_respected_by_pairedBoundary](declarations/seamstep-respected-by-pairedboundary.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [perimeterConnected_respected_by_pairedBoundary](declarations/perimeterconnected-respected-by-pairedboundary.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [perimeterAttach](declarations/perimeterattach.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [perimeterAttach_continuous](declarations/perimeterattach-continuous.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [perimeterAttach_projection](declarations/perimeterattach-projection.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [perimeterAttach_surjective](declarations/perimeterattach-surjective.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [perimeterAttach_unique](declarations/perimeterattach-unique.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [attachingMap_pairs_a](declarations/attachingmap-pairs-a.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [attachingMap_pairs_b](declarations/attachingmap-pairs-b.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [seamStep_has_endpoints](declarations/seamstep-has-endpoints.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [perimeterConnected_preserves_endpoint](declarations/perimeterconnected-preserves-endpoint.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [perimeterConnected_interior_fixed](declarations/perimeterconnected-interior-fixed.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [opposite_a_midpoints_distinct_in_perimeter](declarations/opposite-a-midpoints-distinct-in-perimeter.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [perimeterAttach_not_injective](declarations/perimeterattach-not-injective.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [perimeterToFilling](declarations/perimetertofilling.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [perimeterToFilling_continuous](declarations/perimetertofilling-continuous.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [perimeterToFilling_projection](declarations/perimetertofilling-projection.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [perimeterSeam_respected_at_radius](declarations/perimeterseam-respected-at-radius.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [perimeterConnected_respected_at_radius](declarations/perimeterconnected-respected-at-radius.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [perimeterRadialSlice](declarations/perimeterradialslice.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [perimeterRadialSlice_continuous](declarations/perimeterradialslice-continuous.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [perimeterRadialSlice_projection](declarations/perimeterradialslice-projection.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [perimeterRadialSlice_zero](declarations/perimeterradialslice-zero.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [perimeterRadialSlice_one](declarations/perimeterradialslice-one.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [radialCoordinate_slice](declarations/radialcoordinate-slice.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [directed_edge_source_count](declarations/directed-edge-source-count.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [genusTwo_attaching_noninjective](declarations/genustwo-attaching-noninjective.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [genusThree_attaching_noninjective](declarations/genusthree-attaching-noninjective.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=898e7b064de9b0e90479310811e9d97bc2224503c9d8bf1513e81f1b62e686b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterAttachment.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
