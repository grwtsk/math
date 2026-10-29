# Verification target: Order Partition Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8006ac214189d24392163d1cc519bef90e5b71f",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8006ac214189d24392163d1cc519bef90e5b71f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean.json)

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
| 1 | `structure` | [Partition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/partition.md) | 78 | `declaration-track:e7808cf1b4ff6f374045524bf75cc2239e389e15c3e32c18431fe224eb518744` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/instance.md) | 94 | `declaration-track:289dffe0bd845e620da9144e48db38659625b0bcbfe045023ec9d695573e0ce8` |
| 3 | `def` | [Simps.coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/simps-coe.md) | 99 | `declaration-track:a94560f56e9ea6759a607085f74c01c69a833d1660587327ff49bd4c24e045de` |
| 4 | `lemma` | [coe_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/coe-parts.md) | 103 | `result-track:df6765fb55e3e33792c1f6c5ef48693a375d52c33194562b1d0b2fe228c42969` |
| 5 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/ext.md) | 105 | `result-track:bf25c7911097fcac9725752dd1a0ae711af33a7977d3c479ad84aa3e6c03ca63` |
| 6 | `lemma` | [sSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/ssupindep.md) | 109 | `result-track:0eaa6b467c5eac7063162826a82542c77435f548aef3bf1c9f2c42ca18bcc99b` |
| 7 | `lemma` | [disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/disjoint.md) | 112 | `result-track:134f91ca16dd243d691238d452191a3716ef52285b3ae58f87fd0ae0052feb3a` |
| 8 | `lemma` | [pairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/pairwisedisjoint.md) | 115 | `result-track:fecfe322881d61615f8df8b97db36d688a4b02555cf14b71336cb9a3bf950e1c` |
| 9 | `lemma` | [eq_or_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/eq-or-disjoint.md) | 118 | `result-track:c48f672a012457ff9816eabc4acd8803c8ad8e7617d5accecb046f5dcc8b221f` |
| 10 | `lemma` | [eq_of_not_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/eq-of-not-disjoint.md) | 121 | `result-track:219bd301c109d7f9d9cbdaad9f86ac17d5a72752426d9e5cf3dda0357e59abcd` |
| 11 | `lemma` | [sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/ssup-eq.md) | 125 | `result-track:7e2a338126a76743162b775c4fa5f4134218ad85f2fbdb7db0f82c7eb89e7c29` |
| 12 | `lemma` | [iSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/isup-eq.md) | 129 | `result-track:5c78dd4c4be2815d15bd950f8794c6c9470a32d498733d64ce9869cbc6079c91` |
| 13 | `lemma` | [le_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/le-of-mem.md) | 133 | `result-track:864f148183a9bb904c7e9c35677c10c86c09e5d9bd6d607a37380c1d24a7ab2d` |
| 14 | `lemma` | [parts_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/parts-nonempty.md) | 136 | `result-track:f24c23801951cd9097c898612c7e245546a920c6937c3eef93dff9fcff16c56d` |
| 15 | `lemma` | [bot_notMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/bot-notmem.md) | 140 | `result-track:f5aa05c33fc5fa265adb72a7aeb4a8b5aad7e202fce2edc5812f4dd4439b7837` |
| 16 | `lemma` | [ne_bot_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/ne-bot-of-mem.md) | 143 | `result-track:4ef397ef015e82acc461d508d3a3f4ed1b525a41e4bf7b6d1df55771c3411df4` |
| 17 | `lemma` | [bot_lt_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/bot-lt-of-mem.md) | 146 | `result-track:b718beba7c094f00315727e2e238b55a7a0e1a589748a41e6f6c40da341f6834` |
| 18 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/copy.md) | 151 | `declaration-track:dd41dcdde4e20814ee9befaa0c5c282d8dac9934113e5b697317809fff63bebb` |
| 19 | `lemma` | [mem_copy_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-copy-iff.md) | 158 | `result-track:85aa807c5953af6047a2a41d23794238bccd553978c0e210ed4a3346724acd6d` |
| 20 | `def` | [partscopyEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/partscopyequiv.md) | 162 | `declaration-track:5d815ed3d596727a8ea07e0ae69f12ffedfdb460b12d3f3898722130aef8dc50` |
| 21 | `def` | [removeBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/removebot.md) | 167 | `declaration-track:cd9ad5ab5a830b25deaf1e1e0902ac0fbeb51b905863d61b65ae3e84fbb6d103` |
| 22 | `lemma` | [mem_removeBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-removebot.md) | 174 | `result-track:49d75e19c98eddbce9a512b631944d528a802907d7cf78b961565f83f1464000` |
| 23 | `lemma` | [notMem_of_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/notmem-of-bot.md) | 178 | `result-track:a502e40f1145f77282dfb85ef170b0a74f5afea5403e64b069e4b2e0c5c6e308` |
| 24 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 184 | `declaration-track:5e0052d21bfac951a7d285ff627e2685a9244590d7979ae578b2dcaf2ccf6156` |
| 25 | `lemma` | [ne_bot_of_mem'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/ne-bot-of-mem-source-edition-2.md) | 188 | `result-track:ea3a2a2568b48db544dbb6bf39b759f55b7eed5ca9796ced5c84073a8d7adfb3` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 200 | `declaration-track:dbe5092eefb312796a027cf9d5f64dc213efd520be0a44adf35826a9c621c76c` |
| 27 | `lemma` | [le_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/le-def.md) | 219 | `result-track:f79c53fb5bf0949a4f9bfdbad1db67762c47300e0090567da2a1efc34ec08d62` |
| 28 | `lemma` | [exists_le_of_mem_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/exists-le-of-mem-le.md) | 221 | `result-track:f9d19e9339e38558100d4a5b35edd8d8b014ed4d800fee5d04a1e5222d0a8979` |
| 29 | `lemma` | [existsUnique_of_mem_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/existsunique-of-mem-le.md) | 223 | `result-track:7fea105bbcc5082b790429006d2151b6f622b939dd36d9818f0706ec149538ba` |
| 30 | `instance` | [instOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/instordertop.md) | 232 | `declaration-track:4feda71b7b2bdf248234554f494c1186d9fcab4ba03b3714a13d459f209a1c15` |
| 31 | `lemma` | [top_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/top-def.md) | 236 | `result-track:b49c09efaf49f1a3dadd4f2c660685b6386079de5f0b6773b5a2c883f49e710a` |
| 32 | `lemma` | [parts_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/parts-top.md) | 238 | `result-track:5a3d3e8c7079957db582742effde6522c3c0b03793811e6989b59e0cdef2857f` |
| 33 | `lemma` | [mem_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-top-iff.md) | 241 | `result-track:e06ab7688dd72aad5cd092c70474bf15ef67b7c750ed4fc9248dab6bc4564224` |
| 34 | `lemma` | [parts_top_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/parts-top-subset.md) | 244 | `result-track:bd83f21372a6e5b66524eb1508b10b0291258bc12640a210007442ba4052fabb` |
| 35 | `instance` | [instSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/instsemilatticeinf.md) | 252 | `declaration-track:f8807691b24f815c02210e1ac6659eb2699b0921a7278438caee2d44b9848866` |
| 36 | `lemma` | [mem_inf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-inf-iff.md) | 275 | `result-track:b5776b9464e919658e1b696f8e1fc57eb0474e9dca851d7e5ecfbbb65c3414dd` |
| 37 | `lemma` | [sUnion_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/sunion-eq.md) | 285 | `result-track:d6b8e0317d8fa273b322a9d7757e87ce42105f94fbf35de4516957afdf73fd4e` |
| 38 | `lemma` | [nonempty_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/nonempty-of-mem.md) | 287 | `result-track:408ea797c3a22943a8c3489ffd9b1f5cd460359588a8cd02f3edf1f32421d23c` |
| 39 | `lemma` | [empty_notMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/empty-notmem.md) | 289 | `result-track:1679799905042163784435ed638baf9f8ab0bd1a83a2f022d8f8a24fb25dbda2` |
| 40 | `lemma` | [subset_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/subset-of-mem.md) | 291 | `result-track:11bf7a6a832b7ff623251f064da22d38fddc8f1b1490be6637b04d7b8d016694` |
| 41 | `lemma` | [mem_iff_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-iff-exists.md) | 293 | `result-track:d6b0e207504f9318e2e69cd4ac6618b95dfbd004ff5011de143c7be366b7fdc2` |
| 42 | `lemma` | [eq_of_mem_inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/eq-of-mem-inter.md) | 297 | `result-track:e7e1fb9642f15f3ad47967d52b6b1692ac1c1f251e3e155529433210a2d32302` |
| 43 | `lemma` | [eq_of_mem_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/eq-of-mem-of-mem.md) | 300 | `result-track:575c054b89d8bcbeb2e309714bf7a862f778037cd4b5d32eba53f9c15c89a724` |
| 44 | `lemma` | [mem_iff_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-iff-unique.md) | 303 | `result-track:830c029c5fe82a733fa8468a4b78dce4ee1cdc6588da3657cc86c388487c0d3b` |
| 45 | `lemma` | [subset_sUnion_and_mem_iff_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/subset-sunion-and-mem-iff-mem.md) | 309 | `result-track:e287c42e325b86df5273dfa7632f879c92be300b67e9c2c3d1d3c4f73f341c23` |
| 46 | `lemma` | [subset_sUnion_iff_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/subset-sunion-iff-mem.md) | 315 | `result-track:a04355754976c1f27baed35b98ac79193f80da2e441ec8bb9b26ad29c24ee990` |
| 47 | `def` | [rep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rep.md) | 320 | `declaration-track:e3f15c30e198f2d7d7d9d8bc4bbd7e8304817320005cf20b13a16edb45231d8f` |
| 48 | `lemma` | [rep_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rep-mem.md) | 323 | `result-track:19fbb2456b2c43ef15487c8db12b9951cd2c5090be21d72542f879748893fa1a` |
| 49 | `lemma` | [rep_mem_supp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rep-mem-supp.md) | 326 | `result-track:0f672f5e5c4707e31f7e8c5f56d334f8ac0209cc466000cadb2ed1435e7377af` |
| 50 | `def` | [Rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel.md) | 336 | `declaration-track:e4368b8250504780828b77500f542335ef0e31c6902f574ded6808f013262b2b` |
| 51 | `lemma` | [rel_le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-le-iff-le.md) | 339 | `result-track:60b4d55f7e1ba4000618f13ac03ca1cf9f844e6ef6a8e0e9f52d1112d49fee1f` |
| 52 | `lemma` | [Rel.exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-exists.md) | 349 | `result-track:a6464c166e341c0daca3d23e22f1fe6c458bdfecb8cbcb6039ecd4068ceffbd1` |
| 53 | `lemma` | [Rel.forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-forall.md) | 351 | `result-track:61d6223a76e3ede035f18274773ff426abcaf5d170e8ebb406e4f78d69cd2e1f` |
| 54 | `lemma` | [rel_rfl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-rfl-iff.md) | 357 | `result-track:d2f8e6023c4c1bd121ac461b6e6c4cad14a7ac3cf700d3222ca4809a61764f17` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 362 | `declaration-track:34c2046afd7f4f04d2c6a6e13d21fd33d8250cea28f8e41a85f59774cd90fa76` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 365 | `declaration-track:5413bfe2dc6d627d16fbe6c20eef666cccb2e70a5b9df95a360732a72a72e49e` |
| 57 | `lemma` | [Rel.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-symm.md) | 369 | `result-track:69587af9fe890ae58217f8b3bd309088c08b4f08076300aa03c89cd95b07a154` |
| 58 | `lemma` | [rel_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-comm.md) | 371 | `result-track:2ac2c22b29c81d22e407085ef8b18244a0d4136d95ebc8ce8b9c56931f79d9dc` |
| 59 | `lemma` | [Rel.trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-trans.md) | 373 | `result-track:c9e71cd2cd3560a48a93a23f524eff00d3e7db926d6728837241b2d47b0599ad` |
| 60 | `lemma` | [Rel.left_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-left-mem.md) | 375 | `result-track:775707b4fcadf63f78efcef85a294875e3464485e2da0df8ec48dd317352ac39` |
| 61 | `lemma` | [Rel.right_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-right-mem.md) | 379 | `result-track:65079c03a1440132b663443fe39b5a1535746b079992bc0882b97e82090db6f8` |
| 62 | `lemma` | [rep_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rep-rel.md) | 382 | `result-track:81fea57866b2547a660bcfcc3fe4f2859041c3016e95e6d8cf0fe4db9c4da8b4` |
| 63 | `def` | [partOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/partof.md) | 390 | `declaration-track:90b7b19e7a1a4996fb390851838b0830d0fdb370ebee0992ad2e2f39c9f4e802` |
| 64 | `lemma` | [partOf_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/partof-subset.md) | 392 | `result-track:8cac9fc351211a3dd966ea28f85260a9323a594c4c4826dc14390708317f62f6` |
| 65 | `lemma` | [mem_partOf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-partof-iff.md) | 394 | `result-track:460cb73605078325db01266dd796a69291e24806351d462011f74bd24bd1d2cd` |
| 66 | `lemma` | [eq_partOf_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/eq-partof-of-mem.md) | 396 | `result-track:4fbbc5b48c149f9a8aa11ac9906a7af07f855f3389e7bcbb373c5d6bc782b05c` |
| 67 | `lemma` | [mem_iff_mem_partOf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-iff-mem-partof-mem.md) | 400 | `result-track:cc657b96a37e4405cf11de798f379c6a9ac26a695fc6ab73143ed3a3546741e3` |
| 68 | `lemma` | [mem_partOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-partof.md) | 405 | `result-track:b1b50c238da9cd74dc3b632d42d9bf3001c2f89b250785c80863aa6364d654c4` |
| 69 | `lemma` | [partOf_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/partof-mem.md) | 407 | `result-track:a0084b356917f9bfd22613be0b035a4df5800c5143c129c8b88ff340a5d04523` |
| 70 | `lemma` | [partOf_rep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/partof-rep.md) | 410 | `result-track:1ca30ff6108d2479fed8a35d8df537a8577ca77d3438bf3bb33da5fa060b9c2f` |
| 71 | `lemma` | [mem_iff_exists_partOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mem-iff-exists-partof.md) | 413 | `result-track:19727b177bc0b69e3e14db2f13f7d927482c00cff63f1705b82c66504a258ba6` |
| 72 | `lemma` | [partOf_nonempty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/partof-nonempty-iff.md) | 416 | `result-track:6fdc1b0398eacef2e6c29802a0fd45e0b00510ffadca95e48e7b33292b76cc16` |
| 73 | `lemma` | [partOf_eq_empty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/partof-eq-empty-iff.md) | 421 | `result-track:01c11a3102ae775bd91dd464ddb83994f605236e2e6f7c9ae41c36ca2c6bab50` |
| 74 | `lemma` | [rel_iff_partOf_eq_partOf_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-iff-partof-eq-partof-of-mem.md) | 424 | `result-track:72ccc12d41ce50aa6d285a493399c88911d81f954b4a4bbd88d9618bb541cdf3` |
| 75 | `lemma` | [rel_iff_partOf_eq_partOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/rel-iff-partof-eq-partof.md) | 430 | `result-track:eb7ee9b656ab6e79e11b23f390e59d93738b4a18ce6a4e950151c4f705e47d89` |
| 76 | `structure` | [IsRepFun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/isrepfun.md) | 448 | `declaration-track:f3e65931ee36f4b7cf9e97a83a707c32b92d51a3336ae6ef7cecb65092981501` |
| 77 | `lemma` | [apply_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/apply-mem.md) | 460 | `result-track:f5876a5a221ac44ec4c12779c469c75f58eea2c53fd529ca3087160545ffb9dc` |
| 78 | `lemma` | [image_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/image-subset.md) | 462 | `result-track:72b03f6d8bc2764ead79baec4475ae2403e14555979f79c68ed0f932a5c72763` |
| 79 | `lemma` | [mapsTo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mapsto.md) | 468 | `result-track:02f74e20ddbd5a39147d36b88152715068971fd42363a6626f7eb816c3044fa3` |
| 80 | `lemma` | [mapsTo_of_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/mapsto-of-disjoint.md) | 471 | `result-track:fc7ec0ee8358c51b781a4b78a10adbcc6071cb8957497637bad9de6f31af66d3` |
| 81 | `lemma` | [apply_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/apply-mem-iff.md) | 474 | `result-track:6e0e5d3976e3f333870c842c11255434780e261e427e893c01e68f7c5aa0a5fb` |
| 82 | `lemma` | [apply_eq_apply_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/apply-eq-apply-iff-rel.md) | 477 | `result-track:e065ef4018c335b79b3217c8558ccc65626820bacc571a87359a0e9a74eab7e2` |
| 83 | `lemma` | [apply_eq_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/apply-eq-apply-iff-source-edition-2.md) | 484 | `result-track:cee055c339fafcf027037829a76ced72ea940b5fc00799070fe5d3c67e604734` |
| 84 | `lemma` | [forall_apply_eq_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/forall-apply-eq-apply-iff.md) | 497 | `result-track:46667abca34990207cc99632d26ed729b33e47573f8f11769a4c16b74b057397` |
| 85 | `lemma` | [apply_eq_apply_iff'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/apply-eq-apply-iff.md) | 506 | `result-track:c3f5fbd8a9de6bf748b2965f50e796ad69a31eee3513961685bda743c5971d5f` |
| 86 | `lemma` | [idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/idem.md) | 515 | `result-track:9eb92ce109a3ca82e5e15ebe48a862c9641a49ec1144d0f0868a7dc8c3db6e10` |
| 87 | `theorem` | [apply_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/apply-apply.md) | 521 | `result-track:9aeac22573b0a7bde7db62c1d7462910a66e2b5463ef221e8abb144031131e25` |
| 88 | `lemma` | [exists_extend_partial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/exists-extend-partial.md) | 527 | `result-track:148c8a349273f03bd7a6ca89865297f4cf9d2fd07c39161411848bccebbefa27` |
| 89 | `lemma` | [exists_extend_partial'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/exists-extend-partial-source-edition-2.md) | 555 | `result-track:314e2ca9303b003d5dd98398da0db8dc1c280cd7076c8397b57e7b58828cb1f6` |
| 90 | `lemma` | [nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderPartitionBasicNamespacedPublic.lean/declarations/nonempty.md) | 560 | `result-track:980547d30576350e66a8ac25e22793fc0ee1dbc2d4f80727f17e609b709069c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd0112fec5fc557e889cb829b3b0af82d6c5b65357f563584d5f008e1c92c13e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variant4a2a2305ee6bdd7ae0502f56dbea0b64e0fa89cfc2c5c779758bb9ce72f4b5ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
