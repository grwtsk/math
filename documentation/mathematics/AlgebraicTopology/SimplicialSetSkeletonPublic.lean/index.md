# Simplicial Set Skeleton Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae3c3f3cde6555c13d871454a132d1868a92db04`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AlgebraicTopology/SimplicialSetSkeletonPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [skeleton](declarations/skeleton.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_skeleton](declarations/mem-skeleton.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [skeleton_obj_eq_top](declarations/skeleton-obj-eq-top.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ofSimplex_le_skeleton](declarations/ofsimplex-le-skeleton.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mem_skeleton_obj_iff_of_nonDegenerate](declarations/mem-skeleton-obj-iff-of-nondegenerate.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [skeleton_zero](declarations/skeleton-zero.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [iSup_skeleton](declarations/isup-skeleton.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [skeleton_succ](declarations/skeleton-succ.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [skeletonOfMono](declarations/skeletonofmono.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [skeleton_le_skeletonOfMono](declarations/skeleton-le-skeletonofmono.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [skeletonOfMono_zero](declarations/skeletonofmono-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [iSup_skeletonOfMono](declarations/isup-skeletonofmono.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_skeletonOfMono_obj_iff_of_nonDegenerate](declarations/mem-skeletonofmono-obj-iff-of-nondegenerate.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [skeletonOfMono_obj_eq_top](declarations/skeletonofmono-obj-eq-top.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [skeletonOfMono_succ](declarations/skeletonofmono-succ.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [Cell](declarations/cell.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [sigmaStdSimplex](declarations/sigmastdsimplex-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [sigmaBoundary](declarations/sigmaboundary-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [ιSigmaStdSimplex](declarations/sigmastdsimplex.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [ιSigmaBoundary](declarations/sigmaboundary.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [map](declarations/map.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [mem_skeletonOfMono_obj_iff](declarations/mem-skeletonofmono-obj-iff.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [range_map_le](declarations/range-map-le.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [preimage_map](declarations/preimage-map.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [ιSigmaStdSimplex_jointly_surjective](declarations/sigmastdsimplex-jointly-surjective.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [l](declarations/l.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [t](declarations/t.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [b](declarations/b.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [r](declarations/r.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [w](declarations/w.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [ι_t_ι_eq_ι_l_b_ι](declarations/t-eq-l-b.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [ι_l](declarations/l-source-edition-2.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [ι_b_ι](declarations/b-source-edition-2.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [b_app_ι_app_objEquiv_symm_val](declarations/b-app-app-objequiv-symm-val.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isPullback](declarations/ispullback.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [sup_range_r_range_b](declarations/sup-range-r-range-b.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [range_r_app_union_range_b_app](declarations/range-r-app-union-range-b-app.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [isPushout_aux](declarations/ispushout-aux.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [isPushout](declarations/ispushout.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [relativeCellComplexOfMono](declarations/relativecellcomplexofmono.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [relativeCellComplex](declarations/relativecellcomplex.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [relativeCellComplexCellsEquiv](declarations/relativecellcomplexcellsequiv.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89d6425eebd67c2079adb8ce6918bd590c7f320a58aff6d9ab1f11714be5f96e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
