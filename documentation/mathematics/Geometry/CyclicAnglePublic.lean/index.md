# Cyclic Angle Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant3cd37c9e2f90501e6e38af5cd03ba9ebe44b8eb94f5f3f91b5f186ba6b88429f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c98c395ad2a5395305679e9e619825e7d98eaaa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/CyclicAnglePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TurnCircle](declarations/turncircle.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [turnCircleEquivAngle](declarations/turncircleequivangle.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [turnCircleEquivAngle_coe](declarations/turncircleequivangle-coe.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [turnsToAngle](declarations/turnstoangle.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toAngle](declarations/toangle.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [radiansIco](declarations/radiansico.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fromAngle](declarations/fromangle.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [phaseAngle_mem_Ico](declarations/phaseangle-mem-ico.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toAngle_toReal_eq_phaseAngle_of_le_half](declarations/toangle-toreal-eq-phaseangle-of-le-half.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toAngle_toReal_eq_phaseAngle_sub_two_pi_of_half_lt](declarations/toangle-toreal-eq-phaseangle-sub-two-pi-of-half-lt.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fromAngle_toAngle](declarations/fromangle-toangle.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toAngle_fromAngle](declarations/toangle-fromangle.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [normalizedPhaseEquivAngle](declarations/normalizedphaseequivangle.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toAngle_zero](declarations/toangle-zero.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [toAngle_quarter](declarations/toangle-quarter.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toAngle_half](declarations/toangle-half.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toAngle_threeQuarters](declarations/toangle-threequarters.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fromAngle_zero](declarations/fromangle-zero.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fromAngle_piDivTwo](declarations/fromangle-pidivtwo.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fromAngle_pi](declarations/fromangle-pi.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fromAngle_threePiDivTwo](declarations/fromangle-threepidivtwo.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [lightness](declarations/lightness.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [opacityBase](declarations/opacitybase.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [greenShift](declarations/greenshift.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [opacity](declarations/opacity.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lightness_turnsToAngle](declarations/lightness-turnstoangle.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [opacityBase_turnsToAngle](declarations/opacitybase-turnstoangle.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [greenShift_turnsToAngle](declarations/greenshift-turnstoangle.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [opacity_turnsToAngle](declarations/opacity-turnstoangle.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lightness_toAngle](declarations/lightness-toangle.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [opacityBase_toAngle](declarations/opacitybase-toangle.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [greenShift_toAngle](declarations/greenshift-toangle.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [opacity_toAngle](declarations/opacity-toangle.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6ac497ad64c16c603dace11989b2a2fe29e33764fe93cb72151d47b3f9a80a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant3cd37c9e2f90501e6e38af5cd03ba9ebe44b8eb94f5f3f91b5f186ba6b88429f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
