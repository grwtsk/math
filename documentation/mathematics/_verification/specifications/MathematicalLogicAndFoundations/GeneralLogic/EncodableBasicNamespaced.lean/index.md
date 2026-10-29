# Verification target: Encodable Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "438254d9ebc407755029259b8456311427b5d42c",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `438254d9ebc407755029259b8456311427b5d42c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Equiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Nat` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Encodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encodable.md) | 53 | `declaration-track:25609ab1ad97f7eb6a9c125439c86ad6a6e7e6bd85aceeebcc44d0a618b0a7f0` |
| 2 | `theorem` | [encode_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-injective.md) | 69 | `result-track:55596ca5a605cc6b1e33f819d1cf17b082c47d4fcefba7bfd96ec06341338759` |
| 3 | `theorem` | [encode_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-inj.md) | 73 | `result-track:e6d18fb1e36361b43c8154c0ab4528d0f0d4d85b6388f2b382125b7503aa4b46` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:79029b96cf7a13df0509585aed9a1f8bae6ab518a9fb14d22d7c4b94d939bc77` |
| 5 | `theorem` | [surjective_decode_iget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/surjective-decode-iget.md) | 81 | `result-track:f718ff13afb9f6aaefdfee8521a5def771e0c3935d3ae73c7ceaf9eebfd150f4` |
| 6 | `def` | [decidableEqOfEncodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decidableeqofencodable.md) | 87 | `declaration-track:c30bb44affc942505683dd17010a6ae26894572a8aafc233463db47170862791` |
| 7 | `def` | [ofLeftInjection](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/ofleftinjection.md) | 91 | `declaration-track:5d4a6b5f59fe5368ff0632e0401c1f3ffe8414c28769b09bdcabe21b93f696eb` |
| 8 | `def` | [ofLeftInverse](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/ofleftinverse.md) | 97 | `declaration-track:9c25e60f319e944228fa5695dc6d0d272fe303bf499567d7fa4cbfb36d367125` |
| 9 | `def` | [ofEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/ofequiv.md) | 102 | `declaration-track:019c8a2a16ecc36f1c70c21eeb08bf4d9885282a78e3f25da607af68bad005e5` |
| 10 | `theorem` | [encode_ofEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-ofequiv.md) | 105 | `result-track:9149e2150307c7ce0e6cbe73a132e87d2f64a53a17e843c70c1ead6050d85ab8` |
| 11 | `theorem` | [decode_ofEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-ofequiv.md) | 109 | `result-track:19b722043783169b5721ae6ae9462ba197ce54844edfa7b2a2a70c65edf6d2a9` |
| 12 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-9.md) | 114 | `declaration-track:b242d620106ae0c56d3ef1334862f6638d73f534d14d5bd3dc9459475b8fe876` |
| 13 | `theorem` | [encode_nat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-nat.md) | 118 | `result-track:a1d599308f765222ae73b6cb9f1415441e44eb13f3f1c755ef1f4d05d7c8852e` |
| 14 | `theorem` | [decode_nat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-nat.md) | 122 | `result-track:073a50d1f9a99978b6e9ff3417cd76df9b392bb7d2f3aeee0071cc11fb6665d8` |
| 15 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 125 | `declaration-track:a59df26b8b610c67ca4b0012fd72a8b83f0b156176431a9e9a8e685ad1325cb0` |
| 16 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-11.md) | 128 | `declaration-track:c98e99360b31618165b3b72e85062dfe76b3f53701b77da5b8b0367c2ef9402e` |
| 17 | `theorem` | [encode_star](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-star.md) | 132 | `result-track:eb205aefe3861c2cced700d82282fdf2d089c334fe301837e58e196eae175b38` |
| 18 | `theorem` | [decode_unit_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-unit-zero.md) | 136 | `result-track:2e04f9def45fa584d3b751d5d956b80e06921aec2a9620827d899a58d8835e1c` |
| 19 | `theorem` | [decode_unit_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-unit-succ.md) | 140 | `result-track:cb517b1d3c8d5b1955e808087043c5ecff10e819cebe9dfc5ba9cb59f268118a` |
| 20 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-13.md) | 144 | `declaration-track:e1eccff377a6e6571978846778a607a665085a2748656e015f13ab8d7b3fd6ee` |
| 21 | `theorem` | [encode_none](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-none.md) | 150 | `result-track:6f34ef437cafa7930f3c12f7bdecbaa7904c9ad85b4196186c77973d90790867` |
| 22 | `theorem` | [encode_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-some.md) | 154 | `result-track:443ac6178ac156b8c68bbe683891ea5fede3d07ea8ea102518a9aef7a0142a6a` |
| 23 | `theorem` | [decode_option_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-option-zero.md) | 158 | `result-track:61e175a65aa2e9053bffa176a2261ca468197f4edbfddfac1fd708252ba2c8e3` |
| 24 | `theorem` | [decode_option_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-option-succ.md) | 162 | `result-track:1194541052ef3047455d090c64394ce7abc8fe71a42ee159f7d3674fae870624` |
| 25 | `def` | [decode₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode.md) | 169 | `declaration-track:8b63e85225999918f45d7e8f6677024c7b718b6f690ba3c4c7dec1cfdeb8a2f7` |
| 26 | `theorem` | [mem_decode₂'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/mem-decode-source-edition-2.md) | 172 | `result-track:b1f075e4856408058244c10d2318ae40e54be23c91786bc923093ee3884c0026` |
| 27 | `theorem` | [mem_decode₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/mem-decode.md) | 176 | `result-track:029df5f842edb590bdafef48ef7a348f0632f83f224ee58e5cef1ce356a2ed06` |
| 28 | `theorem` | [decode₂_eq_some](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-eq-some.md) | 179 | `result-track:5d6723fa1e4b26df6ab14c6274c328d82921da2ad11bb8efc54353e382783895` |
| 29 | `theorem` | [decode₂_encode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-encode.md) | 183 | `result-track:7aad4c71f7421a3b2241aafde4507f3428026446b0b3c9a63dd66edf84a05021` |
| 30 | `theorem` | [decode₂_ne_none_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-ne-none-iff.md) | 187 | `result-track:e12ea7fb9714766233b6e27952ca8e7b0c9777112771769daae85cb637be43e7` |
| 31 | `theorem` | [decode₂_is_partial_inv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-is-partial-inv.md) | 192 | `result-track:505eee04cb99c7d9f30e82144e50dbffd7b1982e4dda50c5b7156a61bc52d29a` |
| 32 | `theorem` | [decode₂_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-inj.md) | 195 | `result-track:d0e6a8f8d7b2a3ec98e2477e561fc487c6a5393e3eb0c2ed8503fa29090568e0` |
| 33 | `theorem` | [encodek₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encodek.md) | 199 | `result-track:c917f9ed363646d6c782960ace6654e620a069e96a572315406dc939a05c84e3` |
| 34 | `def` | [decidableRangeEncode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decidablerangeencode.md) | 203 | `declaration-track:68c86d48cbe17838b1ee5a538bd6471fc0dffc51dc56fd68742a1fad221b3be4` |
| 35 | `def` | [equivRangeEncode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/equivrangeencode.md) | 210 | `declaration-track:f283ab5f31f045bf92303e816c38a1fed6e8a505881470ba925b1bcb464f41c5` |
| 36 | `def` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-4.md) | 225 | `declaration-track:215eff23cf43e1cbd4d8129cd142f7e33041db58043eae215d15ebb7cbfd04ce` |
| 37 | `def` | [encodeSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encodesum.md) | 233 | `declaration-track:9f46a4a35b53bf266b564a21da13576d75e3f52598e6d88da8e9e21da2c1ddb6` |
| 38 | `def` | [decodeSum](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decodesum.md) | 238 | `declaration-track:a18875e215fde1a1da4a99ad7e79f63eeb899a81fbba12a123b0703e5a2eaeff` |
| 39 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-10.md) | 244 | `declaration-track:b8b52d291d650ea36148392098ebd4863701a652b380c8d3991e17628b969c9e` |
| 40 | `theorem` | [encode_inl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-inl.md) | 248 | `result-track:2b897edd0fff66e006575159328d33de84d38b6d7e7ca98de91f340fe52e7a60` |
| 41 | `theorem` | [encode_inr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-inr.md) | 252 | `result-track:b6b9ec071cf51aad36558684109c88813f700514c884da1ebd0402192a364bc4` |
| 42 | `theorem` | [decode_sum_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-sum-val.md) | 256 | `result-track:2060f99384d9328d82ca89a7698b06c70ca1c10700a4415fc407486b30549af6` |
| 43 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-5.md) | 261 | `declaration-track:33b71ca2e4cfbd8c45321c317bf4e028867f57db71fe9e0dc0e9abe37db64863` |
| 44 | `theorem` | [encode_true](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-true.md) | 265 | `result-track:2fa90e9d0e3677fd440d9048c58b9bbc5a59f74510c737e94816caf6114f6740` |
| 45 | `theorem` | [encode_false](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-false.md) | 269 | `result-track:f7c4f8255e0e387e88fc0f3e1d41003276626550c484af0442db6deb6eea80f4` |
| 46 | `theorem` | [decode_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-zero.md) | 273 | `result-track:f844cbbe97c18c9be91dbdc73fd35e1534c1e85e16fc25cf6606010f72585753` |
| 47 | `theorem` | [decode_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-one.md) | 277 | `result-track:4c4018cecc9f42da31e0025498bdb691a1a4efa02c7d4dac62103527844fd633` |
| 48 | `theorem` | [decode_ge_two](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-ge-two.md) | 280 | `result-track:04a4301bb9c2dd8dfa8fe2a23eceff9eb7eb137021eae23a22200f39a82ccc0e` |
| 49 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-3.md) | 291 | `declaration-track:1e1939db8c62878b75dd8915389b4677a9b7729b6a82277726c6e7f9c368a1d5` |
| 50 | `def` | [encodeSigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encodesigma.md) | 299 | `declaration-track:7b5aa4cfe9206f113972fdb3c5e4781856441036a75274c3f74a31514cfc50b1` |
| 51 | `def` | [decodeSigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decodesigma.md) | 303 | `declaration-track:cef4ad5cb2e795f466169269bf4e5608eb0c6b6b8372998b53da0f2a356f5aaa` |
| 52 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-12.md) | 307 | `declaration-track:d7ff7ec7d30631d807a38ecd5e9eae31a250b6bcd042bbcf1bffc704a515b6d1` |
| 53 | `theorem` | [decode_sigma_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-sigma-val.md) | 312 | `result-track:1f7e76b3252e1c2e2e1aedda755ebf378cfbc220e16ab98c7ef735cb33972ccb` |
| 54 | `theorem` | [encode_sigma_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-sigma-val.md) | 318 | `result-track:900474505d89e9b2bc7741f1fb956514aecb804f5a68820fa1c46130defbc679` |
| 55 | `instance` | [Prod.encodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/prod-encodable.md) | 328 | `declaration-track:dc3c18b5997bfc3f141493ae2a7a9f774f88cda565fe4b805704b581caea2d2f` |
| 56 | `theorem` | [decode_prod_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decode-prod-val.md) | 332 | `result-track:e869d0e4126c18981de49f071cea135116d3a74f34d35f4fbd100b665dfdc22a` |
| 57 | `theorem` | [encode_prod_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode-prod-val.md) | 340 | `result-track:56dd0f55f020b703a7ba1887c9773a6a8613bfb4b62c71ecc64ef037ccffeb39` |
| 58 | `def` | [encodeSubtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encodesubtype.md) | 352 | `declaration-track:1909c6fe1c3287473f85b4b931fed30f488e041e5940d5af3c849a2dde6550e5` |
| 59 | `def` | [decodeSubtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decodesubtype.md) | 356 | `declaration-track:b79ff35658510d245e7d0217dce40170efc4c15cf2940d5dbd624d99e6c40652` |
| 60 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va.md) | 360 | `declaration-track:02f10ab7358e70266fee3dff4e3b5e614be82d4bed5239f6cda0feb91162c07e` |
| 61 | `theorem` | [Subtype.encode_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/subtype-encode-eq.md) | 363 | `result-track:9c64a8f0982e6b5c6e4c5dac0decb2467c990fb4b716f4c7914a157309e5a942` |
| 62 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-2.md) | 367 | `declaration-track:156dc6714ff7fe527c9ed03f5ac09262cffc4caad3b987b22cbb8dfb1a12df4e` |
| 63 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-6.md) | 370 | `declaration-track:46a1c61fcd2606745e649e7965f906047c934f7df98f8946549ed732d6709031` |
| 64 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-14.md) | 373 | `declaration-track:fb92182af502dc42a55701a5f59657720c5503fd1a50662be436245bc22ddfb6` |
| 65 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-7.md) | 377 | `declaration-track:696de61c02fe386da6d8f0cc8fd0c0ae8d57040d1c8da9b105cab99308a6bba6` |
| 66 | `instance` | [Encodable Basic Namespaced](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-encodable-va-source-edition-8.md) | 381 | `declaration-track:758614f93f7c164287068c7706942bd93e47b2b9887ac6efd7a6c5b20887378e` |
| 67 | `def` | [ofInj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/ofinj.md) | 385 | `declaration-track:56096dc173969e93cdfcb78b90e1821a6cdd6e728ac176699675de4a662daee4` |
| 68 | `def` | [ofCountable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/ofcountable.md) | 389 | `declaration-track:284fe80486ca760f982508e86b997c5a2d05c1f9b72b08301dd1f3a4b7f88d92` |
| 69 | `theorem` | [nonempty_encodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/nonempty-encodable.md) | 395 | `result-track:499861bf1d8d0bcef8f31e1d206bbf0fedaedd8663e9a5db8c947501f19db463` |
| 70 | `theorem` | [nonempty_encodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/nonempty-encodable-source-edition-2.md) | 401 | `result-track:f7f10136bc2d077fb7200e8070dd029507058b29b12fe11b3effdc3d27e8e3f1` |
| 71 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 404 | `declaration-track:ce62b64f3ff4410f7091632110e9e49e68af68af1e858e306845942c39b251fa` |
| 72 | `def` | [ULower](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/ulower.md) | 412 | `declaration-track:87d0851c244b534b3cb72fd513d11609d83ad7ee89736f9c3c215dc193677e1f` |
| 73 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/instance.md) | 415 | `declaration-track:378868e5931d05c70bdd92ae201f13cefa566d4e4de47c70d459f407e487fc09` |
| 74 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 418 | `declaration-track:e367ee9ade32b0086ad7910cb79b056968fb17cbd1b6f7f0e947289b22ae8532` |
| 75 | `def` | [equiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/equiv.md) | 428 | `declaration-track:9db6fe73dcd220da2c07ef2906d260bce1e49d2eb007c73ef09dab72c13e98cf` |
| 76 | `def` | [down](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/down.md) | 434 | `declaration-track:e4fefd2dcb9389ce74014f62640d69dd63a5888380f9e38efc71cd40f68da193` |
| 77 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 437 | `declaration-track:f51ce682e7c60643a194c823b655a9f15f575668e2a23fc03186a05a203ce495` |
| 78 | `def` | [up](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/up.md) | 441 | `declaration-track:6e7cb0ad39ebece7e87de394bf08aa2c131316a60a95ebc5fc1909d705a9fc29` |
| 79 | `theorem` | [down_up](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/down-up.md) | 445 | `result-track:871d958df6bd8a8d4ac25aab396f8a55d345e465323de2fcc0e7fdc5fed6d1f2` |
| 80 | `theorem` | [up_down](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/up-down.md) | 449 | `result-track:afe4af59b8c87c3a4ee689b551b09dd8f7d061a19ba3a40af683415a6077d1cd` |
| 81 | `theorem` | [up_eq_up](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/up-eq-up.md) | 453 | `result-track:c5fb98ac3762b5f1ada8b6d677b18d09d0454ddeaf49aab7e7eea4de9c5354af` |
| 82 | `theorem` | [down_eq_down](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/down-eq-down.md) | 457 | `result-track:462499477e3092eb535ee4e6b5fb2bc74ffd4ae1a88d2681dee434567241195b` |
| 83 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/ext.md) | 461 | `result-track:8ca1d898cc0fab43d8cf5634e48ba192116490bcf342109461f1e28f23d6378d` |
| 84 | `def` | [good](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/good.md) | 480 | `declaration-track:c85f2161356b2dc8f4588f36ff721534e92817621f4fd82aa44169b95a5e65a7` |
| 85 | `def` | [decidable_good](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/decidable-good.md) | 484 | `declaration-track:5cea1a3f6ce8f280ac58bd28886bd0eacb4e5c7047d676501fb431d247815f14` |
| 86 | `def` | [chooseX](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/choosex.md) | 494 | `declaration-track:0b7846694fce3f1e51c66c39ab61b01891dff39451bfceab8be9c7740f40238e` |
| 87 | `def` | [choose](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/choose.md) | 502 | `declaration-track:97a67ecf28492e018f5e4d5d59582c7479f2fe035eec00df010955c8205bcc53` |
| 88 | `theorem` | [choose_spec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/choose-spec.md) | 505 | `result-track:32c0b679cbd8c2f95d0f6e68709513ee37e3ffc014b97488fe62f0ad16528443` |
| 89 | `theorem` | [axiom_of_choice](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/axiom-of-choice.md) | 511 | `result-track:a891c8c745f94ddf5691c7d579c2193f6a82fafdb9968ea564889441157729c1` |
| 90 | `theorem` | [skolem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/skolem.md) | 516 | `result-track:23a78c7c8eaec7c3d13d0dbb37e8e5476bb2ff63be2ef159e9195f9a34679de6` |
| 91 | `def` | [encode'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encode.md) | 524 | `declaration-track:bb3d5ed7dc9430acc556dd502b415c8e16f639d7773c91817ed59ddfc74bc158` |
| 92 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 527 | `declaration-track:81659a8ea491f5c3623860aebaac2ec678f469507c92f471629d2eb1b520a987` |
| 93 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 530 | `declaration-track:8a65495ad296d93bfd391d2354415e7b6f796230a0696b88615f3fdaaad7b69e` |
| 94 | `def` | [sequence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/sequence.md) | 544 | `declaration-track:b653edea827d13f6c278542d87d6527888305aab3b4db772e3976fd2308521b4` |
| 95 | `theorem` | [sequence_mono_nat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/sequence-mono-nat.md) | 552 | `result-track:a4ad6e9fefe26a78d3df55263ff34ebd8f9a5a8627fde796f8ef9dfd17a42e91` |
| 96 | `theorem` | [rel_sequence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/rel-sequence.md) | 560 | `result-track:3f07ddef3dd67611440a0510699775a1b6e5820ce62023a23f02d3f8812125e9` |
| 97 | `theorem` | [sequence_mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/sequence-mono.md) | 571 | `result-track:466e597104c6e225093e3ce5fa254147acd2dfe96fcf3de905fd156a8fb5be43` |
| 98 | `theorem` | [le_sequence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/le-sequence.md) | 574 | `result-track:f173429f13ef689f2631abfa7bcbabf556b434a041313125d68c887a86aa7301` |
| 99 | `theorem` | [sequence_anti](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/sequence-anti.md) | 583 | `result-track:4457e750ee9b9a32f0c56e596149a3761ebb3ac2c19910149a10a89809e96347` |
| 100 | `theorem` | [sequence_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/sequence-le.md) | 586 | `result-track:c5d237a2f0d04c6ee04803e7c936e40f65b0be996e4ad00d2a76dc5a243cce23` |
| 101 | `def` | [Quotient.rep](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/quotient-rep.md) | 601 | `declaration-track:593c25a97baef447b4e407d3ead978c50e44f1bb88f8087aa33e2914470e19a9` |
| 102 | `theorem` | [Quotient.rep_spec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/quotient-rep-spec.md) | 604 | `result-track:48c6f55b7a0926ef4915962cccd297330554698063c6fcc05d432a62ae985468` |
| 103 | `def` | [encodableQuotient](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicNamespaced.lean/declarations/encodablequotient.md) | 608 | `declaration-track:581a0245a9af0e86154385386e58cf2eb5ecec5dffc5dd0a8c1fbdc147b8b31c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f193cc01570d69367e69c4d102dbec4150ccad20779e31749ab39fa0130308a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f8916da0ee01d6276d3455e8ff46f18cf9ba6bc711835ddcc6d167e3f72324e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
