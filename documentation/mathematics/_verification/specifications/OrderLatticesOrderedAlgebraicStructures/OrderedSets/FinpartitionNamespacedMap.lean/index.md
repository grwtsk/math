# Verification target: Finpartition Namespaced Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0165432b3ebd3aa26ad149799e85ac0a400d4b7",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0165432b3ebd3aa26ad149799e85ac0a400d4b7`.

Source path: `GRWTSK/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Finpartition](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/finpartition.md) | 78 | `declaration-track:f650bd503b3af2517e9593ae80d17a86255efbe81785c03c08eef41a4b9bef3b` |
| 2 | `def` | [ofErase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/oferase.md) | 100 | `declaration-track:6254f8f5edab0576caaacaa761ffdb54e7ab9a8cb9ca357538105c200ee9e639` |
| 3 | `def` | [ofSubset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/ofsubset.md) | 109 | `declaration-track:f58bd0167add1241c1c7cd3a863c56ff2e8375f09bd0d4cbbcb2a1331c56b5b2` |
| 4 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/copy.md) | 118 | `declaration-track:77ffb628243c10bd9dfaedcca3e81b1c9f150831d5e38a9fda8a49a866f24056` |
| 5 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/map.md) | 125 | `declaration-track:f1cb4feecdd69d6a95a45279abb5272d002f58ec0c8f88d38b7302bb38b7ec0e` |
| 6 | `theorem` | [parts_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/parts-map.md) | 144 | `result-track:e81fcdd73586c8b63e578a23d518024123d5ac9a336c82e497d64d9f7ae1c8fe` |
| 7 | `def` | [empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/empty.md) | 151 | `declaration-track:ae034f5ebc83c884731925d9af4fe6a33c77bdec3efa61184bade745aaf0c1fd` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-10.md) | 157 | `declaration-track:bebb7ea7f99ae4a5f3176e284bc99136159d57e895fbd878ee262dc706379b6a` |
| 9 | `theorem` | [default_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/default-eq-empty.md) | 161 | `result-track:caae05723d9fd5cf5059c502b3b7183b5666e3a58edea2dad6b0147fd4d319a1` |
| 10 | `def` | [indiscrete](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/indiscrete.md) | 168 | `declaration-track:341bb1a24c65f02ff7e4d282b1d7fe382b09d664a63f08ccc46b840768c6850a` |
| 11 | `theorem` | [le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/le.md) | 176 | `result-track:717da38ce9b0240d89de9bf6fa694ce415d31ab220522d1068d26c30d18556ae` |
| 12 | `theorem` | [ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/ne-bot.md) | 179 | `result-track:295f9939b55cedec2562b119fdac02c12ab6d5256ed5737f4851a02f77676525` |
| 13 | `theorem` | [disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/disjoint.md) | 185 | `result-track:2962706783a4ead241574ff3ce44436ab8b33ebd24283c784670830b352d3a00` |
| 14 | `theorem` | [parts_eq_empty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/parts-eq-empty-iff.md) | 191 | `result-track:68b2da072044ad980d8f7518a5e313f61f1cad3eb97d40e76ca5244937671673` |
| 15 | `theorem` | [parts_nonempty_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/parts-nonempty-iff.md) | 199 | `result-track:9512c515fa237bc60b737b8d1690c839ad4d1fbe3100640f61586cceb23d7d62` |
| 16 | `theorem` | [parts_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/parts-nonempty.md) | 202 | `result-track:e8ca1a63e18eacc0e469e00f1265824731fdc4e447b2cf99baf66413684f8d8d` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-11.md) | 205 | `declaration-track:bf162a3d1460f8273a19d73efa75fbc4092ac2975e7301f6153c20495bc4557a` |
| 18 | `abbrev` | [Finpartition Namespaced Map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/uniquefinpartition.md) | 213 | `declaration-track:254ac6418ab7785cfd21269e9041c3473f42cfbdd7fc7b0efcd9940bcccda346` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-9.md) | 225 | `declaration-track:b813c63ef53af9292da6be312a56fcde648457998f0d82c4dd134228f2dff8a2` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-8.md) | 236 | `declaration-track:a461d206af4d193dee8e7a61f691d31d85ff795daedc979bdf0cb44252995333` |
| 21 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance.md) | 239 | `declaration-track:04a83b87e8061ae7660611423a5cfbeaffeb1b5633824585cc9432a10933f2e2` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-2.md) | 258 | `declaration-track:0714d2d4675fe7df815a16b3d1ed22216df256409859decd2c2003d0870672d8` |
| 23 | `theorem` | [parts_top_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/parts-top-subset.md) | 266 | `result-track:adfcae9f050109176e7e9c149fca3b32b62bc9905eda9a4e6f3922b37b061bd1` |
| 24 | `theorem` | [parts_top_subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/parts-top-subsingleton.md) | 273 | `result-track:7bc0230096e9650b638b83f0f59a14e25ffaace0f2d93e7f22d8d4c37c178226` |
| 25 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-3.md) | 278 | `declaration-track:1ca8c7f0843f0d72935e500fd817c02f510ac611e318977e50009545d444b6ec` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-7.md) | 298 | `declaration-track:87bec11e116dad79a4af03e17775557ada9589aa3cccb542625028f31341c793` |
| 27 | `theorem` | [parts_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/parts-inf.md) | 319 | `result-track:79012f06bdef9feb2780e56c9d4b589d02ab3567c0c5a6fd4e85580357869f8d` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-5.md) | 323 | `declaration-track:38ec5da0752a7a28e3c288ad02970159e35681107781b884d362cccab2a294ae` |
| 29 | `theorem` | [exists_le_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/exists-le-of-le.md) | 345 | `result-track:67a88e6947e32e5ec4663c1dec6650621b2ad63e9895d078f2a4af564a9b2e31` |
| 30 | `theorem` | [card_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/card-mono.md) | 357 | `result-track:e52fd00088e5e2f75890df49cfc5d118124ed93d24d1bad2fc6e043a558afe59` |
| 31 | `def` | [bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/bind.md) | 377 | `declaration-track:9c6470dc3ee36320ab647e2611e05b014146e610c3c8210ebb7d8cc11dd60222` |
| 32 | `theorem` | [mem_bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-bind.md) | 399 | `result-track:f17076e9dd87a9dc3d6de52b8166b63912349db7e5eec6b24d9f8c34ecd38e20` |
| 33 | `theorem` | [card_bind](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/card-bind.md) | 407 | `result-track:939c0f15391afe7057549aa638d083327559f30a7955fc622c3440f03f482e1e` |
| 34 | `def` | [extend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/extend.md) | 423 | `declaration-track:4561f700547bbc0708ff353e67309167a9127e42987750e95f71a1a5570178f6` |
| 35 | `theorem` | [card_extend](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/card-extend.md) | 432 | `result-track:3c8f68bc63b5be322ee48aa1c1b46915e3c03a764a79e46bea64ce4e9555a7e2` |
| 36 | `def` | [avoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/avoid.md) | 444 | `declaration-track:d57a836c1b53f3828b436056395015bfbf1877e785d88d17aa31a524c6e8cbe5` |
| 37 | `theorem` | [mem_avoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-avoid.md) | 451 | `result-track:1f008fb9c298700c2c54cdde085a45c2037b9621d730b4578fed2a842e3e7245` |
| 38 | `lemma` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/subset.md) | 469 | `result-track:adc5f901f18cb555a8282ca1bcb5849586629c9e3adfb591a12e54411261a904` |
| 39 | `theorem` | [nonempty_of_mem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/nonempty-of-mem-parts.md) | 471 | `result-track:91ecba6194b9cd34152d9d27d06b9e77c85d29a59838156ac8545593b9d6fda6` |
| 40 | `theorem` | [empty_notMem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/empty-notmem-parts.md) | 475 | `result-track:568d4e6650701ba7cb57509898e885e1471f897bcdc64c547bb399ae4e00f6a6` |
| 41 | `theorem` | [ne_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/ne-empty.md) | 480 | `result-track:c54349d08f094ca307d6d598e492ad9162cbc07f969fd4f8d80a2d951c257502` |
| 42 | `lemma` | [eq_of_mem_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/eq-of-mem-parts.md) | 482 | `result-track:561a45d5e67621b5a9ac6b0065d90f9da5674b3bf9ee1dfdd8b6ac487e7e355b` |
| 43 | `theorem` | [exists_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/exists-mem.md) | 485 | `result-track:040a6aa844073b32610434ffd9961f59062621546c7015eca491049a799ba716` |
| 44 | `theorem` | [biUnion_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/biunion-parts.md) | 489 | `result-track:ff0a4c769bcfa6ee792748d630e03482ec12d43fcfd60450ed6add6988ac03c1` |
| 45 | `theorem` | [existsUnique_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/existsunique-mem.md) | 492 | `result-track:278b049b33e06b1acc8639f7f81eee415065a872da92c132a9d52e7a322bcd75` |
| 46 | `def` | [ofExistsUnique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/ofexistsunique.md) | 504 | `declaration-track:b9342b2ef5409a7d7fdaff7b3ed19c0a30a01b2b7dd87c87f5b1f3f559e0b015` |
| 47 | `def` | [part](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/part.md) | 525 | `declaration-track:cb512e9d6d241d0f587a7d96fd9b1a6d92e3ac809895a8a30ae6c1c764b37807` |
| 48 | `lemma` | [part_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/part-mem.md) | 528 | `result-track:62b9d2bf844e6f3d8d9a64939814cb5eb8fc86bfc72d5aab140888f40e8d4d78` |
| 49 | `lemma` | [part_eq_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/part-eq-empty.md) | 532 | `result-track:84aa466f84b00e420152facc78b6a614751e972a7988f7656b7838e0597b804e` |
| 50 | `lemma` | [part_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/part-nonempty.md) | 536 | `result-track:10cef884b1ff0c2e061be5c7ada743ead8b32fcc2c664cb24d8ec5b4d2a975ac` |
| 51 | `lemma` | [part_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/part-subset.md) | 540 | `result-track:7faa330718e4a2cc4630c459d7e1254bf1da8f4464c5be0f38158032e0bc5037` |
| 52 | `lemma` | [mem_part_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-part-self.md) | 546 | `result-track:f4a64ce4277a3cc6f994a2c511754826f287ec0f7c0ec643641d8dc5ab0f213c` |
| 53 | `lemma` | [part_eq_iff_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/part-eq-iff-mem.md) | 553 | `result-track:6609d1ade3cfabf2ed78b6fd0ea608655ec5f0728be0005a3bc6854c93f62d29` |
| 54 | `lemma` | [part_eq_of_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/part-eq-of-mem.md) | 560 | `result-track:0511f49a417f6e2187dbd4f44c10ffa66b631f4ac32e21db4cce2fe572f660de` |
| 55 | `lemma` | [mem_part_iff_part_eq_part](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-part-iff-part-eq-part.md) | 563 | `result-track:6d6cf78f5905dd508598e5a1aa3747d452ad3a1e3c966ca33b605295a6c75880` |
| 56 | `theorem` | [part_surjOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/part-surjon.md) | 567 | `result-track:7840d9ab5030e0d74e8882fb25858b5d950f3abbfe02a2fc5aaa4e2f4e29fc01` |
| 57 | `theorem` | [exists_subset_part_bijOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/exists-subset-part-bijon.md) | 572 | `result-track:af0fbb8badd271141f27cdbf99ad88218af11e2c028f8a42c6e08acca60e4c66` |
| 58 | `theorem` | [mem_part_iff_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-part-iff-exists.md) | 577 | `result-track:f34b3b34876b83df769e8996a4b404300247de9fc9238201d91372e5f1606311` |
| 59 | `def` | [equivSigmaParts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/equivsigmaparts.md) | 587 | `declaration-track:20d3c940907b105611f05e5b2d57f3b2f9779ff58ec7dd73528e78bed14a8d27` |
| 60 | `lemma` | [exists_enumeration](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/exists-enumeration.md) | 598 | `result-track:6ceb9705a8f1b8c9213312671baf700024a453e5128228b746f877a3e0494139` |
| 61 | `theorem` | [sum_card_parts](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/sum-card-parts.md) | 603 | `result-track:d93dfcb269d3129bae1ec2230c05fdf48c8b1dc4748a6f0d5bd3c970376fc655` |
| 62 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-6.md) | 609 | `declaration-track:460f61d46b43ba16886c30126f96371b12fc83d42457cebcfa368a684bbb6abc` |
| 63 | `theorem` | [parts_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/parts-bot.md) | 618 | `result-track:a563c840653266b4bbd0aea792231bb32417f155c7fbf4b7e0bef78daea61d1f` |
| 64 | `theorem` | [card_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/card-bot.md) | 622 | `result-track:7871dfe49b309d09a08dee7561a87aa4ffe6a35a51f032fb9d0141f688f5f427` |
| 65 | `theorem` | [mem_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-bot-iff.md) | 624 | `result-track:362e216028ad94fc121039e3ada19e9caadd7414147e766a158c570d5eedc4dc` |
| 66 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/instance-source-edition-4.md) | 627 | `declaration-track:3797a742c01b29195ff136c54d657d9f12bdfee8d5214977cf0faa92843b09b4` |
| 67 | `theorem` | [card_parts_le_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/card-parts-le-card.md) | 635 | `result-track:bda6d482b8e1528f33cfdc196379fb9c57632204d4fa297b321e37c79c896601` |
| 68 | `lemma` | [card_mod_card_parts_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/card-mod-card-parts-le.md) | 639 | `result-track:fe44e434f72e5cd70027116e4d4d7a4adf6f1133885e9843b738932082914364` |
| 69 | `def` | [ofSetSetoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/ofsetsetoid.md) | 651 | `declaration-track:35f8f483f0c5f4a641e9ef2075c7fed78a0328077c6d27abde4ba53437a8ef16` |
| 70 | `theorem` | [mem_part_ofSetSetoid_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-part-ofsetsetoid-iff-rel.md) | 671 | `result-track:136d6e4c724b45d1f6380119d1dd0fecc71161d41180e0f9b8f612b2cf3afe09` |
| 71 | `def` | [ofSetoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/ofsetoid.md) | 689 | `declaration-track:00e3e3b89e2066f9efe20fcfd50421c2059ca722eb9f7eaf05c8a5e48c7b2e73` |
| 72 | `theorem` | [mem_part_ofSetoid_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-part-ofsetoid-iff-rel.md) | 692 | `result-track:abab53a193d9ea2114882ec303a6ef87aea595ab1ff86bdc6c2a1ccfe3cf5d00` |
| 73 | `def` | [atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/atomise.md) | 703 | `declaration-track:71f377727c3876841819d5bbb74dbe5657afa4f1b09bef86990a13419195cbfd` |
| 74 | `theorem` | [mem_atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/mem-atomise.md) | 735 | `result-track:8047f0a997b49cb9e9f4ddd1b7cab86fe4cd85e7af3d4fca6160b99c15d0964e` |
| 75 | `theorem` | [atomise_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/atomise-empty.md) | 741 | `result-track:53c15cfb86d349c444550fe0d0c34f3fe3ce6ad19930cffd94f7eb5518a6a553` |
| 76 | `theorem` | [card_atomise_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/card-atomise-le.md) | 746 | `result-track:d54365ae9fdd4240b80b438434b6a993d7d3babd3ff58e755699e511820c543f` |
| 77 | `theorem` | [biUnion_filter_atomise](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/biunion-filter-atomise.md) | 749 | `result-track:b5666bd31a54664c74c686efd3474d4a929aa7c24c0fea54a23a1eff45540ddf` |
| 78 | `theorem` | [card_filter_atomise_le_two_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinpartitionNamespacedMap.lean/declarations/card-filter-atomise-le-two-pow.md) | 759 | `result-track:a86bc1484e7c309ec35fbe4524561fc51843be28d61d4660b53e44923fbe8c5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88db59b7573ac9d20d208554b7228e64f3601d146f4f05904a69b6aeaae27067 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
