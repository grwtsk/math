# Jensen Namespaced Strict Convex On

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89480b11ec63bfe142d814198b0cf685f44b4daa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/JensenNamespacedStrictConvexOn.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.map_centerMass_le](declarations/convexon-map-centermass-le.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ConcaveOn.le_map_centerMass](declarations/concaveon-le-map-centermass.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ConvexOn.map_sum_le](declarations/convexon-map-sum-le.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ConcaveOn.le_map_sum](declarations/concaveon-le-map-sum.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [ConvexOn.map_add_sum_le](declarations/convexon-map-add-sum-le.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [ConcaveOn.map_add_sum_le](declarations/concaveon-map-add-sum-le.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [StrictConvexOn.map_sum_lt](declarations/strictconvexon-map-sum-lt.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [StrictConcaveOn.lt_map_sum](declarations/strictconcaveon-lt-map-sum.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [StrictConvexOn.eq_of_le_map_sum](declarations/strictconvexon-eq-of-le-map-sum.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [StrictConcaveOn.eq_of_map_sum_eq](declarations/strictconcaveon-eq-of-map-sum-eq.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [StrictConvexOn.map_sum_eq_iff](declarations/strictconvexon-map-sum-eq-iff-source-edition-2.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [StrictConcaveOn.map_sum_eq_iff](declarations/strictconcaveon-map-sum-eq-iff-source-edition-2.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [StrictConvexOn.map_sum_eq_iff'](declarations/strictconvexon-map-sum-eq-iff.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [StrictConcaveOn.map_sum_eq_iff'](declarations/strictconcaveon-map-sum-eq-iff.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ConvexOn.le_sup_of_mem_convexHull](declarations/convexon-le-sup-of-mem-convexhull.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ConvexOn.inf_le_of_mem_convexHull](declarations/convexon-inf-le-of-mem-convexhull.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [ConvexOn.exists_ge_of_centerMass](declarations/convexon-exists-ge-of-centermass.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [ConcaveOn.exists_le_of_centerMass](declarations/concaveon-exists-le-of-centermass.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [ConvexOn.exists_ge_of_mem_convexHull](declarations/convexon-exists-ge-of-mem-convexhull.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [ConcaveOn.exists_le_of_mem_convexHull](declarations/concaveon-exists-le-of-mem-convexhull.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [ConvexOn.le_max_of_mem_segment](declarations/convexon-le-max-of-mem-segment.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [ConcaveOn.min_le_of_mem_segment](declarations/concaveon-min-le-of-mem-segment.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [ConvexOn.le_max_of_mem_Icc](declarations/convexon-le-max-of-mem-icc.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [ConcaveOn.min_le_of_mem_Icc](declarations/concaveon-min-le-of-mem-icc.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [ConvexOn.bddAbove_convexHull](declarations/convexon-bddabove-convexhull.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [ConcaveOn.bddBelow_convexHull](declarations/concaveon-bddbelow-convexhull.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b271b4ab0a4d4867a34df8bd5a30b5ad44dedde1575a70ce79500bb9d873078b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
