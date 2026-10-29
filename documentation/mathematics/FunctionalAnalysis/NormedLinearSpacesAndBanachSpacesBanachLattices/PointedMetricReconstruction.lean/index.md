# Pointed Metric Reconstruction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d85485f03537bd08aa9a93f884f3776a2e45f86`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pointedDistanceProfile](declarations/pointeddistanceprofile.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pointedDistanceProfile_witnesses_distance](declarations/pointeddistanceprofile-witnesses-distance.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [pointedDistanceProfile_injective](declarations/pointeddistanceprofile-injective.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [MetricProfileProposal](declarations/metricprofileproposal.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [FullProfileRealization](declarations/fullprofilerealization.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [FullProfileRealization.unique](declarations/fullprofilerealization-unique.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [probeGap](declarations/probegap.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [probeGap_le_distance](declarations/probegap-le-distance.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [MetricDetermining](declarations/metricdetermining.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [denseBeacon_metricDetermining](declarations/densebeacon-metricdetermining.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [BeaconProfileRealization](declarations/beaconprofilerealization.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [BeaconProfileRealization.unique](declarations/beaconprofilerealization-unique.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [CertifiedFiniteAnchorNet](declarations/certifiedfiniteanchornet.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gap_upper](declarations/gap-upper.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [gap_lower_witness](declarations/gap-lower-witness.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [finiteProbeDistance](declarations/finiteprobedistance.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [finiteProbeDistance_le](declarations/finiteprobedistance-le.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [distance_sub_resolution_le_finiteProbeDistance](declarations/distance-sub-resolution-le-finiteprobedistance.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [finiteProbeDistance_bounds](declarations/finiteprobedistance-bounds.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [ProbeProfileEmbedding](declarations/probeprofileembedding.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isometry](declarations/isometry.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [completionMap_isometry](declarations/completionmap-isometry.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [ProbeProfileCompletionRecovery](declarations/probeprofilecompletionrecovery.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [extension](declarations/extension.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [extension_isometry](declarations/extension-isometry.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [extension_denseRange](declarations/extension-denserange.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [extension_surjective](declarations/extension-surjective.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [isometryEquiv](declarations/isometryequiv.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [scalarNorm_not_injective](declarations/scalarnorm-not-injective.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pointedNormProfile](declarations/pointednormprofile.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pointedNormProfile_eq_distanceProfile](declarations/pointednormprofile-eq-distanceprofile.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pointedNormProfile_injective](declarations/pointednormprofile-injective.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71b3f20fc978a1d5ea23c65f69892e6c52bc7888522dd2ecd7d13e64ba5ce09e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
