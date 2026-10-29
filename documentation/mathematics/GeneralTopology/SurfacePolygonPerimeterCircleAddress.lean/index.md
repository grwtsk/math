# Surface Polygon Perimeter Circle Address

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `73836f1ca73c8653dc58c5de21aa45f64adf758f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonPerimeterCircleAddress.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [cornerDiscrete](declarations/cornerdiscrete.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [handleOrdinal](declarations/handleordinal.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [directedSideOrdinal](declarations/directedsideordinal.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [angularPeriod](declarations/angularperiod.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [angularPeriod_pos](declarations/angularperiod-pos.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [angularPeriod_ne_zero](declarations/angularperiod-ne-zero.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [handleOrdinal_next_or_wrap](declarations/handleordinal-next-or-wrap.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [directedSideOrdinal_next_or_period](declarations/directedsideordinal-next-or-period.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [directedSideOrdinal_bound](declarations/directedsideordinal-bound.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sourceAngularAddress](declarations/sourceangularaddress.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sourceAngularAddress_of_next_ordinal](declarations/sourceangularaddress-of-next-ordinal.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [localSideOrdinal_seam01](declarations/localsideordinal-seam01.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [localSideOrdinal_seam12](declarations/localsideordinal-seam12.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [localSideOrdinal_seam23](declarations/localsideordinal-seam23.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sourceAngularAddress_cyclic_seam](declarations/sourceangularaddress-cyclic-seam.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sourceAngularAddress_respects_step](declarations/sourceangularaddress-respects-step.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sourceAngularAddress_respects_connected](declarations/sourceangularaddress-respects-connected.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sourceAngularAddress_continuous](declarations/sourceangularaddress-continuous.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [perimeterAngle](declarations/perimeterangle.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [perimeterAngle_continuous](declarations/perimeterangle-continuous.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [perimeterAngle_projection](declarations/perimeterangle-projection.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perimeterAngle_cyclic_endpoint](declarations/perimeterangle-cyclic-endpoint.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [periodCircleHomeomorph](declarations/periodcirclehomeomorph.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [perimeterUnitAngle](declarations/perimeterunitangle.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [perimeterUnitAngle_continuous](declarations/perimeterunitangle-continuous.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [firstCorner_angle_zero](declarations/firstcorner-angle-zero.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [nextCorner_angle_one](declarations/nextcorner-angle-one.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [one_mem_circle_fundamental_domain](declarations/one-mem-circle-fundamental-domain.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [angle_one_ne_zero](declarations/angle-one-ne-zero.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [distinct_first_corner_angles](declarations/distinct-first-corner-angles.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [distinct_angles_same_attached_vertex](declarations/distinct-angles-same-attached-vertex.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [genusTwo_angular_period](declarations/genustwo-angular-period.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [genusThree_angular_period](declarations/genusthree-angular-period.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03f438af960c4a4a6b590fb437a01912a7fa10b38e297b1ed0b6d45e48a540f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleAddress.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
