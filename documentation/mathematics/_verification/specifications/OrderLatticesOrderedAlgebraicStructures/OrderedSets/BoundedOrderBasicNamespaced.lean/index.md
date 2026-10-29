# Verification target: Bounded Order Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db750c49cbe07a4303fa1963834633c492489f9b",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant22365e0d26f41f8b1d7e7079b24fcd6bab8e61c061f1d49b133d9ed3435efa35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db750c49cbe07a4303fa1963834633c492489f9b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant22365e0d26f41f8b1d7e7079b24fcd6bab8e61c061f1d49b133d9ed3435efa35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant22365e0d26f41f8b1d7e7079b24fcd6bab8e61c061f1d49b133d9ed3435efa35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Max` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Push` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Finiteness.Attr` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ordertop.md) | 47 | `declaration-track:3b6a7a8b9df642aaa466d63f684f526e4597103f8e8dfdbd9e12a9a8b3bc13b1` |
| 2 | `def` | [topOrderOrNoTopOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/toporderornotoporder.md) | 55 | `declaration-track:47a1e9bf0eee90f77be07ee03def9b938c9e5f34bca01dabe516f3d35e0df9b9` |
| 3 | `theorem` | [le_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/le-top.md) | 67 | `result-track:c24797679238d9c29c48f92efb00dc09fcf432e67af10a12dff3e5f85be5a29c` |
| 4 | `theorem` | [isTop_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/istop-top.md) | 71 | `result-track:fb3cfab743a5ebec6203a5791c9afb44eada674c9d8a8b7a7761c506f2246343` |
| 5 | `def` | [IsTop.rec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/istop-rec.md) | 79 | `declaration-track:758d420f6dbb508ac7c4624031627fb3a98d1942684c1fbf5c4d4c8d932d000b` |
| 6 | `theorem` | [isMax_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ismax-top.md) | 89 | `result-track:e12b4dde52a12fb2e61e708d0bf3f977ef31b5efa4dfab2b1c96ac8b7ed93375` |
| 7 | `theorem` | [not_top_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-top-lt.md) | 93 | `result-track:a2a84e1f418cbbc119374449d32abf32a72971d13055eb5b9feee24e525e85aa` |
| 8 | `theorem` | [ne_top_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ne-top-of-lt.md) | 96 | `result-track:56ca4c884b7df665b58a180f0bec4d976cafb1a8c3110a6096ed72efee3c8933` |
| 9 | `theorem` | [lt_top_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/lt-top-of-lt.md) | 101 | `result-track:3e7ef1da7b991f2297e6e4184722e71e09944a743f4a5caca42b52986c1481d9` |
| 10 | `theorem` | [isMax_iff_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ismax-iff-eq-top.md) | 115 | `result-track:408c8fbb071020f0c625d1917e50dfa7794ac5aa91ceb85ff24d103426ca2021` |
| 11 | `theorem` | [isTop_iff_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/istop-iff-eq-top.md) | 119 | `result-track:d7878e67268da1408e8c9ccc21e5c8f1284bb6b0baf46e9f5dc9d8b962e7e736` |
| 12 | `theorem` | [not_isMax_iff_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-ismax-iff-ne-top.md) | 122 | `result-track:df940abafbb5c3866d05608d0dcd4b39eec5c731139b7ced8bb6fe1d85c7df1b` |
| 13 | `theorem` | [not_isTop_iff_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-istop-iff-ne-top.md) | 125 | `result-track:88807a6afb8e589917aa82bf8443b27aa541564d06ca9e01e79c0ab220f694f5` |
| 14 | `theorem` | [top_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/top-le-iff.md) | 133 | `result-track:fbaaf2e539679eb91c9b0a996c80415e614993b12dcc57a2bf7e09428b47915f` |
| 15 | `theorem` | [top_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/top-unique.md) | 136 | `result-track:c655d01bc963521ac8bf7f13d78dbe0fffc8e78dcfd2ef02d445e5902d041dfd` |
| 16 | `theorem` | [eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-top-iff.md) | 139 | `result-track:f549866ccb99002c03b07eb9e7fd4a768991d4020c1257e87a3d1513f790def7` |
| 17 | `theorem` | [eq_top_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-top-mono.md) | 142 | `result-track:bbc10495630478edd0e77b5e38c51c7fecb1e15b8cb3a8872b28a24f77f398a8` |
| 18 | `theorem` | [lt_top_iff_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/lt-top-iff-ne-top.md) | 145 | `result-track:bd26cb4e4298dac08a66ae4f3a53fe6ab4e74f9c3395bb83163af8772378868e` |
| 19 | `theorem` | [not_lt_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-lt-top-iff.md) | 149 | `result-track:0303fe297d24219036c97ec8cefccd2d03ae0e79fbf89900a405eba14db62762` |
| 20 | `theorem` | [eq_top_or_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-top-or-lt-top.md) | 152 | `result-track:dc4177c7305b3724ca08ccf255865137f54ad042cbe1d92fb4421f959dfea849` |
| 21 | `theorem` | [Ne.lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ne-lt-top-source-edition-2.md) | 156 | `result-track:d33fa7725873401e092e093747c7761886c00f93b01a8b5bbe73f403d93afd11` |
| 22 | `theorem` | [Ne.lt_top'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ne-lt-top.md) | 159 | `result-track:738d4430a67bd7b2089e37715632cb65c8c14208b12bf411ae5ea6f4f6aa4819` |
| 23 | `theorem` | [ne_top_of_le_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ne-top-of-le-ne-top.md) | 162 | `result-track:98ca3c47f0d328a962e4fee419a73b159dc1cbba48bb77291027d5c16d0fc3bc` |
| 24 | `lemma` | [top_notMem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/top-notmem-iff.md) | 165 | `result-track:dd9a16173ffcaf74a3f3aedc08a87636119219f753970bfc3d7d5cffe963a6d1` |
| 25 | `theorem` | [not_isMin_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-ismin-top.md) | 172 | `result-track:bb7481eb8dafcdd8adc1cbc2f04ad9573aca87b3ba16ce0c661a7609b4238622` |
| 26 | `theorem` | [OrderTop.ext_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ordertop-ext-top.md) | 178 | `result-track:f88a0e89252714407d9a5284ebb6e92954bd13cb221c59479e73d1ba4f310cb6` |
| 27 | `class` | [OrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/orderbot-source-edition-2.md) | 187 | `declaration-track:8f826492a16fc827418608ce87d9726761f7e80020f9c468d382f001ed808a98` |
| 28 | `def` | [botOrderOrNoBotOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/botorderornobotorder.md) | 195 | `declaration-track:884ee9ef3319c7b1eb7edf888713a0101736c78554982d16750f4fddfdc794d6` |
| 29 | `theorem` | [bot_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-le.md) | 207 | `result-track:bf86ba44a9161aeceac477e2c17be95e78fad3fedd1278a5fa5cebf96da0ad43` |
| 30 | `theorem` | [isBot_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/isbot-bot.md) | 211 | `result-track:3a4db8a9469e7ad4cd70b03acfcd6e6139eeadf32461d3457a8f29a7cd99a43b` |
| 31 | `def` | [IsBot.rec](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/isbot-rec.md) | 219 | `declaration-track:899389cd3b592b247be58d85aee9b0a7744e6de8ebd731dcf3c5bf1428f0bc2a` |
| 32 | `instance` | [instTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/insttop-source-edition-2.md) | 228 | `declaration-track:b2a2bfb6e49110266515423dc3d3a27b4abe2741059db90451ce0ba87e6f2507` |
| 33 | `instance` | [instBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instbot.md) | 231 | `declaration-track:3f941b43e4bf46637e330cba62b9a92426fc8401506b987d16353b7e35beca2b` |
| 34 | `instance` | [instOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instordertop.md) | 234 | `declaration-track:3c8b45af90afe4b45f220e4e1c89d029ceb07dfbb8c9d86907474669fcc814f0` |
| 35 | `instance` | [instOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instorderbot-source-edition-2.md) | 238 | `declaration-track:2f4a904694327c56d1d90177a28ed78838cbb31f36994fb7907fe04ef5e35846` |
| 36 | `theorem` | [ofDual_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ofdual-bot.md) | 243 | `result-track:ba395cac088cd825e00f4420b589e6f892b31cdde81f7d0eb3c8d35d28e6d273` |
| 37 | `theorem` | [ofDual_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ofdual-top.md) | 247 | `result-track:6f14e1b52bce112fab0d5d6e8376f11e1dfa4fb3b21e837757fb8a38a9367dfc` |
| 38 | `theorem` | [toDual_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/todual-bot.md) | 251 | `result-track:d0ed565e26b210d41d5678e9791b1cbf3c68242a73981a95aa796861af4027b7` |
| 39 | `theorem` | [toDual_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/todual-top.md) | 255 | `result-track:49315a4aadd5e20c09e42fab8ce9915d9e38513f5785f9f273f760f89bb320c0` |
| 40 | `theorem` | [isMin_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ismin-bot.md) | 265 | `result-track:f29297e1a0acd36ae290315d7df758dfca3b82a7b8e02e3912197091bcb2675f` |
| 41 | `theorem` | [not_lt_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-lt-bot.md) | 269 | `result-track:ff2b9a7677d540ef6110f9e5bdafbaba9b2e34db4f190e39c14f1b582393fb14` |
| 42 | `theorem` | [ne_bot_of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ne-bot-of-gt.md) | 272 | `result-track:d85511db37af35d0cfe535cf2ce696e4d1da46db66de843af9c8fb242d473f69` |
| 43 | `theorem` | [bot_lt_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-lt-of-lt.md) | 277 | `result-track:c8bf6cd46cd2193b0da5a91ead38390dbdfd48602db9c68ee4a5b179640363ee` |
| 44 | `theorem` | [isMin_iff_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ismin-iff-eq-bot.md) | 287 | `result-track:d9fdb2301e8ae1888331ba9a742d8d76e245be16fbe96561593bba7a9ba23a3c` |
| 45 | `theorem` | [isBot_iff_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/isbot-iff-eq-bot.md) | 291 | `result-track:5ffb491c8089653ba7541f519bea53a757755fe46138edad0d784285fa67ae18` |
| 46 | `theorem` | [not_isMin_iff_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-ismin-iff-ne-bot.md) | 294 | `result-track:5140db4490a7bd26580e5e64a4d83747c5c488f58f5af95cc30ade01163eba25` |
| 47 | `theorem` | [not_isBot_iff_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-isbot-iff-ne-bot.md) | 297 | `result-track:ada8c15556aab2667320af678b3f343a5764dd9065f448fd79028a502d6c6bc4` |
| 48 | `theorem` | [le_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/le-bot-iff.md) | 305 | `result-track:cd534ffe40032f3aaefd2611760fe52d9a834241087a050151a3bc69377291f8` |
| 49 | `theorem` | [bot_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-unique.md) | 308 | `result-track:9f94a2e2d95a93b1e4ac47f176a847427a9c7fc7935dd04302744973effb8f8c` |
| 50 | `theorem` | [eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-bot-iff.md) | 311 | `result-track:7d5071a67691a3374ee1ca51305b630ffde29eb81f08ec3938aa5cec54f97671` |
| 51 | `theorem` | [eq_bot_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-bot-mono.md) | 314 | `result-track:f8d07d8bab4d9062bc69229e6d818160a0debee2e93558a0c875c5e0ea9aa9ff` |
| 52 | `theorem` | [bot_lt_iff_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-lt-iff-ne-bot.md) | 317 | `result-track:d2ad0c56152dcc105c8ae1987e90e1679cb03ec40dad8af294c6fe467ec55360` |
| 53 | `theorem` | [not_bot_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-bot-lt-iff.md) | 321 | `result-track:16ff0852d39ae03e6946bd39150c0805d23ef6934b44c2d8c1c19ff4c63b3833` |
| 54 | `theorem` | [eq_bot_or_bot_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-bot-or-bot-lt.md) | 324 | `result-track:22a3785470b98e7a4cddfe3ef4ea88656f5ec6fad2e3cc4bbb9fa1c0596c01ff` |
| 55 | `theorem` | [eq_bot_of_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-bot-of-minimal.md) | 327 | `result-track:ea8b4058b749913aec96f28c45e49eb13e180abe8ff5b1e034ce8af2b16c4613` |
| 56 | `theorem` | [Ne.bot_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ne-bot-lt.md) | 330 | `result-track:07db5658dd5c592f52a681c41d51df9d02b3d047879a493f81a6f04a6b53bc72` |
| 57 | `theorem` | [Ne.bot_lt'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ne-bot-lt-source-edition-2.md) | 333 | `result-track:9448c6aacd0e3209b876469443c09f517ab3dc5007ea3f52845c224a7f815b71` |
| 58 | `theorem` | [ne_bot_of_le_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ne-bot-of-le-ne-bot.md) | 336 | `result-track:bc77c0f6a763633921d4c3fed70156dd54c37e80a6c695966ba5e25a31925ceb` |
| 59 | `lemma` | [bot_notMem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-notmem-iff.md) | 339 | `result-track:bfd71289450e833fb807e28046b3c360b8753a327546f887c04bd1a0d550de01` |
| 60 | `theorem` | [not_isMax_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/not-ismax-bot.md) | 346 | `result-track:d617366d7754169cf98ff80c741b21b3b72d9226d23b0a2a38d25395f53a2e7e` |
| 61 | `theorem` | [OrderBot.ext_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/orderbot-ext-bot.md) | 351 | `result-track:e365118fb21f0ff6d961e58a995081f1373daf6256e626b1b7e3f1bb37f79061` |
| 62 | `class` | [BoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/boundedorder.md) | 363 | `declaration-track:536a58a4388d5e0ebd78983b9e2a62e4f5c06bbe51af5e0eb5b0c3fe2ab5a2a8` |
| 63 | `instance` | [OrderDual.instBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/orderdual-instboundedorder.md) | 365 | `declaration-track:6fa371e9c200af74feda08e9e73cd850034547b03d9666e686f5a9d2b6a2105d` |
| 64 | `instance` | [OrderBot.instSubsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/orderbot-instsubsingleton.md) | 372 | `declaration-track:dc7ac2a568da537a2b1a3837acd3340a23c957bc1507ef0f37f13a3c2ffacdba` |
| 65 | `instance` | [OrderTop.instSubsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ordertop-instsubsingleton.md) | 375 | `declaration-track:9dc324c7d3a9da90e889b75b125a458fc7abd5443f0e1c57b392bc019ee6d2c6` |
| 66 | `instance` | [BoundedOrder.instSubsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/boundedorder-instsubsingleton.md) | 378 | `declaration-track:26776d423696175f75875ac3923d5379c0f8c5750d5943ad3d1541812d9a4878` |
| 67 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instance.md) | 389 | `declaration-track:30b5309b00d1b0f2cbde479bc56f6bbb858e30f8fcc403dd84d5a41ea09e2a34` |
| 68 | `theorem` | [bot_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-apply.md) | 393 | `result-track:e7ce6f2a5cffc85fdf21cc61055feca8e90afd50ae2e9ebed217991f165e180b` |
| 69 | `theorem` | [bot_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-def.md) | 396 | `result-track:7d8dda465c251fe1227cfd68886c291bf201c5d65af57b1514a115e045ce7667` |
| 70 | `theorem` | [bot_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-comp.md) | 400 | `result-track:10eedb9d4f5fcbd3a127a6cd1cc1e046470a3ef5b0dddd4f4359ce614f5dd48c` |
| 71 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 403 | `declaration-track:a1d689f36b3bf75ef00020e810aca0c1a391454fae95ab43428b621ad173f23b` |
| 72 | `theorem` | [top_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/top-apply.md) | 407 | `result-track:166ad4773305538249236f0027a129e8e1ed91494bfae9e6042070edc8531750` |
| 73 | `theorem` | [top_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/top-def.md) | 410 | `result-track:e1ad2a67788468c9e4f315831d11eca272077512ef6f5b9cc1758afbf5a91e34` |
| 74 | `theorem` | [top_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/top-comp.md) | 414 | `result-track:602abd811ac09a82c350b50c7057663c7fcd190750c105891ca466fd0c53a543` |
| 75 | `instance` | [instOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instordertop-source-edition-3.md) | 417 | `declaration-track:a00441c59b88752817dee858e78a8d5beff3e90a2df7cc9e0c5797f0b5bbf517` |
| 76 | `instance` | [instOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instorderbot.md) | 420 | `declaration-track:04cb0e854d0d4bb6509830922959ad0f1b5e184d3ae7405c8abc67281a5de069` |
| 77 | `instance` | [instBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instboundedorder.md) | 423 | `declaration-track:dd02e2692bca0169465b2d426a275271b3de5ff31e4b0309b2c32c74181053ac` |
| 78 | `theorem` | [eq_bot_of_bot_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-bot-of-bot-eq-top.md) | 434 | `result-track:122ccbbfe53778d755665d2af7b4d5407fb0a154022f467aa88974e5409d8171` |
| 79 | `theorem` | [eq_top_of_bot_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/eq-top-of-bot-eq-top.md) | 437 | `result-track:09ea577009b0131550f35428eec0c712879d1208f1d868144b413cb13ddb20a4` |
| 80 | `theorem` | [subsingleton_of_top_le_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/subsingleton-of-top-le-bot.md) | 440 | `result-track:e488d7e9fd12a2552d430b7193cd7d95c422e62b8bf9b50c70f99840f6522c20` |
| 81 | `theorem` | [subsingleton_of_bot_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/subsingleton-of-bot-eq-top.md) | 444 | `result-track:4b01658dfe635d620289ed587dbe1ca209c56ca4dc784ae645eeeba94f9c9c35` |
| 82 | `theorem` | [subsingleton_iff_bot_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/subsingleton-iff-bot-eq-top.md) | 447 | `result-track:2f61313d1b76735da1ea65e791a150762c857f6cd6bec90946e256db7165aa77` |
| 83 | `abbrev` | [OrderTop.lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ordertop-lift.md) | 456 | `declaration-track:1dc63192d9cb69e4c9ca0a8f8d4b3a6feae8c402f1e928e45d3581ed539a3c90` |
| 84 | `abbrev` | [OrderBot.lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/orderbot-lift.md) | 465 | `declaration-track:1831cb7e21b0142c595c96e7fd35b5f1b523ac0bc95095b86482e88285a8a88b` |
| 85 | `abbrev` | [BoundedOrder.lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/boundedorder-lift.md) | 474 | `declaration-track:d1299a0ff154fb6fc5050877f70a37d96528928137b9114c7fe6230e50885dd5` |
| 86 | `abbrev` | [orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/orderbot.md) | 491 | `declaration-track:21bde634a13e7e91742e686055672e8f68e098ea76e554662927a159c340fb3c` |
| 87 | `abbrev` | [orderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/ordertop-source-edition-2.md) | 497 | `declaration-track:e6389b0810fcd9d7d3c854005e39be8f67fea4392c1f261a77108590f9d43000` |
| 88 | `abbrev` | [boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/boundedorder-source-edition-2.md) | 503 | `declaration-track:83f22fd4f71ab0d1aaf3dad7dac44c9d01e62b64156f7c7549ed763983ec6bdd` |
| 89 | `theorem` | [mk_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/mk-bot.md) | 511 | `result-track:fc79eb5b2830f577667a3bb36cfccb91164478cc7e3a47ceef1a9bfad369137c` |
| 90 | `theorem` | [mk_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/mk-top.md) | 515 | `result-track:b59f0ceb271d7e9f484c5cde8b22fc0a9e9c68d8ed1dcff0ec70eeb593297015` |
| 91 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/coe-bot.md) | 518 | `result-track:1fa133cbc0afdb34b5a69b06dca0a80be30858d1e731fe19e42caff448047568` |
| 92 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/coe-top.md) | 521 | `result-track:45c4ec94997747352d81021ab9ce2bcb36f7141521a39202725036639b71186b` |
| 93 | `theorem` | [coe_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/coe-eq-bot-iff.md) | 525 | `result-track:dade2c4de6d57fb55bae8b122f513a1c0cd7a86cd73ec41be98a9524aa31ef06` |
| 94 | `theorem` | [coe_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/coe-eq-top-iff.md) | 530 | `result-track:2b5b86a8c44666bfaddc32d394d458a4b7b40fb5360a2e0abda3f7e89e37b66f` |
| 95 | `theorem` | [mk_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/mk-eq-bot-iff.md) | 535 | `result-track:e97ae92fd2def6eae4978f4c14b422bc602595f9d969b523e9040eed0fb550a1` |
| 96 | `theorem` | [mk_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/mk-eq-top-iff.md) | 540 | `result-track:fea8ea26672a86f4741caac4617fb80e919d5aa391493d53f7ef80a25df31187` |
| 97 | `instance` | [instTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/insttop.md) | 550 | `declaration-track:797b0585e939296e5dbfd1ab3868d771044865e3db4fb89548abe9ff51528603` |
| 98 | `instance` | [instBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instbot-source-edition-2.md) | 553 | `declaration-track:d2c33b1a50e3e19058db4f2362a08d12b464c5473a71d8145dc22d53d9b1e6ab` |
| 99 | `lemma` | [fst_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/fst-top.md) | 556 | `result-track:a8e68d5f138c8bb14995332be49aa02f29bc02aaa9bbbd207ac36ae965f06ff8` |
| 100 | `lemma` | [snd_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/snd-top.md) | 557 | `result-track:ebe71af7e42ff494b028f50c2290ebf9e2e942793955342cdf341da2327d008d` |
| 101 | `lemma` | [fst_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/fst-bot.md) | 558 | `result-track:574709f5db3a39ceaf19b643d5594f1b7bc7425a854c7604bc432a412027c605` |
| 102 | `lemma` | [snd_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/snd-bot.md) | 559 | `result-track:de6bf8698328afc8f90b75cba0f1eda02d104b0d1f92cf675949b787b20e1fee` |
| 103 | `instance` | [instOrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instordertop-source-edition-2.md) | 561 | `declaration-track:5f12321514cb1f424b8119403b3668061d7030d3fcaf8ee310fc493ea00fa53d` |
| 104 | `instance` | [instOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instorderbot-source-edition-3.md) | 565 | `declaration-track:58257bba1b72aaf9f757cc5fc278475a27dbfaf90a351591de1062fbe49602c8` |
| 105 | `instance` | [instBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instboundedorder-source-edition-2.md) | 569 | `declaration-track:f6f638ac394ce3271315699cbf005ef1865b0d4291df92db429035ab14136939` |
| 106 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 578 | `declaration-track:b7ae00a223e8826cc90fbe8d53af7ade634e419e9b82c3bca9686e7a5efbd0df` |
| 107 | `theorem` | [up_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/up-top.md) | 580 | `result-track:f35b051a9fdf257380c7b24fb1ab8593fe1fa45d13b3c220860ff38a8433bea3` |
| 108 | `theorem` | [down_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/down-top.md) | 581 | `result-track:2e70007bf392421e1983bcc28d587eeda1d9c7d95315a5ef5212fc2a204bd629` |
| 109 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 583 | `declaration-track:5746d4041219b8c5bc05a6a9669ea4550837db6274449dd7cc20cbdef2e73c0c` |
| 110 | `theorem` | [up_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/up-bot.md) | 585 | `result-track:efc404df2455870eb8e91f3218040269101cdf2fcf042cd80b6f99f03bae5030` |
| 111 | `theorem` | [down_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/down-bot.md) | 586 | `result-track:f0a10c574afb968611b113e58fc4d9b1a79d853794b8af7d000399d0aa0db70e` |
| 112 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 588 | `declaration-track:da3053b71ea42bb828411a6992acfbabfe98de2fc3e412d7ecc9d3f14bc3ed33` |
| 113 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 591 | `declaration-track:41e192e102583a1d5db0590ec7909dabb56f7aaad7ac855461531224c2908334` |
| 114 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 594 | `declaration-track:ef71fe167802e36566ac658bf6ea452d13ce713b1a6a8cee2105b5963408c971` |
| 115 | `theorem` | [bot_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-ne-top.md) | 603 | `result-track:d42ac4ba316f7d8cae36fb907699a019e3962317b08fbb606cbd998b327547c0` |
| 116 | `theorem` | [top_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/top-ne-bot.md) | 606 | `result-track:ae93e94086ab6848478148d64e08775ed8539278474a2d9b95d2c87d3cdc5e9c` |
| 117 | `theorem` | [bot_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-lt-top.md) | 610 | `result-track:ba422a4e4a705743212105c00386444047096ed1eac58d31a16e04574a5ec91e` |
| 118 | `instance` | [Bool.instBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bool-instboundedorder.md) | 619 | `declaration-track:973c69398b3776fb708bf79285b43ad6db295f5b9df2dec9bff2ef545034023b` |
| 119 | `theorem` | [top_eq_true](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/top-eq-true.md) | 626 | `result-track:ebb35048395c5aa3efcb491fa86a6f0f83fc74064c3e916dddc6833dd3a0ede2` |
| 120 | `theorem` | [bot_eq_false](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrderBasicNamespaced.lean/declarations/bot-eq-false.md) | 630 | `result-track:76acd3a4b6eb944455eda02054f2918bbd75db8e2c85887b3bd7aaa57b2b157c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76a2aff6ac7effe44af114abc11e683ccb47a53eb91733a54f155d9ba563d76f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant22365e0d26f41f8b1d7e7079b24fcd6bab8e61c061f1d49b133d9ed3435efa35.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant22365e0d26f41f8b1d7e7079b24fcd6bab8e61c061f1d49b133d9ed3435efa35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
