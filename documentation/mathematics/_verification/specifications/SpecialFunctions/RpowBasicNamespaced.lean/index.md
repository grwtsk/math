# Verification target: Rpow Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc272c1b3532f1436f3cf02ed48bd066109c9e79",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/RpowBasicNamespaced.lean/index.md) · [Full source](../../../../SpecialFunctions/RpowBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc272c1b3532f1436f3cf02ed48bd066109c9e79`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Instances` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Pi` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [nnrpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow.md) | 64 | `declaration-track:1eb89976b12b6b070606a6eee2f0b39a9f9ee386fcf9c089458be23f7b5e8d33` |
| 2 | `lemma` | [nnrpow_def](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-def-source-edition-2.md) | 66 | `result-track:da3e1081487c02430a8e921cff98a314241a242dfdd0b24c727a9557b4733d14` |
| 3 | `lemma` | [continuous_nnrpow_const](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/continuous-nnrpow-const.md) | 69 | `result-track:439d458424717885cb385c6d080915509ff246a42b849c2ba3982c57c8d35fc5` |
| 4 | `lemma` | [monotone_nnrpow_const](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/monotone-nnrpow-const.md) | 75 | `result-track:47e781debbd1a2242ab8c3fd24d1782a7a06fa5e83ca6102518170ef132a53d7` |
| 5 | `def` | [nnrpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-source-edition-2.md) | 93 | `declaration-track:685db566cfb3732dd2fd53caeb2a8d64ffc0b99ff0323e3155df85fff1b208c6` |
| 6 | `instance` | [(anonymous)](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:d2bf9445cea6029fb027a3188b41d59e7cc8ce2ef992c2ab5a8eb3a6648594f4` |
| 7 | `lemma` | [nnrpow_eq_pow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-eq-pow.md) | 101 | `result-track:4ca82c5965bfc60dd353d29f0dce8105ec7e66713c05486c4209878471014e99` |
| 8 | `lemma` | [nnrpow_nonneg](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-nonneg.md) | 104 | `result-track:c931ac9ea88fcf8d6c005588ed3c1e30f6e9bb22f817986912e9a2e9996c85fd` |
| 9 | `lemma` | [nnrpow_def](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-def.md) | 106 | `result-track:d886f35cb3d1e26b4621caf3365bed5eae378c9651b80ec82350f1fcbe0f626e` |
| 10 | `lemma` | [nnrpow_add](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-add.md) | 108 | `result-track:d66cb8da43f3c414f8947a7c4cd5a4a788e3235cf6255248b5c54d3daaca5dc5` |
| 11 | `lemma` | [nnrpow_zero](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-zero.md) | 116 | `result-track:e4be3cc2c90d3e392415c2e9bfab10c88a003917a0d8468f7f1f2a962e4c7a6d` |
| 12 | `lemma` | [nnrpow_one](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-one.md) | 119 | `result-track:5af908babcad73f39e9a722b9401f134305f731096dfe6c613525cd189e276d2` |
| 13 | `lemma` | [nnrpow_two](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-two.md) | 124 | `result-track:db689365dcededf3d3994dcace196cd8212875e19f705269f85f1803bb4800e9` |
| 14 | `lemma` | [nnrpow_three](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-three.md) | 129 | `result-track:beb94fb206c22503ff7991a6677a90ccd387217b8517f7355e59f0bda269796d` |
| 15 | `lemma` | [zero_nnrpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/zero-nnrpow.md) | 135 | `result-track:b0b9fe1256c27690408bb3181f46eca654832d10d7cd2aa319e698685f0ed21d` |
| 16 | `lemma` | [nnrpow_nnrpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-nnrpow.md) | 142 | `result-track:a02949ba64f863aae3b2c2e2d0a614a1d1e8a68fd04d6bb3c918a540e97af016` |
| 17 | `lemma` | [nnrpow_nnrpow_inv](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-nnrpow-inv.md) | 155 | `result-track:45322fddf3e58c1f79e26076410a37adaf62b4b28ed670c7aa4efedd40d41543` |
| 18 | `lemma` | [nnrpow_inv_nnrpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-inv-nnrpow.md) | 159 | `result-track:fbb7809779edde773b3664001bab972606ff7460825c5ce048b3fd6948ed3086` |
| 19 | `lemma` | [nnrpow_inv_eq](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-inv-eq.md) | 163 | `result-track:77fbd4a212a480c30991d73a5d53cc47b14f2d21db84b1b11473f8c32998dcd8` |
| 20 | `lemma` | [nnrpow_map_prod](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-map-prod.md) | 180 | `result-track:d2f04abae59f21ccf417490d64fda702126d2a6c785b34d05dbd022babb78e2f` |
| 21 | `lemma` | [nnrpow_eq_nnrpow_prod](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-eq-nnrpow-prod.md) | 189 | `result-track:5bf187cec995fa503c8e54cb42700d18cb2c2405fe6fe5702c3e289720d44ccf` |
| 22 | `lemma` | [nnrpow_map_pi](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-map-pi.md) | 208 | `result-track:5aa1becad39a6c37900ffbf4bfc879d29d23dcba1a9e778bdfa44bd19948ee6f` |
| 23 | `lemma` | [nnrpow_eq_nnrpow_pi](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-eq-nnrpow-pi.md) | 214 | `result-track:1898c688a724618194f33f6cedee0ff59bfa7342fefbd0b8c77c81ceeb82f71b` |
| 24 | `def` | [sqrt](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt.md) | 226 | `declaration-track:899d1746bc7622475a08b3bb5c2ff422978a0c1e9b955795d87569fd7167e058` |
| 25 | `lemma` | [sqrt_nonneg](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-nonneg.md) | 229 | `result-track:e3050a709a16f9137329e4e8e2304c90238ad826972955f7315f1863a844ef5c` |
| 26 | `lemma` | [sqrt_eq_nnrpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-eq-nnrpow.md) | 231 | `result-track:02635725e91040e7f0c8830053c0737857daaf07abffbd39a1110a1505f13c38` |
| 27 | `lemma` | [sqrt_zero](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-zero.md) | 238 | `result-track:2ee9745949892e40481209627898adb9450afcfafd7a575b29f39e5d5558a69b` |
| 28 | `lemma` | [nnrpow_sqrt](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-sqrt.md) | 243 | `result-track:481b412fdf01662601710a7a5d59e90a484d5dac7e8a0831d49177db483ac59f` |
| 29 | `lemma` | [nnrpow_sqrt_two](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-sqrt-two.md) | 246 | `result-track:2b906481ae30bde64d86c1f06c7ebcc450ec6cacdbc785a7f28ab9dccb361ef9` |
| 30 | `lemma` | [sqrt_mul_sqrt_self](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-mul-sqrt-self.md) | 250 | `result-track:17646121e022e36039ed813ab91421e147fefeef3c004f14b03cd632be8a7339` |
| 31 | `lemma` | [sqrt_nnrpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-nnrpow.md) | 254 | `result-track:f3b8c6f48dc1337933bed2232461f334cf17bc8eaa099e464601106bae54b880` |
| 32 | `lemma` | [sqrt_nnrpow_two](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-nnrpow-two.md) | 257 | `result-track:f3b537cd26ac85e9b82ad9cb279116e7be374bcf93e1673eba5dd411196438bb` |
| 33 | `lemma` | [sqrt_mul_self](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-mul-self.md) | 261 | `result-track:4372022fec724d9e5c10f7cd7d91405c0ddab7c7dff878eaaf5aa6030b0fa529` |
| 34 | `lemma` | [mul_self_eq](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/mul-self-eq.md) | 264 | `result-track:148fb1a3784dedda2773cb56f472c5f3c91ba7dbcdbbbf51a7ed223857d53d73` |
| 35 | `lemma` | [sqrt_unique](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-unique.md) | 268 | `result-track:428656bb446258733ec5d3c6919318bf85f79267f45c1e7ca7ff7dbe6601432d` |
| 36 | `lemma` | [sqrt_eq_iff](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-eq-iff.md) | 272 | `result-track:92b2ae84211f6f0b689d7b38d8c9ebc38a45e5c44ae2d056551f9a19ded46ee0` |
| 37 | `lemma` | [sqrt_eq_zero_iff](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-eq-zero-iff.md) | 276 | `result-track:32f39c47f9b7e3e88f7b680a07bb6863f934d6053d7a3bd25a2aa11107f7b419` |
| 38 | `lemma` | [sqrt_map_prod](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-map-prod.md) | 288 | `result-track:c2fe914af7aa8974ef8a00c67a38610b8a0cc73e6a3d2b18afaf9d8cbf89b8bf` |
| 39 | `lemma` | [sqrt_map_pi](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-map-pi.md) | 306 | `result-track:21edca0dd9e334f145277c48450bec80221a80f76ba5212c8aab392a6277e20a` |
| 40 | `def` | [rpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow.md) | 326 | `declaration-track:f13d069d9ab10090280ae061d72c5e3bc7589c5e5508412366b41e3be72423b4` |
| 41 | `instance` | [(anonymous)](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/instance.md) | 330 | `declaration-track:6e346a2f1a3af776cab85f903965e10aff43a2ac6c7f7e6fab3c447d86f23cd4` |
| 42 | `lemma` | [rpow_eq_pow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-eq-pow.md) | 334 | `result-track:6f90b6468e7dc2ae88771cb073e498aa4300dd159cd228ee0f6f8d508a4da7b6` |
| 43 | `lemma` | [rpow_nonneg](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-nonneg.md) | 337 | `result-track:73f67edaebb7856686f3cc2b9117934558b8ae144e42ecfd0305838df67e8850` |
| 44 | `lemma` | [rpow_def](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-def.md) | 339 | `result-track:f174feaea544330ed77fae64c7153faa86f00510ae77608734671daa041a1a2c` |
| 45 | `lemma` | [rpow_one](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-one.md) | 341 | `result-track:8455b6cc758853e0fb8e7ab0081b7a98da4e85f2d01c328c0571efd014e0cbfa` |
| 46 | `lemma` | [one_rpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/one-rpow.md) | 345 | `result-track:a64e89f281b62c20ab9c87a7dd8b8a2e4b413fe8c090e9e89820ae2d1c618632` |
| 47 | `lemma` | [rpow_zero](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-zero.md) | 347 | `result-track:eb5e23427e18b26f285022b4b37c3beaf5d3c8bddbe80d52c06379a043330456` |
| 48 | `lemma` | [zero_rpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/zero-rpow.md) | 350 | `result-track:27afa445fb18532c9b01b07bd057cf7ca1ad8f4e16ed546c6ec3f6ebbfa2ae51` |
| 49 | `lemma` | [rpow_natCast](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-natcast.md) | 352 | `result-track:0050c38bad6eed7d577fa8c2b7cc02e8f3e54f75b137434d42b22512f80cf3da` |
| 50 | `lemma` | [rpow_algebraMap](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-algebramap.md) | 358 | `result-track:7ee30c1d3a3526fc8bf2ff465ac85a6ca8e354b0bdc8ab52c6b7c673a4696def` |
| 51 | `lemma` | [rpow_add](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-add.md) | 362 | `result-track:0036bf6d46e29c426005270ff47f2656db054166b214bbde54b0ac51b286e63b` |
| 52 | `lemma` | [rpow_rpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-rpow.md) | 372 | `result-track:5a6970eafc7e980480aba3d54a63b71ffe8b82c5e1a5c112fb5ed00077df3ed7` |
| 53 | `lemma` | [rpow_rpow_of_exponent_nonneg](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-rpow-of-exponent-nonneg.md) | 380 | `result-track:0fc710c65302cd4d3240a6ce241943a5a1e36320a93001f1f529199de7f3adbc` |
| 54 | `lemma` | [rpow_mul_rpow_neg](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-mul-rpow-neg.md) | 387 | `result-track:341162992794252b7b56e37939a6a52910de3b4b49e66453272d75b861664f5a` |
| 55 | `lemma` | [rpow_neg_mul_rpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-neg-mul-rpow.md) | 391 | `result-track:e1596d5150af6e4b8ab2e502fe98b65ccf9bc3f9033b1a7ee0120f804713d0a7` |
| 56 | `lemma` | [rpow_neg_one_eq_inv](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-neg-one-eq-inv.md) | 395 | `result-track:c2ae2d28712a481a3a724b4d40a23e32e82b26ae026866dfc18a92dc3e523439` |
| 57 | `lemma` | [rpow_neg_one_eq_cfc_inv](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-neg-one-eq-cfc-inv.md) | 400 | `result-track:b3f09637060a78e384c621f8297eef82bbec285abdd32da232183b72fd4b1aad` |
| 58 | `lemma` | [rpow_neg](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-neg.md) | 406 | `result-track:e8641065dfdb09448f7197635fe55138a8e3a813f09bec28c2c05f4790fa5605` |
| 59 | `lemma` | [rpow_intCast](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-intcast.md) | 417 | `result-track:1ed2f20993796cc6a7f2ff7791a048a6124745ecfbe3f0718e388ea6e54e1d9e` |
| 60 | `lemma` | [rpow_map_prod](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-map-prod.md) | 435 | `result-track:47ca39581b0725d5e5774bdbe1c77e5df7c62afd256012aeec842352816b54eb` |
| 61 | `lemma` | [rpow_eq_rpow_rpod](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-eq-rpow-rpod.md) | 444 | `result-track:5c97fedf8a322c736e706c3e931edd768a0b56f45a1d15481f5737298fdb7421` |
| 62 | `lemma` | [rpow_map_pi](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-map-pi.md) | 463 | `result-track:3db70421ffeb09c3430e10534577a4de5dc026355007f1685ae5eccc2721cd04` |
| 63 | `lemma` | [rpow_eq_rpow_pi](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-eq-rpow-pi.md) | 470 | `result-track:f5c1b993f5b806f2cb09f47bc32dc72d48999a561b08dcc8c439c2a0becd7f8b` |
| 64 | `lemma` | [nnrpow_eq_rpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/nnrpow-eq-rpow.md) | 483 | `result-track:aca43cb1d935bb37ddde029f89d08a8ead93b54e59ff43590cbe5fc0a7b14d36` |
| 65 | `lemma` | [sqrt_eq_rpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-eq-rpow.md) | 486 | `result-track:9d3234a40808492e5ffabd9c1d05a65bf7bfacc984bcfe45fab2e207128942cc` |
| 66 | `lemma` | [sqrt_eq_cfc](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-eq-cfc.md) | 490 | `result-track:fc1fd9311d8fd5bf41d646feae35e02c434b5943665892fa8dbbd465d5556df0` |
| 67 | `lemma` | [sqrt_sq](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-sq.md) | 494 | `result-track:b51ff271748f7a3e153824836f76c545c495e7029f58ba522ca8c96a9339d8e0` |
| 68 | `lemma` | [sq_sqrt](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sq-sqrt.md) | 497 | `result-track:26e2bcd811aa3e90eff2b12ef08ebe00f3007432fa317d3453c1a83eef05df41` |
| 69 | `lemma` | [sqrt_algebraMap](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-algebramap.md) | 501 | `result-track:f2cf207abb99802293cbd257260659088087327290410fa3638878e4f6626b38` |
| 70 | `lemma` | [sqrt_one](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-one.md) | 505 | `result-track:450b7f3fedb573646a189a54aa9e85de656ecbf795b4db3e163ecf28ae225bf1` |
| 71 | `lemma` | [sqrt_rpow](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-rpow.md) | 508 | `result-track:d5ad048271fa9bcbad8721326af5baf40fdf22f0d1d3f3c2aa6525f26849f2d3` |
| 72 | `lemma` | [rpow_sqrt](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-sqrt.md) | 517 | `result-track:1c4b46a88024088957c77d0107e0a3cec936cc06112162e8763913fe5d6a9734` |
| 73 | `lemma` | [sqrt_rpow_nnreal](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/sqrt-rpow-nnreal.md) | 522 | `result-track:d3eb59256e52e2c9ee37ad88394019083cdeb86b962bc22e075b62471d85dd80` |
| 74 | `lemma` | [rpow_sqrt_nnreal](../../../../SpecialFunctions/RpowBasicNamespaced.lean/declarations/rpow-sqrt-nnreal.md) | 533 | `result-track:392753b44d5607568718a81b8a96dc11f72a3933ac8494d7627d767b8902da5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5732ba5600b35a85238dfd85ed0bc9c309d1bc1491d6fcf38ae9fdc693d1714c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant5da39d56da3d94c569f6ff1be79e64f884aecd07c13c91837961e066681e6714.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
