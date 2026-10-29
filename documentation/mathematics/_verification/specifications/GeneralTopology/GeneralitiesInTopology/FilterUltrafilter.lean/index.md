# Verification target: Filter Ultrafilter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dcb8ece4ab89f3fdf558efc835661f3ea21d3e5`.

Source path: `GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ZornAtoms` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/instance-source-edition-2.md) | 35 | `declaration-track:2a8244380c2518683b9cf948b79a13cae33de3c34acffbd62f197d17e33e08e5` |
| 2 | `structure` | [Ultrafilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/ultrafilter.md) | 41 | `declaration-track:a86e9fff69d6a799e1ef743a39cbfcb42d9d66791ee0e2e9313b9771e6e9f8a5` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/instance-source-edition-4.md) | 55 | `declaration-track:5002e65d2da194a11c53105d4d4986daf2abcdc453633001022d979a825cd007` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/instance-source-edition-3.md) | 58 | `declaration-track:4f7e25defe9b20761c16fbbd7d9fd054c50c85de15f6176ce9eb5b59510ba317` |
| 5 | `theorem` | [unique](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/unique.md) | 61 | `result-track:69d9f10f73d0d2526c4809f89b98a1f6eb0839e9ed77878f2d1ad931863b2e8a` |
| 6 | `instance` | [neBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/nebot.md) | 66 | `declaration-track:07c4458c0b3ba9c40e6173afc9f7791187c645db2dc6b2fe0306ae80759f980f` |
| 7 | `theorem` | [isAtom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/isatom.md) | 70 | `result-track:42950f68fb267d18a4fdeb7d89f4c0a40374f6508c518feec9624a5fff3199b1` |
| 8 | `theorem` | [mem_coe](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/mem-coe.md) | 75 | `result-track:485ff2f8a36456e4826bbd4786cd40c930d370b4b8dbad4e5acb33447e563bf7` |
| 9 | `theorem` | [coe_injective](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/coe-injective.md) | 79 | `result-track:601e85b8e09014479caf40aad83e2ac84a2201d7a5a90d7792de70a69769326f` |
| 10 | `theorem` | [eq_of_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/eq-of-le.md) | 83 | `result-track:a8c31ce55d5ccffb66203cab33831ff9ba1c2892454e58a9ad5a8c49ccedea56` |
| 11 | `theorem` | [coe_le_coe](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/coe-le-coe.md) | 88 | `result-track:3a0048912457645449e422c580744123c194d99296134da6c71cd3e6bdf08bb3` |
| 12 | `theorem` | [coe_inj](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/coe-inj.md) | 93 | `result-track:145cfe2812526bd44c31f07ee9d02023b80debb4038f98f13c42aa14d276a82b` |
| 13 | `theorem` | [ext](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/ext.md) | 98 | `result-track:b2ead1faa45535392229520ec32273a4871e129087236c2c7bbd76323be2f921` |
| 14 | `theorem` | [le_of_inf_neBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/le-of-inf-nebot-source-edition-2.md) | 102 | `result-track:8d2998c27f9749b4ba7b5cd665fd1e46d18803a9f9dd6555f102580878056a11` |
| 15 | `theorem` | [le_of_inf_neBot'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/le-of-inf-nebot.md) | 106 | `result-track:733c1627c3869c399471294af83befc72c44ec9bc1955fbee8db06967093eb19` |
| 16 | `theorem` | [inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/inf-nebot-iff.md) | 110 | `result-track:2365ac0d0f76da484220f0bb378030ab584545f170f6de0538fe27f4a619b944` |
| 17 | `theorem` | [disjoint_iff_not_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/disjoint-iff-not-le.md) | 114 | `result-track:3cf7231eb853f78fad773c5552a6f3a8c5098b43b423129bcbe23ff804174d8e` |
| 18 | `theorem` | [compl_not_mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/compl-not-mem-iff.md) | 119 | `result-track:1f95b7812a36a28a99d2f4cb22e389b63dd78775738209d274803df5ef7c6174` |
| 19 | `theorem` | [frequently_iff_eventually](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/frequently-iff-eventually.md) | 127 | `result-track:7fc8b0e11b5b6aa779805f26fbbd54ee2df4964c48169099f8f99fb25dafe1e9` |
| 20 | `theorem` | [compl_mem_iff_not_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/compl-mem-iff-not-mem.md) | 134 | `result-track:52c28e13d7ad4f33c5afa0aaf4fd7b72c436d3d257a66d0ad262641d201209fe` |
| 21 | `theorem` | [diff_mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/diff-mem-iff.md) | 137 | `result-track:c665c04707c243393817258e897a6229636419004210f34c3cd691385ea97169` |
| 22 | `def` | [ofComplNotMemIff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/ofcomplnotmemiff.md) | 143 | `declaration-track:a98a039406876aecae55c552f39282af6fb2f73cf718c4c1c19cbb4d9fb82a7c` |
| 23 | `def` | [ofAtom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/ofatom.md) | 150 | `declaration-track:816e205c372423d04b2fb35cdf78fe5c1ad478a59bd779b09d37c98182eede8f` |
| 24 | `theorem` | [nonempty_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/nonempty-of-mem.md) | 156 | `result-track:10602095900d07710ca5701c49f80b96b405ce5de6dd604b8ecdde915993a155` |
| 25 | `theorem` | [ne_empty_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/ne-empty-of-mem.md) | 160 | `result-track:d6b6969d40e2be2f1dde0377a92a80a7caf79b83e063d228a3ab80683e1f9a2d` |
| 26 | `theorem` | [empty_not_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/empty-not-mem.md) | 165 | `result-track:ac8b7fd6354fecf2f4b2d29e56b6e0717eabc3c24fcb7a0c8baf7c4812322f8d` |
| 27 | `theorem` | [le_sup_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/le-sup-iff.md) | 170 | `result-track:dab74563c823ec04a218ddfc5797680593cb75fd271c2425f7dd31f0021869cc` |
| 28 | `theorem` | [union_mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/union-mem-iff.md) | 175 | `result-track:748ebb6b092d1f0b4bee497106738445f0cbce4f4dcb22cca4fb3f99d12542a9` |
| 29 | `theorem` | [mem_or_compl_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/mem-or-compl-mem.md) | 179 | `result-track:46cf274f8cadf53f37a3fe09bdcbbbe7de2702d18cd3dd629fe9e11d1f991519` |
| 30 | `theorem` | [em](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/em.md) | 183 | `result-track:1c0a35710fcc9d1b7c778785889aed7a678e00de0484228c7345791438f86108` |
| 31 | `theorem` | [eventually_or](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/eventually-or.md) | 187 | `result-track:a4499110130d69bf31585b59eab18a5e6c97769687780170d6dcdee27972283b` |
| 32 | `theorem` | [eventually_not](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/eventually-not.md) | 191 | `result-track:dc1438957d2be2f80a6559ee1f25f9be49fa3917a485b8d2e33a85604094cef6` |
| 33 | `theorem` | [eventually_imp](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/eventually-imp.md) | 195 | `result-track:b3672d8c8707ae910dccfb8fde941c7fff01b32c32f92f55db1ef1d8652ed048` |
| 34 | `theorem` | [finite_sUnion_mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/finite-sunion-mem-iff.md) | 199 | `result-track:1036b741c3e18fa193fe6878c97f2bea7decfd9b98aee06839d3c0b3d0fa96d2` |
| 35 | `theorem` | [finite_biUnion_mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/finite-biunion-mem-iff.md) | 204 | `result-track:ad203afdf8c7d5d70b81fdda04874114ea2392228aa5ee2afb425a315af41533` |
| 36 | `def` | [map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/map.md) | 210 | `declaration-track:55504c5b6bf33a5fe26a22152090d2a2fa3a795da0135a9a5ee41bb3ba51e3ae` |
| 37 | `theorem` | [coe_map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/coe-map.md) | 215 | `result-track:5ade4d2e439c753cce5d855bd9d0839d59317ae32fed8f8543cd3b0b0e829086` |
| 38 | `theorem` | [mem_map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/mem-map.md) | 220 | `result-track:fa392b86e889404db6b13110927bfd8cb6a44cf93aaf51b71f22c4ef892ae0d2` |
| 39 | `theorem` | [map_id](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/map-id-source-edition-2.md) | 225 | `result-track:d31c6c822b68dd3fb3567c4224fb4d5f8940372cec17739b61cbcf6b1efcd987` |
| 40 | `theorem` | [map_id'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/map-id.md) | 230 | `result-track:0e0f536485d1c55a9b0847e18585b8164af51623e2811c665b578fc7ef832d7e` |
| 41 | `theorem` | [map_map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/map-map.md) | 235 | `result-track:bcbf90d116287d8078fbada641cd4eba55370f4c11c9a8b4f89bb2f260c4ec25` |
| 42 | `def` | [comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/comap.md) | 242 | `declaration-track:935d3b3bc1b95038f584db59c6ba2163e1cc535125ceb4ca4ead8dca1a4a575b` |
| 43 | `theorem` | [mem_comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/mem-comap.md) | 251 | `result-track:6692bb42a6dcb94d28f462dc3843a7fd129af2cd33e72a463d387b32642b6825` |
| 44 | `theorem` | [coe_comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/coe-comap.md) | 257 | `result-track:30ad19b14e074b9bde8ac6729860aa5a6deb3c5ea7b4559dbbe7346bfa726b19` |
| 45 | `theorem` | [comap_id](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/comap-id.md) | 263 | `result-track:4c5f5e13213b5174e55bf09fec79ce0fad23332d0a1e8395d0b433e885412622` |
| 46 | `theorem` | [comap_comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/comap-comap.md) | 270 | `result-track:748eb2ff80cee94ffbf83cc013985c894e69d206ab8c96a7f558bde2505adc49` |
| 47 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/instance-source-edition-5.md) | 280 | `declaration-track:9cea3ace21a0939fed25f51a6884d6b5572151052b3833c605e20be29708e0ae` |
| 48 | `theorem` | [mem_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/mem-pure.md) | 284 | `result-track:52e9ca40c839dd3ef49d334da83667d03fae1dfa8841edcc927badf4092b5a50` |
| 49 | `theorem` | [coe_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/coe-pure.md) | 289 | `result-track:f9ef2fbf5ae0034bc241dfbf8169bf73aa354163c8e1dd800217716c0e809302` |
| 50 | `theorem` | [map_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/map-pure.md) | 294 | `result-track:67de96b12f4d31840fc4bc6aa11cf906a1ad10417d75ef8704633818714cae81` |
| 51 | `theorem` | [comap_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/comap-pure.md) | 299 | `result-track:32dc1a0345332b105c52b5dd71901d1b0146fbd1c98596b5207bab40e6f58fa4` |
| 52 | `theorem` | [pure_injective](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/pure-injective.md) | 306 | `result-track:b445ca0b0c5f85656942f0be1a178bf5f0b7c4399e88d7d6dfc4b9909bec6809` |
| 53 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/instance-source-edition-6.md) | 310 | `declaration-track:f69cdfe17258f9505635b2a9b4ad8999029790343c6dff0f52883c88a9d66a00` |
| 54 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/instance.md) | 313 | `declaration-track:210a3c68192a0eb09296cdf47e709b07f37688a90adb1e97a7703e5ef3864aa2` |
| 55 | `theorem` | [eq_pure_of_finite_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/eq-pure-of-finite-mem.md) | 316 | `result-track:7c65cb924ce10aa1ada673b0be7b621084404d523652e04da5286a0e1252097e` |
| 56 | `theorem` | [eq_pure_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/eq-pure-of-finite.md) | 322 | `result-track:e7a4527d0ad6992977f4e7e08f78fb1993e4de0e820abe062195c06eb9cd11f4` |
| 57 | `theorem` | [le_cofinite_or_eq_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/le-cofinite-or-eq-pure.md) | 326 | `result-track:83e8e7599f842760d27d83eff2fb1ac6346d500e1f273adb6d15649bdff62b76` |
| 58 | `def` | [bind](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/bind.md) | 335 | `declaration-track:cb4af346ba3ca6e830a47ebce3563631b95e6d5dcdf32e1f726909dfa9d86b23` |
| 59 | `instance` | [instBind](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/instbind.md) | 340 | `declaration-track:c0cbe294dd567fb45320b2f3f32c858efb271773937c783d326085bfa058405d` |
| 60 | `instance` | [functor](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/functor.md) | 344 | `declaration-track:0d9cdd0acb02f6884c706b6b31faf8bac289eb46f34596f8f7e695396b90e9ff` |
| 61 | `instance` | [monad](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/monad.md) | 347 | `declaration-track:a5dae7d1a6d79d7314ec462240853440b7b2b875cce02b51300dce30581b3eb4` |
| 62 | `instance` | [lawfulMonad](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/lawfulmonad.md) | 354 | `declaration-track:82e0eeb474c003a0cfcf884b6fbda0ee51c274ff6bb9569ecdb3ee79f9adc59e` |
| 63 | `theorem` | [exists_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/exists-le.md) | 369 | `result-track:7245da6f9ec7f68cb07f1b9c45d31b7c29b5b6b86a43405c745736399d1f2d9b` |
| 64 | `def` | [of](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/of.md) | 380 | `declaration-track:74b9adb5dcd86d92cb22ce8fd0e41cbe13c5f4e8272b1f0c73c63d274fc7d957` |
| 65 | `theorem` | [of_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/of-le.md) | 384 | `result-track:0d2451c362dc79c8bc509c335017abc75a6f4dfeff6431a318e9c0c887da48d9` |
| 66 | `theorem` | [of_coe](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/of-coe.md) | 388 | `result-track:fcbad5d1b1c1f3bea1d79442f72d416d7909436a286722677c467e36d3780bb3` |
| 67 | `theorem` | [exists_ultrafilter_of_finite_inter_nonempty](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/exists-ultrafilter-of-finite-inter-nonempty.md) | 392 | `result-track:692745d7c7db65fb8f2cff0b0830aea9e4024c981ca76cf34971c4ce87fc8dca` |
| 68 | `theorem` | [isAtom_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/isatom-pure.md) | 409 | `result-track:bdf977246daadfee432010c48859ba6ec21392cf8c7f426d7f9999b3044690c5` |
| 69 | `theorem` | [NeBot.le_pure_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/nebot-le-pure-iff.md) | 413 | `result-track:165d22d81102750c8e350c0c5f71839ddf94669e249bd80d5a24fd3973cc3346` |
| 70 | `theorem` | [lt_pure_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/lt-pure-iff.md) | 418 | `result-track:e356a74f7fbf246dc6682d3f2b8781d7b5cb96155dde7cc49da734eae588abed` |
| 71 | `theorem` | [le_pure_iff'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/le-pure-iff.md) | 422 | `result-track:fc77b6dcb34f13b3176bd529df1cc4953b2c6593e1f72fd42588855e4a10ce4a` |
| 72 | `theorem` | [Iic_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/iic-pure.md) | 427 | `result-track:abc85a28480aff7e5b4bab311971367327676fc591f2e88f33cf9e1dd5dce2aa` |
| 73 | `theorem` | [mem_iff_ultrafilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/mem-iff-ultrafilter.md) | 431 | `result-track:19148dda6458f1a0b298010eb2eaa9e49fe42917de811d4e8493e1207265b829` |
| 74 | `theorem` | [le_iff_ultrafilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/le-iff-ultrafilter.md) | 438 | `result-track:d36d98c7edeedb0522dfe84b74976a472a2b89fd2f3d1424ab6cfbffce1463b5` |
| 75 | `theorem` | [iSup_ultrafilter_le_eq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/isup-ultrafilter-le-eq.md) | 443 | `result-track:fef679c1ad2393d05000587132cbea146cfab21e6e674cc9b2fcab614d0d2973` |
| 76 | `theorem` | [tendsto_iff_ultrafilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/tendsto-iff-ultrafilter.md) | 449 | `result-track:4c75c61ba2a878b68d7a4577801d9c73ce6bd574cfb5431d2c94ad32798ca60b` |
| 77 | `theorem` | [exists_ultrafilter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/exists-ultrafilter-iff.md) | 454 | `result-track:7b39543dfdf5d429405f2c638c8a135c3449ae35fa9806a805e407c1aa10d177` |
| 78 | `theorem` | [forall_neBot_le_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/forall-nebot-le-iff.md) | 458 | `result-track:17f8871cc50fc5815ab690a8f89c105855f63ada7454ce46ac4d686c86849bc0` |
| 79 | `def` | [hyperfilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/hyperfilter.md) | 470 | `declaration-track:8f7fe1cd303139bd4160d6e359b49cd90a51abee1bc3e1f47ff03f8b631e9e4a` |
| 80 | `theorem` | [hyperfilter_le_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/hyperfilter-le-cofinite.md) | 476 | `result-track:55a0f3d848259d4d535269d4cbcecb8edf530791cd254092f7d028b63563448e` |
| 81 | `theorem` | [_root_.Nat.hyperfilter_le_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/root-nat-hyperfilter-le-attop.md) | 480 | `result-track:c75b856afce172f8048083d9559b2571a061512c405dcba9e44a8a977b48306e` |
| 82 | `theorem` | [bot_ne_hyperfilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/bot-ne-hyperfilter.md) | 484 | `result-track:75cbadf4ea99b007defb85c906a6eb4611e3890fb25ddd02f22f766b2e84f869` |
| 83 | `theorem` | [nmem_hyperfilter_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/nmem-hyperfilter-of-finite.md) | 488 | `result-track:fca5b2358717c3759f01737ada84ddb1bd876c3e594fcf2e37f4f51cf040959d` |
| 84 | `theorem` | [compl_mem_hyperfilter_of_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/compl-mem-hyperfilter-of-finite.md) | 495 | `result-track:2b3f04ce976617a939c0e3642c5423ddd5540cd59878ab79a3a7f71268be6e9a` |
| 85 | `theorem` | [mem_hyperfilter_of_finite_compl](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/mem-hyperfilter-of-finite-compl.md) | 502 | `result-track:2d59a940530cfc1a69d6d50adf7e9b70314b2f43d7789a25e8a13656ff1be182` |
| 86 | `theorem` | [comap_inf_principal_neBot_of_image_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/comap-inf-principal-nebot-of-image-mem.md) | 516 | `result-track:f3522cf7c6b4f99feb6863def6aa76cd8f9289f252bc53c2871fe21d8a4cd8c8` |
| 87 | `def` | [ofComapInfPrincipal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/ofcomapinfprincipal.md) | 521 | `declaration-track:97768102093b6ae0b8e73e0eb1b571990d8caa87438ab487b8cf5de08fcee440` |
| 88 | `theorem` | [ofComapInfPrincipal_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/ofcomapinfprincipal-mem.md) | 525 | `result-track:cfd8adaf28af025e53bde9874fa5d32f9800cf226db9662da57da12f786ec541` |
| 89 | `theorem` | [ofComapInfPrincipal_eq_of_map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterUltrafilter.lean/declarations/ofcomapinfprincipal-eq-of-map.md) | 532 | `result-track:62ef1c9dc10092743948d838cf25a5cd52f1d8cef9e6f7e13399a2579e28fb90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91ab9ee5e4ecb2adaf3bd86b862c1aa8a04569bfcaf2271de4b3499aabbf9c4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Ultrafilter/Variant40023f49a1c453995f5ec7788dc1b4dd9b8bbd3329bbdd9e040bf754a3e7bf16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
