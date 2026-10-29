# Interior Boundary Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1f61359042c76f263993d92092e202eafef5e23`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/InteriorBoundaryNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteriorPoint](declarations/isinteriorpoint.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsBoundaryPoint](declarations/isboundarypoint.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [interior](declarations/interior.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isInteriorPoint_iff](declarations/isinteriorpoint-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [boundary](declarations/boundary.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isBoundaryPoint_iff](declarations/isboundarypoint-iff.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isInteriorPoint_or_isBoundaryPoint](declarations/isinteriorpoint-or-isboundarypoint.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [interior_union_boundary_eq_univ](declarations/interior-union-boundary-eq-univ.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [disjoint_interior_boundary](declarations/disjoint-interior-boundary.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isInteriorPoint_iff_not_isBoundaryPoint](declarations/isinteriorpoint-iff-not-isboundarypoint.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isBoundaryPoint_iff_not_isInteriorPoint](declarations/isboundarypoint-iff-not-isinteriorpoint.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [compl_interior](declarations/compl-interior.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [compl_boundary](declarations/compl-boundary.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [Interior Boundary Namespaced Public](declarations/range-mem-nhds-isinteriorpoint.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [Interior Boundary Namespaced Public](declarations/boundarylessmanifold.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [BoundarylessManifold.of_empty](declarations/boundarylessmanifold-of-empty.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [Interior Boundary Namespaced Public](declarations/isinteriorpoint-source-line-197-occurrence-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [interior_eq_univ](declarations/interior-eq-univ.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Boundaryless.boundary_eq_empty](declarations/boundaryless-boundary-eq-empty.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Boundaryless.iff_boundary_eq_empty](declarations/boundaryless-iff-boundary-eq-empty.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Boundaryless.of_boundary_eq_empty](declarations/boundaryless-of-boundary-eq-empty.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [Interior Boundary Namespaced Public](declarations/mem-interior-convex-of-surjective-fderiv.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [mem_interior_range_of_mem_interior_range_of_mem_atlas](declarations/mem-interior-range-of-mem-interior-range-of-mem-atlas.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mem_interior_range_iff_of_mem_atlas](declarations/mem-interior-range-iff-of-mem-atlas.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isInteriorPoint_iff_of_mem_atlas](declarations/isinteriorpoint-iff-of-mem-atlas.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isBoundaryPoint_iff_of_mem_atlas](declarations/isboundarypoint-iff-of-mem-atlas.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isOpen_interior](declarations/isopen-interior.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isClosed_boundary](declarations/isclosed-boundary.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [MDifferentiableAt.isInteriorPoint_of_surjective_mfderiv](declarations/mdifferentiableat-isinteriorpoint-of-surjective-mfderiv.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsLocalDiffeomorphAt.isInteriorPoint_iff](declarations/islocaldiffeomorphat-isinteriorpoint-iff.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsLocalDiffeomorphAt.isBoundaryPoint_iff](declarations/islocaldiffeomorphat-isboundarypoint-iff.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsLocalDiffeomorphOn.preimage_interior_inter](declarations/islocaldiffeomorphon-preimage-interior-inter.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsLocalDiffeomorphOn.preimage_boundary_inter](declarations/islocaldiffeomorphon-preimage-boundary-inter.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsLocalDiffeomorph.preimage_interior](declarations/islocaldiffeomorph-preimage-interior.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsLocalDiffeomorph.preimage_boundary](declarations/islocaldiffeomorph-preimage-boundary.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsLocalDiffeomorph.boundarylessManifold](declarations/islocaldiffeomorph-boundarylessmanifold.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [Diffeomorph.preimage_interior](declarations/diffeomorph-preimage-interior.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Diffeomorph.preimage_boundary](declarations/diffeomorph-preimage-boundary.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Diffeomorph.image_interior](declarations/diffeomorph-image-interior.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Diffeomorph.image_boundary](declarations/diffeomorph-image-boundary.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Diffeomorph.boundarylessManifold](declarations/diffeomorph-boundarylessmanifold.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Diffeomorph.boundarylessManifold_iff](declarations/diffeomorph-boundarylessmanifold-iff.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [isInteriorPoint_iff_isInteriorPoint_val](declarations/isinteriorpoint-iff-isinteriorpoint-val.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [isBoundaryPoint_iff_isBoundaryPoint_val](declarations/isboundarypoint-iff-isboundarypoint-val.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [interior_open](declarations/interior-open.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [boundary_open](declarations/boundary-open.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [BoundarylessManifold.open](declarations/boundarylessmanifold-open.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [interior_prod](declarations/interior-prod.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [boundary_prod](declarations/boundary-prod.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [boundary_of_boundaryless_left](declarations/boundary-of-boundaryless-left.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [boundary_of_boundaryless_right](declarations/boundary-of-boundaryless-right.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [BoundarylessManifold.prod](declarations/boundarylessmanifold-prod.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [interiorPoint_inl](declarations/interiorpoint-inl.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [boundaryPoint_inl](declarations/boundarypoint-inl.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [interiorPoint_inr](declarations/interiorpoint-inr.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [boundaryPoint_inr](declarations/boundarypoint-inr.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [isInteriorPoint_disjointUnion_left](declarations/isinteriorpoint-disjointunion-left.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [isInteriorPoint_disjointUnion_right](declarations/isinteriorpoint-disjointunion-right.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [interior_disjointUnion](declarations/interior-disjointunion.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [boundary_disjointUnion](declarations/boundary-disjointunion.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [boundaryless_disjointUnion](declarations/boundaryless-disjointunion.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5aaf83e5234870727e2618bbf7ab0a1ebcb21e89a6c757da154ab1ee1c3c2615 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/InteriorBoundary/Variant47d7a0df6f679e57413a264d281ce1af0b646442ed9bc3f11c56191ab25255f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
