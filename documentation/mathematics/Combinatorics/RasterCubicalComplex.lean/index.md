# Raster Cubical Complex

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36e8775f3dfa24907508695278fa425a19345412`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/RasterCubicalComplex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Vertex](declarations/vertex.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [HorizontalEdge](declarations/horizontaledge.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [VerticalEdge](declarations/verticaledge.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [horizontalEndpoints](declarations/horizontalendpoints.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [verticalEndpoints](declarations/verticalendpoints.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [SquareBoundary](declarations/squareboundary-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [squareBoundary](declarations/squareboundary.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Cell](declarations/cell.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Cell.dimension](declarations/cell-dimension.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [vertexFintype](declarations/vertexfintype.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [horizontalEdgeFintype](declarations/horizontaledgefintype.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [verticalEdgeFintype](declarations/verticaledgefintype.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [cellFintype](declarations/cellfintype.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Complex](declarations/complex.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [rectangularComplex](declarations/rectangularcomplex.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_rectangularComplex](declarations/mem-rectangularcomplex.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [EdgeAdjacent](declarations/edgeadjacent.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [edgeAdjacentDecidable](declarations/edgeadjacentdecidable.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [edgeAdjacent_symmetric](declarations/edgeadjacent-symmetric.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [not_edgeAdjacent_self](declarations/not-edgeadjacent-self.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [NeighboringCoordinate](declarations/neighboringcoordinate.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [neighboringCoordinateDecidable](declarations/neighboringcoordinatedecidable.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [neighboringCoordinate_symmetric](declarations/neighboringcoordinate-symmetric.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [VertexAdjacent](declarations/vertexadjacent.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [vertexAdjacentDecidable](declarations/vertexadjacentdecidable.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [vertexAdjacent_symmetric](declarations/vertexadjacent-symmetric.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [not_vertexAdjacent_self](declarations/not-vertexadjacent-self.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2705948fb8e301ecd6095b8923eee174d4250a1472a2c134776a00bf93765b87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/RasterCubicalComplex/Variant6fe42f1c965968d95590328773d5d81b07a3c19736393dd7ad8d7ca415dd6e14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
