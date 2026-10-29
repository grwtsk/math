# Verification target: Dilation Is Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "402d8f3116b5ba55d2374b422e6be8330b86c87e",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DilationIsUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/DilationIsUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `402d8f3116b5ba55d2374b422e6be8330b86c87e`.

Source path: `GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Antilipschitz` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dilation](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/dilation.md) | 61 | `declaration-track:e44223d2a2a37af97182bc1ec78141a85688ca1e5826817f786b565274338c93` |
| 2 | `class` | [DilationClass](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/dilationclass.md) | 69 | `declaration-track:cb0e0d6c3c25a4d143f648ad790be0eec6b67d4f1c7b1b768f09ae014bbc1c90` |
| 3 | `instance` | [funLike](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/funlike.md) | 83 | `declaration-track:98326589279bcafb560ebd74140e3aa857cf0666f01a0e27ac4e08a88a57a528` |
| 4 | `instance` | [toDilationClass](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/todilationclass.md) | 87 | `declaration-track:87ca279f960dfd5648574eb10b85d935061aee38de5672d19feee45db7b64f85` |
| 5 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/tofun-eq-coe.md) | 91 | `result-track:fb070939252928b18e79c48395e52dadeedd6b39828d1ef3ce9d892b8df41419` |
| 6 | `theorem` | [coe_mk](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/coe-mk.md) | 95 | `result-track:7cfe5e5455822e8d532b36506a50798491571e9bedbdeea669f99217e123c56e` |
| 7 | `theorem` | [congr_fun](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/congr-fun.md) | 98 | `result-track:6438a7b11cfea4f1d2d37afd5157d6cf2dda8ca961b2a356e40eb50c59fa0169` |
| 8 | `theorem` | [congr_arg](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/congr-arg.md) | 101 | `result-track:1134c884e949b8717dd3466e980d8996222a105bfbda21615d3eabc38c285bb3` |
| 9 | `theorem` | [ext](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ext.md) | 105 | `result-track:af9e99261f6e021b45e6f6a774065704e00948865e36f89ced2eab14653edba9` |
| 10 | `theorem` | [mk_coe](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mk-coe.md) | 109 | `result-track:03d847067006030e593af665e8c616fcf2314e143f8c681293e0ed7ffa284642` |
| 11 | `def` | [copy](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/copy.md) | 115 | `declaration-track:ffd8c6e2d5722e1895eefe82f8c29f2eab0567afc721c1f0dd00734dbc5c400c` |
| 12 | `theorem` | [copy_eq_self](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/copy-eq-self.md) | 119 | `result-track:e62c06604dd9692f1378f8e28cdd19523984595bbaae9e0529e81ff5c173571a` |
| 13 | `def` | [ratio](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio.md) | 127 | `declaration-track:c581027ac5b58d0db799586643b03582eba8c6ea63c52ebcc7ee7097d4550c2e` |
| 14 | `theorem` | [ratio_of_trivial](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-of-trivial.md) | 130 | `result-track:075669133b3606eeeee936df4ff57b6c318904ecf13308240d0c91c596f7d7ff` |
| 15 | `theorem` | [ratio_of_subsingleton](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-of-subsingleton.md) | 135 | `result-track:35f3509aa47529de1be33d077a09eb3f5fe4891117abe2021841ba9d9c9cbf2d` |
| 16 | `theorem` | [ratio_ne_zero](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-ne-zero.md) | 138 | `result-track:22a4b22540dd5decb6a7977de094755ff8c92cf953a9f554bab40ca6aeb765ff` |
| 17 | `theorem` | [ratio_pos](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-pos.md) | 143 | `result-track:d000deae387d4688a3a1bf5c9e1e9290ec815764cf603430d1206313609df665` |
| 18 | `theorem` | [edist_eq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/edist-eq.md) | 147 | `result-track:9be6e63b88963bdc42ff8f66f68965c86baf363bc266d99ac72728afef6b774b` |
| 19 | `theorem` | [nndist_eq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/nndist-eq.md) | 158 | `result-track:bf1c07c6f1c5f5c64718b1728fdb940be76834ef1c3abe68c25c017c91154318` |
| 20 | `theorem` | [dist_eq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/dist-eq.md) | 164 | `result-track:2f846b72c5039e12868417c7cd41874742475b21391482b4af9b2e77f765b651` |
| 21 | `theorem` | [ratio_unique](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-unique.md) | 171 | `result-track:4dcf9bff6b3f15a62c6322d03472775e1c0b006185006cc6daa3c56effb3e4ec` |
| 22 | `theorem` | [ratio_unique_of_nndist_ne_zero](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-unique-of-nndist-ne-zero.md) | 177 | `result-track:cac0550de9d9a1393bf7129817760a9dd243f0096e85b460398e6858ec2713a0` |
| 23 | `theorem` | [ratio_unique_of_dist_ne_zero](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-unique-of-dist-ne-zero.md) | 185 | `result-track:9851b7e27afe3f95975b30bcb74fa253e8f018c4f525064a0160085fc8c8a699` |
| 24 | `def` | [mkOfNNDistEq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mkofnndisteq.md) | 192 | `declaration-track:f8b994da042f3e0737746cbcf09765560ac26da332849fd3344722a87b9940cb` |
| 25 | `theorem` | [coe_mkOfNNDistEq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/coe-mkofnndisteq.md) | 201 | `result-track:9533bf9e47f6a30277082fc8af37adbde238542219135be2619ca54f4a87fc6a` |
| 26 | `theorem` | [mk_coe_of_nndist_eq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mk-coe-of-nndist-eq.md) | 206 | `result-track:2db8b11e6f19c8885afe797c2f866d87bcea2e36a96ae93948b50f9168090afd` |
| 27 | `def` | [mkOfDistEq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mkofdisteq.md) | 211 | `declaration-track:a1d4a1b1d6aea028ae516a96a4f8ac8bc2bc689d1114f83790b2db3b32ee01e0` |
| 28 | `theorem` | [coe_mkOfDistEq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/coe-mkofdisteq.md) | 218 | `result-track:73ca6b6bdf5dd47555a87a6a1ecae2baf46c3dbf725e64d9863a600ceb89a44f` |
| 29 | `theorem` | [mk_coe_of_dist_eq](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mk-coe-of-dist-eq.md) | 223 | `result-track:a82b385cc600e7bd93d9eecfb9c91d732b7c6657cb957f5084035e0419e9eb31` |
| 30 | `def` | [_root_.Isometry.toDilation](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/root-isometry-todilation.md) | 237 | `declaration-track:a2ce5966d70867f6c4a97c3f989b70d227c3314a4ecfa8856be11866e236f407` |
| 31 | `lemma` | [_root_.Isometry.toDilation_ratio](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/root-isometry-todilation-ratio.md) | 242 | `result-track:c92e1ca4d0466564844c4b22e3e582dadd587eecb8fc94b87bb2a96325fd2cf6` |
| 32 | `theorem` | [lipschitz](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/lipschitz.md) | 249 | `result-track:25cf6a1726bdf3fdfd6a794953d49d0da13d5e28a391d792eb9e007ffdfa0c74` |
| 33 | `theorem` | [antilipschitz](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/antilipschitz.md) | 251 | `result-track:8925bf048d8ca3af89ebe6afa6e37726cf05d7adfe3e8af37ece35d81ca07780` |
| 34 | `theorem` | [injective](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/injective.md) | 257 | `result-track:35e580ac777faeafee7f8aca9c3ac75aa933db51344da33bac3a9e72e22f07fe` |
| 35 | `def` | [id](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/id.md) | 263 | `declaration-track:fb3e876f7bb91a296251d088549126a8092ae7077817adbe706e0cf3988d20e4` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/instance-source-edition-2.md) | 267 | `declaration-track:9adeb84b8827e52fce6513d5636bc3060e1c287f9389a47e12949057f4a73074` |
| 37 | `theorem` | [coe_id](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/coe-id.md) | 271 | `result-track:3d5ad873a3c1db890ffc707db5b190bedee1555052756664f43990c7ecb5205e` |
| 38 | `theorem` | [ratio_id](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-id.md) | 274 | `result-track:581e86f9e605edd260305c70448bc0fdf64e250c54bdb397118e1d305fe07aed` |
| 39 | `def` | [comp](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/comp.md) | 283 | `declaration-track:ce12da50a2f6424a1e484ed76b4baf27e4778abd5ad31bf714e278b6069e163d` |
| 40 | `theorem` | [comp_assoc](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/comp-assoc.md) | 288 | `result-track:962b22ef1e122e6e0e9702cb4ce89dc2b1be2b929f056c53d18db69b91e9e54e` |
| 41 | `theorem` | [coe_comp](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/coe-comp.md) | 293 | `result-track:c34752460529833d846b04c8288022d055dd1ba397ca24f15cdc6a4e3db310b2` |
| 42 | `theorem` | [comp_apply](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/comp-apply.md) | 296 | `result-track:34fd695baa2cdf891a7bd45f3383e4d1748018bdcceb58996f9cacd50f1a98f7` |
| 43 | `theorem` | [ratio_comp'](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-comp-source-edition-2.md) | 304 | `result-track:9564d6c2cc6bfe1ba234259664f913bcaace93095a6ca85cf5d6fe5e8a2ce1de` |
| 44 | `theorem` | [comp_id](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/comp-id.md) | 313 | `result-track:ec373ac0ede2976798e96517cbe1d93de78f3209fba1368dd3c770dccb7b54ab` |
| 45 | `theorem` | [id_comp](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/id-comp.md) | 317 | `result-track:31ca67127967a9f5103e5ccd1bc24d6a91c49ef475d386bbc12448887b7777e2` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/instance.md) | 320 | `declaration-track:49008de2268ac6457d02f4a9d8edb50c1afb60d035209253658af2a3af8355c6` |
| 47 | `theorem` | [one_def](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/one-def.md) | 327 | `result-track:e455114027c46efa92b3f0c0bd56b7315f122f38ff1d364954f3d9f8f23f5a3f` |
| 48 | `theorem` | [mul_def](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mul-def.md) | 330 | `result-track:cdd2ea37910a68a9b1068935e8154d2144273d45d2332e2a93935347c5d02920` |
| 49 | `theorem` | [coe_one](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/coe-one.md) | 334 | `result-track:36d9e7391cbd9c4d7bfc769b25a3d59136544618bb1aadfa2f6cb1191c60bf21` |
| 50 | `theorem` | [coe_mul](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/coe-mul.md) | 338 | `result-track:f133731c7fa3d57702657d07b1933adf127a53d8445b486c305682babac2fd45` |
| 51 | `theorem` | [ratio_one](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-one.md) | 341 | `result-track:fc9908565818feb09d9d91f0b6286272065f5b188e38b8ee8c3a78bb8b6695f9` |
| 52 | `theorem` | [ratio_mul](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-mul.md) | 344 | `result-track:7a13366c02a30afa05a44bc25c17ace4021fad0a2a4b88a03421b121b0ab8b6a` |
| 53 | `def` | [ratioHom](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratiohom.md) | 352 | `declaration-track:d3afa29f65051915454e9d9663f0b9836d9d448b742a78674543f59ad5cb708e` |
| 54 | `theorem` | [ratio_pow](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-pow.md) | 355 | `result-track:7c08b4674830f67b8b04ae22638b9e169763304f6b2878445bf70dd67333bf8e` |
| 55 | `theorem` | [cancel_right](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/cancel-right.md) | 359 | `result-track:314f7ffda0ab58de438c30c21eff04826cf352cc88cad1f31cf85bcc1518c99e` |
| 56 | `theorem` | [cancel_left](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/cancel-left.md) | 364 | `result-track:76eb9fb9ea2a1063846a01b6e985048b0c741cedcc8232f3acb0a734da9ef698` |
| 57 | `theorem` | [isUniformInducing](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/isuniforminducing.md) | 369 | `result-track:74ad70a3af3d42b7b428ff7d40c8826e490e4c02ca33a103ae082569551f0938` |
| 58 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/tendsto-nhds-iff.md) | 372 | `result-track:d26442dde3694b8bd25885fc91559c1e2232f14e61be6095bc4e1f35ba4f584a` |
| 59 | `theorem` | [toContinuous](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/tocontinuous.md) | 377 | `result-track:ffc857f4c324e3a4cd7fdb033acbb6f10345443919f4d84ad1fe7053be6ff246` |
| 60 | `theorem` | [ediam_image](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ediam-image.md) | 381 | `result-track:ab07a5db22c83a6e27b0bf340b714a76783cc2c5697ddf11b55e644015ff0c4c` |
| 61 | `theorem` | [ediam_range](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ediam-range.md) | 388 | `result-track:91e305f420ed6745db7cc457bebfd5b4f97d16b4b903a1100d223da1b8df407f` |
| 62 | `theorem` | [mapsTo_emetric_ball](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mapsto-emetric-ball.md) | 392 | `result-track:0b12664eb4d05f41373a153f38fb0ce3219681aa0090f6d9d4cca0ddd31a2f11` |
| 63 | `theorem` | [mapsTo_emetric_closedBall](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mapsto-emetric-closedball.md) | 398 | `result-track:e1ed306a8586db7e20aed72a0047292e491198b42e31428a05db4d1222a40e83` |
| 64 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/comp-continuouson-iff.md) | 402 | `result-track:73999e9cda0d3e3fdcf84feb3a22bc58afd17edfe0bc32096578724eb5763b92` |
| 65 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/comp-continuous-iff.md) | 406 | `result-track:e14bcd0f1e8abbc08262acceb62204910fd4c5203b6ce79c062073ca44de8e58` |
| 66 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/isuniformembedding.md) | 418 | `result-track:f17a1cf773af8dc1a86f1e7cdec261f2137f3992dad66277ad527bfe05c86586` |
| 67 | `theorem` | [isEmbedding](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/isembedding.md) | 423 | `result-track:638760c77b007a0937564c4adb70bdcb42b3771b7f909a8cbb05185f45bf56c5` |
| 68 | `lemma` | [isClosedEmbedding](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/isclosedembedding.md) | 431 | `result-track:5c78246c404eeb80de318c356ac5f5c894f4b23a2cf783d2bf4cecae2e8f5994` |
| 69 | `theorem` | [ratio_comp](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/ratio-comp.md) | 443 | `result-track:7658f805cd6df61d3ba15ce84400209e922595ed2afec5c6a8fe173957cf3f74` |
| 70 | `theorem` | [diam_image](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/diam-image.md) | 453 | `result-track:e5f4ee9e65953bac6f3743a183131e0b17e00580bc9df44970525e17316a2c7d` |
| 71 | `theorem` | [diam_range](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/diam-range.md) | 456 | `result-track:d4b13d06f57c5f30b0412d451159dc75a4c42d5cb573dcb52acc2e6105550c15` |
| 72 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mapsto-ball.md) | 460 | `result-track:87caeb2c10ce96975dbcf08a1eca6b18399b495cab0241d79151772db20d7f08` |
| 73 | `theorem` | [mapsTo_sphere](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mapsto-sphere.md) | 465 | `result-track:876b112f96de41dab95eb75fa250c955ca0e3f8ca4f9b59d1567141dbaa7e042` |
| 74 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/mapsto-closedball.md) | 470 | `result-track:c5ef943939364a257da41ca527153e0949b5e6f157ca7cfe152f9b921b1cecf9` |
| 75 | `lemma` | [tendsto_cobounded](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/tendsto-cobounded.md) | 474 | `result-track:d5b06de1961b2c61996bb99fae0387b3d962c8ffe494ea2f3d32b86187c9fa8d` |
| 76 | `lemma` | [comap_cobounded](../../../../GeneralTopology/DilationIsUniformInducing.lean/declarations/comap-cobounded.md) | 478 | `result-track:5c3f71679a5111e11095b9ca710d5f7d919f23262ea740c55a5c45a136a6f8ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83266695961dc75d49cc5be7ae3d3ec869c7f32723abb43a343e95862f88b0f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Dilation/Variant0f3964e01dad08743567bd550a307e0b41ed8b17563f58bbd8f2f9874463eedd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
