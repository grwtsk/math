# Prime Walk Lossless Spatial Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a47e19ca32e5c29896e2a6e4aa91ba4424e10dae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/PrimeWalkLosslessSpatialNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpatialPoint](declarations/spatialpoint.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [SpatialL2](declarations/spatiall2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [indexedMatrixAmplitude](declarations/indexedmatrixamplitude.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [indexedMatrixAmplitude_norm](declarations/indexedmatrixamplitude-norm.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [UniformLosslessSpatialCodec](declarations/uniformlosslessspatialcodec.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [UnitSpatialProfile](declarations/unitspatialprofile.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [UnitSpatialProfile.encoder](declarations/unitspatialprofile-encoder.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [UnitSpatialProfile.decoder](declarations/unitspatialprofile-decoder.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [UnitSpatialProfile.decoder_encoder](declarations/unitspatialprofile-decoder-encoder.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [UnitSpatialProfile.codec](declarations/unitspatialprofile-codec.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [unitBallIndicator](declarations/unitballindicator.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [unitBallIndicator_ne_zero](declarations/unitballindicator-ne-zero.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [normalizedUnitBallMode](declarations/normalizedunitballmode.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalizedUnitBallMode_norm](declarations/normalizedunitballmode-norm.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [canonicalUnitSpatialProfile](declarations/canonicalunitspatialprofile.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [canonicalLosslessSpatialCodec](declarations/canonicallosslessspatialcodec.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [LosslessSpatialScale](declarations/losslessspatialscale.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [CompleteConductorThreeSpatialRoute](declarations/completeconductorthreespatialroute.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [CompleteConductorThreeSpatialRoute.ofCodec](declarations/completeconductorthreespatialroute-ofcodec.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [canonicalActualSpatialRoute](declarations/canonicalactualspatialroute.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [CompleteConductorThreeSpatialRoute.sampleFunctional](declarations/completeconductorthreespatialroute-samplefunctional.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [CompleteConductorThreeSpatialRoute.sampleFunctional_norm_le](declarations/completeconductorthreespatialroute-samplefunctional-norm-le.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [CompleteConductorThreeSpatialRoute.sample_reconstructs_matrixAmplitude](declarations/completeconductorthreespatialroute-sample-reconstructs-matrixamplitude.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [SpatialCriticalDecay](declarations/spatialcriticaldecay.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [matrixCriticalDecay_iff_spatialCriticalDecay](declarations/matrixcriticaldecay-iff-spatialcriticaldecay.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [actualMatrixCriticalDecay_iff_spatialCriticalDecay](declarations/actualmatrixcriticaldecay-iff-spatialcriticaldecay.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [actualMatrixCriticalDecay_iff_canonicalSpatialCriticalDecay](declarations/actualmatrixcriticaldecay-iff-canonicalspatialcriticaldecay.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46d68698eea32d94351e00f655798585c45be04bfef5fc20b7d06a0dddb14405 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant31e65693b8dcc0eb5f5ce5c93a29ac9dd0a24e8a65611421c844b03f8140b6a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
