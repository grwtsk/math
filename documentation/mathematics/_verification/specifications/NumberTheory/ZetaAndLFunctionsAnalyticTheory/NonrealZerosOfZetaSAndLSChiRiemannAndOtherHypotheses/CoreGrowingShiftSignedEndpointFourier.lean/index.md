# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointFourier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9deb36196c1e5f3414f44dfba228190f2f45900",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9deb36196c1e5f3414f44dfba228190f2f45900`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftSignedEndpointBilinear`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointBilinear.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointCyclicCoordinates`](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CoreGrowingShiftEndpointCyclicCoordinates.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Analysis.Fourier.ZMod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zmodValEquiv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/zmodvalequiv.md) | 24 | `declaration-track:b0673e2fcf47ca1ded321eecc07e29892ef31726a71923e074ef3372e1c3abc0` |
| 2 | `theorem` | [sum_zmod_eq_sum_fin](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/sum-zmod-eq-sum-fin.md) | 33 | `result-track:f6736ff278a87d3a2f2c028d0104433bb85c180bdf8aa83a79f97d9a8ba651a8` |
| 3 | `theorem` | [sum_fin_pair_indicator_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/sum-fin-pair-indicator-eq.md) | 44 | `result-track:524ec77d285764e96370efbcbc78988f348478e04b4de804e1592ee6e13c48fa` |
| 4 | `def` | [coreGrowingShiftSignedEndpointBilinearSlice](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointbilinearslice.md) | 89 | `declaration-track:e33d4125e8d61cf0f8db05daea29724af581868d999c19f10355974c81b1465d` |
| 5 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_eq_sum_slices](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointbilinearpacket-eq-sum-slices.md) | 96 | `result-track:0d112e51e8577b5e6af7ab41cdb3f61f1b9d9549a9e9e304d7faf87806d7744f` |
| 6 | `def` | [coreGrowingShiftEndpointMobiusZeroPad](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftendpointmobiuszeropad.md) | 109 | `declaration-track:6bf36c7405b8f688287a6fe683441f0dd9991397023fe0b6a82870bce91ed64e` |
| 7 | `def` | [coreGrowingShiftEndpointKernelZeroPad](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftendpointkernelzeropad.md) | 116 | `declaration-track:4b901f3b859ec47161324972c1d32c6e133ff9f753095e908b966074b8bfa966` |
| 8 | `def` | [coreGrowingShiftSignedEndpointZeroPaddedSlice](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointzeropaddedslice.md) | 124 | `declaration-track:21647859e2c78e0daded84da4027a3bb1892b94fc52584006051a8ce32e84ad9` |
| 9 | `theorem` | [coreGrowingShiftEndpoint_natCast_injective](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftendpoint-natcast-injective.md) | 133 | `result-track:b8fcde092f3580511440268219b28e84c528fc081f49e532b15097d870af98ac` |
| 10 | `theorem` | [coreGrowingShiftSignedEndpointBilinearSlice_eq_zeroPadded](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointbilinearslice-eq-zeropadded.md) | 146 | `result-track:a4a7f7eedf9d78eb17bcc682cf708962f0e121bc0889b1a3d22f04c770531600` |
| 11 | `theorem` | [finite_zmod_pairing_eq_dft](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/finite-zmod-pairing-eq-dft.md) | 225 | `result-track:e7144a255f79ce2e887f0405ec12e3fda92036b870a73749bb1f3de4f558de9d` |
| 12 | `def` | [finiteZModKernelDFT2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/finitezmodkerneldft2.md) | 275 | `declaration-track:2d7cfd4fdb5c64e0346a182e99116740a025c3a06defae7a28206e3a0ac112a1` |
| 13 | `theorem` | [finite_zmod_bilinear_eq_iterated_dft](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/finite-zmod-bilinear-eq-iterated-dft.md) | 284 | `result-track:ea7975e04c692fd6965c772078f7b25fb1d7127731af519c091746168d6338ce` |
| 14 | `def` | [coreGrowingShiftEndpointKernelDFT2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftendpointkerneldft2.md) | 355 | `declaration-track:a4f12e177ed44495d42d0b46109049ec924704a7033ad64e14b760001cc61a82` |
| 15 | `def` | [coreGrowingShiftSignedEndpointFourierSlice](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointfourierslice.md) | 362 | `declaration-track:23957e8d66593a1821b6433be0920d730adca908810a97e8e34a70ec0f611966` |
| 16 | `theorem` | [coreGrowingShiftSignedEndpointZeroPaddedSlice_eq_fourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointzeropaddedslice-eq-fourier.md) | 373 | `result-track:95ea6714a1847bdd8f0dfc42b58824f8513bff7cd642eab83b4b31ba4e2a1c38` |
| 17 | `def` | [coreGrowingShiftSignedEndpointFourierPacketComplex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointfourierpacketcomplex.md) | 385 | `declaration-track:0791f104b443a0f2da6819127a8432c24fd63431fb16066704287d38dd3de61b` |
| 18 | `def` | [coreGrowingShiftSignedEndpointFourierPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointfourierpacket.md) | 392 | `declaration-track:8e7a4bf64fb826f92cd5db6c0e95ae50be84d605f725cb66d197d66dba5cd68c` |
| 19 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_cast_eq_fourierComplex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointbilinearpacket-cast-eq-fouriercomplex.md) | 398 | `result-track:4e8d561923cba51d32b85a561e92b09cff447263d4f3bed313ac56448a523722` |
| 20 | `theorem` | [coreGrowingShiftSignedEndpointFourierPacketComplex_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointfourierpacketcomplex-im.md) | 411 | `result-track:9d6e6c8eaa813b61b1ef6c1423f1f1c8c590cd37483c1a6c69e6b16c554fa000` |
| 21 | `theorem` | [coreGrowingShiftSignedEndpointBilinearPacket_eq_fourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftsignedendpointbilinearpacket-eq-fourier.md) | 418 | `result-track:a23d5d0ed5186b6f40c5377258ffb26ff63ac454a84558f3c179568b71700279` |
| 22 | `theorem` | [coreGrowingShiftFirstDifferencePacket_eq_two_mul_endpointFourier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/coregrowingshiftfirstdifferencepacket-eq-two-mul-endpointfourier.md) | 428 | `result-track:ce5bd6d2db8f159533254895cbc018b01796808418027cc5b93049a11649e0ee` |
| 23 | `def` | [SubpolynomialCoreGrowingShiftSignedEndpointFourierPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/subpolynomialcoregrowingshiftsignedendpointfourierpacket.md) | 437 | `declaration-track:903c5830a2fd59b6124e3144155312b91c1464860b099ec9fa7bf784f67e3680` |
| 24 | `theorem` | [subpolynomialCoreGrowingShiftSignedEndpointFourierPacket_iff_bilinear](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/subpolynomialcoregrowingshiftsignedendpointfourierpacket-iff-bilinear.md) | 444 | `result-track:739df34c76e0dad03d833f789624665557c4989356b277fac80684f61deaa413` |
| 25 | `theorem` | [riemannHypothesis_of_subpolynomialCoreGrowingShiftSignedEndpointFourierPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/riemannhypothesis-of-subpolynomialcoregrowingshiftsignedendpointfourierp.md) | 463 | `result-track:86f13df478b16d0545a469f88b6ffad69b5e3371cc538a614b08b5e3643b3074` |
| 26 | `structure` | [SignedEndpointFourierSource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/signedendpointfouriersource.md) | 472 | `declaration-track:c5101f5a1018fa299716de0d1fe18cf74ea146893d26bcfd351291f674635e49` |
| 27 | `structure` | [ToCoreGrowingShiftSignedEndpointFourierPacket](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/tocoregrowingshiftsignedendpointfourierpacket.md) | 486 | `declaration-track:1e01617ab8cdc61210ceaf6a2a4497c20365173024084117d42fb87445cf12ae` |
| 28 | `theorem` | [riemannHypothesis_of_signedEndpointFourierAdapter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/riemannhypothesis-of-signedendpointfourieradapter.md) | 504 | `result-track:f5f3be12af70a01597bb7c2378eefb0a48aa4399ca5dd7ab8c2431b6af57162b` |
| 29 | `theorem` | [signedEndpointFourierCancellation_hostileWitness](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CoreGrowingShiftSignedEndpointFourier.lean/declarations/signedendpointfouriercancellation-hostilewitness.md) | 525 | `result-track:a0c7ba542da08ab8701f87f16738b7436fbfaca912e2b36f56c23f6a5b05beb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=334748eb37c7842a3119895ae865008f1d855495984964e4fd24a771a510aa75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointFourier.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
