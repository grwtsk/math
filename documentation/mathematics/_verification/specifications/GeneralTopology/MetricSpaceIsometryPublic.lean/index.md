# Verification target: Metric Space Isometry Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c20fa30100cc3f95a9aa30a57755242137f5b3fb",
  "lexical_observation_count": 146,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c20fa30100cc3f95a9aa30a57755242137f5b3fb`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean.json)

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
| 1 | `def` | [Isometry](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometry-source-edition-2.md) | 40 | `declaration-track:eb62fff64507d406479e5e0e78159fbbd5279b687e37615e4537bfaf25734c20` |
| 2 | `theorem` | [isometry_iff_nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometry-iff-nndist-eq.md) | 45 | `result-track:b145f362728479e97f66e884a95eefd4e66f8c89852d59b98efe2b24642542cf` |
| 3 | `theorem` | [isometry_iff_dist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometry-iff-dist-eq.md) | 50 | `result-track:0168caec5749ee985f8a69801c3e8c0c719c6f35a588a89a4a90e3c4f0dab985` |
| 4 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/edist-eq-source-edition-3.md) | 74 | `result-track:c69ca50e83903708e8e8c9148ec60f56944b9f88732f7c37b252e76b6aa8bd7e` |
| 5 | `theorem` | [lipschitzWith](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/lipschitzwith.md) | 77 | `result-track:f884fb2fbfc6db6e186080fbb6672ce4b3b4ecff32f61bf0b687b1bff10b2af0` |
| 6 | `theorem` | [antilipschitzWith](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/antilipschitzwith.md) | 82 | `result-track:62170a60a92e0087840c78ab9cfe1db09424afc069262640fe2f4f89f85d6cd4` |
| 7 | `theorem` | [_root_.isometry_subsingleton](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/root-isometry-subsingleton.md) | 89 | `result-track:ad790efc5599f268a2a10a0387a85eca8b46f3b8f58a11f947a52a0cef0c1f75` |
| 8 | `theorem` | [_root_.isometry_id](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/root-isometry-id.md) | 93 | `result-track:5fd3bae6a4d60fd3e1b17ccf3fe8c3e170ef9158fd98431a0942abe49760cb9c` |
| 9 | `theorem` | [prodMap](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/prodmap.md) | 95 | `result-track:09001683ae8741a94cc12a6ccca1bef4173a84b9d9977458f3b33074dc1385a9` |
| 10 | `theorem` | [piMap](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/pimap.md) | 99 | `result-track:6fca5f71c897486ec2ce8744403835b4e20aed87b23d49e65c31f3ecd8b45397` |
| 11 | `lemma` | [single](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/single.md) | 104 | `result-track:d4f2859b2e8c98e16643f70b1a1d5fa00612e904f5a1aa11114d98d860ebfc8b` |
| 12 | `lemma` | [inl](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/inl.md) | 114 | `result-track:0771080d7cfe98063b0ecd6b9e62308c0bf3366bbb4fe656d9ea760ff6f7a969` |
| 13 | `lemma` | [inr](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/inr.md) | 119 | `result-track:fe74cc67278ced862e351847fe6b894821918f2ea47fd6bfd17d09dd074855a9` |
| 14 | `theorem` | [comp](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/comp.md) | 125 | `result-track:34d27bf5995099aa4372b6016ab9304ca7de686d0c262b7ef479d2bbf13726b7` |
| 15 | `lemma` | [postcomp_pi](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/postcomp-pi.md) | 129 | `result-track:5f4df016961c73b36ba4bd56d664517069776749c2e2e983cd735d3491a4ed5b` |
| 16 | `theorem` | [uniformContinuous](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/uniformcontinuous.md) | 133 | `result-track:7b9a0fe9954327800be8bb6d8e65315442956888ddbc6a618b3e0b682cfe2729` |
| 17 | `theorem` | [isUniformInducing](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isuniforminducing.md) | 137 | `result-track:323acd3b8a9900334eafbf586c36e70458af14ea0fc2a04087a1b594308eb9e9` |
| 18 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/tendsto-nhds-iff.md) | 140 | `result-track:37a6039e95f3504fe278af10fa8b702ae97718a259f3991f71318340f76d83ab` |
| 19 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/continuous.md) | 145 | `result-track:25a39d791474b9a6de6528552f400275fc628a3c5a019c79aa1fa4edbe7b18b2` |
| 20 | `theorem` | [right_inv](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/right-inv.md) | 149 | `result-track:a0c727af305ed0219eb82d2d637fa4a4001d8c5a004607f563f1bdd70746cd92` |
| 21 | `theorem` | [preimage_closedEBall](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-closedeball.md) | 152 | `result-track:a1dd8e25fd287306913fb6ac5f6bf66b893d4c5ffbd257e10b62f44b8ebb6cfb` |
| 22 | `theorem` | [preimage_eball](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-eball.md) | 157 | `result-track:24edb721b2139977759e4896aad887de75d9840cc5288e2459868b023b3be148` |
| 23 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/ediam-image.md) | 163 | `result-track:06c7dad09f2609ffdd5678f14a06516b68b50838671e52570113494635116423` |
| 24 | `theorem` | [ediam_range](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/ediam-range-source-edition-2.md) | 166 | `result-track:b27dd268c53b79346cef966546cb086aa5d9e40b3aca9fa779946d058a104c18` |
| 25 | `theorem` | [mapsTo_eball](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/mapsto-eball.md) | 170 | `result-track:aff7805bad55b7be5ba006a63cd8d5be135e6094763d4c4fbad6c5ed851fa870` |
| 26 | `theorem` | [mapsTo_closedEBall](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/mapsto-closedeball.md) | 174 | `result-track:a9aacc3251767f1fa8b37823f70eeb4f84e39ba5d608232c18a03e96e22f22c7` |
| 27 | `theorem` | [_root_.isometry_subtype_coe](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/root-isometry-subtype-coe.md) | 179 | `result-track:f52a1a2a932e6889b50844bebe63288c29ecda92d2371a93952fb6811c343f91` |
| 28 | `theorem` | [_root_.NNReal.isometry_coe](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/root-nnreal-isometry-coe.md) | 181 | `result-track:357a2a7e0e7a40d780cb5c71f0a8c162ed2743bb64e3d6d06cf969ad7d3a7ad5` |
| 29 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/comp-continuouson-iff.md) | 183 | `result-track:58be173ce32261a80278a2e2457063435e4faac8b0533f35c4d141bff49a303e` |
| 30 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/comp-continuous-iff-source-edition-2.md) | 187 | `result-track:6b34de295f4c74e2ec6a27a79973aad23af9a0e9d68a89a81edd4452834b82c8` |
| 31 | `theorem` | [injective](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/injective-source-edition-2.md) | 199 | `result-track:de561114bb74d39198f0868c649e6c8133b59caf2c793a8506be810d71210074` |
| 32 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isuniformembedding.md) | 203 | `result-track:d7b3ef2539789aaa80418f9397888a89878282eee3367c8d3ef9dca7f6d2c486` |
| 33 | `theorem` | [isEmbedding](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isembedding.md) | 207 | `result-track:7487226b7195b0f38de847161693538860f742cecbf674e4fc6eab1962397c80` |
| 34 | `theorem` | [isClosedEmbedding](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isclosedembedding.md) | 210 | `result-track:8f839b7f58b4092a1c114b39175ed21bd9f495f16d2c77cdf92d2f5e36cc8302` |
| 35 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/diam-image-source-edition-2.md) | 222 | `result-track:283f4e034ed999e7dcca7e753ca56db208550f2d8a8492b70e72d8f0b78380f4` |
| 36 | `theorem` | [diam_range](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/diam-range-source-edition-2.md) | 225 | `result-track:e0df8fd26e14385472bb9a02fb3479d0aaef877cc8cdeac47990388d03fc8be7` |
| 37 | `theorem` | [preimage_setOfPred_dist](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-setofpred-dist.md) | 229 | `result-track:c35986bfc835f62beb21319b48a7769bc312e83154135819be13e7a77e03e2c5` |
| 38 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-closedball.md) | 235 | `result-track:0ddccf0ea9be29aa64a30b8315e931dc58bd95c98a79d3d01d77fc2aed6ad45f` |
| 39 | `theorem` | [preimage_ball](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-ball.md) | 239 | `result-track:521ebb9c7b29684d8960999c74113dda434af0329eb7373c7c95ea8dde99c111` |
| 40 | `theorem` | [preimage_sphere](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-sphere.md) | 243 | `result-track:01d3bd25aac99bb3219e537b3c01895ff264525693b4e14aec20dab4f2fc3048` |
| 41 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/mapsto-ball.md) | 247 | `result-track:113796d1f9d4f6823c43a6cde926a33d76499054f4feafc8bf50e1ff9b3e704f` |
| 42 | `theorem` | [mapsTo_sphere](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/mapsto-sphere.md) | 251 | `result-track:d7ee10fc4f1b8397fe3de93b43089d876da61f8b5459e81706755e161f5f7f2d` |
| 43 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/mapsto-closedball.md) | 255 | `result-track:c4e1cd5424a1fdcf574ea71c041f20c8c7df68333062426fd4bb6408c50aef35` |
| 44 | `theorem` | [IsUniformEmbedding.to_isometry](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isuniformembedding-to-isometry.md) | 267 | `result-track:606116555d929c56f92ef074e7b9e54330b6397d3b0fedd6cf759a679f9ad25a` |
| 45 | `theorem` | [Topology.IsEmbedding.to_isometry](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/topology-isembedding-to-isometry.md) | 274 | `result-track:5f84d9ede43884a8aeffceb28d02f84a14028454a58503806bbc5f7b346f1592` |
| 46 | `theorem` | [PseudoEMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/pseudoemetricspace-isometry-induced.md) | 279 | `result-track:54503f542e740445ce449283ee1be5eee3691152cdaee87a52d907aa6e240b4c` |
| 47 | `theorem` | [PseudoMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/pseudometricspace-isometry-induced.md) | 282 | `result-track:189668e6b2986dd9ea2408228ca5d051ee90038449ca18c319abee6339131232` |
| 48 | `theorem` | [EMetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/emetricspace-isometry-induced.md) | 285 | `result-track:0e1a1ef39666c504acc9d8a1f99d0c8350dfb786485097bde8f0e2cb3fd3143a` |
| 49 | `theorem` | [MetricSpace.isometry_induced](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/metricspace-isometry-induced.md) | 288 | `result-track:796aabd8013469e17a3a0b5fa62ed4c7dfd0ba3a4a62c6503eafa4ac88944e0b` |
| 50 | `class` | [IsometryClass](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometryclass.md) | 292 | `declaration-track:b063e146a2d1994e459713504be50a131db5485382e11e5aefd702d08d25acda` |
| 51 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/edist-eq.md) | 304 | `result-track:30b3992fbaf904b7eda9cebc4da0df0d38fde633cbd275edf78ec03f4178c842` |
| 52 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/continuous-source-edition-2.md) | 307 | `result-track:59bbe321177e44f6ffe7e95db1fc386372d68052e226efcd34483a270aed1009` |
| 53 | `theorem` | [lipschitz](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/lipschitz.md) | 310 | `result-track:1c67a4d1d466a82fa0b8c64ac703a1a68538b0539c0789db6f80e1da7c25a3a6` |
| 54 | `theorem` | [antilipschitz](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/antilipschitz.md) | 313 | `result-track:0094ba954973aeca5bb66b4d54e5cc453c6c816ffe11ee2cfd9b5ff17d68a867` |
| 55 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/ediam-image-source-edition-2.md) | 316 | `result-track:484f64417656d0d5ef94e28d7760cdf99c87733120d4e94b9d49d4edc3d67330` |
| 56 | `theorem` | [ediam_range](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/ediam-range.md) | 319 | `result-track:5585071c1b7935a0599bfb35079b9dfe963d1c149f9a68f1bfe8716a0f7f20b2` |
| 57 | `instance` | [toContinuousMapClass](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/tocontinuousmapclass.md) | 322 | `declaration-track:b7548411a6c5a055a7c91e7cda799c1e118e6a47b241cab4b88441d7577e3bbb` |
| 58 | `instance` | [toHomeomorphClass](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/tohomeomorphclass.md) | 327 | `declaration-track:e8568add3b7495d59a11ce43d5bbc0b1baceed14a6041b60487c131c25474f35` |
| 59 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/dist-eq.md) | 336 | `result-track:9413709608546d9259d4b3d7b0d1128ad90a5e33481a68b68e949926b9be04c3` |
| 60 | `theorem` | [nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/nndist-eq-source-edition-2.md) | 339 | `result-track:f9c275979d18fa317aea70dd00b4f4167e7a7bdd2cf1a27ac07a0a6540bc19b8` |
| 61 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/diam-image.md) | 342 | `result-track:25a02f7c8092c60c215106b20471252b47caac3f1280bf1a789c9665070b7155` |
| 62 | `theorem` | [diam_range](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/diam-range.md) | 345 | `result-track:a8b7b3554773c3ef9d40fcba675703890bae70564c54924f37a8ee0f65a16a4a` |
| 63 | `structure` | [IsometryEquiv](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometryequiv.md) | 354 | `declaration-track:dbb24a6152093f0b7d9df2baa18e0cfd04e2bd6394bea26e695d72bce4997ad9` |
| 64 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/toequiv-injective.md) | 367 | `result-track:309fd8835b7230acd46285af7c88685522ffa062facca45fa6871b4c6ce9f748` |
| 65 | `theorem` | [toEquiv_inj](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/toequiv-inj.md) | 370 | `result-track:916dd243c139dc2249fcedbe38127cc74c4175492cbce66ce8be8747c8053776` |
| 66 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/instance-source-edition-2.md) | 374 | `declaration-track:361b3d85562c4ea2c629c0a13cc506906846168fe9a0653a1b80d2b284e1fb29` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/instance-source-edition-4.md) | 381 | `declaration-track:97442012abf8abcf0d1c4491154a552cbd46ab1caabc75e8d074a6f7ffdd8492` |
| 68 | `theorem` | [coe_eq_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-eq-toequiv.md) | 384 | `result-track:72df402ef33819e560402b68cb14767d97a33fa7288b86bec557591595b7e242` |
| 69 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-toequiv.md) | 386 | `result-track:cabce51b7395ae2a58eb42cbf3ae579bd04cb7eb956899ba45c2bb22d1d76f4b` |
| 70 | `theorem` | [coe_mk](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-mk.md) | 388 | `result-track:441521eee76178fcb9166139105bf23b76bad218157f72b609a0afce04bd64a8` |
| 71 | `theorem` | [isometry](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometry.md) | 390 | `result-track:d56be1ede7b1b9f45d7dbe824731f931d6a2685100f85d6a8fc90ee3aa01f9d7` |
| 72 | `theorem` | [bijective](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/bijective.md) | 393 | `result-track:0eab9137e78bb30d5ff8fc29eafafb3680de9b5231735ded06f9804d74b60deb` |
| 73 | `theorem` | [injective](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/injective.md) | 396 | `result-track:d3efbddde8a2fa9588a55538134fa4f680248d74728bed0d0f7b91e59b06851f` |
| 74 | `theorem` | [surjective](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/surjective.md) | 399 | `result-track:dd986da1c8744921dd479258eba2bb644a0b56e606403f443615ebebd643d5ff` |
| 75 | `theorem` | [edist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/edist-eq-source-edition-2.md) | 402 | `result-track:8c3c8df319eb400bc0625dbab434a788fbceb8c9f68610063f44c0d145c96aee` |
| 76 | `theorem` | [dist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/dist-eq-source-edition-2.md) | 405 | `result-track:d0f324c02124f60c0bd758730e51102c4312f82904c95863e0ff7a07fd1f1941` |
| 77 | `theorem` | [nndist_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/nndist-eq.md) | 409 | `result-track:0135a10ce9cc865ca26b82a049589b864f85afaa0673b615d7048669d586fc3e` |
| 78 | `theorem` | [continuous](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/continuous-source-edition-3.md) | 413 | `result-track:fe1a0a2732e47f6276e9a71d3fb2e1d1eed2cb56377ad4acc8a715f953ff5200` |
| 79 | `theorem` | [ediam_image](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/ediam-image-source-edition-3.md) | 417 | `result-track:bf9033e39685e51de9bd242d0af678e26e657c626d23eb632b16aca0470fb59e` |
| 80 | `theorem` | [ext](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/ext.md) | 421 | `result-track:ec8373fdd317a06f54814e4b85249aafea50ee11985ddb93d473a8163f9b85f4` |
| 81 | `def` | [mk'](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/mk.md) | 426 | `declaration-track:164c58c5b1c17e0577c6721eed4aa035327fda221f4ec80802b02837647045b6` |
| 82 | `def` | [refl](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/refl.md) | 435 | `declaration-track:6ba22814c04577daff3c3d6dd46490adaf44c021834a9a2969cc40a29c108ac0` |
| 83 | `def` | [trans](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/trans.md) | 439 | `declaration-track:8569d4468560aede3701b3db549d51f29d775f125d69cfe3fe8da513c3e6d0d5` |
| 84 | `theorem` | [trans_apply](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/trans-apply.md) | 444 | `result-track:7afc62622da219d832deb56ae4e6cb0e6c8ff937a2958060ee8b5e16c33a4c2d` |
| 85 | `def` | [symm](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/symm.md) | 448 | `declaration-track:4e696e819ae2e385012aab71ad4b9ed8a0abfb00ed75429c0117703151bee7bb` |
| 86 | `def` | [Simps.apply](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/simps-apply.md) | 454 | `declaration-track:81d4f9d384e4a134b3288b6419ed3f4b6e60815f29af616f805131c4c3f768af` |
| 87 | `def` | [Simps.symm_apply](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/simps-symm-apply.md) | 457 | `declaration-track:75c720e1de0db4dcff89966bce603bdd80f29ff9b1ce3bfaeeb2113bf97d88a6` |
| 88 | `theorem` | [coe_symm_toEquiv](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-symm-toequiv.md) | 463 | `result-track:036bf4bb904df0113c7f0e92222d1b11c6df6914571aadbf618276afbec311d9` |
| 89 | `theorem` | [symm_symm](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/symm-symm.md) | 466 | `result-track:b63662f979a79bb59f8237f88c4aab21dc09c5cbe8c4733b45b5d0cde7841a41` |
| 90 | `theorem` | [symm_bijective](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/symm-bijective.md) | 468 | `result-track:ab1f47acbe5595df411384f28a7d8a6288c4ac42e31b5522abe2327a16947474` |
| 91 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/apply-symm-apply.md) | 472 | `result-track:3b020b8dcb94baa4277784fd95d6127b9c708c25a5ab6ec37f1ddca6a8153b92` |
| 92 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/symm-apply-apply.md) | 476 | `result-track:1212403b7a6c07af90cd49fa0af641803285abfb4b3dfb0b6a760c1035b6277d` |
| 93 | `theorem` | [symm_apply_eq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/symm-apply-eq.md) | 479 | `result-track:45832a79669577003639bf8c610c8c838e0dacec11c36503e6786d238c208fcc` |
| 94 | `theorem` | [eq_symm_apply](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/eq-symm-apply.md) | 482 | `result-track:1198229ecad08034960b13d0705e085b97ce085a68839181771b0d0060a398b8` |
| 95 | `theorem` | [symm_comp_self](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/symm-comp-self.md) | 485 | `result-track:fcf1ca48c923509a669894497ad3ba41d1b4fb32701d2cd7bfea26943fc47a39` |
| 96 | `theorem` | [self_comp_symm](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/self-comp-symm.md) | 487 | `result-track:5ba5ec109ed6a506c6c6bfb62e433a5335adbad9f2ec7081466f152d4bdb0233` |
| 97 | `theorem` | [range_eq_univ](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/range-eq-univ.md) | 489 | `result-track:5f759d26d2e04910320c7da5c77832365e174a7f5041bf8c0b80cd5f2011caf5` |
| 98 | `theorem` | [image_symm](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/image-symm.md) | 491 | `result-track:671605a6955f9b4b0b6256f38bb2b11b1fc3377c0587186a6689232da0fcb639` |
| 99 | `theorem` | [preimage_symm](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-symm.md) | 494 | `result-track:4a8179bba71501b347d5d0fa046243cf01bcd01947a96323c18087e5dbb987b4` |
| 100 | `theorem` | [symm_trans_apply](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/symm-trans-apply.md) | 498 | `result-track:9a332f394575396cee612e664150ec2711244b5a9402513628ccad9411020d52` |
| 101 | `theorem` | [ediam_univ](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/ediam-univ.md) | 502 | `result-track:24d9b116ead0eb78c67d2cf8723971f123b9c6b51a25a6212b20117eb88fdc05` |
| 102 | `theorem` | [ediam_preimage](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/ediam-preimage.md) | 506 | `result-track:028de659c0804fb72435a2c04b5f5cf0f229e2ae2eda9bc36cbd4bbb8df0b788` |
| 103 | `theorem` | [preimage_eball](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-eball-source-edition-2.md) | 510 | `result-track:6df305bf6f35075f8a04ac54106b7edce9cdb0cea9374ea6f67651afe4830a4f` |
| 104 | `theorem` | [preimage_closedEBall](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-closedeball-source-edition-2.md) | 515 | `result-track:cb6309b38e434e3faf48334242ac05668bb36309ae0bc5fa248dbd13adaf546e` |
| 105 | `theorem` | [image_eball](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/image-eball.md) | 520 | `result-track:5618de5fafe2ecb9eb020a53101006bad452da6d4a7ec86e7678ca99ba61f07e` |
| 106 | `theorem` | [image_closedEBall](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/image-closedeball.md) | 525 | `result-track:7a06c1d5e0bca46dcdeb26996e4567d12c3865b0b40dba92edec7256f9401ccb` |
| 107 | `def` | [toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/tohomeomorph.md) | 531 | `declaration-track:290f53ba1aae33dfb7a2191f361dcfe0d23c4a72ed6a2089a7c91e3236379c9d` |
| 108 | `theorem` | [coe_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-tohomeomorph.md) | 537 | `result-track:10203e5b1ee5909e74713c2648135675a5b3e2e17a99d9151b0ea40c3c7494ef` |
| 109 | `theorem` | [coe_toHomeomorph_symm](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-tohomeomorph-symm.md) | 541 | `result-track:19b0825b453baf4ffdcaae1d1707f801259d8c006f70db9d1ea3f6fde0e65151` |
| 110 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/comp-continuouson-iff-source-edition-2.md) | 545 | `result-track:6cc15fa104a2037427b0db7a7a701e09d3e7f7a92fb3567b2de21f925d08dce1` |
| 111 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/comp-continuous-iff-source-edition-3.md) | 550 | `result-track:81e126949c8d6e9a73aebdd6c33ea68752e1a12836cb83ccdecaddcbba46f032` |
| 112 | `theorem` | [comp_continuous_iff'](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/comp-continuous-iff.md) | 555 | `result-track:6810b3d7555dbbf8542d68f630094caaca2454bdb2cac482516224b094c8a6d5` |
| 113 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/instance-source-edition-3.md) | 560 | `declaration-track:788242ff79787dc57f75a0f0bd6dd59eeaa857968c6c95f7790cbbdc3e4ed72f` |
| 114 | `theorem` | [coe_one](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-one.md) | 569 | `result-track:977a48b1eeb9c97382e17bc10e6a4fcef5455768f9153d6ba16acdf7f7ea6ebb` |
| 115 | `theorem` | [coe_mul](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-mul.md) | 571 | `result-track:dd729ca44564aeda3c5e0588682b8f63954ca84411b56373ca632b5023c73893` |
| 116 | `theorem` | [mul_apply](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/mul-apply.md) | 573 | `result-track:0867207ada490567c55925d2a2f9662bed0ef3c270d979cc6740901edab107cb` |
| 117 | `theorem` | [inv_apply_self](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/inv-apply-self.md) | 575 | `result-track:01c1488163b7e17fe52fc9bc84220a9c3ef6787bf5fe81f6745e41413574f138` |
| 118 | `theorem` | [apply_inv_self](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/apply-inv-self.md) | 577 | `result-track:12fdc76e7423086fbe6560a6d549609a667790acac5c799175cc6e801f2d2aee` |
| 119 | `theorem` | [completeSpace_iff](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/completespace-iff.md) | 579 | `result-track:b05c2bc6128f7d6029317c202327e33794b701cd583f2ea2f61c8abf34b2594f` |
| 120 | `theorem` | [completeSpace](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/completespace.md) | 583 | `result-track:3a1e61e529883c33089628fac50438a2f7acad5a06632e62e8f8198b4f2f9b4b` |
| 121 | `def` | [piCongrLeft'](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/picongrleft-source-edition-2.md) | 589 | `declaration-track:c64a1500b08022d7222993812d1647151afc7d117e743609b8e5c49dbe9d6ba7` |
| 122 | `def` | [piCongrLeft](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/picongrleft.md) | 602 | `declaration-track:5d7c3199f0291ffb52eb7c43178ec43c5a876e3b58e2295cee29d0e0c3e756cf` |
| 123 | `def` | [sumArrowIsometryEquivProdArrow](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/sumarrowisometryequivprodarrow.md) | 610 | `declaration-track:b16a12a54cf7949995478b3e0c6e5771a2f56e87cf72255aedda075deab6be2b` |
| 124 | `theorem` | [sumArrowIsometryEquivProdArrow_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/sumarrowisometryequivprodarrow-tohomeomorph.md) | 615 | `result-track:cc81cef00ca8dcd4e83dff9ef9e7e7c83148c9a8fa91f38f53e71a5ea74c1c15` |
| 125 | `theorem` | [_root_.Fin.edist_append_eq_max_edist](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/root-fin-edist-append-eq-max-edist.md) | 620 | `result-track:859cb57718d0cc356d96c5cd305b4dea353c7c56341c975ddcbb4d658e7aa954` |
| 126 | `def` | [_root_.Fin.appendIsometry](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/root-fin-appendisometry.md) | 628 | `declaration-track:cbbe29db98396d5ea3289c6be4799a8310e9d8bb5a91d3c8a45013b7f5b7dcf7` |
| 127 | `theorem` | [_root_.Fin.appendIsometry_toHomeomorph](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/root-fin-appendisometry-tohomeomorph.md) | 633 | `result-track:202ae6f39809a38252631f7b86ae15883d67abd7ada482b84a33ccdf4bf95e9a` |
| 128 | `def` | [_root_.Fin.appendIsometryOfEq](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/root-fin-appendisometryofeq.md) | 642 | `declaration-track:d3ce5aee4468f4ae94e418fac586815b4ba317d86ca25a85f080a278c6dd5c11` |
| 129 | `def` | [funUnique](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/fununique.md) | 650 | `declaration-track:355da74d3b7cf90a1d067abbe909c689182feabc2f7dc3b8396fbd108c1bcc3a` |
| 130 | `def` | [piFinTwo](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/pifintwo.md) | 656 | `declaration-track:3c6f70a5db240918a354c5b44d0571b8abfcd7d7c0a1adfb92dbc8310efe70a5` |
| 131 | `theorem` | [diam_image](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/diam-image-source-edition-3.md) | 667 | `result-track:dd54f7eb37898b64b8f1adb3c21722f34e297b8f76c63354f4c728b2d917e538` |
| 132 | `theorem` | [diam_preimage](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/diam-preimage.md) | 671 | `result-track:feb4dc0846dc502d6708cf5cf3918e4d1807ad966f931d9a2ced804bfbe48171` |
| 133 | `theorem` | [diam_univ](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/diam-univ.md) | 675 | `result-track:6f736d9ff6d9251d0bd438aa63a29932ee73b0503c22dab04c8f1c3e308b1eed` |
| 134 | `theorem` | [preimage_ball](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-ball-source-edition-2.md) | 679 | `result-track:f7d8811a884f870615d53a3fb0e54facd03a477abde7fbebe836a13739b4efed` |
| 135 | `theorem` | [preimage_sphere](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-sphere-source-edition-2.md) | 684 | `result-track:710b77ea6be5811b6c22f0705b3887047fbb00f8ca975bd384eddb1b5c61faf0` |
| 136 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/preimage-closedball-source-edition-2.md) | 689 | `result-track:b9cb7f5f440c4e91d56a4b650a5f20b4b9c69248c23e61c617f7dc21238367d1` |
| 137 | `theorem` | [image_ball](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/image-ball.md) | 694 | `result-track:8dbb1885fee2570118aa7dc5203c58bb19e501d7eebe877d51f1db1d2703b9ba` |
| 138 | `theorem` | [image_sphere](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/image-sphere.md) | 698 | `result-track:c1db486f036de9e7a52f38847f2e58c5166dc1b1f3c7c65bb4db70f409e46488` |
| 139 | `theorem` | [image_closedBall](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/image-closedball.md) | 703 | `result-track:83d1c66d10a5c0220b56b9a569bef11a5f5165d70f5003efe12e8707a8bc2073` |
| 140 | `def` | [Isometry.isometryEquivOnRange](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometry-isometryequivonrange.md) | 714 | `declaration-track:0c73ad883e9086050b5ee1fddd6a8caadc23f67941c8754e959375637c9be15a` |
| 141 | `lemma` | [Isometry.lipschitzWith_iff](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometry-lipschitzwith-iff.md) | 721 | `result-track:bea557ee706a07658414d986aa01d0adff8b9e133a649d82c2020e854afa7452` |
| 142 | `lemma` | [Isometry.locallyLipschitzOn_image](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/isometry-locallylipschitzon-image.md) | 728 | `result-track:808bcb80c28159d5f4744f9a9590584339b833f1ac72083eeee1ed1fa1cb6fc2` |
| 143 | `def` | [toIsometryEquiv](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/toisometryequiv.md) | 746 | `declaration-track:5d0d90aa80f5e31d8f16d8bad5ee22d93371e80726a726be134ab15dc1294967` |
| 144 | `theorem` | [coe_coe](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/coe-coe.md) | 751 | `result-track:afbf7660fe995249a61b4cf91bf49065c843c7513cd21c0a7539be6d13053157` |
| 145 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/instance.md) | 753 | `declaration-track:301717c32e85e19e1ec7ab65ff535f1c60b513d16ee26f2c5ba95d527bc709c0` |
| 146 | `theorem` | [toIsometryEquiv_injective](../../../../GeneralTopology/MetricSpaceIsometryPublic.lean/declarations/toisometryequiv-injective.md) | 756 | `result-track:a5ed3c2db7b68e6134ed40d03738fd5eea4028afa202afdfb933b3108b9fcd03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d33d6f7dc2e5cb118448878e02c02e376a2d602e7360f1cb6b267a3fa8255fe3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Isometry/Variantaa657a1c807948c888c2832b8cca862229a033737422164dbe38330abd3fd1f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
