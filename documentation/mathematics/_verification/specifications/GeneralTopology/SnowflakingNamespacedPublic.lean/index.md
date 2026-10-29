# Verification target: Snowflaking Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0594db49b9c1a76f005afb893b0996977af34fde",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0594db49b9c1a76f005afb893b0996977af34fde`.

Source path: `GRWTSK/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MeanInequalitiesPow` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Snowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/snowflaking.md) | 72 | `declaration-track:faf55e49a274524ec6b7e12a2f757a00acb918f19fe74934053080a67250bbf1` |
| 2 | `def` | [ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/ofsnowflaking.md) | 81 | `declaration-track:cc2d287ab2b50537006b7d75ecd5ba14d4f2eb71faf4a951a87fa029e60d143d` |
| 3 | `def` | [toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/tosnowflaking.md) | 88 | `declaration-track:5c7dc71f5a09fe522938e4bc1c5936d9d825bc1590ba6c1a6917f274c255f33d` |
| 4 | `theorem` | [toSnowflaking.sizeOf_spec](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/tosnowflaking-sizeof-spec.md) | 91 | `result-track:44d03598ccdab65b7a86e4abd9ff8f09c939c115bd783fc013bbfde4d896ba5c` |
| 5 | `def` | [casesOn_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/caseson-tosnowflaking.md) | 99 | `declaration-track:bba76ae127bc69627d1ed33d5ede85ce86e4bd77fd02a95df580a43f4c9f5313` |
| 6 | `theorem` | [mk_eq_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/mk-eq-tosnowflaking.md) | 105 | `result-track:7ee1f5c2af8b218f3cdba0916356c0ab9a1ec0f86003f0cb5aaf6e3675937b4e` |
| 7 | `theorem` | [val_eq_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/val-eq-ofsnowflaking.md) | 108 | `result-track:dbd86c56f36f7010876decb04a05161218870867bbaaa3dce3decdabbb22ee61` |
| 8 | `theorem` | [symm_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/symm-tosnowflaking.md) | 111 | `result-track:14f90077c70d5e94a7c7690f81c82107e98474f58d414c72d0afb50784a5c9c7` |
| 9 | `theorem` | [symm_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/symm-ofsnowflaking.md) | 116 | `result-track:caecbce463343cba8ae2a696fb83d9c4e503c51c468b22561709dc497b3d5fca` |
| 10 | `theorem` | [toSnowflaking_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/tosnowflaking-ofsnowflaking.md) | 121 | `result-track:14d2957c0012746e3dd5fa1ab7a619464510becef8a88d82cc42ccce945df863` |
| 11 | `theorem` | [ofSnowflaking_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/ofsnowflaking-tosnowflaking.md) | 126 | `result-track:65f4bbf0f50232668c9eddf40e6e9a674fddc310be88fd392924dc7ec8b199e3` |
| 12 | `theorem` | [ofSnowflaking_comp_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/ofsnowflaking-comp-tosnowflaking.md) | 131 | `result-track:c4684af0853b1723198e391d65dc12f5d6bd57b966842322936296657425e33c` |
| 13 | `theorem` | [toSnowflaking_comp_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/tosnowflaking-comp-ofsnowflaking.md) | 136 | `result-track:63fa1d6c7391c497ed774fded16efce39970dbdb5a9fb7bc6d164b306f70b04c` |
| 14 | `theorem` | [image_toSnowflaking_eq_preimage](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-tosnowflaking-eq-preimage.md) | 140 | `result-track:a6bd59f43b012596f26c95feafa6c0e04a302f7d3e8a9963f033cb32e3316313` |
| 15 | `theorem` | [image_ofSnowflaking_eq_preimage](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-ofsnowflaking-eq-preimage.md) | 144 | `result-track:efc3a5a1070172f7e2fe0cf0a499c3385f928c6b6e7f6d396c6542b40efcf8af` |
| 16 | `theorem` | [image_toSnowflaking_image_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-tosnowflaking-image-ofsnowflaking.md) | 149 | `result-track:801b3ef23fb042222a708c4c043fe0db9b615c3bad5bc1dc9fb37e7689525855` |
| 17 | `theorem` | [image_ofSnowflaking_image_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-ofsnowflaking-image-tosnowflaking.md) | 154 | `result-track:bc33624ed08d9d9a0ce3189076455b497572db171e260160a5c6315cbd71a604` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 169 | `declaration-track:4112105414cb2e96f6f0edc2f368ee0eee64981a6752f989402dfb38183458c1` |
| 19 | `theorem` | [continuous_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/continuous-ofsnowflaking.md) | 172 | `result-track:e4a0e3bc3eb226d84de7e7c85153a17419ba8aad800e2f40c1a0634691eaf563` |
| 20 | `theorem` | [continuous_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/continuous-tosnowflaking.md) | 176 | `result-track:6aa76e8c37c5cb298396fcfea975f4f3ef37b0fa591ad00870247c71b86b61bd` |
| 21 | `def` | [homeomorph](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/homeomorph.md) | 181 | `declaration-track:7efcad680b461d96577eb304eb7e7740cd045737edc5bf7a6793c62ea2fd650e` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 191 | `declaration-track:7a4592f8b3f774ad0bca16708d2942d1ea7592e7ac2674c45609cf1bc3ecfc96` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 194 | `declaration-track:5b6866fbcfb63d3b9cfc970ba5bcf4f4849e302ec0c6976e74ad669df6323b61` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 197 | `declaration-track:a4279dceb21960b7779873d58ed32118c8d0a27962faf415182c6d53609343e7` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 212 | `declaration-track:65452320342c0bd2449bdc71ecd2de9633f056966f04ed0e0db4118d34761ffd` |
| 26 | `theorem` | [isBounded_image_ofSnowflaking_iff](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/isbounded-image-ofsnowflaking-iff.md) | 217 | `result-track:057ae3a215242a2b263f89f0c016e7bc618b6a5bf4f1ad914f8a9317f331624b` |
| 27 | `theorem` | [isBounded_preimage_toSnowflaking_iff](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/isbounded-preimage-tosnowflaking-iff.md) | 222 | `result-track:2c3c0d8580a823cc05603c651bb3b8485777358b83968b526c63008f0aa5d628` |
| 28 | `theorem` | [isBounded_image_toSnowflaking_iff](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/isbounded-image-tosnowflaking-iff.md) | 227 | `result-track:75f92a4510826e0f2f3551012b2611577928a29ea3ca0a443849e02b32b0ce9d` |
| 29 | `theorem` | [isBounded_preimage_ofSnowflaking_iff](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/isbounded-preimage-ofsnowflaking-iff.md) | 232 | `result-track:4defe38b4a9e1490bca8f8e0edbf41c90b2e3cac6389e01828576c19c7486d98` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 248 | `declaration-track:b94b36246006edb0106c53f94adeeb43f243b4b5094b4bbd02b48b989fa66a25` |
| 31 | `theorem` | [uniformContinuous_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/uniformcontinuous-ofsnowflaking.md) | 251 | `result-track:d05a51ce7e8cec8b86792e16b84992172c70a9bf7385f04e54f786e5c03a08f3` |
| 32 | `theorem` | [uniformContinuous_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/uniformcontinuous-tosnowflaking.md) | 255 | `result-track:93acaef56314f0a64c73a09df7975161facc88f0bd160c079b278dcb16ab4aad` |
| 33 | `def` | [uniformEquiv](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/uniformequiv.md) | 262 | `declaration-track:f43b95ffd941425f98ac700af90650e9d7e8cd3bff39330886f19fc6cf3b14fe` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 282 | `declaration-track:bd86af4d2bcceeba0ab1ae7864d742a5231d8776f6773c537ccb54f1d2553a09` |
| 35 | `theorem` | [edist_def](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/edist-def.md) | 285 | `result-track:d30af3cf8ba511a633331aaf6abea905e33dab76ee9926d299da8e671a772378` |
| 36 | `theorem` | [edist_toSnowflaking_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/edist-tosnowflaking-tosnowflaking.md) | 290 | `result-track:48cf75bd1188fd76c7083458ab07608921eb2f8f2090247973486425d0aaa50f` |
| 37 | `theorem` | [edist_ofSnowflaking_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/edist-ofsnowflaking-ofsnowflaking.md) | 295 | `result-track:2138c0dee31033416d8bd25e255afe0d7aa9f26e2b93342cdb0ae243cacaf180` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 305 | `declaration-track:d088d8699706ae95c5df9742c9ef16d090eb76ed202451e3ca1a4987e1302218` |
| 39 | `theorem` | [preimage_ofSnowflaking_eball](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/preimage-ofsnowflaking-eball.md) | 321 | `result-track:b3953edd9991b17694d2a238a11d781fc82df2b8575e4e007ef85badc64a469d` |
| 40 | `theorem` | [image_toSnowflaking_eball](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-tosnowflaking-eball.md) | 328 | `result-track:fff9e126ce8141708cfd84ce3ae97a93cd6964e8069baf905b4250926703eb4f` |
| 41 | `theorem` | [preimage_toSnowflaking_eball](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/preimage-tosnowflaking-eball.md) | 334 | `result-track:86fd5eda96fa3fd6379adea5c588c8ba4043fbb91584aa9a80f00cd1148defdb` |
| 42 | `theorem` | [image_ofSnowflaking_eball](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-ofsnowflaking-eball.md) | 340 | `result-track:41ad46687943167191ef91cef4734a63f4b89ef3b50786fa89515f6686a3951e` |
| 43 | `theorem` | [preimage_ofSnowflaking_closedEBall](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/preimage-ofsnowflaking-closedeball.md) | 345 | `result-track:46074dc5b2d7a240e95c39c426babd948c497ebd59076a7a70f9c12a5d16d7bb` |
| 44 | `theorem` | [image_toSnowflaking_closedEBall](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-tosnowflaking-closedeball.md) | 352 | `result-track:cb360fe3690b163645bca22143251f6f06f475e8372e89650b0df3ba0dd1ff0b` |
| 45 | `theorem` | [preimage_toSnowflaking_closedEBall](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/preimage-tosnowflaking-closedeball.md) | 358 | `result-track:c24f54bca83484f179b96251b3f8df89d9936ba39edbc9116179464f09b40d83` |
| 46 | `theorem` | [image_ofSnowflaking_closedEBall](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-ofsnowflaking-closedeball.md) | 364 | `result-track:c7b9fb59229fd3fc97c51cfd2b4b334cb35c30d1978aeaa7fd2870ac20464065` |
| 47 | `theorem` | [ediam_image_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/ediam-image-ofsnowflaking.md) | 370 | `result-track:2f047edd3e16f61f984417205a980d0656b4f0ebb527f2f87aa6277de6000dc9` |
| 48 | `theorem` | [ediam_preimage_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/ediam-preimage-tosnowflaking.md) | 377 | `result-track:e5c1231430f3ccbcd06191d93faa4a94a01cd0e4e4e3f15310bc45393e047c71` |
| 49 | `theorem` | [ediam_preimage_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/ediam-preimage-ofsnowflaking.md) | 382 | `result-track:9a5c9b820aa1a5f4585fdff61409efcf5910aed7d2da3ad64565930e894052cc` |
| 50 | `theorem` | [ediam_image_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/ediam-image-tosnowflaking.md) | 388 | `result-track:79429b5e75c3921e11bdd9cd23e0fc6964819ad5306aff26f579f401d0ac1c85` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 394 | `declaration-track:9bf1bfb7553d209add3b7d741ae825e5e7ae1e2de94eb09361c1dd71856a75da` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 406 | `declaration-track:533b172f70aacc2db1f59a588e15fed3d7496076e284ac651cbff620cb4cd95d` |
| 53 | `theorem` | [dist_toSnowflaking_toSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/dist-tosnowflaking-tosnowflaking.md) | 410 | `result-track:ab45c7d72373ef4d25a456aacd581178321529506d1cbe7c41e2cd91eaec448f` |
| 54 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance.md) | 418 | `declaration-track:406e9a557088abbe9c0135b947c711f8af96a35edd4e57cf73a55802dddb236d` |
| 55 | `theorem` | [dist_ofSnowflaking_ofSnowflaking](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/dist-ofsnowflaking-ofsnowflaking.md) | 441 | `result-track:94e10586c886034adb881f4c681dd47cffbce0ac81bfd8032ba8c618ba706e03` |
| 56 | `theorem` | [preimage_ofSnowflaking_ball](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/preimage-ofsnowflaking-ball.md) | 447 | `result-track:eacfdc7779f903a66414c267f7e012e32fda3d9c708c9b9187b5de5f02126fe8` |
| 57 | `theorem` | [image_toSnowflaking_ball](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-tosnowflaking-ball.md) | 453 | `result-track:d75710e683af70fdd4435cd18fd3cdfd12bb05e2b77942e2b141a5cfb3745df4` |
| 58 | `theorem` | [preimage_toSnowflaking_ball](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/preimage-tosnowflaking-ball.md) | 458 | `result-track:9f38ee3d56a62bc08fa2ae8ae4c6ab0e873b6bb768726a832698ef51bcb6f3d2` |
| 59 | `theorem` | [image_ofSnowflaking_ball](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-ofsnowflaking-ball.md) | 464 | `result-track:aaebb9dd7aff68a8f9f491dfeeb66da5378e0915de3a121a912319fc8c9cae93` |
| 60 | `theorem` | [preimage_ofSnowflaking_closedBall](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/preimage-ofsnowflaking-closedball.md) | 469 | `result-track:f4537a68bbca66bb4359009ff3f42b8a3e63c751afa7eb8d676a9281aec95a6c` |
| 61 | `theorem` | [image_toSnowflaking_closedBall](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-tosnowflaking-closedball.md) | 476 | `result-track:911ee607dd528941f74cdf1b8848b0f997bb416de3064712d44f5f5416d9e638` |
| 62 | `theorem` | [preimage_toSnowflaking_closedBall](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/preimage-tosnowflaking-closedball.md) | 482 | `result-track:dcbab79f500cc7fd968958e516428c4fcca3f38f9fc671a142797114d202a0aa` |
| 63 | `theorem` | [image_ofSnowflaking_closedBall](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/image-ofsnowflaking-closedball.md) | 488 | `result-track:01b0ee140c6bbf829a1a30f266067ff5b847c3b8f99183dfca27cc02e549cdc7` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/SnowflakingNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 494 | `declaration-track:ddf86e01105e33a944b1e39cc5a56ef3903179aef2d1d47c7769fd90601b30c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=953eba4f0ba5439e88bf237075d588d32c1f7d023bcedad28c9b97a7b7f8c1d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
