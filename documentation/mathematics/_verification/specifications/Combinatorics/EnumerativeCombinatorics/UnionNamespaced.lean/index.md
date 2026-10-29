# Verification target: Union Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dde40f6650f247118e64dda1a1582ca16e777cce",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dde40f6650f247118e64dda1a1582ca16e777cce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Bind` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion.md) | 47 | `declaration-track:d66105432cae66ab0b70937fafbcda7db0d201173f3f7285674ae57267601ad1` |
| 2 | `lemma` | [disjiUnion_val](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion-val.md) | 52 | `result-track:14f4ce1a9699baf17fe10cc684b44b5d2f9e69007c24fd661bcf31ef1a5a2623` |
| 3 | `lemma` | [disjiUnion_empty](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion-empty.md) | 55 | `result-track:10747ec005e32258010a548c897078d1c455a40b848c093d0af2cbbe16572ad1` |
| 4 | `lemma` | [mem_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/mem-disjiunion.md) | 57 | `result-track:9bb1ddd1bbf1fd107ff40684b3978e1d81a8c60368a20e2bcb6bb6663c6a111f` |
| 5 | `lemma` | [coe_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/coe-disjiunion.md) | 61 | `result-track:7ee4a18883c80d963dfa221820aeb9e20789eaeb96c58cfc111022cb761d4a15` |
| 6 | `lemma` | [disjiUnion_cons](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion-cons.md) | 64 | `result-track:e8ef62d3ae4b489e8d187bf21366e419eb8bbab0e4314051d95c9b25f6de5769` |
| 7 | `lemma` | [singleton_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/singleton-disjiunion.md) | 73 | `result-track:8a58b6c6a4c2c47e5b302b1c754622c153bc367714e95f77d5737df48e90eba3` |
| 8 | `lemma` | [disjiUnion_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion-disjiunion.md) | 76 | `result-track:98115639c74bb337a188dbd8ba511ed5a0b6605720d8b47818dc25a7e1f4c9ad` |
| 9 | `lemma` | [sUnion_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/sunion-disjiunion.md) | 92 | `result-track:9dc810e59eddc8a5ba40f1a7d5157fcd64d19cdccfeae692e2fde3cf70cab897` |
| 10 | `lemma` | [pairwiseDisjoint_fibers](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/pairwisedisjoint-fibers.md) | 103 | `result-track:bfe82a03678e3338152fc3bdfd581cb9c21ec1cf513fb1e6f88d67cbd2e05a24` |
| 11 | `lemma` | [disjiUnion_filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion-filter-eq.md) | 107 | `result-track:8583d695639a5bc65ae512b6723243062aaa29e2246e1d9f46253cfb3bd81fc2` |
| 12 | `lemma` | [disjiUnion_filter_eq_of_maps_to](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion-filter-eq-of-maps-to.md) | 112 | `result-track:201a704faf07150cea2e325ac4b84c9e770fb5e5b48a4c9435172ae2e94e892d` |
| 13 | `theorem` | [map_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/map-disjiunion.md) | 118 | `result-track:ef0bab5a2ea5634be04a79bc1a08c771de12330951b0fadc725c58b0d7ca5d9b` |
| 14 | `theorem` | [disjiUnion_map](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion-map.md) | 124 | `result-track:242724e635d3dfec69ec20edb3e5674600cd0bcf9be73fa7da2a75030f8745c0` |
| 15 | `theorem` | [fold_disjiUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/fold-disjiunion.md) | 131 | `result-track:00ddcc096c94bb0251bc3a38a339bd5a3af8c2193223f207f5f8538d31d4a7d9` |
| 16 | `def` | [biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion.md) | 143 | `declaration-track:50f1789b46d497d838161a6bd4208e895fd325e24ca5f0edc8c56bce63f94f08` |
| 17 | `lemma` | [biUnion_val](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-val.md) | 146 | `result-track:63a040ad58276dfe7b5754462e328aed42fac79f2e6b8562ab78392d76fe8b96` |
| 18 | `lemma` | [biUnion_empty](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-empty.md) | 149 | `result-track:38942a26226aa1058f7dd4c273baf27e4192c47aabedd411a01231f6278ccd07` |
| 19 | `lemma` | [mem_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/mem-biunion.md) | 151 | `result-track:65aa6e0d2e7d81f4829a4f257decee0ccd00365cd149e59f10888a36af37758c` |
| 20 | `lemma` | [coe_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/coe-biunion.md) | 155 | `result-track:fa177187ce3bd3083a4b924c7b25cc78f22b0e8504b7bdb2a3dce3c8602d5b5a` |
| 21 | `lemma` | [biUnion_insert](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-insert.md) | 159 | `result-track:8279b9403f38b9802e2d0852233546f5d9c15dfb14a1c3470c59a4c38a99d5dc` |
| 22 | `lemma` | [biUnion_congr](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-congr.md) | 162 | `result-track:220e7ca8e0fc01d5774cdda371e3c5254eef7b5f0cbd6adfe04f706497543ed7` |
| 23 | `lemma` | [disjiUnion_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjiunion-eq-biunion.md) | 167 | `result-track:c5637ffc5275d06cff81752e19f7db07476ce16b1d01871444b39b0fa056dda3` |
| 24 | `lemma` | [biUnion_subset](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-subset.md) | 170 | `result-track:a519a2591cd7715aade5c93a5c2bd124597a8ccb815a9c66be91f37f549ad13a` |
| 25 | `lemma` | [singleton_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/singleton-biunion.md) | 175 | `result-track:f59e420f4184d84172bffc8e5785f5958a17ce951b7cc74597d992e8cf2ed16b` |
| 26 | `lemma` | [biUnion_inter](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-inter.md) | 178 | `result-track:af5c1655a60de2f18b881f0e536548054bba2758a843e1511290adbbd8596303` |
| 27 | `lemma` | [inter_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/inter-biunion.md) | 184 | `result-track:a01910c8ea608cee0dfb6261d06a079e3b63a1e2c365441bcfee5cabc154df23` |
| 28 | `lemma` | [biUnion_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-biunion.md) | 189 | `result-track:ccd06d5dce57e6c9fc153c62685a846e24631e731bdaca4fb8b3976fc00323d9` |
| 29 | `lemma` | [bind_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/bind-tofinset.md) | 196 | `result-track:93e6912445b826d6cb5d560b54aa0006dc89a8d4858277e18d8af4dc36158d63` |
| 30 | `lemma` | [biUnion_mono](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-mono.md) | 200 | `result-track:d66623e8dd804dd470adf8a5e3e5141f1e0170f0744fae2bed8aaef14785936b` |
| 31 | `lemma` | [biUnion_subset_biUnion_of_subset_left](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-subset-biunion-of-subset-left.md) | 205 | `result-track:4706ba218318420f36f73a85080aca4fcdcc3185510c4513799713b6e1a26a05` |
| 32 | `lemma` | [subset_biUnion_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/subset-biunion-of-mem.md) | 209 | `result-track:331cbce53d9ed8e2b659b6fdc65065637f83ba8556f03c354ad9948b2169659a` |
| 33 | `lemma` | [biUnion_subset_iff_forall_subset](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-subset-iff-forall-subset.md) | 214 | `result-track:e5d999565884cea6017e5d2dc73e0498b434e9300bdd19315981138522fc6bf4` |
| 34 | `lemma` | [biUnion_singleton_eq_self](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-singleton-eq-self.md) | 221 | `result-track:14010c651b050c8afd007f96f5c84ef45b5ba55d25b192a1581d8ab91563c5be` |
| 35 | `lemma` | [filter_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/filter-biunion.md) | 224 | `result-track:843d16e0c69de74039002e32dac8001b4dba83e2a6cdfe45380c85827e68ef4a` |
| 36 | `lemma` | [biUnion_filter_eq_of_maps_to](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-filter-eq-of-maps-to.md) | 234 | `result-track:94e2c0f5a888654e8da3ac91c272a089b3bd33c661687df83145be48a71f8a31` |
| 37 | `lemma` | [erase_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/erase-biunion.md) | 238 | `result-track:57b0b503cda7e4c3e12256baacbfe2d90ef0f7cde76a8718513b1dcb3aea47b4` |
| 38 | `lemma` | [biUnion_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-nonempty.md) | 245 | `result-track:c5628dbdee6c0511d3ded055d2cd08a1102e62bd591ada7d1f23bba99ac63682` |
| 39 | `lemma` | [Nonempty.biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/nonempty-biunion.md) | 250 | `result-track:c0d9a6cbfd121d636e510062b74a367dd2ad7cbf13c200b44f7265ce32d366e0` |
| 40 | `lemma` | [disjoint_biUnion_left](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjoint-biunion-left.md) | 253 | `result-track:c0d118407ebe92349e2f4c090ef253da728334ac367a1b04f463c68da3cea96e` |
| 41 | `lemma` | [disjoint_biUnion_right](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/disjoint-biunion-right.md) | 261 | `result-track:edee91df6f106c588f45b97c4de26069c7648e3751ac224ea610bb661dfc52b1` |
| 42 | `theorem` | [image_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/image-biunion.md) | 265 | `result-track:a086f6dbec7397874b229fb5c50f2801bce96a341fe0ecf63ca4066483393e01` |
| 43 | `theorem` | [biUnion_image](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-image.md) | 270 | `result-track:14f9ef143687fe7b30fbb5978ccaa9303b1ef8b63c683881bca4ecc3acb76154` |
| 44 | `theorem` | [image_biUnion_filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/image-biunion-filter-eq.md) | 275 | `result-track:55254fff0ef850ef4094f2915622c8293b3e6c7567e60848a6adc071b90a1490` |
| 45 | `theorem` | [biUnion_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/UnionNamespaced.lean/declarations/biunion-singleton.md) | 279 | `result-track:ba41258c8c2eb5746ddb1fbecdea56dabdd8a62cce41360d8dee4658348a6b9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=665e7edd6e590d6e768cda678b939c1cf99021ec39a7e7b4613d94732d514731 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variante4eba6398886cfdf0ac4dc3e5a5b0b3f01fa4437fe9e5e4c6ce786e786e360d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
