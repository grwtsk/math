# Interior Boundary Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e44227a5404371d3fbe4b9cdd473abc69f26c393`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/InteriorBoundaryPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteriorPoint](declarations/isinteriorpoint.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsBoundaryPoint](declarations/isboundarypoint.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [interior](declarations/interior.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isInteriorPoint_iff](declarations/isinteriorpoint-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [boundary](declarations/boundary.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isBoundaryPoint_iff](declarations/isboundarypoint-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isInteriorPoint_or_isBoundaryPoint](declarations/isinteriorpoint-or-isboundarypoint.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [interior_union_boundary_eq_univ](declarations/interior-union-boundary-eq-univ.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [disjoint_interior_boundary](declarations/disjoint-interior-boundary.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isInteriorPoint_iff_not_isBoundaryPoint](declarations/isinteriorpoint-iff-not-isboundarypoint.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isBoundaryPoint_iff_not_isInteriorPoint](declarations/isboundarypoint-iff-not-isinteriorpoint.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [compl_interior](declarations/compl-interior.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [compl_boundary](declarations/compl-boundary.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [_root_.range_mem_nhds_isInteriorPoint](declarations/root-range-mem-nhds-isinteriorpoint.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [_root_.BoundarylessManifold](declarations/root-boundarylessmanifold.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [BoundarylessManifold.of_empty](declarations/boundarylessmanifold-of-empty.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [_root_.BoundarylessManifold.isInteriorPoint](declarations/root-boundarylessmanifold-isinteriorpoint.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [interior_eq_univ](declarations/interior-eq-univ.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Boundaryless.boundary_eq_empty](declarations/boundaryless-boundary-eq-empty.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Boundaryless.iff_boundary_eq_empty](declarations/boundaryless-iff-boundary-eq-empty.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Boundaryless.of_boundary_eq_empty](declarations/boundaryless-of-boundary-eq-empty.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [_root_.DifferentiableAt.mem_interior_convex_of_surjective_fderiv](declarations/root-differentiableat-mem-interior-convex-of-surjective-fderiv.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [mem_interior_range_of_mem_interior_range_of_mem_atlas](declarations/mem-interior-range-of-mem-interior-range-of-mem-atlas.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mem_interior_range_iff_of_mem_atlas](declarations/mem-interior-range-iff-of-mem-atlas.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isInteriorPoint_iff_of_mem_atlas](declarations/isinteriorpoint-iff-of-mem-atlas.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isBoundaryPoint_iff_of_mem_atlas](declarations/isboundarypoint-iff-of-mem-atlas.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isOpen_interior](declarations/isopen-interior.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isClosed_boundary](declarations/isclosed-boundary.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [MDifferentiableAt.isInteriorPoint_of_surjective_mfderiv](declarations/mdifferentiableat-isinteriorpoint-of-surjective-mfderiv.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsLocalDiffeomorphAt.isInteriorPoint_iff](declarations/islocaldiffeomorphat-isinteriorpoint-iff.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsLocalDiffeomorphAt.isBoundaryPoint_iff](declarations/islocaldiffeomorphat-isboundarypoint-iff.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsLocalDiffeomorphOn.preimage_interior_inter](declarations/islocaldiffeomorphon-preimage-interior-inter.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsLocalDiffeomorphOn.preimage_boundary_inter](declarations/islocaldiffeomorphon-preimage-boundary-inter.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsLocalDiffeomorph.preimage_interior](declarations/islocaldiffeomorph-preimage-interior.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsLocalDiffeomorph.preimage_boundary](declarations/islocaldiffeomorph-preimage-boundary.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsLocalDiffeomorph.boundarylessManifold](declarations/islocaldiffeomorph-boundarylessmanifold.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [Diffeomorph.preimage_interior](declarations/diffeomorph-preimage-interior.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Diffeomorph.preimage_boundary](declarations/diffeomorph-preimage-boundary.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Diffeomorph.image_interior](declarations/diffeomorph-image-interior.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Diffeomorph.image_boundary](declarations/diffeomorph-image-boundary.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Diffeomorph.boundarylessManifold](declarations/diffeomorph-boundarylessmanifold.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Diffeomorph.boundarylessManifold_iff](declarations/diffeomorph-boundarylessmanifold-iff.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [isInteriorPoint_iff_isInteriorPoint_val](declarations/isinteriorpoint-iff-isinteriorpoint-val.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [isBoundaryPoint_iff_isBoundaryPoint_val](declarations/isboundarypoint-iff-isboundarypoint-val.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [interior_open](declarations/interior-open.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [boundary_open](declarations/boundary-open.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [BoundarylessManifold.open](declarations/boundarylessmanifold-open.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [interior_prod](declarations/interior-prod.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [boundary_prod](declarations/boundary-prod.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [boundary_of_boundaryless_left](declarations/boundary-of-boundaryless-left.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [boundary_of_boundaryless_right](declarations/boundary-of-boundaryless-right.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [BoundarylessManifold.prod](declarations/boundarylessmanifold-prod.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [interiorPoint_inl](declarations/interiorpoint-inl.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [boundaryPoint_inl](declarations/boundarypoint-inl.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [interiorPoint_inr](declarations/interiorpoint-inr.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [boundaryPoint_inr](declarations/boundarypoint-inr.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [isInteriorPoint_disjointUnion_left](declarations/isinteriorpoint-disjointunion-left.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [isInteriorPoint_disjointUnion_right](declarations/isinteriorpoint-disjointunion-right.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [interior_disjointUnion](declarations/interior-disjointunion.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [boundary_disjointUnion](declarations/boundary-disjointunion.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [boundaryless_disjointUnion](declarations/boundaryless-disjointunion.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8406eed080703996a164a8dd6344ed596577daaa963159356ef1a56c41bca745 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
