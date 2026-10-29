# Monge Point

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4d2703969d31a741d3efdaac74017241183473c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Geometry/RealAndComplexGeometry/MongePoint.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mongePoint](declarations/mongepoint.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mongePoint_eq_smul_vsub_vadd_circumcenter](declarations/mongepoint-eq-smul-vsub-vadd-circumcenter.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mongePoint_mem_affineSpan](declarations/mongepoint-mem-affinespan.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mongePoint_eq_of_range_eq](declarations/mongepoint-eq-of-range-eq.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mongePointWeightsWithCircumcenter](declarations/mongepointweightswithcircumcenter.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sum_mongePointWeightsWithCircumcenter](declarations/sum-mongepointweightswithcircumcenter.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mongePoint_eq_affineCombination_of_pointsWithCircumcenter](declarations/mongepoint-eq-affinecombination-of-pointswithcircumcenter.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mongePointVSubFaceCentroidWeightsWithCircumcenter](declarations/mongepointvsubfacecentroidweightswithcircumcenter.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mongePointVSubFaceCentroidWeightsWithCircumcenter_eq_sub](declarations/mongepointvsubfacecentroidweightswithcircumcenter-eq-sub.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sum_mongePointVSubFaceCentroidWeightsWithCircumcenter](declarations/sum-mongepointvsubfacecentroidweightswithcircumcenter.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mongePoint_vsub_face_centroid_eq_weightedVSub_of_pointsWithCircumcenter](declarations/mongepoint-vsub-face-centroid-eq-weightedvsub-of-pointswithcircumcenter.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inner_mongePoint_vsub_face_centroid_vsub](declarations/inner-mongepoint-vsub-face-centroid-vsub.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mongePlane](declarations/mongeplane.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mongePlane_def](declarations/mongeplane-def.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mongePlane_comm](declarations/mongeplane-comm.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mongePoint_mem_mongePlane](declarations/mongepoint-mem-mongeplane.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [direction_mongePlane](declarations/direction-mongeplane.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eq_mongePoint_of_forall_mem_mongePlane](declarations/eq-mongepoint-of-forall-mem-mongeplane.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [orthocenter](declarations/orthocenter.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [orthocenter_eq_mongePoint](declarations/orthocenter-eq-mongepoint.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [orthocenter_eq_smul_vsub_vadd_circumcenter](declarations/orthocenter-eq-smul-vsub-vadd-circumcenter.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [orthocenter_mem_affineSpan](declarations/orthocenter-mem-affinespan.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [orthocenter_eq_of_range_eq](declarations/orthocenter-eq-of-range-eq.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [altitude_eq_mongePlane](declarations/altitude-eq-mongeplane.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [orthocenter_mem_altitude](declarations/orthocenter-mem-altitude.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eq_orthocenter_of_forall_mem_altitude](declarations/eq-orthocenter-of-forall-mem-altitude.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dist_orthocenter_reflection_circumcenter](declarations/dist-orthocenter-reflection-circumcenter.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dist_orthocenter_reflection_circumcenter_finset](declarations/dist-orthocenter-reflection-circumcenter-finset.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [affineSpan_orthocenter_point_le_altitude](declarations/affinespan-orthocenter-point-le-altitude.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [altitude_replace_orthocenter_eq_affineSpan](declarations/altitude-replace-orthocenter-eq-affinespan.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [orthocenter_replace_orthocenter_eq_point](declarations/orthocenter-replace-orthocenter-eq-point.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [OrthocentricSystem](declarations/orthocentricsystem.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_of_range_subset_orthocentricSystem](declarations/exists-of-range-subset-orthocentricsystem.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_dist_eq_circumradius_of_subset_insert_orthocenter](declarations/exists-dist-eq-circumradius-of-subset-insert-orthocenter.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [OrthocentricSystem.affineIndependent](declarations/orthocentricsystem-affineindependent.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [affineSpan_of_orthocentricSystem](declarations/affinespan-of-orthocentricsystem.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [OrthocentricSystem.exists_circumradius_eq](declarations/orthocentricsystem-exists-circumradius-eq.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [OrthocentricSystem.eq_insert_orthocenter](declarations/orthocentricsystem-eq-insert-orthocenter.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44bf49e1cd50e175850c75dcdb40bb934155c23e57436da88f48c9386d6d571a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Variant21a91eba82502c0e6319d93ecff57252e1f40260df918be0d254d1d57bb0256a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
