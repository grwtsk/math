# Verification target: Bind Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe5e40056559b8a11cdf2867c2d713230ab28f4f",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe5e40056559b8a11cdf2867c2d713230ab28f4f`.

Source path: `GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/join.md) | 47 | `declaration-track:99f57d6eb259a29d8175b305371c5dfe13dbed0d876148534f2e9d8935c4b6a9` |
| 2 | `theorem` | [coe_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/coe-join.md) | 50 | `result-track:b795537697c519404d480bf6d3b8ba4c7bf4fe9658b9686eeb607a5eca1ff8b8` |
| 3 | `theorem` | [join_zero](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/join-zero.md) | 57 | `result-track:cefa01e81b3e228b1589dfcb9f4db89d31864d39a9ab423681f00b9f761a039d` |
| 4 | `theorem` | [join_cons](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/join-cons.md) | 61 | `result-track:8a97428e3a8fec1a7d8527e48147e6f7474bb3c7613f85fbdd4acd1c23e79f5c` |
| 5 | `theorem` | [join_add](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/join-add.md) | 65 | `result-track:e23b60fc104bb3014bdbb3fc6846543369e5604f1684122d776471036ec87981` |
| 6 | `theorem` | [singleton_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/singleton-join.md) | 69 | `result-track:9c67dca423721659e9f7608901747c0673761027e11cbd5d7a9bd3852267c429` |
| 7 | `theorem` | [mem_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/mem-join.md) | 73 | `result-track:c54b647f1a729d5e893a3540acb404fcd901fa0c6e9c2b6b30ba6281157d3c0a` |
| 8 | `theorem` | [card_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/card-join.md) | 78 | `result-track:f87b8d4722e56f00c6b08e92f891750f4b6e53c91fe06e3b4a95aa232da519e1` |
| 9 | `theorem` | [map_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/map-join.md) | 82 | `result-track:ae54c6847b5c4daab7341db169ce21c60f173da1178bda0ea14331857c9ef15a` |
| 10 | `theorem` | [prod_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/prod-join.md) | 89 | `result-track:ee88e658f077e9e4424490065b8f38565cf9680c3a4c41905c380dc07bab04f4` |
| 11 | `theorem` | [rel_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/rel-join.md) | 95 | `result-track:ae93870ec195cb225a48dac908e278167a10f5dd27837615a743d2eab2bbb58a` |
| 12 | `theorem` | [filter_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/filter-join.md) | 100 | `result-track:c9e1bb6f100a22d144fc8b4a06ece97b5d92ed1383cfc5d8693367208d2a3594` |
| 13 | `theorem` | [filterMap_join](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/filtermap-join.md) | 106 | `result-track:f41bb6b0f81f2aebf5dc9c91752a871de028df2329e2b854df25a1e7c788ef15` |
| 14 | `def` | [bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind.md) | 121 | `declaration-track:88091187febb40f50672103c28df2532a9209f7175e35324118b0ed95825a4db` |
| 15 | `theorem` | [coe_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/coe-bind.md) | 125 | `result-track:22540dd5fefeca5ff4048303342e38fd1f40515a4b2ec0fee8d4ff7270d722ec` |
| 16 | `theorem` | [zero_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/zero-bind.md) | 130 | `result-track:c5089eab645e43d839d12f1d05c96efc474d608853200521d3ebf772a3d40c63` |
| 17 | `theorem` | [cons_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/cons-bind.md) | 134 | `result-track:b547b6b55d61b291a7cd0842be6c5b8364e6d37c7f584a9c08679febad546276` |
| 18 | `theorem` | [singleton_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/singleton-bind.md) | 137 | `result-track:4eae82c9bab67fcd98b19967fb93ba2c8be9af2275029f5e6512708359874128` |
| 19 | `theorem` | [add_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/add-bind.md) | 140 | `result-track:69b669a4923ce22775d76902cacd950d7ea949df8273b4d0bac63943b503f336` |
| 20 | `theorem` | [bind_zero](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-zero.md) | 143 | `result-track:8e358941b38b0b7a30ba1b88fc08a98e184cc567eab3e9fc36c5af4f77133be3` |
| 21 | `theorem` | [bind_add](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-add.md) | 146 | `result-track:20a9c6bc3c2ae4e91477ff7d1b1d39b61157e19ece85cf083e7f8c805c0b363c` |
| 22 | `theorem` | [bind_cons](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-cons.md) | 149 | `result-track:3afd9599ac965401616c8fd0102af0980a322d6a27bc1d44f9bd6ee279385647` |
| 23 | `theorem` | [bind_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-singleton.md) | 155 | `result-track:b02d1bb86189f2b8e44581ca9c1710b7c09f7c810b55ea259a7a75f63d6603f5` |
| 24 | `theorem` | [mem_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/mem-bind.md) | 159 | `result-track:04053ef1f198bb366b750700176d1534ef7080806ad60c5bf236c3090969f5eb` |
| 25 | `theorem` | [card_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/card-bind.md) | 163 | `result-track:767adc885327dd8e14be04049fa04cf9bf9dd2a48c117f2ee52fb8aaaf0967f0` |
| 26 | `theorem` | [bind_congr](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-congr.md) | 166 | `result-track:a1d20bb69f4cee214681413a6b7ef335034527266013be756632d6cda4de3747` |
| 27 | `theorem` | [bind_hcongr](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-hcongr.md) | 169 | `result-track:88b82daf8f741a8c28221c2a0790d2c7e0b821b07177df18af21d1b4f69073f2` |
| 28 | `theorem` | [map_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/map-bind.md) | 175 | `result-track:ab410e0f2aaf82323b58214e2bad20b03e4cae15faf1ff3b5b916ed28984010a` |
| 29 | `theorem` | [bind_map](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-map.md) | 178 | `result-track:dcb974af9d860a67938ff49475bda93aa1c64f5aff679fec17c3d8ee7a53747b` |
| 30 | `theorem` | [bind_assoc](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-assoc.md) | 182 | `result-track:2af811b7cb5fbde299dd6dcfb7ed32e48f2009f78afa820a2d50632bfef46f80` |
| 31 | `theorem` | [bind_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-bind.md) | 186 | `result-track:fb99a821cafb603fd290699d208f8dde754cbda76c41e8469c9694a8e237d3a6` |
| 32 | `theorem` | [bind_map_comm](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-map-comm.md) | 190 | `result-track:e6367d59fa597a8c086a7cda0ac885b0a41a1de184f820c2e200965ca54597b7` |
| 33 | `theorem` | [filter_eq_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/filter-eq-bind.md) | 194 | `result-track:18bbecca15a53b83f60e1da10fa9a43d095317a83535f1d0fddb937e790e4ab2` |
| 34 | `theorem` | [bind_filter](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-filter.md) | 200 | `result-track:e7a6656884fadc2d808eeccff04e18e974fd99d195109fae429b4abbdb216edc` |
| 35 | `theorem` | [filter_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/filter-bind.md) | 206 | `result-track:2256a238d6f3932f2e75a32654f78c2170ca9242a2b3645b8048b830b4caf8cd` |
| 36 | `theorem` | [filterMap_eq_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/filtermap-eq-bind.md) | 210 | `result-track:581493894a5fcf276aca73a27c39932c1994f69afe82cd7ce81705478448d70e` |
| 37 | `theorem` | [bind_filterMap](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/bind-filtermap.md) | 216 | `result-track:c7fcfa783f9218ca34daa6ef3a039ff0cb85c6ab48b8dc7c882ed82ce2343dc2` |
| 38 | `theorem` | [filterMap_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/filtermap-bind.md) | 224 | `result-track:6917c7c3ecfa65c2b90b26fd6cd05eeb9f868d1215a44de8fd6f0f59bb7008a6` |
| 39 | `theorem` | [prod_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/prod-bind.md) | 229 | `result-track:1fcdd56db351b582fed42673be95f55919cff2d7f5fce033b7dfceba362299fb` |
| 40 | `theorem` | [rel_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/rel-bind.md) | 233 | `result-track:3bb526fefebd1dfd33d72e632d0e70291359845cb1e87f7a1d3dc3b58aad8183` |
| 41 | `theorem` | [count_sum](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/count-sum.md) | 240 | `result-track:f5a088d303365a2235c2431c084fe7cdd08a6997ee22b089831c57cd221d4040` |
| 42 | `theorem` | [count_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/count-bind.md) | 244 | `result-track:409e4f5ccfef3b798f05959e2477303043b064fb2b248a18575536c2beba5ff5` |
| 43 | `theorem` | [le_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/le-bind.md) | 248 | `result-track:0f0fa5fc2aa7688dc9955b958e2b3e7b123a37c8d4b061e9889da79f965846f5` |
| 44 | `theorem` | [attach_bind_coe](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/attach-bind-coe.md) | 257 | `result-track:d029a6c23b921935a588ba03a454fd92e01781849089cb7faf9b8371f6a56c5b` |
| 45 | `lemma` | [nodup_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/nodup-bind.md) | 264 | `result-track:e376c2e6d0b1651d33a915dcf986b06ae3f1ab5537f72692ee5fdcafa4eca9a4` |
| 46 | `lemma` | [dedup_bind_dedup](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/dedup-bind-dedup.md) | 275 | `result-track:5ac7acae157b72c8e53b4401421b09dd76c64ffe584011d8672c43f055477aba` |
| 47 | `theorem` | [fold_bind](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/fold-bind.md) | 285 | `result-track:49a9cb6acfe08a76da4992102b23689b6557b2c7142c29ae33d7c70686e125a3` |
| 48 | `def` | [product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/product.md) | 303 | `declaration-track:3805ba537fbd9863da340df06da01d23c72ff9733bf26631dfaa733d18b5210b` |
| 49 | `instance` | [instSProd](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/instsprod.md) | 306 | `declaration-track:33618065caf045ab1966365e705e120965791146432f9074551b5bc4406f4597` |
| 50 | `theorem` | [coe_product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/coe-product.md) | 310 | `result-track:039845715bfd734d8bec5151db5cdab395eaf6a6f8911ff4d9571257e415e84d` |
| 51 | `theorem` | [zero_product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/zero-product.md) | 317 | `result-track:2f40c468178e51046b9f8806b6e5f32d6e46aa3564b33694de54debe7df8c3d7` |
| 52 | `theorem` | [cons_product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/cons-product.md) | 321 | `result-track:ad7720633163a031574764dc6ff14407e370cea5193781a5c44f9c8e45e7ba85` |
| 53 | `theorem` | [product_zero](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/product-zero.md) | 324 | `result-track:020a5dbed7d9048e90806d174e1f154392a6e110615864b84611d036c6c2d94a` |
| 54 | `theorem` | [product_cons](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/product-cons.md) | 327 | `result-track:bb5d0503df9cf8efa0cc7a00d28e4599d307774a443f53378ffa35b0e2c97ee6` |
| 55 | `theorem` | [product_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/product-singleton.md) | 331 | `result-track:cbabfe78ab48414346af931986ec6718f56fe823c6c331ad5444cc8087ee1c32` |
| 56 | `theorem` | [add_product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/add-product.md) | 335 | `result-track:e778872cfe0130f923061a8397547ce701e669788e4942188ef1b2f6fc75a68c` |
| 57 | `theorem` | [product_add](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/product-add.md) | 339 | `result-track:ff3afac8621e152a0558a9efd2874bbfee0bfa7abc39108129b7741925773c85` |
| 58 | `theorem` | [card_product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/card-product.md) | 345 | `result-track:53cc9ba41d66038cdd512c33bbf26e1fa0f0f6bb6453102fd8ee3cdf84d02c17` |
| 59 | `lemma` | [mem_product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/mem-product.md) | 349 | `result-track:4d2a49dd8f68a3b6a887bd1c6c14f6b96f386274fea9cf4853f351df7815290e` |
| 60 | `theorem` | [Nodup.product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/nodup-product.md) | 352 | `result-track:b5be50f5623c93064d08e83d17b7a4f94b84676959c6e341c4073c68c9e05296` |
| 61 | `lemma` | [map_swap_product](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/map-swap-product.md) | 355 | `result-track:224bb58b977430cfd416f81270eb725d60d9f245ff98112d6643fbeee19a1d21` |
| 62 | `lemma` | [prod_map_product_eq_prod_prod](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/prod-map-product-eq-prod-prod.md) | 359 | `result-track:b5ff893570404521b2992f629a611bf7a6fca074e7d41bfced10c4280b16c450` |
| 63 | `def` | [sigma](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/sigma.md) | 375 | `declaration-track:53fd50f83828f5321c2b4b4793bd06036b5c29bc0400e8bb565c949ab1d55fd2` |
| 64 | `theorem` | [coe_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/coe-sigma.md) | 379 | `result-track:73ccf88813589b7bde27f6034f2b82392a0f0729c386701b932f07a981f67dec` |
| 65 | `theorem` | [zero_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/zero-sigma.md) | 385 | `result-track:364f9b36345ac5cf839b5cd5b600d66e6dfe279b48e6870945319f140b32367b` |
| 66 | `theorem` | [cons_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/cons-sigma.md) | 389 | `result-track:5da6dd1bf642557b66541b683f4c5b521d90b75dc838cd4c7009e8ccafddcd17` |
| 67 | `theorem` | [sigma_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/sigma-singleton.md) | 393 | `result-track:e862fd396b7b5e67d9087619167d854c734f1f1a7b7184d6c8f2d5af1b4902a4` |
| 68 | `theorem` | [add_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/add-sigma.md) | 398 | `result-track:2fb9531cfd9f85a43cffd4f05bde8e2bf8d99bf3750a5e1ba8b30cef18ad0a4a` |
| 69 | `theorem` | [sigma_add](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/sigma-add.md) | 402 | `result-track:d5c6679015dcc2c39c541bb2d65e75389ecfbd79ab9e75c162d08ff09d012d1f` |
| 70 | `theorem` | [card_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/card-sigma.md) | 409 | `result-track:29361cb778c57d9520ce3fcc3f2d22123822514e925b956292288587a09ce0c3` |
| 71 | `lemma` | [mem_sigma](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/mem-sigma.md) | 414 | `result-track:6c78f1d6f7b98e4d8bfdf193b99406fbf995cf22215e5e6fade33e66a39f2040` |
| 72 | `theorem` | [Nodup.sigma](../../../../../Combinatorics/EnumerativeCombinatorics/BindNamespacedPublic.lean/declarations/nodup-sigma.md) | 417 | `result-track:fd000a813b763dec4449741bca4e17347e473f95dc8c4ecc646832d1a2d6b347` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d833405f957f1e09faea0cbccd18a86a739db059a08670a03b4ace242ff2b794 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
