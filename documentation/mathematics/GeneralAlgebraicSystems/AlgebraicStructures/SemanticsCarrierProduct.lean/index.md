# Semantics Carrier Product

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Semantics/Variantf333c4c60d1f36a8278845da04d191e8df80922531b902a04e46381315805207.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2ac6d6f8937d2cb8bfed158fd1af323f762e3e8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/SemanticsCarrierProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](declarations/bitfield.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BitField.bitAt](declarations/bitfield-bitat.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [GridCell](declarations/gridcell.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [GridCell.rowMajorIndex](declarations/gridcell-rowmajorindex.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [CarrierGrid](declarations/carriergrid.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [OwnershipMask](declarations/ownershipmask.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [FiniteRasterState](declarations/finiterasterstate.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [TriangleVertex](declarations/trianglevertex.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [triangleSuccessor](declarations/trianglesuccessor.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [triangleSuccessor_third_power](declarations/trianglesuccessor-third-power.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [BraidEndpointPresentation](declarations/braidendpointpresentation.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [PipelineStage](declarations/pipelinestage.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [canonicalPipelineStages](declarations/canonicalpipelinestages.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [PipelineTrace](declarations/pipelinetrace.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [ConfigurationInput](declarations/configurationinput.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [DerivedConfiguration](declarations/derivedconfiguration.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [deriveConfiguration](declarations/deriveconfiguration.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [derive_cells_per_axis](declarations/derive-cells-per-axis.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [derive_raster_extent](declarations/derive-raster-extent.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [CarrierProduct](declarations/carrierproduct.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [firstProjection](declarations/firstprojection.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [diagonalSection](declarations/diagonalsection.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [graphPoint](declarations/graphpoint.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [LiesOnDiagonal](declarations/liesondiagonal.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [LiesOnGraph](declarations/liesongraph.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [FixedSet](declarations/fixedset.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [FixedPoint](declarations/fixedpoint.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [GraphDiagonalIntersection](declarations/graphdiagonalintersection.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [firstProjection_diagonalSection](declarations/firstprojection-diagonalsection.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [firstProjection_comp_diagonalSection](declarations/firstprojection-comp-diagonalsection.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [graphPoint_liesOnGraph](declarations/graphpoint-liesongraph.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_fixedSet_iff_graphPoint_liesOnDiagonal](declarations/mem-fixedset-iff-graphpoint-liesondiagonal.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [fixedPointEquivGraphDiagonalIntersection](declarations/fixedpointequivgraphdiagonalintersection.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [fixedSet_identity](declarations/fixedset-identity.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [fixedPoint_eq_of_fixedSet_eq_singleton](declarations/fixedpoint-eq-of-fixedset-eq-singleton.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [RepresentationRelation](declarations/representationrelation.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [CorrespondenceStatus](declarations/correspondencestatus.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9cecbd7c4324110fc3af6a2c4a43ee11710a9e65c78936e4dc7d8e580b700747 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Semantics/Variantf333c4c60d1f36a8278845da04d191e8df80922531b902a04e46381315805207.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
