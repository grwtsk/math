# Surface Polygon Corner Gluing

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecf3035394ca12b16ba2f8622643608ac1c62789`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AlgebraicTopology/SurfacePolygonCornerGluing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Handle](declarations/handle.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [PolygonCorner](declarations/polygoncorner.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [firstHandle](declarations/firsthandle.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [secondHandle](declarations/secondhandle.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [handleA](declarations/handlea.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [handleB](declarations/handleb.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [handleEdges](declarations/handleedges.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [firstHandleEdges](declarations/firsthandleedges.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [secondHandleEdges](declarations/secondhandleedges.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [extraHandleEdges](declarations/extrahandleedges.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [orderedHandleBlocks](declarations/orderedhandleblocks.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [orderedHandleBlocks_flatten_eq_polygonBoundaryWord](declarations/orderedhandleblocks-flatten-eq-polygonboundaryword.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [handleEdges_length](declarations/handleedges-length.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sideAt](declarations/sideat.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sideAt_zero](declarations/sideat-zero.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sideAt_one](declarations/sideat-one.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sideAt_two](declarations/sideat-two.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sideAt_three](declarations/sideat-three.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sideAt_list_eq_handleEdges](declarations/sideat-list-eq-handleedges.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [orderedHandleBlocks_length](declarations/orderedhandleblocks-length.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [oppositeSide](declarations/oppositeside.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [a_sides_opposite](declarations/a-sides-opposite.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [b_sides_opposite](declarations/b-sides-opposite.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [oppositeSide_involutive](declarations/oppositeside-involutive.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [oppositeSide_ne_self](declarations/oppositeside-ne-self.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [nextHandle](declarations/nexthandle.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nextHandle_first](declarations/nexthandle-first.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nextHandle_second_noExtras](declarations/nexthandle-second-noextras.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [nextHandle_second_withExtras](declarations/nexthandle-second-withextras.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [nextHandle_extra_step](declarations/nexthandle-extra-step.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nextHandle_extra_last](declarations/nexthandle-extra-last.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `inductive` | [DirectCornerGluing](declarations/directcornergluing.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [CornerConnected](declarations/cornerconnected.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [local_three_to_zero](declarations/local-three-to-zero.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [local_two_to_zero](declarations/local-two-to-zero.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [local_one_to_zero](declarations/local-one-to-zero.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [local_corner_to_zero](declarations/local-corner-to-zero.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [handle_zero_to_next_zero](declarations/handle-zero-to-next-zero.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [first_to_second_zero](declarations/first-to-second-zero.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [second_to_extra_zero](declarations/second-to-extra-zero.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [first_to_extra_zero](declarations/first-to-extra-zero.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [first_to_handle_zero](declarations/first-to-handle-zero.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [first_to_every_corner](declarations/first-to-every-corner.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [all_corners_connected](declarations/all-corners-connected.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [cornerSetoid](declarations/cornersetoid.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [GluedPolygonCorners](declarations/gluedpolygoncorners.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [gluedPolygonCorners_subsingleton](declarations/gluedpolygoncorners-subsingleton.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [gluedPolygonCorners_nonempty](declarations/gluedpolygoncorners-nonempty.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [gluedPolygonCorners_unique](declarations/gluedpolygoncorners-unique.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [first_second_handles_distinct](declarations/first-second-handles-distinct.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [essential_b_seam_connects_distinct_handles](declarations/essential-b-seam-connects-distinct-handles.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [genusTwo_distinct_handles_glued](declarations/genustwo-distinct-handles-glued.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [genusThree_extra_handle_glued](declarations/genusthree-extra-handle-glued.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [one_cell_source_count_unchanged](declarations/one-cell-source-count-unchanged.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81f28726ec82eb13395ae2adc43997adfaa43ef9b083292cb9ab0272809db7bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCornerGluing.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
