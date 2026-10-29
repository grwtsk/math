# Verification target: Classical Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15311ad10986cc984a38ac7dee6e2fc5ae8a76f6",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15311ad10986cc984a38ac7dee6e2fc5ae8a76f6`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean.json)

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
| 1 | `class` | [RelCWComplex.](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex.md) | 107 | `declaration-track:2ae2f4376a9792aec024b3147168039f698ace3390ba86038055cf309868ab3d` |
| 2 | `class` | [CWComplex.](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex.md) | 143 | `declaration-track:4bf2b038f01d9e36cc3c14c1e5bd3245ec3a6b680a565413cb7d7b1685373d95` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/instance.md) | 173 | `declaration-track:372a122fa4876ebd6fd171760bc6480bc001e704048d4d441a4d92e2c8a87e60` |
| 4 | `def` | [RelCWComplex.toCWComplex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-tocwcomplex.md) | 189 | `declaration-track:1b86048868ecfb0c918af70e6be4aa9207bd3e517ae94c646b2bffc7f7768881` |
| 5 | `lemma` | [RelCWComplex.toCWComplex_eq](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-tocwcomplex-eq.md) | 201 | `result-track:e892a78957b67ee5604b54624cce4d0ffc608bb0f96997cab23af2a170d0bd05` |
| 6 | `def` | [RelCWComplex.openCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell.md) | 209 | `declaration-track:dd5a6ff7db024cf6a29b9847d6cdd4017914d5af00c9ce6728266eba0c54ed5a` |
| 7 | `def` | [RelCWComplex.closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closedcell.md) | 213 | `declaration-track:bae1a7f82ef8d25733882519af3c85a77a9672fa1a84fb61d04f89c257965aa3` |
| 8 | `def` | [RelCWComplex.cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier.md) | 218 | `declaration-track:2c090a5b696ac8aef2ed1beefd2bdda026bda7444feda4db741a4a00419a4bc5` |
| 9 | `lemma` | [CWComplex.mapsTo](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-mapsto.md) | 228 | `result-track:669b8fd5021c114ab4957c8586fed492d7f3c8c480212694e3bc4e505f9060b1` |
| 10 | `lemma` | [RelCWComplex.pairwiseDisjoint](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-pairwisedisjoint.md) | 235 | `result-track:9e5213523952b9cdd8ecdc28a33af9fa75d52df2c1eebb59dc8fe28347064583` |
| 11 | `lemma` | [RelCWComplex.disjointBase](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-disjointbase.md) | 240 | `result-track:a71cb9fd917efdb2015396e9708bef1671ce62d91dd33f57dc77fe264d0d14fe` |
| 12 | `lemma` | [RelCWComplex.disjoint_openCell_of_ne](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-disjoint-opencell-of-ne.md) | 245 | `result-track:71e57f340e989a10b575bacb214ff37bc1da31771c363a0d990aa9452114e1ab` |
| 13 | `lemma` | [RelCWComplex.cellFrontier_subset_base_union_finite_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-subset-base-union-finite-closedcell.md) | 250 | `result-track:c01f8c9e50f6da7073817e625dda6b952af09d5a4f1e92cf3d10d207a3afb669` |
| 14 | `lemma` | [CWComplex.cellFrontier_subset_finite_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-cellfrontier-subset-finite-closedcell.md) | 258 | `result-track:45cfcda89006bb5eb8ae0f306d83daf541e5f4bd3fa0b8d30fdc6e59ab16838e` |
| 15 | `lemma` | [RelCWComplex.union](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-union.md) | 265 | `result-track:f87a16f93ff6b011cbde1198a2dc162a08407ec0ad2668d34d076264fa3b2228` |
| 16 | `lemma` | [CWComplex.union](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-union.md) | 268 | `result-track:9ade432cabdbe25eb53abbdb272255db5bd187dc834f4c946584b7a6c1aa4a67` |
| 17 | `lemma` | [RelCWComplex.openCell_subset_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell-subset-closedcell.md) | 274 | `result-track:107af88ae70cca7a3d74335c0dc472866fcb4e27365b91997292ca32cdf36c33` |
| 18 | `lemma` | [RelCWComplex.cellFrontier_subset_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-subset-closedcell.md) | 278 | `result-track:10b32913978ee184b71b4cbdf39704bc19858c431b9deadca2dc9a5741be9556` |
| 19 | `lemma` | [RelCWComplex.cellFrontier_union_openCell_eq_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-union-opencell-eq-closedcell.md) | 282 | `result-track:833c780dde9a6c661e1a9c622cef695cc8d33fa199259fa7ffcf7bae198a89da` |
| 20 | `lemma` | [RelCWComplex.map_zero_mem_openCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-map-zero-mem-opencell.md) | 289 | `result-track:a6d5808659256c4ae3e290dee59dfc08b91cca1c865c51918449eb80f3e920ca` |
| 21 | `lemma` | [RelCWComplex.map_zero_mem_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-map-zero-mem-closedcell.md) | 295 | `result-track:249acb304f47a755ae2b2cacf9a657f2e6745a3472a4878e5ec7b814efa57bfd` |
| 22 | `lemma` | [RelCWComplex.openCell_nonempty](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell-nonempty.md) | 299 | `result-track:ced82c0313e9d3ad6da7a7c52e049665ab01c4df40bf5ad1bddf025b72138014` |
| 23 | `lemma` | [RelCWComplex.closedCell_nonempty](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closedcell-nonempty.md) | 303 | `result-track:8beeed43f91a15a8d0e2d37035d6f6616e30d6d63f56039b897fca2e9c480c85` |
| 24 | `lemma` | [RelCWComplex.openCell_congr](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell-congr.md) | 308 | `result-track:db0fffa961f46883e7bc3a5ea1023e5d9af3e694688cb339e8b128c288d84a3b` |
| 25 | `lemma` | [RelCWComplex.subset_of_eq_union_iUnion](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-subset-of-eq-union-iunion.md) | 314 | `result-track:6478280bdf171c00b9fc1511736de7ad16093b28851c634bb963215abd75cdae` |
| 26 | `lemma` | [RelCWComplex.eq_of_eq_union_iUnion](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-eq-of-eq-union-iunion.md) | 329 | `result-track:60b0d0487719ed827714b0d892d26c4f7e6467aad26b69a6362bd5f2cf57e684` |
| 27 | `lemma` | [CWComplex.eq_of_eq_union_iUnion](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-eq-of-eq-union-iunion.md) | 337 | `result-track:5f97bedbccd96bc090e2991ac2c6292cde6d73c5a7076b51dbd5c35858b01dab` |
| 28 | `lemma` | [RelCWComplex.isCompact_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iscompact-closedcell.md) | 345 | `result-track:7afe4dd5217e27c8a08648a870179b3e96e5f53a9202c26fcb42891db87b4683` |
| 29 | `lemma` | [RelCWComplex.isClosed_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-isclosed-closedcell.md) | 350 | `result-track:bcec6ba7f99dac0048794be14648bbb541439ead86123e18c1aa692dc87c6897` |
| 30 | `lemma` | [RelCWComplex.isCompact_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iscompact-cellfrontier.md) | 354 | `result-track:f808cfe6238b132e58d5e19357157a9e52d38a9f38fed44202fff5d173899c14` |
| 31 | `lemma` | [RelCWComplex.isClosed_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-isclosed-cellfrontier.md) | 359 | `result-track:55aec91968505dc1db9ff31bee8b4987ea9787f8adfa82ac5d1743c3125fa08d` |
| 32 | `lemma` | [RelCWComplex.closure_openCell_eq_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closure-opencell-eq-closedcell.md) | 364 | `result-track:3130e24894e88614a52318f7f34bd74ccd7dbd5f046f2b90a2eb1fc0466bd594` |
| 33 | `lemma` | [RelCWComplex.closed](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closed.md) | 372 | `result-track:48bdeb7006ba7622fa8347bd5100e3e5278e10be14f64a8ca7b2753a02844f03` |
| 34 | `lemma` | [CWComplex.closed](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-closed.md) | 378 | `result-track:235f60efca375219728ffe82b7b77f1c35c238ce90a39b40c6a196fc498e4ce9` |
| 35 | `lemma` | [RelCWComplex.closedCell_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closedcell-subset-complex.md) | 384 | `result-track:aad1bdcf46d2276cf489338569001b646de2230e362bc3d8b4c1899e576ed55c` |
| 36 | `lemma` | [RelCWComplex.openCell_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell-subset-complex.md) | 390 | `result-track:5d065be74a3461e07f37132386ada28abfc503565bf81aa82201fb06f2d67bb3` |
| 37 | `lemma` | [RelCWComplex.cellFrontier_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-subset-complex.md) | 395 | `result-track:a4d5be50fc62fe506e5ce4f02374be69ed176b4b253ef6ebd5e784cbc972890b` |
| 38 | `lemma` | [RelCWComplex.closedCell_zero_eq_singleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closedcell-zero-eq-singleton.md) | 400 | `result-track:441f05ef7de3a5225a7c1f9f391622f093f6cba6e365cc47191e20cea41cce0a` |
| 39 | `lemma` | [RelCWComplex.openCell_zero_eq_singleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell-zero-eq-singleton.md) | 405 | `result-track:261acd2faf58b5fb94d974275264bce644e1f5b0cb530fb9e6cdcf0a7f2e0313` |
| 40 | `lemma` | [RelCWComplex.cellFrontier_zero_eq_empty](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-zero-eq-empty.md) | 410 | `result-track:1233a26db975a606513a2d2f06439e5d9491d55c8bcfb9cb5f82f26bf3f3029c` |
| 41 | `lemma` | [RelCWComplex.nonempty_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-nonempty-cellfrontier.md) | 415 | `result-track:cb7fc7b4ad7f69163d41a7386eabdbac4b2c748e382b69f9d2437faa89d9226b` |
| 42 | `lemma` | [RelCWComplex.injective_map_zero](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-injective-map-zero.md) | 424 | `result-track:ccf840388d5c8276c172e0b69167c4e9eeab6e015c9f68092dc9acb853beb4db` |
| 43 | `lemma` | [RelCWComplex.map_zero_eq_self_iff](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-map-zero-eq-self-iff.md) | 432 | `result-track:928557132f6745d14c5ed127ca3a33e374a592089c6be9319a7f8254b4bd1125` |
| 44 | `lemma` | [RelCWComplex.closedCell_zero_injective](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closedcell-zero-injective.md) | 437 | `result-track:e970b69b510ede614724fc05a71d9579c89380b24ccdab04ea5b066c7141d2a0` |
| 45 | `lemma` | [RelCWComplex.openCell_zero_injective](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell-zero-injective.md) | 444 | `result-track:2aee953559dc9d8700c80e6d574e319373e12b40f25e18d32553b6ffa6d32fa9` |
| 46 | `lemma` | [RelCWComplex.cellFrontier_one_eq](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-one-eq.md) | 451 | `result-track:bab7d7cefb1dfc3705150d018bff14f35e53853b148104607b25e031517769cf` |
| 47 | `lemma` | [CWComplex.exists_cellFrontier_one_eq](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-exists-cellfrontier-one-eq.md) | 462 | `result-track:e3890396caf424e5a99c0cd6b9472e8e2ccacca80a6c2d9b54aa913e07b219d3` |
| 48 | `lemma` | [RelCWComplex.base_subset_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-base-subset-complex.md) | 474 | `result-track:21618754cb6852b4d31c88e2d447d1d6d33b7eeba1ab082c62c4158a71cd7ff1` |
| 49 | `lemma` | [RelCWComplex.isClosed](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-isclosed.md) | 479 | `result-track:b36f710d5427ab847f7b8ccbd12638f08c2dc5b78157ce15c40666b9a460141c` |
| 50 | `lemma` | [RelCWComplex.iUnion_openCell_eq_iUnion_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iunion-opencell-eq-iunion-closedcell.md) | 490 | `result-track:6655496599b6d8ae6d2c18019b8a146248fe9c0639ba737ba6a6293ad0334394` |
| 51 | `lemma` | [RelCWComplex.union_iUnion_openCell_eq_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-union-iunion-opencell-eq-complex.md) | 520 | `result-track:c79616e682d2c01f2d37c81715c5f2aac7d69acef8143e58148ca1ad6196adcb` |
| 52 | `lemma` | [CWComplex.iUnion_openCell_eq_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-iunion-opencell-eq-complex.md) | 527 | `result-track:ff2c0bc51814668cf5fbc311c61b55250605ef5e5dc7e4b2e8ef02b1ee6c8570` |
| 53 | `lemma` | [RelCWComplex.eq_of_not_disjoint_openCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-eq-of-not-disjoint-opencell.md) | 533 | `result-track:78cc40ad0bcee79eb36d5edde49b2b261399f62e3b470d85430698ddae3dc02d` |
| 54 | `lemma` | [RelCWComplex.disjoint_base_iUnion_openCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-disjoint-base-iunion-opencell.md) | 539 | `result-track:03e03383b66b052be3c3ce4075a93b5a8ddbfb96c31a66b683a0ad1ec45a205d` |
| 55 | `lemma` | [RelCWComplex.isClosed_inter_cellFrontier_succ_of_le_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-isclosed-inter-cellfrontier-succ-of-le-isclosed-inter-close.md) | 548 | `result-track:3651a6094acbda9f70c16254aac8f694758cf0da4e80a6c3e5d2dc2032ecca70` |
| 56 | `lemma` | [CWComplex.isClosed_inter_cellFrontier_succ_of_le_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-isclosed-inter-cellfrontier-succ-of-le-isclosed-inter-closedce.md) | 564 | `result-track:974a499b219cad8e7f1764180008bed277caec66bb5b313c11da236cf725845c` |
| 57 | `lemma` | [RelCWComplex.isClosed_of_isClosed_inter_openCell_or_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-isclosed-of-isclosed-inter-opencell-or-isclosed-inter-close.md) | 573 | `result-track:02bfad230d7a08d703881253be05776e93b05be7782c6243b4edb6853dc6c581` |
| 58 | `lemma` | [RelCWComplex.isClosed_of_disjoint_openCell_or_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-isclosed-of-disjoint-opencell-or-isclosed-inter-closedcell.md) | 593 | `result-track:16367baa37758693baf59872a28d3f5a5a13539fd71361df1fbd11b3d10b1e3a` |
| 59 | `lemma` | [CWComplex.isClosed_of_isClosed_inter_openCell_or_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-isclosed-of-isclosed-inter-opencell-or-isclosed-inter-closedce.md) | 607 | `result-track:a356efbc671291dd61f95778354c225c1304a9f80c4e01b33f9c20f452711a11` |
| 60 | `lemma` | [CWComplex.isClosed_of_disjoint_openCell_or_isClosed_inter_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-isclosed-of-disjoint-opencell-or-isclosed-inter-closedcell.md) | 614 | `result-track:baaf02038a71c8c7698bc581bbb18f3e4d323a8aeec6947550b708350e8515c7` |
| 61 | `lemma` | [RelCWComplex.cellFrontier_subset_finite_openCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-subset-finite-opencell.md) | 621 | `result-track:cda39a3c6bdc3f8ed0235133937b907b3e4e01b4578c9df3228e15aa55496689` |
| 62 | `lemma` | [CWComplex.cellFrontier_subset_finite_openCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-cellfrontier-subset-finite-opencell.md) | 656 | `result-track:ac43ca5543358d29fc588e284e1841255c0012fff25dd343dd8ee0273cba113a` |
| 63 | `structure` | [Subcomplex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/subcomplex.md) | 667 | `declaration-track:d76f03a09c2baa8e4b8053a1c05f7cc8b7605bd704ae449db218a1b404a137b7` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 681 | `declaration-track:b12b47687585baa4177681cc60f565a9a8665e27202ed8094fb432b059a133a8` |
| 65 | `instance` | [(anonymous)](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 691 | `declaration-track:e782f0f79a9931246fb6ddd5ca36cd30547f6a95a77c1e4edc791d736c3b9207` |
| 66 | `lemma` | [mem_carrier](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/mem-carrier.md) | 696 | `result-track:9553df0ed877cce27ba771b1b2eb038a0840e5d79b8f0821468a52a7421ac638` |
| 67 | `lemma` | [coe_eq_carrier](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/coe-eq-carrier.md) | 699 | `result-track:62f1bdbf72204005352abdb566d3af92dbb50610357f1e7733e9087bf3e75e1e` |
| 68 | `lemma` | [ext](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/ext.md) | 702 | `result-track:a622d174d5b6677bee7c586839e3562f189e795240ee03547f5473329a2bfe6c` |
| 69 | `lemma` | [eq_iff](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/eq-iff.md) | 706 | `result-track:8cf9e6d0db1a344f04be61eb0d67cea0fbf3949a121adbda932d0657f89447d1` |
| 70 | `def` | [copy](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/copy.md) | 711 | `declaration-track:a83bdf158ae366f852b380834a058d70c5d4d93a4147a64321f0268b8187a644` |
| 71 | `lemma` | [coe_copy](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/coe-copy.md) | 719 | `result-track:33362e9efb48d7cafe69d4417e497cfb05830e7a6d04856b18a7f3eac8218f97` |
| 72 | `lemma` | [copy_eq](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/copy-eq.md) | 724 | `result-track:e68adda21ac6a6e1654fc1801f76855de890503f374d8601eb70025ceb56c8c7` |
| 73 | `lemma` | [union](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/union.md) | 728 | `result-track:aff45dc6426272a729ac4b3684ec242f2841b194740c8b4eab18512caee4c3e9` |
| 74 | `lemma` | [closed](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/closed.md) | 734 | `result-track:b5ab1485e81574aa29492d151a6c8df165bdc8f2b4216160a29424c89e2a8369` |
| 75 | `lemma` | [CWComplex.Subcomplex.union](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-subcomplex-union.md) | 746 | `result-track:25d7b3a35759454e47684d43927f9446a6d64095a246fa3e05640586e1e34268` |
| 76 | `def` | [RelCWComplex.Subcomplex.mk'](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-mk.md) | 755 | `declaration-track:05deb33bd0e1611a199f6effe8e782fb9e19c15f18730c339d8a5a6bfed9f97b` |
| 77 | `def` | [CWComplex.Subcomplex.mk'](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-subcomplex-mk.md) | 787 | `declaration-track:80c73e3bbc0c2b92969ac57c5e53844f62d813434fb310af33eaaed596939437` |
| 78 | `def` | [RelCWComplex.Subcomplex.mk''](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-mk-source-edition-2.md) | 796 | `declaration-track:c84afde07df716a336fe358bcad289fee1bc122e3d6782a4feeb6158b56f0f39` |
| 79 | `def` | [CWComplex.Subcomplex.mk''](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-subcomplex-mk-source-edition-2.md) | 807 | `declaration-track:877d13c3c07219a1f4f5d756acc137ed7baee02521b98f873fabb75bb4d5ddb3` |
| 80 | `lemma` | [RelCWComplex.Subcomplex.subset_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-subset-complex.md) | 819 | `result-track:ccaa8abbddb1272f8fb66f0465d70dfb9213c6eb1d9c97be7eb01f78d82aa24d` |
| 81 | `lemma` | [RelCWComplex.Subcomplex.base_subset](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-subcomplex-base-subset.md) | 825 | `result-track:f4c24d5c2a572271ac130c81b06934110a3e94ecadf812f603de472e1bbea80f` |
| 82 | `def` | [skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/skeletonlt.md) | 844 | `declaration-track:de5cb26afa561d0514b3ed6066ab9bab7e748d63cdb8f055224c17c28ec2b482` |
| 83 | `abbrev` | [skeleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/skeleton.md) | 861 | `declaration-track:6743d14507078647dbbf5a057a091f7eff49138e5ed2e35c52ce196fc20eca6f` |
| 84 | `lemma` | [RelCWComplex.skeletonLT_zero_eq_base](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeletonlt-zero-eq-base.md) | 872 | `result-track:351ff605180d451fa0780addabbde301be591e249328b9baa62b86c6569038ef` |
| 85 | `lemma` | [CWComplex.skeletonLT_zero_eq_empty](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-skeletonlt-zero-eq-empty.md) | 875 | `result-track:ddfc34af72627cd937103b900de19bdf73f4faab28e4f79088df333cb395e694` |
| 86 | `lemma` | [RelCWComplex.skeletonLT_top](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeletonlt-top.md) | 878 | `result-track:ba988802b6bff0078f0a543d1ff6c7624508ba89adc484e785b952c640d1e4ba` |
| 87 | `lemma` | [RelCWComplex.skeleton_top](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeleton-top.md) | 882 | `result-track:dd4ace8f13aa9f59829712086767b84e7e3f441252be3b2b101496069107a306` |
| 88 | `lemma` | [RelCWComplex.skeletonLT_mono](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeletonlt-mono.md) | 886 | `result-track:02665ab4e643d2d8016021d51038d0e12fde2371a4b8ebcc3419ac93cbc4cc24` |
| 89 | `lemma` | [RelCWComplex.skeletonLT_monotone](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeletonlt-monotone.md) | 896 | `result-track:e6f30e4c1fd84f13be7693a01a31aadb1469d4ab8aa016d98987dcf79bce79a1` |
| 90 | `lemma` | [RelCWComplex.skeleton_mono](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeleton-mono.md) | 900 | `result-track:a35da8a29c20ca4708ced5181f1831ffb1914bf842bde0701751f8c93775211d` |
| 91 | `lemma` | [RelCWComplex.skeleton_monotone](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeleton-monotone.md) | 905 | `result-track:66ab834b38a3a36655c012a197a3bb3dd22c94fb508a881d95970a455e6ac016` |
| 92 | `lemma` | [RelCWComplex.closedCell_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closedcell-subset-skeletonlt.md) | 909 | `result-track:da48f962350496cc8c92e1748c506f43936e4d1a3b3aa3c135b7b4ab343fc8cb` |
| 93 | `lemma` | [RelCWComplex.closedCell_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-closedcell-subset-skeleton.md) | 918 | `result-track:09b6639a52670c2b35788414e3d0b72ee44eb0e2c4bce21d273ed4d071d87834` |
| 94 | `lemma` | [RelCWComplex.openCell_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell-subset-skeletonlt.md) | 923 | `result-track:ad4a3e843fedd81a65245627a23f06d81b8a981e0a4689229f1a8ebefeb97e00` |
| 95 | `lemma` | [RelCWComplex.openCell_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-opencell-subset-skeleton.md) | 928 | `result-track:4ab0fc325bb090cf31c471d90bcc92289839f7b155f5296ce474b096e8bfbe69` |
| 96 | `lemma` | [RelCWComplex.cellFrontier_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-subset-skeletonlt.md) | 933 | `result-track:1887e844c7e4883ae605e1a3b0cf9d005cfd739503ce68089c4afd1ea2382a80` |
| 97 | `lemma` | [RelCWComplex.cellFrontier_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-cellfrontier-subset-skeleton.md) | 945 | `result-track:e9ea9c5ea5fccb06d3fa112cb2f3f096fb98684f24ec7ae3cf9ade2f5ec0312e` |
| 98 | `lemma` | [RelCWComplex.iUnion_cellFrontier_subset_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iunion-cellfrontier-subset-skeletonlt.md) | 950 | `result-track:0efc79a047a5ccc30e88ff70b80eccbd3538985c05627672e70e0f04cff8634a` |
| 99 | `lemma` | [RelCWComplex.iUnion_cellFrontier_subset_skeleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iunion-cellfrontier-subset-skeleton.md) | 955 | `result-track:a5ab37ed457d7174053506329b45f70bef23b0d10aabdbf7780227569c7f2c27` |
| 100 | `lemma` | [RelCWComplex.skeletonLT_union_iUnion_closedCell_eq_skeletonLT_succ](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeletonlt-union-iunion-closedcell-eq-skeletonlt-succ.md) | 960 | `result-track:1d56d1e4cc960bfcc20da8f89e2818a8e96df0fcf6374c60ebdb650a6b8d360d` |
| 101 | `lemma` | [RelCWComplex.skeleton_union_iUnion_closedCell_eq_skeleton_succ](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeleton-union-iunion-closedcell-eq-skeleton-succ.md) | 969 | `result-track:44fc9c4f5c337ea3da5feb3b0ed06dbf25875ef295d77406502cf06296b6348c` |
| 102 | `lemma` | [RelCWComplex.iUnion_openCell_eq_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iunion-opencell-eq-skeletonlt.md) | 974 | `result-track:1a1fff2be3ff967b1653dd1dd0d58a37f59679af55c69e21015b372c6d5460bd` |
| 103 | `lemma` | [CWComplex.iUnion_openCell_eq_skeletonLT](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-iunion-opencell-eq-skeletonlt.md) | 978 | `result-track:600232fd1ae4994dff01d205ce620790fca9a33b1a0a87b965b69830bb75ef50` |
| 104 | `lemma` | [RelCWComplex.iUnion_openCell_eq_skeleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iunion-opencell-eq-skeleton.md) | 982 | `result-track:b51c19737ede87a0cac6aa19638dee7e8453bc4d0dca3a443ce6c33fcab2491d` |
| 105 | `lemma` | [CWComplex.iUnion_openCell_eq_skeleton](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-iunion-opencell-eq-skeleton.md) | 986 | `result-track:dd511aeb3eb2603a32c85342063f3cb71a1a9377e82e5d4a60810e52920b16f1` |
| 106 | `lemma` | [RelCWComplex.iUnion_skeletonLT_eq_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iunion-skeletonlt-eq-complex.md) | 991 | `result-track:d176d14b13fb483c12abb21bc3aefbf50423be15343e12e22b6ba0e51aeb27a0` |
| 107 | `lemma` | [RelCWComplex.iUnion_skeleton_eq_complex](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-iunion-skeleton-eq-complex.md) | 999 | `result-track:1ec59a618aaf284a246716498dd5cbc8357a1e2c11b8b6c8f4b1a69553286c3c` |
| 108 | `lemma` | [RelCWComplex.mem_skeletonLT_iff](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-mem-skeletonlt-iff.md) | 1006 | `result-track:2bce928a495c69c9edc5e7e5e0dd3ec55c81090a565c5331bc468477705df90e` |
| 109 | `lemma` | [CWComplex.mem_skeletonLT_iff](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-mem-skeletonlt-iff.md) | 1010 | `result-track:7a870723efd8f444453045e7a7841fdbbf3459b46b7716a661a6f09f49d5426a` |
| 110 | `lemma` | [RelCWComplex.mem_skeleton_iff](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-mem-skeleton-iff.md) | 1014 | `result-track:895577b7ac6d2c5c537a840bba25a642afb2ffff5bec1617220a052972a1adf7` |
| 111 | `lemma` | [CWComplex.mem_skeleton_iff](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-mem-skeleton-iff.md) | 1023 | `result-track:e84bec18972fbf839ed8eefcbc239d3bb293cb32539c022495972089d72b0e94` |
| 112 | `lemma` | [RelCWComplex.disjoint_skeletonLT_openCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-disjoint-skeletonlt-opencell.md) | 1032 | `result-track:ea674e2e6e2d51bd2a1d5f6c7371f5ca598b6ef43acf0db7bf5359f3dd26886b` |
| 113 | `lemma` | [RelCWComplex.disjoint_skeleton_openCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-disjoint-skeleton-opencell.md) | 1045 | `result-track:c574c5f6a50c9f3d32f323ce4b2e811460848cbcef5cc00bfefdd5af3492913b` |
| 114 | `lemma` | [RelCWComplex.skeletonLT_inter_closedCell_eq_skeletonLT_inter_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeletonlt-inter-closedcell-eq-skeletonlt-inter-cellfrontie.md) | 1052 | `result-track:e073693465bf758903f189320134b192d7a2eae875f2247c584ce587336bd399` |
| 115 | `lemma` | [RelCWComplex.skeleton_inter_closedCell_eq_skeleton_inter_cellFrontier](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-skeleton-inter-closedcell-eq-skeleton-inter-cellfrontier.md) | 1063 | `result-track:204087056e4ee282a959aef31d6566f18a7b5bf938b1bb3f822e5b33a3ae7226` |
| 116 | `lemma` | [RelCWComplex.disjoint_interior_base_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-disjoint-interior-base-closedcell.md) | 1070 | `result-track:74b829a2aa792a643d753b12298c5e906b4db2b904ce681132f40d62a2f88864` |
| 117 | `lemma` | [RelCWComplex.disjoint_interior_base_iUnion_closedCell](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/relcwcomplex-disjoint-interior-base-iunion-closedcell.md) | 1081 | `result-track:7dab26db3f235bd2da19211c8e848f22d75830214f8fe64ed2a7831add2debc6` |
| 118 | `def` | [CWComplex.OfDiscreteClosed](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-ofdiscreteclosed.md) | 1089 | `declaration-track:a1e209a6bc2e0f939ea1478e84f0c9fbbfc010f8986ec48106a65bb44ca2c008` |
| 119 | `instance` | [CWComplex.ofDiscreteTopology](../../../../GeneralTopology/ClassicalBasicNamespacedPublic.lean/declarations/cwcomplex-ofdiscretetopology.md) | 1124 | `declaration-track:089fb202a547c9f811e5c1ddc2f7e2ee82cfedd4bf57636c2da31e1311ec3073` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa78f7daf1fee4c82cf5ac68cf4dd164c6c3745589abb690e63334700eedd7bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantb6e03e92c3da1ec69c33b001cc3ea367983a254f58f41aad1ead9a978fe895e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
