# Verification target: Pointed Metric Reconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d85485f03537bd08aa9a93f884f3776a2e45f86",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d85485f03537bd08aa9a93f884f3776a2e45f86`.

Source path: `GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Terrain.BooleanYoneda` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Core.SemanticIdentity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Completion` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointedDistanceProfile](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/pointeddistanceprofile.md) | 45 | `declaration-track:ee9b7a213fd4524915fb069f9399cd27886c4ae2fb4b7b0e21127008b2fd8f82` |
| 2 | `theorem` | [pointedDistanceProfile_witnesses_distance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/pointeddistanceprofile-witnesses-distance.md) | 52 | `result-track:3a0caa51a5a2dc3b59b705723eea10b6abe5f72c2e65be1a86b0b0a5369baf27` |
| 3 | `theorem` | [pointedDistanceProfile_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/pointeddistanceprofile-injective.md) | 69 | `result-track:f51e6c34e84c3a9c777e6cae450a5fbfc93865bee3661bdf626aeee8353def26` |
| 4 | `structure` | [MetricProfileProposal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/metricprofileproposal.md) | 87 | `declaration-track:367c779d601c1a170d9c03159e161e20a27cdb71d2bd7fd9528759f84dedd9d4` |
| 5 | `structure` | [FullProfileRealization](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/fullprofilerealization.md) | 93 | `declaration-track:8c4ff75574c89d9271f9a4d98aa16c4fbd80673c2e494c4d6b0a8c44291ac792` |
| 6 | `theorem` | [FullProfileRealization.unique](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/fullprofilerealization-unique.md) | 103 | `result-track:3e3d0685c81a2bd63284e2b0d81ba07ec11ad58c50fbe0c8be3a110385401f6f` |
| 7 | `def` | [probeGap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/probegap.md) | 118 | `declaration-track:3f13d492790295aca3ee5a1ddf7fa4e3240622e1a46d77e79d2b6644d9392aaf` |
| 8 | `theorem` | [probeGap_le_distance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/probegap-le-distance.md) | 121 | `result-track:0fcd179ce8fd3288868ab0cb6d6d553575538218d7eefbfd27495d61b5dba845` |
| 9 | `def` | [MetricDetermining](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/metricdetermining.md) | 131 | `declaration-track:dc4b9aca433af49af715a0d42d75b484ba5e72365fb983375121a67e80e1a3ac` |
| 10 | `theorem` | [denseBeacon_metricDetermining](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/densebeacon-metricdetermining.md) | 139 | `result-track:d5bfb1eb6e575921c1bc9463ef9cc1fca79a2b2e640c7cf9ef03a94ab717e9b2` |
| 11 | `structure` | [BeaconProfileRealization](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/beaconprofilerealization.md) | 169 | `declaration-track:08e54e372ee51c288f129670de57e3b806fefd80118261aace47f2f46754c0e8` |
| 12 | `theorem` | [BeaconProfileRealization.unique](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/beaconprofilerealization-unique.md) | 178 | `result-track:44ec39592b0f5919acd185f201d777c75ea8f0eee095dace4ffbcf297e3ac73c` |
| 13 | `structure` | [CertifiedFiniteAnchorNet](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/certifiedfiniteanchornet.md) | 200 | `declaration-track:4882609b8db8b4462996b447d5ffa21be2139b925353086b3b08465cb057a762` |
| 14 | `theorem` | [gap_upper](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/gap-upper.md) | 224 | `result-track:9a8d3bbdd4db0efa1605098a3460a96895bdb8a9663ce8c1471e3f80010184de` |
| 15 | `theorem` | [gap_lower_witness](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/gap-lower-witness.md) | 235 | `result-track:c45f26bae16822e04eb6242eb03e280af8aa528800358f40159a94f4799109bb` |
| 16 | `def` | [finiteProbeDistance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/finiteprobedistance.md) | 264 | `declaration-track:f98e89176d7a4ed6b465a1e05efd42db5b8d8289721876e37746682dacefa4c3` |
| 17 | `theorem` | [finiteProbeDistance_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/finiteprobedistance-le.md) | 270 | `result-track:a12fb44bfd18157c97f33b8f6c623a39e46467f026d09091b1b5c51bb494ddfc` |
| 18 | `theorem` | [distance_sub_resolution_le_finiteProbeDistance](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/distance-sub-resolution-le-finiteprobedistance.md) | 279 | `result-track:2b56bca9d19c4cc48c6a009c682a291dcde63918afc88e701255a04dd8202cb7` |
| 19 | `theorem` | [finiteProbeDistance_bounds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/finiteprobedistance-bounds.md) | 291 | `result-track:fb0c8e07c2bccbb0bb5051137502668ca97cf78f5c7b640411f8f5b197641b53` |
| 20 | `structure` | [ProbeProfileEmbedding](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/probeprofileembedding.md) | 316 | `declaration-track:7d9273a1aa6d4e2d978ad7288edafdbd93d2210bf546d7ed085f9b301ac431b2` |
| 21 | `theorem` | [isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/isometry.md) | 324 | `result-track:3b546f1daf680365f3ca1b0a5d0a304c4bb1a8f746e6ff53460cc528c01b6d2d` |
| 22 | `theorem` | [completionMap_isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/completionmap-isometry.md) | 333 | `result-track:799b2f43ad52a8274e65a335188a6f0c6fbef43a3d80238aca7872730c227bfc` |
| 23 | `structure` | [ProbeProfileCompletionRecovery](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/probeprofilecompletionrecovery.md) | 347 | `declaration-track:a6b97c861ceba578cba2ef20b0ee7ac32d3d74c4d6e75ed2a45942ed9e8fbd06` |
| 24 | `def` | [extension](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/extension.md) | 361 | `declaration-track:2ea387755440edd363e23f43648fab07912dbfbed9fa799b6fed9cbf968dc4e4` |
| 25 | `theorem` | [extension_isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/extension-isometry.md) | 369 | `result-track:667bfa06464363798c54dfb297be55fd0e019baaa354b16ff1ec88e3950a0317` |
| 26 | `theorem` | [extension_denseRange](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/extension-denserange.md) | 380 | `result-track:51894db02a5e12493d75aad285f91430036b763f2d2978fc1ad8b42162c939db` |
| 27 | `theorem` | [extension_surjective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/extension-surjective.md) | 396 | `result-track:2eacf456d94b2649faf861abc6709ffd3fbea9e7b6bc223e5908de18c100d0ff` |
| 28 | `def` | [isometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/isometryequiv.md) | 417 | `declaration-track:6447b7567eba7f227e659888c3f31e52a6ea6151ec3098cffc57ed2ad1f0baa4` |
| 29 | `theorem` | [scalarNorm_not_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/scalarnorm-not-injective.md) | 439 | `result-track:5545f2043714242ee726d4ebf581fcb1b37b811e2d4c707c681f13ca8dc52d06` |
| 30 | `def` | [pointedNormProfile](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/pointednormprofile.md) | 458 | `declaration-track:d4e735b6e7d2f6d3c576a491a71b82f95740519de160b964a5dcbf675d43ccae` |
| 31 | `theorem` | [pointedNormProfile_eq_distanceProfile](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/pointednormprofile-eq-distanceprofile.md) | 461 | `result-track:6b53e7258e0925d9cf378091d4dcca56d817c66782373438c93b0eb2b445f8ba` |
| 32 | `theorem` | [pointedNormProfile_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/PointedMetricReconstruction.lean/declarations/pointednormprofile-injective.md) | 467 | `result-track:90a11ee21ac9700235385162d2168f24d04fc9429c283b0868cf436f80c5fb3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d047fef719f65b25d32762b70b9317e6f602f4c60fb9389d8b2eb90de3afbef4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/PointedMetricReconstruction/Variant25a7ed6931195a8d3f29347bbdacabf969d3303ec94f9f7353f7f663342cb938.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
