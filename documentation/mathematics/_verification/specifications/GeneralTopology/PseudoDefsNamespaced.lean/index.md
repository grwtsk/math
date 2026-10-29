# Verification target: Pseudo Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d67fcb197e4a2658ac3da9ee76ba8f99572ba50f",
  "lexical_observation_count": 223,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PseudoDefsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/PseudoDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d67fcb197e4a2658ac3da9ee76ba8f99572ba50f`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UniformSpace.ofDist_aux](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformspace-ofdist-aux.md) | 60 | `result-track:23d1eeb996b5196379877519df02c1c543194d795b11f1a9c3ed69a54bdcd289` |
| 2 | `def` | [UniformSpace.ofDist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformspace-ofdist.md) | 64 | `declaration-track:07d229f18b463411a7c63149137fca555559ceebb13d41e21a85391de215b5d0` |
| 3 | `abbrev` | [Bornology.ofDist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/bornology-ofdist.md) | 70 | `declaration-track:4bfc7b3bff69e675e60260aa65c828d6af8677aea0d451add8553909551724af` |
| 4 | `class` | [Dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist.md) | 92 | `declaration-track:a56a48d09573cede5800cfdf271abad858464f2b258a60ea58b43195139f22bc` |
| 5 | `theorem` | [dist_nonneg'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-nonneg-source-edition-2.md) | 101 | `result-track:c9f3250f68a65c3913f1f141828ade5e8ebba194bf3f5406b39e82b7353a5685` |
| 6 | `class` | [PseudoMetricSpace](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace.md) | 126 | `declaration-track:71a039eb8e68d166a26e51c784142a1d6312c5cc2070e281e86e923ac2cff174` |
| 7 | `theorem` | [PseudoMetricSpace.ext](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-ext.md) | 142 | `result-track:6110d3e6047b8170e1f236d044332411bad23845f4ebe988aae96fdf522fd4f5` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 161 | `declaration-track:de9756d7ce782e3059d68c4d68b3249313ca81141cfc362011ac4a3e949ddda5` |
| 9 | `def` | [PseudoMetricSpace.ofDistTopology](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-ofdisttopology.md) | 167 | `declaration-track:4019a506ebcd1a6bfdbf66600dff7460d5c04240f5c0adfdff61fb389aabe8ae` |
| 10 | `theorem` | [dist_self](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-self.md) | 186 | `result-track:92001751666a87952cfbb76a9bc7ef81765f0c344154179656ce45ea7b949285` |
| 11 | `theorem` | [dist_comm](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-comm.md) | 189 | `result-track:eaaf145534c13f6c2eaf1d43b63cc60bfecc93b2170c8840dd716abecdc0ae2c` |
| 12 | `theorem` | [edist_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/edist-dist.md) | 192 | `result-track:6cc0af2fc177ad0b5e4688c0ecbc9776bbf390bde51cc96c7bf5c04a58a7017a` |
| 13 | `theorem` | [dist_triangle](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-triangle.md) | 196 | `result-track:c1196ce55284d667e41fc0cc245fa1c20f1e20e95782cca3b0d3ff3d80dcd507` |
| 14 | `theorem` | [dist_triangle_left](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-triangle-left.md) | 199 | `result-track:93814bf32649ed307a615c4f718b3d0c0cefbbbc1aba1ff8c8d6dd4be0377958` |
| 15 | `theorem` | [dist_triangle_right](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-triangle-right.md) | 202 | `result-track:dcf2868b389fa1760ced5df42c543d09717a584d5f07799eeb0782c155699a47` |
| 16 | `theorem` | [dist_triangle4](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-triangle4.md) | 205 | `result-track:7e48c2f7da13e23f06f45866863c8cc2df29bc5fe50f8d4cf0f724c51818c1c5` |
| 17 | `theorem` | [dist_triangle4_left](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-triangle4-left.md) | 210 | `result-track:51a6b38678c8cd63312e59e592bd7a7500db97a2f8c803b69d728b8b81f8d012` |
| 18 | `theorem` | [dist_triangle4_right](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-triangle4-right.md) | 215 | `result-track:95cad46c36efadab5b1d6e08eb5c7faedfad249944135996c807ed00f2bd00da` |
| 19 | `theorem` | [dist_triangle8](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-triangle8.md) | 220 | `result-track:484d5f947d6e1bbfeec05eaff7936a439ef79581958cbf54f269a5a426839988` |
| 20 | `theorem` | [swap_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/swap-dist.md) | 228 | `result-track:6262b1ef4768ac37ca2eb171be2c97b4bf781b4d5aabfc57aa655e2b2d1df925` |
| 21 | `theorem` | [abs_dist_sub_le](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/abs-dist-sub-le.md) | 230 | `result-track:c143a29689ac2473ab37b35c34851e2870f7da4b2b8b19c40f5e601ab0c5c514` |
| 22 | `theorem` | [dist_nonneg](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-nonneg.md) | 235 | `result-track:5fc2f2b69b78335a5febf71012b4e40b66debad1b18edb91e003875a6698ba09` |
| 23 | `def` | [evalDist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/evaldist.md) | 244 | `declaration-track:5785002ef0099102437cffd31791e97a56082ff86ef2639d13ff2f5ef61c814c` |
| 24 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/example-source-edition-3.md) | 254 | `declaration-track:ed1f06a996ff3dabdf4a6f3c6d3445587aee5c125011d927bc70ac714d9be21e` |
| 25 | `theorem` | [abs_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/abs-dist.md) | 256 | `result-track:c7dd904ad0355d2814d5c3b6ff2b8c94a6894686889f80a5fbbff9534e789e81` |
| 26 | `class` | [NNDist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist.md) | 259 | `declaration-track:84d73e75ecb0f79bf2e0f6beac278984342bb08c99a92f7c47310d0bf3234e6a` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 267 | `declaration-track:44551335a89f4373d007fc19d9ebcd19c066969f18d45da75ca9f22be82985c7` |
| 28 | `theorem` | [dist_nndist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-nndist.md) | 271 | `result-track:a1f1419caadaa992c23c573d7764be0d8eaf94ea65e8400e5a95774a4ada594f` |
| 29 | `theorem` | [coe_nndist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/coe-nndist.md) | 274 | `result-track:f45644324002c372d9f82931e63a83379421e0ca08da322e70f59491348984ce` |
| 30 | `theorem` | [edist_nndist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/edist-nndist.md) | 277 | `result-track:c4e48c10a0b4c9ec4eede9f51446a58fa00b999406c6217bc5e5f4c300ef3c87` |
| 31 | `theorem` | [nndist_edist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-edist.md) | 281 | `result-track:a5318fbea72c594a4b024ea45db24cef1754627a8a9d561563ed8e11a6976deb` |
| 32 | `theorem` | [coe_nnreal_ennreal_nndist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/coe-nnreal-ennreal-nndist.md) | 285 | `result-track:a66508de1f5cc7121d7a8396737300d4ee134d2a40e0f1797be06653ea2a7811` |
| 33 | `theorem` | [edist_lt_coe](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/edist-lt-coe.md) | 289 | `result-track:5ddf279a500e8686b32c7adb32ff9937c5129bee093f33d44d1be663bb7bc8b9` |
| 34 | `theorem` | [edist_le_coe](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/edist-le-coe.md) | 293 | `result-track:b81e2df131ab1e910ca179c95d3464a793fd1a8fbdc85436dfc31ddce0615466` |
| 35 | `theorem` | [edist_lt_top](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/edist-lt-top.md) | 297 | `result-track:c0c53fb36eef9c3b3a355109ef97a8ab612488819e68d573824fc7a6aa9dd988` |
| 36 | `theorem` | [edist_ne_top](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/edist-ne-top.md) | 301 | `result-track:77fe0cdca6af8c94ff924f5e1d463dc2046524973a25ef59071f9936a8547e60` |
| 37 | `theorem` | [nndist_self](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-self.md) | 305 | `result-track:c89401cd73a874fabdf862a29920f8f7f8e6c78cc24a774f271351a1d792f19c` |
| 38 | `theorem` | [dist_lt_coe](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-lt-coe.md) | 308 | `result-track:79f144e4a20b76fb3ea4b6045b0fcf596959720dedf0a81ebd393da9f43b37da` |
| 39 | `theorem` | [dist_le_coe](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-le-coe.md) | 312 | `result-track:498f933366702051dde4fc87d83aa1cbfacf6920650b2a6a4ce50590d2c02c7c` |
| 40 | `theorem` | [edist_lt_ofReal](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/edist-lt-ofreal.md) | 316 | `result-track:cf98e1119228cb8e354605602fdc23d0bb0ef853dff83af1bf5b7a86f3937206` |
| 41 | `theorem` | [edist_le_ofReal](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/edist-le-ofreal.md) | 320 | `result-track:bfa0a6c8019185a43cb9c32b182282c693ed10ae29fbb5edd1b5cb8478d1b8f7` |
| 42 | `theorem` | [nndist_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-dist.md) | 325 | `result-track:8a6ec5472ddb2ae0414096e4273f0d6a0c1b59196c98f33151442c2c7a80c55f` |
| 43 | `theorem` | [nndist_comm](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-comm.md) | 328 | `result-track:1028ecfb82319e1714b3ba21c75a193eaf1ca23c6ea630fe9f88d10cac6d777d` |
| 44 | `theorem` | [nndist_triangle](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-triangle.md) | 331 | `result-track:13bd24057cf1638857aea93eef26a551b70d0238a90934b1cf7561d7c0caf627` |
| 45 | `theorem` | [nndist_triangle_left](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-triangle-left.md) | 334 | `result-track:8673e3700827c65d7da0b338f414479d3946033ea8443cd4dee7a46ccb27cc63` |
| 46 | `theorem` | [nndist_triangle_right](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-triangle-right.md) | 337 | `result-track:4094777a10ffca62187528838cb332ff5d33c31ae3410d528ee6e015117e0553` |
| 47 | `theorem` | [dist_edist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-edist.md) | 341 | `result-track:b49ef3dc47edee97ad90bf2029645e89d38cfcd81f20c2ddf63731196aeb2efc` |
| 48 | `def` | [ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball.md) | 350 | `declaration-track:8bef6de4959a64f73c555b4ed3434d366864defdba568078eb0e9a37d839abab` |
| 49 | `theorem` | [mem_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-ball.md) | 354 | `result-track:7c5c92ebe63f8a8f237f1fd8835312a84bd73080f4f0e06b4906c119e30d5f60` |
| 50 | `theorem` | [mem_ball'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-ball-source-edition-2.md) | 357 | `result-track:e744ed43756599ae74dd5bc4374da4b91415c7aeaad81c215ddc621c3b858ab6` |
| 51 | `theorem` | [pos_of_mem_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pos-of-mem-ball.md) | 359 | `result-track:4c49dc5f9e801a08e44fe6d07d2b519532f82a45106d93523454069bad3a5fd0` |
| 52 | `theorem` | [mem_ball_self](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-ball-self.md) | 362 | `result-track:53ceee7dcc87ae0bbb9dbdfc479a03db26bdc523da9519be29f7c56fabf091f4` |
| 53 | `theorem` | [nonempty_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nonempty-ball.md) | 366 | `result-track:cec0fe062843f666dc65a32fca93ed8e8dbcc7b1ec349ee0a0886c84d66a72c8` |
| 54 | `theorem` | [ball_eq_empty](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-eq-empty.md) | 370 | `result-track:3d6e0ec6f251c284a8307fba4080e1666e3334c3aa62505b3379531708d0ad5f` |
| 55 | `theorem` | [ball_zero](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-zero.md) | 374 | `result-track:a6d0bcec3e38f1720de06b0fffc94615bf630c7671abd49d7ea72e465ba2ab06` |
| 56 | `theorem` | [exists_lt_mem_ball_of_mem_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/exists-lt-mem-ball-of-mem-ball.md) | 380 | `result-track:125022ace6074ab157855d91f32a791a561bf63a66133355115adc2986486dcc` |
| 57 | `theorem` | [ball_eq_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-eq-ball.md) | 384 | `result-track:499d5c9b424d26bec61a61340a224f67e7766b85eaef55eb5ae4fd3854716461` |
| 58 | `theorem` | [ball_eq_ball'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-eq-ball-source-edition-2.md) | 388 | `result-track:f337f3d8ff9ea91501260c43aa9405c8d9421097935929bae29299fb87f74b7d` |
| 59 | `theorem` | [iUnion_ball_nat](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/iunion-ball-nat.md) | 394 | `result-track:ccd308c048dc0c82e3468a7ebae3daf6268af0752ddf4ccaa59f7ad605be85ef` |
| 60 | `theorem` | [iUnion_ball_nat_succ](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/iunion-ball-nat-succ.md) | 398 | `result-track:4d9082a4742137b4bcc711803953d35ab353a3c5a9042d90fb44017f19202648` |
| 61 | `def` | [closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball.md) | 402 | `declaration-track:4fe5c7a210336ac8307f09602f77633f42cd31f69bb051d3039c4ed746b7078d` |
| 62 | `theorem` | [mem_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-closedball-source-edition-2.md) | 405 | `result-track:fbeeedcc3e71971c6a1f11e14aad4951a2db12702f723bcfa2250c01fecbb825` |
| 63 | `theorem` | [mem_closedBall'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-closedball.md) | 407 | `result-track:68b0dd6efe3836e2699ed17c18d268a0312e177362f063e573cfa7dbbbe8c328` |
| 64 | `def` | [sphere](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/sphere.md) | 410 | `declaration-track:6f205c049472cec29f14bbd7a88777b6b05e898c46338e2810c2de241fbb785c` |
| 65 | `theorem` | [mem_sphere](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-sphere.md) | 412 | `result-track:cf65e58933eba75e447b365f401e3938840f133ff2a77a7880eec9e80b2894ec` |
| 66 | `theorem` | [mem_sphere'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-sphere-source-edition-2.md) | 414 | `result-track:d15e59d960e4c80aa6af77ebeb0f7b74016a97317f5a64be8fbf4f75bcb5fa71` |
| 67 | `theorem` | [ne_of_mem_sphere](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ne-of-mem-sphere.md) | 416 | `result-track:adac8a057c6d62882991dc1c69f89e6f74ea36057cd6b04f4ee0411833e6dd08` |
| 68 | `theorem` | [nonneg_of_mem_sphere](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nonneg-of-mem-sphere.md) | 419 | `result-track:2c4f63b909f8d1776e0ef22931ae819719554644b9d19ee209c554cc6ab20e06` |
| 69 | `theorem` | [sphere_eq_empty_of_neg](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/sphere-eq-empty-of-neg.md) | 423 | `result-track:bacfb2212c72f11810200b2d741a3ed95dd302ca0ba067b414e49e42e26ee886` |
| 70 | `theorem` | [sphere_eq_empty_of_subsingleton](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/sphere-eq-empty-of-subsingleton.md) | 426 | `result-track:530b5b4e12df9a9a3f740eec7e92002d1ffc8e8beb33646f82969c7255b19efc` |
| 71 | `instance` | [sphere_isEmpty_of_subsingleton](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/sphere-isempty-of-subsingleton.md) | 429 | `declaration-track:122f375abb533ed60fbf7a331f1bc96d1ec4fcbfcf847ba5b6f2cbcad6d55b8b` |
| 72 | `theorem` | [closedBall_eq_singleton_of_subsingleton](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-eq-singleton-of-subsingleton.md) | 432 | `result-track:3f2280ece5d829201576728fbfe4ad2bc0b9d1059aef0d57873ba2e0e40c6c47` |
| 73 | `theorem` | [ball_eq_singleton_of_subsingleton](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-eq-singleton-of-subsingleton.md) | 437 | `result-track:cd04d94fa0c85c6fd95c0932d05bb6195102107c9afebd7435d57c7311e56b52` |
| 74 | `theorem` | [mem_closedBall_self](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-closedball-self.md) | 441 | `result-track:2c8bbeefa0856cfe48a714ede4e89e75b88207dc8f5f9e3ec72218563e5dc799` |
| 75 | `theorem` | [nonempty_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nonempty-closedball.md) | 445 | `result-track:6155c28eac43a7c62fca11272549b34df0c08a9d6245f29f31c0c70a0b0cf32c` |
| 76 | `theorem` | [closedBall_eq_empty](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-eq-empty.md) | 449 | `result-track:ba0bdc21fb0286ac17c89d086ed1ebff05c9b0fd1c6fd7264c23073fa54046a8` |
| 77 | `theorem` | [closedBall_eq_sphere_of_nonpos](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-eq-sphere-of-nonpos.md) | 453 | `result-track:bbe6b67683737757eab0f9df68b8c22184f76c36ee5e9e22af38e0e11d4afa01` |
| 78 | `theorem` | [ball_subset_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-subset-closedball.md) | 456 | `result-track:6c2a331934b9bf7bfe19820eeed7a0a52d5a66cab264ddcfbd1764a1ade39549` |
| 79 | `theorem` | [sphere_subset_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/sphere-subset-closedball.md) | 459 | `result-track:5a3d0c0312301689bf7a8de9b7fffa741cd0a1a3deca1ab69db6bd948e663fbc` |
| 80 | `lemma` | [sphere_subset_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/sphere-subset-ball.md) | 461 | `result-track:747669a64d059cbe8781f7b919a105c8827b367b5df13623ac8ea9e66e4ab4e4` |
| 81 | `theorem` | [closedBall_disjoint_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-disjoint-ball.md) | 464 | `result-track:f7abc127be2554088976bc678159c36201c6b6db910d9f11d44a08be7eda3de0` |
| 82 | `theorem` | [ball_disjoint_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-disjoint-closedball.md) | 468 | `result-track:3048c1587b42aee7b7eb2f530b841240c5be74ce6c7427c819cc291814b6ad4c` |
| 83 | `theorem` | [ball_disjoint_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-disjoint-ball.md) | 471 | `result-track:112aa1f87b228bb327c0d850d99cbed23c1c9e388323641ad7701bed6aa56cc1` |
| 84 | `theorem` | [closedBall_disjoint_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-disjoint-closedball.md) | 474 | `result-track:be53974a3c6bd37df01977160de579d6ea4abf253737b0b30607f3830c0ff3cc` |
| 85 | `theorem` | [sphere_disjoint_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/sphere-disjoint-ball.md) | 479 | `result-track:8f8308b9c710f5cc50e3ca339e2624a455cf708eebdebae713692a421dcc9fce` |
| 86 | `theorem` | [ball_union_sphere](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-union-sphere.md) | 483 | `result-track:0676112dcd8a2a6c06560ec65de2f19f67e5ceea76b2af81e2c2aab2327992db` |
| 87 | `theorem` | [sphere_union_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/sphere-union-ball.md) | 487 | `result-track:68de65efb47126cd3c14e5ae8f51b61e8a17a5120854dfb20de4f205f7b98b2d` |
| 88 | `theorem` | [closedBall_diff_sphere](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-diff-sphere.md) | 491 | `result-track:fec72b1598c3bf1a9b72ae5bcd0f93cdf02d7b0fab66ca70b184efbde2b415c7` |
| 89 | `theorem` | [closedBall_diff_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-diff-ball.md) | 495 | `result-track:99903db8d0d32c3f5215a8e3d7eae2d00d2f4e8154985ab2e9c3101d437b25fe` |
| 90 | `theorem` | [mem_ball_comm](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-ball-comm.md) | 498 | `result-track:b747f757079a9e8a34e76abe79bdfe6f71892f35a702463ee6fbdff882579c32` |
| 91 | `theorem` | [mem_closedBall_comm](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-closedball-comm.md) | 500 | `result-track:eb7a18feb921c79a94b2de877308b73112b31d4cf399f365b90eab7dca32b513` |
| 92 | `theorem` | [mem_sphere_comm](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-sphere-comm.md) | 503 | `result-track:b0e9e1755bb3c4bbb2fedf339aceb0096b835c49afe4df1be17ef2b6b428b766` |
| 93 | `theorem` | [ball_subset_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-subset-ball-source-edition-2.md) | 506 | `result-track:b077a392a4be201f65b3ed274f8c124dd62e2171a00301041d1477f1339566ae` |
| 94 | `theorem` | [closedBall_eq_bInter_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-eq-binter-ball.md) | 509 | `result-track:4c75fa65b5258210294740413483b53161f40038692491eaef9cfc6931e290f7` |
| 95 | `theorem` | [ball_subset_ball'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-subset-ball.md) | 512 | `result-track:3cd64f0e6dabb6d5a073c7afc02e234ee8b0fbc5c92e81a84c525042343af587` |
| 96 | `theorem` | [closedBall_subset_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-subset-closedball.md) | 519 | `result-track:e76dc3915980d880fd046af871250827da8aa45d37427f567f9460673f3deef4` |
| 97 | `theorem` | [closedBall_subset_closedBall'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-subset-closedball-source-edition-2.md) | 522 | `result-track:f82dd90ad2c06e099b8c1cb48aeaa7cca558f462b45f47959ea06d01a1cc3242` |
| 98 | `theorem` | [closedBall_subset_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-subset-ball-source-edition-2.md) | 529 | `result-track:b95d249ba66b79dfc37f9edb318138d35206978cc8eb720771ffc6020340f0d2` |
| 99 | `theorem` | [closedBall_subset_ball'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-subset-ball.md) | 532 | `result-track:3cafa3a68b4531ab6af8fb18be38ad36217e308dfb95b94ded5863943041576e` |
| 100 | `theorem` | [dist_le_add_of_nonempty_closedBall_inter_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-le-add-of-nonempty-closedball-inter-closedball.md) | 539 | `result-track:06e94751b250c5a09e3f4f4c880e60e619993581ca3c2534cfd1e31dcba6d4d8` |
| 101 | `theorem` | [dist_lt_add_of_nonempty_closedBall_inter_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-lt-add-of-nonempty-closedball-inter-ball.md) | 546 | `result-track:2b326d898cf2e9c6fd65183ddf7f472afad5f2fde2ad224e2f4a204dd0237626` |
| 102 | `theorem` | [dist_lt_add_of_nonempty_ball_inter_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-lt-add-of-nonempty-ball-inter-closedball.md) | 553 | `result-track:5a999d87469ebe21e3db80ed5afd51ebd9012a9a655f1f2d10ef1a4f51d11c46` |
| 103 | `theorem` | [dist_lt_add_of_nonempty_ball_inter_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-lt-add-of-nonempty-ball-inter-ball.md) | 559 | `result-track:7d1d14ca7c89a50d065dc8a39b7b8311a0da0508535ef5a5d90b3acf47c07da0` |
| 104 | `theorem` | [iUnion_closedBall_nat](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/iunion-closedball-nat.md) | 565 | `result-track:591996b41a25afdf2c09bc6d4822a8a4d0646cb5b7c7f8b3f29a498b6445d13a` |
| 105 | `theorem` | [iUnion_inter_closedBall_nat](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/iunion-inter-closedball-nat.md) | 568 | `result-track:685ff7dbab9f0d53745f11d59af1a2c9d86a776ee882a9be011ea099d2abdf97` |
| 106 | `theorem` | [ball_subset](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-subset.md) | 571 | `result-track:e98cfc9e18e4390eac93a977c137f9b8c6bbeefac6442f48ed7d308288221a96` |
| 107 | `theorem` | [ball_half_subset](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-half-subset.md) | 575 | `result-track:e5b705e06166eee392dc344528e13147bc3640943025ef34491ffb6582efe389` |
| 108 | `theorem` | [exists_ball_subset_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/exists-ball-subset-ball.md) | 578 | `result-track:6a46ef4e41f533609ba1ae4f3a2fe38caad9ed99f1bf13f98aadfd98bc68081b` |
| 109 | `theorem` | [forall_of_forall_mem_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/forall-of-forall-mem-closedball.md) | 583 | `result-track:6c19504b79907e08dbf4741208a2bca05a7ee111c3fff38c94977b5851159827` |
| 110 | `theorem` | [forall_of_forall_mem_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/forall-of-forall-mem-ball.md) | 591 | `result-track:2e4b86ca71ce997120182a70387fea34577321ff7aa29ceffe010ac5fe9226dd` |
| 111 | `theorem` | [isBounded_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/isbounded-iff.md) | 597 | `result-track:dac32e82087b0beb0bb0fb367ea6a7568e02cccf73150816355441d2d0cb486b` |
| 112 | `theorem` | [isBounded_iff_eventually](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/isbounded-iff-eventually.md) | 602 | `result-track:179daeef951a9ec5e97075bc66034d3ceeb9adb3802fc14fbd6d72dade18801b` |
| 113 | `theorem` | [isBounded_iff_exists_ge](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/isbounded-iff-exists-ge.md) | 608 | `result-track:d84cdc674803b480d86f0a9e6ed3b6a606e3648e60ecf55888c1d309b1154156` |
| 114 | `theorem` | [isBounded_iff_nndist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/isbounded-iff-nndist.md) | 613 | `result-track:b2d3ff215605a6ff5f8ac03f206cc33b92b55848f02fc2d2842985113bcc79c9` |
| 115 | `theorem` | [toUniformSpace_eq](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/touniformspace-eq.md) | 618 | `result-track:0493086e50c800445e6f8ab777d4b788324d266e2a22eff57c80bfa147604829` |
| 116 | `theorem` | [uniformity_basis_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformity-basis-dist.md) | 622 | `result-track:dbf6421a3ecf777b3cd9fba4a4ff6a9b4dbf3bf7799a97fc7a84e12b46b5668d` |
| 117 | `theorem` | [mk_uniformity_basis](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mk-uniformity-basis.md) | 632 | `result-track:63c691a20e33828785d75965f3d5e4c1f00dff8ff7109c608422322a3a141e75` |
| 118 | `theorem` | [uniformity_basis_dist_rat](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformity-basis-dist-rat.md) | 642 | `result-track:46e9c97d06f33cf2af722ca39f1af89d7a95c915fbb22991b1486fe08ab311d8` |
| 119 | `theorem` | [uniformity_basis_dist_inv_nat_succ](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformity-basis-dist-inv-nat-succ.md) | 648 | `result-track:009b431d4eddcdc4fa497c448d995338138578587bc9f3374fe028a6dd261604` |
| 120 | `theorem` | [uniformity_basis_dist_inv_nat_pos](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformity-basis-dist-inv-nat-pos.md) | 653 | `result-track:303216b811c10d1a3b1a747c4b51fee69537a88b61b646e007d5f3f5b8a9a9fd` |
| 121 | `theorem` | [uniformity_basis_dist_pow](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformity-basis-dist-pow.md) | 659 | `result-track:4b532d2acc2e8b202b2aa07329f80525473ea2f22d5706a7ea44451ccebf7cc6` |
| 122 | `theorem` | [uniformity_basis_dist_lt](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformity-basis-dist-lt.md) | 665 | `result-track:76370375ae6c9dbd2bc921acb41d61965b36ce58002492aba4e2215c03742089` |
| 123 | `theorem` | [mk_uniformity_basis_le](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mk-uniformity-basis-le.md) | 677 | `result-track:50662e83b4e6754d2cdff506a41cd8eea69f42332351a50d93a29461ba6be19b` |
| 124 | `theorem` | [uniformity_basis_dist_le](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformity-basis-dist-le.md) | 690 | `result-track:8d41711ff4ae0222516492fbb5f7e7b36184999399bb2a4a20f7a874208bd0cb` |
| 125 | `theorem` | [uniformity_basis_dist_le_pow](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformity-basis-dist-le-pow.md) | 694 | `result-track:9b241fc3a6d1c5330ec9b7a6d03f5134327298962c3535f40b2639bc5f60d0a7` |
| 126 | `theorem` | [mem_uniformity_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-uniformity-dist.md) | 700 | `result-track:83b9f0eb230dbcf689c1c2e015e690373f59e043a76f35e618c7c59ec88200c9` |
| 127 | `theorem` | [dist_mem_uniformity](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-mem-uniformity.md) | 705 | `result-track:965a01ef1cf437d8c6f166393bd8c020570df035ad7e3b10379a10d02c2982e7` |
| 128 | `theorem` | [uniformContinuous_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformcontinuous-iff.md) | 708 | `result-track:2851138cc08905dabe267920a8e8769e3648b14bf8bf9c9c09520243e1086e8a` |
| 129 | `theorem` | [uniformContinuousOn_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformcontinuouson-iff.md) | 712 | `result-track:b5cedb1b0f47df80ad151331980556e1ef66b13fffc52f691ff8ae83da284a6d` |
| 130 | `theorem` | [uniformContinuousOn_iff_le](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformcontinuouson-iff-le.md) | 717 | `result-track:30fb7127551938660cafd34ae9fbee6ae1ff1db2f84ecd7c62548f621e372608` |
| 131 | `theorem` | [nhds_basis_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nhds-basis-ball.md) | 722 | `result-track:8d06595b5587d385a5f9b9c54fc3d2cfd1f84d063aa29d8fbb6130d2f6579c5f` |
| 132 | `theorem` | [mem_nhds_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-nhds-iff.md) | 725 | `result-track:86bc8a3104e5c2506c32731ed491eadd3fc1340e96faf7554003f19395f743dc` |
| 133 | `theorem` | [eventually_nhds_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/eventually-nhds-iff.md) | 728 | `result-track:3bbf94d016bfe9451803bae0e2c002cec115a6bb0981f4a7ec2480d00dfb6658` |
| 134 | `theorem` | [eventually_nhds_iff_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/eventually-nhds-iff-ball.md) | 732 | `result-track:540d2ba2d69ef5391c0e01497208c7b91a3f608558ce011095abc6aa6cf66e52` |
| 135 | `theorem` | [eventually_nhds_prod_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/eventually-nhds-prod-iff.md) | 738 | `result-track:f1340ee5aac1213f314ff1b5fc965a0a7cda622622f3f25061e630d85c765817` |
| 136 | `theorem` | [eventually_prod_nhds_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/eventually-prod-nhds-iff.md) | 747 | `result-track:472d506a75f24eb04d091b22f516d8bb4e255effbed07aedf5b120a1ffd1f1b4` |
| 137 | `theorem` | [nhds_basis_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nhds-basis-closedball.md) | 755 | `result-track:ded133a8ee72c4042b944d0225503afda645eb33c35fefc3e718af9e31bb99d3` |
| 138 | `theorem` | [nhds_basis_ball_inv_nat_succ](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nhds-basis-ball-inv-nat-succ.md) | 758 | `result-track:345fab8ba628a772197ea6992bf25f6b6a81d0ed2e3beba6f22edf79d930dfce` |
| 139 | `theorem` | [nhds_basis_ball_inv_nat_pos](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nhds-basis-ball-inv-nat-pos.md) | 762 | `result-track:e83c349fc4a685263b483cf01192a1590e78fdc86de7dd4f215ffb3c5ff8877f` |
| 140 | `theorem` | [nhds_basis_ball_pow](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nhds-basis-ball-pow.md) | 766 | `result-track:1f8f8fa2a0a2252c9a1760046cb561285b31d2a46fdccbc53ba0e9589d1265e0` |
| 141 | `theorem` | [nhds_basis_closedBall_pow](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nhds-basis-closedball-pow.md) | 770 | `result-track:ae0725fc654d474bb775d823745e7a1a9abc026e3f08ab2ecc328c0e1ac42aff` |
| 142 | `theorem` | [isOpen_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/isopen-iff.md) | 774 | `result-track:d8dc2c4670661d4db1c8decc08ffed5c07721afaf59fe5d920a06069344cbc2c` |
| 143 | `theorem` | [isOpen_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/isopen-ball.md) | 777 | `result-track:f05653b4353e2546397d180d67d325d09710a9f1c3b05775fb841703d14cd6c8` |
| 144 | `theorem` | [ball_mem_nhds](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-mem-nhds.md) | 780 | `result-track:4092f10c089b1a0d966c0dc20322f3bbf30bf6f245ae04b8324d5eb93203a15f` |
| 145 | `theorem` | [closedBall_mem_nhds](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-mem-nhds.md) | 783 | `result-track:2b6fe9abc05fbbbcac7583dfc0967f4b59d795916f7ebbb931dffeb668dc2248` |
| 146 | `theorem` | [closedBall_mem_nhds_of_mem](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/closedball-mem-nhds-of-mem.md) | 786 | `result-track:2b49b6d84e559f99c03ce75cc1d486e89dd18664b36383fd9e1aa541811fc316` |
| 147 | `theorem` | [nhdsWithin_basis_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nhdswithin-basis-ball.md) | 789 | `result-track:74a684bf04c977860def4c0283cc754603aa8a64e40e821b8ea5cbfcee69a1be` |
| 148 | `theorem` | [mem_nhdsWithin_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-nhdswithin-iff.md) | 793 | `result-track:5ec207919dc9eccbf2878499809f15d39070f90bef2148906d7940920df373fc` |
| 149 | `theorem` | [tendsto_nhdsWithin_nhdsWithin](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-nhdswithin-nhdswithin.md) | 796 | `result-track:354467b6cdbb82e1565fb9ddde2fdcd43ac2b4ae21374751ebd3feaaad514ad8` |
| 150 | `theorem` | [tendsto_nhdsWithin_nhds](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-nhdswithin-nhds.md) | 802 | `result-track:3703c0f34252c195656f01774a19dfd87dff2585414a79b5ed6ee9fab33273e5` |
| 151 | `theorem` | [tendsto_nhds_nhds](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-nhds-nhds.md) | 808 | `result-track:366a199d57031ecfdacebdd2d3e77f0b49dea166226031a8c9e71976c9321d88` |
| 152 | `theorem` | [continuousAt_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/continuousat-iff-source-edition-2.md) | 812 | `result-track:a61653d5fa5647bd4a23da0857f0bf509abdf68b6c9048ff25f5518f91cacff6` |
| 153 | `theorem` | [continuousWithinAt_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/continuouswithinat-iff.md) | 816 | `result-track:60c137a37cc98308762e123715bb433ce941f925ad667cd3c59d5927fedbc9a2` |
| 154 | `theorem` | [continuousOn_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/continuouson-iff-source-edition-2.md) | 821 | `result-track:b59ecc21908569faf4da33d5c98fea96a914fe8c9d74456324e189a463afb134` |
| 155 | `theorem` | [continuous_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/continuous-iff.md) | 825 | `result-track:6626a33aac4adc35cde342fd808c4eeafed6efcbf6bbc63ce8057cdfaa5df691` |
| 156 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-nhds.md) | 829 | `result-track:4beb017e70355ac8e7dbc5c1c91a84848228f4c5e42dfbe7da6d752685c3b4d4` |
| 157 | `theorem` | [continuousAt_iff'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/continuousat-iff.md) | 833 | `result-track:0fa10bcc3868850348a4e531510c1fe5b481c5ed52cac1c2edf75cb60c57cf5f` |
| 158 | `theorem` | [continuousWithinAt_iff'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/continuouswithinat-iff-source-edition-2.md) | 837 | `result-track:cea63fdf579b7e8ea4f904b20189c403d880420e37fb9d542a275b865d48d3e2` |
| 159 | `theorem` | [continuousOn_iff'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/continuouson-iff.md) | 841 | `result-track:4a3abc6e35a6aef7115179ddef07f4800b4ae44425070be01d48f4f46f835195` |
| 160 | `theorem` | [continuous_iff'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/continuous-iff-source-edition-2.md) | 845 | `result-track:b023b39aa43155d2f58c05b6cee0d1ec4420c425407db3434454e3cb166c269c` |
| 161 | `theorem` | [tendsto_atTop](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-attop.md) | 849 | `result-track:5b4232ba1e9fe58574f4aa299387d295f2dac613b32f4a08a58aba078b262bbc` |
| 162 | `theorem` | [tendsto_atTop'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-attop-source-edition-2.md) | 857 | `result-track:d13aed3f295f0c79f28f5ee671fe6a7b7499022d454be6716f8858e1fdb30694` |
| 163 | `theorem` | [isOpen_singleton_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/isopen-singleton-iff.md) | 862 | `result-track:1e0869afcfd6ff06ecd12f691e84d24eac15cbec4ce1dbe70e08613221152c07` |
| 164 | `theorem` | [Pseudo Defs Namespaced](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/exists-dist-lt.md) | 866 | `result-track:764f264fea355419b0e3cf72d7b8b9ef08e2392cdfa8f4669ed6a6b2d88ba426` |
| 165 | `theorem` | [Pseudo Defs Namespaced](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/exists-dist-lt-source-line-871-occurrence-2.md) | 871 | `result-track:9fc8754616b3f53ab91f121c6197f534589b83c0fc9513a2d7c91fe1f471e7a5` |
| 166 | `lemma` | [uniformSpace_eq_bot](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/uniformspace-eq-bot.md) | 877 | `result-track:31d593be99605e43d7d028ed600392aa33ee14201c73e0eb417f1a2db5383ddb` |
| 167 | `lemma` | [DiscreteTopology.of_forall_le_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/discretetopology-of-forall-le-dist.md) | 888 | `result-track:213bd5d06d15e6599d97aaeda4c5b81243416a5db579a207fa5ad9d4d5e9d2fd` |
| 168 | `theorem` | [Metric.uniformity_edist_aux](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-uniformity-edist-aux.md) | 896 | `result-track:5ea23f345ed51a294cac86540fa26e77eef9511d2dc9aaa7043232268f957628` |
| 169 | `theorem` | [Metric.uniformity_edist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-uniformity-edist.md) | 908 | `result-track:42e312d9c66117354c3cfce5bea026dd1d3a0f5157df17674f2db1e12f629b71` |
| 170 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 914 | `declaration-track:4e24183d8fd6898a25bd0b9272cb2943e051d301f73f1b60f657356b20714f94` |
| 171 | `theorem` | [Metric.eball_top_eq_univ](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-eball-top-eq-univ.md) | 926 | `result-track:3acb2178865a1d3491941476e529f1d9df70c508fc9ecb928131bf0d38bf2a6e` |
| 172 | `theorem` | [Metric.emetric_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-emetric-ball.md) | 931 | `result-track:5d347e6d81ac0c364e6fbeedb8b98b9a1dbf2f6d2cbf16fb9503d80560bae381` |
| 173 | `theorem` | [Metric.emetric_ball_nnreal](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-emetric-ball-nnreal.md) | 938 | `result-track:d7d1d548720fd37f2cddbb59bb0683b85739c044bc908f51e3c97a89c48721ec` |
| 174 | `theorem` | [Metric.emetric_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-emetric-closedball.md) | 943 | `result-track:fb978b66bfc26b0b76a58651c8f031243b025774f8abca16242fc81f79d3607a` |
| 175 | `theorem` | [Metric.emetric_closedBall_nnreal](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-emetric-closedball-nnreal.md) | 949 | `result-track:0cf530ba6121075f45c761cce006209bb0f9362c783ed5cb95f5e02eed87fdd3` |
| 176 | `theorem` | [Metric.emetric_ball_top](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-emetric-ball-top.md) | 954 | `result-track:94595b3d8ad172985a571bf70ff825feca619037acc5459f1bc6f9eb9646fccb` |
| 177 | `abbrev` | [PseudoMetricSpace.replaceUniformity](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-replaceuniformity.md) | 962 | `declaration-track:20ae9a06ec0b6f54134463ab81d3df813e04de06e98fbed747ddce2b51b5a861` |
| 178 | `theorem` | [PseudoMetricSpace.replaceUniformity_eq](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-replaceuniformity-eq.md) | 968 | `result-track:2be474cb5f4a018a634eb6ef067bbde5c93dc6f547921365ec35ea73ac900b99` |
| 179 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/example-source-edition-2.md) | 974 | `declaration-track:b9b0e2524bbdd49719e6bdbb77d7bbbf811bce400532014f79d36cc1d3a77655` |
| 180 | `abbrev` | [PseudoMetricSpace.replaceTopology](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-replacetopology.md) | 984 | `declaration-track:3899aee8d6c709e3a53a6fca08028eb0f495b36a4e89ccc9dcd2826b92398e4f` |
| 181 | `theorem` | [PseudoMetricSpace.replaceTopology_eq](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-replacetopology-eq.md) | 988 | `result-track:3c25546f9bf46691bc365d8eed31b285bfe6f9b530c5e8b5956cf9c6927cd511` |
| 182 | `abbrev` | [PseudoEMetricSpace.toPseudoMetricSpaceOfDist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudoemetricspace-topseudometricspaceofdist.md) | 998 | `declaration-track:ed2a94a5c868b125d063db3ed91fbf3ac00b896f1dad480fa31a4860df8cf76b` |
| 183 | `abbrev` | [PseudoEMetricSpace.toPseudoMetricSpace](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudoemetricspace-topseudometricspace.md) | 1017 | `declaration-track:33147c7debe2bcc617a8170df3540e9efab4fc46d288e2d93bb4f382f78c8c86` |
| 184 | `abbrev` | [PseudoMetricSpace.replaceBornology](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-replacebornology.md) | 1027 | `declaration-track:add5b22f8b17cf9477edbd1dca4ef85cb88fc690c561ad49c28eb088585d0b39` |
| 185 | `theorem` | [PseudoMetricSpace.replaceBornology_eq](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-replacebornology-eq.md) | 1035 | `result-track:ae01b801661bb68054a92ed100fbd1edeaceb2445c6f573b11106ae596b20c2e` |
| 186 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/example.md) | 1042 | `declaration-track:669de5f86902e68d6b06ff900e077299fb80bc3adef663c6317663847a654ec2` |
| 187 | `instance` | [Real.pseudoMetricSpace](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-pseudometricspace.md) | 1050 | `declaration-track:f2534bb3faa6519b1d5b5f06403a621f7506c958cae66570e12727bc4aa66b72` |
| 188 | `theorem` | [Real.dist_eq](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-dist-eq.md) | 1056 | `result-track:4a93531da9e4ed22d9b42fd9520f16384eb6d5749549601ce88ea8087372893c` |
| 189 | `theorem` | [Real.nndist_eq](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-nndist-eq.md) | 1058 | `result-track:1588d4da079506fdda1a99f60fd8f392475ad7071e6ceb3fb3fd76f3e98cbee1` |
| 190 | `theorem` | [Real.nndist_eq'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-nndist-eq-source-edition-2.md) | 1060 | `result-track:c41b16aebbeff7ae47bafade0826b742649488b35338593e757898d869af556f` |
| 191 | `theorem` | [Real.dist_0_eq_abs](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-dist-0-eq-abs.md) | 1063 | `result-track:3d26c94652101c74cd4e1f7ee963957c10aefb200ef38aeac7e88e28fe745836` |
| 192 | `theorem` | [Real.sub_le_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-sub-le-dist.md) | 1065 | `result-track:17372d34668b7180446d63b73c780fec4685350e5afa0c401ec4fa3f8a919f3e` |
| 193 | `theorem` | [Real.ball_eq_Ioo](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-ball-eq-ioo.md) | 1069 | `result-track:a908c7374dfcf5972dc637b655efee73beb16715c11e134d10c7aacb8e56a60c` |
| 194 | `theorem` | [Real.closedBall_eq_Icc](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-closedball-eq-icc.md) | 1074 | `result-track:28bd6b7acef6d0aae94967d7a06c38650f947f9c46733b7f6b695441f2aee6af` |
| 195 | `theorem` | [Real.Ioo_eq_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-ioo-eq-ball.md) | 1079 | `result-track:e113695d73432050e1d7f866e983ce8ad655290f638abd6ea02a9dcb0b18c316` |
| 196 | `theorem` | [Real.Icc_eq_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/real-icc-eq-closedball.md) | 1083 | `result-track:e7139c55971e9e49427f7a5de4e3d04067d0745e4b09cb217eacbea4acf8d091` |
| 197 | `theorem` | [Metric.uniformity_eq_comap_nhds_zero](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/metric-uniformity-eq-comap-nhds-zero.md) | 1087 | `result-track:1bfa22ee8bd8c28aa6b821720c98a594e886330646f2ec96d360971d412fea24` |
| 198 | `theorem` | [tendsto_uniformity_iff_dist_tendsto_zero](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-uniformity-iff-dist-tendsto-zero.md) | 1093 | `result-track:5af9135b57cef8cc89f60ad3dfe88f36c33f98d7dc68bb75a3e688fe72028a0e` |
| 199 | `theorem` | [Filter.Tendsto.congr_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/filter-tendsto-congr-dist.md) | 1097 | `result-track:f4ae938303c09f3acf1f0ae9b9d8f916a944a6d9f37bf229251272f992fc5871` |
| 200 | `theorem` | [tendsto_iff_of_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-iff-of-dist.md) | 1104 | `result-track:0ff4669f4c757eff492429cce934d65c635fee5d40508b9f4d9a35fb858deb54` |
| 201 | `theorem` | [PseudoMetricSpace.dist_eq_of_dist_zero](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/pseudometricspace-dist-eq-of-dist-zero.md) | 1110 | `result-track:fd7159afeebe7036e45186d342bdd92236d59f19c25f1f4deec553e3c79303dd` |
| 202 | `theorem` | [dist_dist_dist_le_left](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-dist-dist-le-left.md) | 1114 | `result-track:8ce11b92b8e8c93b3a32af8756bad89d68f8bd872af7f5eaba65a2293a2457ba` |
| 203 | `theorem` | [dist_dist_dist_le_right](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-dist-dist-le-right.md) | 1117 | `result-track:c9cf9c1c26019875bc13a0f31791699141195de3b01d054a4c91243068db0d2f` |
| 204 | `theorem` | [dist_dist_dist_le](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dist-dist-dist-le.md) | 1120 | `result-track:1ef757590488e75c0552ec316cb4b04a50ba1b02ff84d0381413dfd15c3ad3e0` |
| 205 | `theorem` | [nhds_comap_dist](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nhds-comap-dist.md) | 1124 | `result-track:e537b9540c7807d1ad8f9d19467528485b2ac4c48636d7fc45d4764013702c86` |
| 206 | `theorem` | [tendsto_iff_dist_tendsto_zero](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/tendsto-iff-dist-tendsto-zero.md) | 1128 | `result-track:f92a1492e5798b4c5431e2d9bc0dcc6c934c7974a3457a8da9fab72e65fe9fda` |
| 207 | `theorem` | [ball_subset_interior_closedBall](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/ball-subset-interior-closedball.md) | 1136 | `result-track:bad51fce0853758ed2568ef99c26f923354610086f0a004f943a9d4f1eb11567` |
| 208 | `theorem` | [mem_closure_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-closure-iff.md) | 1140 | `result-track:bc11e0d74fe6865e439df1f7793617be568933c7c35a83b7253861b0c382feb1` |
| 209 | `theorem` | [mem_closure_range_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-closure-range-iff.md) | 1143 | `result-track:f3580e440b82bf0c55b1ba3ac2b2850916d08aeb78299516af0bf4d29fb9fd7d` |
| 210 | `theorem` | [mem_closure_range_iff_nat](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-closure-range-iff-nat.md) | 1147 | `result-track:6ceca728e7a7792c9e9a16dbc2ca1c9d83c4dfbf6e383bc553b4291e5901594a` |
| 211 | `theorem` | [mem_of_closed'](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/mem-of-closed.md) | 1152 | `result-track:d3962ddb36a84a31eb2909b80d3fd2cde7fb4d2e688801159dd7a97ebc7008bb` |
| 212 | `theorem` | [dense_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dense-iff.md) | 1156 | `result-track:7449b6dbb82b14938438f0fb70a3ce2f6dc5f44634a75a4112419e317d73c266` |
| 213 | `theorem` | [dense_iff_iUnion_ball](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/dense-iff-iunion-ball.md) | 1160 | `result-track:977e8eb5c609ecf01c5e9f32cdd8b5070ad91155ba2fb62a493c47b8255c39c5` |
| 214 | `theorem` | [denseRange_iff](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/denserange-iff.md) | 1164 | `result-track:835a7a1a6068fcb43eeeca0337ab74ba694283520229996c36acbee677713373` |
| 215 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/instance.md) | 1171 | `declaration-track:30cd6be34d68387aa46075c536f350b8ec883760c4885b924837406d727cb8f8` |
| 216 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 1172 | `declaration-track:5ca8a7538218c75a6eea5a3af91e95d072662c570c991c831d8d8ad9ab00cd0d` |
| 217 | `theorem` | [nndist_ofMul](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-ofmul.md) | 1178 | `result-track:c93769259b9c9120412499751706696283b151a41f5bb928d579d3d88a670bc3` |
| 218 | `theorem` | [nndist_ofAdd](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-ofadd.md) | 1180 | `result-track:7706aded3478742765022fa01db0f3ad70fbda9e6db24ae241c2bc2081d067d7` |
| 219 | `theorem` | [nndist_toMul](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-tomul.md) | 1182 | `result-track:d84655da0c195d6f0dbfc56ce0764f17e74cd8d48563d760b078e0badae3bba7` |
| 220 | `theorem` | [nndist_toAdd](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-toadd.md) | 1185 | `result-track:d5ece73ebd0ca260b7977436641ddf681888cfe35c91ebd6704dc34316e2a4f6` |
| 221 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 1191 | `declaration-track:322d86c2a4260eb883264f52a41da95f507be7981d12e1a2a80ab04bdfb56061` |
| 222 | `theorem` | [nndist_toDual](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-todual.md) | 1197 | `result-track:921349bc9383f68f591f6e35c525d06a5e8f3452b3db1e11af1e630c6e6704d6` |
| 223 | `theorem` | [nndist_ofDual](../../../../GeneralTopology/PseudoDefsNamespaced.lean/declarations/nndist-ofdual.md) | 1199 | `result-track:cd029e99cbbe289298dc05db7c9ee25a9e04d0d45ec66878e5743a5b264ac583` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81d413ee05e35690294bc9b86b2d97fd70d29e0e49d2ee76461eb57c68d67eec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
