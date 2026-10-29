# Verification target: Antichain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cd6659a5d2dbfc9f3887ec9a9b8663f15e25b51",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant1b3bc626c00d385ce0aa55be86a584cab0d0b710059d088b063ebfaf6a7f2cd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cd6659a5d2dbfc9f3887ec9a9b8663f15e25b51`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant1b3bc626c00d385ce0aa55be86a584cab0d0b710059d088b063ebfaf6a7f2cd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant1b3bc626c00d385ce0aa55be86a584cab0d0b710059d088b063ebfaf6a7f2cd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Chain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Symmetric.compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/symmetric-compl.md) | 32 | `result-track:5067693261ba6f07dd44663c0ec35adc94119d425dfb6d15720c8e51bb6a0ae8` |
| 2 | `def` | [IsAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-source-edition-2.md) | 36 | `declaration-track:dc8e98bf50d96c2ecf50de32d38d25eb9ead623023db9505beec4da1a3c8b8bf` |
| 3 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/subset-source-edition-3.md) | 41 | `result-track:f6e5c2df7f913ed463a8be8ac8c69d12d17e55ad465f1a9527701690d0702bc9` |
| 4 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/mono.md) | 44 | `result-track:30fa67596a7226616360d50c7d0fd397eabb885d8335d940910ddc851600efc9` |
| 5 | `theorem` | [mono_on](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/mono-on.md) | 47 | `result-track:9105f6776b4add831ece713ddf8fff411ff6210b9131cb3591424100922232cb` |
| 6 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/eq-source-edition-2.md) | 51 | `result-track:52e7ce959f740ba0770a876c443486335a1e9f2a383ad9f5c5d0fc15dfca890c` |
| 7 | `theorem` | [eq'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/eq.md) | 55 | `result-track:263173df483390cd1789e6b09152fc0fa73f412b9ee96b5990d83246c721af29` |
| 8 | `theorem` | [isAntisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantisymm.md) | 59 | `result-track:4efc42fac076581aa64aa92f758da6f217fb3e617d0d4eaf247ebaf9984a6a4b` |
| 9 | `theorem` | [subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/subsingleton-source-edition-2.md) | 62 | `result-track:a4eaf2e6faa43924ae753c5623769b9e110ec7ca21556dbc713702ebee3937d1` |
| 10 | `theorem` | [flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/flip.md) | 69 | `result-track:3d57dd91db8c000044b59f54c2bf89f096bd50c7dbdd82e04568c37cc1028ba6` |
| 11 | `theorem` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/swap-source-edition-2.md) | 72 | `result-track:e6da5d73c446045cfcd56fc06fe9a74521c5bc9b21c046b23cbcb16707f01397` |
| 12 | `theorem` | [image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-source-edition-2.md) | 75 | `result-track:39b2f7812d0156f8eb08918f7b9e944c910e5ed406d0a823d2ff42acac5ca06a` |
| 13 | `theorem` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/preimage-source-edition-2.md) | 80 | `result-track:8e612a78d6cb67f9b7971dc74520ea95ff1cf4e08d8333be2f412f4a721a20fd` |
| 14 | `theorem` | [_root_.isAntichain_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/root-isantichain-insert.md) | 84 | `result-track:b846704294115debbe101bf51304de8bb4ab726eb3e5d52d4c34e0ce650befda` |
| 15 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/insert.md) | 88 | `result-track:488d01ae61a572e4ad72dfb047aba93b59131b46852aaefb4b8298e49d486567` |
| 16 | `theorem` | [_root_.isAntichain_insert_of_symmetric](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/root-isantichain-insert-of-symmetric.md) | 92 | `result-track:15a06447718b9b6b56784c1f8aa90f62cd2a93642cfb315989e1f78175c7f1f6` |
| 17 | `theorem` | [insert_of_symmetric](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/insert-of-symmetric.md) | 96 | `result-track:3657dc3938167b6af68297c645d4647fc798c90951151aef074474f58ed324fd` |
| 18 | `theorem` | [image_relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-relembedding.md) | 100 | `result-track:370c925a2446ba787ee5829df9c94e671740762f11e4584260fb19afe0881a53` |
| 19 | `theorem` | [preimage_relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/preimage-relembedding.md) | 106 | `result-track:c9756a23ee12acc6734c138b5e49495bac72a2199fac901566fbf5b804bdde5d` |
| 20 | `theorem` | [image_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-reliso.md) | 110 | `result-track:acf37d60fddbf05df9973cba19819375cf32eb8c2e2caa9e79004862a1b27f95` |
| 21 | `theorem` | [preimage_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/preimage-reliso.md) | 113 | `result-track:9739dff0f9126fb3caa7e459e5ce3728c1ed57547c52bc99b24c4d08541992f7` |
| 22 | `theorem` | [image_relEmbedding_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-relembedding-iff.md) | 117 | `result-track:7865718776dd29f3be7b2e586a6304724dabd37aa74d1ba7f9d5e41149309ed0` |
| 23 | `theorem` | [image_relIso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-reliso-iff.md) | 121 | `result-track:a9309e3d5cc49eb0a8902b83b7ac7b94840e8624f95fae2d8c941c149c967649` |
| 24 | `theorem` | [image_embedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-embedding.md) | 124 | `result-track:ab190921480adb3cf146387f00d9133b41311041b177e42864f330a0cc693c3a` |
| 25 | `theorem` | [preimage_embedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/preimage-embedding.md) | 128 | `result-track:9d5902c506550f0147585007f5479109618f15d5d8f8e88793ee6d9b28e42d56` |
| 26 | `theorem` | [image_embedding_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-embedding-iff.md) | 132 | `result-track:75e759b5e34a587f1efaab4c27ccf3039b3109502bc267dd4104f3dfc6b29b16` |
| 27 | `theorem` | [image_iso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-iso.md) | 136 | `result-track:c2eda1cadb53416b3ef7415206e9f296dc0ff70fe50697c6c15060b8f0dd21a5` |
| 28 | `theorem` | [image_iso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-iso-iff.md) | 140 | `result-track:c7bcbc0cc43a6dcd8321439c1f5789f52d8b65055fa48e97a099a9aa55bb3ebd` |
| 29 | `theorem` | [preimage_iso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/preimage-iso.md) | 144 | `result-track:056913fea6a0cd75a49c04c6e9f6e2993bb6acc8238e6b3ee952c97ca61415ae` |
| 30 | `theorem` | [preimage_iso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/preimage-iso-iff.md) | 148 | `result-track:667cb00456abf7a9a088272f068178e24fca516b908aef19b183997a92618a40` |
| 31 | `theorem` | [to_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/to-dual.md) | 152 | `result-track:1336bef3eedf96ef9e5f0048bad6e1cbe34560e702dfa8ae845ce1ac9b2bc416` |
| 32 | `theorem` | [to_dual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/to-dual-iff.md) | 155 | `result-track:410624b6f7dd99e7c708767764ed1427f86a2c31d3204c9cd19b13be866ed1fd` |
| 33 | `theorem` | [image_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image-compl.md) | 158 | `result-track:3b5dde7f820b3806d095292d74dad7def4939bad6305b2a041ad8fdf69a100bd` |
| 34 | `theorem` | [preimage_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/preimage-compl.md) | 162 | `result-track:c6b9074504e5f245209d67306ccc87610e2f179b356b3a719ea8281720f151d9` |
| 35 | `theorem` | [isAntichain_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-singleton.md) | 168 | `result-track:a7e35f450632beedbb3dcac56578ca8262980e229f800ed6f6d052d585b4bc6c` |
| 36 | `theorem` | [Set.Subsingleton.isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/set-subsingleton-isantichain.md) | 171 | `result-track:f10b6acea09e283c04d9a094c3443dc64c0ee553c4eff983e63f16728c0d339d` |
| 37 | `lemma` | [subsingleton_of_isChain_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/subsingleton-of-ischain-of-isantichain.md) | 175 | `result-track:05beddf8ed1e81ec7920ae9fa6489a8ce983c8ae5056c1ab7c3231b1dc5f4e3b` |
| 38 | `lemma` | [isChain_and_isAntichain_iff_subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/ischain-and-isantichain-iff-subsingleton.md) | 183 | `result-track:d84f52e449c9be8349acba8a6cc995464810359c60a66a1d8b7743609e7d6e1a` |
| 39 | `lemma` | [inter_subsingleton_of_isChain_of_isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/inter-subsingleton-of-ischain-of-isantichain.md) | 187 | `result-track:a77aaa25b3524320a38de7d65dd3013c5c876ca2a9dbe068c4270382c1f71dd3` |
| 40 | `lemma` | [inter_subsingleton_of_isAntichain_of_isChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/inter-subsingleton-of-isantichain-of-ischain.md) | 192 | `result-track:4198f48804b896f3070ea8b50d91cad6ad4c47eac05794d4bc10cc552aff45df` |
| 41 | `theorem` | [IsAntichain.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-not-lt.md) | 200 | `result-track:f8eb4118f81355fa0ed75b12f036c4b51f1aa80cb01f2b1d02ebc2db1b6a30c6` |
| 42 | `theorem` | [isAntichain_and_least_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-and-least-iff.md) | 203 | `result-track:e6f69ac7d0d425a1d604ee29e94b233f0c8f5c73a1cc6b692452968969f373a1` |
| 43 | `theorem` | [isAntichain_and_greatest_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-and-greatest-iff.md) | 208 | `result-track:6083b808d816ae7499372958832dfbaf8ed71d44e9296c37a9d9265e04d03532` |
| 44 | `theorem` | [IsAntichain.least_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-least-iff.md) | 213 | `result-track:3e0f88946cfa013fb15964aef3458a34ba0c0c1c7a81f3d8b72109e74c04e5ef` |
| 45 | `theorem` | [IsAntichain.greatest_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-greatest-iff.md) | 216 | `result-track:f8597b6b71d132c4bb9532f30824300f028b4d67476b07c408aef02620a514f0` |
| 46 | `theorem` | [IsLeast.antichain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isleast-antichain-iff.md) | 219 | `result-track:bc0c35ba78f3660cceb1c53f63f8d1a1e7918159423ad8676d16ca4522a4e977` |
| 47 | `theorem` | [IsGreatest.antichain_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isgreatest-antichain-iff.md) | 222 | `result-track:69534280f97d0ad71341b416e57c1b593f9b36da7636d298dde78c0788e9180a` |
| 48 | `theorem` | [IsAntichain.bot_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-bot-mem-iff.md) | 225 | `result-track:6cbd4c8f2469d339976b0efe36c3ded832d55a5f9ed205d89e634eb90627c974` |
| 49 | `theorem` | [IsAntichain.top_mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-top-mem-iff.md) | 228 | `result-track:0e3437ba369d1060cf5a523c4cb5ed6ce02b734580f6488ad1c03d40577a3312` |
| 50 | `theorem` | [isAntichain_iff_forall_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-iff-forall-not-lt.md) | 237 | `result-track:72ab78cb3ce51e128c400178464b87f523e7cefa4fbef78bdb9fc7fcb5287ce4` |
| 51 | `def` | [IsStrongAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isstrongantichain.md) | 248 | `declaration-track:d6ae4f28449ec60b632a384b34fa87e57767e58f2fd9124b9d7744ea2defce3f` |
| 52 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/subset.md) | 253 | `result-track:1bf4c381743ea9bc5db3fbf0466841d9f4f31b255b11eb4807fb08c1875917a6` |
| 53 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/mono-source-edition-2.md) | 256 | `result-track:7b996bc368eb0e64201cbf2f2f3e1add9465de3eec34f7605e06f18644f7d383` |
| 54 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/eq-source-edition-3.md) | 259 | `result-track:57a682db8afb5a982b14fe298bfb8bdc137d85a6eda536a5a6883aa1fb01d85e` |
| 55 | `theorem` | [isAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain.md) | 264 | `result-track:bab6ff9bc500bbbfa816829fdea8029075ff9b728b0e7e4a80ababdd8c422573` |
| 56 | `theorem` | [subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/subsingleton.md) | 267 | `result-track:83fe329d46ea608ba142704c8f7b4100a10335f782d1559c0541228d7c2bb28c` |
| 57 | `theorem` | [flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/flip-source-edition-2.md) | 272 | `result-track:823f4a254a56c55550a4df22878721270b2bce80c5be01cab7d2c93a285887e7` |
| 58 | `theorem` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/swap.md) | 275 | `result-track:0c5b6c4c179094af31b3a92ac62c3be7795009c13fd61eaed0cac9605c8a2470` |
| 59 | `theorem` | [image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/image.md) | 278 | `result-track:0ac8d4fc8076124e2f858f928a435d1277eb0c694388a05e812dcac789da568a` |
| 60 | `theorem` | [preimage](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/preimage.md) | 284 | `result-track:498a4de59817bf5f85fe138b95d511491af48d4fe0e43885800c1e8a5f72d7be` |
| 61 | `theorem` | [_root_.isStrongAntichain_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/root-isstrongantichain-insert.md) | 288 | `result-track:15db3635505d0bad88977530750687b0c7e7957f80b1c51584e25bff4bd4d2e5` |
| 62 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/insert-source-edition-3.md) | 293 | `result-track:a9354ef349e0e133ba53469a29d57624d537548467eb905867095ba60e887c21` |
| 63 | `theorem` | [Set.Subsingleton.isStrongAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/set-subsingleton-isstrongantichain.md) | 299 | `result-track:f2a7b9294e6e144fb7b205bf849c3677933dc3d6b717dd73a9a7a85c74e505b9` |
| 64 | `lemma` | [IsAntichain.of_strictMonoOn_antitoneOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-of-strictmonoon-antitoneon.md) | 305 | `result-track:0e42b173d4376c8dc05c05937743599af58ca9d50ade3755cef5ce012a823bdb` |
| 65 | `lemma` | [IsAntichain.of_monotoneOn_strictAntiOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-of-monotoneon-strictantion.md) | 309 | `result-track:f260f092098ed1a6056c44cc5b1bc8fd1cb27f7f4474e11006f80619acea2aa4` |
| 66 | `def` | [IsWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isweakantichain.md) | 329 | `declaration-track:6a6e0cf23e03cb59db726c7a5dd062950043f1851fb05d1b3400b3403716522c` |
| 67 | `theorem` | [subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/subset-source-edition-2.md) | 334 | `result-track:ae11435fa70cbaadfb23f32273a743e04d4745c0d9c15876a039c49767a52d55` |
| 68 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/eq-source-edition-4.md) | 337 | `result-track:5b8d59bb42fdcc4f8f534b1b3a79e6029af7c301e28f9c6a509efdc3ea2e0607` |
| 69 | `theorem` | [insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/insert-source-edition-2.md) | 340 | `result-track:732559811b2b8fcfd6708386861a012ddd581b35b0372ac8370856769c308814` |
| 70 | `theorem` | [_root_.isWeakAntichain_insert](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/root-isweakantichain-insert.md) | 347 | `result-track:7547943564a6b33be41d3546c467a70705f9e456bc1ec406546c49d00d0d90b6` |
| 71 | `theorem` | [IsAntichain.isWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/isantichain-isweakantichain.md) | 351 | `result-track:9e13fffc10c52ea495849e428cf0889994ec324452588671769a4ac70ca023ab` |
| 72 | `theorem` | [Set.Subsingleton.isWeakAntichain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Antichain.lean/declarations/set-subsingleton-isweakantichain.md) | 354 | `result-track:58a0f6e0e2bf5af45bfad0d4e765419e1da5e3d19055e0725c6adf0e4196d3e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d5cdbbb75594f9220b43c8283df6f48d1fd072f343116a405b621665e810fab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant1b3bc626c00d385ce0aa55be86a584cab0d0b710059d088b063ebfaf6a7f2cd9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Antichain/Variant1b3bc626c00d385ce0aa55be86a584cab0d0b710059d088b063ebfaf6a7f2cd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
