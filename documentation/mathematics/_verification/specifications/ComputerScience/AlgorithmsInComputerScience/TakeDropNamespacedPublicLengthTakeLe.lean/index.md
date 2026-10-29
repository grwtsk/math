# Verification target: Take Drop Namespaced Public Length Take Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edbba2789359903a141f25158271a09535561846",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edbba2789359903a141f25158271a09535561846`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Find` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/length-take.md) | 47 | `result-track:23720ddabf25eab8ab90520d0c9c72d244dfeceb833536835e9f926df333b245` |
| 2 | `theorem` | [length_take_le](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/length-take-le-source-edition-2.md) | 52 | `result-track:f3da0d385ff726e1964e89b4a327a5611fd3865bc5df77caf97ec41c936d2c1d` |
| 3 | `theorem` | [length_take_le'](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/length-take-le.md) | 54 | `result-track:22269b0d4188d54f70ec5e9c26dd1fbd7c89d89c9248c4c00a16c9d2473992f3` |
| 4 | `theorem` | [length_take_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/length-take-of-le.md) | 57 | `result-track:135df787ef02c7fd56f4049e0aa19056f5ae1d2a401d8a349dac388687b23264` |
| 5 | `theorem` | [getElem_take'](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-take-source-edition-2.md) | 61 | `result-track:2652c446789e85aec8886ea3ca6820a7f733f89abdb94f0057b35b3f5630150f` |
| 6 | `theorem` | [getElem_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-take-source-edition-3.md) | 67 | `result-track:9033959a02aa815da98c6d3f34b3e3b083b6b5a887841a0eb342f5b3b1835f75` |
| 7 | `theorem` | [getElem?_take_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-take-eq-none.md) | 72 | `result-track:4a7f51fcacbc5a6ffb8fb32418c12380e8f2dc79cb9a746190475fccb2169498` |
| 8 | `theorem` | [getElem?_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-take.md) | 76 | `result-track:07e5b6e5066ad93cdb3ebf2ac43a777d31990bb1bc00867c75d8b792a07cadd9` |
| 9 | `theorem` | [head?_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/head-take-source-edition-2.md) | 82 | `result-track:b7590660b50fde407117714c80ad0b6ee8fb2f7fc201d6ab7bb6612beefc71dd` |
| 10 | `theorem` | [head_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/head-take.md) | 89 | `result-track:7d9889918d9e38d6c753b6e962981039e25731b1b4a7eae55f1ddbd4729c0011` |
| 11 | `theorem` | [getLast?_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getlast-take.md) | 95 | `result-track:39b98cb49e1b484449915bdd8ecc3031581335b6f9b2c27dcc8f270d729e0e6a` |
| 12 | `theorem` | [getLast_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getlast-take-source-edition-2.md) | 108 | `result-track:545724e56680d85e46dc588e8f2710efad5d9fda2e740fca7728a1c7df8d803c` |
| 13 | `theorem` | [take_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-take.md) | 120 | `result-track:42ec4d46a1509808a51b6908f6928a8e6511e9ba622a623b723db1a5205a07f6` |
| 14 | `theorem` | [take_set_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-set-of-le.md) | 127 | `result-track:81d848cfa3b6d07f73077c5bf86b93d3ac33bc33c64807c9619b18b38264ccd0` |
| 15 | `theorem` | [take_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-replicate.md) | 135 | `result-track:7c17052a6816a76727a81652e9672da8f36961d5b350e3ebfdbe3046f92764f7` |
| 16 | `theorem` | [drop_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-replicate.md) | 140 | `result-track:74ad5655fe4452c20c6b1f656a1371a6f5fa5884a16a09b87e317926b8f20f74` |
| 17 | `theorem` | [take_append](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-append.md) | 147 | `result-track:048c1d880431a9339b169e00ce88b56d7008dd12f296428915cedb9a75582f80` |
| 18 | `theorem` | [take_append_of_le_length](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-append-of-le-length.md) | 159 | `result-track:963f050d55aa105b207cfc5e2caff0229b36f10aaecbc7850f4d080f0ea824f2` |
| 19 | `theorem` | [take_append_length](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-append-length.md) | 164 | `result-track:3ddbd04e0e9497b568aa7a7aa4c08860a443439765e0f634de295c0ec26642ce` |
| 20 | `theorem` | [take_length_add_append](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-length-add-append.md) | 169 | `result-track:e1e7109bfe52a149bfb0fea6cc04f93f5402cc48245588473036291f95d33904` |
| 21 | `theorem` | [take_eq_take_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-eq-take-iff.md) | 174 | `result-track:215e8ee808b6d6d9dbca277987c6f077a2932a4f02913b478634bbcec7d1da29` |
| 22 | `theorem` | [take_eq_take_min](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-eq-take-min.md) | 182 | `result-track:c31ac5b75c4f8c69483ad7cb0b5e7192bf63b7cc9a2f2b2b130823bbad7bc6f7` |
| 23 | `theorem` | [take_add](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-add.md) | 186 | `result-track:5f203b79d6fd23be3df04bd8923d2ebbc4ee6c3157492b0cf15a4bd16d81801e` |
| 24 | `theorem` | [take_one](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-one.md) | 197 | `result-track:414e515cd37c633828f95c93bda236d0ecbfe78f5ed5f174c1e2b945ea8e5160` |
| 25 | `theorem` | [take_eq_append_getElem_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-eq-append-getelem-of-pos.md) | 200 | `result-track:ff5f6d34d2306a9d1656ad6117e92220e2d7f22bba1fa574734b479e14b07c22` |
| 26 | `theorem` | [dropLast_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/droplast-take.md) | 204 | `result-track:61324b5d2bb0b149c4eb9c82e3b582a0113eedd8fed2d271ecaa696e8d5ab45d` |
| 27 | `theorem` | [take_eq_dropLast](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-eq-droplast.md) | 208 | `result-track:abf254ae373e8e6914fc23c16fdca1ba99507f46b441b93730fd650854067253` |
| 28 | `theorem` | [take_prefix_take_left](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-prefix-take-left.md) | 222 | `result-track:9a8c1625c155e9eb637d8ad7ffa2aa81c8607c11f4e2d0ae98000c1615940d6e` |
| 29 | `theorem` | [take_sublist_take_left](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-sublist-take-left.md) | 229 | `result-track:f5dfb75353421be361a817fce7d76da1e932ec619ad14d2f125c80ded32cf263` |
| 30 | `theorem` | [take_subset_take_left](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-subset-take-left.md) | 232 | `result-track:92bf00c6b4e56fd582e4588a22a8c24f416581e87268d58843637bd6b7823f3c` |
| 31 | `theorem` | [lt_length_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/lt-length-drop.md) | 237 | `result-track:5e317469fec49b80bfacead3190f052f9bd7b6d70fa791571766b4f4b8fc3dde` |
| 32 | `theorem` | [getElem_drop'](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-drop-source-edition-3.md) | 245 | `result-track:ffa9510f698004a36d393ab7149391de8bb2d21af475c529e71678afbc77588f` |
| 33 | `theorem` | [getElem_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-drop-source-edition-2.md) | 254 | `result-track:e4ce52967708805f84b04adc92b26f61b9b29f1bdcd8edafbcdf4453f5f05be8` |
| 34 | `theorem` | [getElem?_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-drop.md) | 261 | `result-track:cc1efd4cdd5c698a9567aa8ca462852fcf1183848f792aaad8aa6eae25226794` |
| 35 | `theorem` | [mem_take_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/mem-take-iff-getelem.md) | 271 | `result-track:7f3c16ab3e2c429897d7a5705a2c0ffadf99f74b0f2845a6a5ee694eeba1da3b` |
| 36 | `theorem` | [mem_drop_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/mem-drop-iff-getelem.md) | 281 | `result-track:11b21d36ac1ac727f6c99f108c3b07a7cd6662f5ca50fbf32231fb9131b16abe` |
| 37 | `theorem` | [head?_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/head-drop-source-edition-2.md) | 291 | `result-track:368c29c2dda90e067d924436990eb3de8d571b84baa6a6be9026ef055cae5019` |
| 38 | `theorem` | [head_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/head-drop.md) | 295 | `result-track:292f48e8419d9505e5d6ed6ae078a3accf494006bfd693c7810cf6686312285c` |
| 39 | `theorem` | [getLast?_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getlast-drop.md) | 300 | `result-track:18245c105966a99d34377caf38ccdf6faae750e59b8c6844d06e0849b4aac068` |
| 40 | `theorem` | [getLast_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getlast-drop-source-edition-2.md) | 309 | `result-track:1ca1e705f696afdaaea3f0605f495e2972bfa06e61c374d1eedaff545e14f8bc` |
| 41 | `theorem` | [drop_length_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-length-cons.md) | 316 | `result-track:f91293ea1309ad56b55919eaf62ba59a1f1ad2b70c16432f1b55468d8927006e` |
| 42 | `theorem` | [drop_append](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-append.md) | 330 | `result-track:b1f7217822220aba86c5cf6126a3776c2a59f60159c45464de6018630290d99f` |
| 43 | `theorem` | [drop_append_of_le_length](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-append-of-le-length.md) | 341 | `result-track:099406790617a1c88cf8bf9fea75ca28051871f105df7c1545bd091ae82a2568` |
| 44 | `theorem` | [drop_append_length](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-append-length.md) | 346 | `result-track:a9f370e953aed52712c2a0a51e6dd2d020d636de3a91f680d38961e7d17f8d09` |
| 45 | `theorem` | [drop_length_add_append](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-length-add-append.md) | 352 | `result-track:a045715b001ca435b61457776c0fad0c1271849801cccc111e442cc31e6df84e` |
| 46 | `theorem` | [set_eq_take_append_cons_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/set-eq-take-append-cons-drop.md) | 356 | `result-track:f57f71948de7bec90fc90bee043ccd78f59027140ce797bdb661fb7c49f54a3b` |
| 47 | `theorem` | [drop_set_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-set-of-lt.md) | 383 | `result-track:9663c90eb67d2462a6e70b38f4415cb1cc0db5deea26dfb81b464d14e0cc8831` |
| 48 | `theorem` | [drop_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-take.md) | 386 | `result-track:9bfbe26ace39caf7ff70bf7ccf6f0a6428807ea61b6dfef7be13d08c177ea360` |
| 49 | `theorem` | [drop_take_self](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-take-self.md) | 394 | `result-track:3eeccae03526031ddddced03aebbc0cb3f777ea4415fcdf67aaa26f3a882e466` |
| 50 | `theorem` | [extract_eq_drop_take'](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/extract-eq-drop-take.md) | 403 | `result-track:82394692a51ead25add6499e7c19ec15d7b89dbb3e1e4fd9e6c6bfea02fe43ce` |
| 51 | `theorem` | [drop_eq_drop_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-eq-drop-iff.md) | 415 | `result-track:127188f671218e9939b76b4890f39ed5fca234e70deb11766b48ba7eae757165` |
| 52 | `theorem` | [drop_eq_drop_min](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-eq-drop-min.md) | 427 | `result-track:ff843f06cd7a6f18db1d0fb9eff45fe8f3e6d7058c553a80bafaeaaf9609ec9f` |
| 53 | `theorem` | [take_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/take-reverse.md) | 430 | `result-track:c990633e5c54b194eff3429facee5605a14bb8eae5af04d2a7ba66379711cc44` |
| 54 | `theorem` | [drop_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-reverse.md) | 455 | `result-track:af5237604bdb4fea3e0944233c218030d613d9605e6b5f8aa2884cdb05ab20ca` |
| 55 | `theorem` | [reverse_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/reverse-take.md) | 472 | `result-track:824774787d66b03ef289660c4674741229c1859ac3b099ab229b37dbee665db9` |
| 56 | `theorem` | [reverse_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/reverse-drop.md) | 482 | `result-track:022fd94e110316849d39fdb234cb152c92a0b8afee4fa76b45cedeb2a312c693` |
| 57 | `theorem` | [drop_eq_getElem?_toList_append](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-eq-getelem-tolist-append.md) | 492 | `result-track:caec8b3b808a9dcda3615491cc92a88f9c094e4a66792f9b2d1b106ad667ebb1` |
| 58 | `theorem` | [drop_sub_one](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/drop-sub-one.md) | 502 | `result-track:522a28b0466ac125edd5082e61f920b5edcdbd6246720ea975ac3d2cbda8f53c` |
| 59 | `theorem` | [false_of_mem_take_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/false-of-mem-take-findidx.md) | 510 | `result-track:0c61c417e3d2197c48563c43bff75297bc1e6dd99f45401c67d033846a14c3bd` |
| 60 | `theorem` | [findIdx_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/findidx-take.md) | 516 | `result-track:029e069223e579d1275066816a842b42b89db95accd63382fed2bdbba39f6bc2` |
| 61 | `theorem` | [min_findIdx_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/min-findidx-findidx.md) | 528 | `result-track:715a76ddc3acbae504d4e24ab5a6b75d5bc486f372172bb596b4850c29a87d2e` |
| 62 | `theorem` | [findIdx?_take](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/findidx-take-source-edition-2.md) | 538 | `result-track:f62b094e0496cfeef97328aca8f3231b6bc9ea9459a9dec018c6d57204cf4578` |
| 63 | `theorem` | [takeWhile_eq_take_findIdx_not](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/takewhile-eq-take-findidx-not.md) | 552 | `result-track:e6a4554b47ba428772f519ac798daf502aaceae2bd12d92bb53ca7ca3bc97970` |
| 64 | `theorem` | [dropWhile_eq_drop_findIdx_not](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/dropwhile-eq-drop-findidx-not.md) | 560 | `result-track:0fecdcc6a75ba2645194a841cb677e996966af8f0e14cbd775cb35f705a40784` |
| 65 | `theorem` | [rotateLeft_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/rotateleft-replicate.md) | 570 | `result-track:b339c64de1be749903bc01915829445480e4462fdfb52b904da87a204e355171` |
| 66 | `theorem` | [rotateRight_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/rotateright-replicate.md) | 583 | `result-track:1376113a45327162c6448dc8ff004aae21d74ce6ac2569d7f3b74f41a193f1c1` |
| 67 | `theorem` | [length_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/length-zipwith.md) | 596 | `result-track:76d9e6affea805d3345371becfa961aaf2016fa310301b82d656f7bba43c5ee0` |
| 68 | `theorem` | [lt_length_left_of_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/lt-length-left-of-zipwith.md) | 601 | `result-track:f2ebed11050be4e850fac75befe1edf85a82bd3a4490345cd5b292ad50ff453f` |
| 69 | `theorem` | [lt_length_right_of_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/lt-length-right-of-zipwith.md) | 604 | `result-track:4d63052e5e0fe59343ef5dac0b1940f0dd753d7a91cfbd327664f268a12aa5d9` |
| 70 | `theorem` | [getElem_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-zipwith.md) | 608 | `result-track:acf63a04a374d8732d9d1f138ccdd9cba03f6d767c08b18fed60d57d7694ad73` |
| 71 | `theorem` | [zipWith_eq_zipWith_take_min](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/zipwith-eq-zipwith-take-min.md) | 619 | `result-track:a69e01cb83b7e1ca010095d518e68b09981a8048aae0475679c9f32bb7d27c07` |
| 72 | `theorem` | [reverse_zipWith](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/reverse-zipwith.md) | 626 | `result-track:a68212df9ee101f6c634393d45c515ec83f5223234e735ec713800f2ec177b66` |
| 73 | `theorem` | [zipWith_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/zipwith-replicate.md) | 638 | `result-track:7c3b10f65891301e29fd56d5b27e7d6642b249658ec6b82d204940fc68617a42` |
| 74 | `theorem` | [length_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/length-zip.md) | 645 | `result-track:cfe5417bc1dd2099efdcd41bd1eb5b0826ee876c17e098618323d7ad6873d8b9` |
| 75 | `theorem` | [lt_length_left_of_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/lt-length-left-of-zip.md) | 649 | `result-track:3724a5f5905ec880424d6245646fd144b9c449b9eeec410867d10a8ffd4e2017` |
| 76 | `theorem` | [lt_length_right_of_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/lt-length-right-of-zip.md) | 653 | `result-track:ef33a5503ba2600b83fdacbf34fe0f569c619afc35bedc7ff549c9e89ba8a377` |
| 77 | `theorem` | [getElem_zip](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/getelem-zip.md) | 658 | `result-track:d6bc3abfcec1babaac2bf699aef4b366fd34033636c57d1435e69fce9a2091f3` |
| 78 | `theorem` | [zip_eq_zip_take_min](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/zip-eq-zip-take-min.md) | 663 | `result-track:69cdf686a03e814454d77c28145a8438ef2905f7c1808ddf5c8b28e3130ec8bf` |
| 79 | `theorem` | [zip_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/TakeDropNamespacedPublicLengthTakeLe.lean/declarations/zip-replicate.md) | 669 | `result-track:f0d115ec29a509b59e97aead0c01de5070326de2bfcd90dcca62e850f7d7423e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7fda02cf206eafa04e89570dbe8d249bcda15baedbbae3d6c36721fcda6f8d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Variant233c0af371c082c8e4818da1aea8de46c5963678bc04f6758d4dadec2d718a4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
