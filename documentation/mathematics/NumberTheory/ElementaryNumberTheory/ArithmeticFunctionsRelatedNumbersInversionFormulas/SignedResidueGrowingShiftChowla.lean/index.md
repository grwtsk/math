# Signed Residue Growing Shift Chowla

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09313398bceac03b13fc67b9def98561da23ea41`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SignedResidueGrowingShiftChowla.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [parityPairShift](declarations/paritypairshift.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [parityGrowingShiftRange](declarations/paritygrowingshiftrange.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [parityShiftBaseSet](declarations/parityshiftbaseset.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [parityShiftPairSet](declarations/parityshiftpairset.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [parityPairShift_pos](declarations/paritypairshift-pos.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [parityPair_second_eq_first_add_twiceShift](declarations/paritypair-second-eq-first-add-twiceshift.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [parityPairShift_mem_range](declarations/paritypairshift-mem-range.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [parityResidueCoordinate_add_shift_eq](declarations/parityresiduecoordinate-add-shift-eq.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [parityPairResidueCoordinate_eq_base_shift](declarations/paritypairresiduecoordinate-eq-base-shift.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mem_parityShiftPairSet_iff](declarations/mem-parityshiftpairset-iff.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [paritySignedShiftResiduePairSlice](declarations/paritysignedshiftresiduepairslice.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [paritySignedShiftResidueCorrelation](declarations/paritysignedshiftresiduecorrelation.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [paritySignedShiftResiduePairSlice_eq_correlation](declarations/paritysignedshiftresiduepairslice-eq-correlation.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_shiftSlices](declarations/paritysignedresidueconvolutionbucket-eq-sum-shiftslices.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [paritySignedResidueConvolutionBucket_eq_sum_shiftCorrelations](declarations/paritysignedresidueconvolutionbucket-eq-sum-shiftcorrelations.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [paritySignedShiftResidueFourier](declarations/paritysignedshiftresiduefourier.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [paritySignedResidueConvolutionFourier_eq_sum_shiftFourier](declarations/paritysignedresidueconvolutionfourier-eq-sum-shiftfourier.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [parityGrowingShiftResidueFrequencyMajorant](declarations/paritygrowingshiftresiduefrequencymajorant.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [parityGrowingShiftResidueFrequencyMajorant_eq_signedConvolution](declarations/paritygrowingshiftresiduefrequencymajorant-eq-signedconvolution.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [parityGrowingShiftResidueNonzeroModulusMajorant](declarations/paritygrowingshiftresiduenonzeromodulusmajorant.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [parityGrowingShiftResidueEndpointMajorant](declarations/paritygrowingshiftresidueendpointmajorant.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [parityGrowingShiftResidueEndpointMajorant_eq_signedConvolution](declarations/paritygrowingshiftresidueendpointmajorant-eq-signedconvolution.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [DyadicNaturalScaleGrowingShiftResidueFourierBudget](declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_signedConvolution](declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget-iff-signedconvolution.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicNaturalScaleGrowingShiftResidueFourierBudget_iff_nonzeroParityFourier](declarations/dyadicnaturalscalegrowingshiftresiduefourierbudget-iff-nonzeroparityfour.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [naturalScaleCongruenceL1_of_pointwiseMertens_and_growingShiftResidue](declarations/naturalscalecongruencel1-of-pointwisemertens-and-growingshiftresidue.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eee017605228cf657d492c1c55febfc2d61bc7dc25efaf3a98a35e02bd371748 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
