# Verification target: Range Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edacd255fc4f091227e0b8beace7baead20dcae0",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edacd255fc4f091227e0b8beace7baead20dcae0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean.json)

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
| 1 | `def` | [range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range.md) | 65 | `declaration-track:e276dcaf40de8819a276b45ed1ef32d1c8bcd727eb6e1e3b67b6ff22e8c14872` |
| 2 | `theorem` | [coe_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/coe-range.md) | 68 | `result-track:0a135a448aa85f48980064243907840fbc32ab54203b7d3a30d87e05e1aac412` |
| 3 | `theorem` | [range_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-toaddsubmonoid.md) | 71 | `result-track:1c18a101503cf622ccb1e5cd2cf30b84634dcc38f884919b24cac697978c3e58` |
| 4 | `theorem` | [mem_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/mem-range.md) | 76 | `result-track:004544d19e7788c4d3926c19b2477f95d0139c0123e211e7e919f4031fd88390` |
| 5 | `theorem` | [range_eq_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-eq-map.md) | 79 | `result-track:97552939220035dac8044a341c5461dffc810ccfd314ebf31d4b69490b7a6519` |
| 6 | `theorem` | [mem_range_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/mem-range-self.md) | 83 | `result-track:841074bdfd97416713539e1e710ab6ce034d38458c4af121f9a30990061d3741` |
| 7 | `theorem` | [range_id](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-id.md) | 87 | `result-track:221b28bb43ce6ff72b6152109b7c72820f2ddc72a371ef29f10f801d4bc33202` |
| 8 | `theorem` | [range_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-comp.md) | 90 | `result-track:6bbb18701645f190effafd23b1b2354e0b19edd3c714b715690e707ba42b7c05` |
| 9 | `theorem` | [range_comp_le_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-comp-le-range.md) | 94 | `result-track:72f5ef22d77feb48e46ea49fafcc04dd0bd0ff1a8730b4b6e9710012653b8382` |
| 10 | `theorem` | [range_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-eq-top.md) | 98 | `result-track:ffd5234782fce55804f98d42ef8bb097ce481392718012e7e4fbe6c48d5d2fd3` |
| 11 | `theorem` | [range_eq_top_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-eq-top-of-surjective.md) | 102 | `result-track:9baedb63735a5be4c44bddbc8b4ea0274f75287d51ae4d25255d6d873b043b55` |
| 12 | `theorem` | [range_add_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-add-le.md) | 105 | `result-track:7b3eb22e909bdda998cc8497cf40f7bdf3db28e7c7c409c6a6de7b5ab897ec8d` |
| 13 | `theorem` | [range_le_iff_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-le-iff-comap.md) | 111 | `result-track:e8a55f6e56b3aa033a9607dd406455d36866c0fcf6cbffc63a2c6ddbad88dca8` |
| 14 | `theorem` | [map_le_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-le-range.md) | 114 | `result-track:27b2cbb75e366546bd7786de0fc0e0073b0b0a033c167014134c173f20a04cad` |
| 15 | `theorem` | [range_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-neg.md) | 119 | `result-track:1ebf3121b928ddc4befd6e3fd06c391baad23ea445ea4133f1efdbd1e0c1d26c` |
| 16 | `lemma` | [range_domRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-domrestrict.md) | 125 | `result-track:f71dad64950fa7d172460bdac843685a915fcbce5f0a6f1fb2077376065a9be4` |
| 17 | `lemma` | [range_domRestrict_le_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-domrestrict-le-range.md) | 128 | `result-track:ed17e1b080460dd2dbf2282e5efc50d5892873bfe8ae0d00233587453a6edb83` |
| 18 | `theorem` | [Range Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/coe-tointlinearmap-range.md) | 134 | `result-track:84de727c35955d4c39b1043b9de19ec8535fb2402970fa96e370049e3cd58449` |
| 19 | `lemma` | [Range Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-comap-eq-of-le.md) | 138 | `result-track:b4491b143d3286e02facd4a9688c0a43f0f36b99d774bdabe1dbd94463cf7b81` |
| 20 | `lemma` | [range_restrictScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-restrictscalars.md) | 142 | `result-track:170ec09e777a567642f0a7a702a8eda9496822c6b467d5fc6e09e6e5d0a5a1f6` |
| 21 | `def` | [iterateRange](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/iteraterange.md) | 151 | `declaration-track:fa01b8f77092ec30eda1a386a3cd0e13818dd35d868d2f0527b6f8b9b3169a5e` |
| 22 | `lemma` | [iterateRange_succ](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/iteraterange-succ.md) | 156 | `result-track:fec819165fa986ea9513d4b1e68cf45200208e0cc18a3eb47372d3fab6c18038` |
| 23 | `abbrev` | [rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/rangerestrict.md) | 163 | `declaration-track:95edfdae9dcb959651d5cc7620cfbd0a39133dda1ed6d3d6f3abadab962e513d` |
| 24 | `instance` | [fintypeRange](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/fintyperange.md) | 169 | `declaration-track:f86ce176ecc6087083960a5aa9c73b6b9ce5cb0e68b9ca00d828d72ba12cf361` |
| 25 | `theorem` | [range_codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-codrestrict.md) | 173 | `result-track:da5f30fafb536f81db24a586ccb8c98faffc3f98273346b4a6079d00ac42524a` |
| 26 | `theorem` | [Range Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-comap-eq.md) | 178 | `result-track:02c724d90069a881a6454cbc1ea738ec66ebd977103ee760d0dab61b82a02f89` |
| 27 | `theorem` | [Range Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-comap-eq-self.md) | 184 | `result-track:7e9697553c868576d904d61983f7f855684c6877192945c3ce94737546a278bd` |
| 28 | `theorem` | [range_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-zero.md) | 190 | `result-track:fd2dfdb7742a71b71d3a4a592c3bfec174f9ea6cfeb1d4d6c516544eb12035b3` |
| 29 | `theorem` | [range_le_bot_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-le-bot-iff.md) | 197 | `result-track:1ee6586651670b711ae6d85fb00b1981db5064ec0f0e39c081e17ee9385d9adb` |
| 30 | `theorem` | [range_eq_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-eq-bot.md) | 200 | `result-track:f63a4853c8e66acd28f2bbf5937993699aa3edd45842ad5b8568be1a5169d1c5` |
| 31 | `theorem` | [range_le_ker_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-le-ker-iff.md) | 203 | `result-track:e28ee66ea4cbb540b83a825b1d5794222a18a6f14e95cc9a65aa9ee2da43f083` |
| 32 | `theorem` | [comap_le_comap_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/comap-le-comap-iff.md) | 208 | `result-track:4f7346abe1136242b7ba81dadfe9d989063cfdecc301b93d161d828a50767caa` |
| 33 | `theorem` | [comap_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/comap-injective.md) | 212 | `result-track:fc3296bdb7d5242a2fb7c9672de8ae992a6a7b4e362a8be238093ec219a6125c` |
| 34 | `theorem` | [ker_eq_range_of_comp_eq_id](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/ker-eq-range-of-comp-eq-id.md) | 217 | `result-track:6e34a89b9caa42513d73d0687176123ec3402031aee58b4fcfbbc60703126782` |
| 35 | `lemma` | [range_eq_ker_of_leftInverse](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-eq-ker-of-leftinverse.md) | 226 | `result-track:26bdb625d1c488899323076604c58f4a1dd31922be3aabfe926e04fd9946cf41` |
| 36 | `theorem` | [range_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-toaddsubgroup.md) | 247 | `result-track:60f5f238162a0b0c8fc0f87a1738bc7f318435a343abd6709cfb08f02875ed08` |
| 37 | `theorem` | [ker_le_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/ker-le-iff.md) | 251 | `result-track:489d476b19e039a9e3b054841f49fdcb2017c298705d92a8c49e8a599082846d` |
| 38 | `theorem` | [range_smul_le_range](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-smul-le-range.md) | 279 | `result-track:a7d667ca349534731bbbb067b438d0c7820d981caf2c11e801e34e973f51b554` |
| 39 | `theorem` | [range_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-smul.md) | 290 | `result-track:1024abd14021d02167822f60aed2f3d3b3c533da962afc428449985616616eb5` |
| 40 | `theorem` | [range_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-smul-source-edition-2.md) | 293 | `result-track:b7d130c1a40cbf53218b7e07bb7ebbecd05a775065ce9bf8fe2dbbdc00f498b5` |
| 41 | `theorem` | [map_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-top.md) | 313 | `result-track:f1e2c94f4a78269ebf6b9371ecb6145c92025c21aaf21134f443d23687e7cedb` |
| 42 | `theorem` | [range_subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-subtype.md) | 317 | `result-track:66c980846f154b74b9a832ab83db803fd48e8a531245fe1cd3b2f53bb5d7d667` |
| 43 | `theorem` | [map_subtype_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-subtype-le.md) | 319 | `result-track:28a1f1da5c17b4808b00cb8db207cda457f9e83ab91742e01a003aa441344bd5` |
| 44 | `theorem` | [map_subtype_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-subtype-top.md) | 324 | `result-track:07a58ce0eec52ea8048577672afdcb6c60bcc9800b4304b5b9f4cfbfc703bf13` |
| 45 | `theorem` | [comap_subtype_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/comap-subtype-eq-top.md) | 327 | `result-track:e902544ae82ad5839db1699e2387dc16add0796af456f55bf1461462b1151fb4` |
| 46 | `lemma` | [submoduleOf_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/submoduleof-eq-top.md) | 330 | `result-track:8d6f567268fbf605ce8355282c3ace8292c3d5e1672abf096b69799fdf901783` |
| 47 | `theorem` | [comap_subtype_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/comap-subtype-self.md) | 334 | `result-track:da142ad25354396561a774202fbb81633ffabe235be367696f0da6e0c90c850a` |
| 48 | `theorem` | [submoduleOf_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/submoduleof-self.md) | 337 | `result-track:bb0b6388f9baa9e1050b49bfade4ed2c291210830606938bd5aed8a5a231974a` |
| 49 | `theorem` | [submoduleOf_sup_of_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/submoduleof-sup-of-le.md) | 339 | `result-track:0fa9504e806cf0faf5ab36e7fbc600bd5e9839201596e2cc61179731e1a8dcc2` |
| 50 | `lemma` | [comap_subtype_le_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/comap-subtype-le-iff.md) | 346 | `result-track:227895221ddd66db1b5991b3c8791955e853f7d3058578e5cf36f28ceb788327` |
| 51 | `theorem` | [range_inclusion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-inclusion.md) | 351 | `result-track:f34a31f54e5a6bdf6493f061d08efc3184bfc88e6434187ba7e57feeef29d3cb` |
| 52 | `theorem` | [map_subtype_range_inclusion](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-subtype-range-inclusion.md) | 356 | `result-track:7e18d5ac3b1abf23576afbcc18d01b5c798235f30127b263d9085297f983b818` |
| 53 | `lemma` | [restrictScalars_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/restrictscalars-map.md) | 359 | `result-track:0ef68411adf0cf1b0a5e59a0b8e0880d5ac88560ad2b9399ccf1cbe12835a448` |
| 54 | `def` | [MapSubtype.orderIso](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/mapsubtype-orderiso.md) | 366 | `declaration-track:e963eb88478d141b8a94a8588c058fe26e351e7d5a4a0dc037324e9239a1de08` |
| 55 | `def` | [MapSubtype.orderEmbedding](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/mapsubtype-orderembedding.md) | 378 | `declaration-track:a0d804587f554b3ba7a59debe7c98e0c11467911b640826f1e8b2ac28499be45` |
| 56 | `theorem` | [map_subtype_embedding_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/map-subtype-embedding-eq.md) | 383 | `result-track:4369e3d1110d872233de79b160d7d869f7d00b890948cd1ac144324a0d4c31ac` |
| 57 | `def` | [mapIic](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/mapiic.md) | 388 | `declaration-track:3a7ccb1da3795341396c100602e232552b265e2c0e7989d1247e49d59c6fb457` |
| 58 | `lemma` | [coe_mapIic_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/coe-mapiic-apply.md) | 392 | `result-track:a00a999c8e64f5c02e2e33a1cf57861dc7d08223b01ab02a927c73d62c866d52` |
| 59 | `lemma` | [codisjoint_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/codisjoint-map.md) | 397 | `result-track:5c977ec0fe43db82c59c8712c908470f026b01b8ff7f3d739f345c6736a5b106` |
| 60 | `theorem` | [isCompl_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/iscompl-map.md) | 402 | `result-track:6d30342b2514cc8c5c679e668c6547b0ea8bf6168488f00820c61eb8f602c5aa` |
| 61 | `theorem` | [ker_eq_bot_of_cancel](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/ker-eq-bot-of-cancel.md) | 422 | `result-track:a683f2b55c030ab05ef6dbc16a0f50a59fda8fb425015619332cef13aab97101` |
| 62 | `theorem` | [range_comp_of_range_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-comp-of-range-eq-top.md) | 429 | `result-track:c4174d834a6daa92d6aed9f8025c5889e1af0fc3e5e5fd36386fc6c4b81043c5` |
| 63 | `def` | [submoduleImage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/submoduleimage.md) | 437 | `declaration-track:a03a708147fcf886bac751e3272712750bcb29d76ee5932de968c693cdf4f10a` |
| 64 | `theorem` | [mem_submoduleImage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/mem-submoduleimage.md) | 442 | `result-track:ae74ed8983e66e13e216554d4758961dff0b3c7206f8f809d5957b57b6f624e6` |
| 65 | `theorem` | [mem_submoduleImage_of_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/mem-submoduleimage-of-le.md) | 451 | `result-track:4029bfc0a073f1eb78740818ac911ecabc21a120f84ddf982c39bb7989f35524` |
| 66 | `theorem` | [submoduleImage_apply_of_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/submoduleimage-apply-of-le.md) | 456 | `result-track:401b7a0af10b642373cdd4f27c196275f4d07ac70911191c83a3b8f36dd0ce8c` |
| 67 | `theorem` | [range_rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-rangerestrict.md) | 467 | `result-track:489918276c2e6363fa151079c536e76b11f1b9f733c7a1576e5acc419527337e` |
| 68 | `theorem` | [surjective_rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/surjective-rangerestrict.md) | 469 | `result-track:3b21dba320ec6650c5a0b69ad26daaa34b5bbce085c809d08d506048137c5a1f` |
| 69 | `theorem` | [ker_rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/ker-rangerestrict.md) | 472 | `result-track:65d029bec541d5bb4854e95818726a99cac7fac56587609f8acd589455e7725f` |
| 70 | `theorem` | [injective_rangeRestrict_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/injective-rangerestrict-iff.md) | 474 | `result-track:7d8455b42b7a6585bf91d048e9348da13471fbb81b3328cb1828e15edbb30744` |
| 71 | `theorem` | [subtype_comp_rangeRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/subtype-comp-rangerestrict.md) | 477 | `result-track:52806008a332ecf5b697aa2cad4cb2ebfc2886fa6f9a1f2e7941c1c3d5bcb5f6` |
| 72 | `theorem` | [range_restrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/RangeNamespacedPublic.lean/declarations/range-restrict.md) | 490 | `result-track:2b460cb3d53c3f7ae53217097292e5c3a3b84fc8583843879327981a305ce7bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4857bd6c14aed31858005ae5285a6f671d784a1a72ade3741236038679144b7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Range/Variant83c36ac745500993bb22100b9caf61c29a0b74d1383e1735781fec0b9f1619e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
