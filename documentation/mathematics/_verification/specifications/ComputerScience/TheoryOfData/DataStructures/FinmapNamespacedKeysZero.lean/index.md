# Verification target: Finmap Namespaced Keys Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e626634fa0d863118308e45eef1e9be8f9576535",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e626634fa0d863118308e45eef1e9be8f9576535`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.AList` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Part` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-source-edition-2.md) | 33 | `declaration-track:e163a12b16118f0494c37c73cea1841a0d051a6022275e94d0ba315b733a83a7` |
| 2 | `theorem` | [coe_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/coe-keys.md) | 37 | `result-track:cdea19095b2f9018ca7ee92f80046dc80122654f39b72aca9816bd78394b5cdc` |
| 3 | `theorem` | [keys_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-zero.md) | 41 | `result-track:fb700d1db6b6baaa78cbaefa2bf70ecf6247dc848d123adaa52b32030dc2f402` |
| 4 | `theorem` | [keys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-cons.md) | 44 | `result-track:6e1c59a5d5aa9b8cee483000b854e08bbb1a52d5fa89134e30ef5d30c83f04af` |
| 5 | `theorem` | [keys_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-singleton.md) | 49 | `result-track:d5fa99bea6d8a0f396540889e56acf302ce420c2e67e236d0cf08751afa36e09` |
| 6 | `def` | [NodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/nodupkeys.md) | 52 | `declaration-track:c0f5ac062b279d7bec75ca5b1c9ab47e54434ba560c28c210ba9a49f20294b4e` |
| 7 | `theorem` | [coe_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/coe-nodupkeys.md) | 56 | `result-track:cbd61e1d574f4861e4cf487055da6514451cc1df38875c99074b429aca750df0` |
| 8 | `lemma` | [nodup_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/nodup-keys.md) | 59 | `result-track:d2d3d23bbfa724de4b6f7aafa61b79d723b66aa75924f1f533c96ec412c9b829` |
| 9 | `lemma` | [NodupKeys.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/nodupkeys-nodup.md) | 64 | `result-track:56dddb46cadb10a4d4f90837254eabdd9c56d7379ddcc0194b9dc6a1a700f16e` |
| 10 | `structure` | [Finmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/finmap.md) | 73 | `declaration-track:0c4a0047433715028473cb2e1be910e5dbada6905f5001ea94ffa81bdb399378` |
| 11 | `def` | [AList.toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/alist-tofinmap.md) | 80 | `declaration-track:ad38a58269e326cf5b6a6f9db0682f741b2dd097172f5f7a8edbe357965e4058` |
| 12 | `theorem` | [AList.toFinmap_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/alist-tofinmap-eq.md) | 85 | `result-track:7c41b2cf517ac0f43ecf4d4aeb707068e28c60a35c2b7f59f9b9fc2791725b20` |
| 13 | `theorem` | [AList.toFinmap_entries](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/alist-tofinmap-entries.md) | 92 | `result-track:c0edc29c94b06f1617ab54db2633ce218d9612d181402d180f233ff31632ed29` |
| 14 | `def` | [List.toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/list-tofinmap.md) | 97 | `declaration-track:9731b65060ae119251d8c8756e04c2222766c63fc28db45949a74511085b5ea9` |
| 15 | `lemma` | [nodup_entries](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/nodup-entries.md) | 104 | `result-track:09654d103fda7b618cea49243873d2a2c14054e7a5151cf9d53c66c03a13b882` |
| 16 | `def` | [liftOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lifton.md) | 109 | `declaration-track:43aec10d2035218e177806ccf9ff2a7c338e394ca59394a7cc379cbf587bd70a` |
| 17 | `theorem` | [liftOn_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lifton-tofinmap.md) | 122 | `result-track:b0f2b3f6e9d684b5eb6cb0856c977f5a4add57b2ba9031ffc15cd23bbc34dacf` |
| 18 | `def` | [liftOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lifton-source-edition-2.md) | 127 | `declaration-track:d0bf19b6e085bc30ea7f2d648002ab49f4fee1193c5f0adad6de9b98656ef289` |
| 19 | `theorem` | [liftOn₂_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lifton-tofinmap-source-edition-2.md) | 135 | `result-track:fcff855d069eabe702b452b55c6eba23682aaf0d79b10a0cf4562913eced2468` |
| 20 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/induction-on-source-edition-3.md) | 142 | `result-track:d03ab6c371a920607fd153f09d32ac12501ccec486952119915f2b5960f97a8e` |
| 21 | `theorem` | [induction_on₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/induction-on.md) | 146 | `result-track:45c7a0067c2c58671a74b8d14b178062258d32c80bd512197684b5e4750a3569` |
| 22 | `theorem` | [induction_on₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/induction-on-source-edition-2.md) | 151 | `result-track:81e3fe00f7547015b2f45d101d5ba34738478d67167f492f1c580056652d079b` |
| 23 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/ext.md) | 158 | `result-track:9a8c13ffa09a58d27498eb6fd1c1e9fd5e4bfb7b1f24078908b57b5eec5c17ca` |
| 24 | `theorem` | [ext_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/ext-iff.md) | 162 | `result-track:40c0d65c2b87e5a235ddaa64fa2eefb0a5c547f982a57f225386def4838df928` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/instance-source-edition-3.md) | 168 | `declaration-track:7b776dfb96d60e0ba6fe1f142b62c78f6fb2fb9df166ce42e7fd4bb971544630` |
| 26 | `theorem` | [mem_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-def.md) | 171 | `result-track:964c9e7a85708178f765732817fa492a6ef7ef9147efa1e43c9fc8e225c0ec33` |
| 27 | `theorem` | [mem_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-tofinmap.md) | 175 | `result-track:6cfee39dec795dab86223434afcba8496d6a40bcf8d0946a075d869610199038` |
| 28 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys.md) | 181 | `declaration-track:1b9f4b0a85f30cb39b494c6c428869a957728ed057e6d943310a766e6b256b82` |
| 29 | `theorem` | [keys_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-val.md) | 185 | `result-track:bd5cfba313130b79d7c6cda5f342ee85b4bcb1e515fd438caa0a847d0c7151d4` |
| 30 | `theorem` | [keys_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-ext.md) | 189 | `result-track:82f4b255096e087c04f5d6f958d22f33ab4891766abb841ab71b3e5afc1e1b0e` |
| 31 | `theorem` | [mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-keys.md) | 192 | `result-track:4b30eb36ffdf46efc972f74b54613b05cbdc2ffd11a263890521a66f4e3a4f5d` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/instance-source-edition-5.md) | 198 | `declaration-track:8885f369568d997a8e2e1f8c19b752187084558f8eabbabcad4f679a2f5722ed` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/instance-source-edition-2.md) | 201 | `declaration-track:20cab4953aaea516473a7a11c559908862a694c8acbe38ccce941326a8ada8b5` |
| 34 | `theorem` | [empty_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/empty-tofinmap.md) | 205 | `result-track:d2e2c769c7f3c8f89d129f99214a28f330aaff7ffd60108d77c71bdcc71c4aa0` |
| 35 | `theorem` | [toFinmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/tofinmap-nil.md) | 209 | `result-track:cef56beae5c24671be6d86c923a46f921d26e51c2f8e2b3a13315d75f7345d3c` |
| 36 | `theorem` | [notMem_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/notmem-empty.md) | 212 | `result-track:c320b9ed3466a23f5eb39b31abed6d65bbe5edd6136203fb222d2aacf21c3a78` |
| 37 | `theorem` | [keys_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-empty.md) | 218 | `result-track:423c478e51c46019fa14fdce02abcaf7d19e89a924261bf57ecf764d005a0f53` |
| 38 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/singleton.md) | 224 | `declaration-track:6b48c5460ddf38bfab7ea4d92bdfcb6c5079a7dfbbac1acf0bfa4be2e9599a2f` |
| 39 | `theorem` | [keys_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-singleton-source-edition-2.md) | 228 | `result-track:ed9c2c33e9221a1d22438db1798b39e4739438c5649ac82b7fa8e38bb008f89f` |
| 40 | `theorem` | [mem_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-singleton.md) | 232 | `result-track:992f798da22b4ed86bd54d46c8c65b7655b2bebc600bad5be47789fd1d008512` |
| 41 | `instance` | [decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/decidableeq.md) | 239 | `declaration-track:5270d809581ee17a5f7e30c81ba81b5163522d9a76444986c19ee887a2bb4b4c` |
| 42 | `def` | [lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup.md) | 245 | `declaration-track:c97c9756ce5ff12b8678edc4f2fa775b5824bbfd424da767afd5f0e7641cfabc` |
| 43 | `theorem` | [lookup_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-tofinmap.md) | 249 | `result-track:8804078584b520da1abecaa4b7d40b19d82904d6052df77f6268368476862eba` |
| 44 | `theorem` | [dlookup_list_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/dlookup-list-tofinmap.md) | 253 | `result-track:e2d5c9bfeb463afebeb04014cc84ac42b6f9487cb97ab9392c0ba66c35a69809` |
| 45 | `theorem` | [lookup_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-empty.md) | 257 | `result-track:e327ab30fd8fd0a12891353ed31eae895fabc2d9ba5db7d0fb96ad3842b14df3` |
| 46 | `theorem` | [lookup_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-issome.md) | 260 | `result-track:dd801c187323346954dd03ea1548b3b2d1f5534d45c09c0a2c6bc89840ce751e` |
| 47 | `theorem` | [lookup_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-eq-none.md) | 263 | `result-track:72b8203898976cd51389960e3d3c0d5932676eaf3a413a5d6d034b4b1127cbb8` |
| 48 | `lemma` | [mem_lookup_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-lookup-iff.md) | 266 | `result-track:9e2bd1f2af3dc08573717f5c8f0f74ce658781f4530604d0393c39c50ac5de85` |
| 49 | `lemma` | [lookup_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-eq-some-iff.md) | 270 | `result-track:1f60deee8de60bb697093e84eb755796cd085a07814f09d7260837609b7a0222` |
| 50 | `lemma` | [sigma_keys_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/sigma-keys-lookup.md) | 273 | `result-track:542d3a44179f578b94ce9ccb5d0ad2cc8e9f916b390c23892c7f5b42bfc4b6cd` |
| 51 | `theorem` | [lookup_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-singleton-eq.md) | 280 | `result-track:0f0a99d32a06223a773b80dd665715f4dbfb0161c8cc1c3b86da3a3354f1da5d` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/instance-source-edition-7.md) | 283 | `declaration-track:d8c4752673ce9ddda32dd2c93a83831ca7c295e0d01146cd7fe521a32294cfdd` |
| 53 | `theorem` | [mem_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-iff.md) | 286 | `result-track:def4fc53aea4194b6d62e96e25e4c5b63c476facfc12547c703525e76d0c11ca` |
| 54 | `theorem` | [mem_of_lookup_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-of-lookup-eq-some.md) | 290 | `result-track:5143617f27bc856811caf25e018f05d2a5eddf77788f26bc249125d1ba07fc9f` |
| 55 | `theorem` | [ext_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/ext-lookup.md) | 293 | `result-track:6001750ab0d2ca68ddd643c90254191e3a7ec316dcb84e10d3d387c470340b4c` |
| 56 | `def` | [keysLookupEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keyslookupequiv.md) | 304 | `declaration-track:2745a0068c0e891ef3841d2c1dbf10c0234ff3f427f42ae37a5b4bf90038dc12` |
| 57 | `lemma` | [keysLookupEquiv_symm_apply_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keyslookupequiv-symm-apply-keys.md) | 319 | `result-track:0b17ffe496beb4e1c1a3b8503af51e7241dbb1a913944493036e2020bd77a3b2` |
| 58 | `lemma` | [keysLookupEquiv_symm_apply_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keyslookupequiv-symm-apply-lookup.md) | 325 | `result-track:92216f0d047b50f0187d0c87482f923ba75092f3ed0f53a402323848d7d80c08` |
| 59 | `def` | [replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/replace.md) | 335 | `declaration-track:55ce60b9d47b1cb6780458ad7ea5c0ff5fafc61a4e46901a63f6a7ff2fdf1ba8` |
| 60 | `theorem` | [replace_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/replace-tofinmap.md) | 340 | `result-track:eaaadff57dd3090a7758d8d2ede6f84e9b803831ad1145eb96d1322658d4d495` |
| 61 | `theorem` | [keys_replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-replace.md) | 345 | `result-track:4ca56dc904f96d60fb59e2ac383163be32c6715cc453afeebd118b8a61c524bd` |
| 62 | `theorem` | [mem_replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-replace.md) | 349 | `result-track:0c74b382415e0c814f98071a5cfca3a9f677b455e803b6a3051294785e943ab1` |
| 63 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/foldl.md) | 357 | `declaration-track:e9d36c78ef529f9d7c085b08d9d1945c5fa99fa4579ed5ff57fdf4ab11aa078c` |
| 64 | `def` | [any](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/any.md) | 363 | `declaration-track:b82de24dd2b9bc43eefdb7d8c0d7efb5743aa0f0c9562a657e681262d912f3f9` |
| 65 | `def` | [all](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/all.md) | 368 | `declaration-track:b32bb219b91da0eab0976bf958abf76748bca38b313c2d70607beccb5e11bbf0` |
| 66 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/erase.md) | 379 | `declaration-track:51e0f13cac9c18072f1b37fb5bc28abe19a0fa1eb23e00f1931401070462a741` |
| 67 | `theorem` | [erase_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/erase-tofinmap.md) | 383 | `result-track:074f4efc5f6712bc1598f6500da3d48929ef03c6e1dab50878cafa1f82ed8bd6` |
| 68 | `theorem` | [keys_erase_toFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-erase-tofinset.md) | 387 | `result-track:e64c077450d8ba4d168a96adbab14c76bc46ea8f8a57d3bb0a6c9f7b638225a0` |
| 69 | `theorem` | [keys_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-erase.md) | 391 | `result-track:860a0c79ecd1d7cac385bbcf5626e05970f51495ad2cf72d5afb04628343ebbb` |
| 70 | `theorem` | [mem_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-erase.md) | 395 | `result-track:234733d8353c61088d166e729a27a6632625ba8038c67420c8b3d0d7545b45c6` |
| 71 | `theorem` | [notMem_erase_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/notmem-erase-self.md) | 398 | `result-track:cfe0816059d383822a0588692427f8ad2b4216df73e5c3a01572d9b3121bb000` |
| 72 | `theorem` | [lookup_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-erase.md) | 406 | `result-track:d40b5e2c6f9380a0422dda5b8eb47b6cf1fb8bc70d90dd63f8473effe18680f5` |
| 73 | `theorem` | [lookup_erase_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-erase-ne.md) | 410 | `result-track:8f8bdc14eb384af7d0faf8f94cb27383172341d794182f12e707cd288799fed8` |
| 74 | `theorem` | [erase_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/erase-erase.md) | 413 | `result-track:72bb2758d690da3b9768036cdd4ad60c1144a46219c0cb3eb50143f8f5731c07` |
| 75 | `def` | [sdiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/sdiff.md) | 420 | `declaration-track:b050db0c74e0cf50b318df9f89383eb102b3b68ef15d5350c257a80e1d269357` |
| 76 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/instance-source-edition-6.md) | 423 | `declaration-track:ad07b74135154bd7c71cbd1d46cb995fcb238a47bf049fca555152375097272f` |
| 77 | `def` | [insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/insert.md) | 430 | `declaration-track:75bb5c977ca23c5830e2977b99b1e496f840f3085e8c1134960521631ede55ac` |
| 78 | `theorem` | [insert_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/insert-tofinmap.md) | 435 | `result-track:5e7f6323100c0ae88107b838c8768d48cd3b344cc7f5f075f2ec8b953a9fc638` |
| 79 | `theorem` | [entries_insert_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/entries-insert-of-notmem.md) | 439 | `result-track:39f9cf931fc75466991884dcf098a55e283b4bc4e27d284b74ec144a67ca5ae2` |
| 80 | `theorem` | [mem_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-insert.md) | 449 | `result-track:5cf2d218f63c5ce1aa7167a623854d154dcf6be255db624bc44c2d5f0c859c94` |
| 81 | `theorem` | [lookup_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-insert.md) | 453 | `result-track:3c80e33c6cb4049e81960f29e941d0b55b4a7478db0db1a9c9bbf08efc262929` |
| 82 | `theorem` | [lookup_insert_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-insert-of-ne.md) | 457 | `result-track:ca42174e3d415cc63544a51599124e34923e818903fc00a213fd54703aa54755` |
| 83 | `theorem` | [insert_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/insert-insert.md) | 462 | `result-track:2dee254050c44dff2a97ba310a61a04ace891c5663daa713e0eab992abee374f` |
| 84 | `theorem` | [insert_insert_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/insert-insert-of-ne.md) | 466 | `result-track:071332865b7188973ad2fde5595e5202025d1960707711b34e37057a983dfc00` |
| 85 | `theorem` | [toFinmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/tofinmap-cons.md) | 471 | `result-track:2cdf2525098213207e00b30c0398995583166c84621d0fde81f8aa05788e2941` |
| 86 | `theorem` | [mem_list_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-list-tofinmap.md) | 475 | `result-track:51a74d889bfde7b4a595ac568849b7957543969fb4bd2bed0bc1c25b1b4b4f5a` |
| 87 | `theorem` | [insert_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/insert-singleton-eq.md) | 486 | `result-track:2996a0ac6b138fe5a9fe3d4615d19b108cafacb63e6b688896bbf6af55f58e68` |
| 88 | `def` | [extract](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/extract.md) | 492 | `declaration-track:ffe47168b6cbb8cdc5cfd9a32ce18b267bd51a7ccb1595f0109570f8762fd1b1` |
| 89 | `theorem` | [extract_eq_lookup_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/extract-eq-lookup-erase.md) | 497 | `result-track:b7a1efaa22fb251ace64cbe50a53424e466c7a3aea0a3dd2fe9015e6921dc424` |
| 90 | `def` | [union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/union.md) | 504 | `declaration-track:81bada1e5d004b4af28fa524df2cf79572eee399b90a2500d7f7e697af64dce0` |
| 91 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/instance-source-edition-4.md) | 508 | `declaration-track:7e82fb3fc3491dff143c53c57c19c81f58f77813fcad1f429d080218f08a701b` |
| 92 | `theorem` | [mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-union.md) | 512 | `result-track:287e070094d49339d8e2918b3d0b07dc4105b5a1b7e5b9a3c65badac138e5618` |
| 93 | `theorem` | [union_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/union-tofinmap.md) | 516 | `result-track:83e409a84bf5adebea1581958b579adc3eeebc262267abafd57ca6cc6afea6d3` |
| 94 | `theorem` | [keys_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/keys-union.md) | 519 | `result-track:58689c8bed4e5d2f2eb3a0bc3873104223e46698b3d97246bdbebd8e01399602` |
| 95 | `theorem` | [lookup_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-union-left.md) | 523 | `result-track:63a3d8a68c4c685b4a64530c0c9e46c2a95465b031a963cf5b3e062c6142720c` |
| 96 | `theorem` | [lookup_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-union-right.md) | 527 | `result-track:364f1822a6e268c06d720be691df5ceba3bc9501505bd1e42d438ea183a6d3d5` |
| 97 | `theorem` | [lookup_union_left_of_not_in](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/lookup-union-left-of-not-in.md) | 530 | `result-track:0d7b03dbc3ee26bb9f7a4f2cccc6c0567bd31f33d402618433d3de66df51bea1` |
| 98 | `theorem` | [mem_lookup_union'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-lookup-union.md) | 538 | `result-track:537c18d0c0da1fee50512ed8d8cfb00c5dcb04572a94a7eb3bcc2100a86009b9` |
| 99 | `theorem` | [mem_lookup_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-lookup-union-source-edition-2.md) | 542 | `result-track:c3da601bc6b4207ec04b294c910b77280de558f2366ade38e8230d21dbc7ad1d` |
| 100 | `theorem` | [mem_lookup_union_middle](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/mem-lookup-union-middle.md) | 546 | `result-track:93758567a60043204cb4bc6215ce5eee424fe1d4fb898bf3046cb963d071da79` |
| 101 | `theorem` | [insert_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/insert-union.md) | 550 | `result-track:807ea49244c33a29cc9a73e804418fb8ee0b7b61343763119ad282cd7ed48e8f` |
| 102 | `theorem` | [union_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/union-assoc.md) | 553 | `result-track:d730566204550b73067eccc2e412f451e873f326187ac16639d9928368281e20` |
| 103 | `theorem` | [empty_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/empty-union.md) | 558 | `result-track:62b7a4c8c81fd677472999f69a610533b5cfcd550c0ccb0c42dd987fb32d96c6` |
| 104 | `theorem` | [union_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/union-empty.md) | 564 | `result-track:ba58629ce7021e19f037bbe19140074c59b9049a93ab072b203ea373871b65e3` |
| 105 | `theorem` | [erase_union_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/erase-union-singleton.md) | 569 | `result-track:4d845730a31f0b54754765cbf8329bdf96d4d0d76b90ae006d00da6320691da6` |
| 106 | `def` | [Disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/disjoint.md) | 583 | `declaration-track:0d0338635492d2a89ba347efee67aab4a40e5805b5590cfe6bc397ce61cae10d` |
| 107 | `theorem` | [disjoint_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/disjoint-empty.md) | 586 | `result-track:cab0f5740247177b5e7e23e3c1d0ffaed5255931351bd7b1ebece4ee6c3c6af9` |
| 108 | `theorem` | [Disjoint.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/disjoint-symm.md) | 590 | `result-track:f927ae96be932f22a60856385e3755b356f76def2c8378cc7b06ce6f86cab05f` |
| 109 | `theorem` | [Disjoint.symm_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/disjoint-symm-iff.md) | 592 | `result-track:5ba37550323eb5210da4c6cad8e27df3f94796f4d389db645a8603fcc8bad66e` |
| 110 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/instance.md) | 599 | `declaration-track:0d794f4663f14627b0042bc3366311d07e1e4893031d46dc709e4ab841fdcf22` |
| 111 | `theorem` | [disjoint_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/disjoint-union-left.md) | 601 | `result-track:51271e7547cfe0a0629b8f17b0854c917c6102913456058c904297450f794c1e` |
| 112 | `theorem` | [disjoint_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/disjoint-union-right.md) | 605 | `result-track:9252002ea281598f35b7f0c6d01ebc066cb758d71d87d63f756cb0b155aa143f` |
| 113 | `theorem` | [union_comm_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/union-comm-of-disjoint.md) | 609 | `result-track:6c3386220b1d4b837758b27502fd87ddac4766721c05fa674d55e68b9330397d` |
| 114 | `theorem` | [union_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapNamespacedKeysZero.lean/declarations/union-cancel.md) | 614 | `result-track:33a215c10523f4ae4782c964edf47ef997cc8dca1b6b5f53b313551cb9ac1314` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb72de5ae429f511800b45cfe38b2244fe01901049b3b8d52f2e68c597fd6dfc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finmap/Variant1de9b36639fd6ccf7c1934fcaf7bfa7c0aa86c64e259f355ab6d26303865fdc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
