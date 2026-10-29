# Interior Boundary

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8bb015792162f687541bc73da36763a6105712d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DifferentialGeometry/InteriorBoundary.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteriorPoint](declarations/isinteriorpoint.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsBoundaryPoint](declarations/isboundarypoint.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [interior](declarations/interior.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isInteriorPoint_iff](declarations/isinteriorpoint-iff.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [boundary](declarations/boundary.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isBoundaryPoint_iff](declarations/isboundarypoint-iff.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isInteriorPoint_or_isBoundaryPoint](declarations/isinteriorpoint-or-isboundarypoint.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [interior_union_boundary_eq_univ](declarations/interior-union-boundary-eq-univ.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [disjoint_interior_boundary](declarations/disjoint-interior-boundary.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isInteriorPoint_iff_not_isBoundaryPoint](declarations/isinteriorpoint-iff-not-isboundarypoint.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [compl_interior](declarations/compl-interior.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [compl_boundary](declarations/compl-boundary.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [_root_.range_mem_nhds_isInteriorPoint](declarations/root-range-mem-nhds-isinteriorpoint.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `class` | [_root_.BoundarylessManifold](declarations/root-boundarylessmanifold.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [BoundarylessManifold.of_empty](declarations/boundarylessmanifold-of-empty.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [_root_.BoundarylessManifold.isInteriorPoint](declarations/root-boundarylessmanifold-isinteriorpoint.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [interior_eq_univ](declarations/interior-eq-univ.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Boundaryless.boundary_eq_empty](declarations/boundaryless-boundary-eq-empty.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Boundaryless.iff_boundary_eq_empty](declarations/boundaryless-iff-boundary-eq-empty.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Boundaryless.of_boundary_eq_empty](declarations/boundaryless-of-boundary-eq-empty.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [interior_prod](declarations/interior-prod.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [boundary_prod](declarations/boundary-prod.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [boundary_of_boundaryless_left](declarations/boundary-of-boundaryless-left.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [boundary_of_boundaryless_right](declarations/boundary-of-boundaryless-right.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [BoundarylessManifold.prod](declarations/boundarylessmanifold-prod.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [interiorPoint_inl](declarations/interiorpoint-inl.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [boundaryPoint_inl](declarations/boundarypoint-inl.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [interiorPoint_inr](declarations/interiorpoint-inr.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [boundaryPoint_inr](declarations/boundarypoint-inr.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [isInteriorPoint_disjointUnion_left](declarations/isinteriorpoint-disjointunion-left.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [isInteriorPoint_disjointUnion_right](declarations/isinteriorpoint-disjointunion-right.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [interior_disjointUnion](declarations/interior-disjointunion.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [boundary_disjointUnion](declarations/boundary-disjointunion.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [boundaryless_disjointUnion](declarations/boundaryless-disjointunion.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfe24ad43a781107bcc72cc55b03da7a8989ec95046e3d9e483ed09003fd8a8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
