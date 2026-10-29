# Verification target: Metric Space Isometry Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e405df521f75a815932509f90113a346d3008276",
  "lexical_observation_count": 146,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e405df521f75a815932509f90113a346d3008276`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Isometry](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry.md) | 48 | `declaration-track:1d3c4f6e1dc0314917b4894f211a8dec4296c2b93f97159724eae2f20319e07b` |
| 2 | `theorem` | [isometry_iff_nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-iff-nndist-eq.md) | 53 | `result-track:5cff142130d79ac0641c11cc3192dcede6426ea8e06f074abb1468fdbb6c7933` |
| 3 | `theorem` | [isometry_iff_dist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-iff-dist-eq.md) | 58 | `result-track:68887315bececc7c4599b3032765ed60faba050bc66ddb9baa01a5ec9e4dd129` |
| 4 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/edist-eq-source-edition-2.md) | 82 | `result-track:b87cf033c005452fd54b8e6abd5211a1d66f344abb9a42a10f381cd2292b2d81` |
| 5 | `theorem` | [lipschitzWith](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/lipschitzwith.md) | 85 | `result-track:f4e80bf11ca68ea6e8877dda3faa17eb3b15ac2cce9814912f4cf9248a9ea886` |
| 6 | `theorem` | [antilipschitzWith](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/antilipschitzwith.md) | 90 | `result-track:f9a680a6e8fef9a13dab848a143de1cab8f97595d263d14722739fd3214838ef` |
| 7 | `theorem` | [Metric Space Isometry Namespaced Public](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-subsingleton.md) | 97 | `result-track:a2aaa33fdf419f49196efadf6af154ab2fe2525e7303012ecb6a68f4badba4e1` |
| 8 | `theorem` | [Metric Space Isometry Namespaced Public](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-id.md) | 101 | `result-track:7aa08833ca16658044a708fd51f63bf693c485800864512e2881044ce147fa2d` |
| 9 | `theorem` | [prodMap](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/prodmap.md) | 103 | `result-track:96d9c3a7ec6714a61d3a2bf145ef00377edfb4fc92c67fed82c38882279d6957` |
| 10 | `theorem` | [piMap](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/pimap.md) | 107 | `result-track:266dbcbd0f9d179adb3a6e93612843992a748440755a349583e2d133a897c87d` |
| 11 | `lemma` | [single](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/single.md) | 112 | `result-track:99f37f68020bb10fad56610d6f0f419e9f3b255a2d73b439762f758e4b1f4171` |
| 12 | `lemma` | [inl](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/inl.md) | 122 | `result-track:a0a90ee91610de876b98c37849aca9144e709939f17c36c4342372a3e8619cab` |
| 13 | `lemma` | [inr](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/inr.md) | 127 | `result-track:2b486287e591aff82a70e468741e13b51e79a2552310c67e35fb974f988fff7f` |
| 14 | `theorem` | [comp](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/comp.md) | 133 | `result-track:6100351fdbb0a9ac99675c3f6c35a759f312cfb6476ef101a6d977e460cc80a4` |
| 15 | `lemma` | [postcomp_pi](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/postcomp-pi.md) | 137 | `result-track:d8aeacacb39ce8963e8b6173328e8d68970e1c66091ce5b5aba6e208ac34cf13` |
| 16 | `theorem` | [uniformContinuous](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/uniformcontinuous.md) | 141 | `result-track:f6dcab16cbdd710f4cd839cc5b0177a117e0c864efcfe9326511e3e5083ae200` |
| 17 | `theorem` | [isUniformInducing](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isuniforminducing.md) | 145 | `result-track:d4dda5efc810e5238009ad3a2464118e8f3d5bf6098533c89277175cb975ebc2` |
| 18 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/tendsto-nhds-iff.md) | 148 | `result-track:4ca3895a31024b69fc9702a84ee68ee14a899d4b814a81acdc4d386322d88f6d` |
| 19 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/continuous-source-edition-2.md) | 153 | `result-track:876da8d868f9aed3b81d61b447bb4da0388a9e49dcd70da85016fbe016a2a186` |
| 20 | `theorem` | [right_inv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/right-inv.md) | 157 | `result-track:b5962940b144c0d2dd3981a50b0d9401abc15286e716f61b7fa40fbca6043441` |
| 21 | `theorem` | [preimage_closedEBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-closedeball-source-edition-2.md) | 160 | `result-track:3383f2733a49d9c44e098c010665925ea34cb80a0961e3a781e5e77e81a3c9d9` |
| 22 | `theorem` | [preimage_eball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-eball-source-edition-2.md) | 165 | `result-track:f137b4d3d428aa30844e5c4aa9d430fa63c6242c8efef4f990730aa285e97620` |
| 23 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/ediam-image-source-edition-2.md) | 171 | `result-track:a506cb9f13101746a53cc10830668c2b9aa2976067414aeb13e8b8e757756ae2` |
| 24 | `theorem` | [ediam_range](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/ediam-range.md) | 174 | `result-track:81245b2626ca5cedc67ca89844f2bbf387fc84a6c04de878f965e0fd7e5a7b9d` |
| 25 | `theorem` | [mapsTo_eball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/mapsto-eball.md) | 178 | `result-track:6b47d25176b6e8e63f1f6b32c1d49bbc7f5b09a190f88d3e82cd839c09ce5193` |
| 26 | `theorem` | [mapsTo_closedEBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/mapsto-closedeball.md) | 182 | `result-track:5dd2492e8d63f4f07dc514c85986122e114d87bf3f95fddc309e6a1b6058698a` |
| 27 | `theorem` | [Metric Space Isometry Namespaced Public](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-subtype-coe.md) | 187 | `result-track:90450cfde0ff9b172077da978c8482378c915686c2f094ade80fab9a34527b22` |
| 28 | `theorem` | [Metric Space Isometry Namespaced Public](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-coe.md) | 189 | `result-track:0d6935fc8331df65c2291b83db2ff12c64512114bebc24e2faabec606f2b10c1` |
| 29 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/comp-continuouson-iff-source-edition-2.md) | 191 | `result-track:ffa1a4a53f949a1d4bba133cb86ad8c7d0033be7a8f40cfe36f291de9cb52b38` |
| 30 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/comp-continuous-iff-source-edition-2.md) | 195 | `result-track:475f4c0597b0fedf71f1c0cbde17709b49a862d1c9f7ed0cabe0d69240ebf072` |
| 31 | `theorem` | [injective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/injective.md) | 207 | `result-track:4c1f026cfa19dd53f910852634e10f919305d4c7473d5479e68d36d5084960b9` |
| 32 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isuniformembedding.md) | 211 | `result-track:c780485eab138eed35b0e37fb74bb4af156d73eeb3f5779078ae0a261c213396` |
| 33 | `theorem` | [isEmbedding](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isembedding.md) | 215 | `result-track:33886a8d73c745a752ebeefea7dcedcee071de43bab48b5746531425b42213dd` |
| 34 | `theorem` | [isClosedEmbedding](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isclosedembedding.md) | 218 | `result-track:da5958cc13cf34fc4c5938dd5d3bc946fcb17b21169f19782fae304ac65323ec` |
| 35 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/diam-image-source-edition-2.md) | 230 | `result-track:b436b9ed85db74ef5cfe6c6f849d51965fc81cd74e9dce9baeb6b2dafa4d2210` |
| 36 | `theorem` | [diam_range](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/diam-range-source-edition-2.md) | 233 | `result-track:618520f761b63ee4208cdb47a6a80c1b2fb13fa241a4022ea69c6a2bf05ee99b` |
| 37 | `theorem` | [preimage_setOfPred_dist](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-setofpred-dist.md) | 237 | `result-track:4dbb3bad90f18bae4c3d35a4bda46dc5d147e8a98066864ec2bf420f786c61be` |
| 38 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-closedball-source-edition-2.md) | 243 | `result-track:6f88cc371977c595b4ff0e20e0785db19968af6eb217976869ce1ac6523c739f` |
| 39 | `theorem` | [preimage_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-ball-source-edition-2.md) | 247 | `result-track:fec6faceffd9c8ba524162f3f8f5c5a95c9d1b84e8821780f4ab6d77aab174f8` |
| 40 | `theorem` | [preimage_sphere](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-sphere-source-edition-2.md) | 251 | `result-track:6416374c4eede87b0e506d98e86b9a89176591af1e4c827716a056df60f42c96` |
| 41 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/mapsto-ball.md) | 255 | `result-track:e84e61d70c611a38f1a3e7c974270126f726b2719c2348512296a21237a45738` |
| 42 | `theorem` | [mapsTo_sphere](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/mapsto-sphere.md) | 259 | `result-track:e750cce023700926cb49bfe3e3b608c3e9defd596697c344efd96e0d638b0a65` |
| 43 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/mapsto-closedball.md) | 263 | `result-track:baf221f1744219060a7701ec5045a58e770eaa44493e5ff5b1b136eac8ad9b99` |
| 44 | `theorem` | [IsUniformEmbedding.to_isometry](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isuniformembedding-to-isometry.md) | 275 | `result-track:85b441c97e271f940ce93e659e8f92ad1e46faecb6db69ad1aa7bd74f4806f74` |
| 45 | `theorem` | [Topology.IsEmbedding.to_isometry](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/topology-isembedding-to-isometry.md) | 282 | `result-track:dc644aeda4769604fd61f735adc92921ab89fb676d2d01b287f76aa9f8b7e643` |
| 46 | `theorem` | [PseudoEMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/pseudoemetricspace-isometry-induced.md) | 287 | `result-track:4cb7a9dd8648f3d0d18f47ad35164bcb185394f90490ba4081d738973890d4c6` |
| 47 | `theorem` | [PseudoMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/pseudometricspace-isometry-induced.md) | 290 | `result-track:519abb525681c7efda0097ce91501ae7498703be49ef9e66e5fae0c16affa8e0` |
| 48 | `theorem` | [EMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/emetricspace-isometry-induced.md) | 293 | `result-track:0b1ac0398360f193dd6d15cf547c382ee22cf06ab380a923eaef1b22461dfa18` |
| 49 | `theorem` | [MetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/metricspace-isometry-induced.md) | 296 | `result-track:2437bedaa9a92d4ae612beadd8b8efc043dbc3e4262f0d3064c2c8b342bf3f06` |
| 50 | `class` | [IsometryClass](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometryclass.md) | 300 | `declaration-track:5af869089641517e111b2bc487c880557eba413439a8fcfccb2cd636d5cb3620` |
| 51 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/edist-eq.md) | 312 | `result-track:4a44f3c16166598ac3c9fb255ac192541e765fc6b9d1a56281cd48c9b4526795` |
| 52 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/continuous-source-edition-3.md) | 315 | `result-track:93d50f65a45e2da7a247bdc6cbf405545d8c47480d1719e7937206b4f4be725d` |
| 53 | `theorem` | [lipschitz](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/lipschitz.md) | 318 | `result-track:239de7a99a0ca9444c487aed12d43cb79496fc1bf1cbcd5d00bbb5ad4b31eb87` |
| 54 | `theorem` | [antilipschitz](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/antilipschitz.md) | 321 | `result-track:400345ad44fea940a8ac806f2918cb7ef2001d59a007c47e634272e556751468` |
| 55 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/ediam-image-source-edition-3.md) | 324 | `result-track:fa1fcfc01785f43aae0940cbc07813834184ca3d2569282d3dab966e62a67808` |
| 56 | `theorem` | [ediam_range](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/ediam-range-source-edition-2.md) | 327 | `result-track:be87ba7dbc697596871fd6c43d9ae22da9aefb4ed964b15fce72c022dcaae15b` |
| 57 | `instance` | [toContinuousMapClass](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/tocontinuousmapclass.md) | 330 | `declaration-track:4abaed2a171cb71e0938294e122b90ed6da50206e9ef0f190245a69faed63823` |
| 58 | `instance` | [toHomeomorphClass](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/tohomeomorphclass.md) | 335 | `declaration-track:b98ac6077b35d747d073abd001e322270845201b5504d000f20d017fd3baec52` |
| 59 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/dist-eq.md) | 344 | `result-track:7fc7595fbbba2c3591b23ef94297a71b921c2a0b3bb7c7ee94509eb9fb95aa3a` |
| 60 | `theorem` | [nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/nndist-eq.md) | 347 | `result-track:4955ae604fbc3027bfd15371a6415044b4217d9478ef6e85dc90713ea0e639e7` |
| 61 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/diam-image-source-edition-3.md) | 350 | `result-track:c47e8254c22f339e77c8b0618986b259cbdd0a075b7cf6d25aee37866beba0d2` |
| 62 | `theorem` | [diam_range](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/diam-range.md) | 353 | `result-track:355319304c891a8765cee774e69a188d74aabd68c0ccc4fcaf4795b96f65d556` |
| 63 | `structure` | [IsometryEquiv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometryequiv.md) | 362 | `declaration-track:8b4367a63fb7d0648a9e3240aa2ff9e40ffc4fbc0f4d0167129b2ec7e4adccc7` |
| 64 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/toequiv-injective.md) | 375 | `result-track:2f414f26bd1a9279c3be10148ac53b6b08262d1e4ff641f9a0638c2859a87e14` |
| 65 | `theorem` | [toEquiv_inj](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/toequiv-inj.md) | 378 | `result-track:09bcc4895305355946a6e41a9de79bea01f31f88dc56d315197244a65bd6f7af` |
| 66 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 382 | `declaration-track:b79c1ef6f691eade3d52c55ab00f3fffffb9ad111fda2321956d93f192a85889` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 389 | `declaration-track:74c36abd9f359229493a1a410af6594e1bee022bd576c29fa13521950cbd3f9a` |
| 68 | `theorem` | [coe_eq_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-eq-toequiv.md) | 392 | `result-track:3e335d2eaa01885a084a85e61f57502fdd4045cb042be5efb1905216bf9fe7c4` |
| 69 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-toequiv.md) | 394 | `result-track:5db656bacff292f5a8519062bc741ad34f5f604b530cdc32b58a51a9eec93bd3` |
| 70 | `theorem` | [coe_mk](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-mk.md) | 396 | `result-track:fbc78a821e807e38cf4e6ebd96819b2def17bf01b58c3df08986051dd804f9fa` |
| 71 | `theorem` | [isometry](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-source-edition-2.md) | 398 | `result-track:8082b546f1378df3b2c17b6d3bbd3de62f444c1a99aa39cf3c27830a47d1177c` |
| 72 | `theorem` | [bijective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/bijective.md) | 401 | `result-track:c18dc004aa4338b1421a40eb8fc451225b5e8d93af0ebeadd80b322156917604` |
| 73 | `theorem` | [injective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/injective-source-edition-2.md) | 404 | `result-track:d453d1df528e509ffe28ddff1c264bae7e1005e6ab47836e49c2514fb7284f21` |
| 74 | `theorem` | [surjective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/surjective.md) | 407 | `result-track:384f1181a0e1f2c4a344ed0d89de4eaae676cf3e2ccc23f613c6ab5cb330a2cd` |
| 75 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/edist-eq-source-edition-3.md) | 410 | `result-track:d7a7c804ebc318b8780c475916bb143f0f391671517f5a001cb705c3eaf98af8` |
| 76 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/dist-eq-source-edition-2.md) | 413 | `result-track:e332171b5d2439e860ebca849a16b3763c73fba7076844dad2f441f8d1493d05` |
| 77 | `theorem` | [nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/nndist-eq-source-edition-2.md) | 417 | `result-track:9601b2b6a73df0ef350d7c9018f3b38865f58d0b311582129ecdf6c2a8b05057` |
| 78 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/continuous.md) | 421 | `result-track:633418e64ba1bc01df680d07e8a6080d619ea1016887525d6f3ef5c6a0db5d4a` |
| 79 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/ediam-image.md) | 425 | `result-track:0e5a7c3cdb449527f6e465eed39782a38545dd743cb64f01703aac5f92e6b915` |
| 80 | `theorem` | [ext](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/ext.md) | 429 | `result-track:9e564424bc1529882c1e1c4b8f80c5589714d51db84a367b610695a1987d1b3f` |
| 81 | `def` | [mk'](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/mk.md) | 434 | `declaration-track:2c781fdc9fa11791c254e4c1c9ec3456b1032281910cfea783a2eb8bc0923c4a` |
| 82 | `def` | [refl](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/refl.md) | 443 | `declaration-track:99bf615dd87bf5bf85b32925b2ed2ceabed4285f97795e8cdfd733a553462bba` |
| 83 | `def` | [trans](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/trans.md) | 447 | `declaration-track:26181a1e0c6b28f251215fed58709eacdcd4dec88521eda0262a79736fed027c` |
| 84 | `theorem` | [trans_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/trans-apply.md) | 452 | `result-track:8f4e138c425866a86d14244ef8be50e21542be121d6e7aa4ca7642f40f4ca27c` |
| 85 | `def` | [symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/symm.md) | 456 | `declaration-track:88c5e106975550c3de87d93f12ff6bf1094b08dfb93f45885e62e5dc2e636ace` |
| 86 | `def` | [Simps.apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/simps-apply.md) | 462 | `declaration-track:ab3ad537e589bc30f09d9f235e76837d309034247ce9412d9acc0b322b3b91e0` |
| 87 | `def` | [Simps.symm_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/simps-symm-apply.md) | 465 | `declaration-track:e283ad92821a0a5ea3aebe67d8c2d99f1c9240c4bafe994b53649dfd7ad436d1` |
| 88 | `theorem` | [coe_symm_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-symm-toequiv.md) | 471 | `result-track:0c51a34f3ce4dbeb2b6e53cce1adfc3c31090c9e5693bfcb99c337727c04da62` |
| 89 | `theorem` | [symm_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/symm-symm.md) | 474 | `result-track:af2583133e1d1a2ae6d94486dca4dbf09e52e756b79672faafb335045f631f50` |
| 90 | `theorem` | [symm_bijective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/symm-bijective.md) | 476 | `result-track:cda4b4056040ef2b122ad28fe726aa20b6d735614cd31c33d4cd548ac9f032e1` |
| 91 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/apply-symm-apply.md) | 480 | `result-track:dcc2c3cf4e9748a077d8e1432147c56bb6fa81ebb95a5590b8077d4d973098f9` |
| 92 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/symm-apply-apply.md) | 484 | `result-track:5c36800b409047e19fc79d27c480083d5336b0e1b111e92e43f195d1e45c0b1a` |
| 93 | `theorem` | [symm_apply_eq](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/symm-apply-eq.md) | 487 | `result-track:69accb4d3d670dca47d5bee0e0dc7ac487bfa7dead424dee7e449edb421c6b2a` |
| 94 | `theorem` | [eq_symm_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/eq-symm-apply.md) | 490 | `result-track:dfc469d8161af4791f0ac8fb2956fdc3b13f1bcf9da5a4e80bc1ad14d1008062` |
| 95 | `theorem` | [symm_comp_self](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/symm-comp-self.md) | 493 | `result-track:72f5c6df507520de403c6d4d0a820d739b0231137ee9245c71fefcc2dd52bd34` |
| 96 | `theorem` | [self_comp_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/self-comp-symm.md) | 495 | `result-track:d63a4dad5d3073cf842d0c8e6173243520e931aaad64dc36545dc09f469e9a00` |
| 97 | `theorem` | [range_eq_univ](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/range-eq-univ.md) | 497 | `result-track:ebcb7e1d6c345325571ac49f8b0592e1d398b4a9f844f23af15c0c5fb19062d4` |
| 98 | `theorem` | [image_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/image-symm.md) | 499 | `result-track:e51f4957f9c5c4a963303d6c4adaed65eda8ab10006485d2da568eda3d943712` |
| 99 | `theorem` | [preimage_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-symm.md) | 502 | `result-track:e328a8820d86c58278d8ec34aff59c657e1a0b05e422c8e7f867509b238b8c71` |
| 100 | `theorem` | [symm_trans_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/symm-trans-apply.md) | 506 | `result-track:07b9c69517e5fdd1f3e1ee84fd62b0126b4811e8960b95796a6525811f4458f9` |
| 101 | `theorem` | [ediam_univ](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/ediam-univ.md) | 510 | `result-track:83ddfe2bcb76b5da365f96cb0cfdbb58213f631f1f384940a7b793f3580520be` |
| 102 | `theorem` | [ediam_preimage](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/ediam-preimage.md) | 514 | `result-track:e70a7f8b0060b0e197be990643165b704e49696bbd9418b5551ccbe90551b836` |
| 103 | `theorem` | [preimage_eball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-eball.md) | 518 | `result-track:358c80d1fc7ec7004f4af582d99440bea7464396086f1ad0f74facd09ca070f2` |
| 104 | `theorem` | [preimage_closedEBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-closedeball.md) | 523 | `result-track:1dc7b31dc98d1cae1a1c0ee7d35f1c7832459242566cd412a66a6a013c2d32c0` |
| 105 | `theorem` | [image_eball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/image-eball.md) | 528 | `result-track:83e3ee75f7b902f565b5e097eab3ac824055f2c2f70d08bd5013998b44cb11e6` |
| 106 | `theorem` | [image_closedEBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/image-closedeball.md) | 533 | `result-track:0dd65608f4cdb84807756d5bbbdc73e95875a58362109843c806fa0a0b46c384` |
| 107 | `def` | [toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/tohomeomorph.md) | 539 | `declaration-track:b58fdd858834323756fd366b3c7a8a0ef7cb0dcbb5eb8f43f7292e4f590e62df` |
| 108 | `theorem` | [coe_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-tohomeomorph.md) | 545 | `result-track:c4a40fdcc36acc155f0b4bed422916eda4900f83815f34517b17cc88e00b9919` |
| 109 | `theorem` | [coe_toHomeomorph_symm](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-tohomeomorph-symm.md) | 549 | `result-track:d0fa495420e47e9fed1450872eefab217b1099e9cad0b6bf07e96d2760cd433d` |
| 110 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/comp-continuouson-iff.md) | 553 | `result-track:a5f0c905e096ad5b4bf7c374440e4024e7c12d059849c8353bc9be1869d38165` |
| 111 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/comp-continuous-iff-source-edition-3.md) | 558 | `result-track:b73d10a86799f0cf725e8ce4550138bf0c19ecf1abeee88bfde235778aa68a19` |
| 112 | `theorem` | [comp_continuous_iff'](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/comp-continuous-iff.md) | 563 | `result-track:1f210b1b92a8b911737aef28c8d9eb8a77b68d9663b1350e443f1cf21c7c2a72` |
| 113 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/instance.md) | 568 | `declaration-track:541fb961c0b1234e2a48d0e83c816074ed761b9788a3b4f4f0036813ede59b2b` |
| 114 | `theorem` | [coe_one](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-one.md) | 577 | `result-track:bf614b3a956721759f065b1473f06e159b1dc1656997e5d51a728a1f87f82106` |
| 115 | `theorem` | [coe_mul](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-mul.md) | 579 | `result-track:63452623d69a59dde34c273fc8343012a44cc90b0b1dc5da9dece9279e515154` |
| 116 | `theorem` | [mul_apply](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/mul-apply.md) | 581 | `result-track:a28b46b1f6db90f7686c124a5a743455d13aee18c742a9a1aba8cdce41381e65` |
| 117 | `theorem` | [inv_apply_self](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/inv-apply-self.md) | 583 | `result-track:fb2fe587a21c2e3812af8ce538343cf07f48bfd4649c6baeeda0702e3603d752` |
| 118 | `theorem` | [apply_inv_self](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/apply-inv-self.md) | 585 | `result-track:1ac7d4a0f76ac5162600532c95b7d5ad84c3c4b2c4889b6b2c724f66b37af57e` |
| 119 | `theorem` | [completeSpace_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/completespace-iff.md) | 587 | `result-track:09c2e37c145d32d4f11788935753d14a00e9eec3e26cf378f1108c11459e9cf3` |
| 120 | `theorem` | [completeSpace](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/completespace.md) | 591 | `result-track:876caddc3f9dc347ed723b79c0a2f03cdf212b66facd40471add722e40c3870d` |
| 121 | `def` | [piCongrLeft'](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/picongrleft.md) | 597 | `declaration-track:649fc00574351f626795147708167e9ba89b01fdf34f65ef5ae16ef076627471` |
| 122 | `def` | [piCongrLeft](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/picongrleft-source-edition-2.md) | 610 | `declaration-track:e8e275283facc8b426766fca6ec800a0f9a4ec9d9a625887bedf44b0ed37dd61` |
| 123 | `def` | [sumArrowIsometryEquivProdArrow](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/sumarrowisometryequivprodarrow.md) | 618 | `declaration-track:a273019129ebfe79202fb6ee78a8aba1d1d9add4cbfc56bd0bce009d4fdda8b8` |
| 124 | `theorem` | [sumArrowIsometryEquivProdArrow_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/sumarrowisometryequivprodarrow-tohomeomorph.md) | 623 | `result-track:f6e8ab15febdee6afb59372523b5b1a537a9d8047b408b2bbb5ae7c4c8a7ab58` |
| 125 | `theorem` | [Metric Space Isometry Namespaced Public](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/edist-append-eq-max-edist.md) | 628 | `result-track:c6cf479136773c018471365ab6544ec1d421e2a4bf9b284f06b35351a5dcd4ae` |
| 126 | `def` | [Metric Space Isometry Namespaced Public](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/appendisometry.md) | 636 | `declaration-track:bbf26beb86aa7d8b0d3d6345396fdb7474ccbc2463c7dd9d108366b241bd13f4` |
| 127 | `theorem` | [Metric Space Isometry Namespaced Public](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/appendisometry-tohomeomorph.md) | 641 | `result-track:e30e1d2d6cfc57e074db10c2e981bfd4b6fe1a4ee71e536ec53a056b7c25bbc7` |
| 128 | `def` | [Metric Space Isometry Namespaced Public](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/appendisometryofeq.md) | 650 | `declaration-track:93ab4b5c5307899fe1aa687089f81d49fb99c569eb84a16a874477756ddb016b` |
| 129 | `def` | [funUnique](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/fununique.md) | 658 | `declaration-track:83cc7d5a379d87771d50f661394a319572cacfb1e344272f3224fd8b32811334` |
| 130 | `def` | [piFinTwo](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/pifintwo.md) | 664 | `declaration-track:34691667ec953f98261a1cb5c34da8a4a5f0378d270f17b11b5e38223c17dd96` |
| 131 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/diam-image.md) | 675 | `result-track:a340d1be49073567b4daea76393d1de1a747702afcd66f43b0d0b38e1e4ba21a` |
| 132 | `theorem` | [diam_preimage](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/diam-preimage.md) | 679 | `result-track:d5a46a385b412572350e5c0227e9159e27f5810fc008c99a4e8139e14c555037` |
| 133 | `theorem` | [diam_univ](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/diam-univ.md) | 683 | `result-track:c0e668e06c270e26b49d51d4ac995af28ee7e9448ba601198cd3a6df0a5757ec` |
| 134 | `theorem` | [preimage_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-ball.md) | 687 | `result-track:b74679afc02c7d47b8fdd8f2ec6e0dbc2e7990ae5ddd6aaa76ff604a0127768d` |
| 135 | `theorem` | [preimage_sphere](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-sphere.md) | 692 | `result-track:389f100db82b8ae6e168945ef766f8ff6889a4b3f3016edde7504edad313aee5` |
| 136 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/preimage-closedball.md) | 697 | `result-track:471f8894b9e015dc3397a6704511593239ef79749753106031c9265c335118aa` |
| 137 | `theorem` | [image_ball](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/image-ball.md) | 702 | `result-track:caee52c9b4b8e2736b3be1c1cff203a22e570a41bd53699f0ebbe1a602e37c9c` |
| 138 | `theorem` | [image_sphere](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/image-sphere.md) | 706 | `result-track:ca77540b413103598e8f8fcdddacc5ae52512d9167af12a95856fe214b4ba84b` |
| 139 | `theorem` | [image_closedBall](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/image-closedball.md) | 711 | `result-track:b1eeaf3abe8e00fdd37d4ee6e736584b21fea48e5e7f709aa3be51b94bea5998` |
| 140 | `def` | [Isometry.isometryEquivOnRange](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-isometryequivonrange.md) | 722 | `declaration-track:dc5ac9fc10725dd55f9553daf12ecb11f12ec425fed5f815862182b4f6ce1f12` |
| 141 | `lemma` | [Isometry.lipschitzWith_iff](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-lipschitzwith-iff.md) | 729 | `result-track:9e6c4c48ee260218b909834ae08af566ad10830807f35912bcd0b866bee79a08` |
| 142 | `lemma` | [Isometry.locallyLipschitzOn_image](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/isometry-locallylipschitzon-image.md) | 736 | `result-track:84f7c13059323b04c0292d2c0e0903c6abf9bed2fc3bbb8edf25ce24c1f7cf51` |
| 143 | `def` | [toIsometryEquiv](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/toisometryequiv.md) | 754 | `declaration-track:1af6ca3f96015816cd51ab140d4ced6bccdae502cd9db8fb0469937706eb3adb` |
| 144 | `theorem` | [coe_coe](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/coe-coe.md) | 759 | `result-track:b7b3bbd92fe2cf9e0981318c98a67e99d08f835acdd77c703ba3537b1195c538` |
| 145 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 761 | `declaration-track:bbe95dcde80e0dc346d0b6a3fec51caf6d32961964d0b4d4a47150221070968a` |
| 146 | `theorem` | [toIsometryEquiv_injective](../../../../GeneralTopology/MetricSpaceIsometryNamespacedPublic.lean/declarations/toisometryequiv-injective.md) | 764 | `result-track:17115cd74f5f5d18c77c76318732591011b5950c6beb0d0fe416f5dc9682e941` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb4426f92703e53da25c6539cfb2fd4be0146a1e1cb475e5309fcd0d299843c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Isometry/Variant849b17ebb5d178c4b95de42524668e1b6892809704f058042a8180b89eff17f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
