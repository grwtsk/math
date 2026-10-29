# Verification target: Finpartition Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee3c052893d72f68cd449b7b22d45a9405067a1f",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee3c052893d72f68cd449b7b22d45a9405067a1f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean.json)

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
| 1 | `structure` | [Finpartition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/finpartition.md) | 93 | `declaration-track:352b45788cdbb8f1d51a045587fba5c2851f0ecdfdde883193bf340194c18fca` |
| 2 | `def` | [ofErase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/oferase.md) | 112 | `declaration-track:77ee51fcf2c1a21a716ae994385df7a7caac83cc748cc0a09629d845af589b4a` |
| 3 | `def` | [ofSubset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/ofsubset.md) | 121 | `declaration-track:aa8df9f4ae80200f82572ca062f9c04a2132d6875ed244abf9436aeb99cb2cd9` |
| 4 | `lemma` | [sum_ofSubset_eq_sum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/sum-ofsubset-eq-sum.md) | 128 | `result-track:7be689836fbdec7385005215b0e0b2297a60e49d47d167e5ee7c5e3219ca70f2` |
| 5 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/copy.md) | 136 | `declaration-track:e4bcd85d5fb7a3e19f871e7669ed054888b106ace03aec7dc6ed1bbfbffc2262` |
| 6 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/map.md) | 143 | `declaration-track:4b549ef7a4d64cecdb502635eb0865de602287b37d61328f3a63126c71b1622c` |
| 7 | `theorem` | [parts_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-map.md) | 162 | `result-track:5792e00bca0b4577ec2f831d9b838a52a6297eebb1548d1fb773a8fa92251651` |
| 8 | `def` | [empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/empty.md) | 169 | `declaration-track:99942eb2ed2b51d62cd36473dd79f7239c741f222bd77a6901dfbc3941b03e6c` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 175 | `declaration-track:3b6767d08d5021ef016ea2e229a8bf4e8275a42efce3cb07ea6816e1fe9256eb` |
| 10 | `theorem` | [default_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/default-eq-empty.md) | 179 | `result-track:f59eb31c78bd084f3036a1c20d1b8e95f17dc0e06a9090285a2a24794c9302ed` |
| 11 | `def` | [indiscrete](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/indiscrete.md) | 186 | `declaration-track:07c5efde3ab42f8fa64f532fd54c0959f52386d2b192633af9fdfc5c49693bf0` |
| 12 | `theorem` | [le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/le.md) | 194 | `result-track:ac67eaeacfeee5ba4843088442e723391043030529fc6ef236d30abf4fe9ed2a` |
| 13 | `theorem` | [ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/ne-bot.md) | 197 | `result-track:50e8c9d90486ea051a56d36cd0b26a9c7ee520c2cac3148aaa76911c24fc6cc5` |
| 14 | `theorem` | [disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/disjoint.md) | 203 | `result-track:bcc4d056b865532e04f1b56478c47e53fd63691d91b7e699104c16edb3eaf5b5` |
| 15 | `theorem` | [sup_parts_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/sup-parts-apply.md) | 211 | `result-track:72cb1e3bb17375004e613c16ec8429f1e067f1c23a7ab8ab7524e9e36de3d069` |
| 16 | `theorem` | [pairwiseDisjoint_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/pairwisedisjoint-apply.md) | 216 | `result-track:0e783427c906c0192982c097303992fde2ff185e1eb5f63deb55af57c7618d71` |
| 17 | `theorem` | [parts_eq_empty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-eq-empty-iff.md) | 227 | `result-track:6854a2379934983cc6e29d632df9d7f39fb4d9333846ff4494de49223422b228` |
| 18 | `theorem` | [parts_nonempty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-nonempty-iff.md) | 235 | `result-track:e9da8ecf4ddd1a5694374059578710e277d29306ff86efe73423e09d5e697eed` |
| 19 | `theorem` | [parts_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-nonempty.md) | 238 | `result-track:05971005c19de8a068d4e2e105f415fc7b71635f6deb282093e9ee13d920a877` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 241 | `declaration-track:4609de90c81d0a58107fc62d094ea492a92b23e891eb93a586d8b483ec5d2f70` |
| 21 | `instance` | [instNonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instnonempty.md) | 247 | `declaration-track:254f223f413d7e89cfba38b51f24aa83ef64549b4c938b1bc62c95fdb1c61b6f` |
| 22 | `abbrev` | [Finpartition Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-fi.md) | 254 | `declaration-track:c923241bd679d40ecb8b77837a828bebf4f3d54c74c48c276e2c59d6732ce093` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 266 | `declaration-track:3967b01c99c77ddcdf34f4a2543b854e3727fa50397ccc9af9e0e35822114151` |
| 24 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 277 | `declaration-track:d7b29348b3dfc762cc14a742173c954f5000bfeaeadcae71b84055472c3bc32f` |
| 25 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 280 | `declaration-track:d7fd3e0891b5af6a88c9d137fb870e09e0a165810f3ab46a79be5ece61b5b099` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 299 | `declaration-track:86fdf2c35bdb0652e737b0fdcfafcc100ef620f455f0f55c1023316eb110dbdc` |
| 27 | `theorem` | [parts_top_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-top-subset.md) | 307 | `result-track:5c4aecb0a6fca9cb9468f21a844a1dd9f980f64ad125cbdb409079cff8c9321b` |
| 28 | `theorem` | [parts_top_subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-top-subsingleton.md) | 314 | `result-track:b6f7e3fd59e09b96b6f04801dff7d9288d61397b2deb513bd3c1403b9d0663c5` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 319 | `declaration-track:52ba5748db76cef13d50f16465afe7b6b694f5f4204b8656cf1599cd5a392d32` |
| 30 | `theorem` | [exists_le_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/exists-le-of-le.md) | 327 | `result-track:26ad30d145fb99f092d228483288e1dddc1c2b26eb24c82fcaa92581ff4d18ca` |
| 31 | `theorem` | [card_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/card-mono.md) | 337 | `result-track:3b339f5ebf68eff21db8f387163cc9672d0ab04a3b1b0eafb495ada553abc387` |
| 32 | `def` | [toSubtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/tosubtype.md) | 358 | `declaration-track:3407b75ceb34d5d327d492b4990b50384b99d4b01bbb1a8d030a6a1f4793daa8` |
| 33 | `lemma` | [mem_toSubtype_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-tosubtype-iff.md) | 379 | `result-track:f3006f3adae3d983922fa406711a440c165a7d39f7dcc84b4ec52ffe71b7617f` |
| 34 | `lemma` | [sum_eq_sum_finpartition_subtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/sum-eq-sum-finpartition-subtype.md) | 384 | `result-track:92510893dc3f62a053b73a3630cf34a47685cf53d45f2b0e40e0cf0919402ffa` |
| 35 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 398 | `declaration-track:a5ec9d895c4ee7bf5a3c945886a9e63c5092dda85cf0a97f8286d3c3fc2d8ea7` |
| 36 | `theorem` | [parts_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-inf.md) | 419 | `result-track:4bf4fd978fe656a65df5242585bed23b53616b93ab46b9e90f2ac12bba03ef77` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance.md) | 423 | `declaration-track:043590f1d3c70edda3cbda844e058b4e3a9b3b56d7f255d6cdd018495d2b5536` |
| 38 | `def` | [restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/restrict.md) | 444 | `declaration-track:28c79837ad4472f0434d25f2aea9918a363d4dffc1b87b06da44b6974d70a567` |
| 39 | `theorem` | [parts_restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-restrict.md) | 459 | `result-track:8c04c41964acea124b623998750af3a689385dd47cccb9bcd5f9cfa4eb93ba23` |
| 40 | `theorem` | [restrict_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/restrict-mono.md) | 464 | `result-track:7e2b5190878dd87995741b7d06f3a9ad4a24315bccb8bbd4ff16bec42b07ced6` |
| 41 | `theorem` | [restrict_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/restrict-top.md) | 473 | `result-track:18c8761562e9d9687c13e13d6a950d2e80448ba9ff7c8a4d8a1957510a1ad41f` |
| 42 | `theorem` | [restrict_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/restrict-inf.md) | 482 | `result-track:1268a4d6879fc9233e44e1087e46afcbdf716fc2dbc692af4d6b0b78d378fcb8` |
| 43 | `lemma` | [sum_restrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/sum-restrict.md) | 493 | `result-track:9e4adcacf4d7e9786ce280f19c8e9f79f3e0f27b19c35e00490e5dbe396dedff` |
| 44 | `def` | [ofPairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/ofpairwisedisjoint.md) | 513 | `declaration-track:db054ca24c8642cb5916fd048023c159826d620f4248068387a581b85c213733` |
| 45 | `lemma` | [sum_ofPairwiseDisjoint_eq_sum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/sum-ofpairwisedisjoint-eq-sum.md) | 521 | `result-track:f8333c69d0807074de077a0604a8f3729a7e419e84873ca9bb97433e79ab3d56` |
| 46 | `def` | [combine](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/combine.md) | 540 | `declaration-track:d539eff60e4e57e7a61dd2b2d45cc2e8ce895bde5665eb967e444d69c7330df5` |
| 47 | `lemma` | [sum_combine](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/sum-combine.md) | 553 | `result-track:e2b0766267bf5609ebca167c1967d138ae164d059f8f27a4cbfe85d31b1b3645` |
| 48 | `def` | [bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/bind.md) | 570 | `declaration-track:8c7ffa19bdef6734c8d7e04fbccc2997fc77d87e79e8fd1e08e1f71a08dc8325` |
| 49 | `theorem` | [mem_bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-bind.md) | 574 | `result-track:b5f4334dca52b574935e5d1fd193024a839c74eb53a893305b010463aca61177` |
| 50 | `theorem` | [card_bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/card-bind.md) | 582 | `result-track:016325cff86e9c0b5ec1b1e01d3e2c4e286aedb0b6c17ed2970656023a2c8d1f` |
| 51 | `def` | [extend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/extend.md) | 598 | `declaration-track:e16283da94dac6aa29d6f5db28a414b2651a8e6d583510aec1c3721745c3ce87` |
| 52 | `theorem` | [card_extend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/card-extend.md) | 607 | `result-track:afdf31139937c7b50e66deba9d67ecf133b6cecd4ea3778557c02b57495c4ebb` |
| 53 | `def` | [avoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/avoid.md) | 619 | `declaration-track:9e905c863916673b0628b887f71b13572d1eacd932dfcc2cdebb59db5811fbec` |
| 54 | `theorem` | [mem_avoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-avoid.md) | 626 | `result-track:955fc8e9aa18b82161a3969e0d15711cdd2696c9e9a2ccb18701fc87c5eafc90` |
| 55 | `def` | [extendOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/extendofle.md) | 634 | `declaration-track:b86fcbf7b83441be84d31a8ef7b793ba08a93a1f2b44bfff011d0ff3a3cbaf22` |
| 56 | `lemma` | [parts_extendOfLE_of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-extendofle-of-eq.md) | 638 | `result-track:b979569bc1eb7bf2c485c046c2a665ba3c32d2067b1b01ed14bf36b7d77e2c8e` |
| 57 | `lemma` | [parts_extendOfLE_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-extendofle-of-lt.md) | 641 | `result-track:486b835be9e3895dfc90a8bad75aa765d38d9e5875315ab7699bfac878a0ff6c` |
| 58 | `lemma` | [parts_subset_extendOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-subset-extendofle.md) | 645 | `result-track:bbf9327eec4cc5cfcd907a733fcad4c51b0b1d72f97cd78452ef79181955e0a2` |
| 59 | `lemma` | [mem_parts_or_eq_sdiff_of_mem_extendOfLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-parts-or-eq-sdiff-of-mem-extendofle.md) | 651 | `result-track:77fce5ee51fddeb9230d6c1cf913eef713d8d2ec18ea896cf3cbda23faf95092` |
| 60 | `lemma` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/subset.md) | 669 | `result-track:d5f3b5e40734832bc525dac18c955c97a29a5eadb9b6b3174ab77d6b114969ed` |
| 61 | `theorem` | [nonempty_of_mem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/nonempty-of-mem-parts.md) | 671 | `result-track:e62637eadb03b6847c66ebaa12a26d112698c1ad441314e000de6cf89ed647d5` |
| 62 | `theorem` | [empty_notMem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/empty-notmem-parts.md) | 675 | `result-track:2954ed706d10672f7238df9d0db65f6b29e6be4a1b3218434bee16b070e7901b` |
| 63 | `theorem` | [ne_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/ne-empty.md) | 677 | `result-track:5ee2339a3e45835fe38144ca81a2f5807f881256fe71c6709b7c48cf7d2aca03` |
| 64 | `lemma` | [eq_of_mem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/eq-of-mem-parts.md) | 679 | `result-track:45156c2d0832a78dea0fe21380cad71245941bfef27ec39339f0859498073b9a` |
| 65 | `theorem` | [exists_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/exists-mem.md) | 682 | `result-track:35d8f2e5a7f725547ea05886d43628bbc7738b566df9522a1497e3d9fd4340df` |
| 66 | `theorem` | [biUnion_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/biunion-parts.md) | 686 | `result-track:a1081c9f556557ae76b24cc5a6f9a959fbf8d0f452740032534c77883a7353cf` |
| 67 | `theorem` | [existsUnique_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/existsunique-mem.md) | 689 | `result-track:fdf76e3f2d8f91753938dc37f1139bb6fb0d50e938f09bc310791f12f177088b` |
| 68 | `def` | [ofExistsUnique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/ofexistsunique.md) | 701 | `declaration-track:6cd8266153756e54dd1cffb83656d5aaeb5cf183edd947d85a668afe102d6ac7` |
| 69 | `def` | [part](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/part.md) | 722 | `declaration-track:8819e3a842e73df7e3ebb0957fd246a268978570f649d9d0a1b160c93cea335e` |
| 70 | `lemma` | [part_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/part-mem.md) | 725 | `result-track:5e9b2f1ec8556f819c66e7f8825e5a76481d3b0b29272a4e5959eada57b5823d` |
| 71 | `lemma` | [part_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/part-eq-empty.md) | 729 | `result-track:90e00f40da75744313da8acf822e88cefd16fd0dbdbed75f17d4283528aba40c` |
| 72 | `lemma` | [part_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/part-nonempty.md) | 733 | `result-track:599e540e7e46f2f795b8b50c1c5d8cdb250ddc57607cb3dde1a3f832f7c64f5b` |
| 73 | `lemma` | [part_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/part-subset.md) | 737 | `result-track:2716a21ce159818c2a0b5afb546a685a78f1aed632bd3febf54e46791f1f53ce` |
| 74 | `lemma` | [mem_part_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-part-self.md) | 743 | `result-track:508bfdb7417af550f1c84d9860a46f6f2d2d3c73044bba91dc41a71d1067ebbd` |
| 75 | `lemma` | [part_eq_iff_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/part-eq-iff-mem.md) | 750 | `result-track:77df9e220ae473cd5114b231c696f533eec19c5e3cafc1d4c07be9e8bda8a4d0` |
| 76 | `lemma` | [part_eq_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/part-eq-of-mem.md) | 757 | `result-track:2ff7f36dd003a8b5cea98993812598bef6503fcb88ab09b6fdd560f55e8a0b45` |
| 77 | `lemma` | [mem_part_iff_part_eq_part](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-part-iff-part-eq-part.md) | 760 | `result-track:e944697a947596b483352340cb7c28046a43b762aa01f091003284ccaf2fa4c9` |
| 78 | `theorem` | [part_surjOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/part-surjon.md) | 764 | `result-track:7f176268cad34abdde00472006e133669a22815d21355481c839067cc5076677` |
| 79 | `theorem` | [exists_subset_part_bijOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/exists-subset-part-bijon.md) | 769 | `result-track:4b819f1654f9c54ef59aa44a95c40f604e6aeab723b9abd46f15939aecf0a93f` |
| 80 | `theorem` | [mem_part_iff_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-part-iff-exists.md) | 774 | `result-track:0e674445779cbb7040a5c2187f4a7f6266612c717270410b6edf2845ab37b2c8` |
| 81 | `def` | [equivSigmaParts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/equivsigmaparts.md) | 784 | `declaration-track:df6615888f65687cfdf87454a906ae8f064a0c87bb89617e6eef964a4da822a6` |
| 82 | `lemma` | [exists_enumeration](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/exists-enumeration.md) | 795 | `result-track:e0f35a9fbcd7568bc25e7491196e2b4881363c5d5a626321cb06454748590dc3` |
| 83 | `theorem` | [sum_card_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/sum-card-parts.md) | 800 | `result-track:557403b3804ef9b768f5df0c28cb608a40c78c7ca46d288b9139790632cea011` |
| 84 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 806 | `declaration-track:1ed2bbd68eff90d3fcee3d42fd09996de814468e61f6c90b30fba7741cc1446a` |
| 85 | `theorem` | [parts_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/parts-bot.md) | 815 | `result-track:04564d878cdb6980ed4fe35b9785d260d59b5d2c88d6da29cc790618aae94d44` |
| 86 | `theorem` | [card_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/card-bot.md) | 819 | `result-track:028a29f2f1d58f9f748722b0fdbdad96520128d293f1b5a8b7d40dad827b3322` |
| 87 | `theorem` | [mem_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-bot-iff.md) | 821 | `result-track:d2111e23779c6e90624aca203c032b24dc60e2bb0054ef2e1d1db58a4d671d5b` |
| 88 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 824 | `declaration-track:1060d6a023fca02ed86587ce9321e3ad54953fe726f485cc75c05c5f742e4ce2` |
| 89 | `theorem` | [card_parts_le_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/card-parts-le-card.md) | 832 | `result-track:1105fb4bcf0405956b4ab292a54fc955cf26340c35c077b2a3f4bcbef06c7151` |
| 90 | `lemma` | [card_mod_card_parts_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/card-mod-card-parts-le.md) | 836 | `result-track:5c1326949d4a78ec9b80bacefd1c41a16f0da3c020006a3da407f60a00844f82` |
| 91 | `def` | [ofSetSetoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/ofsetsetoid.md) | 848 | `declaration-track:9edc1f0528afca625d43f8ed04a25946e81579b15904e49f648add04fc3ddff7` |
| 92 | `theorem` | [mem_part_ofSetSetoid_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-part-ofsetsetoid-iff-rel.md) | 868 | `result-track:83749420770df519da20b0ea64d73815ab7f0797982045317831bfbf5df8c77c` |
| 93 | `def` | [ofSetoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/ofsetoid.md) | 886 | `declaration-track:ae499263122cbcd3ffb072761f7d959b4637d24e44f8fd46c392da34686375ec` |
| 94 | `theorem` | [mem_part_ofSetoid_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-part-ofsetoid-iff-rel.md) | 889 | `result-track:a80cb4a2ba56026c712b50d91236df1eb8b85046dfd085af3ed895a9d21a8fc4` |
| 95 | `def` | [atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/atomise.md) | 900 | `declaration-track:14bbc8d20a56efac7b5a5a10b0bacfbfd54f5ab8439354abef65fad53ad73266` |
| 96 | `theorem` | [mem_atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/mem-atomise.md) | 932 | `result-track:6e282347986cc0ff986455d277c3c2fd53fba4b733d77f4068e39e5c3aea6691` |
| 97 | `theorem` | [atomise_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/atomise-empty.md) | 938 | `result-track:425857ef8e5240166cddffd3c3334dd65b2556785991ff6f0043e23b95c200c2` |
| 98 | `theorem` | [card_atomise_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/card-atomise-le.md) | 943 | `result-track:34fbaf24867dcfc1a584361a7430d41f9d087b66f41426f22e0680ed38958b44` |
| 99 | `theorem` | [biUnion_filter_atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/biunion-filter-atomise.md) | 946 | `result-track:122012784936cb3173a4c89962296e6e1347555ef799ea0d1da79525ef576500` |
| 100 | `theorem` | [card_filter_atomise_le_two_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedPublic.lean/declarations/card-filter-atomise-le-two-pow.md) | 956 | `result-track:732c59361beb58a670d7749425d34c7a196dec9ecb9a5004ff0e541ffb5499ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ede751de52070c69566b3be5888aa2fc13a8e56a05e3527033e79fa2fe1ac89b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant8d57609d7899b4c25d8b4aae7cd893cfa7d689b10bb18ca48ac0e6be4ea2dd9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
