# Regular Orbit Half Shift Reindex

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef8cbe12fc85e532e9c650074cb5d49d96bcbc32`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/RegularOrbitHalfShiftReindex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [positiveEvenHalfShiftSet](declarations/positiveevenhalfshiftset.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [nonnegativeOddHalfShiftSet](declarations/nonnegativeoddhalfshiftset.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sum_evenPositiveEndpointShiftSet_eq_halfShift](declarations/sum-evenpositiveendpointshiftset-eq-halfshift.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sum_oddPositiveEndpointShiftSet_eq_halfShift](declarations/sum-oddpositiveendpointshiftset-eq-halfshift.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [affineChowlaShiftPhase_two_mul](declarations/affinechowlashiftphase-two-mul.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [affineChowlaShiftPhase_two_mul_add_one](declarations/affinechowlashiftphase-two-mul-add-one.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [twoKernelEvenHalfShiftAggregate](declarations/twokernelevenhalfshiftaggregate.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [twoKernelOddHalfShiftAggregate](declarations/twokerneloddhalfshiftaggregate.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [twoKernelEvenShiftAggregate_eq_halfShift](declarations/twokernelevenshiftaggregate-eq-halfshift.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [twoKernelOddShiftAggregate_eq_phase_mul_halfShift](declarations/twokerneloddshiftaggregate-eq-phase-mul-halfshift.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [norm_affineChowlaShiftPhase_one](declarations/norm-affinechowlashiftphase-one.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [twoNonunitEvenHalfShiftOrbitMajorant](declarations/twononunitevenhalfshiftorbitmajorant.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [twoNonunitOddHalfShiftOrbitMajorant](declarations/twononunitoddhalfshiftorbitmajorant.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [twoNonunitEvenShiftOrbitMajorant_eq_halfShift](declarations/twononunitevenshiftorbitmajorant-eq-halfshift.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [twoNonunitOddShiftOrbitMajorant_eq_halfShift](declarations/twononunitoddshiftorbitmajorant-eq-halfshift.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [twoNonunitEvenHalfShiftEndpointMajorant](declarations/twononunitevenhalfshiftendpointmajorant.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [twoNonunitOddHalfShiftEndpointMajorant](declarations/twononunitoddhalfshiftendpointmajorant.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [twoNonunitEvenHalfShiftEndpointMajorant_eq_existing](declarations/twononunitevenhalfshiftendpointmajorant-eq-existing.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [twoNonunitOddHalfShiftEndpointMajorant_eq_existing](declarations/twononunitoddhalfshiftendpointmajorant-eq-existing.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [DyadicNaturalScaleTwoNonunitEvenHalfShiftBudget](declarations/dyadicnaturalscaletwononunitevenhalfshiftbudget.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [DyadicNaturalScaleTwoNonunitOddHalfShiftBudget](declarations/dyadicnaturalscaletwononunitoddhalfshiftbudget.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dyadicEvenHalfShiftBudget_iff_evenShift](declarations/dyadicevenhalfshiftbudget-iff-evenshift.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [dyadicOddHalfShiftBudget_iff_oddShift](declarations/dyadicoddhalfshiftbudget-iff-oddshift.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [regularOrbitBudget_of_evenHalf_and_oddHalf](declarations/regularorbitbudget-of-evenhalf-and-oddhalf.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [naturalScaleCongruenceL1_of_pointwise_modFour_twoUnit_halfShift](declarations/naturalscalecongruencel1-of-pointwise-modfour-twounit-halfshift.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [ToTwoNonunitHalfShiftBudgetsAdapter](declarations/totwononunithalfshiftbudgetsadapter.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [HalfConductorDescentData](declarations/halfconductordescentdata.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [HalfConductorDescentSource](declarations/halfconductordescentsource.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `abbrev` | [HalfConductorDescentAdapter](declarations/halfconductordescentadapter.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f18d93d2537d921618c8a992ebc811c4e81328d0e7b58b0584a9698eb4f94374 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitHalfShiftReindex.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
