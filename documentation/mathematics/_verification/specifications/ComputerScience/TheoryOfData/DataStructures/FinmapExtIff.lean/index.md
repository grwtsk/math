# Verification target: Finmap Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6394adbc43450cbeb53b4659114306d4f5336718",
  "lexical_observation_count": 110,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6394adbc43450cbeb53b4659114306d4f5336718`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.AList` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Part` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-source-edition-2.md) | 27 | `declaration-track:39b464db1ea3b6e3a3de2e87195cfe9862b0eb57b83873989b0035a61051833c` |
| 2 | `theorem` | [coe_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/coe-keys.md) | 32 | `result-track:84d1ccc202c6538f6a45ad9af456e19a24d1018bcf75fee084269ce8d18fd000` |
| 3 | `def` | [NodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/nodupkeys.md) | 38 | `declaration-track:da35e756a4ad99c407ba582f5e90cecf4fc0dc553375d0813b076ca99bf424f4` |
| 4 | `theorem` | [coe_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/coe-nodupkeys.md) | 43 | `result-track:6b00fbe0df7c74bb8602b9a62bd8c12abb153d5af36f961801efa3e5eecd1c11` |
| 5 | `lemma` | [nodup_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/nodup-keys.md) | 47 | `result-track:90cf6370fbf1cc47cc56bc3f774aec641c03461bb193ea2d8e83cc679b643765` |
| 6 | `lemma` | [NodupKeys.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/nodupkeys-nodup.md) | 52 | `result-track:897ec44cc0e2d62d12030f711ec660bd546afa072e92f50f878fdeca021cbb57` |
| 7 | `structure` | [Finmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/finmap.md) | 61 | `declaration-track:090c9cee0921d7fa809842fbb9bf9785e7ea7cddd093af175d889df1eb4af7e1` |
| 8 | `def` | [AList.toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/alist-tofinmap.md) | 69 | `declaration-track:b7514c23b413fee49a302a933c0e0606ff8d46ef595030accdfeae948f69f20f` |
| 9 | `theorem` | [AList.toFinmap_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/alist-tofinmap-eq.md) | 75 | `result-track:fae59dc7240d68693664ca1f072cc175630687ae137c70335c99f3cba2f20032` |
| 10 | `theorem` | [AList.toFinmap_entries](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/alist-tofinmap-entries.md) | 83 | `result-track:afcad7a574a328933b83a84d990a871e435123856aeec457542211c7c29bec10` |
| 11 | `def` | [List.toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/list-tofinmap.md) | 89 | `declaration-track:6f564c0bbbb9ccdbf191b1872c1ba9bfeb654a9dd8c843b873263d0efe9b139b` |
| 12 | `lemma` | [nodup_entries](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/nodup-entries.md) | 97 | `result-track:e4ab1c0e8023d12423bfc9084263c268e0aafb91425f6d7dd36c129ec47d691e` |
| 13 | `def` | [liftOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lifton.md) | 103 | `declaration-track:780ec216261d6adeb5abe997090975ee3bf1e34965d313ef744e45185cd2e7dc` |
| 14 | `theorem` | [liftOn_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lifton-tofinmap.md) | 118 | `result-track:27264dfdd2acb4b7bd136bd0bbac70ce3711755d3c6595ac2e909c3d3ca473ef` |
| 15 | `def` | [liftOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lifton-source-edition-2.md) | 125 | `declaration-track:bfe081b1b9c6a22c5c6456ec62d675abf69db6947448f637f8a111f1e7f74b20` |
| 16 | `theorem` | [liftOn₂_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lifton-tofinmap-source-edition-2.md) | 134 | `result-track:5ad83fb96ad6d73e76ca63a0e25c5846fd1f448a5c9601db1c39d4d9bd7cb8bd` |
| 17 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/induction-on.md) | 142 | `result-track:048c351c81ffa68b899b6ab5441e47c4fd854077f69e804dfa228d1c51ba2fec` |
| 18 | `theorem` | [induction_on₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/induction-on-source-edition-3.md) | 147 | `result-track:fb2a621ff240ed2d149fe403f90a95e363961b620f2fdb4c4243d37057dec3c0` |
| 19 | `theorem` | [induction_on₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/induction-on-source-edition-2.md) | 153 | `result-track:90ca5b10afba06a4c0b1aab7a468791b8a3bc7fbe26954ca4540d65588e00808` |
| 20 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/ext.md) | 161 | `result-track:efbcddd02762b8f8d068a5bcc9da6554beb3175d35b6e0a80aa4584dc00473d6` |
| 21 | `theorem` | [ext_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/ext-iff.md) | 166 | `result-track:70755a00f53a2fc13754da53346bcd15e2c4cd93da023eadfee90d65caec480a` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/instance-source-edition-6.md) | 173 | `declaration-track:e7f5400a9d7f26741997b5c8801cad99a6c3b64260bed1f8a53c1c252da99ee2` |
| 23 | `theorem` | [mem_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-def.md) | 176 | `result-track:bf2e7375d7c4cb1725f40b9f9717862b7c674172d0e9b1dfaf8be7bf9bc59698` |
| 24 | `theorem` | [mem_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-tofinmap.md) | 181 | `result-track:c1b5a8244d92ee55d90e723eebb93f6eadc0854bf8143bfe6a546a4a07d5c980` |
| 25 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys.md) | 188 | `declaration-track:062f6d89dca9cd81b54c1d307dfc2da9adb64b76976244e9057f5ded6c951c7a` |
| 26 | `theorem` | [keys_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-val.md) | 193 | `result-track:f5fa6c0816c6cd3729eef27cd15d6c7c7c579120e634346001eae33a949d4c60` |
| 27 | `theorem` | [keys_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-ext.md) | 198 | `result-track:9684bdb72bfeca9f757cd6607b0c7402a08ec4d17178936b81012ea82620d51a` |
| 28 | `theorem` | [mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-keys.md) | 202 | `result-track:df36d642db476ce5e9fa20f8a0d7cab5c8586ce300e87d1d7a1c6177b9534e3d` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/instance-source-edition-7.md) | 209 | `declaration-track:ffe311adc4f10ac9e3c818e8b8890e3eaa152e7b77b65357e768e9b1f5f41296` |
| 30 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/instance-source-edition-5.md) | 212 | `declaration-track:b13af89313af3301e305d7aac3f9861b86bff4aa923f37d10726031357923de5` |
| 31 | `theorem` | [empty_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/empty-tofinmap.md) | 216 | `result-track:653bbd7d3ed9846e649cd7ee74fe98d1f4b56bbc5550423ba7570d805977e175` |
| 32 | `theorem` | [toFinmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/tofinmap-nil.md) | 221 | `result-track:cd6488c9afca4213a15e2054e41f24ac71da04dde1404a4f7f111177ac4f4862` |
| 33 | `theorem` | [not_mem_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/not-mem-empty.md) | 225 | `result-track:96d5a49e9f24800a0d8ac62283afe3284db2fbdbb040d07686e8e03002d1699b` |
| 34 | `theorem` | [keys_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-empty.md) | 230 | `result-track:cdc8bdea9224c56e52a016f26544d26ec221e84a612b4d31424cdbadba290a71` |
| 35 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/singleton.md) | 237 | `declaration-track:fcf9127be022d243fd695154a594f5ac60e6dd9d06533c9bb05ae154b15a96cd` |
| 36 | `theorem` | [keys_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-singleton.md) | 242 | `result-track:7572c0a60a485338c77557b02ec33bfd8c6b86c13ad4368cf68deaa66fc1fd3b` |
| 37 | `theorem` | [mem_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-singleton.md) | 247 | `result-track:728da5b03efd2146b0506fb1ca8e3745687385322185c0dc79c642842b7c68ad` |
| 38 | `instance` | [decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/decidableeq.md) | 255 | `declaration-track:979335086189ead5b8a2f85975e5efb3a5dd7e7c39a460e50027a9d12f6d0118` |
| 39 | `def` | [lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup.md) | 262 | `declaration-track:8602877a1b37910b2e248add149ca24a9c6cbd6e2b9cd82da91815a61e62b9fd` |
| 40 | `theorem` | [lookup_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-tofinmap.md) | 267 | `result-track:e83d3d198814df89b1fe5e6e7d71aaca0717e94defb5d8c9277bfea56b3dfb21` |
| 41 | `theorem` | [dlookup_list_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/dlookup-list-tofinmap.md) | 273 | `result-track:dfd2ed4d02e84e5f623602f18a196ba0dffbfd52efdb51eb491efe312de3a329` |
| 42 | `theorem` | [lookup_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-empty.md) | 278 | `result-track:18d711629327d896b051ec78445de5a49736edd303bcd131dd01f6fa0719b0a2` |
| 43 | `theorem` | [lookup_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-issome.md) | 282 | `result-track:f80c4da0b9bede799b8415200cb4b955fd12c254d11f1686c5f2f19b122bd66e` |
| 44 | `theorem` | [lookup_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-eq-none.md) | 286 | `result-track:eefc7aa378e59abe313720a22af7682ccd6d101641c861bd38296f9f31087c50` |
| 45 | `lemma` | [mem_lookup_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-lookup-iff.md) | 290 | `result-track:32799fe2e5be9c3ccc72b1a34e1b50fa0eb550e5fbe07b2cc708b420d8e4e6e3` |
| 46 | `lemma` | [lookup_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-eq-some-iff.md) | 294 | `result-track:f5a7c8d4440e6850ccc6b6823a89d9a8eff5b96ec7db747ec92ac7ca91492181` |
| 47 | `lemma` | [sigma_keys_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/sigma-keys-lookup.md) | 297 | `result-track:10ccb0acea4538b755627333e73f99584049aef42008cb1e2c0bad57a09baeb6` |
| 48 | `theorem` | [lookup_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-singleton-eq.md) | 304 | `result-track:4fd7203836ec3acb5103250248ca377bac00e85388b1a29b4f353b4e811df394` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/instance-source-edition-2.md) | 308 | `declaration-track:36c918c26b2060ee7cc3e35c37d562cbbac6446841c2648be809d23888f80edf` |
| 50 | `theorem` | [mem_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-iff.md) | 311 | `result-track:0fbbb16f2300fc41850816d730782ff3091ea17649a6e048784130c0d4edc6cd` |
| 51 | `theorem` | [mem_of_lookup_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-of-lookup-eq-some.md) | 316 | `result-track:6663d31875b25ced7cb20532456ae57b1b13b28f348aa29979b70f2c23a4f6f5` |
| 52 | `theorem` | [ext_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/ext-lookup.md) | 320 | `result-track:3c76c095512acc4f7d780e961a283b1b648d96b9e869f6229b38714a650490b3` |
| 53 | `def` | [keysLookupEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keyslookupequiv.md) | 332 | `declaration-track:23018074a3829eca4e0b089a8449cb4a14bc095b77dbfd4dd8ad63ca5b3ff6cf` |
| 54 | `lemma` | [keysLookupEquiv_symm_apply_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keyslookupequiv-symm-apply-keys.md) | 347 | `result-track:6fcfad77a07151768988412876eef0dd3eb9b7c516d3d6a8cbf2e0d933495d97` |
| 55 | `lemma` | [keysLookupEquiv_symm_apply_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keyslookupequiv-symm-apply-lookup.md) | 353 | `result-track:0cecd629bd2e85681eabddfab2c544834fae39190434d5e2fa0e5fa04219938d` |
| 56 | `def` | [replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/replace.md) | 363 | `declaration-track:73a03e322b175290ec9313eabd99699e905a2135fcd35b2f7bdc4207ead8139b` |
| 57 | `theorem` | [replace_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/replace-tofinmap.md) | 370 | `result-track:90077767a2b208c290f4e7419560209ff81c28558030af77ab2327bea097f0c9` |
| 58 | `theorem` | [keys_replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-replace.md) | 376 | `result-track:1a977ecee1215b40b2a01b15b84c233de92093a18bac629d1c072d88c73b8b7e` |
| 59 | `theorem` | [mem_replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-replace.md) | 381 | `result-track:22eb33a549176dc10f9d04382f70263631fee592a4196cd063ff99d6d4617a9c` |
| 60 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/foldl.md) | 390 | `declaration-track:7c2389b9ceb2e3991ebe57e76977c80264141c5df174ee302aa249f30ef07e81` |
| 61 | `def` | [any](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/any.md) | 396 | `declaration-track:9e67b70c895ca6227553f36df1e9253703c533bfc4bf39b2cb67fb4a07d7808b` |
| 62 | `def` | [all](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/all.md) | 403 | `declaration-track:2786ff18475a166c4ea73f5517e071154388f117455b9f8cc5f70fabb7e30671` |
| 63 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/erase.md) | 415 | `declaration-track:93d7c1f7e04ca6b7dc9936683f60378d9f9b9878aaa2d04cce01e69f3e58e695` |
| 64 | `theorem` | [erase_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/erase-tofinmap.md) | 420 | `result-track:cff173b3695568b35fb8037ea7d672568f57cb07e86694c2873b6f56c6addad1` |
| 65 | `theorem` | [keys_erase_toFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-erase-tofinset.md) | 425 | `result-track:bf695a6d096a8a97b2681dc1e2d41d1042d4f935f6dfa153da153d7d25af7230` |
| 66 | `theorem` | [keys_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-erase.md) | 430 | `result-track:7be8856632b4a07e186e5e9d8746edcf67299ce6127d60083eed5a0ef81ba1c4` |
| 67 | `theorem` | [mem_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-erase.md) | 435 | `result-track:9920c2a172fc56eea3cbd849d6143a57859a3563dfb006e636a71c3ae729caff` |
| 68 | `theorem` | [not_mem_erase_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/not-mem-erase-self.md) | 439 | `result-track:fd3c25def69068a10e37c704ff8a2c454328388af36904871ce350c3e5cc5c9b` |
| 69 | `theorem` | [lookup_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-erase.md) | 446 | `result-track:048352fdaa27fdeecd5a52f38146033721c60f8f95b195928fe9774e752c54b0` |
| 70 | `theorem` | [lookup_erase_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-erase-ne.md) | 451 | `result-track:88ef92e9731b4875727da2a368001a92fa1d9cbe30590bf233f36af32e99b959` |
| 71 | `theorem` | [erase_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/erase-erase.md) | 455 | `result-track:c10129fb6171681f585d3825536b4748aa5d5ce8a244a0d47e3e0e5e8a869cd4` |
| 72 | `def` | [sdiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/sdiff.md) | 463 | `declaration-track:cc6ff9ce8edaeaa79239f442d5c31a4d78d06c5d51e5d3384b1f75a5dfcd6d46` |
| 73 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/instance.md) | 467 | `declaration-track:24dceb9a88ed9097f7ef8d398efd5606309c35e9073ee8e4609007a737c9ccae` |
| 74 | `def` | [insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/insert.md) | 474 | `declaration-track:69b0b200929675e9c3bad74ac792cce0a1666df0588982fdeef9f10abdb6be4e` |
| 75 | `theorem` | [insert_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/insert-tofinmap.md) | 480 | `result-track:6aae24ab90d467e15112a64f288a57da9bb59b84ae3e9e8b58746eb6c20c053b` |
| 76 | `theorem` | [insert_entries_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/insert-entries-of-neg.md) | 485 | `result-track:caaa027ea66961c482b4e2a63a52424bca4cee700f55202690d4240b8a1d9ff5` |
| 77 | `theorem` | [mem_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-insert.md) | 493 | `result-track:7ea7be87a6fdba6e46e4c1a61b4300db73946e14a76cef7e1b8771fb081e913b` |
| 78 | `theorem` | [lookup_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-insert.md) | 498 | `result-track:84d8e4dadbe3360d18fe82e6236f54cd36549768aa365ef23c94cffc89b18b5d` |
| 79 | `theorem` | [lookup_insert_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-insert-of-ne.md) | 503 | `result-track:470bf33f1b1136abc7a7777a093df708aac29140eadba0d7ca6a76f72fdafd94` |
| 80 | `theorem` | [insert_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/insert-insert.md) | 509 | `result-track:35f94785f48cf3e923dc3078e48835bd18140ee50f6f988f65553c4d510bfc56` |
| 81 | `theorem` | [insert_insert_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/insert-insert-of-ne.md) | 514 | `result-track:5982dbb7bfda315ec8dce1161f0d14ecb8c6e764a80bc088c6e7d49a1dfcb890` |
| 82 | `theorem` | [toFinmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/tofinmap-cons.md) | 520 | `result-track:e5bab76204649065835900a5d0552632f8989d5464816599429fdf3a2d6eeefb` |
| 83 | `theorem` | [mem_list_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-list-tofinmap.md) | 525 | `result-track:d662bec7750ea0f68dbbcfd8d9e82e85afcc7301bce2c72ca12085ff505b16d7` |
| 84 | `theorem` | [insert_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/insert-singleton-eq.md) | 539 | `result-track:9d32eb7173673456517f6b8aa80f2ab005dc10e97a44b740a6e1626d625b74c7` |
| 85 | `def` | [extract](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/extract.md) | 546 | `declaration-track:8fded7a53e43027a6bac27c92cd6287b844d9ff9a2c2da6b360056326dcb12b4` |
| 86 | `theorem` | [extract_eq_lookup_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/extract-eq-lookup-erase.md) | 552 | `result-track:a2ea27530a83becb833d6547da11473043974a4c65ce6f0d5baf2837d084116c` |
| 87 | `def` | [union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/union.md) | 560 | `declaration-track:e446c3f87ed091a13216914f484e36f0d69cdd292e044e5433f2751cd0bd87e8` |
| 88 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/instance-source-edition-4.md) | 565 | `declaration-track:71c19ece6c7aa4221e9b4d229f633ccf33671811e93d9fb5e8fbb5e742666729` |
| 89 | `theorem` | [mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-union.md) | 569 | `result-track:52580afc36db1fae82c7c78824cf0ce05d701ab9b387c6a1938217aabff50e33` |
| 90 | `theorem` | [union_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/union-tofinmap.md) | 574 | `result-track:842424a28b760c45762a4b1500036c7490b7a957d6e71eb2a374b608093abedf` |
| 91 | `theorem` | [keys_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/keys-union.md) | 578 | `result-track:63f28c51540b32dd3a161a1375af784c25703bd44bff348543b214ff4aede624` |
| 92 | `theorem` | [lookup_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-union-left.md) | 583 | `result-track:c6fdc95e9b486c2e1c075a6e0d4f93ecea7fa9716896552266c61c267d01e3d2` |
| 93 | `theorem` | [lookup_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-union-right.md) | 588 | `result-track:819cba8ca067056871fa4b28f160d9a6249511e60323f27a4918bf25bf1ddfec` |
| 94 | `theorem` | [lookup_union_left_of_not_in](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/lookup-union-left-of-not-in.md) | 592 | `result-track:027b0b0e72c8da6a06b51a78014024f2370af6d58a269e01ac7dac6c5b831d96` |
| 95 | `theorem` | [mem_lookup_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-lookup-union.md) | 600 | `result-track:3be0d13330cd1a0fa70b661c3f69f2c6dff84bbdf8e03a76d86755b69ba58566` |
| 96 | `theorem` | [mem_lookup_union_middle](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/mem-lookup-union-middle.md) | 605 | `result-track:54eabe3d0ced174c4c662c052c20dea35c5f721ec2d94d4aef078b406acaa0c4` |
| 97 | `theorem` | [insert_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/insert-union.md) | 610 | `result-track:a5d1c011ac9b89a98a0a2f4bd68ded9cb4c733bd3bf0081a7921ec3e9b6eb305` |
| 98 | `theorem` | [union_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/union-assoc.md) | 614 | `result-track:cb8a10b45f07dddd7bfd766b4a81e17764cccb017a91eb343e68267d9bf7af7c` |
| 99 | `theorem` | [empty_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/empty-union.md) | 620 | `result-track:a2f1d4c55ff33e999626efdd5d5fbdbaddb99dd2b8e27d93df4c2aa16cf895b1` |
| 100 | `theorem` | [union_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/union-empty.md) | 627 | `result-track:210cac5e238dd6ef134d9c95012a63eadec240c5ba7967506f189d43b5e5dbad` |
| 101 | `theorem` | [erase_union_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/erase-union-singleton.md) | 633 | `result-track:42f387e14505aef634c6cf31a77b68295786fe64b7d5394d53c50e3e4fc03420` |
| 102 | `def` | [Disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/disjoint.md) | 648 | `declaration-track:a23527df5550b5cbbe975844b9d7f7c15dc3d07c4845ddc9dec4a5a6572e900a` |
| 103 | `theorem` | [disjoint_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/disjoint-empty.md) | 652 | `result-track:54a031b204e429864b568b4835dced3c816fd5b01e8986f2c65a51a7d0292a33` |
| 104 | `theorem` | [Disjoint.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/disjoint-symm.md) | 657 | `result-track:b4f0a3577decd3d36c195c6169d14d0ac1eb491134e72f6d40251967539b5eb6` |
| 105 | `theorem` | [Disjoint.symm_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/disjoint-symm-iff.md) | 660 | `result-track:c398c79d44fe591505e6c2db6b1587a6752b13cf49dbcc3deb0717c5dfa0b651` |
| 106 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/instance-source-edition-3.md) | 668 | `declaration-track:499a31b0c974f6b69082b3183008853c488a2e525220da9212987aefe7a7e255` |
| 107 | `theorem` | [disjoint_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/disjoint-union-left.md) | 670 | `result-track:829d43faa3870d97b5b29ca7ebcfbe6fee069fa1fc379641672ebcd2fb23a8df` |
| 108 | `theorem` | [disjoint_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/disjoint-union-right.md) | 674 | `result-track:753d2302a23ad0926e14ac1195c80c8b5f4c7ef6b60811850ccffc9a891e91e5` |
| 109 | `theorem` | [union_comm_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/union-comm-of-disjoint.md) | 679 | `result-track:2fc706b2462b4c2634c94f9e32cfd81b829e90d421a3a58659fc449ec708b5e8` |
| 110 | `theorem` | [union_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapExtIff.lean/declarations/union-cancel.md) | 685 | `result-track:372aa5d157a09870156086a77b2eb5578a1ef9d10864942c88fc6ca20ec85771` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47a1371835bbfc4deb2a1137473893ed12953fba61f240c6156a2e8f53ded67e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finmap/Variantd4ba7c0b81a6ca7061e2a1f375360a007f3d9e1b5451d933509b39f6ce12eef7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
