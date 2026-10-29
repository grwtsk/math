# Simplex Centroid Centroid Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 49 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3f544ddd5b2df9607fde34278c23a9dc64cc9f5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SimplexCentroidCentroidPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [centroid](declarations/centroid.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [univ_centroid_eq](declarations/univ-centroid-eq.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [centroid_mem_affineSpan](declarations/centroid-mem-affinespan.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [centroid_eq_affineCombination](declarations/centroid-eq-affinecombination.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [centroid_notMem_affineSpan_of_ne_univ](declarations/centroid-notmem-affinespan-of-ne-univ.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [centroid_vsub_eq](declarations/centroid-vsub-eq.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [centroid_eq_smul_sum_vsub_vadd](declarations/centroid-eq-smul-sum-vsub-vadd.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [smul_centroid_vsub_point_eq_sum_vsub](declarations/smul-centroid-vsub-point-eq-sum-vsub.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [centroid_weighted_vsub_eq_zero](declarations/centroid-weighted-vsub-eq-zero.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eq_centroid_iff_sum_vsub_eq_zero](declarations/eq-centroid-iff-sum-vsub-eq-zero.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [face_centroid_eq_centroid](declarations/face-centroid-eq-centroid.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [centroid_eq_iff](declarations/centroid-eq-iff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [face_centroid_eq_iff](declarations/face-centroid-eq-iff.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [centroid_eq_of_range_eq](declarations/centroid-eq-of-range-eq.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [affineIndependent_points_update_centroid](declarations/affineindependent-points-update-centroid.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [centroid_map](declarations/centroid-map.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [centroid_reindex](declarations/centroid-reindex.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [centroid_restrict](declarations/centroid-restrict.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [faceOppositeCentroid](declarations/faceoppositecentroid.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [faceOppositeCentroid_mem_affineSpan_face](declarations/faceoppositecentroid-mem-affinespan-face.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [faceOppositeCentroid_eq_affineCombination](declarations/faceoppositecentroid-eq-affinecombination.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [faceOppositeCentroid_vsub_point_eq_smul_sum_vsub](declarations/faceoppositecentroid-vsub-point-eq-smul-sum-vsub.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [faceOppositeCentroid_eq_sum_vsub_vadd](declarations/faceoppositecentroid-eq-sum-vsub-vadd.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [point_vsub_faceOppositeCentroid_eq_smul_sum_vsub](declarations/point-vsub-faceoppositecentroid-eq-smul-sum-vsub.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [smul_faceOppositeCentroid_vsub_point_eq_sum_vsub](declarations/smul-faceoppositecentroid-vsub-point-eq-sum-vsub.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [smul_centroid_vsub_point_eq_smul_faceOppositeCentroid_vsub_point](declarations/smul-centroid-vsub-point-eq-smul-faceoppositecentroid-vsub-point.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [faceOppositeCentroid_vsub_faceOppositeCentroid](declarations/faceoppositecentroid-vsub-faceoppositecentroid.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [faceOppositeCentroid_vsub_point_eq_smul_vsub](declarations/faceoppositecentroid-vsub-point-eq-smul-vsub.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [point_vsub_faceOppositeCentroid_eq_smul_vsub](declarations/point-vsub-faceoppositecentroid-eq-smul-vsub.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [point_vsub_centroid_eq_smul_vsub](declarations/point-vsub-centroid-eq-smul-vsub.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [centroid_vsub_point_eq_smul_vsub](declarations/centroid-vsub-point-eq-smul-vsub.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [faceOppositeCentroid_vsub_centroid_eq_smul_vsub](declarations/faceoppositecentroid-vsub-centroid-eq-smul-vsub.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [centroid_vsub_faceOppositeCentroid_eq_smul_vsub](declarations/centroid-vsub-faceoppositecentroid-eq-smul-vsub.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [centroid_eq_smul_vsub_vadd_point](declarations/centroid-eq-smul-vsub-vadd-point.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [faceOppositeCentroid_eq_smul_vsub_vadd_point](declarations/faceoppositecentroid-eq-smul-vsub-vadd-point.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [faceOppositeCentroid_map](declarations/faceoppositecentroid-map.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [faceOppositeCentroid_restrict](declarations/faceoppositecentroid-restrict.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [faceOppositeCentroid_reindex](declarations/faceoppositecentroid-reindex.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [median](declarations/median.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [median_reindex](declarations/median-reindex.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [median_map](declarations/median-map.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [median_restrict](declarations/median-restrict.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [faceOppositeCentroid_mem_median](declarations/faceoppositecentroid-mem-median.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [point_mem_median](declarations/point-mem-median.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [centroid_mem_median](declarations/centroid-mem-median.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [median_eq_line_point_centroid](declarations/median-eq-line-point-centroid.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [eq_centroid_of_forall_mem_median](declarations/eq-centroid-of-forall-mem-median.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [medial](declarations/medial.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [medial_points](declarations/medial-points.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [medial_reindex](declarations/medial-reindex.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [medial_map](declarations/medial-map.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [affineSpan_range_medial](declarations/affinespan-range-medial.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [medial_restrict](declarations/medial-restrict.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85f4464f4d4e666330265e4c0fc04cea6c3df0117a00a6a5a3c55a5896ef7efe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Centroid/Varianteb93e635f44839695dc93bd33326ba244e023429041e72d089eb7d3b85793775.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
