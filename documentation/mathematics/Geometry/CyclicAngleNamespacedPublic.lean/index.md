# Cyclic Angle Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a50b2dab904b3e3b14d8795ff736e9b3b7609b5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/CyclicAngleNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TurnCircle](declarations/turncircle.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [turnCircleEquivAngle](declarations/turncircleequivangle.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [turnCircleEquivAngle_coe](declarations/turncircleequivangle-coe.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [turnsToAngle](declarations/turnstoangle.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toAngle](declarations/toangle.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [radiansIco](declarations/radiansico.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fromAngle](declarations/fromangle.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [phaseAngle_mem_Ico](declarations/phaseangle-mem-ico.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toAngle_toReal_eq_phaseAngle_of_le_half](declarations/toangle-toreal-eq-phaseangle-of-le-half.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toAngle_toReal_eq_phaseAngle_sub_two_pi_of_half_lt](declarations/toangle-toreal-eq-phaseangle-sub-two-pi-of-half-lt.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fromAngle_toAngle](declarations/fromangle-toangle.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toAngle_fromAngle](declarations/toangle-fromangle.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [normalizedPhaseEquivAngle](declarations/normalizedphaseequivangle.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toAngle_zero](declarations/toangle-zero.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toAngle_quarter](declarations/toangle-quarter.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toAngle_half](declarations/toangle-half.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toAngle_threeQuarters](declarations/toangle-threequarters.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fromAngle_zero](declarations/fromangle-zero.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fromAngle_piDivTwo](declarations/fromangle-pidivtwo.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fromAngle_pi](declarations/fromangle-pi.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fromAngle_threePiDivTwo](declarations/fromangle-threepidivtwo.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lightness](declarations/lightness.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [opacityBase](declarations/opacitybase.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [greenShift](declarations/greenshift.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [opacity](declarations/opacity.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lightness_turnsToAngle](declarations/lightness-turnstoangle.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [opacityBase_turnsToAngle](declarations/opacitybase-turnstoangle.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [greenShift_turnsToAngle](declarations/greenshift-turnstoangle.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [opacity_turnsToAngle](declarations/opacity-turnstoangle.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lightness_toAngle](declarations/lightness-toangle.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [opacityBase_toAngle](declarations/opacitybase-toangle.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [greenShift_toAngle](declarations/greenshift-toangle.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [opacity_toAngle](declarations/opacity-toangle.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89473ec1c28172cfb33aad0bed211dd506099c043447c23cfbd1925c054b43d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
