# Rectangle Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbb1fb510c9ec1697495975294055607e5d38d9b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/RectangleEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [symm](declarations/symm.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [symm_re](declarations/symm-re.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [RectangleBorder](declarations/rectangleborder.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Square](declarations/square.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [Square_apply](declarations/square-apply.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [preimage_equivRealProdCLM_reProdIm](declarations/preimage-equivrealprodclm-reprodim.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ContinuousLinearEquiv.coe_toLinearEquiv_symm](declarations/continuouslinearequiv-coe-tolinearequiv-symm.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [segment_reProdIm_segment_eq_convexHull](declarations/segment-reprodim-segment-eq-convexhull.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [rectangle_in_convex](declarations/rectangle-in-convex.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mem_Rect](declarations/mem-rect.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [square_neg](declarations/square-neg.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Set.left_not_mem_uIoo](declarations/set-left-not-mem-uioo.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Set.right_not_mem_uIoo](declarations/set-right-not-mem-uioo.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Set.ne_left_of_mem_uIoo](declarations/set-ne-left-of-mem-uioo.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Set.ne_right_of_mem_uIoo](declarations/set-ne-right-of-mem-uioo.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [left_mem_rect](declarations/left-mem-rect.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [right_mem_rect](declarations/right-mem-rect.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [rect_subset_iff](declarations/rect-subset-iff.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [RectSubRect](declarations/rectsubrect.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [RectSubRect'](declarations/rectsubrect-source-edition-2.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [rectangleBorder_subset_rectangle](declarations/rectangleborder-subset-rectangle.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [rectangle_disjoint_singleton](declarations/rectangle-disjoint-singleton.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [rectangleBorder_disjoint_singleton](declarations/rectangleborder-disjoint-singleton.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [rectangle_subset_punctured_rect](declarations/rectangle-subset-punctured-rect.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [rectangleBorder_subset_punctured_rect](declarations/rectangleborder-subset-punctured-rect.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [rectangle_mem_nhds_iff](declarations/rectangle-mem-nhds-iff.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mapsTo_rectangle_left_re](declarations/mapsto-rectangle-left-re.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [mapsTo_rectangle_right_re](declarations/mapsto-rectangle-right-re.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mapsTo_rectangle_left_im](declarations/mapsto-rectangle-left-im.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mapsTo_rectangle_right_im](declarations/mapsto-rectangle-right-im.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [mapsTo_rectangleBorder_left_re](declarations/mapsto-rectangleborder-left-re.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mapsTo_rectangleBorder_right_re](declarations/mapsto-rectangleborder-right-re.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mapsTo_rectangleBorder_left_im](declarations/mapsto-rectangleborder-left-im.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [mapsTo_rectangleBorder_right_im](declarations/mapsto-rectangleborder-right-im.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [mapsTo_rectangle_left_re_NoP](declarations/mapsto-rectangle-left-re-nop.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [mapsTo_rectangle_right_re_NoP](declarations/mapsto-rectangle-right-re-nop.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [mapsTo_rectangle_left_im_NoP](declarations/mapsto-rectangle-left-im-nop.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [mapsTo_rectangle_right_im_NoP](declarations/mapsto-rectangle-right-im-nop.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [not_mem_rectangleBorder_of_rectangle_mem_nhds](declarations/not-mem-rectangleborder-of-rectangle-mem-nhds.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Complex.nhds_hasBasis_square](declarations/complex-nhds-hasbasis-square.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [square_mem_nhds](declarations/square-mem-nhds.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [square_subset_square](declarations/square-subset-square.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [SmallSquareInRectangle](declarations/smallsquareinrectangle.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3931314bcaa66744c60d822c0765ea5dc3d65759036393bb905371487fcb018 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Rectangle/Variant6cf1dfca9dd3bbe3db9c58acf135a5ea20669808418ad994ed27f67931ea53d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
