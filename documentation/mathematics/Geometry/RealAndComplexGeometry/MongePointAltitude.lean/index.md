# Monge Point Altitude

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd7c0b7c0360d55e119bd1fc6112048f448afdc3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Geometry/RealAndComplexGeometry/MongePointAltitude.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mongePoint](declarations/mongepoint.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mongePoint_eq_smul_vsub_vadd_circumcenter](declarations/mongepoint-eq-smul-vsub-vadd-circumcenter.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mongePoint_mem_affineSpan](declarations/mongepoint-mem-affinespan.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mongePoint_eq_of_range_eq](declarations/mongepoint-eq-of-range-eq.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mongePointWeightsWithCircumcenter](declarations/mongepointweightswithcircumcenter.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sum_mongePointWeightsWithCircumcenter](declarations/sum-mongepointweightswithcircumcenter.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mongePoint_eq_affineCombination_of_pointsWithCircumcenter](declarations/mongepoint-eq-affinecombination-of-pointswithcircumcenter.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mongePointVSubFaceCentroidWeightsWithCircumcenter](declarations/mongepointvsubfacecentroidweightswithcircumcenter.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mongePointVSubFaceCentroidWeightsWithCircumcenter_eq_sub](declarations/mongepointvsubfacecentroidweightswithcircumcenter-eq-sub.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sum_mongePointVSubFaceCentroidWeightsWithCircumcenter](declarations/sum-mongepointvsubfacecentroidweightswithcircumcenter.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mongePoint_vsub_face_centroid_eq_weightedVSub_of_pointsWithCircumcenter](declarations/mongepoint-vsub-face-centroid-eq-weightedvsub-of-pointswithcircumcenter.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inner_mongePoint_vsub_face_centroid_vsub](declarations/inner-mongepoint-vsub-face-centroid-vsub.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mongePlane](declarations/mongeplane.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mongePlane_def](declarations/mongeplane-def.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mongePlane_comm](declarations/mongeplane-comm.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mongePoint_mem_mongePlane](declarations/mongepoint-mem-mongeplane.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [direction_mongePlane](declarations/direction-mongeplane.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eq_mongePoint_of_forall_mem_mongePlane](declarations/eq-mongepoint-of-forall-mem-mongeplane.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [altitude](declarations/altitude.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [altitude_def](declarations/altitude-def.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_altitude](declarations/mem-altitude.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [direction_altitude](declarations/direction-altitude.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [vectorSpan_isOrtho_altitude_direction](declarations/vectorspan-isortho-altitude-direction.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [finiteDimensional_direction_altitude](declarations/finitedimensional-direction-altitude.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [finrank_direction_altitude](declarations/finrank-direction-altitude.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [affineSpan_pair_eq_altitude_iff](declarations/affinespan-pair-eq-altitude-iff.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [orthocenter](declarations/orthocenter.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [orthocenter_eq_mongePoint](declarations/orthocenter-eq-mongepoint.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [orthocenter_eq_smul_vsub_vadd_circumcenter](declarations/orthocenter-eq-smul-vsub-vadd-circumcenter.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [orthocenter_mem_affineSpan](declarations/orthocenter-mem-affinespan.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [orthocenter_eq_of_range_eq](declarations/orthocenter-eq-of-range-eq.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [altitude_eq_mongePlane](declarations/altitude-eq-mongeplane.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [orthocenter_mem_altitude](declarations/orthocenter-mem-altitude.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [eq_orthocenter_of_forall_mem_altitude](declarations/eq-orthocenter-of-forall-mem-altitude.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [dist_orthocenter_reflection_circumcenter](declarations/dist-orthocenter-reflection-circumcenter.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [dist_orthocenter_reflection_circumcenter_finset](declarations/dist-orthocenter-reflection-circumcenter-finset.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [affineSpan_orthocenter_point_le_altitude](declarations/affinespan-orthocenter-point-le-altitude.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [altitude_replace_orthocenter_eq_affineSpan](declarations/altitude-replace-orthocenter-eq-affinespan.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [orthocenter_replace_orthocenter_eq_point](declarations/orthocenter-replace-orthocenter-eq-point.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [OrthocentricSystem](declarations/orthocentricsystem.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [exists_of_range_subset_orthocentricSystem](declarations/exists-of-range-subset-orthocentricsystem.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [exists_dist_eq_circumradius_of_subset_insert_orthocenter](declarations/exists-dist-eq-circumradius-of-subset-insert-orthocenter.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [OrthocentricSystem.affineIndependent](declarations/orthocentricsystem-affineindependent.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [affineSpan_of_orthocentricSystem](declarations/affinespan-of-orthocentricsystem.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [OrthocentricSystem.exists_circumradius_eq](declarations/orthocentricsystem-exists-circumradius-eq.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [OrthocentricSystem.eq_insert_orthocenter](declarations/orthocentricsystem-eq-insert-orthocenter.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a464edfe78b1157e826c5b57e8bc6c20d5d63a49e9d7c143d0de603b855e7446 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/MongePoint/Varianta3afb82a6b9762acdeaaf9341a41ae430fdb9c76fda5a747bf75106e56c3d0ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
