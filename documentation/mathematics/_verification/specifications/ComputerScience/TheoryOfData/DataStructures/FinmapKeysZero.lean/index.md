# Verification target: Finmap Keys Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3423b2508d1b661cda76775bf960c19455f698af",
  "lexical_observation_count": 114,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3423b2508d1b661cda76775bf960c19455f698af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean.json)

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
| 1 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-source-edition-2.md) | 25 | `declaration-track:f5a32b88514b9f329988e04e7e3e0a883634c8bf235bc1a85010b5c67cf6fcc3` |
| 2 | `theorem` | [coe_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/coe-keys.md) | 29 | `result-track:64eaa018e293961b7c5e47fbcf2789437227fc5933ce2204beeda9e272dc4261` |
| 3 | `theorem` | [keys_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-zero.md) | 33 | `result-track:079531ae98c6753dffc6fc9592e93fff5906e10fc58c519ae5f53c42885d109d` |
| 4 | `theorem` | [keys_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-cons.md) | 36 | `result-track:3e31f0f9ed7b67bfac5e1569fc0a0fe990679361ae2697fc71fff8cdea08ece1` |
| 5 | `theorem` | [keys_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-singleton-source-edition-2.md) | 41 | `result-track:b53d50a3ff1a3d11d18bf7f83016a0b5e66ed629ffd93a6bf721020b4156d6b0` |
| 6 | `def` | [NodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/nodupkeys.md) | 44 | `declaration-track:532740f489ba5fef29cc0fb4b1f4cf99502634df8dc81c43d3078174dfcfdda9` |
| 7 | `theorem` | [coe_nodupKeys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/coe-nodupkeys.md) | 48 | `result-track:aa07d34cdf18596c6ce195395b373318d7f12dfa653af6de3c884edd144a3b7d` |
| 8 | `lemma` | [nodup_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/nodup-keys.md) | 51 | `result-track:2529e30b4bc286897666089e22452ee7b1e931400bf5769bd54ee67c9a429742` |
| 9 | `lemma` | [NodupKeys.nodup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/nodupkeys-nodup.md) | 56 | `result-track:0d475aba3ea4d3f52f0debc16321f20bbdf97efb885b7ae26fa9233816a1b41c` |
| 10 | `structure` | [Finmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/finmap.md) | 65 | `declaration-track:237a1e387518c7ca9ca7500fc40fd0cf32e4654bfaf22d43cb48b212864937c3` |
| 11 | `def` | [AList.toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/alist-tofinmap.md) | 72 | `declaration-track:1b7e9a608196e2921ee4f6dc46d028b33e16763e885212963075f294aa4e95ea` |
| 12 | `theorem` | [AList.toFinmap_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/alist-tofinmap-eq.md) | 77 | `result-track:af30c67cf5e1e9bd90ad831dacb50679ce87b68529b633a85d979795a2f655a3` |
| 13 | `theorem` | [AList.toFinmap_entries](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/alist-tofinmap-entries.md) | 84 | `result-track:f274e4f570125f555d73d025f7c59602862701f4e1bbb03b9cc3c6722cb802ce` |
| 14 | `def` | [List.toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/list-tofinmap.md) | 89 | `declaration-track:f385dd4ac8ac3b52259ca2784d71ca036c981326640e2a247ea4eba19082363e` |
| 15 | `lemma` | [nodup_entries](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/nodup-entries.md) | 96 | `result-track:4809217e436ce05dbdc349c79f55e9783483a8809677597e9f3032568ebb4a97` |
| 16 | `def` | [liftOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lifton-source-edition-2.md) | 101 | `declaration-track:8e57ac67d3b0120ee8c57a2ddbe632a5b3e21609853819868fefc4d470505129` |
| 17 | `theorem` | [liftOn_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lifton-tofinmap-source-edition-2.md) | 114 | `result-track:d0b1b32c5091964c1dac719a156d8d25b31beee42d5f82c24626dbae7cb6af67` |
| 18 | `def` | [liftOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lifton.md) | 119 | `declaration-track:1110fd83074cba2049c72053abcaceebc5d5d27415cbd4522a8ab4519c225bdf` |
| 19 | `theorem` | [liftOn₂_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lifton-tofinmap.md) | 127 | `result-track:499108b1ee061832f65ce85f74124196d1999c35ed8bb06571e955f4014befcb` |
| 20 | `theorem` | [induction_on](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/induction-on-source-edition-2.md) | 134 | `result-track:d0b8728d1d3afb0758dee5330a2d693775e60cf4e9d0082d1299a4ad2c9a9268` |
| 21 | `theorem` | [induction_on₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/induction-on-source-edition-3.md) | 138 | `result-track:da64544ea2f2dd509a48fcad9c16b23cd3ce42bc001a9b04561afccbbf368d03` |
| 22 | `theorem` | [induction_on₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/induction-on.md) | 143 | `result-track:5cea2a98d839f24019c7070a5f9985fa0b47ac998ca8752466fe20524b414ec9` |
| 23 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/ext.md) | 150 | `result-track:f7f02301939bb63f76c80a0ee56bd53fcacb3913ca6122b709035b35b268fe3d` |
| 24 | `theorem` | [ext_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/ext-iff.md) | 154 | `result-track:6fd34d2a2fdc83d0542a5db5b92c9f4714f5ee377d31470f88d55382e184c53d` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/instance-source-edition-4.md) | 160 | `declaration-track:5a1db88a8ba03ce8585264984e2d42ebf62e77e7f5bf9ac94a68536e08e8e273` |
| 26 | `theorem` | [mem_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-def.md) | 163 | `result-track:d7c6a73f7d1c4be959f75be7f4af5c53284c19328c72003c27401abb7e8aa7ff` |
| 27 | `theorem` | [mem_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-tofinmap.md) | 167 | `result-track:1dc4cc13795951d950820bf1f062d74379cc7fed8598215e5be511075e970ed3` |
| 28 | `def` | [keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys.md) | 173 | `declaration-track:70c960f12583049c35d4e73eac2eebed12ec9640500d685a4c0276202f425f43` |
| 29 | `theorem` | [keys_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-val.md) | 177 | `result-track:e01ed91927efaa801c627772615c269a7bb24e21f13057d7164e98d935275574` |
| 30 | `theorem` | [keys_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-ext.md) | 181 | `result-track:b8b7fbd092878d51bfb63b67c80d501340491db1a378d9075fad8546fc2b4098` |
| 31 | `theorem` | [mem_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-keys.md) | 184 | `result-track:8b05b526e83baa122dc79ca3ee268290b578c6c37f4dc2e97bcaa9a2c8ed2bf3` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/instance-source-edition-2.md) | 190 | `declaration-track:1d48ec948b01fec48dd088f1ba571331a51fd7c83f481dc8885527155b183294` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/instance-source-edition-7.md) | 193 | `declaration-track:f38ee86986762303273a9acf4c628e83e088519fa90a3d0316f61b921da61c1f` |
| 34 | `theorem` | [empty_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/empty-tofinmap.md) | 197 | `result-track:2aafcae637a12537fdfb65eb0a5da3cda2cda78333641589c7b1447ee3a45a66` |
| 35 | `theorem` | [toFinmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/tofinmap-nil.md) | 201 | `result-track:0d839a819136f9a2e9600e524a0ff1e096fbcd918d78b78a96ab07fe86b688a6` |
| 36 | `theorem` | [notMem_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/notmem-empty.md) | 204 | `result-track:4016554785eeadd6707c215f79541d3f8b03ded6f4fdbc4ff50676d871962184` |
| 37 | `theorem` | [keys_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-empty.md) | 210 | `result-track:c53c9ea3b37fbedff1c213d3f4d3460cbce2b449e759b753fa07b8cc3b3d6010` |
| 38 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/singleton.md) | 216 | `declaration-track:babf7b35210a937f2abb222e3fc923f2f436809e27ee00b0963ec3ec4622865e` |
| 39 | `theorem` | [keys_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-singleton.md) | 220 | `result-track:82d2fc139874df44c31cf2422256aa741b24cc50ab1dd8fda351bd4693b0379e` |
| 40 | `theorem` | [mem_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-singleton.md) | 224 | `result-track:9b487856c93f37ebee2c1db1c90ebdd8f664141441fdeceef117f631534c1628` |
| 41 | `instance` | [decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/decidableeq.md) | 231 | `declaration-track:7f9801de4753274b3ab9ebcc7f9f8322d1ff5217881ebe7eea1675dd3e04b577` |
| 42 | `def` | [lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup.md) | 237 | `declaration-track:9b10199f09efaae268ff3c730b17b7fddc992b669801b351f28628454f4e27f8` |
| 43 | `theorem` | [lookup_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-tofinmap.md) | 241 | `result-track:90e4f2f37ce44d87c3e31ae7fe85e793039222a09934470cce1d43c7e559e699` |
| 44 | `theorem` | [dlookup_list_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/dlookup-list-tofinmap.md) | 245 | `result-track:fb1d53297da65e903c3006f8e1030255f06b4798b59e0708fc04ba9c2ef34bb6` |
| 45 | `theorem` | [lookup_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-empty.md) | 249 | `result-track:c7dd167bf42d54936bd792bc312170498a34eee562bdc46e659c530ce5d566ae` |
| 46 | `theorem` | [lookup_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-issome.md) | 252 | `result-track:9189d0059bbd8b9c15559a6eea2933b41b671bbe266592421f2303778584d196` |
| 47 | `theorem` | [lookup_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-eq-none.md) | 255 | `result-track:61d0ac91108a17a8bc299b50a306b52764a27bbbbcf1667714855aa7ec8d4d4d` |
| 48 | `lemma` | [mem_lookup_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-lookup-iff.md) | 258 | `result-track:b5339acf3c4b53274d4d0fe98ff842d45c29ee4673f7ceb89b03b1b1a34cc6e4` |
| 49 | `lemma` | [lookup_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-eq-some-iff.md) | 262 | `result-track:d604b2c33ded056243a847b2b738a106be7808cabf441e811059ba4513bc48b8` |
| 50 | `lemma` | [sigma_keys_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/sigma-keys-lookup.md) | 265 | `result-track:fe669f57579acbd04e8cf277d4fb7d0db5d26bc2f148a61e5804c2a915de581d` |
| 51 | `theorem` | [lookup_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-singleton-eq.md) | 272 | `result-track:065aebc48d2fbaf914472b23009c8531b0d2ac19329f44d1374512480dfbdffb` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/instance-source-edition-3.md) | 275 | `declaration-track:3dd2aa4073a6897ac842a7c7818502dcf9ea63cf7f211cfb5c5e0cba12233e62` |
| 53 | `theorem` | [mem_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-iff.md) | 278 | `result-track:e76e7aca85e6b00b4ba4f19ddd3bb95bbfc611a5cb7e44ed983946782b9e1654` |
| 54 | `theorem` | [mem_of_lookup_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-of-lookup-eq-some.md) | 282 | `result-track:6239beb8844f85f92c52f4923da35dd0b43dcf8e57b36a677ed409c9e934cbc0` |
| 55 | `theorem` | [ext_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/ext-lookup.md) | 285 | `result-track:21dd38e794a2bda4cb5b46258c1f9d3c952329e5871506333b7cd9e7fd21ebb6` |
| 56 | `def` | [keysLookupEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keyslookupequiv.md) | 296 | `declaration-track:367f7af87755e8b0e261511031865a0d54878c35bca520b7cd6c544c951faeb3` |
| 57 | `lemma` | [keysLookupEquiv_symm_apply_keys](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keyslookupequiv-symm-apply-keys.md) | 311 | `result-track:b95a79aba4e88cf3c92542a3d9a0d1d76a7b5a02db0108f3b77efd2b1fe61ecf` |
| 58 | `lemma` | [keysLookupEquiv_symm_apply_lookup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keyslookupequiv-symm-apply-lookup.md) | 317 | `result-track:99a54fb61d8a73eb05db14004331db07f2cc9dccc0cdd299c2635860397513ce` |
| 59 | `def` | [replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/replace.md) | 327 | `declaration-track:e1c5d1f4f6c0d5d87aa86b33f7b2361da68d31419c030e02cbbd6d21fb0e0afc` |
| 60 | `theorem` | [replace_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/replace-tofinmap.md) | 332 | `result-track:4493b6c56bcd1bec8f3d0685bf58e69e522d15d6fe9debbbea71ca480efa7190` |
| 61 | `theorem` | [keys_replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-replace.md) | 337 | `result-track:9d60ddf3b34afbed2e7b4d8cb6d5156866ce5431e4c7d9aa0e3c8fb5159ee8bf` |
| 62 | `theorem` | [mem_replace](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-replace.md) | 341 | `result-track:0e0e15d388c36f0edb77a57b8bab95683f169a0db479d42352abd9cb04e68a81` |
| 63 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/foldl.md) | 349 | `declaration-track:8191c51de44a966582737c279ff0c0be331316f96adecd54df8edc56c59d4204` |
| 64 | `def` | [any](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/any.md) | 355 | `declaration-track:d536beef520a56141a41937dc2f25fbb2728e99a6fa8bb230db763831afeb953` |
| 65 | `def` | [all](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/all.md) | 360 | `declaration-track:a80c6d58d89638b3f006b69ffda9639f71aed08b5cc05844b06ed362df7bc6a5` |
| 66 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/erase.md) | 371 | `declaration-track:a236316fce2a0e70da0cec82b9b4fb4b5b7fc43e938d0b5b219f3e64aaf92ce0` |
| 67 | `theorem` | [erase_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/erase-tofinmap.md) | 375 | `result-track:23b0282aa57ee694cf16115ba42d4480c7a95ed58c3fafc2a67a7629880280cd` |
| 68 | `theorem` | [keys_erase_toFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-erase-tofinset.md) | 379 | `result-track:52b95fa93c4d2ecac10b9094f111cb6efe2531c6a63f4a72ecc6e0cb0f3164d9` |
| 69 | `theorem` | [keys_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-erase.md) | 383 | `result-track:509fefe2ae3bc82d4dfc2c12ba6ac583f79356501f34cd3bef8e391381907b25` |
| 70 | `theorem` | [mem_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-erase.md) | 387 | `result-track:79faf2d728102d78406095caeb4b7e42296eb25aef4c48e87a9c4e16971f55b2` |
| 71 | `theorem` | [notMem_erase_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/notmem-erase-self.md) | 390 | `result-track:f61e6cce815e5b35454d2a8160f30c0c09a853682ae582dc8d91c40740d9e42a` |
| 72 | `theorem` | [lookup_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-erase.md) | 398 | `result-track:2a61a844b39c360f8d23be6c5e5101ed4aede11f4b14d154e7824407183c6651` |
| 73 | `theorem` | [lookup_erase_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-erase-ne.md) | 402 | `result-track:e855c753fd086e64592ac8425acff2c22af65ebd6d117193be8021f9f5d2b57b` |
| 74 | `theorem` | [erase_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/erase-erase.md) | 405 | `result-track:026e108960e8dfc6a71ec2966a15d3f1f226f52cb1ba6c5f8e967cc3a7ecf1ae` |
| 75 | `def` | [sdiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/sdiff.md) | 412 | `declaration-track:8a27f3ee290ec22494ff82e67a09aeab94df1f38468047be72a0a8d4a8149c2e` |
| 76 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/instance.md) | 415 | `declaration-track:144cc9550959fa0672641d88e3d6316eb71a45fe5cabb6f9effec2c6f9b72fb3` |
| 77 | `def` | [insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/insert.md) | 422 | `declaration-track:3035cbebb543794e4e9100dce9b6fbb7166ab12096bb2e85390c953765a34d0c` |
| 78 | `theorem` | [insert_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/insert-tofinmap.md) | 427 | `result-track:e935bdf89fd940d6df32ba651332064297ad66e3de0f3c5249cba06bdf7c5eca` |
| 79 | `theorem` | [entries_insert_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/entries-insert-of-notmem.md) | 431 | `result-track:7797658de680471d77261fa586cf5e47e12c9b4de6ed6c2364c2e0a3f4bb3eaf` |
| 80 | `theorem` | [mem_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-insert.md) | 441 | `result-track:01ea92722bb8a77af4f3a71f01c9868029755b1e5d3bf47c5eda44d5d2ff657c` |
| 81 | `theorem` | [lookup_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-insert.md) | 445 | `result-track:4643569b91220e273ad84f5252ce23aa5eb243795e8a84b2669e20484a6c2d66` |
| 82 | `theorem` | [lookup_insert_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-insert-of-ne.md) | 449 | `result-track:de93143825b1b46011f110e4ede46570b421bc5ce17356a9ee9d0ae383a41e5a` |
| 83 | `theorem` | [insert_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/insert-insert.md) | 454 | `result-track:39eaa247c7b6cc6429552141b235f772fb246dd988077d5c365ce3afd1db9c56` |
| 84 | `theorem` | [insert_insert_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/insert-insert-of-ne.md) | 458 | `result-track:bbab5a9be26bc3cd208906e016949bcd699313f749ef5e4b551f1261294a14bd` |
| 85 | `theorem` | [toFinmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/tofinmap-cons.md) | 463 | `result-track:53ceedaf54d805c63c783baaf65e6d158eba8f0f2cbc0735f6b0080298c86eb7` |
| 86 | `theorem` | [mem_list_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-list-tofinmap.md) | 467 | `result-track:690328c6cc978edb8aec2f44c65de3a2e8ebba36442eb4279c14ae61a61040f5` |
| 87 | `theorem` | [insert_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/insert-singleton-eq.md) | 478 | `result-track:03f2f5a1c2a7fb103fcae4d5758de6c053aab2882e09f7b7684c530663881447` |
| 88 | `def` | [extract](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/extract.md) | 484 | `declaration-track:ab824b2674fb7a754da051b65b6b741066ae7d43b5209e6f4fbba27065be9182` |
| 89 | `theorem` | [extract_eq_lookup_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/extract-eq-lookup-erase.md) | 489 | `result-track:d672be35b2a8a816327df9485f921d3696735d19a03228a5884740e07d322fb8` |
| 90 | `def` | [union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/union.md) | 496 | `declaration-track:3c78c58d9e5cf2114320013af63e5baf944190130b3cc5becacadaaa00d42b68` |
| 91 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/instance-source-edition-5.md) | 500 | `declaration-track:9295a4604ebac99a51ce529339d60db44705062c31d01174cf261acaf86cdccc` |
| 92 | `theorem` | [mem_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-union.md) | 504 | `result-track:1812799dcce21247731dd66678fe99c24da377160b83ee4e62dd1f9652250a6b` |
| 93 | `theorem` | [union_toFinmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/union-tofinmap.md) | 508 | `result-track:2fbeaf92e38afcd8ef5d7c9f124fbd4bb5a51d951c2b3405991e91af47dc03a7` |
| 94 | `theorem` | [keys_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/keys-union.md) | 511 | `result-track:fb4ba7f9f9ae4ebbfb8820eb908c6f78946eef78878ee7a3beda07242fed224f` |
| 95 | `theorem` | [lookup_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-union-left.md) | 515 | `result-track:319ecfbe6896e8ad92bebfd02281dac363a79c4dbf573d84bfbeea83657ba296` |
| 96 | `theorem` | [lookup_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-union-right.md) | 519 | `result-track:f56eeec6c508a8d6d7bce9934e553cf1c0d550c0c7a28248d94b5d9135d29a12` |
| 97 | `theorem` | [lookup_union_left_of_not_in](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/lookup-union-left-of-not-in.md) | 522 | `result-track:051c5e8df08538d44bf0e27767fd525a8e0fb4f11b58b09976950ef4b210c5c3` |
| 98 | `theorem` | [mem_lookup_union'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-lookup-union.md) | 530 | `result-track:1c57015564cd8e8d3c756730f14cec5eaec3352a4991ada60d09fad3a3550857` |
| 99 | `theorem` | [mem_lookup_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-lookup-union-source-edition-2.md) | 534 | `result-track:f8c44b410e51b149c92d28ade9fc701de2101b09d05010fae535403d5169ebe9` |
| 100 | `theorem` | [mem_lookup_union_middle](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/mem-lookup-union-middle.md) | 538 | `result-track:75d783facdeef0b9bf6040e95c6105ac3e4474d5c8e447803cb4b99e72e4aea5` |
| 101 | `theorem` | [insert_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/insert-union.md) | 542 | `result-track:d95d0fdfd7d6aebe268bd2fa27a2acd9556d735149e9e5f8fc3515deba68d0de` |
| 102 | `theorem` | [union_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/union-assoc.md) | 545 | `result-track:bd85930a8de8867f187bf4e9903ba374cc0e7b73cb9c9c3a11b91e6e1d798da5` |
| 103 | `theorem` | [empty_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/empty-union.md) | 550 | `result-track:3611c88009ff0ac0cbbccc236efb669b7399f8e9ec9b6e8d4b1569fbaa9138f4` |
| 104 | `theorem` | [union_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/union-empty.md) | 556 | `result-track:79cd7b462de268b107f67994da1dc321d7cc72c43bf1a78cb167aab95d2d5aea` |
| 105 | `theorem` | [erase_union_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/erase-union-singleton.md) | 561 | `result-track:2f3783b3c5c0f5e9c53afdbca7b1cd4b1184676d046f7c55c54cebb05c02ba7e` |
| 106 | `def` | [Disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/disjoint.md) | 575 | `declaration-track:9114209f8a72564a5052baa24961666ec04a7b5d06a254d604e7a4420e80b48a` |
| 107 | `theorem` | [disjoint_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/disjoint-empty.md) | 578 | `result-track:5fdd58a5cedb6471ac1a2c44bcc067a4c08fb5a8c4fed8e49b4574c4dfe04766` |
| 108 | `theorem` | [Disjoint.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/disjoint-symm.md) | 582 | `result-track:7d51f467c80441b3cdbce9cb8aad74de64f8b4b6c584368d99b292c71e03f4c3` |
| 109 | `theorem` | [Disjoint.symm_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/disjoint-symm-iff.md) | 584 | `result-track:3b1dda4bbf697221dcb4d10d96af6b2fbff2cb38b3aec643ce025dbc314711b9` |
| 110 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/instance-source-edition-6.md) | 591 | `declaration-track:ed4c18abe0c76e36ed4446c88548a8be1ad4262395acf7b246a96f5e9f8649a6` |
| 111 | `theorem` | [disjoint_union_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/disjoint-union-left.md) | 593 | `result-track:002457e030a0a970c0e1d2514f28e9025a734bd8397c363b426bf4287cfdee42` |
| 112 | `theorem` | [disjoint_union_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/disjoint-union-right.md) | 597 | `result-track:4936c5dd5ef81978e4ed2187f856aaf2ec1e06b6e61c0f6353d6d97fca095ee7` |
| 113 | `theorem` | [union_comm_of_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/union-comm-of-disjoint.md) | 601 | `result-track:e88201fbe5259d468fda284df560fac2c07cc0bded2d05caab003c575f468e19` |
| 114 | `theorem` | [union_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinmapKeysZero.lean/declarations/union-cancel.md) | 606 | `result-track:27f012e1a248b47d3aef7f7b831563acd20842439bb3ec56d5151ad072349125` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=898ef7a6cde7fee07bd7b77bc2828fc59a63916d9fa9150887d03692261d3b20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finmap/Variant8937cc4473c42ea744270f94f2066d30f2c7aa21f69e38fb9bc2a90d374279ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
