# Verification target: GRWTSK.Topology.MetricTopology.PointedMetricReconstruction.Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c0d092d1e5b1eb9a39727a3bda40bfbf1fa7d85",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c0d092d1e5b1eb9a39727a3bda40bfbf1fa7d85`.

Source path: `GRWTSK/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Terrain.BooleanYoneda` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Core.SemanticIdentity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Completion` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointedDistanceProfile](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/pointeddistanceprofile--1f8bf43b712960b349e9df23.md) | 53 | `declaration-track:1f8bf43b712960b349e9df2388b2bb347cc02db30c65f9f5f928ad7154dade08` |
| 2 | `theorem` | [pointedDistanceProfile_witnesses_distance](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/pointeddistanceprofile-witnesses-distance--2d7638fd256cc29fedd3231a.md) | 60 | `result-track:2d7638fd256cc29fedd3231aa17d03bbd0be8ea26b578e4f5c31d65d77c73221` |
| 3 | `theorem` | [pointedDistanceProfile_injective](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/pointeddistanceprofile-injective--c0640adb9857e9945ff5d0fb.md) | 77 | `result-track:c0640adb9857e9945ff5d0fbcb278813e91dde58915fd2292272e6bb2b29a33e` |
| 4 | `structure` | [MetricProfileProposal](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/metricprofileproposal--9b1f604f85b78edc49c7a3df.md) | 95 | `declaration-track:9b1f604f85b78edc49c7a3df6e2ddadff1ba8afa6740675f8018e7fb345e9ec3` |
| 5 | `structure` | [FullProfileRealization](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/fullprofilerealization--300fcfefe2ee4bb33934f52f.md) | 101 | `declaration-track:300fcfefe2ee4bb33934f52f32baa0260b0aecac1542329b0206656a1b840ff9` |
| 6 | `theorem` | [FullProfileRealization.unique](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/fullprofilerealization-unique--fb67aeccb750b4ec31a3c0f4.md) | 111 | `result-track:fb67aeccb750b4ec31a3c0f4a43d18fe3f9d42b616829496a209d7a6816cfd27` |
| 7 | `def` | [probeGap](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/probegap--685da4343a34caff83f9566d.md) | 126 | `declaration-track:685da4343a34caff83f9566db94f7e860b1479398b5741bf8a270b507a179ac1` |
| 8 | `theorem` | [probeGap_le_distance](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/probegap-le-distance--c8e42df342f9408259666624.md) | 129 | `result-track:c8e42df342f9408259666624cbf84845536811395328ae7cfbe6cde93f3a01de` |
| 9 | `def` | [MetricDetermining](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/metricdetermining--3d5bcea3a6cb58048d7a4a05.md) | 139 | `declaration-track:3d5bcea3a6cb58048d7a4a0573001ab961ffbb34a7ad252b7f19f6ee83372f79` |
| 10 | `theorem` | [denseBeacon_metricDetermining](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/densebeacon-metricdetermining--ad410222232f87785ebe352b.md) | 147 | `result-track:ad410222232f87785ebe352b94105a70de59ebfd590b4913f7ce1d01ad9a5557` |
| 11 | `structure` | [BeaconProfileRealization](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/beaconprofilerealization--6619e7b5161bef43bb4283f6.md) | 177 | `declaration-track:6619e7b5161bef43bb4283f6167f096dedf8f389247259ee2f6ca9dd5b3b2626` |
| 12 | `theorem` | [BeaconProfileRealization.unique](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/beaconprofilerealization-unique--77e1dc135b285b6906de5697.md) | 186 | `result-track:77e1dc135b285b6906de5697a8edd5c77dfae36af66c423739084e79242bd4fa` |
| 13 | `structure` | [CertifiedFiniteAnchorNet](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/certifiedfiniteanchornet--15398b4d5da6565e50a042cb.md) | 208 | `declaration-track:15398b4d5da6565e50a042cb83ea29279b995cf04ad31b61f6b2d7127c390279` |
| 14 | `theorem` | [gap_upper](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/gap-upper--840de299a693e4cfb1dd94af.md) | 232 | `result-track:840de299a693e4cfb1dd94afb081f09ea6a9cca0a03fea41a21a731f241e4a9c` |
| 15 | `theorem` | [gap_lower_witness](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/gap-lower-witness--6ef2479efd27dff2a5fb17c5.md) | 243 | `result-track:6ef2479efd27dff2a5fb17c52c5bdc8014c845dbc5a56b082b4fad80db967c41` |
| 16 | `def` | [finiteProbeDistance](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/finiteprobedistance--af41ffddbbd38fe618daf78b.md) | 272 | `declaration-track:af41ffddbbd38fe618daf78bdad26b787ccd6f94a03a9dd73b00ab0a52110d4a` |
| 17 | `theorem` | [finiteProbeDistance_le](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/finiteprobedistance-le--480ab7e9dba9920bda727cc7.md) | 278 | `result-track:480ab7e9dba9920bda727cc7cde0be50cf8d3e4c1dbe113d4f1f8167d5efcd76` |
| 18 | `theorem` | [distance_sub_resolution_le_finiteProbeDistance](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/distance-sub-resolution-le-finiteprobedistance--86c749584f57bb11abaf6964.md) | 287 | `result-track:86c749584f57bb11abaf696454d98fa00ff2916b34f5a7833cf398f275715c53` |
| 19 | `theorem` | [finiteProbeDistance_bounds](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/finiteprobedistance-bounds--69a69cd699d8f24ca0288568.md) | 299 | `result-track:69a69cd699d8f24ca0288568234c6f45c47956bb89a61fef49bbd1a3e6ad0a52` |
| 20 | `structure` | [ProbeProfileEmbedding](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/probeprofileembedding--b0e56009b9f07e1b54389110.md) | 324 | `declaration-track:b0e56009b9f07e1b543891103cfa319c216b0df24da7f8cc882441e4edc1b5fc` |
| 21 | `theorem` | [isometry](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/isometry--2014a9df25f7cc44fa2500f0.md) | 332 | `result-track:2014a9df25f7cc44fa2500f09d5025a711e29b7d3ccb67f07d55413abf49928b` |
| 22 | `theorem` | [completionMap_isometry](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/completionmap-isometry--57c101c81e614aee08f11da6.md) | 341 | `result-track:57c101c81e614aee08f11da6e8654a776c890d730f37466aca4041a9da3c4b52` |
| 23 | `structure` | [ProbeProfileCompletionRecovery](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/probeprofilecompletionrecovery--624a9f0cb15661484f1bcc49.md) | 355 | `declaration-track:624a9f0cb15661484f1bcc49fcf3de6c3ac1cb0279a21774b155e1288b663d88` |
| 24 | `def` | [extension](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/extension--6bd17dd3f0baf16f0d94897a.md) | 369 | `declaration-track:6bd17dd3f0baf16f0d94897abc34e4144310bfdf43a2cc009a1e41a93a0f4177` |
| 25 | `theorem` | [extension_isometry](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/extension-isometry--f056436fb1c59280a8d47b57.md) | 377 | `result-track:f056436fb1c59280a8d47b57df53f5c30d749c7e1787ac6066c0e9cfd0487085` |
| 26 | `theorem` | [extension_denseRange](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/extension-denserange--732e11b8d5958020840b3774.md) | 388 | `result-track:732e11b8d5958020840b37749c90bb3d4a226809262a115f1f8b0434468d48df` |
| 27 | `theorem` | [extension_surjective](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/extension-surjective--f79cbc4e627ca9a72a3cc51f.md) | 404 | `result-track:f79cbc4e627ca9a72a3cc51f5e2f8352444586d637a55feea884c512f31b0825` |
| 28 | `def` | [isometryEquiv](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/isometryequiv--0d4d9fb00bdb2ed10053c51c.md) | 425 | `declaration-track:0d4d9fb00bdb2ed10053c51c47e5e3951a69964ed849ae2b166c60d05dd02ec6` |
| 29 | `theorem` | [scalarNorm_not_injective](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/scalarnorm-not-injective--e82334dbbac3b086db6c7d37.md) | 447 | `result-track:e82334dbbac3b086db6c7d37da1e45109acac45641fdbe98f91af4f47b2cdd65` |
| 30 | `def` | [pointedNormProfile](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/pointednormprofile--47baa889907dd8ab11d45224.md) | 466 | `declaration-track:47baa889907dd8ab11d4522493851aea4021571ed71e39b845895aa292335a52` |
| 31 | `theorem` | [pointedNormProfile_eq_distanceProfile](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/pointednormprofile-eq-distanceprofile--3bc43f92ca75c0624848509d.md) | 469 | `result-track:3bc43f92ca75c0624848509d8e697b08fd5989753cc26ba298d8d5855c327428` |
| 32 | `theorem` | [pointedNormProfile_injective](../../../../../mathematics/Topology/MetricTopology/PointedMetricReconstruction/Variant4bb2355578c589a39444b660abd2a2e180ad8fcc6746b236b583db5d5165be0e.lean/declarations/pointednormprofile-injective--4b584a6459ccab4cde61894c.md) | 475 | `result-track:4b584a6459ccab4cde61894c90707d051a07c14a565200ba67952dedd961e893` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
