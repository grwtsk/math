# Surface Polygon Perimeter Cone Circle Transport

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c64e49ba0ee568349fec4781e6a6b580f4a91951`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonPerimeterConeCircleTransport.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [coneSourceSetoid](declarations/conesourcesetoid.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [StandardCircleConeCylinder](declarations/standardcircleconecylinder.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [StandardCircleConeStep](declarations/standardcircleconestep.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [StandardCircleConeConnected](declarations/standardcircleconeconnected.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [standardCircleConeConnected_iff](declarations/standardcircleconeconnected-iff.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [standardCircleConeSetoid](declarations/standardcircleconesetoid.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [StandardCircleCone](declarations/standardcirclecone.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [standardConeSourceSetoid](declarations/standardconesourcesetoid.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [standardCircleConeTopology](declarations/standardcircleconetopology.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [standardCircleConeTopology_coinduced](declarations/standardcircleconetopology-coinduced.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [standardCircleConeProjection](declarations/standardcircleconeprojection.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [standardCircleConeProjection_continuous](declarations/standardcircleconeprojection-continuous.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [standardCircleConeProjection_isQuotientMap](declarations/standardcircleconeprojection-isquotientmap.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [standardCircleConeProjection_eq_iff_of_ne_zero](declarations/standardcircleconeprojection-eq-iff-of-ne-zero.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [standardCircleConeConnected_preserves_radius](declarations/standardcircleconeconnected-preserves-radius.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [standardCircleConeRadius](declarations/standardcircleconeradius.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [standardCircleConeRadius_projection](declarations/standardcircleconeradius-projection.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [standardCircleConeRadius_continuous](declarations/standardcircleconeradius-continuous.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [standardCircleConeApex](declarations/standardcircleconeapex.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [standardCircleCone_zero_eq_apex](declarations/standardcirclecone-zero-eq-apex.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [standardCircleConeBoundary](declarations/standardcircleconeboundary.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [standardCircleConeBoundary_continuous](declarations/standardcircleconeboundary-continuous.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [standardCircleConeBoundary_injective](declarations/standardcircleconeboundary-injective.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [standardCircleConeCompactSpace](declarations/standardcircleconecompactspace.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [perimeterToStandardCircleConeSource](declarations/perimetertostandardcircleconesource.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [perimeterToStandardCircleConeSource_continuous](declarations/perimetertostandardcircleconesource-continuous.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coneConnected_perimeterToStandardCircleConeSource](declarations/coneconnected-perimetertostandardcircleconesource.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [perimeterConeToStandardCircleCone](declarations/perimeterconetostandardcirclecone.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [perimeterConeToStandardCircleCone_projection](declarations/perimeterconetostandardcirclecone-projection.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [perimeterConeToStandardCircleCone_continuous](declarations/perimeterconetostandardcirclecone-continuous.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [perimeterConeToStandardCircleCone_zero](declarations/perimeterconetostandardcirclecone-zero.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [standardCircleToPerimeterConeSource](declarations/standardcircletoperimeterconesource.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [standardCircleToPerimeterConeSource_continuous](declarations/standardcircletoperimeterconesource-continuous.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [standardCircleConeConnected_standardCircleToPerimeterConeSource](declarations/standardcircleconeconnected-standardcircletoperimeterconesource.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [standardCircleConeToPerimeterCone](declarations/standardcircleconetoperimetercone.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [standardCircleConeToPerimeterCone_projection](declarations/standardcircleconetoperimetercone-projection.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [standardCircleConeToPerimeterCone_continuous](declarations/standardcircleconetoperimetercone-continuous.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [standardCircleConeToPerimeterCone_leftInverse](declarations/standardcircleconetoperimetercone-leftinverse.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [standardCircleConeToPerimeterCone_rightInverse](declarations/standardcircleconetoperimetercone-rightinverse.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [perimeterConeEquivStandardCircleCone](declarations/perimeterconeequivstandardcirclecone.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [perimeterConeHomeomorphStandardCircleCone](declarations/perimeterconehomeomorphstandardcirclecone.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_apply](declarations/perimeterconehomeomorphstandardcirclecone-apply.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_symm_apply](declarations/perimeterconehomeomorphstandardcirclecone-symm-apply.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_radius](declarations/perimeterconehomeomorphstandardcirclecone-radius.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_apex](declarations/perimeterconehomeomorphstandardcirclecone-apex.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_boundary](declarations/perimeterconehomeomorphstandardcirclecone-boundary.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [perimeterConeHomeomorphStandardCircleCone_symm_boundary](declarations/perimeterconehomeomorphstandardcirclecone-symm-boundary.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [genusTwoPerimeterConeHomeomorphStandardCircleCone](declarations/genustwoperimeterconehomeomorphstandardcirclecone.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [genusThreePerimeterConeHomeomorphStandardCircleCone](declarations/genusthreeperimeterconehomeomorphstandardcirclecone.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38c7cfdc71882f55d64df86fd920f02feb1c3dc05a9c9281470bfee67a99b6fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterConeCircleTransport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
