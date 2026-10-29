# Verification target: Take Drop Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7072742fea8da6891a2adcb222fb663149dcf6cf",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7072742fea8da6891a2adcb222fb663149dcf6cf`.

Source path: `GRWTSK/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Div.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [take_cons](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-cons.md) | 45 | `result-track:ecb54ce446f3a4c9515b0f9affa55a6ba60f3e8a78ff1a84bb15ea8e2e2f42ae` |
| 2 | `theorem` | [drop_cons](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-cons.md) | 50 | `result-track:a5bbf80921771429c27a8fde60c66d03babf16415e1e6c6a61e517fc137ff567` |
| 3 | `theorem` | [drop_one](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-one.md) | 56 | `result-track:2c73a992fd1b85322e82b1bb0a196648440e72251d3a2f0799443fd6ce3fa525` |
| 4 | `theorem` | [take_append_drop](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-append-drop.md) | 60 | `result-track:4df897cb822f4306cdcfbca00f3c81b9ff2d9127c4e7fdbcc13f1532a7535843` |
| 5 | `theorem` | [length_drop](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/length-drop.md) | 65 | `result-track:f366aef420f3a3193cf14b94416f39d92a6be48ef6bd305d4573242f230577a7` |
| 6 | `theorem` | [drop_of_length_le](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-of-length-le.md) | 72 | `result-track:947df639800317c77a7def39fe7d67793c8605b15792e69d84f448d29083a1d8` |
| 7 | `theorem` | [length_lt_of_drop_ne_nil](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/length-lt-of-drop-ne-nil.md) | 75 | `result-track:7c189880b07f49d05eb2eaf24301ff84c3288491a1ca506266e407bd552e3f3c` |
| 8 | `theorem` | [take_of_length_le](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-of-length-le.md) | 78 | `result-track:bd1651587a6c16829593589a78dcb6604cafebcfc16b0ff43b1efbf1c9552447` |
| 9 | `theorem` | [lt_length_of_take_ne_self](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/lt-length-of-take-ne-self.md) | 82 | `result-track:6a91b9403f3f8bd75083630a21b7e2f49bd64659a6ac6a3d811631141cc45ae2` |
| 10 | `theorem` | [drop_length](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-length.md) | 85 | `result-track:70ad7f32238e836790fb40b8edd736e829d1b32ac1868c0008b5ef4ccf1f4d30` |
| 11 | `theorem` | [take_length](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-length.md) | 87 | `result-track:0f67709571c8c8a74893fcab13d20d36f26515e64ac201f6a4566ded11f82487` |
| 12 | `theorem` | [drop_eq_getElem_cons](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-eq-getelem-cons.md) | 89 | `result-track:e4a7fdfc1d9201b3655c6160a12d488a4381cddde1bd3fa30cfc371deb5539f1` |
| 13 | `theorem` | [getElem?_take_of_lt](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/getelem-take-of-lt.md) | 93 | `result-track:1264955ae46b0f451ae10262df1374930bb7be8295517865e5ddaa27357ba0f1` |
| 14 | `theorem` | [getElem?_take_of_succ](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/getelem-take-of-succ.md) | 105 | `result-track:c439ea40f83c61f29644ff6911ab43fd4858ea4e6ac63879bce30d1553380f8e` |
| 15 | `theorem` | [drop_drop](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-drop.md) | 107 | `result-track:9be8fc74bea091760432da6056fddcd1c22583406511d9a38fde95ba748f2d94` |
| 16 | `theorem` | [drop_add_one_eq_tail_drop](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-add-one-eq-tail-drop.md) | 116 | `result-track:ee82f58139b27b8fdae9345222944d78ab4361fe52e20f5bd2769b35b477087c` |
| 17 | `theorem` | [take_drop](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-drop.md) | 119 | `result-track:e349ca748adf629c6679da3eebb8b82abaae974bbf1cccc3606be277252ac2ad` |
| 18 | `theorem` | [tail_drop](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/tail-drop.md) | 125 | `result-track:54752eb80a97626c49a192b39533f2d206bc0d141b8d5a08517e3b1d54562e82` |
| 19 | `theorem` | [drop_tail](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-tail.md) | 134 | `result-track:b017788e5cfbcb53ed55cf9b96baa1fbfed9c88db5ac4cb5f3fbfd68d701ca58` |
| 20 | `theorem` | [drop_eq_nil_iff](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-eq-nil-iff.md) | 138 | `result-track:fe5db0d3a76d75f4c85ad5cf9b5383d8b78e4fd60f1a339ab5f733d4529ddd0f` |
| 21 | `theorem` | [take_eq_nil_iff](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-eq-nil-iff.md) | 151 | `result-track:4128a1d40d77c419c0c41689d4e63f348265a316652e344fa564179fcd0fd832` |
| 22 | `theorem` | [drop_eq_nil_of_eq_nil](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-eq-nil-of-eq-nil.md) | 154 | `result-track:4fcebe4e8f5e2c8caf40be46f3f140de823111f615ea0a1145bcb6ddd8027e14` |
| 23 | `theorem` | [ne_nil_of_drop_ne_nil](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/ne-nil-of-drop-ne-nil.md) | 157 | `result-track:3f928973e30aef046a9d9b17d220434212dd58ffff2160541619428abe98d17d` |
| 24 | `theorem` | [take_eq_nil_of_eq_nil](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-eq-nil-of-eq-nil.md) | 160 | `result-track:72eef9db1c309d56acb6b40028a77a39a81c38168becb0ac286af00fcdb90425` |
| 25 | `theorem` | [ne_nil_of_take_ne_nil](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/ne-nil-of-take-ne-nil.md) | 163 | `result-track:e48c42ce665707740c82a42c08a2e3300ec68c6433420c3b969978903e44abcc` |
| 26 | `theorem` | [take_set](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-set.md) | 166 | `result-track:57e79ecfcd1c259a63757bc066f1fb5c358b70a047b147d7750ecd01538ecaae` |
| 27 | `theorem` | [drop_set](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-set.md) | 175 | `result-track:a8ad035e50402751e3a4d2b7ce51a27b0a453ebc583a4cb5c7a1c44f5d73e8b1` |
| 28 | `theorem` | [set_drop](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/set-drop.md) | 189 | `result-track:c169ca9acb1c1f41b768b1c7f6cf146bbe93638dc97575aa3bd07ea04e8cf020` |
| 29 | `theorem` | [take_concat_get](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-concat-get.md) | 194 | `result-track:549e063ebdbfc4b020ac0dc4f09993b3638e48b804f9e33762bb4180b84355fb` |
| 30 | `theorem` | [take_append_getElem](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-append-getelem.md) | 199 | `result-track:1bcf64c9f4befd8b38230e21d28b035cbef91c1717b56c56a6dcfa2291aca08d` |
| 31 | `theorem` | [take_succ_eq_append_getElem](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-succ-eq-append-getelem.md) | 203 | `result-track:2cddda293a696c9812defe4bd28a77bf71eb8378faa8e60138065edd27357c6e` |
| 32 | `theorem` | [take_append_getLast](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-append-getlast.md) | 208 | `result-track:3f78a2239dced37859f89382455bc6febf88f5ab74da8d6a8ed29b6430cfd7fc` |
| 33 | `theorem` | [take_append_getLast?](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-append-getlast-source-edition-2.md) | 215 | `result-track:fff12dac0830a1c112748254a89bfec792e71bebf466b3ba4d66bab29e73bc95` |
| 34 | `theorem` | [drop_left](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-left.md) | 222 | `result-track:1a9791fea8be7613c8833277998d434187ab86bebb39a6d592bd58f2f2de53a0` |
| 35 | `theorem` | [drop_left'](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-left-source-edition-2.md) | 227 | `result-track:43a06d7ee2974904966a9f0a07a88859b98fec8d3810db54ab0a74bd2add1d87` |
| 36 | `theorem` | [take_left](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-left-source-edition-2.md) | 230 | `result-track:5eb734fc9eff5fe7b167141e5a9da544b736f2e936efeb37c8a750ee755c3e3b` |
| 37 | `theorem` | [take_left'](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-left.md) | 235 | `result-track:09ac01749c14edf49a26502e0278749ad797a8366ed4a4d93b6bfa45cb038de3` |
| 38 | `theorem` | [take_add_one](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-add-one.md) | 238 | `result-track:5f06cb6a7f818cf6fba4230eb99e8da9d8ac5f79bc3238cce7d8bb4dc0b22366` |
| 39 | `theorem` | [take_succ](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-succ.md) | 248 | `result-track:5cdf52518da3d7eb963085067a2813da1add9110f35ca4aa2786497ecc6f2dcd` |
| 40 | `theorem` | [dropLast_eq_take](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/droplast-eq-take.md) | 250 | `result-track:c9ee7b720c07362d3c1406fdb123aa60c9ece030686f2110d159ff3a665730ad` |
| 41 | `theorem` | [map_take](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/map-take.md) | 256 | `result-track:bee325e8b0ddf5c20413b8843edd0b86f742c143916df4ff240d328e5cb59e7c` |
| 42 | `theorem` | [map_drop](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/map-drop.md) | 262 | `result-track:85c89fab8f76792d8655a5b2e16690c78981e886907079fd178bbafe55ddc7bc` |
| 43 | `theorem` | [drop_eq_extract](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/drop-eq-extract.md) | 270 | `result-track:804c42c2a9c73def39b284dc401c90fb02e2e0f9ab46233574568f3422b1fc14` |
| 44 | `theorem` | [takeWhile_cons](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-cons.md) | 283 | `result-track:fb8427a797a7a645b9b975b39aaee9b1610057091184b5a24b23fddd4336bc4d` |
| 45 | `theorem` | [takeWhile_cons_of_pos](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-cons-of-pos.md) | 288 | `result-track:e665968f1869742e85dd2d9772094234fec6a878b8239026a2bc6113c023bbdf` |
| 46 | `theorem` | [takeWhile_cons_of_neg](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-cons-of-neg.md) | 292 | `result-track:dad1fd1e5f6d5858f9edb6482e40da281897e83ea01adce15314134d1059b605` |
| 47 | `theorem` | [dropWhile_cons](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-cons.md) | 296 | `result-track:a4a330cae615a081e7fadfcfbc1afae9b89de0f9fb81da90a1d1f8ae03905fd0` |
| 48 | `theorem` | [dropWhile_cons_of_pos](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-cons-of-pos.md) | 300 | `result-track:0401cd6a4b0f08a1b4c7cc30e551b854a5b58a49f9db3992158241df3efb749a` |
| 49 | `theorem` | [dropWhile_cons_of_neg](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-cons-of-neg.md) | 304 | `result-track:10f044b2690bbed32a9e169a7708769c764a1a7714f1724219bc478d735aabad` |
| 50 | `theorem` | [dropWhile_beq_eq_self_of_head?_ne](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-beq-eq-self-of-head-ne.md) | 308 | `result-track:e0117e3969d1b69a7365caba6e3bd138a3394ff307cc9aaf065a295324f61393` |
| 51 | `theorem` | [head?_takeWhile](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/head-takewhile-source-edition-2.md) | 316 | `result-track:e1d9d546ac53677fd0585dc907763833e7559da5ba75c603c25577e4aaec29bc` |
| 52 | `theorem` | [head_takeWhile](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/head-takewhile.md) | 323 | `result-track:9a19b12f1e272856591e415c6fc4c6b105db0ca605615b18c317b62029908977` |
| 53 | `theorem` | [head?_dropWhile_not](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/head-dropwhile-not-source-edition-2.md) | 332 | `result-track:de24fd3237559fda7083be64c916daf49e00d8df943ecae9a3e33e24d0a86274` |
| 54 | `theorem` | [head_dropWhile_not](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/head-dropwhile-not.md) | 341 | `result-track:8c269e733541070a1af7949c3f2c4a63e21ff7f79cd7a4181b1a718c8a370b47` |
| 55 | `theorem` | [takeWhile_map](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-map.md) | 345 | `result-track:3785a45d977c1cc93a2e61b9ffa8849de126d53aabf7276bcaaefe95503c4609` |
| 56 | `theorem` | [dropWhile_map](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-map.md) | 353 | `result-track:bfa54663783688c0ac0988fdbc843a2afd7d015324a019b7c17ab759065b62cc` |
| 57 | `theorem` | [takeWhile_filterMap](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-filtermap.md) | 361 | `result-track:cdecb9984825727f8d8d8d61779faa95c53fbde002850ffc2c9c31d8cf8fd3bb` |
| 58 | `theorem` | [dropWhile_filterMap](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-filtermap.md) | 373 | `result-track:de80af14e1241d0495339ea1f85961b93534613c2e258918e12dfec2198e06d4` |
| 59 | `theorem` | [takeWhile_filter](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-filter.md) | 385 | `result-track:86a0450b15b6d640eeffc67b4ce98ecd2116d08696e595caeaf20b8c6bb7d9bc` |
| 60 | `theorem` | [dropWhile_filter](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-filter.md) | 389 | `result-track:651c52eb44b84db0bdbacb9b63916201bb0af96ad18fa590e48f9654ccf1fd32` |
| 61 | `theorem` | [takeWhile_append_dropWhile](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-append-dropwhile.md) | 393 | `result-track:32d1e62101551ae4515d3176f4aefac228050118f2e3a065af84fab6588c4608` |
| 62 | `theorem` | [takeWhile_append](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-append.md) | 398 | `result-track:37ce8fd127e69e1b7df2b6461c6471f6c58c9d88fbfbcd0cf5681f3dba53800e` |
| 63 | `theorem` | [takeWhile_append_of_pos](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-append-of-pos.md) | 410 | `result-track:58942fc9c8af2c9f5e3025216626750bd1ed2a5fec52a30c7fbecf02cf7f9524` |
| 64 | `theorem` | [dropWhile_append](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-append.md) | 416 | `result-track:25849f2410eca3b86c7861ef5632bee0bf87acec3cc859402bcfd337254ba1f6` |
| 65 | `theorem` | [dropWhile_append_of_pos](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-append-of-pos.md) | 425 | `result-track:8919ce839c9504b68aa39c4fc214bd20884dc3952748276088f7e40630e13dcd` |
| 66 | `theorem` | [takeWhile_replicate_eq_filter](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-replicate-eq-filter.md) | 431 | `result-track:c7ccf63d2dfe7de65a0282349a143cb80e2058ab56caa7803b55a80f8a5c7e89` |
| 67 | `theorem` | [takeWhile_replicate](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/takewhile-replicate.md) | 439 | `result-track:9392403da06f5eb66e67ffdc46551ccac975ae54d33dcf82728d0da8cdd2364b` |
| 68 | `theorem` | [dropWhile_replicate_eq_filter_not](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-replicate-eq-filter-not.md) | 443 | `result-track:0a58590078e4fea06912040b20999f3636bd9a252aa51f9c757ac6da7715108f` |
| 69 | `theorem` | [dropWhile_replicate](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/dropwhile-replicate.md) | 451 | `result-track:8a49321d73a44c3c4a91c88572597cace3535a6b93028176ac8203472400d414` |
| 70 | `theorem` | [take_takeWhile](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/take-takewhile.md) | 456 | `result-track:c46c949f26ec961077ef323009e31708f64261f1dd610062a964d7fd02bf4bd5` |
| 71 | `theorem` | [all_takeWhile](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/all-takewhile.md) | 463 | `result-track:44c362756f0e3ef60e49fe644a2480ad144857f378020ad65e57c9a12d4ad12d` |
| 72 | `theorem` | [any_dropWhile](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/any-dropwhile.md) | 468 | `result-track:04db56e341ea42fd250564123d4af38e2b1fd62650604396de33b870a7ec0958` |
| 73 | `theorem` | [replace_takeWhile](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/replace-takewhile.md) | 474 | `result-track:ea14b909379df4d4b429557b0b2f7bd43a3b7e0912de3a5b2cfba71cdacce25d` |
| 74 | `theorem` | [splitAt_eq](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/splitat-eq.md) | 488 | `result-track:cdd1343cd52aabb71a96740118138f5892912302c233aa4f8ed09beec5ae49d6` |
| 75 | `theorem` | [rotateLeft_zero](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/rotateleft-zero.md) | 494 | `result-track:c02de054b2281a905af66c0b9fe99794da014ff0adfbb03f98f8c36b13083548` |
| 76 | `theorem` | [rotateRight_zero](../../../../GeneralTopology/TakeDropNamespacedPublic.lean/declarations/rotateright-zero.md) | 502 | `result-track:047ead673333ffe380dd9dfe87f20d12b4220d8559523c4be64dfe909e5e3940` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa12624131dba553d3fa8dc6986e3de06410774b6848295646717d0ace33e26a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TakeDrop/Variant44f769e94c2acfaa9e34aa405421adc2af73d983626f6b87029e99dd4241fc4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
