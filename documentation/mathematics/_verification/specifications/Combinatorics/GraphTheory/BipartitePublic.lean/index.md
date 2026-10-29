# Verification target: Bipartite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dda38b198bc697f73e787ef8e6a1d50c17f015a",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dda38b198bc697f73e787ef8e6a1d50c17f015a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean.json)

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
| 1 | `structure` | [IsBipartiteWith](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith.md) | 84 | `declaration-track:924a1b6e53f58d185b7dd356ab8e0a885179828b431a7fe811de15068a2d7428` |
| 2 | `theorem` | [IsBipartiteWith.symm](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-symm.md) | 88 | `result-track:05fcc705dcabfbdefb553d8adcf81961ec82a466b4fcfb0f7cc458d02b05c339` |
| 3 | `theorem` | [isBipartiteWith_comm](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-comm.md) | 94 | `result-track:c53742c6783cf82a6a3e944f2fe2a655257a81634646ad3fb7e38c151205406e` |
| 4 | `theorem` | [IsBipartiteWith.mem_of_mem_adj](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-mem-of-mem-adj-source-edition-2.md) | 98 | `result-track:7151fb871be2641f36bb10a92ebb7c33fc73ad7c82793848dd3fc73e13300e48` |
| 5 | `theorem` | [isBipartiteWith_neighborSet](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborset-source-edition-2.md) | 106 | `result-track:9aecfe0bfd0ffcd584e923afbfd3efc8cf65ca0679742e8d58d3d3b3b151bb12` |
| 6 | `theorem` | [isBipartiteWith_neighborSet_subset](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborset-subset-source-edition-2.md) | 113 | `result-track:bf5f14019f4efb148c229302c81670afabb4e3e4de964fae309b7ed1fc5078bc` |
| 7 | `theorem` | [isBipartiteWith_neighborSet_disjoint](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborset-disjoint-source-edition-2.md) | 119 | `result-track:e82a7efbc66ed8a1f1ae783d7522b9a490c88daad37a1b89af6f38cd2ee57781` |
| 8 | `theorem` | [IsBipartiteWith.mem_of_mem_adj'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-mem-of-mem-adj.md) | 124 | `result-track:64bc98f7bd58693251ec8dd895e66cc2995057dc2cbfb968bcfc02700c54947e` |
| 9 | `theorem` | [isBipartiteWith_neighborSet'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborset.md) | 132 | `result-track:258be21f18b6d726cdb771a97cdffd97c31ec0bfbe022c433b161a698db7d1c0` |
| 10 | `theorem` | [isBipartiteWith_neighborSet_subset'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborset-subset.md) | 139 | `result-track:0326747df997c8f2f99cb9b31aa7a2623f1902222eeb350997efc33e9bdcaa13` |
| 11 | `theorem` | [isBipartiteWith_support_subset](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-support-subset.md) | 145 | `result-track:8cdd0638b4c42bd61b3fb5c5f3a4ed7ce5e955ba90a6acace5149ec57500891e` |
| 12 | `theorem` | [isBipartiteWith_neighborSet_disjoint'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborset-disjoint.md) | 151 | `result-track:e1ee2bb6ec4457a57298b6e5f85a0ef53e5a2ed38d971cfcbae9cd5a4b767d69` |
| 13 | `theorem` | [isBipartiteWith_neighborFinset](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborfinset.md) | 167 | `result-track:747f5c15917519fb44c5c9438b7f5be04c8f97f7389982db75dc727e3895947d` |
| 14 | `theorem` | [isBipartiteWith_neighborFinset'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborfinset-source-edition-2.md) | 175 | `result-track:ed31151a13b25cfcf45e2b38eab01daab9e0fd877c98ac63e3e1a6df9d662d5e` |
| 15 | `theorem` | [isBipartiteWith_bipartiteAbove](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-bipartiteabove.md) | 183 | `result-track:6f0cd782106499f7773f11bfb4d0d7535a1cc351786d5c9831c1833fbce2100d` |
| 16 | `theorem` | [isBipartiteWith_bipartiteBelow](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-bipartitebelow.md) | 189 | `result-track:05770a5278b53aa3752ac156ee0f1911e81abdf0be35d3b535526a711089735a` |
| 17 | `theorem` | [isBipartiteWith_neighborFinset_subset](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborfinset-subset.md) | 196 | `result-track:41b4369748ffdb4ed41afa7df64814fc35146672384861f06acd9cbdd31d09a1` |
| 18 | `theorem` | [isBipartiteWith_neighborFinset_disjoint](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborfinset-disjoint-source-edition-2.md) | 203 | `result-track:f4df1fe4cc59bed25fff7638b87468a780e13b0e50faf83a7da9410e7ec96b2d` |
| 19 | `theorem` | [isBipartiteWith_degree_le](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-degree-le-source-edition-2.md) | 210 | `result-track:e1ebb63851e9cf97de911d842d4ed8640bf860809cebb45d38d981cd86059e96` |
| 20 | `theorem` | [isBipartiteWith_neighborFinset_subset'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborfinset-subset-source-edition-2.md) | 215 | `result-track:b8626b9bd2240cc4c222725f31910d27a09dd1a2994e965f58774b4ae4de43a5` |
| 21 | `theorem` | [isBipartiteWith_neighborFinset_disjoint'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-neighborfinset-disjoint.md) | 222 | `result-track:d26ed85c920a8e1619aac9f5c145ef85c833f2dae8e5df5cbeac652deae46275` |
| 22 | `theorem` | [isBipartiteWith_degree_le'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-degree-le.md) | 229 | `result-track:28bf2f12de84a2332d7e2937e27865894c260d3d655d515fc07c5c140489fb54` |
| 23 | `theorem` | [isBipartiteWith_sum_degrees_eq](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-sum-degrees-eq.md) | 239 | `result-track:2051635c8d26e6e07ecc1d2c127fa29c3004e99e6d5a14ff898633a007613168` |
| 24 | `theorem` | [IsBipartiteWith.completeBipartiteGraph](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-completebipartitegraph.md) | 253 | `result-track:4e0ac9c6c947fd7ce9571d3e7ac99e478d2980c1ff4b21fe8ef803598f970318` |
| 25 | `lemma` | [isBipartiteWith_sum_degrees_eq_twice_card_edges](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-sum-degrees-eq-twice-card-edges.md) | 259 | `result-track:376094fd1d2376490f5c17be6141aa17b9b81b7f435f80a65efd3511a82f0373` |
| 26 | `theorem` | [isBipartiteWith_sum_degrees_eq_card_edges](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-sum-degrees-eq-card-edges-source-edition-2.md) | 271 | `result-track:afe2a4432a185c8eb41c9035ba80187c8562f5eb19a16fcdba226122f663dee4` |
| 27 | `theorem` | [isBipartiteWith_sum_degrees_eq_card_edges'](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-sum-degrees-eq-card-edges.md) | 282 | `result-track:8b633ef405504700fa3ddb01b065ee240dae7a12f78a5a0db85153f5d728180a` |
| 28 | `abbrev` | [IsBipartite](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartite.md) | 290 | `declaration-track:d52b6d9dc2d2d58daff19971319809798d3a084b8c9b0cdc4c6f4369cd6526d9` |
| 29 | `lemma` | [IsBipartite.exists_isBipartiteWith](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartite-exists-isbipartitewith.md) | 294 | `result-track:3ec25af6adc404a8cc7509c0f097a1756ea73bf4f95fd20b85cdfb3d6088149e` |
| 30 | `lemma` | [IsBipartiteWith.isBipartite](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-isbipartite.md) | 303 | `result-track:210b00344ee35496ea1f618014210365be9c5c9254c1e87e4cff308e4afee7b2` |
| 31 | `theorem` | [isBipartite_iff_exists_isBipartiteWith](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartite-iff-exists-isbipartitewith.md) | 309 | `result-track:8f1d86bc50311d3950695a21a98bf9922b8adc9e9a9e9695be7f9f5626aa238b` |
| 32 | `theorem` | [chromaticNumber_le_two_iff_isBipartite](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/chromaticnumber-le-two-iff-isbipartite.md) | 313 | `result-track:58bae4e23ae1f2d5693deeac66c9673ab948c1dae581e275b98ef9f5eafbf9a8` |
| 33 | `theorem` | [chromaticNumber_eq_two_iff](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/chromaticnumber-eq-two-iff.md) | 316 | `result-track:82af65ce59d56697e2d9f01f6a53c1ed22835457da00dbef0ea5a149de977972` |
| 34 | `theorem` | [IsBipartite.bot](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartite-bot.md) | 324 | `result-track:d618b3d3aee11f9a0a923ed781ac8088ede743017d143c5e7733d2173398a989` |
| 35 | `theorem` | [IsBipartite.completeBipartiteGraph](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartite-completebipartitegraph.md) | 327 | `result-track:e13f444fa07cf5021ca86635a7f1a2937f820f9cb54dd7693d0a3e94b7cae6fc` |
| 36 | `def` | [Copy.completeBipartiteGraph](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/copy-completebipartitegraph.md) | 341 | `declaration-track:cedc5ccf2526cffdb36197625de0f58f15735756f3a106cba25f8eb690f2ddff` |
| 37 | `theorem` | [completeBipartiteGraph_isContained_iff](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/completebipartitegraph-iscontained-iff.md) | 374 | `result-track:f83fba6804a9fb58421d610bd5fe50567f388de64d5208e1bc991c58b45c9a3f` |
| 38 | `lemma` | [IsBipartiteWith.subgraph](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-subgraph.md) | 392 | `result-track:0644311fb0e17b871e0ebe6d8447d4b587ce6da58397860b18afa7ee33c728e8` |
| 39 | `lemma` | [IsBipartite.subgraph](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartite-subgraph.md) | 396 | `result-track:7fca3808ee9ebd121077229546aaf640cb84bca47fa0ec8d65d88768daad6b22` |
| 40 | `def` | [between](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/between.md) | 404 | `declaration-track:649ab44848da41d381de1c1fac116a0b2e7c8e90e2270db64d191d3f536377ac` |
| 41 | `lemma` | [between_adj](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/between-adj.md) | 408 | `result-track:f8224c84ef209c9d88e9724931d7993645c6c143504e4ec6c4972fccef39140e` |
| 42 | `lemma` | [between_le](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/between-le.md) | 410 | `result-track:0306162d43ae8551efc81ff94d3d4ffc077a4ab4e74997a479429473b3a478eb` |
| 43 | `lemma` | [between_comm](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/between-comm.md) | 412 | `result-track:c0e398a6f89d301ff8f9a9999db16a75757dfbcf582592f3cd5c0f41d96a1022` |
| 44 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/instance.md) | 414 | `declaration-track:767ae31ed25811c60eb91c902c57f79d03d74384344cf807b38280e543daa068` |
| 45 | `theorem` | [between_isBipartiteWith](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/between-isbipartitewith.md) | 419 | `result-track:593d55e8b7143dbb1982700557de7acba97fa58db1d9309011817cf7ad992f74` |
| 46 | `theorem` | [between_isBipartite](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/between-isbipartite.md) | 424 | `result-track:5f926bff3211dc5ab67f021c443ffe5440070821ff2ed8d558b226d898b9c7cd` |
| 47 | `lemma` | [neighborSet_subset_between_union](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/neighborset-subset-between-union.md) | 429 | `result-track:efe5b0a9af6850c6923cc326f7dcade3e4e5bd92ae7e2334daed6f9dec7c323d` |
| 48 | `lemma` | [neighborSet_subset_between_union_compl](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/neighborset-subset-between-union-compl.md) | 439 | `result-track:d9e3e654ca6570d8243e63887d0629e3c9b14a70c4c71412ba68ef4a3191e163` |
| 49 | `lemma` | [neighborFinset_subset_between_union](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/neighborfinset-subset-between-union.md) | 451 | `result-track:b72cf13bd0e4706f1fb82459fcf920d77e8d4142e670e10b09e83d0b14f16b8e` |
| 50 | `theorem` | [degree_le_between_add](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/degree-le-between-add.md) | 457 | `result-track:e5edaf7cfb5f46d845983a2cde28d64764a47ef7e2a7ba0699c953352fe159e8` |
| 51 | `lemma` | [neighborFinset_subset_between_union_compl](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/neighborfinset-subset-between-union-compl.md) | 467 | `result-track:c3cb2b7dd2a6ae20ff918216afd0cca4e4e1a14bca8c94d8fd0322e40e533818` |
| 52 | `theorem` | [degree_le_between_add_compl](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/degree-le-between-add-compl.md) | 473 | `result-track:2457b9756ad99dba5d0990a9c41a85a4ede9ac0a00440638400aed0d225f3979` |
| 53 | `theorem` | [edgeSet_completeBipartiteGraph](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/edgeset-completebipartitegraph.md) | 487 | `result-track:3dfbca4d66c43078bc061fb7590fa5b62337589fdfb9b955d7d1dda72076bf76` |
| 54 | `theorem` | [encard_edgeSet_completeBipartiteGraph](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/encard-edgeset-completebipartitegraph.md) | 494 | `result-track:5f6e01766d2a694df75ea753a7d92ee13e5fbbeb490db971c9b8ed1faa6fa66b` |
| 55 | `def` | [IsBipartiteWith.edgeSetEmbeddingCompleteBipartiteGraph](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-edgesetembeddingcompletebipartitegraph.md) | 500 | `declaration-track:33079ce52c5f2761a8f594ec42f33238bb81d2c32505498cfe1de834fe162566` |
| 56 | `theorem` | [IsBipartiteWith.encard_edgeSet_le](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-encard-edgeset-le.md) | 518 | `result-track:ac5c49ee23f0116d03bb73c93c237e90e654908fe8ec05360af003b45e90906c` |
| 57 | `theorem` | [IsBipartite.four_mul_encard_edgeSet_le](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartite-four-mul-encard-edgeset-le.md) | 524 | `result-track:5d6e0e5ac69a3afff5009d44d9a653b08d0caa4c9e02eb61ebc7f11396811895` |
| 58 | `def` | [bipartiteDoubleCover](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/bipartitedoublecover.md) | 540 | `declaration-track:ceccf352b4e852be2dbfab6fb37e929e5e2fb7c758c389f2dd28a72f5bb90206` |
| 59 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/instance-source-edition-2.md) | 546 | `declaration-track:79abf7f7aea13c7184953ef0e2a1f3bc14e74d6afb8ad392bd97d1b0db2bd984` |
| 60 | `theorem` | [bipartiteDoubleCover_le](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/bipartitedoublecover-le.md) | 552 | `result-track:9e7c7e6286e9e550c22c7b4b888c75554c4b94e91b58ffdc497340790b8723b8` |
| 61 | `theorem` | [card_edgeFinset_bipartiteDoubleCover](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/card-edgefinset-bipartitedoublecover.md) | 559 | `result-track:3eff13fcfdc8dbfb4cee8224f4c5fd62bd7b0332d53502f2a71809ef0ee6e70e` |
| 62 | `theorem` | [completeBipartiteGraph_isContained_bipartiteDoubleCover](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/completebipartitegraph-iscontained-bipartitedoublecover.md) | 573 | `result-track:5a80205973947d3db8705a1d35141733d4e0e1cd0f0ffaee98ebb85afff940fa` |
| 63 | `theorem` | [isBipartiteWith_bipartiteDoubleCover](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartitewith-bipartitedoublecover.md) | 619 | `result-track:06c21ae0f6f54caa53d39b75bc46a342dc475eee574933f71064d3cddc865fcf` |
| 64 | `theorem` | [isBipartite_bipartiteDoubleCover](../../../../../Combinatorics/GraphTheory/BipartitePublic.lean/declarations/isbipartite-bipartitedoublecover.md) | 624 | `result-track:7e4e674b27a9e746f7e1d95c1d38679422046443fa1fdbbc084d6a6e5868b3d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88783c8059a6ddd5892b691e0a553fe98caf59cd6ee93482e03ab195cfbcd6f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant91c04632c94a93aa43262ad7e497aa9956859b19c91e1a517f74cf7177a0c1ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
