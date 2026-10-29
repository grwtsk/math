# Verification target: Dilation Namespaced Is Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06ae7bd212fb009be192512dddf54919b694ca07",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06ae7bd212fb009be192512dddf54919b694ca07`.

Source path: `GRWTSK/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Antilipschitz` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dilation](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/dilation.md) | 69 | `declaration-track:e0bb3e726bdebd45fd51b51da6543e26586e8366c01a5d4907c6d4a7fc97913f` |
| 2 | `class` | [DilationClass](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/dilationclass.md) | 77 | `declaration-track:a7d0f6180157a6ed6d27659fe85da8361dd928af166a573dda68561d8e707b0b` |
| 3 | `instance` | [funLike](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/funlike.md) | 91 | `declaration-track:87a8804e0902cc0bd54f2166d7e8970daa9321a42bf013621e6a0dd9a61b8dd8` |
| 4 | `instance` | [toDilationClass](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/todilationclass.md) | 95 | `declaration-track:c80b8382b42d2f77f123777f668cd4bc121f4b4ef793579241434969e28f0c99` |
| 5 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/tofun-eq-coe.md) | 99 | `result-track:39dd141b12a800628f09102ff0ded2d083428c50ec34aba3b0c9832a1ff975ed` |
| 6 | `theorem` | [coe_mk](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/coe-mk.md) | 103 | `result-track:9d062cbcf7a6bb427d324ca57ff56f9683b61121cf9d07a58e91738072977347` |
| 7 | `theorem` | [congr_fun](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/congr-fun.md) | 106 | `result-track:b2004d8de5603b9def1cc6020d82888c74a767b8f9fcd046f1657f84b4b5f575` |
| 8 | `theorem` | [congr_arg](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/congr-arg.md) | 109 | `result-track:edef7f2253237272b6e45e014fe91d0f92ed88dbc36b9dd705a62105c625b074` |
| 9 | `theorem` | [ext](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ext.md) | 113 | `result-track:39f40ffe829035e0b5a9cd6070fa49f9f67cc73d6df42118610103aef11d11db` |
| 10 | `theorem` | [mk_coe](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mk-coe.md) | 117 | `result-track:3601dbf0069b7e3253fd12a7f7ea60bdc9366ffbc4108d4592e22501d2757e39` |
| 11 | `def` | [copy](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/copy.md) | 123 | `declaration-track:5b71c15de70401e674bb96980168187681a55d4b8f54d7d8e8a65d2eeaae3610` |
| 12 | `theorem` | [copy_eq_self](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/copy-eq-self.md) | 127 | `result-track:d5b521da1a7d1a247f4564c8dec3909dfb8e083e098ce2bbb2683deb4a640883` |
| 13 | `def` | [ratio](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio.md) | 135 | `declaration-track:3c561fb9ca7e0acea554c37b54002a913242f4f63ce9e08ca80647df83b5ecb5` |
| 14 | `theorem` | [ratio_of_trivial](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-of-trivial.md) | 138 | `result-track:8a35ac27546d3af304785cb38a2b7b9bdc4795079bccfbb1688af38f60e614fa` |
| 15 | `theorem` | [ratio_of_subsingleton](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-of-subsingleton.md) | 143 | `result-track:f6fe7e1c02a394ff285aedeff798add24978d5cb4605e1c3c988fa663d5605ed` |
| 16 | `theorem` | [ratio_ne_zero](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-ne-zero.md) | 146 | `result-track:1cd2276caf6d1f50fbc7625c5d4ee4b58cb162814d4abb0c92d034e35234e3a8` |
| 17 | `theorem` | [ratio_pos](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-pos.md) | 151 | `result-track:9a1c890db0d1d51d65480045365ac73b60e93fa6279e68f93f4cd3320c083b41` |
| 18 | `theorem` | [edist_eq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/edist-eq.md) | 155 | `result-track:41d00f26bac230325b344e06563b38f52d8caa92a429dadafc55d5e1ef83953a` |
| 19 | `theorem` | [nndist_eq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/nndist-eq.md) | 166 | `result-track:7d2a65e376ff4d403c97b4c5ff167d90b6c2f671e7c85e6e3f4abc080468cf4e` |
| 20 | `theorem` | [dist_eq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/dist-eq.md) | 172 | `result-track:7af802799005e5ddcecf9856e3a49af35989cc08e31b29d923b161f22683dd4e` |
| 21 | `theorem` | [ratio_unique](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-unique.md) | 179 | `result-track:f001c0306e2fd5efb3bf365941558bdd2d0250c3cf05da2586b1f64a9903aec1` |
| 22 | `theorem` | [ratio_unique_of_nndist_ne_zero](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-unique-of-nndist-ne-zero.md) | 185 | `result-track:cd89ffa1395672c58344ee9f31404f252ea520261740a8b075618304a8a87459` |
| 23 | `theorem` | [ratio_unique_of_dist_ne_zero](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-unique-of-dist-ne-zero.md) | 193 | `result-track:c5ec99a95ecbd567f3407c98def2691c12867a0aba9d6833fb5bea9018dcbcaa` |
| 24 | `def` | [mkOfNNDistEq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mkofnndisteq.md) | 200 | `declaration-track:9dfc4e1ba5096647b669ca7d2ada32f0c674bbc5c7a17854ae89dc9bf3df5c67` |
| 25 | `theorem` | [coe_mkOfNNDistEq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/coe-mkofnndisteq.md) | 209 | `result-track:ceb08c23396322ce10a547010f032ff60bed0afff78a4ad9bb9711ba5dc61c53` |
| 26 | `theorem` | [mk_coe_of_nndist_eq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mk-coe-of-nndist-eq.md) | 214 | `result-track:24fc0fbd7972dffdd0c026e8b84aa73938318c79d8bceeb16dafe6acd8c8c8fa` |
| 27 | `def` | [mkOfDistEq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mkofdisteq.md) | 219 | `declaration-track:773a46d7ed13ac68b73b816b483c31ab4e5469509c51bd41188e605fc215fb3a` |
| 28 | `theorem` | [coe_mkOfDistEq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/coe-mkofdisteq.md) | 226 | `result-track:83d631af3333189e5e751f0be5561efa3ccd0ab647ffa2c56e26eddfea077916` |
| 29 | `theorem` | [mk_coe_of_dist_eq](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mk-coe-of-dist-eq.md) | 231 | `result-track:b88d7cff7d778d012eeec1f19cf0cceadc872ba63e1b2a29856c0ed63ca58be0` |
| 30 | `def` | [Dilation Namespaced Is Uniform Inducing](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/todilation.md) | 245 | `declaration-track:7e557d94f16935e02c7acd3adce2a62d5129fa0b4cb46a044727374c0dfc0552` |
| 31 | `lemma` | [Dilation Namespaced Is Uniform Inducing](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/todilation-ratio.md) | 250 | `result-track:99afe40399eef1257566edff6bce2e9caf43ef0a1f797ef0a73f622912a00949` |
| 32 | `theorem` | [lipschitz](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/lipschitz.md) | 257 | `result-track:712da414b8dbe8c6d20935daf3450db07d13b3f85498eb1857f6bf06055dd8d2` |
| 33 | `theorem` | [antilipschitz](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/antilipschitz.md) | 259 | `result-track:24d4d84a58dc72da5f8a9f7fd3d6b2322393a7c44043a81aff13f549a5c83f85` |
| 34 | `theorem` | [injective](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/injective.md) | 265 | `result-track:316a3472359ca003fc1bb804dd1bc8dcd0070719295824607b6bc37b99bc7578` |
| 35 | `def` | [id](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/id.md) | 271 | `declaration-track:59a57b9632a102940bf3c8906163957a1426abacbf3b1d8dca593ba39e0bfb88` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/instance-source-edition-2.md) | 275 | `declaration-track:b17ec2d5afbb8b08458f97d32b0ce374e1106bd461c3798d6a5ab16913d18469` |
| 37 | `theorem` | [coe_id](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/coe-id.md) | 279 | `result-track:0b9bc1217fcae583f5657a2b32236ce539b254b9962bfcac9e74d44a872b4555` |
| 38 | `theorem` | [ratio_id](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-id.md) | 282 | `result-track:6bc29dab1c73993449d21ec4b873ce4e732088f43e9b6f252db8ae27022884cf` |
| 39 | `def` | [comp](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/comp.md) | 291 | `declaration-track:b51fc6d485d8dc5e59f356893beb511b1badf0ec759c85483bdfb449cb276c7c` |
| 40 | `theorem` | [comp_assoc](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/comp-assoc.md) | 296 | `result-track:d9ad5f583d2347206f589e9d3ecec32f1652001805a5f4f542ab560a46d88c35` |
| 41 | `theorem` | [coe_comp](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/coe-comp.md) | 301 | `result-track:19bb19b41eb6941c290a5d1fb6ed58348e28caa1a647a4062ed6497c5e37fbf6` |
| 42 | `theorem` | [comp_apply](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/comp-apply.md) | 304 | `result-track:8b8f9aa9d6281121d76890985aab7e583998f978c2f96bd787eef29af566c7b0` |
| 43 | `theorem` | [ratio_comp'](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-comp.md) | 312 | `result-track:4e6380ae81bcc7541b13a858f8bb91c68fcc4aaa5470b5076118e54bff961232` |
| 44 | `theorem` | [comp_id](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/comp-id.md) | 321 | `result-track:5e94f69c9d953bb11ce44f651f11f7baf13e41f8a8fc722ad6ad77fb8ac448eb` |
| 45 | `theorem` | [id_comp](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/id-comp.md) | 325 | `result-track:0c47db2bf318f965bebd00c545998e72e6e4b91fd594b6eca363193404e8c206` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/instance.md) | 328 | `declaration-track:aece9362e20a13a4c54b4d981ff39f10d143c416892d3c71a2f4118a66739b63` |
| 47 | `theorem` | [one_def](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/one-def.md) | 335 | `result-track:ab3e906565239bd29b3dc3cc5397eb06e8a7465203dc8eb51901352cc0fa0fd3` |
| 48 | `theorem` | [mul_def](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mul-def.md) | 338 | `result-track:4eaa0e7a14ed4c289a57d7b820f2b3077016c9da8f72e16548b9bfc2ea7bf792` |
| 49 | `theorem` | [coe_one](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/coe-one.md) | 342 | `result-track:6cff3686065d7a7cbccd075875a7cb9ee7ded5969040f04fcce178e884bb4b2a` |
| 50 | `theorem` | [coe_mul](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/coe-mul.md) | 346 | `result-track:4affa664af628f38d9038241ebd2e6f936c88df3be392038afa135d5ed2e0bd0` |
| 51 | `theorem` | [ratio_one](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-one.md) | 349 | `result-track:10c6aebf9c60205cea989308b5819a083e1bfb387843d11d5ab38f5057ac98fb` |
| 52 | `theorem` | [ratio_mul](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-mul.md) | 352 | `result-track:027c781e7502f968a92c131d3a082c060f0de323748491cbf6cd5049c1515ad1` |
| 53 | `def` | [ratioHom](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratiohom.md) | 360 | `declaration-track:3b33bc1901e99c103ade5b3c616e7b51245687ec98946b609848fe497a1e08a9` |
| 54 | `theorem` | [ratio_pow](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-pow.md) | 363 | `result-track:94fe1eafa10a48171ded83789bb2e00171e958a76cf444e0559af9e8170ea857` |
| 55 | `theorem` | [cancel_right](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/cancel-right.md) | 367 | `result-track:643117eee8abb1a1cbb3566ab5193203d62c34e1ce5729c41e75f89798ac2add` |
| 56 | `theorem` | [cancel_left](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/cancel-left.md) | 372 | `result-track:b217999b163c7fb9245c181f2f12ec8f21bd46a67364fbb974e5dc16968a5076` |
| 57 | `theorem` | [isUniformInducing](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/isuniforminducing.md) | 377 | `result-track:8fa4998289c546d6f82acfe97e0cb3c8cda893cdb2d60732aed61365526c98e9` |
| 58 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/tendsto-nhds-iff.md) | 380 | `result-track:cd3410e8d73966b727c7888d8be1917b0546a8e804d0e4ed027a94b8a3845523` |
| 59 | `theorem` | [toContinuous](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/tocontinuous.md) | 385 | `result-track:643592e05cf10ee2205a1f7d9f40687115786a78470d62b75e41c989c5d0434d` |
| 60 | `theorem` | [ediam_image](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ediam-image.md) | 389 | `result-track:7a6491599de5060115559a7894e577483d6482d5eb505aff8a9ad738e1c2dfcc` |
| 61 | `theorem` | [ediam_range](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ediam-range.md) | 396 | `result-track:37fa1919e86e399f04dd319519c176b8b78b2c149ebd32864410303fdc947ec1` |
| 62 | `theorem` | [mapsTo_emetric_ball](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mapsto-emetric-ball.md) | 400 | `result-track:0c08ca2127c3e7b70adfaf19059bb0bdc64027b40de5154fa881fe929cec4462` |
| 63 | `theorem` | [mapsTo_emetric_closedBall](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mapsto-emetric-closedball.md) | 406 | `result-track:53349eb91ba8d136143adb2376830828726b98d46eb10b4d85e5bb9178a021aa` |
| 64 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/comp-continuouson-iff.md) | 410 | `result-track:aab3153bb0719971fd0fc505669fad35b589aa276eec83c2ab31384022165aed` |
| 65 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/comp-continuous-iff.md) | 414 | `result-track:6fda767f0629ccda0da58aabbaf6616cb3e37c2aa2c058924a0a13e4ca69481f` |
| 66 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/isuniformembedding.md) | 426 | `result-track:9582de3642156c525128294e6db29ff9f3514b38d8c11770094d41ca7c2814b6` |
| 67 | `theorem` | [isEmbedding](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/isembedding.md) | 431 | `result-track:8cbd34d309830f136b5868bbe6aa3981db98055dd5d14dc6e3ff4625ded707f0` |
| 68 | `lemma` | [isClosedEmbedding](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/isclosedembedding.md) | 439 | `result-track:93676db8cf8ff5d678e61badaa7f21b23e09b80739056310ed0fda0d5e750ab7` |
| 69 | `theorem` | [ratio_comp](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/ratio-comp-source-edition-2.md) | 451 | `result-track:6704f0af5fa3d621aca891e45770a73db1f2ff9ebd3cf527a8aa3adafeeb8391` |
| 70 | `theorem` | [diam_image](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/diam-image.md) | 461 | `result-track:40d150006b12d68274910433a2379afe02810741a2a6a15677b87565767225df` |
| 71 | `theorem` | [diam_range](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/diam-range.md) | 464 | `result-track:302ad2859ee6536a6f91ac80f5041b0f9f047b06cf019e3960b357ede659301c` |
| 72 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mapsto-ball.md) | 468 | `result-track:83701b576014e4bcd74ce47fbe5fe0e2bd8fc9013fcc8701e0a53a6ae970b89b` |
| 73 | `theorem` | [mapsTo_sphere](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mapsto-sphere.md) | 473 | `result-track:f4d0dfcc1ad8b43e77ab03d509bc26e48bc9fc19f405d6f34d9de9e9528595ab` |
| 74 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/mapsto-closedball.md) | 478 | `result-track:ab5ba7e76f74aa55a3096624bddefa638c0b026d08e88aba42e0c87fdd293d4f` |
| 75 | `lemma` | [tendsto_cobounded](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/tendsto-cobounded.md) | 482 | `result-track:326f2a580dd11b893f4fa1bebcf0397b568ecceb81411fa3ae03439901984684` |
| 76 | `lemma` | [comap_cobounded](../../../../GeneralTopology/DilationNamespacedIsUniformInducing.lean/declarations/comap-cobounded.md) | 486 | `result-track:585e83a04fde050bb66196576036e11322c74aef607e87fe05e12427509113fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f21ccbd39206288b1cd51cca718347c6638141ad0831d2969bd7033bb730ec9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Dilation/Variant2b4e5431f90022c3ed7c557c0c59570741427bf7b9af86aef6efe7c4dc45caa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
