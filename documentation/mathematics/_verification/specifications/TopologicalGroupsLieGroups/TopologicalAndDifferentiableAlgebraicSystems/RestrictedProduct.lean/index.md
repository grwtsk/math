# Verification target: Restricted Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b86d294c7d72ed8ed1fe13050939547dd635c170",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b86d294c7d72ed8ed1fe13050939547dd635c170`.

Source path: `GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RestrictedProduct](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/restrictedproduct.md) | 134 | `declaration-track:910a5d9b6af2433aa9ac60be3446c24bec5e804a29cfe09210b20e04c805ff7a` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-12.md) | 154 | `declaration-track:5f552b0beebb60be7108ee55f5f4ef789198f315bc0306e3b8367e6bb06bdfd0` |
| 3 | `lemma` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/ext.md) | 159 | `result-track:d7e7ef4d2cf88030724ccaea765d569b5573322310c74bf77a7caf7d0cc5082e` |
| 4 | `lemma` | [range_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/range-coe.md) | 162 | `result-track:3e03a8b17f7fdcb282c43a5ccc15fd6178aa4a7a2758814a90f4fc1a84f03de7` |
| 5 | `lemma` | [range_coe_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/range-coe-principal.md) | 166 | `result-track:0a7b602bc65b31602461045930aed6ed9a9531bb3512a3b8da98b724a92bd8b8` |
| 6 | `def` | [structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/structuremap.md) | 173 | `declaration-track:8ae4e3fa322bd1e5a2c52c3d2208c31f089dca3c7d8c0c00c9fb9863421c3f59` |
| 7 | `def` | [inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/inclusion.md) | 178 | `declaration-track:3d89837419597d0149f53ba59bbbeb2d7f8b9d391905cc6972ac5651c5d2c1fd` |
| 8 | `lemma` | [inclusion_eq_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/inclusion-eq-id.md) | 183 | `result-track:8714b68b84953f1506668cee5459e664b0b42777b528bc94e7d71d0096a682b7` |
| 9 | `lemma` | [exists_inclusion_eq_of_eventually](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/exists-inclusion-eq-of-eventually.md) | 185 | `result-track:87576b34254dae010e0b0b31a1fc4b853dfb31c2ad358e947c3d85479f3ed6ad` |
| 10 | `lemma` | [exists_structureMap_eq_of_forall](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/exists-structuremap-eq-of-forall.md) | 190 | `result-track:f79baaa364f6de1da4b121a39230aa82fc9f022120f183a6712a5734d77e7d60` |
| 11 | `lemma` | [range_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/range-inclusion.md) | 195 | `result-track:fc2fc0eddbd00ba8060d22efc4f95b28b16d645172b018ea722e3a1d2b0a8d30` |
| 12 | `lemma` | [range_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/range-structuremap.md) | 200 | `result-track:7aa6352f6c760ed8cc052444e0f78d1b7b3ec1b0a251556160e5487e0568e73c` |
| 13 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-9.md) | 218 | `declaration-track:3a65f086aae2828c1d6db7c7c1d66a10b906f9a60a7102d60a4c689beed220e7` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-22.md) | 222 | `declaration-track:b85dd3df3b63deda7da45436504a3fe8436c01a76c59e09d56a0422869da4d8b` |
| 15 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-23.md) | 226 | `declaration-track:b8f4766eaecbffa912080312bbb29a7d05d42134b707f15642381cd76d2eaddb` |
| 16 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-14.md) | 230 | `declaration-track:79e7dfb8c0d12c975804dedbb8cbdb49991a0221978e450aa773f8d58f90ef0c` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-21.md) | 235 | `declaration-track:a4524e299abdf117a41fbfe2041c87ba00c0a96b027af610297907c2e55ddf2b` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-25.md) | 239 | `declaration-track:d1758476527eabc3caf38cfe5b40b80e5fda3394cedc90ca276053c84eab613d` |
| 19 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-19.md) | 243 | `declaration-track:9fe28d84454499a8ee396ad32ab2720d7a5c88bb30dc0fe01ac90042a5989871` |
| 20 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-26.md) | 249 | `declaration-track:d19f866245d928e74a2da87341ff077aa65641ee44ff43ee4d536d5a13e5a754` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-7.md) | 253 | `declaration-track:3258ff62b275e600eaeaf729da7bd81369f68a5b7f3c479c1f01cebd24212b0e` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-29.md) | 257 | `declaration-track:ef685d4a2c8151478b914d235b195e5abb0cb56f84e662335d61ec87fe3d3b05` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-24.md) | 261 | `declaration-track:c584ee303d3dc0b0aad4f2d74e4315e03a844b680e4dd15201d28531afa4c560` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-28.md) | 265 | `declaration-track:e1e38ecf2dbc16b36e6d228db44119265f05a3648f563459a121d62fcfb245f7` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-5.md) | 273 | `declaration-track:2cfb269112623393462ca87d2108e5240524774fc480d2b1e5eef4ec6ad94c29` |
| 26 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-6.md) | 278 | `declaration-track:313e5c0324c52e7acd9e94494ac056c7fb06565ba314c14c65da842a7b92c4de` |
| 27 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-3.md) | 283 | `declaration-track:053d61b9738b7cebbd75d3e73d98080db57c623bd012240f2c859bf18c275167` |
| 28 | `def` | [evalMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/evalmonoidhom.md) | 300 | `declaration-track:2d0d75b9bfe640750bb07e1989f2a414098884a15ec08008eb8b4586bb82a89e` |
| 29 | `lemma` | [evalMonoidHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/evalmonoidhom-apply.md) | 307 | `result-track:e1acf95c9a3be06410477eb9d7b4c16c4e215f098407d52821df00a0fc90ded7` |
| 30 | `def` | [evalRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/evalringhom.md) | 314 | `declaration-track:4f3e2e37500cdea878aa2636b628a533e210978faccdec91a00414e3d190ab24` |
| 31 | `lemma` | [evalRingHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/evalringhom-apply.md) | 320 | `result-track:f747f9c016901291216824d495f93db6ab9ee739610c87b5161cb5cefeda16fd` |
| 32 | `def` | [map](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/map.md) | 349 | `declaration-track:38598e695c44431d27527cea392e2c9afcca3739dc477e43d516aa1b2b9baea6` |
| 33 | `lemma` | [map_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/map-apply.md) | 353 | `result-track:b0a690fc808c2cf4e19e38c73fc3c87eb0906e9f59bd55abe5e89588b83c5384` |
| 34 | `def` | [mapMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/mapmonoidhom.md) | 378 | `declaration-track:f6ed3a221e441be874aafb8ef5b36049b9e28ce7071c8d3e1b7e9dd0c4d76b36` |
| 35 | `lemma` | [mapMonoidHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/mapmonoidhom-apply.md) | 388 | `result-track:30341ad6f3fe4b809f1ca4563a0aff6d66828f50d2375efc31aa09173d478d0b` |
| 36 | `def` | [mapRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/mapringhom.md) | 406 | `declaration-track:09522a1c2d52d86077adae30174ef075ace3882d5494bce6939ba2ebc4f781a4` |
| 37 | `lemma` | [mapRingHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/mapringhom-apply.md) | 411 | `result-track:339d6b56da3de58a3870f7102b2abc63fc7c16e177b3c7868ccc03ed4d908c17` |
| 38 | `instance` | [topologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/topologicalspace.md) | 459 | `declaration-track:6e2d76a4afa511f93b1bddb04e10ddc792206b04c034576f5f2f223d15610a40` |
| 39 | `theorem` | [continuous_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-coe.md) | 463 | `result-track:09f1c4a024f93713c86b2ee21aea99fb60d51bd716ad9569f190573edb40b3a9` |
| 40 | `theorem` | [continuous_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-inclusion.md) | 468 | `result-track:6aa4f73c60156eb03ef4c48ba00837f8269fdb7b1e5e1d116b36985d2a6140e8` |
| 41 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-15.md) | 473 | `declaration-track:87f91396e2b50aa3624418a984bd2b9c79ab64061f0ef8ac60110201f00bb1b2` |
| 42 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-10.md) | 476 | `declaration-track:3af9cd976aa9e29896a9dd1736708b77b03d7504d34e4e27dbce7a4fd5b75240` |
| 43 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-20.md) | 479 | `declaration-track:a16a96bf6f5225012676ea58f2fbb6b4e620a397fef4428bec8a2549b7027965` |
| 44 | `theorem` | [topologicalSpace_eq_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/topologicalspace-eq-of-principal.md) | 489 | `result-track:77767a34281b21f8025ef79aa9af3f218a20a21b5798f14beb478f47e852dcfa` |
| 45 | `theorem` | [topologicalSpace_eq_of_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/topologicalspace-eq-of-top.md) | 495 | `result-track:425e201a7593f6fd18d845df3d088654529f0d920a26f7ce0e111cef57576ece` |
| 46 | `theorem` | [topologicalSpace_eq_of_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/topologicalspace-eq-of-bot.md) | 500 | `result-track:4d45a7645356b8cf4d052a4aaaa38f8ba468cc8f1d1a489f50a22886a292ba2b` |
| 47 | `theorem` | [isEmbedding_coe_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isembedding-coe-of-principal.md) | 505 | `result-track:8ed0384478a2224009ba9c7a798f6921b985edea7d8bbe21994ea72ed5b05870` |
| 48 | `theorem` | [isEmbedding_coe_of_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isembedding-coe-of-top.md) | 510 | `result-track:ba31c45ab6ec9ace52266e06d1c4e866448be931b8057c73894c7227ad518769` |
| 49 | `theorem` | [isEmbedding_coe_of_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isembedding-coe-of-bot.md) | 514 | `result-track:57c25c03e73fd55aad705821cf5ff25e343c071e1ddf3060ad8b599568255b9e` |
| 50 | `theorem` | [continuous_rng_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-rng-of-principal.md) | 518 | `result-track:25a7181cb61d7ab16efc645deccef1495e4f3fb860f85e99c531896c22c4088e` |
| 51 | `theorem` | [continuous_rng_of_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-rng-of-top.md) | 523 | `result-track:7a95d7dc25d5471daded0c41ae0c1c4d8715220ea3bb3bb0ce2d53e64c0de032` |
| 52 | `theorem` | [continuous_rng_of_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-rng-of-bot.md) | 528 | `result-track:b7fc41176516f24957a6d465ed1f995bc0845e5d8f12c57562a4aecb3dd857fc` |
| 53 | `def` | [homeoTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/homeotop.md) | 534 | `declaration-track:747c7aaa36279a9d68c1bdf33d9691c1f828897ab25162b1aef92fcb67054fed` |
| 54 | `def` | [homeoBot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/homeobot.md) | 545 | `declaration-track:21477eed96c69ff9b45599c083d59641226a3b609c602b6415999208ac70260f` |
| 55 | `theorem` | [weaklyLocallyCompactSpace_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/weaklylocallycompactspace-of-principal.md) | 558 | `result-track:2a1159c12d908edf014c92c1707833afa28f4dd4f2f21807667a3d1ce1825c8b` |
| 56 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-4.md) | 584 | `declaration-track:12b509b59caf54cd0cccdd79bf0910a6afaa82fa5da4e87e6eb016a1394f6f54` |
| 57 | `theorem` | [topologicalSpace_eq_iSup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/topologicalspace-eq-isup.md) | 598 | `result-track:fc4b0a37ee3e055a294f0ca05028442134e33355cd1e1036b51f70c2fe843c11` |
| 58 | `theorem` | [continuous_dom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-dom.md) | 608 | `result-track:e955d1a91cac8416bc0128e3b05a45986b0eb12836b32484d8b4ccc8780b3321` |
| 59 | `theorem` | [isEmbedding_inclusion_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isembedding-inclusion-principal.md) | 613 | `result-track:56ccacdc46ce262b2f78de0d646692dd629bb710f3cee7a5b9ac423fde6a5465` |
| 60 | `theorem` | [isEmbedding_inclusion_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isembedding-inclusion-top.md) | 617 | `result-track:4dd2475132062bb6149cec1dee5138a9dc24ec6f3591c1d854f6489e1d8dce13` |
| 61 | `theorem` | [isEmbedding_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isembedding-structuremap.md) | 622 | `result-track:ab40c424fbb987252b0502e8967c4661b3c2889dde4a155682d0b7ff2ae74016` |
| 62 | `theorem` | [isOpen_forall_imp_mem_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isopen-forall-imp-mem-of-principal.md) | 648 | `result-track:6f8746f3478111932fa12985a84aed63684d75094f9f80ddfcfa44f22318c965` |
| 63 | `theorem` | [isOpen_forall_mem_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isopen-forall-mem-of-principal.md) | 659 | `result-track:14fcd56186406da5a0002bf907d55d6e8201b821774a6925fc129c10bd43f80a` |
| 64 | `theorem` | [isOpen_forall_imp_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isopen-forall-imp-mem.md) | 665 | `result-track:747d16e3fb777f681c16fc27ac79c545f7a339ab7fc55d5ac8996feb31b405d7` |
| 65 | `theorem` | [isOpen_forall_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isopen-forall-mem.md) | 671 | `result-track:f6255b872ad55919458aac130652902742727c63f8c827b49ab5005fd22c61f9` |
| 66 | `theorem` | [isOpenEmbedding_inclusion_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isopenembedding-inclusion-principal.md) | 677 | `result-track:0a3da88894916d789bc5cd9881c7b16da3f6e3318e67bbb5c798b7f76e3ff6ae` |
| 67 | `theorem` | [isOpenEmbedding_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/isopenembedding-structuremap.md) | 686 | `result-track:907db17900f69ad3afc304f8183c98281ff6425f21638aab8f1e6a055de62aa4` |
| 68 | `theorem` | [nhds_eq_map_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/nhds-eq-map-inclusion.md) | 694 | `result-track:1c9787222876f01ace7bd66745c387fcd5222804b9f031c12508cd1153f665b3` |
| 69 | `theorem` | [nhds_eq_map_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/nhds-eq-map-structuremap.md) | 700 | `result-track:b7359ea3e95aa1ded2d40228ca6e180192f02e7aaa0e1127603a3741c216620d` |
| 70 | `theorem` | [weaklyLocallyCompactSpace_of_cofinite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/weaklylocallycompactspace-of-cofinite.md) | 708 | `result-track:a72b95ee32f7653137bd8f343530f8fb7ed3e9681b585cbe63e31936ece7fba1` |
| 71 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance.md) | 722 | `declaration-track:001fbd9f83a18d82035cc9e500180480e8a4b49ca92879e8805c8ff156d7a351` |
| 72 | `theorem` | [continuous_dom_prod_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-dom-prod-right.md) | 732 | `result-track:8e1a8167c6fd27e7bb229476547b7872c6a5357292a216476cdbde11f023ddd8` |
| 73 | `theorem` | [continuous_dom_prod_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-dom-prod-left.md) | 753 | `result-track:9004847da339cb1aaae426d4afc736b1a8de87a4b6115394364501285626fb52` |
| 74 | `theorem` | [continuous_dom_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuous-dom-prod.md) | 775 | `result-track:618e840d765656ac6829180304c90117fb46a7a70cc19bc04ac0520f1c3ed3ea` |
| 75 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-13.md) | 807 | `declaration-track:6813f3e00d8fffcfe4154637f046ae25a9902bc9239a058a564d1592604df399` |
| 76 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-11.md) | 817 | `declaration-track:5935ea6fcafae77fd7ea9d4b2d2c890bc7ee2981cbecbc32a71d9be5e4362605` |
| 77 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-18.md) | 832 | `declaration-track:9bcef38ed5d0f1f00ca37988b3ae3a107ffb7632cb7a1075ac96ce0e7e68f8f9` |
| 78 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-27.md) | 840 | `declaration-track:dc28a3bc6970a0cb49f3c9dbf883ab412604560ed18c9d537ef45f2e48e9a002` |
| 79 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-16.md) | 846 | `declaration-track:8c422df3e2c8d6a2c5f0d1c00e0f6c87476f5a1bd3a45233b5307577601e5048` |
| 80 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-8.md) | 849 | `declaration-track:32e2cdee703088bd2db524b707f0d9a2b186f3c6eb95637b0e21b2b4c005df7b` |
| 81 | `theorem` | [nhds_zero_eq_map_ofPre](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/nhds-zero-eq-map-ofpre.md) | 856 | `result-track:2762126a5e0cc1eb97395e077346e07f19534dfb9f1e5a51f146c9e82d23d7d7` |
| 82 | `theorem` | [nhds_zero_eq_map_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/nhds-zero-eq-map-structuremap.md) | 861 | `result-track:f90d4461bb25c54f9af03f4778e4fe73293cac6c6dd2b0da0d970e8ad07f4732` |
| 83 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-17.md) | 871 | `declaration-track:99de3f20ab4c8034850193266ac8421ffe332914141abcf5a325d9c1b6d04a6d` |
| 84 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/continuoussmul.md) | 878 | `declaration-track:60e5a9eb179766dec638f4cc6080ae02f2b3dd814872e7ceffcee79a6b607cce` |
| 85 | `instance` | [isTopologicalGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/istopologicalgroup.md) | 886 | `declaration-track:b4fa4200636308fd5fd891b177c34b61fc96c7c39ac563f3159925f65c843f9c` |
| 86 | `instance` | [isTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/istopologicalring.md) | 890 | `declaration-track:db3324833fc1cc2ce877a3f4a635f6fc7f03de4685e0cacbb732197e11cdb64f` |
| 87 | `theorem` | [locallyCompactSpace_of_group](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/locallycompactspace-of-group.md) | 901 | `result-track:79109fa4957b7f3fa901b70eeb422861fa96a62a034c6d5733d68ed8e97c7699` |
| 88 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProduct.lean/declarations/instance-source-edition-2.md) | 911 | `declaration-track:040a1d42fa02b384bfc8a16ef61156b3b0526351af4e5ca9bc9867dad70bd1ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e53c2ebb439b4de9afb234835e8bf8a43e35638b334618b63ed46c3938e41130 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/RestrictedProduct/Variant01db49eaad65048854b9fac73af65a69691125872206af78ff3fab8b927ec97b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
