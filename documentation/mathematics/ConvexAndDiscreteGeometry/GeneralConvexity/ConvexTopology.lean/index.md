# Convex Topology

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0578d05498a88180488be21ce6a5a96f96d9defd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/ConvexTopology.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [closedBall_eq_segment](declarations/closedball-eq-segment.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [ball_eq_openSegment](declarations/ball-eq-opensegment.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [convex_iff_isPreconnected](declarations/convex-iff-ispreconnected.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [stdSimplex_subset_closedBall](declarations/stdsimplex-subset-closedball.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [bounded_stdSimplex](declarations/bounded-stdsimplex.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [isClosed_stdSimplex](declarations/isclosed-stdsimplex.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isCompact_stdSimplex](declarations/iscompact-stdsimplex.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [stdSimplex.instCompactSpace_coe](declarations/stdsimplex-instcompactspace-coe.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [stdSimplexHomeomorphUnitInterval](declarations/stdsimplexhomeomorphunitinterval.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [segment_subset_closure_openSegment](declarations/segment-subset-closure-opensegment.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [closure_openSegment](declarations/closure-opensegment.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Convex.combo_interior_closure_subset_interior](declarations/convex-combo-interior-closure-subset-interior.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Convex.combo_interior_self_subset_interior](declarations/convex-combo-interior-self-subset-interior.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Convex.combo_closure_interior_subset_interior](declarations/convex-combo-closure-interior-subset-interior.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Convex.combo_self_interior_subset_interior](declarations/convex-combo-self-interior-subset-interior.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Convex.combo_interior_closure_mem_interior](declarations/convex-combo-interior-closure-mem-interior.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Convex.combo_interior_self_mem_interior](declarations/convex-combo-interior-self-mem-interior.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Convex.combo_closure_interior_mem_interior](declarations/convex-combo-closure-interior-mem-interior.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Convex.combo_self_interior_mem_interior](declarations/convex-combo-self-interior-mem-interior.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Convex.openSegment_interior_closure_subset_interior](declarations/convex-opensegment-interior-closure-subset-interior.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Convex.openSegment_interior_self_subset_interior](declarations/convex-opensegment-interior-self-subset-interior.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Convex.openSegment_closure_interior_subset_interior](declarations/convex-opensegment-closure-interior-subset-interior.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Convex.openSegment_self_interior_subset_interior](declarations/convex-opensegment-self-interior-subset-interior.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Convex.add_smul_sub_mem_interior'](declarations/convex-add-smul-sub-mem-interior-source-edition-2.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Convex.add_smul_sub_mem_interior](declarations/convex-add-smul-sub-mem-interior.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Convex.add_smul_mem_interior'](declarations/convex-add-smul-mem-interior-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Convex.add_smul_mem_interior](declarations/convex-add-smul-mem-interior.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Convex.interior](declarations/convex-interior.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Convex.closure](declarations/convex-closure.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Convex.strictConvex'](declarations/convex-strictconvex-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Convex.strictConvex](declarations/convex-strictconvex.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Convex.closure_interior_eq_closure_of_nonempty_interior](declarations/convex-closure-interior-eq-closure-of-nonempty-interior.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Convex.interior_closure_eq_interior_of_nonempty_interior](declarations/convex-interior-closure-eq-interior-of-nonempty-interior.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [convex_closed_sInter](declarations/convex-closed-sinter.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [closedConvexHull](declarations/closedconvexhull.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [convex_closedConvexHull](declarations/convex-closedconvexhull.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isClosed_closedConvexHull](declarations/isclosed-closedconvexhull.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [subset_closedConvexHull](declarations/subset-closedconvexhull.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [closure_subset_closedConvexHull](declarations/closure-subset-closedconvexhull.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [closedConvexHull_min](declarations/closedconvexhull-min.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [convexHull_subset_closedConvexHull](declarations/convexhull-subset-closedconvexhull.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [closedConvexHull_closure_eq_closedConvexHull](declarations/closedconvexhull-closure-eq-closedconvexhull.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [closedConvexHull_eq_closure_convexHull](declarations/closedconvexhull-eq-closure-convexhull.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Set.Finite.isCompact_convexHull](declarations/set-finite-iscompact-convexhull.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [Set.Finite.isClosed_convexHull](declarations/set-finite-isclosed-convexhull.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Convex.closure_subset_image_homothety_interior_of_one_lt](declarations/convex-closure-subset-image-homothety-interior-of-one-lt.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Convex.closure_subset_interior_image_homothety_of_one_lt](declarations/convex-closure-subset-interior-image-homothety-of-one-lt.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Convex.subset_interior_image_homothety_of_one_lt](declarations/convex-subset-interior-image-homothety-of-one-lt.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Convex.nontrivial_iff_nonempty_interior](declarations/convex-nontrivial-iff-nonempty-interior.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c02cfd0ee6fc191743f1b6bde848227debd24958d53ce0c959d43539aa9db27b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
