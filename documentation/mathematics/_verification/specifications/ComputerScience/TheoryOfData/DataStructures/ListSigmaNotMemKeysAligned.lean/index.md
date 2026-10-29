# Verification target: List Sigma Not Mem Keys Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8da839d6857d52af3ee935eb50cd0bd12a0ea55",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8da839d6857d52af3ee935eb50cd0bd12a0ea55`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Range` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/keys.md) | 42 | `declaration-track:7ab3a9c03aba957a1454e84a3222260b464440230ef0ad9e4595373673c1bcaa` |
| 2 | `theorem` | [keys_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/keys-nil.md) | 47 | `result-track:10fc48a4af17fcafc41da9db60c53110f0ddc483304edfed56b536cbadbb3701` |
| 3 | `theorem` | [keys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/keys-cons.md) | 52 | `result-track:aa0c6bdcbd1776f6621f42c35a9512e63bbc27ec1316183bffcb7fcb300f996e` |
| 4 | `theorem` | [mem_keys_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-keys-of-mem.md) | 56 | `result-track:54b5fc82095681c2b960812cbc9ffe96a604c430591b610a9ee99b3ce75cbccf` |
| 5 | `theorem` | [exists_of_mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/exists-of-mem-keys.md) | 60 | `result-track:5fcc420575b2d84fab834bb5ba31766eb165eb065c2f34aae0413bf8fcc411d8` |
| 6 | `theorem` | [mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-keys.md) | 66 | `result-track:50497e8bd1bcafb955cfbbdabd15fa150ecbad81cc39971d25f82ec85830e864` |
| 7 | `theorem` | [not_mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/not-mem-keys.md) | 70 | `result-track:f9151943eaba9e7151a51c405d103f3f96b4fa3f53e3d658c0b2722ab4e0d8c4` |
| 8 | `theorem` | [not_eq_key](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/not-eq-key.md) | 74 | `result-track:d55f253c1de4177c504b8497f7a0517172d55fcc34f136af675966f826d9a858` |
| 9 | `def` | [NodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys.md) | 84 | `declaration-track:aa7a94d3030bc224cb4bf2ef36d7d3895226518c4e4062778e4efdc7fbd0ee6c` |
| 10 | `theorem` | [nodupKeys_iff_pairwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-iff-pairwise.md) | 88 | `result-track:42b063c057e14f5c5637b8e2daeb4e4652033c1e88e11fba6ea1c8250aa7ff0d` |
| 11 | `theorem` | [NodupKeys.pairwise_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-pairwise-ne.md) | 92 | `result-track:17cae7808c54630d79e27d27df5760ae499862074b177290717489c1e07f8c1f` |
| 12 | `theorem` | [nodupKeys_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-nil.md) | 98 | `result-track:0ce2ae47e53be5914a3358bf78c49d29dc4b2402bf1239075ec212df326a0fd6` |
| 13 | `theorem` | [nodupKeys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-cons.md) | 103 | `result-track:67ae68cd899d214e0b7c537f9171dd240b559fad9e784c8610b26543dac13492` |
| 14 | `theorem` | [not_mem_keys_of_nodupKeys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/not-mem-keys-of-nodupkeys-cons.md) | 107 | `result-track:08a5b8faddd010bb82b3550e909f95f724c5f09b3b06c2162d1dbc4b676df6d5` |
| 15 | `theorem` | [nodupKeys_of_nodupKeys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-of-nodupkeys-cons.md) | 112 | `result-track:f48f19cd6b70db8a07bf340450f6fdb060fe81fa63bbd2d7efbe41d4fc3997d1` |
| 16 | `theorem` | [NodupKeys.eq_of_fst_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-eq-of-fst-eq.md) | 117 | `result-track:8dc53f51afc8a1f2f25ae7c6636dc7d471be4927eea731406694fd5dd4cf9640` |
| 17 | `theorem` | [NodupKeys.eq_of_mk_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-eq-of-mk-mem.md) | 124 | `result-track:ed34e200344fcfe6be24b580c6c5661e62c58da6c44b56f7b7f3398484f63df8` |
| 18 | `theorem` | [nodupKeys_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-singleton.md) | 129 | `result-track:2d0ffa3c2d9b9125a772f3cd12da8f845455de04b2a1517b20a7b0cba1152ec8` |
| 19 | `theorem` | [NodupKeys.sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-sublist.md) | 133 | `result-track:91f6d5277a982029a512aea418a9c43477366c10246546978a3f05e41ac8db32` |
| 20 | `theorem` | [NodupKeys.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-nodup.md) | 137 | `result-track:cd5e52c554cecd57d514324171f3317e6264af450f162d8bac5a4f30a117a53c` |
| 21 | `theorem` | [perm_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-nodupkeys.md) | 141 | `result-track:10daf5c4eb80fcea4b8842ee77733bcac3c5a98c99bd69057dda62a3e3dc7c0e` |
| 22 | `theorem` | [nodupKeys_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-join.md) | 145 | `result-track:18c385675d8d35ab13b8646dbdd23f9c3f1445a89a1bbb163ddc885f3890fcc2` |
| 23 | `theorem` | [nodup_enum_map_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodup-enum-map-fst.md) | 153 | `result-track:c91a201a463581261e5dc2b509e5e6cb273b108c04f6c9fa26dde647009a5bd7` |
| 24 | `theorem` | [mem_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-ext.md) | 156 | `result-track:b476bbb70c92d09677c2c0fd2c1a7feeee5c8667a4267a0c7202601b7b7eed6a` |
| 25 | `def` | [dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup.md) | 169 | `declaration-track:cf36fec66f25a4a8ebd7704622ad016f1e47067f6eedc3993cc7e8bb6b046b2c` |
| 26 | `theorem` | [dlookup_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-nil.md) | 175 | `result-track:48e7448e37484e9463a6df3d9f7beed2dba4028e3b9d6a8474f4b78d1a83bd0d` |
| 27 | `theorem` | [dlookup_cons_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-cons-eq.md) | 180 | `result-track:051f2cffb5197eb110fc01734103e8edcb09d117005f9e10bfcbf70b2d4b9b68` |
| 28 | `theorem` | [dlookup_cons_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-cons-ne.md) | 185 | `result-track:02c4c6b5d57f31bfc8223010115c54fad772f0b3d92a95ae8d6f2d3da4593566` |
| 29 | `theorem` | [dlookup_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-issome.md) | 189 | `result-track:8eb55eea6ef5423db6887a1fe35ae67792fb4998b8187cca388ccffed4c2ac11` |
| 30 | `theorem` | [dlookup_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-eq-none.md) | 198 | `result-track:8664b6531fe523b9e9fb804170acfc43dc6867e7cd2f52124b3b927dc7570cd2` |
| 31 | `theorem` | [of_mem_dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/of-mem-dlookup.md) | 202 | `result-track:e6d0fd49f56ba5b4ae27c5837dbd748438dd75b72ffed2f9589dc0a293143909` |
| 32 | `theorem` | [mem_dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-dlookup.md) | 213 | `result-track:f7414cda2ae904174471d59b61cdb0bd00276d93e381efedcceefd28272019dd` |
| 33 | `theorem` | [map_dlookup_eq_find](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/map-dlookup-eq-find.md) | 220 | `result-track:f27a24d8376141882e26191d0af5a83632695d42892bce5afde7d81fc3fae74e` |
| 34 | `theorem` | [mem_dlookup_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-dlookup-iff.md) | 231 | `result-track:9b7ba26fed75e48759483094e7b2b34a04d7ca8fb0e62d1c76440dd0111d3108` |
| 35 | `theorem` | [perm_dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-dlookup.md) | 236 | `result-track:9a8e0f75505b2d5648a1bab4b0fda1f54f9ff9b4f47ca79252876294e26f9f5c` |
| 36 | `theorem` | [lookup_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookup-ext.md) | 241 | `result-track:b1d89232de59d1f04f53b567e0b269521e679e3dad0664490972434006d7d9d7` |
| 37 | `def` | [lookupAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall.md) | 251 | `declaration-track:0eda6fb5215428ea2900b660398d572fc3a6510ee3c32705f44dde14251a541f` |
| 38 | `theorem` | [lookupAll_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall-nil.md) | 257 | `result-track:0e333532146cb0a7e1a9f592e06b21303b0fa9609a3e0b4888a7f2d390c63a67` |
| 39 | `theorem` | [lookupAll_cons_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall-cons-eq.md) | 262 | `result-track:ad214a441f7510ce7e8a9c05517d7c4bfc4cff81482bd7bec633fd9868eec6e5` |
| 40 | `theorem` | [lookupAll_cons_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall-cons-ne.md) | 267 | `result-track:7ff87d95957822804b29762f9d01173efe429e90c1e7d03acc4f01ef0bb98ee5` |
| 41 | `theorem` | [lookupAll_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall-eq-nil.md) | 271 | `result-track:f4f30463b2188e31ccb06c1799700279b33dfe0bcaecb202485774b1ed6a6ecc` |
| 42 | `theorem` | [head?_lookupAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/head-lookupall.md) | 281 | `result-track:1d1abc54a48ff05c6c1ccad374df0e08021605042d21318ecf757c6ad64d0174` |
| 43 | `theorem` | [mem_lookupAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-lookupall.md) | 289 | `result-track:22b8a9e83c02d0cf0fe78ad1255d14ea1691045fbfbb36a3b36a33df9d640d97` |
| 44 | `theorem` | [lookupAll_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall-sublist.md) | 299 | `result-track:7b71e421c9f909b1345cd74fb5a7976a8a6fa66053987f233236284a2831ed08` |
| 45 | `theorem` | [lookupAll_length_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall-length-le-one.md) | 310 | `result-track:96648c1ccdc56961e7d2efd338d2d0ef438cf1e4aae77641ee2dd5c0e59d3d7d` |
| 46 | `theorem` | [lookupAll_eq_dlookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall-eq-dlookup.md) | 317 | `result-track:034f3d43c2eacb36febdb6bf7dcc5086fdf113f74fb8ee97d7cef6af0124f195` |
| 47 | `theorem` | [lookupAll_nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/lookupall-nodup.md) | 325 | `result-track:76573466c0389c0f50cc65277d9f4dd1affe97d3a004787cb611206a1932ce73` |
| 48 | `theorem` | [perm_lookupAll](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-lookupall.md) | 329 | `result-track:1ad7268e72a2625d3d0ec06a5caf9807fa682b738d91ec140acb940b0ceadf53` |
| 49 | `def` | [kreplace](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kreplace.md) | 338 | `declaration-track:000daa56a2198d82824ae79dfc3868797370e62950d640eef602f5f3e93c89ab` |
| 50 | `theorem` | [kreplace_of_forall_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kreplace-of-forall-not.md) | 342 | `result-track:0685e99461e708fe18aedf1e959a71d55818cd737a91949e7f6a258f22bd7766` |
| 51 | `theorem` | [kreplace_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kreplace-self.md) | 351 | `result-track:28836c9fbd2a4a926b9db0780aa3f67f347779a1ceb771803f7bc0b29a720c6e` |
| 52 | `theorem` | [keys_kreplace](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/keys-kreplace.md) | 367 | `result-track:d659b667c465ad4644182fbf4997dc7c723e65c54c30e868d49e8279f4f16386` |
| 53 | `theorem` | [kreplace_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kreplace-nodupkeys.md) | 374 | `result-track:967212ad3746d84fd410fe2001c0cfbd237087126970e3742833b88fc0199503` |
| 54 | `theorem` | [Perm.kreplace](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-kreplace.md) | 378 | `result-track:35cbd7c9fc86e2d1725ff788f130adf097eff43360610e0308daaa3054620efb` |
| 55 | `def` | [kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase.md) | 391 | `declaration-track:d345d1df7b9ca2becb3453484931f0750dd03dd993cea8f35a0ef69f36bc99e2` |
| 56 | `theorem` | [kerase_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-nil.md) | 396 | `result-track:0cafea61adbbb2e24b8fba77e51aca6afb53b705846f3529d7cd76dc669e3653` |
| 57 | `theorem` | [kerase_cons_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-cons-eq.md) | 401 | `result-track:1b0c3b704c955d331feab41f6ee0d7aa65f15a63033adeb31308468cedf426b4` |
| 58 | `theorem` | [kerase_cons_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-cons-ne.md) | 406 | `result-track:9e48f9e5731640d0fefa938c3a12513796136e8ebf77170c77080d6b1eca98aa` |
| 59 | `theorem` | [kerase_of_not_mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-of-not-mem-keys.md) | 411 | `result-track:d79eb139e450b4a5b76df7ccaa0d04c593d839e50309fb06fa8417274576ed9c` |
| 60 | `theorem` | [kerase_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-sublist.md) | 415 | `result-track:9d454e0cd8d792cc7850d7c3b0fe02807c100a922fbfe6cc7f530039edc09da6` |
| 61 | `theorem` | [kerase_keys_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-keys-subset.md) | 419 | `result-track:925b0d904e65e7aab2db2819c59c5a9187d09ec93d5068b9a50e5cc6f765defd` |
| 62 | `theorem` | [mem_keys_of_mem_keys_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-keys-of-mem-keys-kerase.md) | 423 | `result-track:39b9135e9a2512e1070cad298b7cce02a400028d4816d598eaa96784ddc9d056` |
| 63 | `theorem` | [exists_of_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/exists-of-kerase.md) | 428 | `result-track:a5be8e8df483151d3a52c038d970ce1fce0f3c9962a6d0dac7e281aa957f1dd5` |
| 64 | `theorem` | [mem_keys_kerase_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-keys-kerase-of-ne.md) | 446 | `result-track:ab97d46f5ece4181f9c30e2cdd5e800932fd04f745f959fc8c81878830fe98a9` |
| 65 | `theorem` | [keys_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/keys-kerase.md) | 455 | `result-track:18c86c220e15031d68a65f21a023a8f6e0e10b718eed5bcfcec81e91a8a76e0a` |
| 66 | `theorem` | [kerase_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-kerase.md) | 459 | `result-track:969f105316e5aaefe3bcf6897427c31c382cc6e275d1ed29c0313562eff9a12f` |
| 67 | `theorem` | [NodupKeys.kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-kerase.md) | 474 | `result-track:2bc8982fc760819122f09ad449dcfa256ae7a72efccaaba6be514334ea59e186` |
| 68 | `theorem` | [Perm.kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-kerase.md) | 478 | `result-track:595645077aef7ce774997af05a7ef39e62e4a515d0115143f6bf4a00055e3a94` |
| 69 | `theorem` | [not_mem_keys_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/not-mem-keys-kerase.md) | 484 | `result-track:5a821b14b9f24fb1dc3c51be30e419c7db83cf5125fa6ea52438a94a84537e30` |
| 70 | `theorem` | [dlookup_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-kerase.md) | 497 | `result-track:26d95aff1279c7339ad5ee13c84d99d91533805c14303ec311f0dec3ba963fcc` |
| 71 | `theorem` | [dlookup_kerase_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-kerase-ne.md) | 503 | `result-track:4b9a4159e2ca47a8d0b2616ba65c805b5a0825dd0b3931c71c23c5f0cff3f1ec` |
| 72 | `theorem` | [kerase_append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-append-left.md) | 519 | `result-track:188c9c884bea9f90331788f8bfa9675cef42a23be043ff8ab43d461e6699abbd` |
| 73 | `theorem` | [kerase_append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-append-right.md) | 527 | `result-track:7410b1dc65f542956228cee4bd2e121575e8e49d58e07e4651a78267c78968e7` |
| 74 | `theorem` | [kerase_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kerase-comm.md) | 533 | `result-track:2839f1c7ef20f05ed096ae7216e814c824392af697981ce3452d722cb192897a` |
| 75 | `theorem` | [sizeOf_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/sizeof-kerase.md) | 551 | `result-track:917b556f19e626fed90d4ffc910c3edc6d8b780b9ba8d56a781fc35173f3a44c` |
| 76 | `def` | [kinsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kinsert.md) | 563 | `declaration-track:fedd782c91aa697dbafe3c65af2b5603ea420cc446a4c1c84ed4b5f47d48ee04` |
| 77 | `theorem` | [kinsert_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kinsert-def.md) | 568 | `result-track:be6c0d4361ed1d59c7a289e9fae382788742ff048e67b918ba018551ef4bed85` |
| 78 | `theorem` | [mem_keys_kinsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-keys-kinsert.md) | 572 | `result-track:40b9eee8acbfee9eb2959b6e07e65af2aeb5f82a72fcc4b1816642e090d9462d` |
| 79 | `theorem` | [kinsert_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kinsert-nodupkeys.md) | 576 | `result-track:bce049c3a600a941ddc4bc5bb75b8b3def462be5fb30c90ac730fc408713a0f6` |
| 80 | `theorem` | [Perm.kinsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-kinsert.md) | 581 | `result-track:e16d643836318a613a251f63513040bc934b22f5f624234c93aeaec0b6906bd9` |
| 81 | `theorem` | [dlookup_kinsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-kinsert.md) | 586 | `result-track:fdc2aee5e7cafae0f2fb9638a9d7b737ff8605c6cfd3f8d21dae31ff2eb04130` |
| 82 | `theorem` | [dlookup_kinsert_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-kinsert-ne.md) | 591 | `result-track:7fcca4eafce49c3cc4b2b4293d518efd1c096c5edbd0cee4ad1805fbb5ad637e` |
| 83 | `def` | [kextract](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kextract.md) | 600 | `declaration-track:43212d274044edca809d5056a24819eced261ae855e348a038405be5c58c2adb` |
| 84 | `theorem` | [kextract_eq_dlookup_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kextract-eq-dlookup-kerase.md) | 610 | `result-track:6e656518b7664083e4a084781a5fcc8d4e33b26745f5d0f3d82bd2e97bc7eff4` |
| 85 | `def` | [dedupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dedupkeys.md) | 624 | `declaration-track:98c5c8b9a255f8e5da020768ac2a6250b9a55b6faae12b5cc4bb6ac9b45f4195` |
| 86 | `theorem` | [dedupKeys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dedupkeys-cons.md) | 628 | `result-track:e70b4632b41a8fd2fc0d10279b574a4edb5953d4c52b5a6a1576e503f4db0143` |
| 87 | `theorem` | [nodupKeys_dedupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-dedupkeys.md) | 634 | `result-track:a6e43c05eec00b53775a917b9dbdda1b2dedc0990994668fac18d789d48787a5` |
| 88 | `theorem` | [dlookup_dedupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-dedupkeys.md) | 651 | `result-track:afd0d2dafe162a33d41291b018d5647c1685a94cbe5147bb6fff86c12065ad09` |
| 89 | `theorem` | [sizeOf_dedupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/sizeof-dedupkeys.md) | 661 | `result-track:2c2924d92a1df5a5c06a817f1496df8d37def630487630311c067f170537ad87` |
| 90 | `def` | [kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kunion.md) | 677 | `declaration-track:d73ef5d5709e85c3dd1ed4fa97b570f212f2fb057d68245cd95259d21078906f` |
| 91 | `theorem` | [nil_kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nil-kunion.md) | 683 | `result-track:d74c183066644b8b045c562fc215b01e64f376170f65885623d6878f4e03edbe` |
| 92 | `theorem` | [kunion_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kunion-nil.md) | 688 | `result-track:1a1d9c60814507544cd5739cae7e0b98391eea3149702500eaed6e7221a30785` |
| 93 | `theorem` | [kunion_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kunion-cons.md) | 694 | `result-track:f5f55b7d88b5ec15fe50b6cccc15661470b7969c168ec4c77137889798ce0202` |
| 94 | `theorem` | [mem_keys_kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-keys-kunion.md) | 700 | `result-track:bc4648983663433096ae73219e1a4cd526a9a0e5beeb6381807a7bcd48725998` |
| 95 | `theorem` | [kunion_kerase](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/kunion-kerase.md) | 708 | `result-track:a7b4fbbd889e1f88370432d88df9f04cb4d3fb0f8c61a40c6a31912432e69734` |
| 96 | `theorem` | [NodupKeys.kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/nodupkeys-kunion.md) | 714 | `result-track:56f85eb4a8ab011c15440729d77a545f3c3889711eae0b44318424fc8f9ff2ba` |
| 97 | `theorem` | [Perm.kunion_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-kunion-right.md) | 722 | `result-track:f020dd2aeb87896ea74fc86a66dd8a7d4f99bae78cf3a39499b5ae2b399bfc21` |
| 98 | `theorem` | [Perm.kunion_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-kunion-left.md) | 732 | `result-track:5c290755e52e47201cafd0a45178f406ab02f3f8b16e7ea37f0208ade7cf7869` |
| 99 | `theorem` | [Perm.kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/perm-kunion.md) | 738 | `result-track:7e3ea6f87f8bd46a567d737ed794acc4e2eff7954307ad305e3167f93baccc9b` |
| 100 | `theorem` | [dlookup_kunion_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-kunion-left.md) | 744 | `result-track:6fd7dadafc3158ba067ebc33f639229d28f791cf3a6da815a260d1ea41498552` |
| 101 | `theorem` | [dlookup_kunion_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-kunion-right.md) | 757 | `result-track:3eb236934edeaf1d6bb61cf7f11bc4922d350cbe47fb3cd182d4bd3f9f4927c6` |
| 102 | `theorem` | [mem_dlookup_kunion](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-dlookup-kunion.md) | 765 | `result-track:011f7c87409a1e1300b042c5d05cd35ba0b43500b45410f6c94d9bc03c5f74a1` |
| 103 | `theorem` | [dlookup_kunion_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/dlookup-kunion-eq-some.md) | 781 | `result-track:e893c39f3942e9fd82873b9e8ddd3a7dc2ba66d4bdf2ce87a8159caf5210250e` |
| 104 | `theorem` | [mem_dlookup_kunion_middle](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListSigmaNotMemKeysAligned.lean/declarations/mem-dlookup-kunion-middle.md) | 786 | `result-track:9add70d3764b4c27b86fb566a09012e0d709a23518df4950c9c1999ff4137fa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1348e341931ec0c6ebf42e7972aecbdfa58a5f81e702e10e28c2e4463c96906 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variantd9f838a802a8c00de803c9cbe813874be504159a685e9101035dd2ada98d13d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
