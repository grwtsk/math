# Semantics Namespaced Carrier Product

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f8b2f9208a4ae8f4fd0a2e934bb14e0a65e1e8e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/SemanticsNamespacedCarrierProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](declarations/bitfield.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BitField.bitAt](declarations/bitfield-bitat.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [GridCell](declarations/gridcell.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [GridCell.rowMajorIndex](declarations/gridcell-rowmajorindex.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [CarrierGrid](declarations/carriergrid.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [OwnershipMask](declarations/ownershipmask.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [FiniteRasterState](declarations/finiterasterstate.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [TriangleVertex](declarations/trianglevertex.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [triangleSuccessor](declarations/trianglesuccessor.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [triangleSuccessor_third_power](declarations/trianglesuccessor-third-power.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [BraidEndpointPresentation](declarations/braidendpointpresentation.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [PipelineStage](declarations/pipelinestage.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [canonicalPipelineStages](declarations/canonicalpipelinestages.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [PipelineTrace](declarations/pipelinetrace.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [ConfigurationInput](declarations/configurationinput.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [DerivedConfiguration](declarations/derivedconfiguration.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [deriveConfiguration](declarations/deriveconfiguration.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [derive_cells_per_axis](declarations/derive-cells-per-axis.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [derive_raster_extent](declarations/derive-raster-extent.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [CarrierProduct](declarations/carrierproduct.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [firstProjection](declarations/firstprojection.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [diagonalSection](declarations/diagonalsection.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [graphPoint](declarations/graphpoint.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [LiesOnDiagonal](declarations/liesondiagonal.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [LiesOnGraph](declarations/liesongraph.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FixedSet](declarations/fixedset.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [FixedPoint](declarations/fixedpoint.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [GraphDiagonalIntersection](declarations/graphdiagonalintersection.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [firstProjection_diagonalSection](declarations/firstprojection-diagonalsection.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [firstProjection_comp_diagonalSection](declarations/firstprojection-comp-diagonalsection.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [graphPoint_liesOnGraph](declarations/graphpoint-liesongraph.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_fixedSet_iff_graphPoint_liesOnDiagonal](declarations/mem-fixedset-iff-graphpoint-liesondiagonal.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [fixedPointEquivGraphDiagonalIntersection](declarations/fixedpointequivgraphdiagonalintersection.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fixedSet_identity](declarations/fixedset-identity.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [fixedPoint_eq_of_fixedSet_eq_singleton](declarations/fixedpoint-eq-of-fixedset-eq-singleton.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [RepresentationRelation](declarations/representationrelation.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [CorrespondenceStatus](declarations/correspondencestatus.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db4808f3eb95a56f6ccb5a3c8b96993b4d1d791f341b0f36a97299257a411f58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Semantics/Variantc7814751b8814994803e6027d3087b0e85aeba3d5cab5d6f20789e4168f334a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
