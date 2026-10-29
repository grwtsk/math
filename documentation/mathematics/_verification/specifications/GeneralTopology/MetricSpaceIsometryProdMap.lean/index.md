# Verification target: Metric Space Isometry Prod Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a69caa001c474941ef653ccabb8cccfdecaccb8",
  "lexical_observation_count": 138,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a69caa001c474941ef653ccabb8cccfdecaccb8`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Antilipschitz` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Isometry](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isometry-source-edition-2.md) | 36 | `declaration-track:bb0cba7e05f37886b1feb3ef6bce59a59e70343027998001b066a3635105bb8b` |
| 2 | `theorem` | [isometry_iff_nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isometry-iff-nndist-eq.md) | 41 | `result-track:8b2b1b2e9ee48557652c74a2a77baab21e6dcbfaee5962617c50c6a23e1f0313` |
| 3 | `theorem` | [isometry_iff_dist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isometry-iff-dist-eq.md) | 46 | `result-track:08cd6133446726a4835eb1f0cfe30ad87904bfd5482c7dd373f93e59e2c78ecc` |
| 4 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/edist-eq-source-edition-2.md) | 70 | `result-track:787465138c377e0cd5151210e7e33562154ed45802cce81b4df9e3923c953e28` |
| 5 | `theorem` | [lipschitz](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/lipschitz.md) | 73 | `result-track:3d222b606eb9a0b4179b97fa5e2aa8e15509e5249b88594ce8da79e28f1e130d` |
| 6 | `theorem` | [antilipschitz](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/antilipschitz-source-edition-2.md) | 76 | `result-track:83e39e3dc19bc8959557fe6e4cfaafb86ba21783d62cb08ba29ad16f98c41faa` |
| 7 | `theorem` | [_root_.isometry_subsingleton](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/root-isometry-subsingleton.md) | 81 | `result-track:ac000a8a1e8f4ae344f5e6f5121448cd7be670adda0c77730aa1264de4f99f43` |
| 8 | `theorem` | [_root_.isometry_id](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/root-isometry-id.md) | 85 | `result-track:66f2d6cd1cae2fa5260816258d2e93d8878501e552ac1a061872cbfbcc53678a` |
| 9 | `theorem` | [prodMap](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/prodmap.md) | 87 | `result-track:7897939186ba98f73b087b1db87ecbb3ced6fd0bfb54b66b91809511f42e3d50` |
| 10 | `theorem` | [piMap](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/pimap.md) | 94 | `result-track:7d54bfd8f75d9acc0e8102d14c837c6464769258b55f3623bf8624e603c6ae89` |
| 11 | `theorem` | [comp](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/comp.md) | 100 | `result-track:ecd46a54b39d6a9e8b8fff9814342c3cc2c2b14f54fcd04a2ef31a019573e401` |
| 12 | `theorem` | [uniformContinuous](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/uniformcontinuous.md) | 104 | `result-track:e7d5e3e573ebdb4d8e0d24b7bf96d8589a3873157671bf33b61796bea88109a8` |
| 13 | `theorem` | [isUniformInducing](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isuniforminducing.md) | 108 | `result-track:195a614e6aabf85ae0a838e1791706783ab9b97b2776ec04a16cf2a4a998fa80` |
| 14 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/tendsto-nhds-iff.md) | 111 | `result-track:9b8c4039efe7cb1883f2b9b3947c60bb63d60ba8426fb8ac73e09d1350e4be2a` |
| 15 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/continuous-source-edition-3.md) | 116 | `result-track:c7b2b7a2e72dab54e2f6846beb90574d85898d163a7e8558ddb8c556ccaa6225` |
| 16 | `theorem` | [right_inv](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/right-inv.md) | 120 | `result-track:28eaacc02963d7b1dd6de9869007b415f447dd549fb87d1bf60c0ebc9d2f74b9` |
| 17 | `theorem` | [preimage_emetric_closedBall](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-emetric-closedball.md) | 123 | `result-track:3e5dc4041a099fd2725ebe58f2a8717838e97ca9270d40fcfe2990951f37072a` |
| 18 | `theorem` | [preimage_emetric_ball](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-emetric-ball-source-edition-2.md) | 128 | `result-track:ad541242ce05d5e71022844e2c65307ad5b493dbb3f35d7a22e5c82b6bc15417` |
| 19 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/ediam-image.md) | 134 | `result-track:a65d6047d11c8d9f0c0c7706d6e9b7f2717c507ea7ec31840ba3ed7ec6a517d0` |
| 20 | `theorem` | [ediam_range](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/ediam-range.md) | 137 | `result-track:2a6dfc9ae7fb25276df190e7a66dc612666612a0a5210f4c4785ea4dff155110` |
| 21 | `theorem` | [mapsTo_emetric_ball](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/mapsto-emetric-ball.md) | 141 | `result-track:05d2f31fe57fe0ee06219cbc5b10c256e82ac97e448dea02a76b8ff5d01a4031` |
| 22 | `theorem` | [mapsTo_emetric_closedBall](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/mapsto-emetric-closedball.md) | 145 | `result-track:5971a7c7ad37ec778b609ba6b349a534f33f16b215b342437a48628da62e49a9` |
| 23 | `theorem` | [_root_.isometry_subtype_coe](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/root-isometry-subtype-coe.md) | 150 | `result-track:bb9ae2d7a63bc2c46c7493154ea827e4d82b15e75388750c53ddec300f020d16` |
| 24 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/comp-continuouson-iff.md) | 152 | `result-track:a63500df6a3e8a0c3422572810bc7281255536f1b1db38e90fe10647f203dcd8` |
| 25 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/comp-continuous-iff-source-edition-2.md) | 156 | `result-track:e68e64a36a6adf051120905a9c5da3c3eab9ebda42008fa37ba00d4b33c372c4` |
| 26 | `theorem` | [injective](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/injective.md) | 168 | `result-track:e6f0a927a8828c3513526e87f09a3a4ce146dcff7fd02668abe539af9aaec77f` |
| 27 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isuniformembedding.md) | 172 | `result-track:afc38252df35043748ecfd73911fddd206f943b6a8000897570cfe01088734e3` |
| 28 | `theorem` | [isEmbedding](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isembedding.md) | 176 | `result-track:21413597b06fc49d36e99caf5beada41537c0a47c6614d58b73364d3045d85c8` |
| 29 | `theorem` | [isClosedEmbedding](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isclosedembedding.md) | 182 | `result-track:fd580ff56e1684062bb35b8794ed6b65c08a11e56d3c2e9b1793dc39b76ea14e` |
| 30 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/diam-image.md) | 194 | `result-track:219f13cce60cee29c7887148ce7651a852c0b11b3b79ad622887d9bf3ffb8a97` |
| 31 | `theorem` | [diam_range](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/diam-range.md) | 197 | `result-track:1f2e9d2c551c22519b375587795f55a2070f687df3406e36af64464d8ee918c9` |
| 32 | `theorem` | [preimage_setOf_dist](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-setof-dist.md) | 201 | `result-track:6a5fbdf0cd2160e76839f1a455ec5fe3f5d6cd40913935693810938783e62f18` |
| 33 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-closedball.md) | 206 | `result-track:b65e3943e35340bfb188395c6bf46cec1f14b9bce040d5e8bae48ef0cadb07e2` |
| 34 | `theorem` | [preimage_ball](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-ball-source-edition-2.md) | 210 | `result-track:697a0eff60b769e418b57685f7e4f883978fb8c149b048fd2e49dae0645ce818` |
| 35 | `theorem` | [preimage_sphere](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-sphere.md) | 214 | `result-track:3b9c7fdb26a589d80ebe7d955a783e3b9a1b2f8ae29fc849422e25f9936ef171` |
| 36 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/mapsto-ball.md) | 218 | `result-track:931910485398d54eebc203d2be42e4f709d55090d90a6f751c0ccab30b76f295` |
| 37 | `theorem` | [mapsTo_sphere](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/mapsto-sphere.md) | 222 | `result-track:394d979533d694207f9be85982df2e3349417c4dcd9c80fa4f06931c4f1ccb1a` |
| 38 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/mapsto-closedball.md) | 226 | `result-track:d6d652abaf24b96e729ad7f3b69be19dc7f49dcba633cc0e7c3d86882abce422` |
| 39 | `theorem` | [IsUniformEmbedding.to_isometry](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isuniformembedding-to-isometry.md) | 238 | `result-track:bdc72e1db246ee2371a5c3f7ebc5d5966e162f243b094336f84b1ec8e3aace97` |
| 40 | `theorem` | [Topology.IsEmbedding.to_isometry](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/topology-isembedding-to-isometry.md) | 245 | `result-track:baaf5ddd55a52e694f5e046b78c0124b077211a7dece248970c075ac95845d97` |
| 41 | `theorem` | [PseudoEMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/pseudoemetricspace-isometry-induced.md) | 253 | `result-track:fdce641bc7a5f72ea9a9d83b80a25b1bb3ec52ce122af55acf1672a11fac77d6` |
| 42 | `theorem` | [PsuedoMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/psuedometricspace-isometry-induced.md) | 256 | `result-track:1231191e49f97b2d3a3c632bcc7c1fe2dc865ded36a250ee9264cce504591476` |
| 43 | `theorem` | [EMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/emetricspace-isometry-induced.md) | 259 | `result-track:9aff54869ab8b1502efb4f73552de6a4f8eb0c8468ab79439f4870eb8bcf7ec3` |
| 44 | `theorem` | [MetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/metricspace-isometry-induced.md) | 262 | `result-track:27d0925365399859c6b1e48647975286879ba5a62a342c7ed26c7d49a0a51017` |
| 45 | `class` | [IsometryClass](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isometryclass.md) | 266 | `declaration-track:64f3b9f6fb218c5bfe5e11dda40b5ea29ebc9329b0d0d3478ff0e89694b8a74c` |
| 46 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/edist-eq.md) | 278 | `result-track:5cdabf393fbaccf5aa362e411ca90bd602d24d7996930f89779db1bae7dec8d0` |
| 47 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/continuous-source-edition-2.md) | 281 | `result-track:b7d9bdc39942c1b6a258c3096e613163ded687352a8505a716cf6c018f127bc4` |
| 48 | `theorem` | [lipschitz](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/lipschitz-source-edition-2.md) | 284 | `result-track:4248d70636c8b273573302c6adf8e104d80e3bb4a5aa096b3458a26f1e30d06f` |
| 49 | `theorem` | [antilipschitz](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/antilipschitz.md) | 287 | `result-track:1612bb20cd56a8917adaff106cd83cd7d1c39ee94481debef2d4bcb7b53d9bf2` |
| 50 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/ediam-image-source-edition-2.md) | 290 | `result-track:b3ac243e8d910b15bc807cbb9838af4190005bbd936b500ba38a7bda2eec507f` |
| 51 | `theorem` | [ediam_range](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/ediam-range-source-edition-2.md) | 293 | `result-track:31f2c601cc8cc672cb4dd94bae4be5537b8d3df4d1f7cde7e9b830991edd6656` |
| 52 | `instance` | [toContinuousMapClass](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/tocontinuousmapclass.md) | 296 | `declaration-track:f01a8cc599e7df92ec0e992b9bd28fae3492745f060a293f930e82eedfec0790` |
| 53 | `instance` | [toHomeomorphClass](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/tohomeomorphclass.md) | 301 | `declaration-track:8fa3a075b42adddc5a9cbf00e0e923772e06d7d2c4b1ef4cae5fe4cfecd423b7` |
| 54 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/dist-eq.md) | 310 | `result-track:6c79bda643043c371727e5b3e3fd41a59d560288fb28842bc8b6055117845df1` |
| 55 | `theorem` | [nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/nndist-eq.md) | 313 | `result-track:1b49756860191af898d40f0a5731940fdf6c3a6ac44b8dc9228ac1b1af6f6a81` |
| 56 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/diam-image-source-edition-3.md) | 316 | `result-track:b6fa8dc3d43a20a23e592702a323f94222189a14b285dc42ff9be9ca0749c1f4` |
| 57 | `theorem` | [diam_range](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/diam-range-source-edition-2.md) | 319 | `result-track:914f07af342b2f0626a010b3630abc88b4b6f1b34c5090a65a9c2f583d2a89f4` |
| 58 | `structure` | [IsometryEquiv](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isometryequiv.md) | 328 | `declaration-track:aa91a74d043628622391e44cf205400509ec393984dcdd73373bb677b441f538` |
| 59 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/toequiv-injective.md) | 341 | `result-track:f8983664cc9fadc0c447a2e37784e271cea33907e5c4a92517c087a6d4ec8cac` |
| 60 | `theorem` | [toEquiv_inj](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/toequiv-inj.md) | 344 | `result-track:ddd5c08320dc402bb5a9ad874e7e1c5f1ae00677363868466df0e1b4da5b7189` |
| 61 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/instance.md) | 347 | `declaration-track:07934d98a65251c5b20e8a67de56ff05301d4f8319da4abdca32ba89a62aacb6` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/instance-source-edition-2.md) | 354 | `declaration-track:863228625e817648061584c5b6fb1b69521aec575e17cf0c903e1f14498f656d` |
| 63 | `theorem` | [coe_eq_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/coe-eq-toequiv.md) | 357 | `result-track:dee7efc66044b008f3e8307c1b5025f761737089e9d6879e4904de26f5ac9fd8` |
| 64 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/coe-toequiv.md) | 359 | `result-track:e3b6fc47a6490f8d8fe647b5bdfc2290731cffb7478f2f2156ce4de4777eefa4` |
| 65 | `theorem` | [coe_mk](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/coe-mk.md) | 361 | `result-track:6c07293b308a092aed9dd5a2fd5ce87c6c58d80aa2a92ba91f68e900ea68566d` |
| 66 | `theorem` | [isometry](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isometry.md) | 363 | `result-track:3b6776c726ae8323028cc8edf063445f360cdd55302319ed0fc3f961f58cfdc6` |
| 67 | `theorem` | [bijective](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/bijective.md) | 366 | `result-track:92ce693466c9a7c5083e33dfc4b1a4acd20f7af8ba64c8dda9161bdac9df05f0` |
| 68 | `theorem` | [injective](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/injective-source-edition-2.md) | 369 | `result-track:fafd56b441e84190c4b9fcaa512ec1fc2b3c1abb621bf3a0e212ac78942b8de0` |
| 69 | `theorem` | [surjective](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/surjective.md) | 372 | `result-track:257557718977d0bdb0fa0959c97f74c15d96860f58f38c9faa0b040e761d81de` |
| 70 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/edist-eq-source-edition-3.md) | 375 | `result-track:c9b9d83afd9be1d97939a964756eff16a08c600db672460ee65146a7657b3d67` |
| 71 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/dist-eq-source-edition-2.md) | 378 | `result-track:e43191c44e2c6e34756f399c285becf57e7e9a2355ef02c27e89d7e7d4c23a6f` |
| 72 | `theorem` | [nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/nndist-eq-source-edition-2.md) | 382 | `result-track:8b244cf186db3575107d4905a2bdf75da6d0c5fd10180b7cb35d39de0b919820` |
| 73 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/continuous.md) | 386 | `result-track:56bf44b0a762ce0a3489aff28d3ef22bc9f86295bdb4e36166078528d92aba48` |
| 74 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/ediam-image-source-edition-3.md) | 390 | `result-track:f9735f9d8b7eb05134b802bbd376e0cc66384ea0b236591e25538cf81dea1577` |
| 75 | `theorem` | [ext](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/ext.md) | 394 | `result-track:c78c768bbda1ecddefb694fad03cadf922fc35f3a831e3591a098a7e7f6bad99` |
| 76 | `def` | [mk'](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/mk.md) | 399 | `declaration-track:abfc59921449992ae989d0da7d763f1c238b8f376da4da063ce34105e1a077cf` |
| 77 | `def` | [refl](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/refl.md) | 408 | `declaration-track:de8ceccf0aff57d925e99c5bd15ce3e2d7d915f35891a15f5a10b4181825eb25` |
| 78 | `def` | [trans](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/trans.md) | 412 | `declaration-track:9319246c6da5fdb6c61fe406a0beb042692e1f6e99d2b22144235070400c46fb` |
| 79 | `theorem` | [trans_apply](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/trans-apply.md) | 417 | `result-track:ab8df8560a598c729acfcc3c53868d89995ce1bd0d5895653cef392d727142f1` |
| 80 | `def` | [symm](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/symm.md) | 421 | `declaration-track:dc4fa492419cc93b6d768d342a5d6689b4b9342aa17291c79d9b03eb0d490414` |
| 81 | `def` | [Simps.apply](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/simps-apply.md) | 427 | `declaration-track:35bb6a826e43e06339aedf02d7bed37762921d288647d6471165e71bd4d8a395` |
| 82 | `def` | [Simps.symm_apply](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/simps-symm-apply.md) | 430 | `declaration-track:a3529263b2b1fd285d12aad5b7e9ff3c081a4c3176f1427f2b1030b6169aedf5` |
| 83 | `theorem` | [symm_symm](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/symm-symm.md) | 436 | `result-track:291d6e055a98ce9a17d04d2be1fe6e5e1facb8192295341717de793ede0fc85a` |
| 84 | `theorem` | [symm_bijective](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/symm-bijective.md) | 438 | `result-track:b1e0fe7d1973344f8868fe8b3a207731d9200e66d735b825c7be2eea9fcf1521` |
| 85 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/apply-symm-apply.md) | 442 | `result-track:fec718fca95b80dc2388c4903485da938ff08fedbe5ea0e15e6c6ee454a9bb8e` |
| 86 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/symm-apply-apply.md) | 446 | `result-track:e337b64409bacc801b664a8b8059fcd5dca32dab26956820b6fb6398bd876e9f` |
| 87 | `theorem` | [symm_apply_eq](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/symm-apply-eq.md) | 449 | `result-track:28ccca6203aba84ab32f75daa2a0499af2f17c5c96aad2ca8166527579b91d23` |
| 88 | `theorem` | [eq_symm_apply](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/eq-symm-apply.md) | 452 | `result-track:f3e5ad6d0ca5fbadb88ec7065a68f9dc923e4cc487a917ed0e5b8bc5279c6e35` |
| 89 | `theorem` | [symm_comp_self](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/symm-comp-self.md) | 455 | `result-track:badbad641dab84e889b4386ab8a78f260f965d59b74882e54f8b78c45d3a6d17` |
| 90 | `theorem` | [self_comp_symm](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/self-comp-symm.md) | 457 | `result-track:d216a7937dc2e28242e4f9b36870d04e5ac0681048d2d750318010018aa54bd3` |
| 91 | `theorem` | [range_eq_univ](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/range-eq-univ.md) | 459 | `result-track:860d2f1b6dc2ddf9c89451ddf930f6cd541cf57ee0295155f74e112979afd24a` |
| 92 | `theorem` | [image_symm](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/image-symm.md) | 461 | `result-track:ad13377b8ce34fae1b11c0322d3c10112302f7d72f72e578660c14c1a1fb911a` |
| 93 | `theorem` | [preimage_symm](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-symm.md) | 464 | `result-track:f4ebd007a465fc04ca8e7566156144c8b2513ff459a9c112c6e942eb9175dbb9` |
| 94 | `theorem` | [symm_trans_apply](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/symm-trans-apply.md) | 468 | `result-track:f53463209b8e944578d535638d7e2f7210aaa7ab227762809b532200ddb57358` |
| 95 | `theorem` | [ediam_univ](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/ediam-univ.md) | 472 | `result-track:e77f22ae241eaaeda7638c2d5a8ab3cd5470b0de0450fc17d13d5e72643706f5` |
| 96 | `theorem` | [ediam_preimage](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/ediam-preimage.md) | 476 | `result-track:2daade25a64f58329ac285a50e3de033a5be667c030d054335da504ee022f62a` |
| 97 | `theorem` | [preimage_emetric_ball](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-emetric-ball.md) | 480 | `result-track:0c8ca0226eb9fe589dc8868bf75fb5a71ea97a4cd965fb9efc91e762b7f4ccc9` |
| 98 | `theorem` | [preimage_emetric_closedBall](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-emetric-closedball-source-edition-2.md) | 485 | `result-track:e8860295980b9b0abe02660b9c5ef7269f9c5977759fb4827bfe74a987551c38` |
| 99 | `theorem` | [image_emetric_ball](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/image-emetric-ball.md) | 490 | `result-track:b3ab9aa80542a1b7ba02070d6f869631f3519fbd714bb077a4fc1023ec9113cf` |
| 100 | `theorem` | [image_emetric_closedBall](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/image-emetric-closedball.md) | 495 | `result-track:0f370878c66bd6500d176d214282a0412eb233a463f9cef0b59417b6470a8eef` |
| 101 | `def` | [toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/tohomeomorph.md) | 501 | `declaration-track:f93d930f65af6b6a413b90e7441230919d60fd07b444a85e7ae4e80f64e0bb01` |
| 102 | `theorem` | [coe_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/coe-tohomeomorph.md) | 507 | `result-track:e7ff43a985ee0fe51110f9708709f8ebfc6ff5a745cdaef081bb6c548d928622` |
| 103 | `theorem` | [coe_toHomeomorph_symm](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/coe-tohomeomorph-symm.md) | 511 | `result-track:c18c4f4fa4b4768b40da09654a2dccef16047bcfb281464bbb2ff5259476ab6b` |
| 104 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/comp-continuouson-iff-source-edition-2.md) | 515 | `result-track:c4b6c74916184c145213249209a68f910a9810a6612face7098a758e6f271397` |
| 105 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/comp-continuous-iff.md) | 520 | `result-track:257390815a61c5ac19c3b3ff2b0c62b27408bba63c247268512d92df94611c79` |
| 106 | `theorem` | [comp_continuous_iff'](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/comp-continuous-iff-source-edition-3.md) | 525 | `result-track:ea248a31cbfa34117bc888108bb90a3d5ba5479163860f5d8d21bef9adee7b3f` |
| 107 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/instance-source-edition-4.md) | 530 | `declaration-track:f4855a31e1c4f42c2d2e69f1361b82561a41d4d1e741c812599b8393cc249b8f` |
| 108 | `theorem` | [coe_one](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/coe-one.md) | 539 | `result-track:87cec8754b0ebca6d053f19ec8fd202a04a2f951917bbe865cda038a82a3b5b1` |
| 109 | `theorem` | [coe_mul](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/coe-mul.md) | 541 | `result-track:cd00c0710048b35efe26cf151f40385601f81fe16d06fbabc80d6d38da92c29c` |
| 110 | `theorem` | [mul_apply](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/mul-apply.md) | 543 | `result-track:d91819d8f27667de21c2c540bcdb224e202d0a128c8de9325ff07aaffb614559` |
| 111 | `theorem` | [inv_apply_self](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/inv-apply-self.md) | 545 | `result-track:d7e0ce697769f3579132c8611070976832c0e6359a8ce946cc693429a4f52f03` |
| 112 | `theorem` | [apply_inv_self](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/apply-inv-self.md) | 547 | `result-track:d320b6526ae65d7ab1e7fc1327744f1b2d91ac94e3061075df4aecbae15bebcd` |
| 113 | `theorem` | [completeSpace_iff](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/completespace-iff.md) | 549 | `result-track:4451f79b397c17c0d030ecd6a5da74a337ce8ad5dc77db048957fab897018fe7` |
| 114 | `theorem` | [completeSpace](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/completespace.md) | 553 | `result-track:8fc3262c0baf0cfeecc6d59d071d7237819a617b722e6b5c62a7a040b0ccef42` |
| 115 | `def` | [piCongrLeft'](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/picongrleft-source-edition-2.md) | 559 | `declaration-track:e06e99aaf096849becefb7ddd8cb452b316ad3020d9d8c44b81c00dede790291` |
| 116 | `def` | [piCongrLeft](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/picongrleft.md) | 569 | `declaration-track:5c3e78bcb4f354d21258887f1e775b07abf4db1e59da16cdf4e568c25017d46b` |
| 117 | `def` | [sumArrowIsometryEquivProdArrow](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/sumarrowisometryequivprodarrow.md) | 577 | `declaration-track:d9b1b9f98f3923018f0eb57a759339370a79530bf7ef0e792d4d9611f2c5ef0f` |
| 118 | `theorem` | [sumArrowIsometryEquivProdArrow_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/sumarrowisometryequivprodarrow-tohomeomorph.md) | 582 | `result-track:f2b8f560e7fcba54a85d4358ed62445f8f294f675cc7b049a82d09974f748609` |
| 119 | `theorem` | [_root_.Fin.edist_append_eq_max_edist](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/root-fin-edist-append-eq-max-edist.md) | 587 | `result-track:0a62bb79e0ac621b99933d611dd26bd7a7675f3b724d62211ed70cf1b940516f` |
| 120 | `def` | [_root_.Fin.appendIsometry](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/root-fin-appendisometry.md) | 595 | `declaration-track:b20457ad1455a15084dca7123997a09a374612e99b3cd107816a90e88f861fb9` |
| 121 | `theorem` | [_root_.Fin.appendIsometry_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/root-fin-appendisometry-tohomeomorph.md) | 600 | `result-track:0ccd1fbaf6756b9f060f0dea992adc3a55bc7db299f0b61d2681156991a76473` |
| 122 | `def` | [funUnique](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/fununique.md) | 608 | `declaration-track:7cceefad568ee39203730c80d9cf03b16a3d78f69f5f6601f150cebe60b38deb` |
| 123 | `def` | [piFinTwo](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/pifintwo.md) | 614 | `declaration-track:a1ab46c554a2cf59fd0c57f77e0ddf6de35fc420f68a5663ad85a6f25d9a78e9` |
| 124 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/diam-image-source-edition-2.md) | 625 | `result-track:740c79fb553ba02e9a361af6c729383b5700c3f84a50b4c78e1d8128af575f55` |
| 125 | `theorem` | [diam_preimage](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/diam-preimage.md) | 629 | `result-track:7e445dd8d2c0bc775fb14a4b67d1294f34828cdcdfb46eee7a286eef142cc831` |
| 126 | `theorem` | [diam_univ](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/diam-univ.md) | 633 | `result-track:103444bfd4d8d33a0c9243886101aa99725ab6dab660c3a27f15e05e6000a983` |
| 127 | `theorem` | [preimage_ball](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-ball.md) | 637 | `result-track:21b7fe9cbfde12ced81e3c6ffd79ba9e8ab1dcdf339e33dc7a3fc3092825d251` |
| 128 | `theorem` | [preimage_sphere](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-sphere-source-edition-2.md) | 642 | `result-track:7001133755a1c1db0a484cd602ebaafa6c5288a63ea2e7651869f0f5ce2b23cc` |
| 129 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/preimage-closedball-source-edition-2.md) | 647 | `result-track:d140ca7dae9584c5c51ecc8e5fe80ba89b956b371f3e7eb6f771e1c7a840d277` |
| 130 | `theorem` | [image_ball](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/image-ball.md) | 652 | `result-track:e5b5bdfab3afb6eadcb3ad80977ab425e4a408fa1133af5f55cfc2319fbb18e5` |
| 131 | `theorem` | [image_sphere](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/image-sphere.md) | 656 | `result-track:19aee30377ab1e5e0e2336ec5a1e5dd6dd265a1d057c1043605312251d4c001e` |
| 132 | `theorem` | [image_closedBall](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/image-closedball.md) | 661 | `result-track:86b9296c9e78d6a472293c42bebe716340be76b3eec41c1f87c7ed63735ec522` |
| 133 | `def` | [Isometry.isometryEquivOnRange](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isometry-isometryequivonrange.md) | 672 | `declaration-track:9781c9ae94a6c60d670a76d882c57037c914cb4e994b589b0618a41e7fc278e3` |
| 134 | `lemma` | [Isometry.lipschitzWith_iff](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/isometry-lipschitzwith-iff.md) | 679 | `result-track:8a2112ea2434260835a6ca9d21d898d9ef7028eb1440f223e342ebaa0a46b572` |
| 135 | `def` | [toIsometryEquiv](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/toisometryequiv.md) | 691 | `declaration-track:ee9dfe4dad98c17bdcfa8155fac40d18970ac1eaf4e5bb91615cacc6395a1ca9` |
| 136 | `theorem` | [coe_coe](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/coe-coe.md) | 696 | `result-track:536b44d8dfdec069bc5562624f1c48d28148b4ad907339541df18536737af9ac` |
| 137 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/instance-source-edition-3.md) | 698 | `declaration-track:b0d07a5636966745afe57b7aaed6b01de642466b914c84b4315727b93ab38117` |
| 138 | `theorem` | [toIsometryEquiv_injective](../../../../GeneralTopology/MetricSpaceIsometryProdMap.lean/declarations/toisometryequiv-injective.md) | 701 | `result-track:cd22088f6dee4988c87092dbc91717ef8c41b91fce437c9a9e281f2888dfa48b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d06c04c61ba73c85fb0fc5b7b843a3a293cc3ad81f5df29986e1dd8b5657a14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Isometry/Variantbda7fe3bbcf3ebf569345bedea9dcb29f0200adfcde7ec21a0bcb9ea2fd5b572.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
