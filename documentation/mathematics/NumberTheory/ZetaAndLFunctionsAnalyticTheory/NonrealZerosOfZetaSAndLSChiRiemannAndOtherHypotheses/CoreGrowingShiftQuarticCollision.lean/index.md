# Core Growing Shift Quartic Collision

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78447c27a530ef64b83c0f353944c82a9606eb56`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftQuarticCollision.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTwoPointQuarticUpperTriangle](declarations/mertenstwopointquarticuppertriangle.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mertensTwoPointQuarticCell_comm](declarations/mertenstwopointquarticcell-comm.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mertensTwoPointQuarticRectangle_succ](declarations/mertenstwopointquarticrectangle-succ.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mertensTwoPointQuarticDiagonal_succ](declarations/mertenstwopointquarticdiagonal-succ.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mertensTwoPointQuarticUpperTriangle_succ](declarations/mertenstwopointquarticuppertriangle-succ.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mertensTwoPointQuarticOffDiagonal_eq_two_mul_upperTriangle](declarations/mertenstwopointquarticoffdiagonal-eq-two-mul-uppertriangle.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mertensTwoPointQuarticCollisionUpper](declarations/mertenstwopointquarticcollisionupper.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [mertensTwoPointQuarticCollisionFreeUpper](declarations/mertenstwopointquarticcollisionfreeupper.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mertensTwoPointQuarticUpperTriangle_eq_collision_add_free](declarations/mertenstwopointquarticuppertriangle-eq-collision-add-free.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mertensTwoPointQuarticCollisionCell](declarations/mertenstwopointquarticcollisioncell.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mertensTwoPointQuarticCell_eq_collisionCell](declarations/mertenstwopointquarticcell-eq-collisioncell.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [mertensTwoPointQuarticCollisionUpper_eq_repeatedMiddle](declarations/mertenstwopointquarticcollisionupper-eq-repeatedmiddle.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [MertensQuarticMiddleFormsDistinct](declarations/mertensquarticmiddleformsdistinct.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mertensQuarticMiddleFormsDistinct_iff](declarations/mertensquarticmiddleformsdistinct-iff.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mertensQuarticCollision_not_middleDistinct](declarations/mertensquarticcollision-not-middledistinct.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coreGrowingShiftQuarticUpperEnergy](declarations/coregrowingshiftquarticupperenergy.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coreGrowingShiftQuarticCollisionEnergy](declarations/coregrowingshiftquarticcollisionenergy.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [coreGrowingShiftQuarticCollisionFreeEnergy](declarations/coregrowingshiftquarticcollisionfreeenergy.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coreGrowingShiftQuarticOffDiagonalEnergy_eq_two_mul_upper](declarations/coregrowingshiftquarticoffdiagonalenergy-eq-two-mul-upper.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coreGrowingShiftQuarticUpperEnergy_eq_collision_add_free](declarations/coregrowingshiftquarticupperenergy-eq-collision-add-free.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coreGrowingShiftQuarticOffDiagonalEnergy_eq_collision_split](declarations/coregrowingshiftquarticoffdiagonalenergy-eq-collision-split.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [SubpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation](declarations/subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [subpolynomialCoreGrowingShiftQuarticCollisionSeparatedCompensation_iff_offDiagonal](declarations/subpolynomialcoregrowingshiftquarticcollisionseparatedcompensation-iff-o.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [riemannHypothesis_of_coreGrowingShiftQuarticCollisionSeparatedCompensation](declarations/riemannhypothesis-of-coregrowingshiftquarticcollisionseparatedcompensati.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [GrowingShiftCollisionSeparatedQuarticSource](declarations/growingshiftcollisionseparatedquarticsource.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [ToCoreGrowingShiftQuarticCollisionSeparatedAdapter](declarations/tocoregrowingshiftquarticcollisionseparatedadapter.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [riemannHypothesis_of_collisionSeparatedQuarticAdapter](declarations/riemannhypothesis-of-collisionseparatedquarticadapter.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0c614c788e7a78917f6a025b7e1949c64f5ea71fe9f6b0cad69a583f7573e97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftQuarticCollision.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
