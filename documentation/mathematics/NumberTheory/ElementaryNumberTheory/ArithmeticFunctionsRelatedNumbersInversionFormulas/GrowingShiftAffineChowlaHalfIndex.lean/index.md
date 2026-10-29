# Growing Shift Affine Chowla Half Index

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9242ab7f752131ddfcc560324898aab75bf0f927`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GrowingShiftAffineChowlaHalfIndex.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [parityHalfIndexAffineBaseSet](declarations/parityhalfindexaffinebaseset.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [halfIndex_mem_of_parityAffineBase](declarations/halfindex-mem-of-parityaffinebase.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [parityAffineBase_mem_of_halfIndex](declarations/parityaffinebase-mem-of-halfindex.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [two_mul_half_add_parity_eq](declarations/two-mul-half-add-parity-eq.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reconstructedParity_half_eq](declarations/reconstructedparity-half-eq.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sum_parityAffineShiftBaseSet_eq_halfIndex](declarations/sum-parityaffineshiftbaseset-eq-halfindex.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [halfIndexLowerAffineForm](declarations/halfindexloweraffineform.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [halfIndexUpperAffineForm](declarations/halfindexupperaffineform.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [halfIndexUpperAffineForm_eq_lower_add_shift](declarations/halfindexupperaffineform-eq-lower-add-shift.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [doubledSquareModulusFrequency](declarations/doubledsquaremodulusfrequency.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [affineChowlaShiftPhase](declarations/affinechowlashiftphase.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [halfIndexAffineChowlaCore](declarations/halfindexaffinechowlacore.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [parityAffineShiftResidueCoordinate_reconstructed](declarations/parityaffineshiftresiduecoordinate-reconstructed.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stdAddChar_affineShift_eq_shift_mul_doubled](declarations/stdaddchar-affineshift-eq-shift-mul-doubled.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [parityGrowingShiftAffineChowlaTwist_eq_halfIndex](declarations/paritygrowingshiftaffinechowlatwist-eq-halfindex.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [halfIndexAffineChowlaShiftAggregate](declarations/halfindexaffinechowlashiftaggregate.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sum_growingShiftAffineChowlaTwist_eq_halfIndexAggregate](declarations/sum-growingshiftaffinechowlatwist-eq-halfindexaggregate.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [halfIndexAffineChowlaFrequencyMajorant](declarations/halfindexaffinechowlafrequencymajorant.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [halfIndexAffineChowlaFrequencyMajorant_eq_growingShift](declarations/halfindexaffinechowlafrequencymajorant-eq-growingshift.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [halfIndexAffineChowlaNonzeroModulusMajorant](declarations/halfindexaffinechowlanonzeromodulusmajorant.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [halfIndexAffineChowlaNonzeroModulusMajorant_eq_growingShift](declarations/halfindexaffinechowlanonzeromodulusmajorant-eq-growingshift.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [halfIndexAffineChowlaEndpointMajorant](declarations/halfindexaffinechowlaendpointmajorant.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [halfIndexAffineChowlaEndpointMajorant_eq_growingShift](declarations/halfindexaffinechowlaendpointmajorant-eq-growingshift.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [DyadicNaturalScaleHalfIndexAffineChowlaBudget](declarations/dyadicnaturalscalehalfindexaffinechowlabudget.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicNaturalScaleHalfIndexAffineChowlaBudget_iff_growingShift](declarations/dyadicnaturalscalehalfindexaffinechowlabudget-iff-growingshift.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_halfIndexAffineChowla](declarations/naturalscalecongruencel1-of-pointwisemertens-and-halfindexaffinechowla.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ToHalfIndexAffineChowlaBudgetAdapter](declarations/tohalfindexaffinechowlabudgetadapter.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [FixedFormHalfIndexAffineChowlaData](declarations/fixedformhalfindexaffinechowladata.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FixedFormHalfIndexAffineChowlaSource](declarations/fixedformhalfindexaffinechowlasource.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [FixedFormHalfIndexAffineChowlaAdapter](declarations/fixedformhalfindexaffinechowlaadapter.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [DoubledFrequencyCoverageAdapter](declarations/doubledfrequencycoverageadapter.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d51fc10da9d7d7862d15f5dabc3b1e93656c298553424ddd0992250e093d3fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
