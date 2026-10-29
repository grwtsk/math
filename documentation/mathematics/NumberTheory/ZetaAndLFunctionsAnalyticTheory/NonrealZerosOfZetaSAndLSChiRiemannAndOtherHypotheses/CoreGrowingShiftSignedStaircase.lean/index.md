# Core Growing Shift Signed Staircase

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46c3d81dbbb8633f664d2f8eac9d9da440666b28`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedStaircase.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoreGrowingShiftSignedActiveCell](declarations/coregrowingshiftsignedactivecell.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [CoreGrowingShiftSignedStaircaseIndex](declarations/coregrowingshiftsignedstaircaseindex.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [coreGrowingShiftSignedActiveCells](declarations/coregrowingshiftsignedactivecells.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [coreGrowingShiftSignedStaircasePrefixSet](declarations/coregrowingshiftsignedstaircaseprefixset.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [coreGrowingShiftSignedStaircaseLower](declarations/coregrowingshiftsignedstaircaselower.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [coreGrowingShiftSignedStaircaseUpper](declarations/coregrowingshiftsignedstaircaseupper.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [coreGrowingShiftSignedStaircaseShiftSet](declarations/coregrowingshiftsignedstaircaseshiftset.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coreGrowingShiftSignedStaircaseIndices](declarations/coregrowingshiftsignedstaircaseindices.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [coreGrowingShiftSignedActiveCellToStaircase](declarations/coregrowingshiftsignedactivecelltostaircase.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [harmonicShiftLower_eq_signedStaircaseLower](declarations/harmonicshiftlower-eq-signedstaircaselower.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [harmonicShiftUpper_eq_signedStaircaseUpper](declarations/harmonicshiftupper-eq-signedstaircaseupper.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coreGrowingShiftSignedActiveCellToStaircase_mem](declarations/coregrowingshiftsignedactivecelltostaircase-mem.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coreGrowingShiftSignedActiveCellToStaircase_injective](declarations/coregrowingshiftsignedactivecelltostaircase-injective.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coreGrowingShiftSignedActiveCellToStaircase_surjective](declarations/coregrowingshiftsignedactivecelltostaircase-surjective.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coreGrowingShiftSignedActiveCellValue](declarations/coregrowingshiftsignedactivecellvalue.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [coreGrowingShiftSignedActiveCellEnergy](declarations/coregrowingshiftsignedactivecellenergy.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coreGrowingShiftSignedStaircaseInheritedWeight](declarations/coregrowingshiftsignedstaircaseinheritedweight.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [coreGrowingShiftSignedStaircaseInheritedCell](declarations/coregrowingshiftsignedstaircaseinheritedcell.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [coreGrowingShiftSignedStaircaseInheritedPacket](declarations/coregrowingshiftsignedstaircaseinheritedpacket.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coreGrowingShiftSignedActiveCellValue_eq_inherited](declarations/coregrowingshiftsignedactivecellvalue-eq-inherited.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coreGrowingShiftWeightedPrefixPacket_eq_activeCells](declarations/coregrowingshiftweightedprefixpacket-eq-activecells.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coreGrowingShiftSignedActiveCellEnergy_eq_inheritedStaircase](declarations/coregrowingshiftsignedactivecellenergy-eq-inheritedstaircase.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [coreGrowingShiftSignedStaircaseClampedShift](declarations/coregrowingshiftsignedstaircaseclampedshift.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coreGrowingShiftSignedStaircaseWeight](declarations/coregrowingshiftsignedstaircaseweight.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coreGrowingShiftSignedStaircaseInheritedWeight_eq_explicit](declarations/coregrowingshiftsignedstaircaseinheritedweight-eq-explicit.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [coreGrowingShiftSignedStaircaseCell](declarations/coregrowingshiftsignedstaircasecell.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [coreGrowingShiftSignedStaircasePacket](declarations/coregrowingshiftsignedstaircasepacket.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [coreGrowingShiftSignedStaircaseInheritedPacket_eq_explicit](declarations/coregrowingshiftsignedstaircaseinheritedpacket-eq-explicit.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_signedStaircase](declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-signedstaircase.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [SubpolynomialCoreGrowingShiftSignedStaircasePacket](declarations/subpolynomialcoregrowingshiftsignedstaircasepacket.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [subpolynomialCoreGrowingShiftSignedStaircasePacket_iff_firstDifference](declarations/subpolynomialcoregrowingshiftsignedstaircasepacket-iff-firstdifference.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedStaircasePacket](declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftsignedstaircasepacket.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [SignedGrowingShiftStaircaseSource](declarations/signedgrowingshiftstaircasesource.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [ToCoreGrowingShiftSignedStaircasePacket](declarations/tocoregrowingshiftsignedstaircasepacket.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [SignedGrowingShiftStaircaseDispersionSource](declarations/signedgrowingshiftstaircasedispersionsource.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [ToCoreGrowingShiftSignedStaircasePacketFromDispersion](declarations/tocoregrowingshiftsignedstaircasepacketfromdispersion.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [signedGrowingShiftStaircaseCancellation_hostileWitness](declarations/signedgrowingshiftstaircasecancellation-hostilewitness.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b44a6fe130313c01582f81b2c00cc9fb34595949e359eea98f41dc5aae61d899 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
