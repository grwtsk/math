# Heat Flow Lossless Compression Cover

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07d01211798fe4e845067da3fced11bea45821c4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/HeatFlowLosslessCompressionCover.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [LosslessCodec](declarations/losslesscodec.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [LosslessCodec.encode_injective](declarations/losslesscodec-encode-injective.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LosslessCodec.hasTotalLosslessDecoder](declarations/losslesscodec-hastotallosslessdecoder.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [huffmanByteCodec](declarations/huffmanbytecodec.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [LosslessProcessCover](declarations/losslessprocesscover.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [LosslessProcessCover.recover_after_codedStep](declarations/losslessprocesscover-recover-after-codedstep.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ZeroBoundProcessCover](declarations/zeroboundprocesscover.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ZeroBoundProcessCover.decodeZero](declarations/zeroboundprocesscover-decodezero.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ZeroBoundProcessCover.recover_bound_zero](declarations/zeroboundprocesscover-recover-bound-zero.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [bombieri_two_moment_profile_is_not_lossless](declarations/bombieri-two-moment-profile-is-not-lossless.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [no_lossless_codec_with_bombieri_moment_encoding](declarations/no-lossless-codec-with-bombieri-moment-encoding.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [threeQuarterBoundary](declarations/threequarterboundary.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [sevenEighthBoundary](declarations/seveneighthboundary.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [boundary_gap](declarations/boundary-gap.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [AsymptoticallyFreeRefinement](declarations/asymptoticallyfreerefinement.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [AsymptoticallyFreeRefinement.eventually_fits_boundary_gap](declarations/asymptoticallyfreerefinement-eventually-fits-boundary-gap.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [FiniteStateObserver](declarations/finitestateobserver.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ConcededCoincidence](declarations/concededcoincidence.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [no_conceded_coincidence](declarations/no-conceded-coincidence.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [PostflowConcededCoincidence](declarations/postflowconcededcoincidence.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [no_postflow_conceded_coincidence](declarations/no-postflow-conceded-coincidence.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [ZeroHeightArithmeticAssumptions](declarations/zeroheightarithmeticassumptions.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [zero_height_irrational](declarations/zero-height-irrational.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero_height_transcendental_of_grh](declarations/zero-height-transcendental-of-grh.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [QuasiRiemannAccountingSystem](declarations/quasiriemannaccountingsystem.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [QuasiRiemannAccountingSystem.recovers_zero](declarations/quasiriemannaccountingsystem-recovers-zero.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [QuasiRiemannAccountingSystem.eventually_fits_gap](declarations/quasiriemannaccountingsystem-eventually-fits-gap.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [QuasiRiemannAccountingSystem.breaks_observed_postflow_coincidence](declarations/quasiriemannaccountingsystem-breaks-observed-postflow-coincidence.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef31dc707c49b7ea4e7d8c3cdc4ce46e3215267e29875d37260e74f0b2e19a52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/HeatFlowLosslessCompressionCover.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
