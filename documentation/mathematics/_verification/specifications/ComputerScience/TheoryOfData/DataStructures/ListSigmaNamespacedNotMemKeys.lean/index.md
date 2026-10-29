# Verification target: List Sigma Namespaced Not Mem Keys

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1056ade0a28e1ac0b53320425ffa360eee446a9d",
  "lexical_observation_count": 108,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant4fc3f069b9bcbb52e3b7350c11d46a52b6a9c8265b27cb54eb8ea2b9b0bd7b21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1056ade0a28e1ac0b53320425ffa360eee446a9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant4fc3f069b9bcbb52e3b7350c11d46a52b6a9c8265b27cb54eb8ea2b9b0bd7b21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant4fc3f069b9bcbb52e3b7350c11d46a52b6a9c8265b27cb54eb8ea2b9b0bd7b21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Perm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Pairwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lookmap` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/keys.md) | 50 | `declaration-track:8db08da4d83312bcbcc3419190ef539b52955fa372e923c734dabac56f12b8ac` |
| 2 | `theorem` | [keys_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/keys-nil.md) | 54 | `result-track:2b98ea427c4b74a1d30a45d2b7bb06450d53d3be13a37c289c098d739eb5c6cb` |
| 3 | `theorem` | [keys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/keys-cons.md) | 58 | `result-track:841bdec01ef5a359a9eff96bd7d4bc76957ecfdc5adde283684ddcbf6ad12bc3` |
| 4 | `theorem` | [mem_keys_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-keys-of-mem.md) | 61 | `result-track:dbb9359259b8f4dd502d67d7e62ec10ba741ce74dcadef20b7bb3bfad5dde28a` |
| 5 | `theorem` | [exists_of_mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/exists-of-mem-keys.md) | 64 | `result-track:842222f9125fef7254c0609edc1c4af9e904bcf632e0745a349b50f9510522a9` |
| 6 | `theorem` | [mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-keys.md) | 69 | `result-track:4c619a809db51cd4bb4ae5cc8ab7c41a2e3ce4079df64bf4469b5a80c550deda` |
| 7 | `theorem` | [notMem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/notmem-keys.md) | 72 | `result-track:2f713afa2880b676ee3b12284210d037b33d6e2adacfb87a1c4d572bbab1603d` |
| 8 | `theorem` | [ne_key](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/ne-key.md) | 77 | `result-track:6bfca0cb7362eaea931bebb2367af84cc168823e7728f8967e11eadb660741a5` |
| 9 | `def` | [NodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys.md) | 89 | `declaration-track:a079b72e9787891cff87c26744a0cb98246bbb88dede3095e16a9c15a0bb0f35` |
| 10 | `theorem` | [nodupKeys_iff_pairwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-iff-pairwise.md) | 92 | `result-track:8f0d01b19d62e526d21b25bcddb7968a1aceff5fd2bd57dec894ba66afe2a253` |
| 11 | `theorem` | [NodupKeys.pairwise_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-pairwise-ne.md) | 95 | `result-track:c7c2e35d17b21b0a9021785cff20a99a271a94d99521c510243d4c59241279bd` |
| 12 | `theorem` | [nodupKeys_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-nil.md) | 100 | `result-track:2a6e8a3f38ef632d95099a4f7d764198b6e7f9b9368f785a4c50870c4f92f517` |
| 13 | `theorem` | [nodupKeys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-cons.md) | 104 | `result-track:a178c29f694619331faac55bdcd07d0509ae05c162158188ec368483d3968806` |
| 14 | `theorem` | [notMem_keys_of_nodupKeys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/notmem-keys-of-nodupkeys-cons.md) | 107 | `result-track:653c9dc2e42971c31e437f157bbc80f40de11dd0f973ba64b40ce2163936f44e` |
| 15 | `theorem` | [nodupKeys_of_nodupKeys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-of-nodupkeys-cons.md) | 114 | `result-track:4ab30126df23e46eaea99457e62416cdde9e730d6ba72d344e442f94c8e67ba6` |
| 16 | `theorem` | [NodupKeys.eq_of_fst_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-eq-of-fst-eq.md) | 118 | `result-track:8f6f976588c5707312b2b12c4f71721854a575ec91257005758f0e25d698c2bb` |
| 17 | `theorem` | [NodupKeys.eq_of_mk_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-eq-of-mk-mem.md) | 124 | `result-track:e29e92c7ccf0c489aa1d50573cf060ca653c519c9173def387b6abff630d0feb` |
| 18 | `theorem` | [nodupKeys_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-singleton.md) | 128 | `result-track:de93c4736fdee463852a523a32ff5b93ec8f6ed3ed4a8cd1d6c5c6d71d8ce373` |
| 19 | `theorem` | [NodupKeys.sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-sublist.md) | 131 | `result-track:216b14e961fc197f184c95ae59d5582a302c94713b5cd4faea79d59e1bdba38d` |
| 20 | `theorem` | [NodupKeys.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-nodup.md) | 134 | `result-track:1671702fd2f7a8dbd9ed4c4b6802ec8d3661825df6e9a87f8faca6f2b6c84343` |
| 21 | `theorem` | [perm_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-nodupkeys.md) | 137 | `result-track:fde391b80ef849f0454c12c9fcc948e4de370c16e8f383c1ed66a1fef7fda998` |
| 22 | `theorem` | [nodupKeys_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-flatten.md) | 140 | `result-track:d84a472c6190b17886561cb28e8594265e1cb6e637556697f84b736db4847941` |
| 23 | `theorem` | [nodup_zipIdx_map_snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodup-zipidx-map-snd.md) | 147 | `result-track:d83c0bf9a9c58d5566359fb8c54b6828818b1b4a99cbe93e2846aecf4e55c9fa` |
| 24 | `theorem` | [mem_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-ext.md) | 152 | `result-track:3a85763e36cd72fd07d16dc2ee04e3c12f3a0ba2098f85427b188ccc6f43020f` |
| 25 | `def` | [dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup.md) | 162 | `declaration-track:f96e75e78ad81a7d10772926835fcf5a9c7beda254ef3a61b6bae8247ac4035f` |
| 26 | `theorem` | [dlookup_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-nil.md) | 167 | `result-track:07d47e14a12075bfd5d98f81074c00376e3a502061ad3829ed3af883b5e991a6` |
| 27 | `theorem` | [dlookup_cons_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-cons-eq.md) | 171 | `result-track:a141e78cfe870267b4805dc92b6e4d549fae8a4dd3a42ab9e34049f80d63b03b` |
| 28 | `theorem` | [dlookup_cons_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-cons-ne.md) | 175 | `result-track:4396450b767657edd96f1751341a1d88ae88dae5fd4441736179e1ee66a7e334` |
| 29 | `theorem` | [dlookup_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-issome.md) | 178 | `result-track:f106c1f35fc71434d58d4c3afc0bd9478138713bd1da4c30b962ce296cf65576` |
| 30 | `theorem` | [dlookup_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-eq-none.md) | 186 | `result-track:86a8b42fededeed7a73a0a250776d8d38434377edbc23658c811b4e4d6a689eb` |
| 31 | `theorem` | [of_mem_dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/of-mem-dlookup.md) | 189 | `result-track:9b228dbc3c70b4c56bc2592071bdcdc27ca372a9b7d80ea525e51f8ec426543c` |
| 32 | `theorem` | [mem_dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-dlookup.md) | 199 | `result-track:f55b743d1eed3d2440f7943cd4338de0dc56fa20e1a765665f1c7700b78ceb7b` |
| 33 | `theorem` | [map_dlookup_eq_find](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/map-dlookup-eq-find.md) | 205 | `result-track:1e89522a72e7dffd762543fbf95475db9f3524355b3c3ae3023366a105250bde` |
| 34 | `theorem` | [mem_dlookup_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-dlookup-iff.md) | 214 | `result-track:772d30806eb7e956a9eae8ade87572734135b69f8fb9f7ed0b2cf30e275e3aa1` |
| 35 | `theorem` | [perm_dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-dlookup.md) | 218 | `result-track:b444e4c6e587f6ee35d8a7e3882e2242b7404620bcb435519c6a23f67819f306` |
| 36 | `theorem` | [lookup_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookup-ext.md) | 222 | `result-track:e8d942b014ddcc017edb8e45f2a3319b56ecb784877a52cf71cc9c6bca8602f1` |
| 37 | `theorem` | [dlookup_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-map.md) | 227 | `result-track:250bb29b4561853b9611d5b67cecb9ad735ca40d5c56b8b7348e082664af2212` |
| 38 | `theorem` | [dlookup_map₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-map-source-edition-2.md) | 237 | `result-track:3ff5b6e1d85948fb2269f635fe9239b7a39f3548951bb2e3bddcc0af5d6762c1` |
| 39 | `theorem` | [dlookup_map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-map-source-edition-3.md) | 242 | `result-track:e7ba2014654bd0d48c9df4d55c69f0353415dc3c3d9419eae21e0f7be7fcf573` |
| 40 | `def` | [lookupAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall.md) | 250 | `declaration-track:9b813df367fb894d76dae1d0169414fdd2c6ebcc50f8bab8808f8bb0323a25ce` |
| 41 | `theorem` | [lookupAll_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall-nil.md) | 255 | `result-track:600f663bff7b4d119cc5e26086558b7161e60f79880a12e9357ac7e86b281673` |
| 42 | `theorem` | [lookupAll_cons_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall-cons-eq.md) | 259 | `result-track:7db81418edf8fdd3dc9ecd07c53fd83823e61f057011dc2360ec958ff111a622` |
| 43 | `theorem` | [lookupAll_cons_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall-cons-ne.md) | 263 | `result-track:a73629227b9781dd907fcd1d048dcec1a5da5fbf63fb31134e4a8511dcb0fd2d` |
| 44 | `theorem` | [lookupAll_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall-eq-nil.md) | 266 | `result-track:9597136393a0eeaab237b68c102b11898555c37e7964586cf242c246b2f3856b` |
| 45 | `theorem` | [head?_lookupAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/head-lookupall.md) | 278 | `result-track:35917c9dfb8defee5dca40bac577cb0b319fc1f1160ecf0d45e7355452e790cb` |
| 46 | `theorem` | [mem_lookupAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-lookupall.md) | 285 | `result-track:3b46e5456c38c18035bf925e5918fcc6a9d459e76f5522be7f2cec5e108ac8b1` |
| 47 | `theorem` | [lookupAll_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall-sublist.md) | 294 | `result-track:6827e40f7ac0f4e08d85538b0657791b4393508769cdbb8a64815f8d7cedafe6` |
| 48 | `theorem` | [lookupAll_length_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall-length-le-one.md) | 304 | `result-track:f7fa718e7c9308c2396edc01581ac0edacf6ca0a916b282192757f4a9b9faa40` |
| 49 | `theorem` | [lookupAll_eq_dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall-eq-dlookup.md) | 310 | `result-track:756a9e337085376aa0527e38bce0440b9bfe40846670c88f48057b30c0cdaa8f` |
| 50 | `theorem` | [lookupAll_nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/lookupall-nodup.md) | 317 | `result-track:c9821bf8a79daccc0753c47980bde692e6c73201f55158a905a39beb385cab48` |
| 51 | `theorem` | [perm_lookupAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-lookupall.md) | 320 | `result-track:e03fb27e3ca183fff7e58f9704f22620790d72edfe6bf9a0ab3f0fccbcf9fa44` |
| 52 | `theorem` | [dlookup_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-append.md) | 324 | `result-track:77085d38fc85d4daeb47674329b1fa468ce5923c3f4e1c5657fc8ce3c144fdd9` |
| 53 | `def` | [kreplace](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kreplace.md) | 338 | `declaration-track:933b6c68adbdf856ae25a21059d102f78f4bee95b406eaea9d56678912076c2a` |
| 54 | `theorem` | [kreplace_of_forall_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kreplace-of-forall-not.md) | 341 | `result-track:3f5d3dd1fc3a0f3fb47b601e99a594e2434fe44906ce722b7f91214a043883b7` |
| 55 | `theorem` | [kreplace_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kreplace-self.md) | 349 | `result-track:9fac7e553303f70eccb059ebf597a3633a4648a7f9cfc01a58f2293e79f9f30c` |
| 56 | `theorem` | [keys_kreplace](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/keys-kreplace.md) | 366 | `result-track:8bba1fdc643eb0d6024bacb3517da721aee57ca7a8ddcdeb692fc32e84765a06` |
| 57 | `theorem` | [kreplace_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kreplace-nodupkeys.md) | 372 | `result-track:4892abe2c21b8e407aab88d90393d1f6d6eb9b1d5477351e3ab422eb7b0e9c1f` |
| 58 | `theorem` | [Perm.kreplace](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-kreplace.md) | 375 | `result-track:995954c754788fbe09a470b7ae5909c479abc09a5c36eafdec91c0a1008c6094` |
| 59 | `def` | [kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase.md) | 387 | `declaration-track:29a3863d6fd9d53ab69b1d5e81b43c9c9f16922b8301a15f3bdd084a9091ac02` |
| 60 | `theorem` | [kerase_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-nil.md) | 391 | `result-track:89287e7364ff8ede3abd93066efd07004120c9e1ad3109ad4113f4c25824d641` |
| 61 | `theorem` | [kerase_cons_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-cons-eq.md) | 395 | `result-track:8f14049b0944102b1290521cff6d4417f4ccb98bf8eb52ad3181f508651f90c7` |
| 62 | `theorem` | [kerase_cons_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-cons-ne.md) | 399 | `result-track:0985993aa3b125eeb9aff72634914110cd1e5c39e63d8b86c6151dab0c669991` |
| 63 | `theorem` | [kerase_of_notMem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-of-notmem-keys.md) | 403 | `result-track:ae2666345857f38379164c61c77c6235b7e708bd0a2f350a09ab626ecb13d800` |
| 64 | `theorem` | [kerase_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-sublist.md) | 410 | `result-track:5256e032b89c82b697f4ff530daac8cabf0bb91fcb21fb3ca919b21b8c16a8f3` |
| 65 | `theorem` | [kerase_keys_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-keys-subset.md) | 413 | `result-track:054c8dee9cb91e13340d2a8ffba10766449432ed1513ef8ad0947d31408aa427` |
| 66 | `theorem` | [mem_keys_of_mem_keys_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-keys-of-mem-keys-kerase.md) | 416 | `result-track:2a01ff311a6d2701e2ed8909af09aa805c404baa7816938f757ac43b84cce3ff` |
| 67 | `theorem` | [exists_of_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/exists-of-kerase.md) | 420 | `result-track:e3f5d19e869fa10569f66348c5bb312fae00b0666a8580072e2b49d21d2afff7` |
| 68 | `theorem` | [mem_keys_kerase_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-keys-kerase-of-ne.md) | 437 | `result-track:e0b297665f5e4eac82996fb67f231253cd97c03e9c26372e4a0b27acef0befe5` |
| 69 | `theorem` | [keys_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/keys-kerase.md) | 445 | `result-track:fff76b5fc35bb56f013e8a6614f005bcc2b1fd05a3aa9276c793c28ced19dbd3` |
| 70 | `theorem` | [kerase_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-kerase.md) | 449 | `result-track:183f86a9d04d333cb185ea6d74c07820490f9a26ec0d7fae0ac5c95eafb14300` |
| 71 | `theorem` | [NodupKeys.kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-kerase.md) | 463 | `result-track:93b00b5bbf67bbcccbd8db5c3d1b82a7d567b0e0250dbff9db8188d0f59fa21d` |
| 72 | `theorem` | [Perm.kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-kerase.md) | 466 | `result-track:a687c32f0df174085181e2e3eccb12486302afa3e1121a67f5a3beb851414f6d` |
| 73 | `theorem` | [notMem_keys_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/notmem-keys-kerase.md) | 473 | `result-track:728de6869165aee54b191bbf6a09662ca19b08fb64794d1ac3c7ed4599e0d091` |
| 74 | `theorem` | [dlookup_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-kerase.md) | 487 | `result-track:8de1156697da3012d1ae655edbdc9507fc87244f54a1ec1b7b0187f936f92cba` |
| 75 | `theorem` | [dlookup_kerase_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-kerase-ne.md) | 492 | `result-track:21fb09dbc1ab6ada4cc31cbc8d6e669bcb5080ae72543e55d492772678e206d5` |
| 76 | `theorem` | [kerase_append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-append-left.md) | 507 | `result-track:9e46b25e4a17587a01e32dd1e101741031c7fcbcd491461e34e6c4d353db0bcb` |
| 77 | `theorem` | [kerase_append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-append-right.md) | 514 | `result-track:44422970a9e55e9efd09a7864315abb08de264357fbb71e56342e70948a04b69` |
| 78 | `theorem` | [kerase_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kerase-comm.md) | 521 | `result-track:09d5c24c5c00a4d6818102a8cbdcc082482a66b5b379693eab69c795cc9e1b44` |
| 79 | `theorem` | [sizeOf_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/sizeof-kerase.md) | 538 | `result-track:de4d33bc5fec2cf6952c633aa1961e03f749ff0adac4fd3e71c4e967f63fd530` |
| 80 | `def` | [kinsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kinsert.md) | 549 | `declaration-track:63cbc67d5a2e4f2d1ca376ba92575d5a825ad760c4f56472308f748b25442989` |
| 81 | `theorem` | [kinsert_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kinsert-def.md) | 553 | `result-track:fb92b314b7ca1cceb78b5c97647162586b47f7207e8cf5ca174ec47b4df29519` |
| 82 | `theorem` | [mem_keys_kinsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-keys-kinsert.md) | 556 | `result-track:65592c5a2454aeec4a39c812bbca286708f8ca42e641d0a6e9f92efa3d85cfc6` |
| 83 | `theorem` | [kinsert_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kinsert-nodupkeys.md) | 559 | `result-track:685b53978dd72f004497363b31a7a51cab5fd258fc1f757ef79e660e9246f99d` |
| 84 | `theorem` | [Perm.kinsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-kinsert.md) | 563 | `result-track:0692f643afe368fa637fb078a23e625aa19c9f36d316708066be915079ce4eb1` |
| 85 | `theorem` | [dlookup_kinsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-kinsert.md) | 567 | `result-track:7d6f1bbedac54bc26072b9a447e859ed622b7b0ab4ea363dc13bfca9121e0b92` |
| 86 | `theorem` | [dlookup_kinsert_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-kinsert-ne.md) | 571 | `result-track:e3e15302cc431ce8dccf9893c4144a05484b2c67be2e3fef6e47797010ee33d5` |
| 87 | `def` | [kextract](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kextract.md) | 579 | `declaration-track:7e273ce8d08d9c8947bf9de1503c6fb993c922816303139b3455b36333de9bda` |
| 88 | `theorem` | [kextract_eq_dlookup_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kextract-eq-dlookup-kerase.md) | 588 | `result-track:705246f8801570183b87a75b465bd020a60b20ccc31329f0f713b74d845e9017` |
| 89 | `def` | [dedupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dedupkeys.md) | 601 | `declaration-track:dc093a28523c8c55d841844fc53b83840f15af8523537eabe37d9e4840bc3259` |
| 90 | `theorem` | [dedupKeys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dedupkeys-cons.md) | 604 | `result-track:4fd402f8cffc881a4d42ecd951fd7d6a66838639f5ae493957be82a4055523fe` |
| 91 | `theorem` | [nodupKeys_dedupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-dedupkeys.md) | 609 | `result-track:451784232876f2a872b703158c2883ebd7860121edcdc7d60a2c19f6dcd51bde` |
| 92 | `theorem` | [dlookup_dedupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-dedupkeys.md) | 625 | `result-track:1afc6b3380993922d84219b81f9092603decb1d830f23647b3a89afdad9eee13` |
| 93 | `theorem` | [sizeOf_dedupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/sizeof-dedupkeys.md) | 635 | `result-track:7572d29027973c768f3e66cea7946b873edba4938eb7ed1670201d2f3aacb347` |
| 94 | `def` | [kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kunion.md) | 650 | `declaration-track:650bb704134b73cf3ab8adba6c9187cf162edde2a040401ee7dda39c70074128` |
| 95 | `theorem` | [nil_kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nil-kunion.md) | 655 | `result-track:cb694267d516a129ebfe880756d6405928863395a1c95a725516050024b4bfad` |
| 96 | `theorem` | [kunion_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kunion-nil.md) | 659 | `result-track:a6d76219acb1bfec2a3b28bce67281a6429b1a09bb4f9ac0f1f549279f26739d` |
| 97 | `theorem` | [kunion_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kunion-cons.md) | 664 | `result-track:ec6d4a7c8198d5ad0a58e9be63f3db3b8b8b549c797e720d2fac4cc2704fde92` |
| 98 | `theorem` | [mem_keys_kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-keys-kunion.md) | 669 | `result-track:f59dbb12e7c73a6d556043567ecd476eda6b0c371bb4776737436a7c055479ce` |
| 99 | `theorem` | [kunion_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/kunion-kerase.md) | 676 | `result-track:3122f0502f1470e0710f6508b19e1323ab2c4b6cd2b57a939c6666113dae0cc1` |
| 100 | `theorem` | [NodupKeys.kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/nodupkeys-kunion.md) | 681 | `result-track:6f6dfe81e1ef88e5c1668ee5157b6fec4a1819c21ec5b1ed6f829dcfbfe5fa2e` |
| 101 | `theorem` | [Perm.kunion_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-kunion-right.md) | 688 | `result-track:d33f2d76fc2ee2988f9cbe44102756ef435ed361c2a625a194867609f61def16` |
| 102 | `theorem` | [Perm.kunion_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-kunion-left.md) | 697 | `result-track:805d3ff36c04f591223d82e16388dfea079b7691fd7f698388e0bf63be877bdd` |
| 103 | `theorem` | [Perm.kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/perm-kunion.md) | 702 | `result-track:36a8a87fe5965cb7a15a309a31359d52018cd95cdc5d05fa9c24551cc45797a5` |
| 104 | `theorem` | [dlookup_kunion_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-kunion-left.md) | 707 | `result-track:7d746995354fa13fa9fbb953bc11baa885b3f008e6a6c7c410fb4cb546105b46` |
| 105 | `theorem` | [dlookup_kunion_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-kunion-right.md) | 719 | `result-track:b511c301cd389677f248724e3450ccd494699a04cb5472da86aea318c8cb2f21` |
| 106 | `theorem` | [mem_dlookup_kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-dlookup-kunion.md) | 725 | `result-track:274ee47bc5fed29fd27f0a4dcbfcd6528d1d60cb6b104bdfa0a038c159f1ec46` |
| 107 | `theorem` | [dlookup_kunion_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/dlookup-kunion-eq-some.md) | 740 | `result-track:f205a7d8fcdd968d15c28f04e849902b34de4c8293dde24d2154b5f59eca2cd1` |
| 108 | `theorem` | [mem_dlookup_kunion_middle](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNamespacedNotMemKeys.lean/declarations/mem-dlookup-kunion-middle.md) | 745 | `result-track:54c747f5301e2a74e7a380e4069ef5d727027dd9476b7734ed0c8699c48761e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f3105deaee2bd4c5186a96790ff79e1e7130e60169c6a56b23ba07b8076af57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant4fc3f069b9bcbb52e3b7350c11d46a52b6a9c8265b27cb54eb8ea2b9b0bd7b21.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant4fc3f069b9bcbb52e3b7350c11d46a52b6a9c8265b27cb54eb8ea2b9b0bd7b21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
