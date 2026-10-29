# Simplex Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**91 observed declarations and anonymous commands**, 77 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `011f31359194e9485492ec54fd669a216209f85e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SimplexBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Simplex](declarations/simplex.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Triangle](declarations/triangle.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mkOfPoint](declarations/mkofpoint.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mkOfPoint_points](declarations/mkofpoint-points.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [nonempty](declarations/nonempty.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [range_mkOfPoint_points](declarations/range-mkofpoint-points.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ext](declarations/ext.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [face](declarations/face.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [face_points](declarations/face-points-source-edition-2.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [face_points'](declarations/face-points.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [face_eq_mkOfPoint](declarations/face-eq-mkofpoint.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [range_face_points](declarations/range-face-points.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [affineSpan_face_le](declarations/affinespan-face-le.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [points_mem_affineSpan_face](declarations/points-mem-affinespan-face.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [faceOpposite](declarations/faceopposite.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [range_faceOpposite_points](declarations/range-faceopposite-points.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [affineSpan_faceOpposite_le](declarations/affinespan-faceopposite-le.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [points_mem_affineSpan_faceOpposite](declarations/points-mem-affinespan-faceopposite.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [points_notMem_affineSpan_faceOpposite](declarations/points-notmem-affinespan-faceopposite.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [faceOpposite_point_eq_point_succAbove](declarations/faceopposite-point-eq-point-succabove.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [faceOpposite_point_eq_point_rev](declarations/faceopposite-point-eq-point-rev.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [faceOpposite_point_eq_point_one](declarations/faceopposite-point-eq-point-one.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [faceOpposite_point_eq_point_zero](declarations/faceopposite-point-eq-point-zero.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mem_affineSpan_image_iff](declarations/mem-affinespan-image-iff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mem_affineSpan_range](declarations/mem-affinespan-range.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [affineCombination_mem_affineSpan_faceOpposite_iff](declarations/affinecombination-mem-affinespan-faceopposite-iff.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [map](declarations/map.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [map_id](declarations/map-id.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_comp](declarations/map-comp.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [face_map](declarations/face-map.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [faceOpposite_map](declarations/faceopposite-map.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [map_mkOfPoint](declarations/map-mkofpoint.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [reindex](declarations/reindex.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [reindex_trans](declarations/reindex-trans.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [reindex_reindex_symm](declarations/reindex-reindex-symm.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [reindex_symm_reindex](declarations/reindex-symm-reindex.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [reindex_range_points](declarations/reindex-range-points.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [reindex_map](declarations/reindex-map.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [range_face_reindex](declarations/range-face-reindex.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [range_faceOpposite_reindex](declarations/range-faceopposite-reindex.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [restrict](declarations/restrict.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [restrict_map_inclusion](declarations/restrict-map-inclusion.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [map_subtype_restrict](declarations/map-subtype-restrict.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [restrict_map_restrict](declarations/restrict-map-restrict.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [restrict_map_subtype](declarations/restrict-map-subtype.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [restrict_reindex](declarations/restrict-reindex.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [face_restrict](declarations/face-restrict.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [faceOpposite_restrict](declarations/faceopposite-restrict.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [setInterior](declarations/setinterior.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [affineCombination_mem_setInterior_iff](declarations/affinecombination-mem-setinterior-iff.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [setInterior_reindex](declarations/setinterior-reindex.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [setInterior_mono](declarations/setinterior-mono.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [setInterior_subset_affineSpan](declarations/setinterior-subset-affinespan.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [setInterior_map](declarations/setinterior-map.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [setInterior_restrict](declarations/setinterior-restrict.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [interior](declarations/interior.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [interior_reindex](declarations/interior-reindex.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [affineCombination_mem_interior_iff](declarations/affinecombination-mem-interior-iff.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [closedInterior](declarations/closedinterior.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [closedInterior_reindex](declarations/closedinterior-reindex.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [affineCombination_mem_closedInterior_iff](declarations/affinecombination-mem-closedinterior-iff.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [interior_subset_closedInterior](declarations/interior-subset-closedinterior.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [point_notMem_interior](declarations/point-notmem-interior.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [point_mem_closedInterior](declarations/point-mem-closedinterior.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [nonempty_closedInterior](declarations/nonempty-closedinterior.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [interior_ssubset_closedInterior](declarations/interior-ssubset-closedinterior.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [closedInterior_subset_affineSpan](declarations/closedinterior-subset-affinespan.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [interior_eq_empty](declarations/interior-eq-empty.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [closedInterior_eq_singleton](declarations/closedinterior-eq-singleton.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [affineCombination_mem_setInterior_face_iff_mem](declarations/affinecombination-mem-setinterior-face-iff-mem.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [affineCombination_mem_interior_face_iff_mem_Ioo](declarations/affinecombination-mem-interior-face-iff-mem-ioo.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [affineCombination_mem_closedInterior_face_iff_mem_Icc](declarations/affinecombination-mem-closedinterior-face-iff-mem-icc.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [affineCombination_mem_interior_face_iff_pos](declarations/affinecombination-mem-interior-face-iff-pos.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [affineCombination_mem_closedInterior_face_iff_nonneg](declarations/affinecombination-mem-closedinterior-face-iff-nonneg.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [interior_map](declarations/interior-map.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [closedInterior_map](declarations/closedinterior-map.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [interior_restrict](declarations/interior-restrict.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [closedInterior_restrict](declarations/closedinterior-restrict.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [closedInterior_face_subset_closedInterior](declarations/closedinterior-face-subset-closedinterior.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [point_mem_closedInterior_face_iff](declarations/point-mem-closedinterior-face-iff.md) | 635 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [closedInterior_face_ssubset_closedInterior](declarations/closedinterior-face-ssubset-closedinterior.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [disjoint_interior_closedInterior_face](declarations/disjoint-interior-closedinterior-face.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [point_mem_closedInterior_faceOpposite_iff](declarations/point-mem-closedinterior-faceopposite-iff.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [closedInterior_faceOpposite_subset_closedInterior](declarations/closedinterior-faceopposite-subset-closedinterior.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [closedInterior_faceOpposite_ssubset_closedInterior](declarations/closedinterior-faceopposite-ssubset-closedinterior.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [disjoint_interior_closedInterior_faceOpposite](declarations/disjoint-interior-closedinterior-faceopposite.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [closedInterior_eq_interior_union](declarations/closedinterior-eq-interior-union.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [closedInterior_sdiff_interior](declarations/closedinterior-sdiff-interior.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96d1dac1988aa766080ea3efc57ebbd8efee15496a6e829b7017913b48c67e31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant252dbf8adb74b3888288d3959f4da4a6a1438ea450e5f8f75c28e66b56360de8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
