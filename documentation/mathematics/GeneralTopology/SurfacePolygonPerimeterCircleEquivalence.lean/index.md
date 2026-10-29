# Surface Polygon Perimeter Circle Equivalence

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [cornerDiscrete](declarations/cornerdiscrete.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [handleOrdinal_injective](declarations/handleordinal-injective.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [directedSideOrdinal_injective](declarations/directedsideordinal-injective.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [handleOfOrdinal](declarations/handleofordinal.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [handleOrdinal_handleOfOrdinal](declarations/handleordinal-handleofordinal.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [cornerOfOrdinal](declarations/cornerofordinal.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [directedSideOrdinal_cornerOfOrdinal](declarations/directedsideordinal-cornerofordinal.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sourceRealAngularAddress](declarations/sourcerealangularaddress.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sourceAngularAddress_eq_coe_real](declarations/sourceangularaddress-eq-coe-real.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [nextDirectedCorner](declarations/nextdirectedcorner.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [perimeterProjection_one_eq_nextDirectedCorner](declarations/perimeterprojection-one-eq-nextdirectedcorner.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [canonicalBoundaryPoint](declarations/canonicalboundarypoint.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [canonicalBoundaryPoint_projection](declarations/canonicalboundarypoint-projection.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [canonicalBoundaryPoint_parameter_lt_one](declarations/canonicalboundarypoint-parameter-lt-one.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sourceAngularAddress_canonical](declarations/sourceangularaddress-canonical.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [canonicalRealAngularAddress_mem_Ico](declarations/canonicalrealangularaddress-mem-ico.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [boundaryPoint_eq_of_realAngularAddress_eq](declarations/boundarypoint-eq-of-realangularaddress-eq.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_boundaryPoint_realAngularAddress_eq_of_mem_Ico](declarations/exists-boundarypoint-realangularaddress-eq-of-mem-ico.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [perimeterAngle_injective](declarations/perimeterangle-injective.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [perimeterAngle_surjective](declarations/perimeterangle-surjective.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [perimeterAngle_bijective](declarations/perimeterangle-bijective.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perimeterAngle_eq_iff](declarations/perimeterangle-eq-iff.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [perimeterProjection_surjective](declarations/perimeterprojection-surjective.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unpairedPerimeter_isCompact](declarations/unpairedperimeter-iscompact.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [unpairedPerimeterCompactSpace](declarations/unpairedperimetercompactspace.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [perimeterCircleHomeomorph](declarations/perimetercirclehomeomorph.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [perimeterCircleHomeomorph_apply](declarations/perimetercirclehomeomorph-apply.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [perimeterUnitCircleHomeomorph](declarations/perimeterunitcirclehomeomorph.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [perimeterUnitCircleHomeomorph_apply](declarations/perimeterunitcirclehomeomorph-apply.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [perimeterUnitAngle_bijective](declarations/perimeterunitangle-bijective.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [genusTwoPerimeterCircleHomeomorph](declarations/genustwoperimetercirclehomeomorph.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [genusThreePerimeterCircleHomeomorph](declarations/genusthreeperimetercirclehomeomorph.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81d3c324550bf0af2ad5e4b596b8841833fa3a55d830d3f344383a2c78d60d2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
