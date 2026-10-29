# Verification target: Bounded Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77cc4bca6fcb8e95aeecf896bb413fc08a18c905",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77cc4bca6fcb8e95aeecf896bb413fc08a18c905`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean.json)

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
| 1 | `structure` | [BoundedContinuousFunction](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/boundedcontinuousfunction.md) | 49 | `declaration-track:3b18fd878f802b47e277bbb5bb245e2866b52f1028dcc95096306188e7c63537` |
| 2 | `class` | [BoundedContinuousMapClass](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/boundedcontinuousmapclass.md) | 60 | `declaration-track:0bacea947c63a46c503cca9df05ee11d511810ef6e565458f6410c0135ff4b89` |
| 3 | `instance` | [instFunLike](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instfunlike.md) | 76 | `declaration-track:9c6fb9690a60cfcd3c1d00b74dd79de45e56bd886a7694e6b5005b4f2ab9f2cf` |
| 4 | `instance` | [instBoundedContinuousMapClass](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instboundedcontinuousmapclass.md) | 83 | `declaration-track:80b287540c9b8862be76fbdc59f708e1d1279161646d447db4a675325fef0ed8` |
| 5 | `instance` | [instCoeTC](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instcoetc.md) | 87 | `declaration-track:99b2d479d88e61672ae0785097b1586e0249919d0a68ecb731a42f4f712ad095` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-tocontinuousmap.md) | 94 | `result-track:c4c4e30be973225643d303401455ca10afa98ad395dd375dee0d81b69d14c88d` |
| 7 | `def` | [Simps.apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/simps-apply.md) | 98 | `declaration-track:9dc74711468af1e214f91a345d7087c1dfcf75b577f7719b52dbcee24818624a` |
| 8 | `theorem` | [bounded](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/bounded.md) | 102 | `result-track:cef0d0877c0cb41338145ada3b8d86228b682a2c9e1575eb282db9a0fd07c04e` |
| 9 | `theorem` | [continuous](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/continuous.md) | 105 | `result-track:6c0f1203f01e0f00b01986ea681766f4444cee213373a7a8f5e66a7cca3ed8ab` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/ext.md) | 109 | `result-track:8faad16b965c3c0ee10f2e61dc403e6b885a7fe98171eba04125e7b3f7b3e837` |
| 11 | `theorem` | [coe_mk](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-mk.md) | 113 | `result-track:52e820838385d3720d0ffd0d7ef4b44501c0ca74391358fde26900757b527755` |
| 12 | `theorem` | [isBounded_range](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/isbounded-range.md) | 117 | `result-track:bbc567a65c4e4f04c8d94ca9eb5911454e2fe58c34a9d8917c644c1ab7d9217a` |
| 13 | `theorem` | [isBounded_image](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/isbounded-image.md) | 120 | `result-track:039e386560979c718755940253aabe2e1213cd8c2667887172ba2a761c3f57a0` |
| 14 | `theorem` | [eq_of_empty](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/eq-of-empty.md) | 123 | `result-track:56a4eb3932689efe0e8372143a1109e53ca314eb4d10e1de974f2e0e6a8ebf42` |
| 15 | `def` | [mkOfBound](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/mkofbound.md) | 127 | `declaration-track:86cabc7a009b35fbdc74b2b81f24bf0710b15b0c22c33e400f08c02949935eb0` |
| 16 | `theorem` | [mkOfBound_coe](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/mkofbound-coe.md) | 131 | `result-track:618558534187701c0074c90b71723caff88f8af643de70d4a470c580c251ca99` |
| 17 | `def` | [mkOfCompact](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/mkofcompact.md) | 134 | `declaration-track:4b4713be774088537321cb38de9a55bde0f845400ff8c587b253a15ffe437cd7` |
| 18 | `theorem` | [mkOfCompact_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/mkofcompact-apply.md) | 138 | `result-track:6e4b08479a561c28e8d3dc85af54cf49034624c21943bec223c11058a94982ec` |
| 19 | `def` | [mkOfDiscrete](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/mkofdiscrete.md) | 143 | `declaration-track:e8c2cfe1d00dc1ed6bdaa9fc935d1c9b267a696b987ebed3ad02a79afc912cd1` |
| 20 | `instance` | [instDist](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instdist.md) | 148 | `declaration-track:5cc67036ddc2a56e060d5341185e96e93a644aa3b5abd589c3d7c9931fc575f7` |
| 21 | `theorem` | [dist_eq](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-eq.md) | 151 | `result-track:91be3aeb7c1f6cd7ec672ec774a02077cfba0d218368dedcef100ca1b2c09ccd` |
| 22 | `theorem` | [dist_set_exists](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-set-exists.md) | 153 | `result-track:998b46a4ca6d58df0690641ad07c2341850a35a70246063c4d9f97ebdabbd128` |
| 23 | `theorem` | [dist_coe_le_dist](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-coe-le-dist.md) | 160 | `result-track:027d545c067dc7c4b845b3ac37284153e88da5303eb6273a11627bb2b0c5fb37` |
| 24 | `theorem` | [dist_nonneg'](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-nonneg.md) | 168 | `result-track:cb95f951f9d28eb595594c7b866cc75d8829334cddf2abd727b94fa50e20dd0e` |
| 25 | `theorem` | [dist_le](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-le.md) | 172 | `result-track:df10dcea8a69806cf51e11198961fe209bc8c8a43a34ad5e1d9a855f51b06361` |
| 26 | `theorem` | [dist_le_iff_of_nonempty](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-le-iff-of-nonempty.md) | 175 | `result-track:cc50becb032df6721ef716727c5780e3853382e78dca612dc3c249142bf8f92a` |
| 27 | `theorem` | [dist_lt_of_nonempty_compact](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-lt-of-nonempty-compact.md) | 179 | `result-track:9e2d0d6f1c28ac4dac48505eb8e00b1d2334101c0fd4fef1eea1564e0efc544e` |
| 28 | `theorem` | [dist_lt_iff_of_compact](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-lt-iff-of-compact.md) | 186 | `result-track:ff60b843bf0ba5cc83728c5ea5e377a027898e06a4222a574c54d5ead915a06c` |
| 29 | `theorem` | [dist_lt_iff_of_nonempty_compact](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-lt-iff-of-nonempty-compact.md) | 199 | `result-track:2b4660c29af8cfd752840f6d2d1350e62ef6b898c1f6ab95734365e5a408ff40` |
| 30 | `instance` | [instPseudoMetricSpace](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instpseudometricspace.md) | 206 | `declaration-track:874090133cc2e4c68e2c187d96080628ea6a2aaa29754ff05680340e7e368643` |
| 31 | `instance` | [instMetricSpace](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instmetricspace.md) | 213 | `declaration-track:317175ca5feda400b680c4a16dac8aaab58d641e2c47362f9cb48a0995fd6a65` |
| 32 | `theorem` | [nndist_eq](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/nndist-eq.md) | 218 | `result-track:8d6ec9a7de255d57a5bff4e172a3ad9c16e02fa21fcff9eb1accc5e61761e4bf` |
| 33 | `theorem` | [nndist_set_exists](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/nndist-set-exists.md) | 223 | `result-track:da00414ba0215689c8b517791acc35a42c81b26c8dd4836d7a25ad2fee260259` |
| 34 | `theorem` | [nndist_coe_le_nndist](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/nndist-coe-le-nndist.md) | 226 | `result-track:72d7bc3e3d71ddb84862a4c1167011fa577a5e8b0e12cd418c27baf114d41454` |
| 35 | `theorem` | [dist_zero_of_empty](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-zero-of-empty.md) | 230 | `result-track:9a54103cc1e23939b7dbaddab1cd2fefd1f922550c35ec3a4d38140bea98e1ed` |
| 36 | `theorem` | [dist_eq_iSup](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-eq-isup.md) | 233 | `result-track:f625c2b71704f8526120fa711a22c27e4ced3561d104bb13c71115ca88179f58` |
| 37 | `theorem` | [nndist_eq_iSup](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/nndist-eq-isup.md) | 239 | `result-track:5be759834f58401957e97f29603253cd411eb5ae89467ad4db4b4a0ca46464ce` |
| 38 | `theorem` | [edist_eq_iSup](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/edist-eq-isup.md) | 242 | `result-track:4f4a03a47405bccdb95e950ec5b807813f754ec4bfc13114a4aa4cd7231fc04e` |
| 39 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/tendsto-iff-tendstouniformly.md) | 248 | `result-track:87d40aeac4553efa6d309357a850461f83b343f46478f68f96edd945c4c9c693` |
| 40 | `theorem` | [isInducing_coeFn](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/isinducing-coefn.md) | 265 | `result-track:bd5fef42960c1dcb20c0be54a33f99cd07556e28a525291c58798e35bb5bc771` |
| 41 | `theorem` | [isEmbedding_coeFn](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/isembedding-coefn.md) | 273 | `result-track:752c28bc6d66b75c96d1ae59a7d19da7a12d81ef6a4e5b32cf43742a71f38a96` |
| 42 | `def` | [const](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/const.md) | 279 | `declaration-track:fa71e0e2db8089fd7e45aeb2c4eaae6116460b08f3ff66e3559b0850b74ace3a` |
| 43 | `theorem` | [const_apply'](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/const-apply.md) | 282 | `result-track:1e26c910853fd6a05991d34667fde00fe6aad55aaceaef968163974455180774` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 285 | `declaration-track:a23f0fcfeb01f4a4b98b052a409902e3e34be7a2255c17a3fb64a604913c4907` |
| 45 | `theorem` | [lipschitz_eval_const](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/lipschitz-eval-const.md) | 288 | `result-track:911e1a1ef22b60c4b91d20e6c952a96b65220dbc9d90baab50dc6536e8941174` |
| 46 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/uniformcontinuous-coe.md) | 292 | `result-track:cf139a56395abc8dbbb6b459efdccdc5e8de33380654746ebb3049b00927b306` |
| 47 | `theorem` | [continuous_coe](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/continuous-coe.md) | 295 | `result-track:c4d864598a9627395f877284e1edb12094f1b90dbe741ce552260b1210a33687` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instance.md) | 299 | `declaration-track:3105a1685548ba6b93767b6d7e8949741d86892c08a7d3b0f5a24f0881acf38e` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 304 | `declaration-track:8e4110e814e74c3632553ff8b60cbb1a2ffd134d90faae2f4a95ee90c2d24b21` |
| 50 | `instance` | [instCompleteSpace](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instcompletespace.md) | 307 | `declaration-track:770ed462feda6443e40b13b9d7fd89320f85c9dfff5fa9b53e2b3f79e48b97bc` |
| 51 | `def` | [compContinuous](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/compcontinuous.md) | 342 | `declaration-track:5c473c5b603b072967624aff362fcfcfff5470dbe996517c6c055eacdaf71cb9` |
| 52 | `theorem` | [coe_compContinuous](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-compcontinuous.md) | 347 | `result-track:86941a249ed83e8dd8098a820e324ad32c7e9ea64387392a503c30f75eae0154` |
| 53 | `theorem` | [compContinuous_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/compcontinuous-apply.md) | 351 | `result-track:04ba0d9ed793f8daf7a486f577af4dfa7e68651664e478a203f916413d30900e` |
| 54 | `theorem` | [lipschitz_compContinuous](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/lipschitz-compcontinuous.md) | 354 | `result-track:be082980532c673a88a1aa9cae5c31ae071f68bfcf6fb661b04396b05e4d1399` |
| 55 | `theorem` | [continuous_compContinuous](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/continuous-compcontinuous.md) | 358 | `result-track:ebb9a2fcf98102ea80c1f4b4f65058a1ba094ec46410b4fbb23e20f56de88752` |
| 56 | `def` | [domRestrict](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/domrestrict.md) | 363 | `declaration-track:e803b48efe807ed47119303b5dd3b3ca2e68ac7f5ce2a6bd802746b95a8f7164` |
| 57 | `theorem` | [coe_domRestrict](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-domrestrict.md) | 367 | `result-track:665fd3820a410ca992b25290d40ce3839b410a27970193e2a83d53551304a566` |
| 58 | `theorem` | [domRestrict_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/domrestrict-apply.md) | 370 | `result-track:fe7ec38d4e10583d3b784b390e5ff80c852118ee49085fafb27ba38dbba19ff8` |
| 59 | `def` | [comp](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/comp.md) | 378 | `declaration-track:e53f3371dbb3cb7145685b9f2c26d0285e689b40fd535a6eb13cc83eb9a3f647` |
| 60 | `theorem` | [comp_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/comp-apply.md) | 389 | `result-track:58ecd479d23c7b8587c8701d46eb7149497308c4d1c43649a00ab4da60a60304` |
| 61 | `theorem` | [lipschitz_comp](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/lipschitz-comp.md) | 393 | `result-track:f3066f45fb53b925bc55c55c5b670904ced6c89f088ce2f8d4483ee791fccffa` |
| 62 | `theorem` | [uniformContinuous_comp](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/uniformcontinuous-comp.md) | 403 | `result-track:170cf43d9e8727156ce8fe55580255ba7857ae5d1997696290ed223ec7d0ba7f` |
| 63 | `theorem` | [continuous_comp](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/continuous-comp.md) | 408 | `result-track:841b7e97c3e71b4e71b3db04d5de78a1c9aa0adc19797d5ec75ad77ec9c69722` |
| 64 | `def` | [codRestrict](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/codrestrict.md) | 413 | `declaration-track:26a998a44deaa2b5e8e64bfc4268df8d55652bdd4ebd3d22d138158d62516b92` |
| 65 | `def` | [extend](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/extend.md) | 422 | `declaration-track:792f49efabfaa80b346946a17683bea7e30a655b3568917cf448fdbdaa68e0ea` |
| 66 | `theorem` | [extend_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/extend-apply.md) | 430 | `result-track:408626d057f9ff27c18570e8a5ff82a1c81f6d526789f93e07212e1192910f5e` |
| 67 | `theorem` | [extend_comp](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/extend-comp.md) | 434 | `result-track:f20f7d650e8e62521db3cfb5a369c827f929f3b586eabc82744e21255684e83e` |
| 68 | `theorem` | [extend_apply'](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/extend-apply-source-edition-2.md) | 437 | `result-track:c73e52d1ceea1612f022362244f9f1e94a8bcc8a61f42ddd05523f1a3de6a323` |
| 69 | `theorem` | [extend_of_empty](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/extend-of-empty.md) | 441 | `result-track:b910be235a2d82b6e5cad98a03c6117565c269ec59b1412c08f2ebd6ff18dbed` |
| 70 | `theorem` | [dist_extend_extend](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/dist-extend-extend.md) | 445 | `result-track:a1b43f1da960472f1c5a7124fc5ea5757a9b1ca89fb267b028176eec105483b3` |
| 71 | `theorem` | [isometry_extend](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/isometry-extend.md) | 467 | `result-track:2cc0ebd595957269d9d28cfb79b6e2f588b847c6d3f81bfdab71bf75e73bbc87` |
| 72 | `def` | [indicator](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/indicator.md) | 474 | `declaration-track:cc3e36b86a4eb86381527488cbe7c386441f06235feaaa64e8c4520df8b8d279` |
| 73 | `instance` | [instOne](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instone.md) | 485 | `declaration-track:9402eb7eafd9a1d7bc896c523df350ee675fb04c43f732192dfab600b937712a` |
| 74 | `theorem` | [coe_one](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-one.md) | 488 | `result-track:53fb16928daa0f585ec42bfeb8c2046a1cebe10c364017500ea63c45b499b1c7` |
| 75 | `theorem` | [mkOfCompact_one](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/mkofcompact-one.md) | 491 | `result-track:a8d553d413c7d1c7276c5d6fc82adbd08185a4fd140d1367449cc426678df115` |
| 76 | `theorem` | [forall_coe_one_iff_one](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/forall-coe-one-iff-one.md) | 494 | `result-track:ac9a9c03cdfdb124d9b1402ad12a58325704bd8dcdd1a079bd80eab7e165783a` |
| 77 | `theorem` | [one_compContinuous](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/one-compcontinuous.md) | 498 | `result-track:91ccd698ca1dfa2772479a7e826a61e8287884c2f7f4953d4cf9af7858a98d50` |
| 78 | `instance` | [instMul](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instmul.md) | 508 | `declaration-track:3e807ad335172c03838f70659ca3b52328d29bd00889004eafce540a08dd6a48` |
| 79 | `theorem` | [coe_mul](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-mul.md) | 516 | `result-track:420b82be528d137b5e390caaf00527874c1e7579a7785f362ed7d1ae01cc3f74` |
| 80 | `theorem` | [mul_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/mul-apply.md) | 519 | `result-track:b0274e574e4287252f04bea5cc5d1b2b02c54da78a87c291cec345d2c9954aef` |
| 81 | `theorem` | [coe_nsmulRec](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-nsmulrec.md) | 523 | `result-track:838ec89ec475ccb61dbc95a0abe3fb576647be12c83a9020d8d96f92ac033e47` |
| 82 | `instance` | [instPow](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instpow.md) | 529 | `declaration-track:f8faa0d3a423dae9270181d9fca615cc6f87514288cf823b067c80a74b0bef9e` |
| 83 | `theorem` | [coe_pow](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-pow.md) | 538 | `result-track:6c14e165282dc8c6c6d862a669f11a1742442a062c7d13cfadcbd67021043017` |
| 84 | `theorem` | [pow_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/pow-apply.md) | 542 | `result-track:72dd0dbba78835a0ca3c916e3e85ea0c5f83102e94ada00fed4436aea7a3b481` |
| 85 | `instance` | [instMonoid](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instmonoid.md) | 546 | `declaration-track:5b76ba7659d44a35bfe9319f6ebbe700e9b1a6045598007c3bc1d3040e1f3f36` |
| 86 | `instance` | [instCommMonoid](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instcommmonoid.md) | 551 | `declaration-track:e606cefc7490837e46521e1f05b6b4a914c11c5cb2ac7ff59a55289eb70327c9` |
| 87 | `def` | [coeFnMonoidHom](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coefnmonoidhom.md) | 558 | `declaration-track:cdb2f3f0b37ac8f28f8ef7025f1c70f557324e987db9ca7dd86bc3cb703ea5c9` |
| 88 | `def` | [toContinuousMapMonoidHom](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/tocontinuousmapmonoidhom.md) | 567 | `declaration-track:28649b7f0355f38bbb801b3b3461d816f8ce355ca274e117b444b89fac9d27f8` |
| 89 | `lemma` | [coe_prod](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-prod.md) | 576 | `result-track:b6579e4a125153201d001931f486298931b1569e02399cc8333e3c6e25da4ad0` |
| 90 | `lemma` | [prod_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/prod-apply.md) | 581 | `result-track:ce067c43344aea06ee7b89fc3af2220a46a1397cd5d217c7a33730eedb131e7a` |
| 91 | `instance` | [instMulOneClass](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instmuloneclass.md) | 586 | `declaration-track:cf6c6ccee7cbabd6ce630778e88c1c685036db94c81696e6748900080ef8c93b` |
| 92 | `def` | [Bounded Basic Namespaced Public](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/compleftcontinuousbounded.md) | 594 | `declaration-track:022d6c68aebeb252eccee84740f8f940e1ccdd1cee8a25416022aa4f424dd9be` |
| 93 | `theorem` | [mkOfCompact_add](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/mkofcompact-add.md) | 611 | `result-track:faa107dc9ac5c4b4c2faa78c066b22c6509285518d31a119a678b16bea4f3972` |
| 94 | `theorem` | [add_compContinuous](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/add-compcontinuous.md) | 614 | `result-track:59d7cb4288cd57150cc74448e5c6a39a614143d55f28a7d339806c6640737f36` |
| 95 | `instance` | [instLipschitzAdd](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instlipschitzadd.md) | 636 | `declaration-track:fc39f9d58c49dcc80eecbb0eaeaca6c06b2262b59723d6016f03b114b2f23711` |
| 96 | `instance` | [instSub](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instsub.md) | 657 | `declaration-track:0bac2ce8c2baf022df15c83396c54d751a8312ac49b437aefce7ef78946d0432` |
| 97 | `theorem` | [sub_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/sub-apply.md) | 662 | `result-track:5264f226de9d1a34333087c0c8287e1f114db7a75d59963dfd28344e93d58bac` |
| 98 | `theorem` | [coe_sub](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-sub.md) | 665 | `result-track:a2910fc96680e55f6fb25c44243442f638b56eec934929d0134022db35915380` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 673 | `declaration-track:a1cce5a77b27c57f8a2375f777d55e6e3c84355f86f762f5b95bde802053eaf3` |
| 100 | `theorem` | [natCast_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/natcast-apply.md) | 676 | `result-track:bd7d4e2eb0f97ca24c0cf495545bda2c00070f1cf37051ba5ea5ef549617dc37` |
| 101 | `instance` | [(anonymous)](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 678 | `declaration-track:e3f91caca1de38cf8a8fffd3a2f707d72f5dfc926140af6a83d232c1a96d7618` |
| 102 | `theorem` | [intCast_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/intcast-apply.md) | 681 | `result-track:14b0c645b64c76d75bef59fdcae59a5675464b7800b44f8968d9ee525060a6b6` |
| 103 | `instance` | [instSemiring](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instsemiring.md) | 685 | `declaration-track:4c8f8118058fb90e1fdb8c7163e3aad2bcee51163f2a54b5f8c6f428777ca10d` |
| 104 | `instance` | [instSMul](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instsmul.md) | 709 | `declaration-track:8b00a94117cdac6d7ff8cebb8fc68133c2e901e6e58368806453d00c1da4a813` |
| 105 | `theorem` | [coe_smul](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/coe-smul.md) | 720 | `result-track:c280cea90938d811cbc407fd69a7287a7345d85115c57921514b93f6eb41f189` |
| 106 | `theorem` | [smul_apply](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/smul-apply.md) | 722 | `result-track:fd0ce050c6da41921061ef31037701389add61dbb7bbaa4b3883c4cbdb3908bb` |
| 107 | `instance` | [instIsScalarTower](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instisscalartower.md) | 724 | `declaration-track:ab5aac97326f8c27ce4ddbdc3431b3c65d10570abe2b94d78d54a665362dfb59` |
| 108 | `instance` | [instSMulCommClass](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instsmulcommclass.md) | 729 | `declaration-track:7fe0e5f07509953ff0636a492bcd7e7a8354e7ec324f47223bbd3f4dc42808ff` |
| 109 | `instance` | [instIsCentralScalar](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instiscentralscalar.md) | 734 | `declaration-track:e850bcc187179d7a85d042c6eca42d4368b0aa48b6c9089a501ad8ef63b323be` |
| 110 | `instance` | [instIsBoundedSMul](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instisboundedsmul.md) | 737 | `declaration-track:5007a4a5eb648285c87ff7e71e498bfb8f50a52bf415c6b29ae55ffb1af62cd7` |
| 111 | `instance` | [instMulAction](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instmulaction.md) | 757 | `declaration-track:fac493446b31d3c56ea426d1876cc230f1b9b8f8ac4577cd13aed6e18493f6d7` |
| 112 | `instance` | [instDistribMulAction](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instdistribmulaction.md) | 767 | `declaration-track:33654b8ddbb2e07a2222b0f67947fea5c5d108ef4dd7dd0a2cc82b0860845633` |
| 113 | `instance` | [instModule](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/instmodule.md) | 778 | `declaration-track:4c058e530d218987b8261e71741e6c49701869f1049578846aad7d38c1e61b78` |
| 114 | `def` | [evalCLM](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/evalclm.md) | 785 | `declaration-track:893984f3c4db6c34ee95bdfdbdcc4fd046430ca088b54a077466d4b7cb2490af` |
| 115 | `def` | [toContinuousMapLinearMap](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/tocontinuousmaplinearmap.md) | 794 | `declaration-track:e3f16eca215e5f19fb16a7097c8640b77abce47e1de130b9abf2ac370100570d` |
| 116 | `theorem` | [NNReal.upper_bound](../../../../GeneralTopology/BoundedBasicNamespacedPublic.lean/declarations/nnreal-upper-bound.md) | 803 | `result-track:84eb80a4eada09ff6339171d2fff97a72ae98bac578c3e016f74a3229b25b2ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9652b9f4138fe354e742d25299ec8f031ba04b603eb25e2a4a8f372eeed3d35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant98b479fd29b1a543ec89ae5c259b40c09abeb310b0c88d92aac1cb8c4d0fd233.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
