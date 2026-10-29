# Core Growing Shift Signed Endpoint Fourier

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9deb36196c1e5f3414f44dfba228190f2f45900`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [zmodValEquiv](declarations/zmodvalequiv.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sum_zmod_eq_sum_fin](declarations/sum-zmod-eq-sum-fin.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sum_fin_pair_indicator_eq](declarations/sum-fin-pair-indicator-eq.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [coreGrowingShiftSignedEndpointBilinearSlice](declarations/coregrowingshiftsignedendpointbilinearslice.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_eq_sum_slices](declarations/coregrowingshiftsignedendpointbilinearpacket-eq-sum-slices.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [coreGrowingShiftEndpointMobiusZeroPad](declarations/coregrowingshiftendpointmobiuszeropad.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [coreGrowingShiftEndpointKernelZeroPad](declarations/coregrowingshiftendpointkernelzeropad.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coreGrowingShiftSignedEndpointZeroPaddedSlice](declarations/coregrowingshiftsignedendpointzeropaddedslice.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coreGrowingShiftEndpoint_natCast_injective](declarations/coregrowingshiftendpoint-natcast-injective.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded](declarations/coregrowingshiftsignedendpointbilinearslice-eq-zeropadded.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [finite_zmod_pairing_eq_dft](declarations/finite-zmod-pairing-eq-dft.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [finiteZModKernelDFT2](declarations/finitezmodkerneldft2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [finite_zmod_bilinear_eq_iterated_dft](declarations/finite-zmod-bilinear-eq-iterated-dft.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [coreGrowingShiftEndpointKernelDFT2](declarations/coregrowingshiftendpointkerneldft2.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coreGrowingShiftSignedEndpointFourierSlice](declarations/coregrowingshiftsignedendpointfourierslice.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coreGrowingShiftSignedEndpointZeroPaddedSlice_eq_fourier](declarations/coregrowingshiftsignedendpointzeropaddedslice-eq-fourier.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [coreGrowingShiftSignedEndpointFourierPacketComplex](declarations/coregrowingshiftsignedendpointfourierpacketcomplex.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [coreGrowingShiftSignedEndpointFourierPacket](declarations/coregrowingshiftsignedendpointfourierpacket.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_fourierComplex](declarations/coregrowingshiftsignedendpointbilinearpacket-cast-eq-fouriercomplex.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coreGrowingShiftSignedEndpointFourierPacketComplex_im](declarations/coregrowingshiftsignedendpointfourierpacketcomplex-im.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier](declarations/coregrowingshiftsignedendpointbilinearpacket-eq-fourier.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointFourier](declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-endpointfourier.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket](declarations/subpolynomialcoregrowingshiftsignedendpointfourierpacket.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subpolynomialCoreGrowingShiftSignedEndpointFourierPacket_iff_bilinear](declarations/subpolynomialcoregrowingshiftsignedendpointfourierpacket-iff-bilinear.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointFourierPacket](declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftsignedendpointfourierp.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [SignedEndpointFourierSource](declarations/signedendpointfouriersource.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ToCoreGrowingShiftSignedEndpointFourierPacket](declarations/tocoregrowingshiftsignedendpointfourierpacket.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [riemannHypothesis_of_signedEndpointFourierAdapter](declarations/riemannhypothesis-of-signedendpointfourieradapter.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [signedEndpointFourierCancellation_hostileWitness](declarations/signedendpointfouriercancellation-hostilewitness.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f79c81ec753a1f3cef2590d0d4140bd85ad5abfb3ce2b81aa4eb87652610150b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
