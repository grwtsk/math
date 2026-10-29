# Semantics Source Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f7e6c3efbfc443952fe8ef2e7c34d14d510b00c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemanticsSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](declarations/bitfield.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [BitField.bitAt](declarations/bitfield-bitat.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CarrierGrid](declarations/carriergrid.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [OwnershipMask](declarations/ownershipmask.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [FiniteRasterState](declarations/finiterasterstate.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [TriangleVertex](declarations/trianglevertex.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [triangleSuccessor](declarations/trianglesuccessor.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [triangleSuccessor_third_power](declarations/trianglesuccessor-third-power.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [BraidEndpointPresentation](declarations/braidendpointpresentation.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [PipelineStage](declarations/pipelinestage.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [canonicalPipelineStages](declarations/canonicalpipelinestages.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [PipelineTrace](declarations/pipelinetrace.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ConfigurationInput](declarations/configurationinput.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [DerivedConfiguration](declarations/derivedconfiguration.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [deriveConfiguration](declarations/deriveconfiguration.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [derive_cells_per_axis](declarations/derive-cells-per-axis.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [derive_raster_extent](declarations/derive-raster-extent.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [CarrierProduct](declarations/carrierproduct.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [firstProjection](declarations/firstprojection.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [diagonalSection](declarations/diagonalsection.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [graphPoint](declarations/graphpoint.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [LiesOnDiagonal](declarations/liesondiagonal.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [LiesOnGraph](declarations/liesongraph.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [FixedSet](declarations/fixedset.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [FixedPoint](declarations/fixedpoint.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `abbrev` | [GraphDiagonalIntersection](declarations/graphdiagonalintersection.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [firstProjection_diagonalSection](declarations/firstprojection-diagonalsection.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [firstProjection_comp_diagonalSection](declarations/firstprojection-comp-diagonalsection.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [graphPoint_liesOnGraph](declarations/graphpoint-liesongraph.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_fixedSet_iff_graphPoint_liesOnDiagonal](declarations/mem-fixedset-iff-graphpoint-liesondiagonal.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fixedPointEquivGraphDiagonalIntersection](declarations/fixedpointequivgraphdiagonalintersection.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fixedSet_identity](declarations/fixedset-identity.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [fixedPoint_eq_of_fixedSet_eq_singleton](declarations/fixedpoint-eq-of-fixedset-eq-singleton.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_fixedSet_linear_iff_mem_ker_id_sub](declarations/mem-fixedset-linear-iff-mem-ker-id-sub.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [RepresentationRelation](declarations/representationrelation.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `inductive` | [CorrespondenceStatus](declarations/correspondencestatus.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddd53ad73ef4fec7739d57a1885d7e0e3626ac2f68abbf0e71e88d1847993a0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Semantics/Variant7b7711b4f14c71579177d84cc1aad0338b4183e4e0adbf837718300887a4a389.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
