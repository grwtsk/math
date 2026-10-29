# Verification target: Int Bitwise Bit0 Val

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e11d7165673b4f424ad0cacd8734739466eed4ec",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantf9523d51ef01057a33a30e4de425b6d80010a367775747a033048b24c2b0de1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e11d7165673b4f424ad0cacd8734739466eed4ec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantf9523d51ef01057a33a30e4de425b6d80010a367775747a033048b24c2b0de1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Bitwise/Variantf9523d51ef01057a33a30e4de425b6d80010a367775747a033048b24c2b0de1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Pow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Bitwise` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [bodd_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-zero.md) | 27 | `result-track:31fc5c2704804c9074ccee96bf6d120d74c4ef9beeee1b4363113fc0572ddd98` |
| 2 | `theorem` | [bodd_one](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-one.md) | 32 | `result-track:6dba2e0f87701b1710cd5dd20771c0500b1fa936ba336471df983fc843816f69` |
| 3 | `theorem` | [bodd_two](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-two.md) | 36 | `result-track:1ce1dcb1fc28a2334dfabb431fb5a025b9e6afea0a5eda20c2dcc743dc02d2e4` |
| 4 | `theorem` | [bodd_coe](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-coe.md) | 41 | `result-track:9fde6b8e50874da7ebdc7c512db7acec7c11f3fe4eeba2a7b9eb366800d8f099` |
| 5 | `theorem` | [bodd_subNatNat](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-subnatnat.md) | 46 | `result-track:a4193826f4780dde4350853333d52d864120c0bc2354221e73732bc8d2fe49d4` |
| 6 | `theorem` | [bodd_negOfNat](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-negofnat.md) | 54 | `result-track:febe20a261d2fa84943b013e232007201b1055afecab183882a007b84dbce3a0` |
| 7 | `theorem` | [bodd_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-neg.md) | 60 | `result-track:46c5eab9ca753ad3c399f1b6ae8de1c3eaaa3d55903501d8fe8a827fcbe7ad49` |
| 8 | `theorem` | [bodd_add](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-add.md) | 74 | `result-track:ea807ef6ce667754b942b5b1ad523a0b386efc66bcd9f740eab337fd74d3710a` |
| 9 | `theorem` | [bodd_mul](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-mul.md) | 87 | `result-track:9f9ff4dd9d1bc3b24050b6955a4bc0a0dda5b0616ad526b69c3309333b5e9e80` |
| 10 | `theorem` | [bodd_add_div2](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-add-div2.md) | 97 | `result-track:45d44f9bb1bc3aca11ee693d5242dd08ef979fc8b034503837600064b8a97615` |
| 11 | `theorem` | [div2_val](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/div2-val.md) | 110 | `result-track:b7540b1d34915a2da71c007360e01f27abc35f5f6902fe75cf3375dae0a529e6` |
| 12 | `theorem` | [bit0_val](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit0-val.md) | 120 | `result-track:901fc1e3f28a225cb507f5a2f6f349a1e54351406aa71e662aeadcc92e3fe8e0` |
| 13 | `theorem` | [bit1_val](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit1-val.md) | 125 | `result-track:91720987f873667f66629f807bae37639b3926b400c70287127fd8b271b39fa6` |
| 14 | `theorem` | [bit_val](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit-val.md) | 129 | `result-track:d5a376b3a5cab8beaf0f9ca419ab8f114aeb7ad093ecd25d9ccc4aa9fdf89f0a` |
| 15 | `theorem` | [bit_decomp](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit-decomp.md) | 135 | `result-track:3ad74dc99bb2014a22fd5b37b4ca29d25adc6f2500be5f9f214af5acad715e36` |
| 16 | `def` | [bitCasesOn.](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bitcaseson.md) | 141 | `declaration-track:eb42ab2c90f3e29ba7f3ea9eb871d0e1c7a3baedbede5b8b0453f79803cae160` |
| 17 | `theorem` | [bit_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit-zero.md) | 147 | `result-track:5b74948f010ad8dcc467197e92b3162cb8195d4e7cb5e9be91d678486acd6bc4` |
| 18 | `theorem` | [bit_coe_nat](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit-coe-nat.md) | 152 | `result-track:b4755824c91b190c15454a4b3576bd6c2889f316923e9076a9299a4f9028b91e` |
| 19 | `theorem` | [bit_negSucc](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit-negsucc.md) | 158 | `result-track:a3909b9a55db3b4cd2d4581d48c55a70e28480c90abdbe69762b3e50615d3b18` |
| 20 | `theorem` | [bodd_bit](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-bit.md) | 164 | `result-track:b98e6ad3a24ac1426131751d8952a362e9b0768c1a3467eb4fb356c0e600aada` |
| 21 | `theorem` | [bodd_bit0](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-bit0.md) | 170 | `result-track:93c1e38f757c6fceb2e34bab5360a04b3232e47c5d24f9ec33aeebfe79b55494` |
| 22 | `theorem` | [bodd_bit1](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bodd-bit1.md) | 175 | `result-track:8c9276e6899de9ce7edd80a474b4555bba06e2d2a52d0908cc0dfc2e67367ba2` |
| 23 | `theorem` | [bit0_ne_bit1](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit0-ne-bit1.md) | 180 | `result-track:6fd66cc4cad36867e8cd9183a4fd5e478c58aae3aaa84f9aab8c5dd8382f304b` |
| 24 | `theorem` | [bit1_ne_bit0](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit1-ne-bit0.md) | 185 | `result-track:d1272627f661c12ca54b258aff1b7e8b535639208a2fec6faec077c12d8f95e7` |
| 25 | `theorem` | [bit1_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bit1-ne-zero.md) | 190 | `result-track:fdb7e7f588ed3954fb6bac6d094c13847da9ea0898fb888dda1586f037771a66` |
| 26 | `theorem` | [testBit_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/testbit-zero.md) | 196 | `result-track:1d00f9744f05d31742a0acac43d36cfe6b5eaa77d82aa11f29092272ecc8fa43` |
| 27 | `theorem` | [testBit_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/testbit-succ.md) | 205 | `result-track:17b1e3c7f23c4f26eeb0ee6be995319f0168db2a10d08486ee37f5232f3ad5ce` |
| 28 | `theorem` | [bitwise_or](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bitwise-or.md) | 220 | `result-track:df66c960acf895d02ae250913ae552bad1796b94131d6d6a7f4833f03c92960f` |
| 29 | `theorem` | [bitwise_and](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bitwise-and.md) | 239 | `result-track:beb026b493455ed7a20b108fa5de605b21d3631ea301228c442e189e88f7eab7` |
| 30 | `theorem` | [bitwise_diff](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bitwise-diff.md) | 256 | `result-track:01ff51cd674b8c66ea994d271583e6e5cb574ce33058d3c4188029b6abada699` |
| 31 | `theorem` | [bitwise_xor](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bitwise-xor.md) | 276 | `result-track:de7af26fe4b2c0ac0497c99ca1cbba1c59488ee45190f5220bf601c919182e0c` |
| 32 | `theorem` | [bitwise_bit](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/bitwise-bit.md) | 294 | `result-track:32a5794b9e9ac8b45143110af90b50088b511738ef83b4131a1825a3980221df` |
| 33 | `theorem` | [lor_bit](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/lor-bit.md) | 306 | `result-track:4076fef9b029a4d0bd9304ace3bff599ebca36487f7a3d729a554b7a6aa5521f` |
| 34 | `theorem` | [land_bit](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/land-bit.md) | 311 | `result-track:b6e2ce15f8cad48c06ac112b3d5c2e37e80b3cddf0f39e0f7f25f6cd701cc3f9` |
| 35 | `theorem` | [ldiff_bit](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/ldiff-bit.md) | 316 | `result-track:5d60a20bad45d8308efd4c8f52b0f39baf3e84bcb2f59f8cf2f467df72dde523` |
| 36 | `theorem` | [lxor_bit](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/lxor-bit.md) | 321 | `result-track:311d552e03554513a1104d28b96296226a451c8d06b84ac8762611492de61490` |
| 37 | `theorem` | [lnot_bit](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/lnot-bit.md) | 326 | `result-track:625d6a0e4fa685eadd286081ab2516209e19dcf88256008e754905501190fb35` |
| 38 | `theorem` | [testBit_bitwise](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/testbit-bitwise.md) | 332 | `result-track:ae091fa09ea198a1eea4eba76e940cf704e737c31e6f6377b020a5f5ab518fd8` |
| 39 | `theorem` | [testBit_lor](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/testbit-lor.md) | 342 | `result-track:95299f48fe75eca210dea2ab63bc82e04cdf93a48742eda99203d9d1a226170e` |
| 40 | `theorem` | [testBit_land](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/testbit-land.md) | 347 | `result-track:9a6f2d3b906794f73c55d4002ced59d24f30a25415df034a961f70fdc808ae63` |
| 41 | `theorem` | [testBit_ldiff](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/testbit-ldiff.md) | 352 | `result-track:82fee9a56679cf152269bfe21ccbb061807e183f6cdab182776f45b67164ec2b` |
| 42 | `theorem` | [testBit_lxor](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/testbit-lxor.md) | 357 | `result-track:fdd064d1577f1e401f3aec7025a77a23b05bc4a258b54893dc9c5a7e145036f7` |
| 43 | `theorem` | [testBit_lnot](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/testbit-lnot.md) | 362 | `result-track:5d6186311ada04593f0c205877a4b3dc9e2ba28603c32f3c486151fb1be4428a` |
| 44 | `theorem` | [shiftl_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftl-neg.md) | 368 | `result-track:e5c27c6e81262c55c3e3680dd875dfe5db5528ac3f803af0489fe7629a3a0f1a` |
| 45 | `theorem` | [shiftr_neg](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftr-neg.md) | 373 | `result-track:24fdbf02d7abf6c0d4918b9af10df4359b9cab38fdf5cbabe554e76df51e74d5` |
| 46 | `theorem` | [shiftl_coe_nat](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftl-coe-nat.md) | 378 | `result-track:8afc1c87d6ce40d5455a2654b748fead09f3995d898de69907a52f3d5b5f5e87` |
| 47 | `theorem` | [shiftr_coe_nat](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftr-coe-nat.md) | 384 | `result-track:576906a895b8f6740eab8d502c21ba36728a8b89a8e85da01096471afc4dff95` |
| 48 | `theorem` | [shiftl_negSucc](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftl-negsucc.md) | 388 | `result-track:740a3ec730f9b9fdd49ba28adeef2b570ef2fd7284181f423e32f6ef79ccf35b` |
| 49 | `theorem` | [shiftr_negSucc](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftr-negsucc.md) | 393 | `result-track:e779abe8fd2428d000cf24125b9ea34b3318f788fd2729d9a88aaa29ea331b24` |
| 50 | `theorem` | [shiftr_add](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftr-add.md) | 396 | `result-track:d90c7bd68c8504bdbc26453b7832aea7c54df70a5656eb2e19fdde6e0e9a2231` |
| 51 | `theorem` | [shiftl_add](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftl-add.md) | 407 | `result-track:c7c3b22543591c3dd8fb5ad5031b36d207388c533472f1a0371791d79461a2ef` |
| 52 | `theorem` | [shiftl_sub](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftl-sub.md) | 429 | `result-track:94503028e0b97cac1c6623212f1b709799223049de09e0871dc3c224a6e45b17` |
| 53 | `theorem` | [shiftl_eq_mul_pow](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftl-eq-mul-pow.md) | 433 | `result-track:5a43f25041eb1331302254959cc5488cb9fe3955c985d1ef2b46c7bab80fc91e` |
| 54 | `theorem` | [shiftr_eq_div_pow](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/shiftr-eq-div-pow.md) | 438 | `result-track:e9ff2887b1f4253082dc3e2be59e7ecbaeb705cbde4b7df7d2dac87f013350a0` |
| 55 | `theorem` | [one_shiftl](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/one-shiftl.md) | 445 | `result-track:cfeb7cfde7f491933d47639e40f8ce7465b5d82159df2f64a5ac6b0a35598cbe` |
| 56 | `theorem` | [zero_shiftl](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/zero-shiftl.md) | 450 | `result-track:534fdda6eccf4fe920660cce038f1d7deeda17b15ed64f17b372959df3087801` |
| 57 | `theorem` | [zero_shiftr](../../../../../NumberTheory/ElementaryNumberTheory/IntBitwiseBit0Val.lean/declarations/zero-shiftr.md) | 456 | `result-track:d5c455733f9e342f0097e004988fa7157e86a195edd55a548c29896bc54197ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b06379ab0360f1a1b988485a6654e4d939bd9a78d922e3f4a6d03b9d534b2026 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variantf9523d51ef01057a33a30e4de425b6d80010a367775747a033048b24c2b0de1b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Bitwise/Variantf9523d51ef01057a33a30e4de425b6d80010a367775747a033048b24c2b0de1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
