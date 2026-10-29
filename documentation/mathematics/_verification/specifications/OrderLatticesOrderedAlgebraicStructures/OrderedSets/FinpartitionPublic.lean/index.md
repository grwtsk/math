# Verification target: Finpartition Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88330105806f78712c4ad7f3ce5f1dc80f498599",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88330105806f78712c4ad7f3ce5f1dc80f498599`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean.json)

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
| 1 | `structure` | [Finpartition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/finpartition.md) | 85 | `declaration-track:09967b7e176b5818c23ecf99276e90c324cac3905967335bf8894d1f66e96162` |
| 2 | `def` | [ofErase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/oferase.md) | 104 | `declaration-track:dc876a785ca6b2883bec6871435dc839e80e9f8668aac360b5ae857203735d0d` |
| 3 | `def` | [ofSubset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/ofsubset.md) | 113 | `declaration-track:a3adc1f0a157388adbc59c44616680d1145dc151e20df4a7d914bebe3241488d` |
| 4 | `lemma` | [sum_ofSubset_eq_sum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/sum-ofsubset-eq-sum.md) | 120 | `result-track:3309b625261d3711a9faa5bb3136319a2fa77196391ff9b28cd7b33419758d29` |
| 5 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/copy.md) | 128 | `declaration-track:342d4315eaa7e4af8b697d94ccb646bff9dc64afacd9906bc6d5d8beeb03214d` |
| 6 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/map.md) | 135 | `declaration-track:c64c3e75ecfa29421136e40c406c8fe22b046581dd7e7ed48faf8a0ac751061a` |
| 7 | `theorem` | [parts_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-map.md) | 154 | `result-track:2f39125181b1569e066d675cc02b75349e3b5c1ec453c5546c87767a1bd494f9` |
| 8 | `def` | [empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/empty.md) | 161 | `declaration-track:06e0cf452661ada6a971e86401521c425919860d6567831b8c5a52c600778c84` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance.md) | 167 | `declaration-track:1fa1819f359eee646b76e33dd01ba9e12f7362a22eefe8bdffaa113173231591` |
| 10 | `theorem` | [default_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/default-eq-empty.md) | 171 | `result-track:c1a61fd9821cb530e12cc1987c76c90f31792bce4783b30916eab34243c59834` |
| 11 | `def` | [indiscrete](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/indiscrete.md) | 178 | `declaration-track:24a4019c98c887839841f092a686a68f53d4b7057c4702bd7c86c9cb7e255560` |
| 12 | `theorem` | [le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/le.md) | 186 | `result-track:b54ed5eb49aa9a54f3eb74dfa7a139737e699eea33b8cfba3503112e16775804` |
| 13 | `theorem` | [ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/ne-bot.md) | 189 | `result-track:9c5df0c0c1d0737d4889d3c352cd0244925eded58b47e91fa502bb4c758d2676` |
| 14 | `theorem` | [disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/disjoint.md) | 195 | `result-track:0c7d0ec9bb5faf80f481854684a53d6544ef2c5bfe3663fc925d431454c51030` |
| 15 | `theorem` | [sup_parts_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/sup-parts-apply.md) | 203 | `result-track:f651da2b40d6f755428feb9c0f13cfe1bca5a3f1c964786f02c891f2c263f1e1` |
| 16 | `theorem` | [pairwiseDisjoint_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/pairwisedisjoint-apply.md) | 208 | `result-track:691e3a1b3e41383aef1510d7a8b7e648041b5ed558b5bb4c9856fca45201bc1e` |
| 17 | `theorem` | [parts_eq_empty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-eq-empty-iff.md) | 219 | `result-track:0f840f19bad1956cd5c475f032e1b39c234726a8b81087253e2d33e6514511a3` |
| 18 | `theorem` | [parts_nonempty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-nonempty-iff.md) | 227 | `result-track:ce9dfb8022f014d46adb2da8d58305fba522a200d8b189f774672a22e64f68d5` |
| 19 | `theorem` | [parts_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-nonempty.md) | 230 | `result-track:801a5eece4a911cf353995f0c47c141651fd70b9cec775eef8b6651300e604d1` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-6.md) | 233 | `declaration-track:74a43b18a7893f15de7ff28af7132c999cbc7968d37988c8c00131df15facde3` |
| 21 | `instance` | [instNonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instnonempty.md) | 239 | `declaration-track:cf5afbf255c3458217cd762e663b796f41639976e3ab359800e4cbd34d5f9164` |
| 22 | `abbrev` | [_root_.IsAtom.uniqueFinpartition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/root-isatom-uniquefinpartition.md) | 246 | `declaration-track:6f7ae9a172456f8ac311eeb80a67f0146dcc03a00a960dda0e654b9b51e2c68c` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-4.md) | 258 | `declaration-track:58d16f1f1379b848eeef39c3492d3bdec904c57f6304307e22032bdfa8e73001` |
| 24 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-10.md) | 269 | `declaration-track:d0ce8e98429d1111abeb84f581ed773f7546c5eba3e48a083b28f6824b33a247` |
| 25 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-7.md) | 272 | `declaration-track:8dffd55b8514b7e8ddf517bd888520052171f4a13368031d48264016c8de4eb4` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-5.md) | 291 | `declaration-track:709f58ee875c1c6e76a5a04c93d7c7fee05eb4c02375a9d0f673310cfb9f2b7d` |
| 27 | `theorem` | [parts_top_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-top-subset.md) | 299 | `result-track:4709b84834e22b29162798aa752e772686f11f8a42bd9d7849c3a38a7aa56bea` |
| 28 | `theorem` | [parts_top_subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-top-subsingleton.md) | 306 | `result-track:d090ba79cf8f894ecbfcedba8ff13735e92ba56b0958b63dcee6a17e92898937` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-2.md) | 311 | `declaration-track:37fe1a736dc3027c6ebe235ae84611773e6ac29231626454002cca6ecc06ce4c` |
| 30 | `theorem` | [exists_le_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/exists-le-of-le.md) | 319 | `result-track:eefbceabfd040f8e955716fb53dca5c8896d799c91c933272bd004672c6e7569` |
| 31 | `theorem` | [card_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/card-mono.md) | 329 | `result-track:3cbc30bba784531dafeffdb8707df6ab2647c3d82eb2a60d8fa66e69bcbaa74f` |
| 32 | `def` | [toSubtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/tosubtype.md) | 350 | `declaration-track:5853df65e06e8aa61eea94f0360b75c51c947dd355047dc824265fb6d906dfc1` |
| 33 | `lemma` | [mem_toSubtype_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-tosubtype-iff.md) | 371 | `result-track:5f8bd4444aadc176f6c2bf70d00d1283fa8dc8091c67965b9706dcc56a49440c` |
| 34 | `lemma` | [sum_eq_sum_finpartition_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/sum-eq-sum-finpartition-subtype.md) | 376 | `result-track:a7b877b52a1de2fc4d9fcba46786ee6f3c97dc57a71e7481f0f428df806a4249` |
| 35 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-11.md) | 390 | `declaration-track:d898edebcc623507416482d803062330e2e6428e82b7a6b352e36c1ed36545e1` |
| 36 | `theorem` | [parts_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-inf.md) | 411 | `result-track:d276558e0303081f50953bf8ca35d7279298067b97a10282ba2f5528cbf95832` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-8.md) | 415 | `declaration-track:8fb67be6814e27dff4a8f3b089e616ad1a52b1cfa43410e8061e3542ce866dbd` |
| 38 | `def` | [restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/restrict.md) | 436 | `declaration-track:f680672b24a8ceb850c836b52fd83db38dc8d25ccc81154bd310f19a278ecc7c` |
| 39 | `theorem` | [parts_restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-restrict.md) | 451 | `result-track:15145a01de66349e522735ddccbc799c8f2dcd2c86a407f02383024d86b25b70` |
| 40 | `theorem` | [restrict_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/restrict-mono.md) | 456 | `result-track:717c374cf77382c2ebc4861c88a753a4c07268169f89b6dc275ee51effa2d409` |
| 41 | `theorem` | [restrict_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/restrict-top.md) | 465 | `result-track:228bbd4163b7a837878de4c437713f3c6dd9cff21b21510b77a4e69d5a2f617d` |
| 42 | `theorem` | [restrict_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/restrict-inf.md) | 474 | `result-track:a582b8bd7cfd254d530af0f7903f5f29f41cf38075325f95f960de872d8c6f74` |
| 43 | `lemma` | [sum_restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/sum-restrict.md) | 485 | `result-track:ba857a77a0817eeb4624306176ca96456a4b8259cc19c39c81025adfd5446b2b` |
| 44 | `def` | [ofPairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/ofpairwisedisjoint.md) | 505 | `declaration-track:42b902ddff8958d249769e95453bf0f784080d5c0e1ce3e47ded218848164107` |
| 45 | `lemma` | [sum_ofPairwiseDisjoint_eq_sum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/sum-ofpairwisedisjoint-eq-sum.md) | 513 | `result-track:4558e44eea727093fe1aaa7cf5bb2933a91869604e63166f33780ee247f31580` |
| 46 | `def` | [combine](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/combine.md) | 532 | `declaration-track:f9591f9d3db4e7e70b3e934cd4ceae0991aca40e2d6d6c2d5a391a879f1cc204` |
| 47 | `lemma` | [sum_combine](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/sum-combine.md) | 545 | `result-track:3a67ba18808ff8d7930bc0272f4666b9e6f0e432f52cfd30c3b33da984e9b297` |
| 48 | `def` | [bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/bind.md) | 562 | `declaration-track:bf0c8c50d3e41dcd05ca188c5569a57876a6f85ca5d076a65c4ce7d95cd842a4` |
| 49 | `theorem` | [mem_bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-bind.md) | 566 | `result-track:d2841e3fd50e00d90533a1469a1321e82240a93b9982078c280bdc893b2f0781` |
| 50 | `theorem` | [card_bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/card-bind.md) | 574 | `result-track:5fe6aa6fb3ff8a7d283c523eb57eac9e67144a86d904f919243492225873dece` |
| 51 | `def` | [extend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/extend.md) | 590 | `declaration-track:830a89da899f65a74a0ed3c95756354023f11b8ad3374304402f7075b3c5fdb5` |
| 52 | `theorem` | [card_extend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/card-extend.md) | 599 | `result-track:4279a1be8ed7b50c40b77ec2cb685c6cb28da5c0e2867c163359480f1b1f2467` |
| 53 | `def` | [avoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/avoid.md) | 611 | `declaration-track:a6aa2248ab369f95dc376b4d707f5cd6630f8ef499f061e46862e7775978b7d2` |
| 54 | `theorem` | [mem_avoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-avoid.md) | 618 | `result-track:a2f45d5656cad045709e468684284a8fe32b45a38d8aa60b05d451b45f3ea129` |
| 55 | `def` | [extendOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/extendofle.md) | 626 | `declaration-track:a7faa5effb2bb4d1e502bcb8909ee27b4acdf50a90c192b5f870062bca7fd971` |
| 56 | `lemma` | [parts_extendOfLE_of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-extendofle-of-eq.md) | 630 | `result-track:dffe8baf8d922d3787587886215756f7d12ee8d5cf3823a54f6b4609c877fcc0` |
| 57 | `lemma` | [parts_extendOfLE_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-extendofle-of-lt.md) | 633 | `result-track:9da03a218080e257e430bd31c14f2e2b3642f10c38524e177625d6a333632164` |
| 58 | `lemma` | [parts_subset_extendOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-subset-extendofle.md) | 637 | `result-track:49d21534bdae0c09af0f5a98716d8bc0da76903b186ad99fb3181db4a530c1b9` |
| 59 | `lemma` | [mem_parts_or_eq_sdiff_of_mem_extendOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-parts-or-eq-sdiff-of-mem-extendofle.md) | 643 | `result-track:f3ba36762a91e969ce1b698fb279ecc5a4f27b744e25149716aa67ab129331d8` |
| 60 | `lemma` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/subset.md) | 661 | `result-track:9ada9f219eb3ea5353845acceb93874010cf2348ee6aab6d11b77489dc44f66a` |
| 61 | `theorem` | [nonempty_of_mem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/nonempty-of-mem-parts.md) | 663 | `result-track:bd91ce5f6d836d53c0bb154f4e9956b07166a2805e2345a454b60207aca801f3` |
| 62 | `theorem` | [empty_notMem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/empty-notmem-parts.md) | 667 | `result-track:d88f737461b8c01933f596a525b5e5d5b7e664e54e991fd1276037e9f0c610f0` |
| 63 | `theorem` | [ne_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/ne-empty.md) | 669 | `result-track:4955a1b71473c8f825e0816c7a26c568902e5b00ca8e1f442a996e6c460dd8c8` |
| 64 | `lemma` | [eq_of_mem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/eq-of-mem-parts.md) | 671 | `result-track:8ab9d544518cb30e0bcbfecfc974fb377649e458083b709f62a0377e3d984764` |
| 65 | `theorem` | [exists_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/exists-mem.md) | 674 | `result-track:ae5125b30405f1784cf1e991a211112bd991dcd56350cbe945b02fa1ac21c449` |
| 66 | `theorem` | [biUnion_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/biunion-parts.md) | 678 | `result-track:f4ddb3861348f434c6de2818248b2c6a0080fc35ea8f97bc89c1a6568e43c113` |
| 67 | `theorem` | [existsUnique_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/existsunique-mem.md) | 681 | `result-track:b261065bb8f876bde82173ffacc605b7d334dd67e2c82a5699e0fd1870ca0ef7` |
| 68 | `def` | [ofExistsUnique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/ofexistsunique.md) | 693 | `declaration-track:99bb1685a0761d9f4eb34817271cc4f01a2db63e571bb1b5aba17f27aaa47c59` |
| 69 | `def` | [part](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/part.md) | 714 | `declaration-track:3eb7177e83a43bfc052e5bdcf77f18ccbf92f35b542ca1ed97f77a998da221a3` |
| 70 | `lemma` | [part_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/part-mem.md) | 717 | `result-track:6e314440c924b8ccac9d3a61642823729f0f869d606783db3078acc7e819ef90` |
| 71 | `lemma` | [part_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/part-eq-empty.md) | 721 | `result-track:a6bd9b9f4dac5514b5c13805b370d11d88b05ba83502555ee76a61c6b4c88676` |
| 72 | `lemma` | [part_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/part-nonempty.md) | 725 | `result-track:cd681afe636c1a7495ad739671ffdf11924defe6f557673f62495b3603da77a9` |
| 73 | `lemma` | [part_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/part-subset.md) | 729 | `result-track:47ed5da2c4f4e7a04ab08e7f7bb022f6927ba5da5b6d464096f3fbfb825718be` |
| 74 | `lemma` | [mem_part_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-part-self.md) | 735 | `result-track:540be2bb21d21207f82ba5ccfa140c2cb35eb1849234ce60fc2e5710b855f518` |
| 75 | `lemma` | [part_eq_iff_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/part-eq-iff-mem.md) | 742 | `result-track:0b47edd580c73d5f15aff1c0871e92122451244c82740eb6fc0914a4f2f36ba0` |
| 76 | `lemma` | [part_eq_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/part-eq-of-mem.md) | 749 | `result-track:d19d9a9c1a1e4711a446fbb4f723e5b52b90c0f23f15d6eb6e303263fe9c59f4` |
| 77 | `lemma` | [mem_part_iff_part_eq_part](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-part-iff-part-eq-part.md) | 752 | `result-track:c481f0b61270eca5230c317958b617b758757a5f9675d0c60948c3ce2245ef4b` |
| 78 | `theorem` | [part_surjOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/part-surjon.md) | 756 | `result-track:1e878852b71078d73615d97e026886c443f55732852ce6e1614592bf758a67a8` |
| 79 | `theorem` | [exists_subset_part_bijOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/exists-subset-part-bijon.md) | 761 | `result-track:ad287a33a8fb44e9fd751f087dc6af646ccd86249a44d32827097c927e7b289d` |
| 80 | `theorem` | [mem_part_iff_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-part-iff-exists.md) | 766 | `result-track:cb63cc76a89b14117c9ce7395b4276ecb4d085b8a3b996195164369188e55527` |
| 81 | `def` | [equivSigmaParts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/equivsigmaparts.md) | 776 | `declaration-track:b409ccb401d099263ad45220063bdba266176ac86263389ac3566299eddc64cd` |
| 82 | `lemma` | [exists_enumeration](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/exists-enumeration.md) | 787 | `result-track:588ec13a90e94006e91a2584cde02075cee23a1ad369c87f643e64056e71ffe8` |
| 83 | `theorem` | [sum_card_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/sum-card-parts.md) | 792 | `result-track:2fa0df56948588fa5f590867d3df3c734ec5471345042b81bbd3c373cc86412a` |
| 84 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-9.md) | 798 | `declaration-track:9ce69f432cf8cabb46fd85d938d3eea195ca899a654651cc39efaf9453ed85ca` |
| 85 | `theorem` | [parts_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/parts-bot.md) | 807 | `result-track:23823a745ee56a784de9966257fecebc345500d0b25a7148882aad00e4edb6cd` |
| 86 | `theorem` | [card_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/card-bot.md) | 811 | `result-track:feb61f3844923e149a7f8f91c5fb42f77cd285a3e1bffcc2429b22a5aaa9d75a` |
| 87 | `theorem` | [mem_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-bot-iff.md) | 813 | `result-track:7c829564dcc30a6135cf27b6c480d11881122f07db81c43bddbc62474a6201d1` |
| 88 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/instance-source-edition-3.md) | 816 | `declaration-track:55bc379b9188681504dbc53092ca1d4dfcb6fdd04339c98ceb30d83f939b5c12` |
| 89 | `theorem` | [card_parts_le_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/card-parts-le-card.md) | 824 | `result-track:5154605cb3983dbb258e272c442f1b593235508b5e1a6db2166d5a2c27100726` |
| 90 | `lemma` | [card_mod_card_parts_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/card-mod-card-parts-le.md) | 828 | `result-track:d6cc221d942269386056b8dd748f427e8a223998caf4aab02568e138ff50a63d` |
| 91 | `def` | [ofSetSetoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/ofsetsetoid.md) | 840 | `declaration-track:25204cffc2f6b9389b046e34009ea310327831ae5839a4bbee691048e1a8d381` |
| 92 | `theorem` | [mem_part_ofSetSetoid_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-part-ofsetsetoid-iff-rel.md) | 860 | `result-track:deb47a6c100afc881ee9518aa39af48eabb5170d300f4a381b67215990058da2` |
| 93 | `def` | [ofSetoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/ofsetoid.md) | 878 | `declaration-track:edb4060d7c71a7c06be7cf84a1597d6b9e312eca0144314ce6085a49f92b8d34` |
| 94 | `theorem` | [mem_part_ofSetoid_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-part-ofsetoid-iff-rel.md) | 881 | `result-track:7ed92bd84fae45394c3bfc9862ece2a0eea0cb8076b65b3b0d15deeae5aea81b` |
| 95 | `def` | [atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/atomise.md) | 892 | `declaration-track:96f7567d7657e470655d4992b3ba287a37d00ca99d2ef2d8f31266137c7fdbb1` |
| 96 | `theorem` | [mem_atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/mem-atomise.md) | 924 | `result-track:eb39c292accd8a2322e3849065118913dd79d1c33625eaab61bedd2e5e612ba6` |
| 97 | `theorem` | [atomise_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/atomise-empty.md) | 930 | `result-track:a2c45046c9c4f37a54bb3eb3c33c9c16ffa20bc0f19849257dfffe32bc8d65a8` |
| 98 | `theorem` | [card_atomise_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/card-atomise-le.md) | 935 | `result-track:5a376d5399f9849fc85bd57e5e0fa814732cc3ea443a9267112a1d77b870edcd` |
| 99 | `theorem` | [biUnion_filter_atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/biunion-filter-atomise.md) | 938 | `result-track:1c1d2e7b7653fbb9250f8dbe1fc3950435ed560a65e00fa2eba4cae8a927229b` |
| 100 | `theorem` | [card_filter_atomise_le_two_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionPublic.lean/declarations/card-filter-atomise-le-two-pow.md) | 948 | `result-track:ebfc78d1e3ef28bc83df66346f9fa78b1659b55954b388bbec1276e8ce8e18a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10b36d13e13fda27224e40aa1762737efecae67a179385756e3ea725869533f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
