# Verification target: Max Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b5cb5fa8b60245e7783fb11767a3567f6e5e406",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta8d630e3fdfa4fb13af046f4ac88c8edb195184113295e81a52911bb6f171960.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b5cb5fa8b60245e7783fb11767a3567f6e5e406`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta8d630e3fdfa4fb13af046f4ac88c8edb195184113295e81a52911bb6f171960.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Max/Varianta8d630e3fdfa4fb13af046f4ac88c8edb195184113295e81a52911bb6f171960.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [max](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max.md) | 38 | `declaration-track:7a88bb1267ef2fd1ecd8cd538b85182847780ed94315a5f4f841add4f56a6c70` |
| 2 | `theorem` | [max_eq_sup_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-eq-sup-coe.md) | 41 | `result-track:5912b14ce822c45c147a78d54950302970d4f99fd2a415280fe06f4722a7e706` |
| 3 | `theorem` | [max_eq_sup_withBot](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-eq-sup-withbot.md) | 44 | `result-track:287061421c42e7617665ba575f7bf16b6ddaad2cd59acfd75e9721cf9bb2d7f2` |
| 4 | `theorem` | [max_empty](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-empty.md) | 48 | `result-track:6b88fe49f2c8d5144fcfbe30b43b58dacd39bcfb8bc48fc1c8a8af0880833673` |
| 5 | `theorem` | [max_insert](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-insert-source-edition-2.md) | 52 | `result-track:15a929a344ded3eca59fceece55c5e770ad101842aa241a784378a62cecf5e4b` |
| 6 | `theorem` | [max_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-singleton-source-edition-2.md) | 56 | `result-track:bcde68c84cb737b38e8eb6b30ebbbf58c7a1326a5af5a16c6bf296d6c82a4835` |
| 7 | `theorem` | [max_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-of-mem.md) | 60 | `result-track:d3a8a9d70dd16377a5d1790195516595003fcf5ff86175a964aae002d65438f3` |
| 8 | `theorem` | [max_of_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-of-nonempty.md) | 64 | `result-track:3a6f6a39092271aabec44c886656b632affaad8940190a307aaabc6bd704e6c4` |
| 9 | `theorem` | [max_eq_bot](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-eq-bot.md) | 68 | `result-track:f4ce3b7046af13a699d7014dbd262b1191147db2f3dc19a57887e02066ebf5ce` |
| 10 | `theorem` | [mem_of_max](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/mem-of-max.md) | 74 | `result-track:11777411f8c61aa52ac269b5821ba894f6b43e154ee67171eacc501159255a60` |
| 11 | `theorem` | [le_max](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/le-max-source-edition-2.md) | 86 | `result-track:e613e29b76b62c4205c1000ee2580b0a69ad026c69c4c8dcc19a77837c7e4993` |
| 12 | `theorem` | [notMem_of_max_lt_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/notmem-of-max-lt-coe.md) | 89 | `result-track:71059b43f33f096962e13be606d4ea89a278c9e30bbef3670b20966bd0668bce` |
| 13 | `theorem` | [le_max_of_eq](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/le-max-of-eq.md) | 94 | `result-track:b2c03b227a839e9fc22dbbe050b97160c0410667005a086bab93c67f866652ad` |
| 14 | `theorem` | [notMem_of_max_lt](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/notmem-of-max-lt.md) | 97 | `result-track:25896bcb305fe010791b16c7c3306eb76d134fc72c8dbff5518c0e195c33ab34` |
| 15 | `theorem` | [max_union](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-union.md) | 102 | `result-track:b3097e0f587a4a473d5d16facb602d40070909b177e5f5cd92d93a9e607efe5c` |
| 16 | `theorem` | [max_mono](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-mono.md) | 105 | `result-track:b9869e1bbe42ad6af9777c8fde18c81dccdef85aa2f899b5aa08426ba12bae09` |
| 17 | `theorem` | [max_le](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-le-source-edition-2.md) | 108 | `result-track:b3bc6a4037df3377bbfb2117a14a8843d797cb38dbf35be69c6e820ae3fc72e6` |
| 18 | `lemma` | [max_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-le-iff-source-edition-2.md) | 113 | `result-track:ce4f5578576503db54f6298a1b013ae8c3ffa2820f14a2e9c0148a2f127acf89` |
| 19 | `lemma` | [max_eq_top](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-eq-top.md) | 117 | `result-track:2d0fa99a515b2c40f9ae0f313903abb0ed2f54f3580135294fa02bc2e7d9992e` |
| 20 | `def` | [min](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min.md) | 123 | `declaration-track:318a4bd210048ef779515179f0963fbb91f25c8d69e968093c032cd43cddadeb` |
| 21 | `theorem` | [min_eq_inf_withTop](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-eq-inf-withtop.md) | 126 | `result-track:87b4a4374c9e8a3ebdb7d9b16ae818f54a96825100a2d0de9b5f854f3f20cce1` |
| 22 | `theorem` | [min_empty](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-empty.md) | 130 | `result-track:26cf0a3a5b8f4014c85743077e49eddd679f3f4c093ce459eab2e0a7ad433feb` |
| 23 | `theorem` | [min_insert](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-insert.md) | 134 | `result-track:cb13277df2e056e66cc9bda5178be4295c1af2b0da19dad354a4ac3d8754a1e5` |
| 24 | `theorem` | [min_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-singleton-source-edition-2.md) | 138 | `result-track:44cb71e63b08d90f46754eb4ad8815326af9b1b3dede2fea9c15711d6fe21594` |
| 25 | `theorem` | [min_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-of-mem.md) | 142 | `result-track:970b0e07ca53b9a3c8c89991710e5bc7e3b4a46124433d73a5d66b548ffa47fd` |
| 26 | `theorem` | [min_of_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-of-nonempty.md) | 146 | `result-track:493edf28cd7494a526ad618d1c2aa3c8443ed5b59b3797831dd150e6032036d9` |
| 27 | `theorem` | [min_eq_top](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-eq-top.md) | 151 | `result-track:5684defb094ae1799324c21d94d1bd04f56a134a357c216df66822c92d8f885a` |
| 28 | `theorem` | [mem_of_min](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/mem-of-min.md) | 154 | `result-track:81786ee1e7e89c6a87cfa20285d67afd18bcf4bf83723848a77d9e007b955253` |
| 29 | `theorem` | [min_le](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-le.md) | 157 | `result-track:30da791f0e1bcee57fc4bbb60a37690942979386880e20773270c647acb283f1` |
| 30 | `theorem` | [notMem_of_coe_lt_min](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/notmem-of-coe-lt-min.md) | 160 | `result-track:62c67cf7b57ff481ce391d6643b5b3992fdcdc3f176bd1827dd387b5a245a57d` |
| 31 | `theorem` | [min_le_of_eq](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-le-of-eq.md) | 165 | `result-track:21bc9f8ba3263e6185e28216ed12fe59bfed6407d0c293f5cd0928bef804b74f` |
| 32 | `theorem` | [notMem_of_lt_min](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/notmem-of-lt-min.md) | 168 | `result-track:f5454f4c3adef632f05d4009c5a19351a45a3cac273987a64b8193b235228c39` |
| 33 | `theorem` | [min_union](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-union.md) | 173 | `result-track:5c24a8c2dd98a1957c01e31bf997767201dfc7f0c56ada97294978f4d7c8ad37` |
| 34 | `theorem` | [min_mono](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-mono.md) | 176 | `result-track:b6c749775fb359e538916cd2b8dafdad19b9d02ddfa14e5348512502ac215839` |
| 35 | `theorem` | [le_min](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/le-min.md) | 179 | `result-track:65b008b680ef1db95fceb5ad0f651771c422c299457013a9342577e459beb4c2` |
| 36 | `theorem` | [le_min_iff](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/le-min-iff-source-edition-2.md) | 183 | `result-track:d0bc3657324254c6f54ced850324e2ba33106c5e91ce59d216fed45d9b6c1647` |
| 37 | `theorem` | [min_eq_bot](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-eq-bot.md) | 187 | `result-track:2a4f167829fb00e490d91323f6b177d14d6aea30d12538085639985a991aba1c` |
| 38 | `def` | [min'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-source-edition-2.md) | 193 | `declaration-track:b44e6c376c093dd60465ce0d124e26adc11712cde2576d0ce52ede7b1f8ecbd8` |
| 39 | `def` | [max'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-source-edition-2.md) | 199 | `declaration-track:7e2189d4e59a92c5d1c70a432ae0a0608e6b07c0a75df6604e69adbc21491ac9` |
| 40 | `theorem` | [min'_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-mem.md) | 204 | `result-track:4c30f969fcc1bbd3bd4071f576010e425684e2b6af15c40b58d92fa819a712a9` |
| 41 | `theorem` | [min'_le](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-le-source-edition-2.md) | 207 | `result-track:78fdca60f1eebe4c46736658976c53a53bc3cb5f2fbb796d384ad6407db509c6` |
| 42 | `theorem` | [le_min'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/le-min-source-edition-2.md) | 210 | `result-track:b0d39a4aa717ad37ee6ab74643a5e9cc8b7ae270aa608d20556bd68edd4d2eab` |
| 43 | `theorem` | [isLeast_min'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/isleast-min.md) | 213 | `result-track:7d0a2bd57c5f74294f83d2dbf2292b32d5f39179de9ac2d1e6ad355c935b08fe` |
| 44 | `theorem` | [le_min'_iff](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/le-min-iff.md) | 217 | `result-track:94981f53d2d79ea360e80fbf32747d8e510dcb5e4b76fe0d3add3174fea89152` |
| 45 | `theorem` | [min'_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-singleton.md) | 222 | `result-track:29d8b6344b09fd2f90bd2850040fe1e582214ff49f91d2bd9d81dda13b5fd1b7` |
| 46 | `theorem` | [max'_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-mem.md) | 224 | `result-track:c3273943b8c789e54f212b07b92b03697ca43f8a6575f652b2299256bfa63685` |
| 47 | `theorem` | [le_max'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/le-max.md) | 227 | `result-track:3531762aa3da24ef10dea172ef4c4f4947f1ac92ade0f9d914159b3f6805520a` |
| 48 | `theorem` | [max'_le](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-le.md) | 230 | `result-track:acfe0f11585a301a6a915b37e83ce7484ee3a860c06788bbfb5e816ff8302d6f` |
| 49 | `theorem` | [isGreatest_max'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/isgreatest-max.md) | 233 | `result-track:2bb1d96c11437e2db06c754ddae85b28f2730ea6a2ffbef8ed6cb3bfe0837b46` |
| 50 | `theorem` | [max'_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-le-iff.md) | 237 | `result-track:0fb7970f8f43776f6e3473c2305fc30666cadca2a74d9ef8eed06613661a4442` |
| 51 | `theorem` | [max'_lt_iff](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-lt-iff.md) | 241 | `result-track:cb9bec7747df4c84e6e423ea1acdaf2752297498251b16b7da8370b7be67b5ac` |
| 52 | `theorem` | [lt_min'_iff](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/lt-min-iff.md) | 245 | `result-track:6513ef7c0dad9ed0c813cec2f45f57253345f9690b1bc5f81498abd3b4605115` |
| 53 | `theorem` | [max'_eq_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-eq-sup.md) | 248 | `result-track:8a30502812883a4ee47843d5e02794a0bc57706663cb840fd4c9bdfbe6c7e3c9` |
| 54 | `theorem` | [min'_eq_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-eq-inf.md) | 250 | `result-track:b453a60514ffdabde904480ea93ce118068eee3aa01137aeb821df981a71c740` |
| 55 | `theorem` | [max'_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-singleton.md) | 254 | `result-track:9cb15f5ff51cba7face84353cb951a6e0ad65d5cc2eb1533f5871484349e8f63` |
| 56 | `theorem` | [min'_lt_max'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-lt-max.md) | 256 | `result-track:7130d8ca10a857bb6f347a5efa5823e6d891a8be540b374c5a7f81a716709bfb` |
| 57 | `theorem` | [min'_lt_max'_of_card](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-lt-max-of-card.md) | 263 | `result-track:659dc991c70e553b69e197422670a4e9e775a95b5dc6bd9e93d4caa7a1fbc8c3` |
| 58 | `theorem` | [max'_union](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-union-source-edition-2.md) | 268 | `result-track:cd3bae686291bd77ff92ce363642a2f61ed62351580a8b4520edc027e93ca908` |
| 59 | `theorem` | [min'_union](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-union-source-edition-2.md) | 271 | `result-track:7d92c9da57d9b5959220bda8b8c4e7601ff8c90fb1a39820be139cc421d7cdff` |
| 60 | `theorem` | [map_ofDual_min](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/map-ofdual-min.md) | 274 | `result-track:2238a721792ec551611b5967c5a58c54e3e1ecf54017ac4a9835ceaeddea4aae` |
| 61 | `theorem` | [map_ofDual_max](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/map-ofdual-max.md) | 278 | `result-track:b9aa0544321e5109d16890e6829381b1fde73f78460bc1a7ba69358daf609d6c` |
| 62 | `theorem` | [map_toDual_min](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/map-todual-min.md) | 282 | `result-track:30994e2ea8692cc0a619fae9079eba0b1b59329833e76677b7cf0c4d252b4f90` |
| 63 | `theorem` | [map_toDual_max](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/map-todual-max.md) | 286 | `result-track:8d07cc18278433b445c4e20cb6a03179d9a50d63644ebd25cd9282f7511bf47b` |
| 64 | `theorem` | [ofDual_min'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/ofdual-min.md) | 290 | `result-track:17acc44a38d35abc0b6d15dfc8460630ace12a083ebe72a2fe179c89a532e7cf` |
| 65 | `theorem` | [ofDual_max'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/ofdual-max.md) | 295 | `result-track:32d7cdb9ac543f6fbe81078aa02d0abe918f7c6daaef24d7f24708cc50473ddc` |
| 66 | `theorem` | [toDual_min'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/todual-min.md) | 300 | `result-track:19d3a1c92f9b849bda0c63d5783b5eb085f7ae6f4b296d21929ff3d264989bbc` |
| 67 | `theorem` | [toDual_max'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/todual-max.md) | 305 | `result-track:3afe70f53be801c86940594816d006a9a6a9b4cea60ee19fc54624db3f213f16` |
| 68 | `theorem` | [max'_subset](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-subset.md) | 310 | `result-track:ab0b2e00566a608b8dc5bae56c250795b9a01b18d606ba890c097d72b30ebe86` |
| 69 | `theorem` | [min'_subset](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-subset.md) | 314 | `result-track:7945557907f3626b688d16b4d80adc106ad1e6fc0f3316b5245e222e21355ac3` |
| 70 | `theorem` | [max'_insert](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-insert.md) | 318 | `result-track:0215ee3528ea568f14038bb5da4f9f9986de7b28fad8525cdd5c32d8f9108103` |
| 71 | `theorem` | [min'_insert](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-insert-source-edition-2.md) | 324 | `result-track:d34dd791895528d2b7e559e611bc838e359f8509a34ab5bed5cc452985efdcdb` |
| 72 | `theorem` | [lt_max'_of_mem_erase_max'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/lt-max-of-mem-erase-max.md) | 330 | `result-track:ebcaa636f0a8287a1b0e277fda498cf129738560f86954bd4bda4bfebcf3638e` |
| 73 | `theorem` | [min'_lt_of_mem_erase_min'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-lt-of-mem-erase-min.md) | 334 | `result-track:8f62d5c86d9fa758d691f291692ebaead0f97f72d93ce59a5c7b081bf9b3389a` |
| 74 | `theorem` | [max'_image](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-image.md) | 340 | `result-track:28a4d84d155fc924ecde2e9b963b781c5b47a9ecd14b63537997358c222f1f57` |
| 75 | `lemma` | [Max Namespaced](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/map-finset-max.md) | 347 | `result-track:86cab8e6537a67197bb3c2ac601d35ecd6dec6e04b73c85a8dc3709aa9bcafd1` |
| 76 | `theorem` | [min'_image](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-image.md) | 353 | `result-track:7b8b432c91eadbe1e9a3af945444627d81bbd1dbca229296bd13f380a568c540` |
| 77 | `lemma` | [Max Namespaced](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/map-finset-min.md) | 360 | `result-track:e2dd48be59e9cf8c43596f20a3fe3ae52c7d1a6a09b6007746c45f4773401d85` |
| 78 | `theorem` | [coe_max'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/coe-max.md) | 364 | `result-track:f98e16bd0cbec2e43537d2c16afbd9762584a14736bc2afa813899add69cc37b` |
| 79 | `theorem` | [coe_min'](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/coe-min.md) | 367 | `result-track:1b8c7a85640568048c24aee521039628bb365317bcd5c38130989fab85d3bd2d` |
| 80 | `theorem` | [max_mem_image_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-mem-image-coe.md) | 370 | `result-track:87a4e3fab0e08bf3beb71311e2034eea865d1c7892dd64183cd2fadffa4fc231` |
| 81 | `theorem` | [min_mem_image_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-mem-image-coe.md) | 374 | `result-track:e0dc1034a3f40baf6aa14b70d5fd7b5e25417a132059275efc62eaa240165de3` |
| 82 | `theorem` | [max_mem_insert_bot_image_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-mem-insert-bot-image-coe.md) | 378 | `result-track:cc56c0968a238130028dd9c179b2ddade6aa7393917ac787999d8f9bd88b5b43` |
| 83 | `theorem` | [min_mem_insert_top_image_coe](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-mem-insert-top-image-coe.md) | 382 | `result-track:e0e6c03563873edabdf782a9c0cd30a41130f91ca88b92121aed1d5202350303` |
| 84 | `theorem` | [max'_erase_ne_self](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-erase-ne-self-source-edition-2.md) | 386 | `result-track:8cebe269bff3695ab175e5d53d3dfb37cd90b70a521367c0a0ec49fca6524f71` |
| 85 | `theorem` | [min'_erase_ne_self](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-erase-ne-self-source-edition-2.md) | 389 | `result-track:9bc5419ee074e58ed39662ede803b89db49c80b928f71038a4f1669d5c6e25b1` |
| 86 | `theorem` | [max_erase_ne_self](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/max-erase-ne-self.md) | 392 | `result-track:6a425b804e0cec9a8c48f0a9c27970725204da8dff8a40a56d353c68736d5f75` |
| 87 | `theorem` | [min_erase_ne_self](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/min-erase-ne-self.md) | 399 | `result-track:2446ee73bd59e9d862da38039fed4cad7824e0139209bac9274bb4f1dd54adaf` |
| 88 | `theorem` | [exists_next_right](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/exists-next-right.md) | 404 | `result-track:736d22617d7fd31561b53da757a3f27414713b76618cb4998f01222e6dc5fb3a` |
| 89 | `theorem` | [exists_next_left](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/exists-next-left.md) | 410 | `result-track:7a541a6f1826f3e60dfa914456db68820aa21c32e7ed824c8c67813cdb6995af` |
| 90 | `theorem` | [card_le_of_interleaved](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/card-le-of-interleaved.md) | 415 | `result-track:3c09d38a43242fd5b472b1bc7842fbfcbf0d609eb8f776335002a7f8cf2604f2` |
| 91 | `theorem` | [card_le_diff_of_interleaved](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/card-le-diff-of-interleaved.md) | 443 | `result-track:a64314dfc29a27f664f186c98e6cfa18e358010636cc9d0928ff7e3286043e9c` |
| 92 | `theorem` | [induction_on_max](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/induction-on-max.md) | 459 | `result-track:042cdce6abfb119b50c92563aa46b8f7986af7b8c5d563cc25c90ee7362496ca` |
| 93 | `theorem` | [induction_on_min](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/induction-on-min.md) | 475 | `result-track:0e50407d6444e1a0a2a1c71589b2538ce988f066581d0b2ac58bc4124811ef1c` |
| 94 | `theorem` | [induction_on_max_value](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/induction-on-max-value.md) | 492 | `result-track:0b10325a458a4e334919cb86c6aeeeb1d921874c9e4d58f7cd6a643d4920cf54` |
| 95 | `theorem` | [induction_on_min_value](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/induction-on-min-value.md) | 513 | `result-track:2d8838137059cde79111e67f9f6a8aa58c1b1511dee25f238c113ab80e04b316` |
| 96 | `theorem` | [exists_max_image](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/exists-max-image.md) | 523 | `result-track:4712523039647e2afdd12f6614938254e9ec4b7e109897bfa93bf1af789e0d9a` |
| 97 | `theorem` | [exists_min_image](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/exists-min-image.md) | 529 | `result-track:a671a46858fa6d4b57d867901ef8de88441c51b2f4d3b803d690ba2804938a5b` |
| 98 | `theorem` | [isGLB_iff_isLeast](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/isglb-iff-isleast.md) | 535 | `result-track:6022b397700eac5818455a67391ddb6c26ec11e5298fcd987ecdbd381dbb8523` |
| 99 | `theorem` | [isLUB_iff_isGreatest](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/islub-iff-isgreatest.md) | 544 | `result-track:61e13eab37ee5dd0308073d3021c34fe702066849d7263208cb86362f5d9f7ba` |
| 100 | `theorem` | [isGLB_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/isglb-mem.md) | 548 | `result-track:2a69f4486984918ae580ed14aaa43ee5ad2328cf9fc6bda1f7556dc113c10dae` |
| 101 | `theorem` | [isLUB_mem](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/islub-mem.md) | 553 | `result-track:6cbc52104aac24bdde61dd31ce60e90ea69ad7a5b7adf5576033458d06144ebd` |
| 102 | `theorem` | [Multiset.exists_max_image](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/multiset-exists-max-image.md) | 559 | `result-track:aa2bc0e29b28f235e70df07af9e0bb4f4e2975b8a99393dc821d0c90dff1c52c` |
| 103 | `theorem` | [Multiset.exists_min_image](../../../../../Combinatorics/EnumerativeCombinatorics/MaxNamespaced.lean/declarations/multiset-exists-min-image.md) | 565 | `result-track:2172403197b71051af3bdcaf87a06b8d8ccaae2cf6bc8629582f66e0c364bf86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbed786ca557102f6b389fcf677da0f691ec983fd4f3d894296d32d219af07e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Varianta8d630e3fdfa4fb13af046f4ac88c8edb195184113295e81a52911bb6f171960.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Max/Varianta8d630e3fdfa4fb13af046f4ac88c8edb195184113295e81a52911bb6f171960.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
