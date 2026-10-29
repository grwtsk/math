# Hull Convex Hull Eq Self

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `872edb320e7882d142dba6d3a9785ab97556157d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/HullConvexHullEqSelf.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [convexHull](declarations/convexhull.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [subset_convexHull](declarations/subset-convexhull.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [convex_convexHull](declarations/convex-convexhull.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [convexHull_eq_iInter](declarations/convexhull-eq-iinter.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_convexHull_iff](declarations/mem-convexhull-iff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [convexHull_min](declarations/convexhull-min.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Convex.convexHull_subset_iff](declarations/convex-convexhull-subset-iff.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [convexHull_mono](declarations/convexhull-mono.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [convexHull_eq_self](declarations/convexhull-eq-self.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [convexHull_univ](declarations/convexhull-univ.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [convexHull_empty](declarations/convexhull-empty.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [convexHull_empty_iff](declarations/convexhull-empty-iff.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [convexHull_nonempty_iff](declarations/convexhull-nonempty-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [segment_subset_convexHull](declarations/segment-subset-convexhull.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [convexHull_singleton](declarations/convexhull-singleton.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [convexHull_zero](declarations/convexhull-zero.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [convexHull_pair](declarations/convexhull-pair.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [convexHull_convexHull_union_left](declarations/convexhull-convexhull-union-left.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [convexHull_convexHull_union_right](declarations/convexhull-convexhull-union-right.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Convex.convex_remove_iff_notMem_convexHull_remove](declarations/convex-convex-remove-iff-notmem-convexhull-remove.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsLinearMap.image_convexHull](declarations/islinearmap-image-convexhull.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [LinearMap.image_convexHull](declarations/linearmap-image-convexhull.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [convexHull_add_subset](declarations/convexhull-add-subset.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [convexHull_smul](declarations/convexhull-smul.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [AffineMap.image_convexHull](declarations/affinemap-image-convexhull.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [convexHull_subset_affineSpan](declarations/convexhull-subset-affinespan.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [affineSpan_convexHull](declarations/affinespan-convexhull.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [convexHull_neg](declarations/convexhull-neg.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [convexHull_vadd](declarations/convexhull-vadd.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b12649cc168939f6a2849a1b836d150f12308d6ee028e8567a771c2ee7b1f5d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
