# Surface Polygon Perimeter Circle Bijection

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [handleOrdinalEquiv](declarations/handleordinalequiv.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [directedSideOrdinalEquiv](declarations/directedsideordinalequiv.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [handleOrdinalEquiv_val](declarations/handleordinalequiv-val.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [directedSideOrdinalEquiv_val](declarations/directedsideordinalequiv-val.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [directedSideOrdinal_injective](declarations/directedsideordinal-injective.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [directedSideOrdinal_surjective](declarations/directedsideordinal-surjective.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [successorSide](declarations/successorside.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [successorSide_perimeter_seam](declarations/successorside-perimeter-seam.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [normalizedSource](declarations/normalizedsource.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [perimeterConnected_normalizedSource](declarations/perimeterconnected-normalizedsource.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalizedSource_fraction_lt_one](declarations/normalizedsource-fraction-lt-one.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [realAngularAddress](declarations/realangularaddress.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sourceAngularAddress_eq_coe_realAngularAddress](declarations/sourceangularaddress-eq-coe-realangularaddress.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalizedRealAngle_mem_Ico](declarations/normalizedrealangle-mem-ico.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normalizedRealAngle_floor](declarations/normalizedrealangle-floor.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [normalizedRealAngle_eq_of_circle_eq](declarations/normalizedrealangle-eq-of-circle-eq.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalizedSource_eq_of_angle_eq](declarations/normalizedsource-eq-of-angle-eq.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [angle_eq_iff_perimeterConnected](declarations/angle-eq-iff-perimeterconnected.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [perimeterAngle_injective](declarations/perimeterangle-injective.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [circleFundamentalRepresentative](declarations/circlefundamentalrepresentative.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [circleRepresentative_floor_lt](declarations/circlerepresentative-floor-lt.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sourceOfCircleRepresentative](declarations/sourceofcirclerepresentative.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [perimeterAngle_surjective](declarations/perimeterangle-surjective.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [perimeterAngle_bijective](declarations/perimeterangle-bijective.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [unpairedPerimeter_compactSpace](declarations/unpairedperimeter-compactspace.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [circlePeriodPositive](declarations/circleperiodpositive.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [perimeterHomeomorphAddCircle](declarations/perimeterhomeomorphaddcircle.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [perimeterHomeomorphUnitAddCircle](declarations/perimeterhomeomorphunitaddcircle.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [perimeterHomeomorph_source_formula](declarations/perimeterhomeomorph-source-formula.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [attaching_noninjective_despite_perimeter_circle](declarations/attaching-noninjective-despite-perimeter-circle.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [genus_two_circle_bijection](declarations/genus-two-circle-bijection.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [genus_three_circle_bijection](declarations/genus-three-circle-bijection.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79da2d921bb87f1eb4628d56722f11a8b429720c024c9dc8c59ebb0ebdb566a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
