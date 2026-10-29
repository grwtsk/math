# Verification target: Metric Space Isometry Namespaced Prod Map Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e058994a6656ec01a327f7a26a2a08c6ff24d19",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e058994a6656ec01a327f7a26a2a08c6ff24d19`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Antilipschitz` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Isometry](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry-source-edition-2.md) | 43 | `declaration-track:bd4df17ddbc740d62cc3c692f32d2a1d055de8946f3b801cd1c423d4234ddb7e` |
| 2 | `theorem` | [isometry_iff_nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry-iff-nndist-eq.md) | 49 | `result-track:0e68e245ca47e18e69159da231e2a282873135118e6cee708e2c9bd2bbea292f` |
| 3 | `theorem` | [isometry_iff_dist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry-iff-dist-eq.md) | 55 | `result-track:80761a52204b86f15d932c989b9f2a57e503a5da56d75deee93d1a487995e018` |
| 4 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/edist-eq.md) | 85 | `result-track:1198cee48b817f0102f34959a01ca872ab6fd5c38843d80d6a362598c5b17e9e` |
| 5 | `theorem` | [lipschitz](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/lipschitz.md) | 89 | `result-track:5ec54530669cde212e4f7fd4922b95f4e4f481c7dfc322cc32c696d911962774` |
| 6 | `theorem` | [antilipschitz](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/antilipschitz.md) | 93 | `result-track:06ed58d4bb4c3480b1cc997a94a7b4b36c1f279e878d13cf5e9d0adba872ac11` |
| 7 | `theorem` | [Metric Space Isometry Namespaced Prod Map Aligned](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry-subsingleton.md) | 99 | `result-track:1cdd35d83a2bcc86cb7cc12497beeae45ce272955e49f69969b0cc900080725e` |
| 8 | `theorem` | [Metric Space Isometry Namespaced Prod Map Aligned](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry-id.md) | 104 | `result-track:daf826f9fbdda067d0cbc876b84a4f54449df25be7ef7905302aae499a960814` |
| 9 | `theorem` | [prod_map](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/prod-map.md) | 107 | `result-track:66d730f842db29a9642ba3c3d48b39ccaeea7f4ebc5d304f80e67f02129d6bf7` |
| 10 | `theorem` | [Metric Space Isometry Namespaced Prod Map Aligned](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry-dcomp.md) | 112 | `result-track:fbee16be1c8f3ebbfe9fe33f5a74ba73bdfad9bcec287b3a1cf9783e7aaa080b` |
| 11 | `theorem` | [comp](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/comp.md) | 119 | `result-track:7bb84ebb45941f7277fb47bcd3b7b50cb38ab840611f8f1514229fcee762bc17` |
| 12 | `theorem` | [uniformContinuous](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/uniformcontinuous.md) | 124 | `result-track:596bd057e60140822ddf6ac06eab6a4cdfbda91930cdbea5ed0007bff24322af` |
| 13 | `theorem` | [uniformInducing](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/uniforminducing.md) | 129 | `result-track:dcd3cb68bad41352ed66a77168ecb8a79596ee42d8ef8f68f237bc1da28c5113` |
| 14 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/tendsto-nhds-iff.md) | 133 | `result-track:3e5824876c3cee553c318c3b26ae0aefbfd6f40f7e3ba272f45b29abebeae21a` |
| 15 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/continuous-source-edition-2.md) | 139 | `result-track:f7237aa24da1efd833ba6db6457071771754c9db2749a9967afb3a67caa68105` |
| 16 | `theorem` | [right_inv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/right-inv.md) | 144 | `result-track:e6c3075cdc7fde4836eeb916bd9d53e1f548a1b6223046925f0b8dc88e5bd06e` |
| 17 | `theorem` | [preimage_emetric_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-emetric-closedball.md) | 148 | `result-track:1913dd01f290ebdaebffd4caa772e6060853e2103a72adbc36e2f5ef7232d18f` |
| 18 | `theorem` | [preimage_emetric_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-emetric-ball.md) | 154 | `result-track:9b3e5ded1ccc5a447276f571eab9fd89d2ce12f78ef7330eb1471a5615c67ce8` |
| 19 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/ediam-image-source-edition-2.md) | 161 | `result-track:b9459a09c625849d2926425be4dce722915c43ccbeb9fdbe945e56145462e130` |
| 20 | `theorem` | [ediam_range](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/ediam-range.md) | 165 | `result-track:6d3d7bb9285a658dce23ed7885f89ac0ee82004fc807824c6a958b8e39844851` |
| 21 | `theorem` | [mapsTo_emetric_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/mapsto-emetric-ball.md) | 170 | `result-track:0aeb672b87c3ef74f2d939b45efee224a0639fa0d72354737cc86882372d21aa` |
| 22 | `theorem` | [mapsTo_emetric_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/mapsto-emetric-closedball.md) | 175 | `result-track:46e4f30b04fbf75d7e9a054e1d9e0e9ac7cc00021cdd8e57018200fdea985f4f` |
| 23 | `theorem` | [Metric Space Isometry Namespaced Prod Map Aligned](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry-subtype-coe.md) | 181 | `result-track:f348ab386b661c349acffd97332b5db042bf50d02bd56dc783b0ed96691319d4` |
| 24 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/comp-continuouson-iff-source-edition-2.md) | 184 | `result-track:92a1f07e0c18b39ff76b3ecf2dc7897ee0f548e391e20dad689e63d5d4c81cd4` |
| 25 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/comp-continuous-iff-source-edition-3.md) | 189 | `result-track:2a422f096311b1b61179079ded8bf644021b509c2ad3acf5327d3c41aca06b0c` |
| 26 | `theorem` | [injective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/injective-source-edition-2.md) | 202 | `result-track:fc2f368df7d63527ab3faa11836cd6c445b85a716f2ce255d1b947b7198d1c27` |
| 27 | `theorem` | [uniformEmbedding](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/uniformembedding.md) | 207 | `result-track:259b5791665934918ec549e5c2580cbbba907d8d74aa5d3cd33657a2766a0a38` |
| 28 | `theorem` | [embedding](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/embedding.md) | 212 | `result-track:d13da40b7fc134c8d8ad8f897c2e919b9eaa96689f53e6844539c6a9136b5ebd` |
| 29 | `theorem` | [closedEmbedding](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/closedembedding.md) | 217 | `result-track:411c7eb8126123c40d5f66783f6d0b7c9b6d4b55c8f11df618a3b56b24b9e574` |
| 30 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/diam-image.md) | 230 | `result-track:889142101bdf86de392d19c950712730589e6b89e20b75eb57ccb55c0014ac7c` |
| 31 | `theorem` | [diam_range](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/diam-range.md) | 234 | `result-track:3d698ebbf2bac9209fd321a1d8e47e6106802f6ced9fa975f0cbf02906d845ff` |
| 32 | `theorem` | [preimage_setOf_dist](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-setof-dist.md) | 239 | `result-track:ad611f5afbd8acfa1e5803ccfc3390dff8346fb66afdd5560b23aac3eb00be8b` |
| 33 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-closedball-source-edition-2.md) | 245 | `result-track:c493f07455c9647b219fa42659fafd1e1843f34d263d353e3d9790c1a2907e29` |
| 34 | `theorem` | [preimage_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-ball.md) | 250 | `result-track:0ae5e720c734f7c3c4da458d6055bd658d03f769929b85e98843790748b25640` |
| 35 | `theorem` | [preimage_sphere](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-sphere.md) | 255 | `result-track:4b2bf65607c1c76b8c3df0aaeb954b2e74bafc9267f510e1c07bde211991ab9f` |
| 36 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/mapsto-ball.md) | 260 | `result-track:d6392e7ff6387bb82acc3b314edc712712a4264bdd5008d204edcc74cac796a1` |
| 37 | `theorem` | [mapsTo_sphere](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/mapsto-sphere.md) | 265 | `result-track:35fb07c4e0c2e5390ef326bac740d93169e7d831b557ea9ea7d2bab27692f2ff` |
| 38 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/mapsto-closedball.md) | 270 | `result-track:cfe51c8822471aadf74fd919be7b7688977c6dd38c23f3b30afbb909c1ef9e7c` |
| 39 | `theorem` | [UniformEmbedding.to_isometry](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/uniformembedding-to-isometry.md) | 283 | `result-track:78a99060540282876188d888ae2ce45adab3f9b46de41b056333008f24c62285` |
| 40 | `theorem` | [Embedding.to_isometry](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/embedding-to-isometry.md) | 291 | `result-track:4d1a37ecd7e9ad90ad4dac91b6f5b735edfce0dce1419acc90ab8e1582e832ba` |
| 41 | `structure` | [IsometryEquiv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometryequiv.md) | 300 | `declaration-track:807f57f9e394bfadd184b16196584b2f774747f8da41846582bfb73ec77f5400` |
| 42 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/toequiv-injective.md) | 316 | `result-track:1991efe25e8ac52659edf708736bde972bbe183f44a58d1da9a53e01a3c250cb` |
| 43 | `theorem` | [toEquiv_inj](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/toequiv-inj.md) | 320 | `result-track:5f408460d9ce7401dd247ed54d7505d668ae0cb37510372bdde65a3ab6c6a4d0` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/instance-source-edition-2.md) | 323 | `declaration-track:952b4bd4fda76d47d74b424858c7d7be12aacfc02e127153f02d53c5c707d1d9` |
| 45 | `theorem` | [coe_eq_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/coe-eq-toequiv.md) | 330 | `result-track:34242200133dc28a9d10fe6f85aa49bc3776706c26940d51afa2cf1b15bb9be4` |
| 46 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/coe-toequiv.md) | 333 | `result-track:e9f18399d0c37b0a00130aed7cf277b2026ccd1a10a15c49c759a6b93e1d49fe` |
| 47 | `theorem` | [coe_mk](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/coe-mk.md) | 336 | `result-track:25126471a366619072c3447b2502d006a316e13dd76ad2843512ad95b40d8b60` |
| 48 | `theorem` | [isometry](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry.md) | 338 | `result-track:8135f210cbbd3fa6d8e16983b3a4f0f55c4eb1726a6ce1b732bf5e836b3103dc` |
| 49 | `theorem` | [bijective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/bijective.md) | 342 | `result-track:cd44416ee03b3636b1b3800c20f2c1b42e6b9ed3590702ac1fddfb9e4b9c22c6` |
| 50 | `theorem` | [injective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/injective.md) | 346 | `result-track:4afdb7d05f324db19311b25be78d554642a3045c48a22ac1a9ae717370212cbd` |
| 51 | `theorem` | [surjective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/surjective.md) | 350 | `result-track:eaeee7b821598d8c8527197eaf1c50684949fe071c81be007424ebebf4ab2f2e` |
| 52 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/edist-eq-source-edition-2.md) | 354 | `result-track:ac12ef57340ac42dbbf201899b232339818fee53eb6c3b43cf6429bf60804d34` |
| 53 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/dist-eq.md) | 358 | `result-track:bdc3e3fe2bcc85fe23940fab300899908fd6ddd2ec73ce7c32763d7253b64236` |
| 54 | `theorem` | [nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/nndist-eq.md) | 363 | `result-track:86cc2ae1556026fc3efd09e9aedd355f8df706d15a4bdc6671dd05442b12e62f` |
| 55 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/continuous.md) | 368 | `result-track:e8cff11137388ff4f657712682d867b2bf975d1d496bdded675ef2651d8607c2` |
| 56 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/ediam-image.md) | 373 | `result-track:a76c57f3193f9e7ba5c3d2f2fab01f2a35e59d9e389d3c732a8e3038b34d3e91` |
| 57 | `theorem` | [ext](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/ext.md) | 378 | `result-track:cee743b8630fa129693a7439bcb6163126b46dcbe67def3d517f183803e468bc` |
| 58 | `def` | [mk'](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/mk.md) | 384 | `declaration-track:079312ab71a739870c4cdbfcd182f1aac96d8063df37c61da30fc46b65fa881d` |
| 59 | `def` | [refl](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/refl.md) | 394 | `declaration-track:82f80f9c05d9af6d278cdbc3242ccd307557046dc5becfb6450389c18104fb17` |
| 60 | `def` | [trans](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/trans.md) | 399 | `declaration-track:bccc9fe980fb373fc194bebe6970d54b85e0b810023d2f8d2914854cc44f4095` |
| 61 | `theorem` | [trans_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/trans-apply.md) | 405 | `result-track:fc3cdf73d8c50acdc79ad91f2b37fdbe570a200377cb588aec225cd06d8be610` |
| 62 | `def` | [symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/symm.md) | 410 | `declaration-track:415f6804002b72a81fd8b8744aa6090c44605df8715549df6b94332bbfe4e5ef` |
| 63 | `def` | [Simps.apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/simps-apply.md) | 417 | `declaration-track:090c3a5237c4ad4dc91aa174d992f5afc064e26bd882874ef21737043f317d99` |
| 64 | `def` | [Simps.symm_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/simps-symm-apply.md) | 421 | `declaration-track:22cf6d6d8cf22c5626e691d34fe9f90e4c9bcde7b458537dec9a22777d3aa0ef` |
| 65 | `theorem` | [symm_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/symm-symm.md) | 428 | `result-track:1b7460a228f1cf57929698f1a7a0bcaf89cfa6e4a9ff0f552e019329bb722892` |
| 66 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/apply-symm-apply.md) | 432 | `result-track:27abedd097ec5c35a5514cc1bd46529898cf72b555f5ab24741463add60aa95c` |
| 67 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/symm-apply-apply.md) | 437 | `result-track:132f6a3243b885c749725e2967d2afb1de65a410154864d7f39e093972bc9c2b` |
| 68 | `theorem` | [symm_apply_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/symm-apply-eq.md) | 441 | `result-track:3d661f277423b76a85b74618765f17efc4965c8ad6dddb9fcb033c892680e88e` |
| 69 | `theorem` | [eq_symm_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/eq-symm-apply.md) | 445 | `result-track:7987750137d05c025d2182c384550ecd8e3c8c46d703c8b8fd519d4b336d3f10` |
| 70 | `theorem` | [symm_comp_self](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/symm-comp-self.md) | 449 | `result-track:6a2fef4dfe76dc2d11a207d1f8de751a2803038b0570c697eb984d25e3738ca3` |
| 71 | `theorem` | [self_comp_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/self-comp-symm.md) | 452 | `result-track:9e192cdb842b05b47a5ad7faadc1e2a09ca3e465f25bfe335269c3ed419047a4` |
| 72 | `theorem` | [range_eq_univ](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/range-eq-univ.md) | 456 | `result-track:0676940f4aa77c184df899e0b7deb08f8b82cc64a27205e25420c99e4009ff31` |
| 73 | `theorem` | [image_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/image-symm.md) | 460 | `result-track:8c7c4843e3da64251483788aa399cb7856ea95d2e004d42243e6aa87f571b1b9` |
| 74 | `theorem` | [preimage_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-symm.md) | 464 | `result-track:cd012612ab0ec35540c4a9a170688cab3d46cf64fea6babc869db78952581702` |
| 75 | `theorem` | [symm_trans_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/symm-trans-apply.md) | 469 | `result-track:6b02934aeefc0b8b0df0573f13ffeeb5ec6e0e3b8d2715a7ea733a12c8f66737` |
| 76 | `theorem` | [ediam_univ](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/ediam-univ.md) | 474 | `result-track:06f6a5a3ca866ca6c3cc466caedfb9e2d8a90241c7def93971c6c6fad7aebd1f` |
| 77 | `theorem` | [ediam_preimage](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/ediam-preimage.md) | 479 | `result-track:57a446346c4e53361ad4854d196d0101757a278324b6e2fd69b1810a854e19e1` |
| 78 | `theorem` | [preimage_emetric_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-emetric-ball-source-edition-2.md) | 484 | `result-track:b13f170cbcaf34717f89f3559b18e8fa28847e1b0eb58555983c60fbcc35bc4f` |
| 79 | `theorem` | [preimage_emetric_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-emetric-closedball-source-edition-2.md) | 490 | `result-track:cacd716a9f93c789c9717c768dddace4003c4c5f212e63a70d49006d51b43643` |
| 80 | `theorem` | [image_emetric_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/image-emetric-ball.md) | 496 | `result-track:d33cf9ff18737bcd37c4fa9b99b2edbeca4df05691a694cee85cecc10bfaf083` |
| 81 | `theorem` | [image_emetric_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/image-emetric-closedball.md) | 502 | `result-track:076d58efdc5aa127579f77b72e3beefd1c73d387e2b8e9227b9770a74c6f46ff` |
| 82 | `def` | [toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/tohomeomorph.md) | 509 | `declaration-track:02429dbaa3241b282783236f2266ad6ca8b5274c8bef9ec1c4862a857c2a0481` |
| 83 | `theorem` | [coe_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/coe-tohomeomorph.md) | 517 | `result-track:efcfe19fc58e62358ec0d4e24da1d9f7f1ae5bea555ff0a65cffaea995843568` |
| 84 | `theorem` | [coe_toHomeomorph_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/coe-tohomeomorph-symm.md) | 522 | `result-track:289b97d28f3f4f98d5b973e886015967a4c853ec491da8db5c96099e14df9344` |
| 85 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/comp-continuouson-iff.md) | 527 | `result-track:5f798055933b5cf51dca4ce15ca838aec34996c51b0b2b68577638d0202f6c20` |
| 86 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/comp-continuous-iff.md) | 533 | `result-track:0a881d2e4709a4327955ae83dafc68ff6babe89938e68f81b0979ba8777691fc` |
| 87 | `theorem` | [comp_continuous_iff'](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/comp-continuous-iff-source-edition-2.md) | 539 | `result-track:1b0dc481aea2c7cf0e6442b2f7c52921b269c4660d88a0734c3b216ae66d4586` |
| 88 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/instance.md) | 545 | `declaration-track:080bdd8ab4e37ee1d91b0d1bbc5348c2e9ba2a0b2ccaf8ae6035580bad19ec26` |
| 89 | `theorem` | [coe_one](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/coe-one.md) | 554 | `result-track:c37d4f41ad8fd4b6e97742511b0054924454d5c8855936950f0e299328babd3c` |
| 90 | `theorem` | [coe_mul](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/coe-mul.md) | 557 | `result-track:350369fa2753f2e18985275525e64e910fc3f10d38b346b9fa35b15014adb7e7` |
| 91 | `theorem` | [mul_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/mul-apply.md) | 560 | `result-track:b63025644edf86f1efb5394d32b0735f46799c4f836e26b38cfbffde9897b74b` |
| 92 | `theorem` | [inv_apply_self](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/inv-apply-self.md) | 563 | `result-track:f6ec914d32af3ef65ed067c96ddfe7ec77f7b459e94adeb18300b616b3455fac` |
| 93 | `theorem` | [apply_inv_self](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/apply-inv-self.md) | 566 | `result-track:b92bd8b0ca2e3775c41c4876ed152449892f6ada8d14981b4714d8c94b2ec511` |
| 94 | `theorem` | [completeSpace_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/completespace-iff.md) | 569 | `result-track:13305fc3d81f0e3abc2ab3ca16155d74b3f4187b8f8a0c36145362fe706fc07f` |
| 95 | `theorem` | [completeSpace](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/completespace.md) | 574 | `result-track:f0408ae5a8f565cee48122fbcebf19a4b2d166bf099bc6466f0c1b48f0bebaa6` |
| 96 | `def` | [funUnique](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/fununique.md) | 582 | `declaration-track:d35f7d2f40cfaf0953808a022d724e287f51aff0e38b90e0002714bcd71a3e12` |
| 97 | `def` | [piFinTwo](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/pifintwo.md) | 589 | `declaration-track:ba767c65b59c07f9a0362eeadf409f9f9d5f15a8e13d9523588b4ad6ecca1c14` |
| 98 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/diam-image-source-edition-2.md) | 601 | `result-track:b2f561f42fa97c535d1a62c196dca098ecf605bcfc5e2599ab70a58b5133a3ae` |
| 99 | `theorem` | [diam_preimage](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/diam-preimage.md) | 606 | `result-track:b1fa7b7a5ee5b64dcb3dcfaa2c28246cc03132467601a8246f6a36f8542a50a4` |
| 100 | `theorem` | [diam_univ](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/diam-univ.md) | 610 | `result-track:6f8b0ec8407493846226ee974d1f33b03bc1419477123147906f6fbfaf6282d2` |
| 101 | `theorem` | [preimage_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-ball-source-edition-2.md) | 615 | `result-track:d61756b6e9486bb97c38b49e5e49d891ac85cf9410d624ded0c20853b7b354dc` |
| 102 | `theorem` | [preimage_sphere](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-sphere-source-edition-2.md) | 621 | `result-track:c7c884ee02c7108244d20fd9a00558be6c0d28467a2da1f93328c11bb1f9cb33` |
| 103 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/preimage-closedball.md) | 627 | `result-track:0aedfadcdeb44f5e4434d349a93ad80ffcf0aefe2b02006bb5f31ad4117a4a27` |
| 104 | `theorem` | [image_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/image-ball.md) | 633 | `result-track:8191d5117393d82b1a528042eda418b3c5252f1d1f98f531a3bd92adb005b67b` |
| 105 | `theorem` | [image_sphere](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/image-sphere.md) | 638 | `result-track:88734bec78f9fe5d330b288f066182becb6614d74e69354688e89107afed0391` |
| 106 | `theorem` | [image_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/image-closedball.md) | 644 | `result-track:5c884bd61b921f44490dee7ee350d99a10ef8e8f949c951017345e091ee7eeca` |
| 107 | `def` | [Isometry.isometryEquivOnRange](../../../../GeneralTopology/MetricSpaceIsometryNamespacedProdMapAligned.lean/declarations/isometry-isometryequivonrange.md) | 656 | `declaration-track:ab25a35a1f535a1cd384dde479e4a272a32576cb49a1418c97f9dc8607a50d6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e18d3b66b3c38cb3fe151d051c81a32c21c4a63e5f7a3b1d873666b50e6e72eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Isometry/Variant95860fc71fbb59fc018317fb6f129faacb77240218fc97e2037f5202f3d97e61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
