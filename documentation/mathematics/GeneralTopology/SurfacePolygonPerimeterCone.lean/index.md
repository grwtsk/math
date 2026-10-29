# Surface Polygon Perimeter Cone

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfd3e090cadde51c011080362b9e3a5c3addf17c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonPerimeterCone.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [cornerDiscreteTopology](declarations/cornerdiscretetopology.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ConeCylinder](declarations/conecylinder.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [PerimeterConeStep](declarations/perimeterconestep.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ConeConnected](declarations/coneconnected.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coneConnected_iff](declarations/coneconnected-iff.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [coneSetoid](declarations/conesetoid.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [coneSourceSetoid](declarations/conesourcesetoid.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [PerimeterCone](declarations/perimetercone.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [perimeterConeTopology](declarations/perimeterconetopology.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coneTopology_coinduced](declarations/conetopology-coinduced.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coneProjection](declarations/coneprojection.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coneProjection_continuous](declarations/coneprojection-continuous.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coneProjection_isQuotientMap](declarations/coneprojection-isquotientmap.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coneProjection_eq_iff_of_ne_zero](declarations/coneprojection-eq-iff-of-ne-zero.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coneConnected_preserves_radius](declarations/coneconnected-preserves-radius.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coneRadius](declarations/coneradius.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coneRadius_projection](declarations/coneradius-projection.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coneRadius_continuous](declarations/coneradius-continuous.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coneConnected_jointRadialMap_eq](declarations/coneconnected-jointradialmap-eq.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [coneToFilled](declarations/conetofilled.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coneToFilled_projection](declarations/conetofilled-projection.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coneToFilled_continuous](declarations/conetofilled-continuous.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coneToFilled_surjective](declarations/conetofilled-surjective.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coneToFilled_preserves_radius](declarations/conetofilled-preserves-radius.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coneApex](declarations/coneapex.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cone_zero_eq_apex](declarations/cone-zero-eq-apex.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coneToFilled_apex](declarations/conetofilled-apex.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [coneBoundary](declarations/coneboundary.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coneBoundary_continuous](declarations/coneboundary-continuous.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coneBoundary_injective](declarations/coneboundary-injective.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coneToFilled_boundary](declarations/conetofilled-boundary.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [unitCircleConeBoundary](declarations/unitcircleconeboundary.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unitCircleConeBoundary_continuous](declarations/unitcircleconeboundary-continuous.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [coneToFilled_unitCircle_boundary](declarations/conetofilled-unitcircle-boundary.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coneToFilled_not_injective](declarations/conetofilled-not-injective.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [perimeterConeCompactSpace](declarations/perimeterconecompactspace.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [filledPolygonCompactSpace](declarations/filledpolygoncompactspace.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coneApex_ne_boundary](declarations/coneapex-ne-boundary.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [genusTwo_coneToFilled_noninjective](declarations/genustwo-conetofilled-noninjective.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [genusThree_coneToFilled_noninjective](declarations/genusthree-conetofilled-noninjective.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28049e478449c481d2758909900de959d14758053d5e88ff8d19d05ca94bcdd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCone.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
