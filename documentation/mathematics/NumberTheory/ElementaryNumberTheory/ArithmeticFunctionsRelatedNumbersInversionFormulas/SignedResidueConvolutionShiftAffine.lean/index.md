# Signed Residue Convolution Shift Affine

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7236c21cf397007ff1cdb40726e575081a87ce71`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedResidueConvolutionShiftAffine.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [positiveEndpointShiftSet](declarations/positiveendpointshiftset.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [parityAffineShiftBaseSet](declarations/parityaffineshiftbaseset.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [endpointParityFixedShiftPairSet](declarations/endpointparityfixedshiftpairset.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [endpointParityStrictPair_shift_spec](declarations/endpointparitystrictpair-shift-spec.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [endpointParityStrictPair_shift_mem](declarations/endpointparitystrictpair-shift-mem.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [half_add_two_mul](declarations/half-add-two-mul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [parityResidueCoordinate_add_two_shift](declarations/parityresiduecoordinate-add-two-shift.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [parityAffineShiftResidueCoordinate](declarations/parityaffineshiftresiduecoordinate.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pairResidueCoordinate_eq_affineShift](declarations/pairresiduecoordinate-eq-affineshift.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [parityPairShiftResidueCorrelation](declarations/paritypairshiftresiduecorrelation.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parityAffineShiftResidueCorrelation](declarations/parityaffineshiftresiduecorrelation.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [parityPairShiftResidueCorrelation_eq_affine](declarations/paritypairshiftresiduecorrelation-eq-affine.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_pairShifts](declarations/paritysignedresidueconvolutionbucket-eq-sum-pairshifts.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_affineShifts](declarations/paritysignedresidueconvolutionbucket-eq-sum-affineshifts.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [parityGrowingShiftAffineChowlaTwist](declarations/paritygrowingshiftaffinechowlatwist.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sum_shiftResidueCorrelation_mul_char](declarations/sum-shiftresiduecorrelation-mul-char.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [paritySignedResidueConvolutionFourier_eq_sum_affineChowlaTwists](declarations/paritysignedresidueconvolutionfourier-eq-sum-affinechowlatwists.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [parityGrowingShiftAffineChowlaFrequencyMajorant](declarations/paritygrowingshiftaffinechowlafrequencymajorant.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [parityGrowingShiftAffineChowlaFrequencyMajorant_eq_signed](declarations/paritygrowingshiftaffinechowlafrequencymajorant-eq-signed.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [parityGrowingShiftAffineChowlaNonzeroModulusMajorant](declarations/paritygrowingshiftaffinechowlanonzeromodulusmajorant.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [parityGrowingShiftAffineChowlaNonzeroModulusMajorant_eq_signed](declarations/paritygrowingshiftaffinechowlanonzeromodulusmajorant-eq-signed.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [parityGrowingShiftAffineChowlaEndpointMajorant](declarations/paritygrowingshiftaffinechowlaendpointmajorant.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [parityGrowingShiftAffineChowlaEndpointMajorant_eq_signed](declarations/paritygrowingshiftaffinechowlaendpointmajorant-eq-signed.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [DyadicNaturalScaleGrowingShiftAffineChowlaBudget](declarations/dyadicnaturalscalegrowingshiftaffinechowlabudget.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution](declarations/dyadicnaturalscalegrowingshiftaffinechowlabudget-iff-signedresidueconvol.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftAffineChowla](declarations/naturalscalecongruencel1-of-pointwisemertens-and-growingshiftaffinechowl.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c9bf54f5648d2cdce86f88b3f40cfa0e110403e75bf8a87ac1ceb837764a564 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/SignedResidueConvolutionShiftAffine.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
