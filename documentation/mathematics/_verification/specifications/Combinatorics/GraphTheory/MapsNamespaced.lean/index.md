# Verification target: Maps Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afc84f0d5600119a69d6b5601c0b3ea3fe96aa20",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afc84f0d5600119a69d6b5601c0b3ea3fe96aa20`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Dart` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Set` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map.md) | 61 | `declaration-track:21a3a389f742612738d5cb1ac1bf7e9037d1f92e380a51e2a4e0e38127eac96c` |
| 2 | `instance` | [instDecidableMapAdj](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/instdecidablemapadj.md) | 70 | `declaration-track:6a2fcd4c47a7dc5f46866817e139540451ee84adddf39d7d41898dd2148921fb` |
| 3 | `theorem` | [map_adj](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-adj-source-edition-2.md) | 74 | `result-track:12b85a441b74f2f4585bf288be8721c413a7b1def90e45940fbdbf76bb8cfcac` |
| 4 | `lemma` | [map_adj_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-adj-apply.md) | 78 | `result-track:b4504a3967ed388cf32810908824d0d3146ef19ce986731ab32ae6b3d263ba96` |
| 5 | `theorem` | [map_monotone](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-monotone.md) | 81 | `result-track:fcc6d47147c6457ecafe2d2c6c4986e24804e0a5124607d4e2194eddefa4c5f8` |
| 6 | `lemma` | [map_id](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-id.md) | 85 | `result-track:a77bcd9fb8ea847a589f1a711563d296f9b919f8ce041b2db6dcc0e0babdd88d` |
| 7 | `lemma` | [map_map](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-map.md) | 88 | `result-track:6bb720987b85156f3dc8212904f2e9be59d4d3f717568aeff9bb7bdf7e00e1c8` |
| 8 | `def` | [comap](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-source-edition-3.md) | 96 | `declaration-track:4e5e69355dd51d8c28f70e8d33f265b723e75f4ecba4379ffea9fda0fe7efc0c` |
| 9 | `lemma` | [comap_adj](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-adj.md) | 101 | `result-track:fd415bd582bc9f7beece8ee1c5480f29f880821c7e4dad991748a82e2f26c199` |
| 10 | `lemma` | [comap_id](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-id.md) | 104 | `result-track:e7bc46781d3b4d17281aa3728782c22e5e72fbd908523205aca9573b38482ba2` |
| 11 | `lemma` | [comap_comap](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-comap.md) | 106 | `result-track:e5bd4cc085e1108fd72b879d74ab46e86ab0e098b7c3560ea7317dc991aef194` |
| 12 | `instance` | [instDecidableComapAdj](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/instdecidablecomapadj.md) | 109 | `declaration-track:adf14ed750d0b5cc699e9070733ce021e35673487f65537e3ee020102f287118` |
| 13 | `lemma` | [comap_symm](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-symm.md) | 112 | `result-track:db4d69b9c80de91f239037de4d3af6c1cd6a8daa265ab8ba951fd650c3bb6dc8` |
| 14 | `lemma` | [map_symm](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-symm.md) | 117 | `result-track:ff22356392a0580b78ed695f3f031bcd3bd0338b770b24f54292fc904c149e57` |
| 15 | `theorem` | [comap_monotone](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-monotone.md) | 120 | `result-track:42446289708f6948999b4a2880f4e26cb8d823c4fb8182b6bcab3467d31ec5eb` |
| 16 | `theorem` | [comap_map_eq](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-map-eq.md) | 125 | `result-track:20e8da31837686c9856a40a5085520c951f6b211810186c788a88f8d526e39eb` |
| 17 | `theorem` | [leftInverse_comap_map](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/leftinverse-comap-map.md) | 129 | `result-track:4416280316224f438bb6165ed80b332a80f9003062ea8ac6c9f4713342bf2ca8` |
| 18 | `theorem` | [map_injective](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-injective.md) | 133 | `result-track:7f1b6b3e053b99b020ad6eaae220a555921d0c1ab498b498cdf199d4dc32c3f0` |
| 19 | `theorem` | [comap_surjective](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-surjective.md) | 136 | `result-track:2c3714ef0a2741be3e41e1da3846fa6d79bf61278580f7f9d13e45f00a59e7da` |
| 20 | `theorem` | [map_le_iff_le_comap](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-le-iff-le-comap.md) | 139 | `result-track:9b79d6f87599391ef7c903cc49b5249b1c3b07d041863441943cc0cfaafcc378` |
| 21 | `theorem` | [map_comap_le](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-comap-le.md) | 145 | `result-track:4969b7075ddd784682e90f12c9aeaef4a28063eb40cfc1c11861ccd2088743b7` |
| 22 | `lemma` | [le_comap_of_subsingleton](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/le-comap-of-subsingleton.md) | 148 | `result-track:21e40efed6f2467bb0151a7ac9d0b6c65fca33443e686cc709998147d0dba938` |
| 23 | `lemma` | [map_le_of_subsingleton](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-le-of-subsingleton.md) | 151 | `result-track:aa1d8c8162818a257061f5cf02c07cf0079c32157277fe1cd2ae88323f8306f2` |
| 24 | `abbrev` | [completeMultipartiteGraph](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/completemultipartitegraph.md) | 157 | `declaration-track:89357f438b97d61a8708952e0448996708cdc6db49152b9ec77d1bce45b66edf` |
| 25 | `def` | [Maps Namespaced](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/simplegraph.md) | 162 | `declaration-track:c2b18a73ce86ccc909591175db947ea67b6f5ac2b0cf7e831bd95df4a1332937` |
| 26 | `lemma` | [Maps Namespaced](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/simplegraph-refl.md) | 168 | `result-track:5262ce7352787dd4cb2de39d27903522ff33b9380ae9363e9e81aaffa977ddfd` |
| 27 | `lemma` | [Maps Namespaced](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/simplegraph-trans.md) | 171 | `result-track:ccdbff19ad68e48a19b02989bd5f54fe2f5787fc873c7cdf3a9e0723e683838a` |
| 28 | `lemma` | [Maps Namespaced](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/symm-simplegraph.md) | 175 | `result-track:ff173937152f3016a43b70cb8710a18aa6ab5d3b3a28f9473ee0c5f41c748274` |
| 29 | `abbrev` | [induce](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/induce.md) | 186 | `declaration-track:b630a46b51fbe035d315e814bf56a5d2ef65889fc9a0f2fa088bf031bf1e0918` |
| 30 | `lemma` | [induce_singleton_eq_top](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/induce-singleton-eq-top.md) | 189 | `result-track:a1660642e1cdaf90cb46960c1db95235cd5a065a345fa9d9de0aef5246307d5e` |
| 31 | `abbrev` | [spanningCoe](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/spanningcoe-source-edition-2.md) | 195 | `declaration-track:6765fee43e1e3eeba2ba53bc4afd6ef26c56264c3a81d0b9017e41fedd0427a3` |
| 32 | `theorem` | [induce_spanningCoe](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/induce-spanningcoe.md) | 198 | `result-track:ff9c4dfebe3dd440462550c56c9bc62d1d7fb828cdd86f8f6906fc12210ecabb` |
| 33 | `theorem` | [spanningCoe_induce_le](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/spanningcoe-induce-le.md) | 201 | `result-track:b739ecbe2b5b09d096f326b7adddeea9f46520f2fb0ba78a3361681415908ebf` |
| 34 | `abbrev` | [Hom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/hom.md) | 210 | `declaration-track:7c8ca7fca2b27f8bbd1dc41bc23b6972b4f1268cede13cd640d667f30ccee3d8` |
| 35 | `abbrev` | [Embedding](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/embedding.md) | 217 | `declaration-track:c77feef55ac73f30922f85eafa86d569679b5ce6cc435ce54bc15198d3de3f63` |
| 36 | `abbrev` | [Iso](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/iso.md) | 224 | `declaration-track:e3999e588505708244bb1b7e52fbe138675ed8a15cddd47fe05fc8c9c6317bc1` |
| 37 | `abbrev` | [id](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/id.md) | 236 | `declaration-track:06c8f2004aca9ddabb43180602aee1af6bbd2bc420aa620fcf9287503884696c` |
| 38 | `lemma` | [coe_id](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/coe-id.md) | 239 | `result-track:99da508488375143f7b50a90b59652b209786c7f2646f8c289369f3adc6abd18` |
| 39 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/instance-source-edition-3.md) | 241 | `declaration-track:d718af61b9131c1994c954748c0b48cac3df6758c1d5dfb755f4af746955f485` |
| 40 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/instance-source-edition-2.md) | 243 | `declaration-track:636773c0bbac61e6bb6581030e37e8f32b6abb589dfa271043d6d1888168db87` |
| 41 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/instance.md) | 247 | `declaration-track:5b19725070b3d0325d8750753f8d08e761b55c0fcdc56d9d19043361a78ac482` |
| 42 | `theorem` | [map_adj](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-adj.md) | 249 | `result-track:02951a791954406f4b7f4828ee99d89709ee493df5b13528e6f9fcf5476d5793` |
| 43 | `theorem` | [map_mem_edgeSet](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-mem-edgeset.md) | 252 | `result-track:e3d71298136501952f8be80af0a9bbfdd36ca29e599e0d212a0a912e2e6427f4` |
| 44 | `theorem` | [apply_mem_neighborSet](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/apply-mem-neighborset.md) | 255 | `result-track:3896af2385703c5e6054e274036dc62ac21119a35c179645d14e21e4b663cb8a` |
| 45 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapedgeset-source-edition-3.md) | 261 | `declaration-track:35eadd6064375a1587feb4dc243f8b54fbdfd6a5fb1043ceff396a7c40cf5ae6` |
| 46 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapneighborset-source-edition-3.md) | 266 | `declaration-track:5ad85ab0d63f15811885b440ab4a5597112b49a5efd5c8a08a413d2613529e5d` |
| 47 | `def` | [mapDart](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapdart.md) | 270 | `declaration-track:af553b768addaec4db560a19471a3d90bd84ee07180cf756389d2e909abf45e1` |
| 48 | `theorem` | [mapDart_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapdart-apply.md) | 274 | `result-track:62dca3cfa3ac0c71528383ea61ac794a491755e95e34858c78ef2c0cc2084d1e` |
| 49 | `def` | [ofLE](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/ofle.md) | 278 | `declaration-track:7d035e43d3a3e8290fa6206a9c62ba0a492de03d1751305c4bf95c639f6a6be1` |
| 50 | `lemma` | [coe_ofLE](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/coe-ofle.md) | 280 | `result-track:24604288382bfeb987bb13447bbc1a5e8a7b4f96feba5ebcaf24cef464e96f7e` |
| 51 | `lemma` | [ofLE_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/ofle-apply.md) | 282 | `result-track:64d91739c9b9215c76a4ee1b6e4f4054df7d15e81c289707a54881807e825d95` |
| 52 | `def` | [mapSpanningSubgraphs](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapspanningsubgraphs.md) | 286 | `declaration-track:cf1ad5d7647bb68f7d656cfe549f142e382651fce799638df52e1c3e0ebf5f51` |
| 53 | `lemma` | [mapSpanningSubgraphs_inj](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapspanningsubgraphs-inj.md) | 291 | `result-track:22d45db0d3b37582f65d3bafc8080f300eca489163070a8c6b44d272c9f2dbe9` |
| 54 | `lemma` | [mapSpanningSubgraphs_injective](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapspanningsubgraphs-injective.md) | 295 | `result-track:971058451a4d62d64fd9fcdcf7ee326d45b60bcf21bf259c5806f1005156c14a` |
| 55 | `theorem` | [mapEdgeSet.injective](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapedgeset-injective.md) | 299 | `result-track:bd93a1fb0ebcb47be8c227116ea89aade258dd864bf19d9eac3af50480c438b3` |
| 56 | `theorem` | [injective_of_top_hom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/injective-of-top-hom.md) | 306 | `result-track:179e4819dc4c844540eae6e42434f3c69cece755bc753cb21ead13c0ef101363` |
| 57 | `def` | [comap](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap.md) | 314 | `declaration-track:056a5e10d3790402a9cdd4b2f2d93df95a37b181898ec81e78bc6f59e4a09aac` |
| 58 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comp-source-edition-2.md) | 321 | `declaration-track:295174f210666799849473a68bf647c6fde7bc076a5e918c3698d423c46eb123` |
| 59 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/coe-comp-source-edition-3.md) | 325 | `result-track:a78d158352a7866ab1d1fd3777e0706ac0ac1d36bd72979c0498899a3b0bbaa3` |
| 60 | `abbrev` | [refl](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/refl-source-edition-2.md) | 335 | `declaration-track:9e01075f95a82df7538573367eeab462febeaa15c33fb06b7040111d18fefb15` |
| 61 | `abbrev` | [toHom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/tohom-source-edition-2.md) | 339 | `declaration-track:9a4dd4ac001ee8e046991ab9a54018b62f08c693c0874f6f7d2d4dbbb710a2ed` |
| 62 | `lemma` | [coe_toHom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/coe-tohom.md) | 342 | `result-track:3ecff70a8d3de635f2a559a83bfa498cea2260af7aca99aebee0c5952bb9dcf1` |
| 63 | `theorem` | [map_adj_iff](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-adj-iff.md) | 344 | `result-track:8b9d0040d53ebfe2703edac9f0e2a6d794d87c06600972db741d5cdb64df8d61` |
| 64 | `theorem` | [map_mem_edgeSet_iff](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-mem-edgeset-iff.md) | 347 | `result-track:2cd619a3495909bcafaa74131e0f579372f6f755eec9ddd7d2bf53a32e5e4b3d` |
| 65 | `theorem` | [apply_mem_neighborSet_iff](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/apply-mem-neighborset-iff-source-edition-2.md) | 350 | `result-track:f623531408f6929322069e5e08a3cdc29c201cd4c2ebeaf21328e63b1edf4c39` |
| 66 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapedgeset.md) | 355 | `declaration-track:0ec6155b96a673b47ed3ad9bffb56f2b1409ae51db82e0685c6e4265d65ae9c7` |
| 67 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapneighborset.md) | 361 | `declaration-track:1104d9f3dc54351ec376a572b199eba47504cb92c3953b73a54ce7b383fbe2c5` |
| 68 | `def` | [comap](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-source-edition-2.md) | 372 | `declaration-track:2840e799d56d01db5b4102d4167552d8c2c07d10ae74b1894a331204919b8017` |
| 69 | `theorem` | [comap_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-apply.md) | 376 | `result-track:699c6bced5e20e47c72c8777f6cf49084f74460d7290bd9cd8ecc41c3a02672a` |
| 70 | `def` | [map](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-source-edition-2.md) | 382 | `declaration-track:661271c0ce063f9f28e5eed706b624af55dd3bff6afef97aaa8f8a98e31f54d8` |
| 71 | `theorem` | [map_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-apply-source-edition-2.md) | 386 | `result-track:84feba89bc6bc02b36a840f8a3aef6c67dcb23b9e060556875652d74a5c2bd2d` |
| 72 | `abbrev` | [induce](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/induce-source-edition-2.md) | 393 | `declaration-track:f229c8c1fc908ce0b7a5af8a19560de2655716eca4cb360cc260e4867d205e2c` |
| 73 | `abbrev` | [spanningCoe](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/spanningcoe.md) | 397 | `declaration-track:3f9cdf8ab0f8b789a540f7a72cbcc7750411e625636daa36d8c9ab4a1ec8c9de` |
| 74 | `def` | [completeGraph](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/completegraph-source-edition-2.md) | 401 | `declaration-track:fe1a107cc38ab05c33501fd96cd962a207fbdaf4d7391c30968e2e6145bfa181` |
| 75 | `lemma` | [coe_completeGraph](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/coe-completegraph.md) | 404 | `result-track:f86a9cdef567ed96ae86266370eb49a0c32ab6db08b085f1bbded625d142e9da` |
| 76 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comp-source-edition-3.md) | 409 | `declaration-track:538262ecfd90c1d4b012ee04dbb1f16af54a7839e8979eaa6fd42c377417c0fb` |
| 77 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/coe-comp.md) | 413 | `result-track:05daf759592f2a90085e802f746c55dc7a8b847fc740ed0ceb09c79a08079b2c` |
| 78 | `def` | [complEquiv](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/complequiv.md) | 417 | `declaration-track:f2a77767cadc565bd40417dc7b25b0468f572c47ee82fe6692ded406bd50efee` |
| 79 | `def` | [induceHom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/inducehom.md) | 434 | `declaration-track:d065a9078e968daac7f7aa3e0f54dcda6088374255269c74f86c2626c62e483f` |
| 80 | `lemma` | [coe_induceHom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/coe-inducehom.md) | 438 | `result-track:fd071c109e5a1abfa20d0749d1f2509ddfd340d06f8b36af7f9ddea481da19ce` |
| 81 | `lemma` | [induceHom_id](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/inducehom-id.md) | 441 | `result-track:f21c15e23c8eb846a82365d4071538e5057cd3ad75aedfc64f56c09b05dc3a4e` |
| 82 | `lemma` | [induceHom_comp](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/inducehom-comp.md) | 446 | `result-track:850881214599dd4acc31ea2f37291150aaef2a28542888574510c2c18ec900d1` |
| 83 | `lemma` | [induceHom_injective](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/inducehom-injective.md) | 451 | `result-track:8b71dead7e05708dcf8848dc4a594ce4c4ee35c50655d5e2bc85f584221962dd` |
| 84 | `def` | [induceHomOfLE](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/inducehomofle.md) | 462 | `declaration-track:d89b74bb69179037bb54663a7348b055727af04dada7597591236c1e63a2e233` |
| 85 | `lemma` | [induceHomOfLE_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/inducehomofle-apply.md) | 466 | `result-track:b9ac409aff8e50b8902aef2cb58bb7eddbc93218a4b288aa5abe295860457b1d` |
| 86 | `lemma` | [induceHomOfLE_toHom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/inducehomofle-tohom.md) | 468 | `result-track:2d1849cbd3a969dce051b0c1d975728bf7e231fb24b972b6411d562d3bdaeebe` |
| 87 | `abbrev` | [refl](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/refl.md) | 479 | `declaration-track:886b5d76ddb02f6b2b5e2565e02a136ec4770e540e9d3896d612e60d3e80cd17` |
| 88 | `abbrev` | [toEmbedding](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/toembedding.md) | 483 | `declaration-track:70964e7e6a5abee4c3b10e5db8ae8f1f8a3e97e3b6428123cb40bcead8fdf7f9` |
| 89 | `abbrev` | [toHom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/tohom.md) | 487 | `declaration-track:3a9b1ecef14d493de6cf80a1c45aa9a3837c52e6c11f9ea7b4306ff2cc6789cc` |
| 90 | `abbrev` | [symm](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/symm.md) | 491 | `declaration-track:864cfc4bc1d926b1fe7fe92e4f39fb6c1627880eb2a3ee553d5f777f5ddf397c` |
| 91 | `theorem` | [map_adj_iff](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-adj-iff-source-edition-2.md) | 494 | `result-track:8d44a02eaa20cfb4dd40528d7b387c5671c25aca0002eedb7d49fa9fef270d9c` |
| 92 | `theorem` | [map_mem_edgeSet_iff](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-mem-edgeset-iff-source-edition-2.md) | 497 | `result-track:4e92013a6c794a98deafc34309b85cbec1e8d07118a0c52c3a8634f1cb70dd42` |
| 93 | `theorem` | [apply_mem_neighborSet_iff](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/apply-mem-neighborset-iff.md) | 500 | `result-track:2e8e5761c782f5c563ba0d6c01276d20f865da72cd4c4b1f54b7ae81e6080ac4` |
| 94 | `theorem` | [symm_toHom_comp_toHom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/symm-tohom-comp-tohom.md) | 504 | `result-track:d88ff7b48a1ac635106890494db25bdeed184c14b066ce2b944d0a863b5e497f` |
| 95 | `theorem` | [toHom_comp_symm_toHom](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/tohom-comp-symm-tohom.md) | 510 | `result-track:4a7e79fb71b6929f2bb8c1f04117f9ceae8d69cc62d8d11b350df2feef6fbe66` |
| 96 | `def` | [mapEdgeSet](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapedgeset-source-edition-2.md) | 517 | `declaration-track:2d5384ee860492030340745a0e8c42199f0062751be8da41626722c6fee1f386` |
| 97 | `def` | [mapNeighborSet](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/mapneighborset-source-edition-2.md) | 537 | `declaration-track:45e44b7e20726ba2415c2b18113de4401b121034e63d90bc9d4843e34d7863da` |
| 98 | `theorem` | [card_eq](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/card-eq.md) | 546 | `result-track:a085beebea2716219ea21eacc0c0731f3a4f64711a383c398ffde9e0fd40aa9d` |
| 99 | `def` | [comap](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-source-edition-4.md) | 554 | `declaration-track:8dcb6bd7fc190e7fcb5cfcf81e29b9cf9b1e765abad49dcb9f1728b5ad47fa86` |
| 100 | `lemma` | [comap_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-apply-source-edition-2.md) | 558 | `result-track:917577beda98562dc49862841c41af271cb05a070b2ad3bdc78533868b73ba30` |
| 101 | `lemma` | [comap_symm_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comap-symm-apply.md) | 562 | `result-track:c620939495c0c1a65aa1cd938279d585e7a277d62d6a0d34f266a29df4b03003` |
| 102 | `def` | [map](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-source-edition-3.md) | 568 | `declaration-track:ffca76a7e0bc30683fc5b11f19256aa9e88cd133fc0affc988d683533cdf9767` |
| 103 | `lemma` | [map_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-apply.md) | 572 | `result-track:430ba59f8c7aeef5b69202d6fe2aa83ac2fb49b9d340439a53205c3ed8d7499d` |
| 104 | `lemma` | [map_symm_apply](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/map-symm-apply.md) | 576 | `result-track:7b8c0c9c6040b71cc06f214fa5898beccb674e0d3b264747c60358f23b9dd3b1` |
| 105 | `def` | [completeGraph](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/completegraph.md) | 580 | `declaration-track:09e3ddfddbc9dd28539247e13cbf5d5b7965f528e43d076970041479d8aa5716` |
| 106 | `theorem` | [toEmbedding_completeGraph](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/toembedding-completegraph.md) | 583 | `result-track:2b9d8bcf14bec3f262d5fa47155e172b7b8a9f1be15f59f65ac155b77a8f3c4d` |
| 107 | `abbrev` | [comp](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/comp.md) | 590 | `declaration-track:1efed240fad75a4f002d0e900efe06899fbd7bab80c09ca892fc608ed83095bc` |
| 108 | `theorem` | [coe_comp](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/coe-comp-source-edition-2.md) | 594 | `result-track:2352127a105b8defbe6c99b86dc387215b011bee5520011fac33db2b9dd6f2b6` |
| 109 | `def` | [induceUnivIso](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/induceuniviso.md) | 601 | `declaration-track:75cadfc2ef03f90d55ca2f049c98a47e7e62784b034b67c22844e1752e409579` |
| 110 | `def` | [overFin](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/overfin.md) | 612 | `declaration-track:49541d74e3cab6446ebd04934539e1992c21fb64f63326fc512a63aa79f58a66` |
| 111 | `def` | [overFinIso](../../../../../Combinatorics/GraphTheory/MapsNamespaced.lean/declarations/overfiniso.md) | 617 | `declaration-track:ba01e446e5ff3204e1025020e78d84481f73a101ee26f04ad69b7e33419d749a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b31d4587970887ab71de33787bd9bb839e508e671a68bbb910a3ab01db1283ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
