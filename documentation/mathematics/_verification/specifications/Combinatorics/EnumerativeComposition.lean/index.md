# Verification target: Enumerative Composition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34bd286bc74e0bc9295299ed82a8be1cb03b4328",
  "lexical_observation_count": 136,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/EnumerativeComposition.lean/index.md) · [Full source](../../../../Combinatorics/EnumerativeComposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34bd286bc74e0bc9295299ed82a8be1cb03b4328`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Composition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/composition.md) | 97 | `declaration-track:a1d51ada19e3200736425c0362ac8892aae54a428b23779966243a299c257d9a` |
| 2 | `structure` | [CompositionAsSet](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionasset.md) | 114 | `declaration-track:be3d6b2263de76b83e42e5cf401917aab7250b9e9c971b6d03568efb4a07be90` |
| 3 | `instance` | [(anonymous)](../../../../Combinatorics/EnumerativeComposition.lean/declarations/instance-source-edition-2.md) | 123 | `declaration-track:e1fbf97ac0e549a4fdfe7dfa032323d97daaf02e1e17e4817068f3617af093a9` |
| 4 | `instance` | [(anonymous)](../../../../Combinatorics/EnumerativeComposition.lean/declarations/instance-source-edition-3.md) | 139 | `declaration-track:e95df1f5adfb0fd76101010c63f17845fea116e656328f3f23e88a3bb9a2f57a` |
| 5 | `abbrev` | [length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length.md) | 143 | `declaration-track:7dce4a07dd4fd6a0048067409e9f1bde8e42905e877bbcb4716ea99d349a427e` |
| 6 | `theorem` | [blocks_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocks-length.md) | 146 | `result-track:4ef6972976a67f97f5daba0353bed6e6a3a91fbc28a72f5df6d6a45eff608dcb` |
| 7 | `def` | [blocksFun](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocksfun.md) | 151 | `declaration-track:51ecc7f770a8094981a6acc041cc9fea5e4175787d2efae858a64172c42ecd33` |
| 8 | `theorem` | [ofFn_blocksFun](../../../../Combinatorics/EnumerativeComposition.lean/declarations/offn-blocksfun.md) | 154 | `result-track:f1c6e5222540ee3eccb50af45a7b7c403f27be386f129f42c76612eb49f610f5` |
| 9 | `theorem` | [sum_blocksFun](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sum-blocksfun.md) | 158 | `result-track:a2abeb6652cc3ea3bd44d4fe9a52661c44841f1427d6e991c61829c1195a9742` |
| 10 | `theorem` | [blocksFun_mem_blocks](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocksfun-mem-blocks.md) | 162 | `result-track:36c617978f1b3be5bfe517a2feaaca245b3510498abb1ea3db2362374f9cc163` |
| 11 | `theorem` | [one_le_blocks](../../../../Combinatorics/EnumerativeComposition.lean/declarations/one-le-blocks.md) | 165 | `result-track:7f4b795c26dd56ad1a5828c19d938f1ced818a29613bb8854f90af57a6929977` |
| 12 | `theorem` | [blocks_le](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocks-le.md) | 168 | `result-track:9b7f580d75bdeb5fcb973fbd718979f15a5b16a3afca6320dc75e58ef235de14` |
| 13 | `theorem` | [one_le_blocks'](../../../../Combinatorics/EnumerativeComposition.lean/declarations/one-le-blocks-source-edition-2.md) | 173 | `result-track:e8de79e2d337f6aa8873023c4e163de219edc331bce5e618be698ac894cc44a6` |
| 14 | `theorem` | [blocks_pos'](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocks-pos.md) | 177 | `result-track:b4742627d84024344c4a6aa038cafa83054900167def3ed7ee4538760fed9920` |
| 15 | `theorem` | [one_le_blocksFun](../../../../Combinatorics/EnumerativeComposition.lean/declarations/one-le-blocksfun.md) | 181 | `result-track:5390a3bdb2792374d8a048b64605f787761617687e5ae95ec76b2b047459313a` |
| 16 | `theorem` | [blocksFun_le](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocksfun-le.md) | 185 | `result-track:337ad52216dd0534bf3736d77c2d7614af9366363bbb13541a4dd0b941658f49` |
| 17 | `theorem` | [length_le](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length-le.md) | 190 | `result-track:66d20770198db74b08bb9caa6afe4d604142b6c2d3c2fba561250f16cecd1d3d` |
| 18 | `theorem` | [blocks_eq_nil](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocks-eq-nil.md) | 195 | `result-track:c4efcd4e281002ca5e9af08f65065806faf17cb550e04ee2a04bc3ac623ab03e` |
| 19 | `theorem` | [length_eq_zero](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length-eq-zero.md) | 203 | `result-track:9dec4ce27a0ff39ce1534b6ecdcc413dda5d5d125079e89105da2ad22cd64806` |
| 20 | `theorem` | [length_pos_iff](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length-pos-iff.md) | 207 | `result-track:d86f4016c0cc61642935a573bf028c2e08787a6c0951a92dbaeeb7db802aac59` |
| 21 | `def` | [sizeUpTo](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto.md) | 213 | `declaration-track:9639e7cb5073d8ddc2634de4a2c3542f82c6971a28939e7de8f35e34b20a8db6` |
| 22 | `theorem` | [sizeUpTo_zero](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto-zero.md) | 217 | `result-track:99a71800625651cc3ff167cf0a3e6c4dfe604973fad5e406dddb49640cbd0051` |
| 23 | `theorem` | [sizeUpTo_ofLength_le](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto-oflength-le.md) | 219 | `result-track:59b7d6663f57afee99e626fc0281aeae4715a13dd08d51c4728f964ddb85664e` |
| 24 | `theorem` | [sizeUpTo_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto-length.md) | 225 | `result-track:93b609ce51310873026ddc31abc116b4f17a92aa2772bddda2318743ac8dbd2b` |
| 25 | `theorem` | [sizeUpTo_le](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto-le.md) | 228 | `result-track:cfb074e3a017fffed3c46629e605b502098302c97ccd55d346e59e4165fa089e` |
| 26 | `theorem` | [sizeUpTo_succ](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto-succ-source-edition-2.md) | 232 | `result-track:a4ff367b34083f164874a22119f20598fd02d63d4388c8a73ac8b011a4187aa4` |
| 27 | `theorem` | [sizeUpTo_succ'](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto-succ.md) | 237 | `result-track:42e81d468e7000ce58271862b33c94c4c9ac90aabc4a040fa6eb35a17c2485de` |
| 28 | `theorem` | [sizeUpTo_strict_mono](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto-strict-mono.md) | 241 | `result-track:115d0696767b6cd2d80bce9dddb63a2bd99c9df9f7d221772d47214ea239c7fe` |
| 29 | `theorem` | [monotone_sizeUpTo](../../../../Combinatorics/EnumerativeComposition.lean/declarations/monotone-sizeupto.md) | 245 | `result-track:cd8ccda22bb62062c667422cf0701ac3ef47662e835cc0d8fa8598f257865542` |
| 30 | `def` | [boundary](../../../../Combinatorics/EnumerativeComposition.lean/declarations/boundary-source-edition-2.md) | 251 | `declaration-track:d0c25af33258c9644356844c27d40680e9eead486b0dbf9042cd5c23b9ed223b` |
| 31 | `theorem` | [boundary_zero](../../../../Combinatorics/EnumerativeComposition.lean/declarations/boundary-zero-source-edition-2.md) | 256 | `result-track:d16cb28057da2d363e24f9838033cfb378e8526b1b315dc722582bb25b83d8f3` |
| 32 | `theorem` | [boundary_last](../../../../Combinatorics/EnumerativeComposition.lean/declarations/boundary-last.md) | 259 | `result-track:808d6c430ed291dddcede04b4cd7c99d2edc362c0eb35d63f9d45fe7bb28a0bb` |
| 33 | `def` | [boundaries](../../../../Combinatorics/EnumerativeComposition.lean/declarations/boundaries.md) | 265 | `declaration-track:96d9e77417496fa4fb5283484f29e8bd82430efe9c15366cd45d33a3ae99d476` |
| 34 | `theorem` | [card_boundaries_eq_succ_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/card-boundaries-eq-succ-length.md) | 268 | `result-track:34f5a7c79bc02783328188f172dd795e6284ee6a2ca797d635420a40afd2d11c` |
| 35 | `def` | [toCompositionAsSet](../../../../Combinatorics/EnumerativeComposition.lean/declarations/tocompositionasset.md) | 272 | `declaration-track:32f5cad07c484b43987574594a1855370053aaa23614e61513b7d40cf4928af1` |
| 36 | `theorem` | [orderEmbOfFin_boundaries](../../../../Combinatorics/EnumerativeComposition.lean/declarations/orderemboffin-boundaries.md) | 283 | `result-track:335bb327765fee3e4868fefaca1382be8263f28e1f8221209108a37c5c4b03b0` |
| 37 | `def` | [embedding](../../../../Combinatorics/EnumerativeComposition.lean/declarations/embedding.md) | 290 | `declaration-track:bf9a4235c8770f8cf67394187ac81060516171623aa1925430c4949c11e0c55e` |
| 38 | `theorem` | [coe_embedding](../../../../Combinatorics/EnumerativeComposition.lean/declarations/coe-embedding.md) | 298 | `result-track:e9e800ffb02139ab9d8e1b36240b8efe5f41218d5ec51d266f3c166e0d1ea704` |
| 39 | `theorem` | [index_exists](../../../../Combinatorics/EnumerativeComposition.lean/declarations/index-exists.md) | 305 | `result-track:40ddd7567c2ca27300966c089139eea7908af88c3f3d0436e79c92811af42366` |
| 40 | `def` | [index](../../../../Combinatorics/EnumerativeComposition.lean/declarations/index.md) | 314 | `declaration-track:302edb812e0b64dd35fcb86f6f2814184da68ef16959358e117b8f9b886130b5` |
| 41 | `theorem` | [lt_sizeUpTo_index_succ](../../../../Combinatorics/EnumerativeComposition.lean/declarations/lt-sizeupto-index-succ.md) | 317 | `result-track:0ce15146bb511666ffa7ff826cc307b1dd0bd655c33b0724f79b2719db645b89` |
| 42 | `theorem` | [sizeUpTo_index_le](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sizeupto-index-le.md) | 320 | `result-track:0062cdbe3938d906cafa6dc1801f75daa71cd365060d8fde145faaeddf019f40` |
| 43 | `def` | [invEmbedding](../../../../Combinatorics/EnumerativeComposition.lean/declarations/invembedding.md) | 337 | `declaration-track:e18ebaaf540de6b607a69de8c7ff8e1b406b0d6fea9b08407a1fe3e007929b3b` |
| 44 | `theorem` | [coe_invEmbedding](../../../../Combinatorics/EnumerativeComposition.lean/declarations/coe-invembedding.md) | 344 | `result-track:32a049e064fdb80a13b0999c13a0264de2dd52944ed992e46717cbb6c5969d9f` |
| 45 | `theorem` | [embedding_comp_inv](../../../../Combinatorics/EnumerativeComposition.lean/declarations/embedding-comp-inv.md) | 347 | `result-track:39ad61bf596814df143e990df9cead17f6bc4e72421cc1eab1ef183536c6f2fd` |
| 46 | `theorem` | [mem_range_embedding_iff](../../../../Combinatorics/EnumerativeComposition.lean/declarations/mem-range-embedding-iff.md) | 351 | `result-track:4f728549b5d5993bb9b725427b14f15d2dced1d3eee7efe3b13b554f8d5698d9` |
| 47 | `theorem` | [disjoint_range](../../../../Combinatorics/EnumerativeComposition.lean/declarations/disjoint-range.md) | 370 | `result-track:c89a3d18f684ee5d97c30723301d674240f1108f23f6d4a915015bf991a66841` |
| 48 | `theorem` | [mem_range_embedding](../../../../Combinatorics/EnumerativeComposition.lean/declarations/mem-range-embedding.md) | 386 | `result-track:4dc0e3c6770f80cdacfe5d1c32b10d3e9b212012195343132a44f795534e75ce` |
| 49 | `theorem` | [mem_range_embedding_iff'](../../../../Combinatorics/EnumerativeComposition.lean/declarations/mem-range-embedding-iff-source-edition-2.md) | 391 | `result-track:78d8dcb35450bc5710d7f890b844970afc56da60e58246a6382bd28e0f39ecfd` |
| 50 | `theorem` | [index_embedding](../../../../Combinatorics/EnumerativeComposition.lean/declarations/index-embedding.md) | 401 | `result-track:3c34502fed2701645993947c9a4b1ad13546ac4e1f1d4aa6c7c1fd60a13cb341` |
| 51 | `theorem` | [invEmbedding_comp](../../../../Combinatorics/EnumerativeComposition.lean/declarations/invembedding-comp.md) | 407 | `result-track:90bb5b9b445f8a3a83d876dabf4cf5f983b0c49d23cf0d71b975b0a7aa3e48a8` |
| 52 | `def` | [blocksFinEquiv](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocksfinequiv.md) | 413 | `declaration-track:d15b572217a63012bbd9f5d354951cc4f475a4e179edeb9ef9a0b632f49b580d` |
| 53 | `theorem` | [blocksFun_congr](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocksfun-congr.md) | 425 | `result-track:9249b63ad7390ae3911d9171a8d91376564e97de59c5f6c3cfb2b40063c1872b` |
| 54 | `theorem` | [sigma_eq_iff_blocks_eq](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sigma-eq-iff-blocks-eq.md) | 436 | `result-track:7d409669159254450ac315e2274fb6bc11f60bebb8f0b78313872916651cc226` |
| 55 | `def` | [ones](../../../../Combinatorics/EnumerativeComposition.lean/declarations/ones.md) | 451 | `declaration-track:0a826dc7eb1c08c6c7b821b29797313102d0224d051b99fa28bb193d8ebb1b83` |
| 56 | `instance` | [(anonymous)](../../../../Combinatorics/EnumerativeComposition.lean/declarations/instance.md) | 454 | `declaration-track:13cd8bd8ae547059212c6e740e25dde48b694dd51ba771847a7d87d499ae2cf5` |
| 57 | `theorem` | [ones_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/ones-length.md) | 458 | `result-track:bc7a60b986bca3ee2b3f35de91ce474c655665d1fac3fbf97b569d78ea102afe` |
| 58 | `theorem` | [ones_blocks](../../../../Combinatorics/EnumerativeComposition.lean/declarations/ones-blocks.md) | 462 | `result-track:9fc52d46c3d86bf22d922f112aa941daaf1cf8667dab2c787ff627f31a2809c6` |
| 59 | `theorem` | [ones_blocksFun](../../../../Combinatorics/EnumerativeComposition.lean/declarations/ones-blocksfun.md) | 466 | `result-track:b30f202e95be351408484dad49611f50dfec75847167908f291d4f81f990ecad` |
| 60 | `theorem` | [ones_sizeUpTo](../../../../Combinatorics/EnumerativeComposition.lean/declarations/ones-sizeupto.md) | 470 | `result-track:f48a2d3bf36984ffb65cec94865e2532a0fab151b3d410d5fe7f4fe3e26259e9` |
| 61 | `theorem` | [ones_embedding](../../../../Combinatorics/EnumerativeComposition.lean/declarations/ones-embedding.md) | 474 | `result-track:bcb55530c390a13cd707fc8d89b185bdaa2fcde800b62f7d9a039deb9d214fbc` |
| 62 | `theorem` | [eq_ones_iff](../../../../Combinatorics/EnumerativeComposition.lean/declarations/eq-ones-iff.md) | 479 | `result-track:fa5455ad3e811799c630d7d6df9e5436915216e2dff210749b67ca942610bc51` |
| 63 | `theorem` | [ne_ones_iff](../../../../Combinatorics/EnumerativeComposition.lean/declarations/ne-ones-iff.md) | 491 | `result-track:a0eea40185ea356e951f2ee0c545cb36e7f884556fa24125a886591335b72f3b` |
| 64 | `theorem` | [eq_ones_iff_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/eq-ones-iff-length.md) | 496 | `result-track:de18ad379efce885d9ccfc80ffacf918fda6fe9a0450eae3e5e10ba25964c0d7` |
| 65 | `theorem` | [eq_ones_iff_le_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/eq-ones-iff-le-length.md) | 515 | `result-track:39f157f22b106c5d7f690ce9640bf2db38a449184a8b37cc07992e3ae858a2bb` |
| 66 | `def` | [single](../../../../Combinatorics/EnumerativeComposition.lean/declarations/single.md) | 521 | `declaration-track:59e576ef19bcaaf2227dd57a0f6a666459f9d39eb8e3a6f979f661d9372c54a4` |
| 67 | `theorem` | [single_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/single-length.md) | 525 | `result-track:5e9aa4f474a3d0511cbe449ee0f4623decb2ee18ec41ea284cd46287158c0c41` |
| 68 | `theorem` | [single_blocks](../../../../Combinatorics/EnumerativeComposition.lean/declarations/single-blocks.md) | 529 | `result-track:ef13dca58f51ac01782f33276d1f93159ffec9ebb0c6223ebbce1e20bde6c017` |
| 69 | `theorem` | [single_blocksFun](../../../../Combinatorics/EnumerativeComposition.lean/declarations/single-blocksfun.md) | 533 | `result-track:55211c8c55d04b4c7ad2c056a76e91c5fdbf315699a35773ba4acb350e499194` |
| 70 | `theorem` | [single_embedding](../../../../Combinatorics/EnumerativeComposition.lean/declarations/single-embedding.md) | 537 | `result-track:79c669d3f0847238dc36105602b08f872125334e24ec04f38b6e32ddf1ad85ab` |
| 71 | `theorem` | [eq_single_iff_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/eq-single-iff-length.md) | 542 | `result-track:8576c86b78bd597871532ce904dffc83acec09ac5fa8694a84467072df2b0e4c` |
| 72 | `theorem` | [ne_single_iff](../../../../Combinatorics/EnumerativeComposition.lean/declarations/ne-single-iff.md) | 555 | `result-track:4f59ed738a3eca4cf211b28d59a5297e447b29f54b23f024b42809b2b50ee017` |
| 73 | `def` | [cast](../../../../Combinatorics/EnumerativeComposition.lean/declarations/cast.md) | 580 | `declaration-track:860508a9451d1d9c439eff34988e314dbc4315e34a6d8657fc7e5e382346ad8c` |
| 74 | `theorem` | [cast_rfl](../../../../Combinatorics/EnumerativeComposition.lean/declarations/cast-rfl.md) | 585 | `result-track:6fd22b188ca659d5bbe34e84a5c1fafe004293e0ac77fa981bc4b8e5b5eb3f49` |
| 75 | `theorem` | [cast_heq](../../../../Combinatorics/EnumerativeComposition.lean/declarations/cast-heq.md) | 587 | `result-track:c7cf55f1291c8e4844309c688dfd80b8f2a8133ade41f93e41b7b05f9e51099c` |
| 76 | `theorem` | [cast_eq_cast](../../../../Combinatorics/EnumerativeComposition.lean/declarations/cast-eq-cast.md) | 589 | `result-track:68cd3e5c1176f9ee15e4c5dd1dc4c6fd8e5216ef53328578913148dd8aa98ddd` |
| 77 | `def` | [append](../../../../Combinatorics/EnumerativeComposition.lean/declarations/append.md) | 596 | `declaration-track:0a96d9c0ec69975f90245caada36af34fcd50e9024adf40a8b4117e42a630910` |
| 78 | `def` | [reverse](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse.md) | 606 | `declaration-track:a33e768a6b1914922c19885d1f9c93a143387f48e1f06578e32caf2b25ad385a` |
| 79 | `lemma` | [reverse_reverse](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-reverse.md) | 612 | `result-track:219639995ca217c03beb60853cfeb07d4d09d705a03bb19ba17d4b7868f880ed` |
| 80 | `lemma` | [reverse_involutive](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-involutive.md) | 615 | `result-track:541ae8905bf322055dedfdec73798017bf109fa5d1610b7c76895b39632966c8` |
| 81 | `lemma` | [reverse_bijective](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-bijective.md) | 616 | `result-track:2b9161408276335e711eff1e5257ec9648e3055d1bd352bc7e068589977ae7b0` |
| 82 | `lemma` | [reverse_injective](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-injective.md) | 617 | `result-track:a68b2481c18dcd6f55df21f8f7ef19ebcac7a4b78b533bdedea5e85cff3e379a` |
| 83 | `lemma` | [reverse_surjective](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-surjective.md) | 618 | `result-track:86d09983ba01b9d0423325f9dd104048fa5d6c49f879db8cf1322b3d86d651d4` |
| 84 | `lemma` | [reverse_inj](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-inj.md) | 621 | `result-track:002a3160aab334bb15c46c6cfc79261fede15c9453d26ac5c5f7c35255e247d4` |
| 85 | `lemma` | [reverse_ones](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-ones.md) | 625 | `result-track:4f5cf9d6b4a23b14f676bff955b8a6767c503bed8384776bd45c0464b4476607` |
| 86 | `lemma` | [reverse_single](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-single.md) | 628 | `result-track:56ce445961027259428ce398a9172b0344b294c89422bc491571da5414672c59` |
| 87 | `lemma` | [reverse_eq_ones](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-eq-ones.md) | 631 | `result-track:e0570f648f8c4f9df04738f52e458ee56ae042473bf07f41005fbc733b7bb30a` |
| 88 | `lemma` | [reverse_eq_single](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-eq-single.md) | 635 | `result-track:26fb4536ef62e21e3a6496174d9e9e1fa53dd3cfebb79b19fbced8d7bd4217e8` |
| 89 | `lemma` | [reverse_append](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reverse-append.md) | 639 | `result-track:33bbcf77f919b5c9c08c53fbf6a66e31f92c080d31c45a64eb3a77dcb965b8a2` |
| 90 | `def` | [recOnSingleAppend](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reconsingleappend.md) | 646 | `declaration-track:193e351b4c9c8907511157c670fff81b6cab9c5d43809a7d355dd8bd18bc9cca` |
| 91 | `def` | [recOnAppendSingle](../../../../Combinatorics/EnumerativeComposition.lean/declarations/reconappendsingle.md) | 664 | `declaration-track:1fe16ad640a744ce7388f5155833af772258fc4aa874a99d1f768af1ab0c980d` |
| 92 | `def` | [splitWrtCompositionAux](../../../../Combinatorics/EnumerativeComposition.lean/declarations/splitwrtcompositionaux.md) | 691 | `declaration-track:ee92babb436a1d71b76b5fda1b7b1ee0c0ecdef0ed7949b2a731158448d32e1f` |
| 93 | `def` | [splitWrtComposition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/splitwrtcomposition.md) | 700 | `declaration-track:4d6bdc82b21994f0d8bbb894d138b8dc01d0aa84643ed5c2c215d59638a8b2d4` |
| 94 | `theorem` | [splitWrtCompositionAux_cons](../../../../Combinatorics/EnumerativeComposition.lean/declarations/splitwrtcompositionaux-cons.md) | 704 | `result-track:47cc8b99be9891ab4cd152b9e444c917398b6086c5198f7024d0f2dfb9844c85` |
| 95 | `theorem` | [length_splitWrtCompositionAux](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length-splitwrtcompositionaux.md) | 708 | `result-track:5f71dea4d98c50b348fa8cb206a30c5d8cf43c65fe94920f07ade5b7d4742fff` |
| 96 | `theorem` | [length_splitWrtComposition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length-splitwrtcomposition.md) | 717 | `result-track:a48bae9231e26aefb85eb03b72e6048792e445160ff6dd98a0a4b7ae7fcd12e0` |
| 97 | `theorem` | [map_length_splitWrtCompositionAux](../../../../Combinatorics/EnumerativeComposition.lean/declarations/map-length-splitwrtcompositionaux.md) | 722 | `result-track:4e8bdd9212f6567a91354ce797dada73356dcb35a2c4bf6dcbcbd7502d4befb4` |
| 98 | `theorem` | [map_length_splitWrtComposition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/map-length-splitwrtcomposition.md) | 736 | `result-track:04ebb440176c372926045722a6f2f48b6107f8750b67c4879011614122017102` |
| 99 | `theorem` | [length_pos_of_mem_splitWrtComposition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length-pos-of-mem-splitwrtcomposition.md) | 740 | `result-track:5441f5f1c0cbb723175350d709f52b6dcce2442769122f7bfdf745b9bf073580` |
| 100 | `theorem` | [sum_take_map_length_splitWrtComposition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/sum-take-map-length-splitwrtcomposition.md) | 747 | `result-track:471dd4a5fd7c8254867e770be638c0a29852c04f5c250d51768c1eabf4512c10` |
| 101 | `theorem` | [getElem_splitWrtCompositionAux](../../../../Combinatorics/EnumerativeComposition.lean/declarations/getelem-splitwrtcompositionaux.md) | 752 | `result-track:4fa3a7e9fd226bae27e1963605d4415cd1222aacc6e34cdc678e61738afb281a` |
| 102 | `theorem` | [getElem_splitWrtComposition'](../../../../Combinatorics/EnumerativeComposition.lean/declarations/getelem-splitwrtcomposition-source-edition-2.md) | 769 | `result-track:d37df946ceb1410f60d757168f9e948f96e5f4686761cf1b30a663ec4bf64ac1` |
| 103 | `theorem` | [getElem_splitWrtComposition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/getelem-splitwrtcomposition.md) | 774 | `result-track:09f277d47267a2411b3f622335d1613f22390a7f851f0d518ee6007737e9eec7` |
| 104 | `theorem` | [flatten_splitWrtCompositionAux](../../../../Combinatorics/EnumerativeComposition.lean/declarations/flatten-splitwrtcompositionaux.md) | 779 | `result-track:066c1042131367a3bffa6453adda1eb45df410222670ab23a2b65454b3b9c1a7` |
| 105 | `theorem` | [flatten_splitWrtComposition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/flatten-splitwrtcomposition.md) | 793 | `result-track:e370388680ce069b67cd6398fb77578ba474381564b5cb14e83252483aa95b67` |
| 106 | `theorem` | [splitWrtComposition_flatten](../../../../Combinatorics/EnumerativeComposition.lean/declarations/splitwrtcomposition-flatten.md) | 800 | `result-track:6b6930f92e9879eea88b384b1c6042ae4c31ff728c12699eecb61104eba3e335` |
| 107 | `def` | [compositionAsSetEquiv](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionassetequiv.md) | 817 | `declaration-track:1811cb1453d2e847ae105ea8183c56392df121d18bbdfd1ebaadf018e9f1ae43` |
| 108 | `instance` | [compositionAsSetFintype](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionassetfintype.md) | 862 | `declaration-track:b89af496c2e4daccdfa3a4a4fd958d9706ae3d9edb60cd117ab933fe2795c0af` |
| 109 | `theorem` | [compositionAsSet_card](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionasset-card.md) | 865 | `result-track:8b3dee149fbe8898bef1570734ed2ced5cce219483c2cc856368947cb6dc9215` |
| 110 | `theorem` | [boundaries_nonempty](../../../../Combinatorics/EnumerativeComposition.lean/declarations/boundaries-nonempty.md) | 874 | `result-track:0efeadc3f2255677e6f21e740c0559af7787d993a89da61c8e346118b7c22e3c` |
| 111 | `theorem` | [card_boundaries_pos](../../../../Combinatorics/EnumerativeComposition.lean/declarations/card-boundaries-pos.md) | 877 | `result-track:5dc30237a7f53d5b24ff118b7cc0b34ebabbb8c563223dab57e4af7f00ccdd12` |
| 112 | `def` | [length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length-source-edition-2.md) | 881 | `declaration-track:b919616d84ee9fff66b1200ef2ab8999e029e15e5357c079600827d1939aefa4` |
| 113 | `theorem` | [card_boundaries_eq_succ_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/card-boundaries-eq-succ-length-source-edition-2.md) | 884 | `result-track:ef5a677afbaf40d8f9f8e736919d078a44c09d2fe3089355a4fd609f8b9b29cb` |
| 114 | `theorem` | [length_lt_card_boundaries](../../../../Combinatorics/EnumerativeComposition.lean/declarations/length-lt-card-boundaries.md) | 887 | `result-track:ce86ecdbc56ea7b9e06ee763ce15f8fa743b1ca0105f21588554b8ac1f802355` |
| 115 | `theorem` | [lt_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/lt-length-source-edition-2.md) | 891 | `result-track:0ab98e0a76a0b26b8a8e8434a637d334df13656027c642a68889a1315d93a9f4` |
| 116 | `theorem` | [lt_length'](../../../../Combinatorics/EnumerativeComposition.lean/declarations/lt-length.md) | 894 | `result-track:02955ee32a612d4c5ac5759313933aa145c17501c54c5829ed21d31cadeddf26` |
| 117 | `def` | [boundary](../../../../Combinatorics/EnumerativeComposition.lean/declarations/boundary.md) | 898 | `declaration-track:bf82bbb5f2d13b9d9c2d351aa55bbb48678fc7a5139f3e228df7f4662d2b116d` |
| 118 | `theorem` | [boundary_zero](../../../../Combinatorics/EnumerativeComposition.lean/declarations/boundary-zero.md) | 902 | `result-track:88205c7f159553aa8ca6d9ec5d34bd6be09c6373e9b095eb700817d632fc7ae4` |
| 119 | `theorem` | [boundary_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/boundary-length.md) | 907 | `result-track:c99ce5f0f218b8ee41078016da7b0c94e4620b157f10b261ae6d7ef581d76a7f` |
| 120 | `def` | [blocksFun](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocksfun-source-edition-2.md) | 912 | `declaration-track:beb0b838bcdd68aa5527c9f4ef2fd44d8ff032fbbd5c9addac2bf03a7b52ceb7` |
| 121 | `theorem` | [blocksFun_pos](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocksfun-pos.md) | 915 | `result-track:432e6eeef93eeda26c9c285823ca9005c8f34b1fefb56c783f75c48b69cf5c5b` |
| 122 | `def` | [blocks](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocks.md) | 921 | `declaration-track:e7e0a036947831930112c3b31f3ca13120670c9e271c26ceab6d2f74c39daa10` |
| 123 | `theorem` | [blocks_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocks-length-source-edition-2.md) | 925 | `result-track:c4bd6fdc9b653b304b472d9570480e4bab6f6b317180d3554f657d3d37415fee` |
| 124 | `theorem` | [blocks_partial_sum](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocks-partial-sum.md) | 928 | `result-track:e284168d71fbb667aadd03c86ec0ce1877cb79b5e8ccb1e8cbbc15fcc7ec3ef4` |
| 125 | `theorem` | [mem_boundaries_iff_exists_blocks_sum_take_eq](../../../../Combinatorics/EnumerativeComposition.lean/declarations/mem-boundaries-iff-exists-blocks-sum-take-eq.md) | 940 | `result-track:624ff4c569a28b606133474f172c2e19f64e193caaaee56f06c675f828145e64` |
| 126 | `theorem` | [blocks_sum](../../../../Combinatorics/EnumerativeComposition.lean/declarations/blocks-sum.md) | 955 | `result-track:4af7ab686afabc6dd7dcf0f440f726fa01fe54bea93431b43a99a78b34291726` |
| 127 | `def` | [toComposition](../../../../Combinatorics/EnumerativeComposition.lean/declarations/tocomposition.md) | 962 | `declaration-track:c66cb7cbf46ceca17a64a4256c8ca065c513968e21c8136b706e0647a839af2f` |
| 128 | `theorem` | [Composition.toCompositionAsSet_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/composition-tocompositionasset-length.md) | 979 | `result-track:13df208b4fe5232b764646e7098a5cef815236e85dd46749561cede782ce69f1` |
| 129 | `theorem` | [CompositionAsSet.toComposition_length](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionasset-tocomposition-length.md) | 984 | `result-track:596c97d975c13c24ebbb12b099ec1c4eb28c4d3153e8a68113b4e1ccbbc9ac41` |
| 130 | `theorem` | [Composition.toCompositionAsSet_blocks](../../../../Combinatorics/EnumerativeComposition.lean/declarations/composition-tocompositionasset-blocks.md) | 989 | `result-track:fc2899df8c997f41a9a58607bdf0a1bb0f48be9dd65327ec2f1e1d21170f2fd4` |
| 131 | `theorem` | [CompositionAsSet.toComposition_blocks](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionasset-tocomposition-blocks.md) | 1011 | `result-track:1ac191f54cf4e09a8462c49d20ff54d56a0274a3a7f5c60d3fbfeadedd0a7fc5` |
| 132 | `theorem` | [CompositionAsSet.toComposition_boundaries](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionasset-tocomposition-boundaries.md) | 1016 | `result-track:646ac8111c273b49a2c2b7b60d3f698ec79cc8db35b2fa6b21d444b045506949` |
| 133 | `theorem` | [Composition.toCompositionAsSet_boundaries](../../../../Combinatorics/EnumerativeComposition.lean/declarations/composition-tocompositionasset-boundaries.md) | 1031 | `result-track:4afae7ef3251e5fd3b645a949a07948a217e73d79d8f06dd4b82671b9e35a676` |
| 134 | `def` | [compositionEquiv](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionequiv.md) | 1036 | `declaration-track:086b789f417314342dab08fbd07b94a35263da622df6a269b1f1b3657b3e376b` |
| 135 | `instance` | [compositionFintype](../../../../Combinatorics/EnumerativeComposition.lean/declarations/compositionfintype.md) | 1046 | `declaration-track:5e5c40a919d53e0492cc213ccc64535051ab42fa8203923900e694faa80ddc64` |
| 136 | `theorem` | [composition_card](../../../../Combinatorics/EnumerativeComposition.lean/declarations/composition-card.md) | 1049 | `result-track:c47e230d569c54b4802d10edf549bee96cbf0e8cd74ea7382b65a3b65b800c86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ba5eb47da4c81c84ab5d7ca957e2b55026aa7dd84978ebb95715aadfb15582e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
