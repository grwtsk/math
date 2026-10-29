# Verification target: Order Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bdc8ca6049a776cdfbf567bda8ac8ee527505d1",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bdc8ca6049a776cdfbf567bda8ac8ee527505d1`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean.json)

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
| 1 | `def` | [Preorder.topology](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/preorder-topology.md) | 75 | `declaration-track:6c027f7751e84b83379181d8de3361d6b501833947d66de16ac4a456c758a856` |
| 2 | `class` | [OrderTopology](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/ordertopology.md) | 84 | `declaration-track:24eb8a76d98c2206b927ecc4984e58e78af7fe8954d32be2952d4ee8f3e1be66` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:75050172bfaa68ef9f0b4f57abfa27ecb81248a9bbcf38cc6a316d5414e914b7` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:aa0e10bf9d5d0fcb9906f8de4ccd6639ada952fee29b22a3bd90e92db0f7e0b5` |
| 5 | `theorem` | [OrderTopology.continuous_iff](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/ordertopology-continuous-iff.md) | 108 | `result-track:f7110ab6355c0811cfbdbd27683ebde3191a71552f9ec8344686b3330b949b5d` |
| 6 | `theorem` | [isOpen_iff_generate_intervals](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/isopen-iff-generate-intervals.md) | 114 | `result-track:76226104514ab977df4a2a61c65799c0ec1aa2bc0cc90a67f5dda93dc1d8cd80` |
| 7 | `theorem` | [isOpen_lt'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/isopen-lt.md) | 119 | `result-track:fdcb5cc8dbf9e90f2403cf5d624d9480711d347ab9cd00b03f1f332e3ec32522` |
| 8 | `theorem` | [isOpen_Ioi'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/isopen-ioi.md) | 124 | `result-track:325f1306a233fa197ac25e4cd5cbc5166a01e2fbb070b5d0f4322eecf455d45e` |
| 9 | `theorem` | [isOpen_Ioo'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/isopen-ioo.md) | 128 | `result-track:a40c87271b6454baac840cc59bded965e44d6cfe4eff39e02bf14aab602c9661` |
| 10 | `theorem` | [lt_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/lt-mem-nhds.md) | 132 | `result-track:84eacb00298ee54954d144c03d69085f84f05a620a0ea2773671f9452639210a` |
| 11 | `theorem` | [le_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/le-mem-nhds.md) | 136 | `result-track:abf609f1c05b7183450f0c94a73eb4478d2bcaf690929d5a948a69ba86eed2b8` |
| 12 | `theorem` | [nhds_eq_order](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhds-eq-order.md) | 140 | `result-track:d9b0fd2cd88e057f31474de8acf7b7ae1e17e14b2d9b78e6ca64a57ddbdafa78` |
| 13 | `theorem` | [tendsto_order](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendsto-order.md) | 147 | `result-track:54c828c51f787bfe2e929ce30f0f7b116a5d140935396312355471248391b1aa` |
| 14 | `instance` | [tendstoIccClassNhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendstoiccclassnhds.md) | 150 | `declaration-track:255c1acc7938901541da0b86237aa6189a772cf7a2cd3ac23d3967a9016e3bc9` |
| 15 | `instance` | [tendstoIcoClassNhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendstoicoclassnhds.md) | 158 | `declaration-track:def668a84198b441b3345fb7226aaf1048d9655c72e44d5e1775a72400944b55` |
| 16 | `instance` | [tendstoIocClassNhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendstoiocclassnhds.md) | 161 | `declaration-track:9ce8d33d9e6a944d43dffb217d1147f69c43d13eab66baf38a7d3986899e7ed7` |
| 17 | `instance` | [tendstoIooClassNhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendstoiooclassnhds.md) | 164 | `declaration-track:8a71cd927bc24df128eaea69dfa0ba1fd84d92e60662616f6d69e195b4393563` |
| 18 | `lemma` | [exists_countable_generateFrom_Ioi_Iio](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/exists-countable-generatefrom-ioi-iio.md) | 170 | `result-track:a9d72195adda24896ed7dbeb1a50bbe6a074393e47a124bf7407ba090f7aacbb` |
| 19 | `lemma` | [isTopologicalBasis_biInter_Ioi_Iio_of_generateFrom](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/istopologicalbasis-biinter-ioi-iio-of-generatefrom.md) | 191 | `result-track:c96d8e8e62eb65749b5ddaad2f5e752c3e59deacb6ec5281f8a6f934f23348fd` |
| 20 | `theorem` | [tendsto_of_tendsto_of_tendsto_of_le_of_le'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendsto-of-tendsto-of-tendsto-of-le-of-le-source-edition-2.md) | 228 | `result-track:982b3da1309a10d207509556b900f00bef7c398235f9d47c6e762ccf0d827a36` |
| 21 | `theorem` | [tendsto_of_tendsto_of_tendsto_of_le_of_le](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendsto-of-tendsto-of-tendsto-of-le-of-le.md) | 239 | `result-track:40eb5cc16ee4023d571a0b375517fdd572c5080e661b939c8a4a9dd5da533abc` |
| 22 | `theorem` | [nhds_order_unbounded](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhds-order-unbounded.md) | 248 | `result-track:d978d8b20a22bc6a373a21e246ba0031f48b5f060426ec1e3d1afd594b16f45e` |
| 23 | `theorem` | [tendsto_order_unbounded](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendsto-order-unbounded.md) | 252 | `result-track:f1c1a798bb52ed03ff887fd7c43d5d34a8cf433296cf52fb597c6a21bc04a88f` |
| 24 | `instance` | [tendstoIxxNhdsWithin](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendstoixxnhdswithin.md) | 260 | `declaration-track:929a93a2a80373f49dac7f194e6b7cf69764e68ee624a1876ca2ce367fed9a49` |
| 25 | `instance` | [tendstoIccClassNhdsPi](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendstoiccclassnhdspi.md) | 265 | `declaration-track:789c111465af42b2aa07458e42ac488c18c3b73c16820639dcba5a799ade76a6` |
| 26 | `theorem` | [induced_topology_le_preorder](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/induced-topology-le-preorder.md) | 276 | `result-track:713bb3e9dcee942e38dfb26633e57be560e100e905a304f9fff1c645ae25df80` |
| 27 | `theorem` | [induced_topology_eq_preorder](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/induced-topology-eq-preorder.md) | 286 | `result-track:d3589fe3bbb9ed6acdb4ff9322165403cebaecee3d394ff41fc2ab02669369f5` |
| 28 | `theorem` | [induced_orderTopology'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/induced-ordertopology-source-edition-2.md) | 308 | `result-track:9072209e4967995c5191c8891ea8c595d47b2863e3621026511f671efb76a81b` |
| 29 | `theorem` | [induced_orderTopology](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/induced-ordertopology.md) | 316 | `result-track:8931bbaebf58b766f9217c8ff99bb97b5c6af089e88d4797fbea551096dafb1b` |
| 30 | `theorem` | [StrictMono.induced_topology_eq_preorder](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/strictmono-induced-topology-eq-preorder.md) | 325 | `result-track:2da709d7726e9ee9e18ec19bdac4f4c6143f5325ddecf19914ae7443990ba36b` |
| 31 | `theorem` | [StrictMono.isEmbedding_of_ordConnected](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/strictmono-isembedding-of-ordconnected.md) | 336 | `result-track:ef948cb97046a015f60f96dd2d3ce6e02e819b6dd4e981299bb631a24e12934f` |
| 32 | `lemma` | [OrderEmbedding.isEmbedding_of_ordConnected](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/orderembedding-isembedding-of-ordconnected.md) | 343 | `result-track:b575308a856a20233e535327dc0abcf7eff4ec1c4af29f2e5d063d6933250ff1` |
| 33 | `instance` | [orderTopology_of_ordConnected](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/ordertopology-of-ordconnected.md) | 350 | `declaration-track:5e69c6c68b7a5d9b8a84826baa9ad0ab62d293b628e6adbba1c2e7f648d7beec` |
| 34 | `theorem` | [nhdsGE_eq_iInf_inf_principal](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhdsge-eq-iinf-inf-principal.md) | 356 | `result-track:48f7424148cb6d878c5fbebc7014951c615c1b55330d76f649481b7de14149aa` |
| 35 | `theorem` | [nhdsGE_eq_iInf_principal](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhdsge-eq-iinf-principal.md) | 363 | `result-track:edb28bc38c1fbcd8f82af2a61a604325f38bf93bcb44daacbbbfa057f972840c` |
| 36 | `theorem` | [nhdsGE_basis_of_exists_gt](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhdsge-basis-of-exists-gt.md) | 368 | `result-track:d964d2c073f69aefefd8854762846012ac2b3f29ce60c4fd2175db1b843105f0` |
| 37 | `theorem` | [nhdsGE_basis](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhdsge-basis.md) | 375 | `result-track:852ed9f7e5e66abae2f3d63a6d4f618e9e71fcd3272df6a1d3e2be5480c7ca62` |
| 38 | `theorem` | [nhds_top_order](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhds-top-order.md) | 380 | `result-track:e1f6113d8801c9276a8cf0746db66c602b235d23f8354af7eb7644b24582e091` |
| 39 | `theorem` | [nhds_top_basis](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhds-top-basis.md) | 384 | `result-track:5099ab3f6fb8b4d72188abe03aa81cd4011cd6f8d38fbb12ee3d578694f35889` |
| 40 | `theorem` | [nhds_top_basis_Ici](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhds-top-basis-ici.md) | 390 | `result-track:58b06de86855970a332bc25c395104994021f5327baf04324f09ea64c0d01130` |
| 41 | `theorem` | [tendsto_nhds_top_mono](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendsto-nhds-top-mono.md) | 397 | `result-track:7929be0e3b6ddd710c5c60dd19de4681dfb63dc717a84e59c9c88078c6d01087` |
| 42 | `theorem` | [tendsto_nhds_top_mono'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/tendsto-nhds-top-mono-source-edition-2.md) | 404 | `result-track:ef8b3d31835816a0f13f36fec46afb9ee53b667ab7fb37026243f1b699411ff2` |
| 43 | `theorem` | [order_separated](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/order-separated.md) | 416 | `result-track:e5a28e978ae64216161af25889fb48509e2ec443c65c8658984fe23b9bccb977` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/instance.md) | 422 | `declaration-track:19a9dcb342dc887ff462309b7458067d9f84eee00aea30b4cf3b5752eeccabe9` |
| 45 | `theorem` | [exists_Ioc_subset_of_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/exists-ioc-subset-of-mem-nhds.md) | 429 | `result-track:03383de121efa6fdc42744b396b676680369aa1bbe94e9e67750c4bac7ea3b3a` |
| 46 | `theorem` | [exists_Ioc_subset_of_mem_nhds'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/exists-ioc-subset-of-mem-nhds-source-edition-2.md) | 434 | `result-track:645006d6b23d37253cbf6275ed229e0569d27f131811f18f7b504d10b76ab670` |
| 47 | `theorem` | [exists_Icc_mem_subset_of_mem_nhdsGE](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/exists-icc-mem-subset-of-mem-nhdsge.md) | 441 | `result-track:f3a1e740c91211b6148d2b8b7f524a764180d306279dc085b2dc682bdd7e409e` |
| 48 | `theorem` | [exists_Icc_mem_subset_of_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/exists-icc-mem-subset-of-mem-nhds.md) | 452 | `result-track:0966815d62f05831ff7ca6d72553d8541cab679d0b183a4cdbac599bcbcbed23` |
| 49 | `theorem` | [IsOpen.exists_Ioo_subset](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/isopen-exists-ioo-subset.md) | 463 | `result-track:f5b0b72486b5a9a2371075769f61a4b4309ce32e2b1a222e0dec4fdf5ffb1a68` |
| 50 | `theorem` | [dense_of_exists_between](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/dense-of-exists-between.md) | 477 | `result-track:9f61287d64fbdcc1efc260f49777fa51638c38531871dbe43cddbca375465c34` |
| 51 | `theorem` | [IsUpperSet.isClosed](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/isupperset-isclosed.md) | 485 | `result-track:61c2c7ef83b8727ce7be10dcb1796230d307a7dc9c80a39e02b4369b54a705c8` |
| 52 | `theorem` | [IsLowerSet.isOpen](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/islowerset-isopen.md) | 490 | `result-track:f912906ee98544d0b8207b8608753c5cc73552f94e6dc3b65de8d54d39a33b7f` |
| 53 | `theorem` | [dense_iff_exists_between](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/dense-iff-exists-between.md) | 497 | `result-track:64531bbe04ac7325b7e06cc726490d0ffe90dedd487690fdb91d66b22d955497` |
| 54 | `theorem` | [mem_nhds_iff_exists_Ioo_subset'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/mem-nhds-iff-exists-ioo-subset.md) | 504 | `result-track:054b28d246076c0a2f8ea66b9bad9a1868a00e593037cdc54147606e47253272` |
| 55 | `theorem` | [mem_nhds_iff_exists_Ioo_subset](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/mem-nhds-iff-exists-ioo-subset-source-edition-2.md) | 516 | `result-track:54868649c410eccc24d7664ff1b40a10a94d1ed9018a4b4b9122a0b962fe8e5b` |
| 56 | `theorem` | [nhds_basis_Ioo'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhds-basis-ioo-source-edition-2.md) | 520 | `result-track:f192115e15d3188f6b3b9b9f187d4f29c37a84648aaed9f35c1a1190dd3086f6` |
| 57 | `theorem` | [nhds_basis_Ioo](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/nhds-basis-ioo.md) | 524 | `result-track:a501bf3eacef4b74963025dff853b12226cda9039599fb36fba3552cbe147bc7` |
| 58 | `theorem` | [Filter.Eventually.exists_Ioo_subset](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/filter-eventually-exists-ioo-subset.md) | 528 | `result-track:7061e09c6d130b062d73df6cf12ee02a1af595b2be3f1523727a2d2d4284bdc7` |
| 59 | `theorem` | [Dense.topology_eq_generateFrom](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/dense-topology-eq-generatefrom.md) | 532 | `result-track:763ebbdce24b0c3be28d736bf4c97cb40c3011ef4aec98fcf2ca36e70effc159` |
| 60 | `theorem` | [SuccOrder.hasBasis_nhds_Ioc_of_exists_lt](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/succorder-hasbasis-nhds-ioc-of-exists-lt.md) | 547 | `result-track:b8e5548b089a15c81e7ed62057dd008493498c5d5db16ab65d72429625a60ffc` |
| 61 | `theorem` | [SuccOrder.hasBasis_nhds_Ioc](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/succorder-hasbasis-nhds-ioc.md) | 555 | `result-track:7912dc3fa8142e87297819ab4ea1d400d0434bb0022770f5e98a7c8e3dbe84de` |
| 62 | `theorem` | [SecondCountableTopology.of_separableSpace_orderTopology](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/secondcountabletopology-of-separablespace-ordertopology.md) | 566 | `result-track:fa72ea7efe8bc22108b659ef1aeada89860f1fda97ddd06d8d4ec58c68d3761e` |
| 63 | `theorem` | [countable_setOfPred_covBy_right](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/countable-setofpred-covby-right.md) | 577 | `result-track:d1bdd7d93b7048d2ce188d77ff2d983e80b0e091d320807b1e6834a14c947910` |
| 64 | `theorem` | [countable_of_isolated_left'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/countable-of-isolated-left.md) | 625 | `result-track:995aa02e64a5e4c551c0be523d81a92f1e421ecb0e06895f6792925b9c80e114` |
| 65 | `theorem` | [Set.PairwiseDisjoint.countable_of_Ioo](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/set-pairwisedisjoint-countable-of-ioo.md) | 634 | `result-track:be371d5431c6652842bc55eb761684d09fe302955e39c4f5c68054ba730da26b` |
| 66 | `theorem` | [countable_image_lt_image_Ioi_within](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/countable-image-lt-image-ioi-within.md) | 649 | `result-track:076fea62ce1e050f7dc0ebd8ffe29036839d973941fd5647dc2b98001de233e1` |
| 67 | `theorem` | [countable_image_lt_image_Ioi](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/countable-image-lt-image-ioi.md) | 689 | `result-track:2a9295222b30ba0265755d2de5fa442b84d05f8bd13b4517479fa22f07c38718` |
| 68 | `theorem` | [countable_image_gt_image_Ioi_within](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/countable-image-gt-image-ioi-within.md) | 700 | `result-track:6ed8acee8572127c3e8c7189304f0b4f908b0f09dca61dcb68a43e23220db529` |
| 69 | `theorem` | [countable_image_gt_image_Ioi](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/countable-image-gt-image-ioi.md) | 710 | `result-track:64d17a7d2437ece96fb32bcf1c139b02bd9b41ef6c869d7392bd41adcbd8499d` |
| 70 | `instance` | [instIsCountablyGenerated_atTop](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/instiscountablygenerated-attop.md) | 715 | `declaration-track:cc9a8a9bd4bb3aa33247e581c2eb3f8fcee8a58526f171a455fa358cfffd4708` |
| 71 | `theorem` | [pi_Iic_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-iic-mem-nhds-source-edition-2.md) | 745 | `result-track:cfbff36fd8c152fe1f9a13e732b1779ee664269210ab0a0a49cd21852be3a5d8` |
| 72 | `theorem` | [pi_Iic_mem_nhds'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-iic-mem-nhds.md) | 749 | `result-track:ad0bde7692400d5cb0bce76f5074f1cb400c20777812067e4c4a3298309cb301` |
| 73 | `theorem` | [pi_Icc_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-icc-mem-nhds.md) | 753 | `result-track:0467696b9413d7111e58bd8ed91dbefe606f16a8e413daecf8eaea93be57e95b` |
| 74 | `theorem` | [pi_Icc_mem_nhds'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-icc-mem-nhds-source-edition-2.md) | 757 | `result-track:0f03357e24f2c06a046315fb1a24329cd2410c8e3ae2232c08658902c7bf7ce7` |
| 75 | `theorem` | [pi_Iio_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-iio-mem-nhds-source-edition-2.md) | 763 | `result-track:a35e4816e1074d2a3781f921ce85ffe1d90013f33327cee0a38856655f7b1578` |
| 76 | `theorem` | [pi_Iio_mem_nhds'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-iio-mem-nhds.md) | 767 | `result-track:6213029e0f214dc3acde07bb932023d96373801c54596aa1685fabe0c24425ec` |
| 77 | `theorem` | [pi_Ioc_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-ioc-mem-nhds-source-edition-2.md) | 771 | `result-track:9702089291318a6a3b6e8a0fbbaba4adb2a346f973964a9c39753f6ec53f3235` |
| 78 | `theorem` | [pi_Ioc_mem_nhds'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-ioc-mem-nhds.md) | 776 | `result-track:36b1d77a611725f5c3b40180429e939c074c7037bdf397ec80cab9408e004aab` |
| 79 | `theorem` | [pi_Ioo_mem_nhds](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-ioo-mem-nhds.md) | 780 | `result-track:8cc85e6e2a480d512ad00a1633c0b9a32f08ac349b3c5148f3cc3aff562d9229` |
| 80 | `theorem` | [pi_Ioo_mem_nhds'](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/pi-ioo-mem-nhds-source-edition-2.md) | 785 | `result-track:993c8319ca931cd25fbb59f974732a6eac8aab81a1b38cee125d0be8df96762f` |
| 81 | `lemma` | [LeftOrdContinuous.continuousWithinAt_Iic](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/leftordcontinuous-continuouswithinat-iic.md) | 799 | `result-track:8945cb36b976e35dab9530dfd23df3b2a51a37bc4ae047d101a76f841b02366e` |
| 82 | `lemma` | [RightOrdContinuous.continuousWithinAt_Ici](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/rightordcontinuous-continuouswithinat-ici.md) | 822 | `result-track:8508e6fa9ff337be0a57f5a5ed2aa02fc0e8ca5dfbcbf38f4fcdf2e5adf1db04` |
| 83 | `lemma` | [Continuous.of_ordContinuous](../../../../GeneralTopology/OrderBasicNamespacedPublic.lean/declarations/continuous-of-ordcontinuous.md) | 827 | `result-track:4082744f1093fb48b5b912ce9d1a43ae26fcb249d832f6e245ce433b1e3296f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0306c4e24d5f5306d82fa5b30a2aefd02c645fa2155a419caf9db93b2fac0842 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantdb9aa3c2441b189b1abb738d397f899194bc7cfbbed91ad70de1f3bf86bbb326.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
