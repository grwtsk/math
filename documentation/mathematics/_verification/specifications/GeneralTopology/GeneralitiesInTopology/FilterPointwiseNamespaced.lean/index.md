# Verification target: Filter Pointwise Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d61393a3ba26dc0b22691ac7c653aaa5808a3a0",
  "lexical_observation_count": 176,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d61393a3ba26dc0b22691ac7c653aaa5808a3a0`.

Source path: `GRWTSK/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pointwise.SMul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.NAry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [instOne](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instone.md) | 82 | `declaration-track:75ba3f4157548a4ba4861086672c3c6bac2f1e168e3f82708ac076c52a6a90a1` |
| 2 | `theorem` | [mem_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mem-one.md) | 90 | `result-track:913170bc175cff7c22d008fe5d5232f8618b9e20a2e1e8f646da874049b247a5` |
| 3 | `theorem` | [one_mem_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/one-mem-one.md) | 96 | `result-track:aed188c07a884d0f440ab46ace0a0eb171167500e661e0e0a850a59d006c035b` |
| 4 | `theorem` | [pure_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-one.md) | 102 | `result-track:98b633ee4b38d2bb990892b71461250c07339b5e89dc605758f9326baf3fd134` |
| 5 | `theorem` | [principal_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/principal-one.md) | 108 | `result-track:cf2d1c801fe5a177d4e97314e57857d7c2fe4e3b350b0ec9dd00834065b755b6` |
| 6 | `theorem` | [one_neBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/one-nebot.md) | 114 | `result-track:c6df49123986b7552abeeb3e07aadb99c15431de6f4ced30570946bcadfbde0a` |
| 7 | `theorem` | [map_one'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-one.md) | 122 | `result-track:8d3d26d6078ad713caa3b6c60f9660f1555bb270e97f139b70fff589f2860e41` |
| 8 | `theorem` | [le_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/le-one-iff.md) | 128 | `result-track:580460b0b1daa70e727a46af14c789d7ef3a217b18948e72ea584250f73de318` |
| 9 | `theorem` | [NeBot.le_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-le-one-iff.md) | 134 | `result-track:6005ab5953bbf2270b0a683401ee5ece177835ca6ab8bab4ae6cff391419fa24` |
| 10 | `theorem` | [eventually_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/eventually-one.md) | 140 | `result-track:956846c38f10f0533a057de8a52f99c000b9342f1d45d23f74907e69d8999548` |
| 11 | `theorem` | [tendsto_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/tendsto-one.md) | 146 | `result-track:f854c7b59f77ffbeedab1ce6477784c4a9b6669aa532430f371c2d0488bd9c46` |
| 12 | `theorem` | [one_prod_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/one-prod-one.md) | 152 | `result-track:78adb89426fea50cc89ab08ef29ff70b28588daadc0c087bab3573748a683fd8` |
| 13 | `def` | [pureOneHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pureonehom.md) | 159 | `declaration-track:f438e92c32378e243030c08913bef342274f8858f6b776b97a6f2c820d6ae421` |
| 14 | `theorem` | [coe_pureOneHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/coe-pureonehom.md) | 165 | `result-track:16d8fb66196812db5f3b8d139b3abccd87b26c6b13564430cfea35f605273a93` |
| 15 | `theorem` | [pureOneHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pureonehom-apply.md) | 171 | `result-track:a828e72f5ac30d163dece42aa8accfb7fe649fc8036a9f28c11066644c171bff` |
| 16 | `theorem` | [map_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-one-source-edition-2.md) | 179 | `result-track:ece8da7e3ac63ddc640ed8135bc3537f1fb4d3e2600dc22f1e0107455696767b` |
| 17 | `instance` | [instInv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instinv.md) | 195 | `declaration-track:66e3efd7437266e6b7bcf66dd0f5755a37fa53207c754b1296aca90adf49128a` |
| 18 | `theorem` | [map_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-inv-source-edition-2.md) | 199 | `result-track:d922b67e93c2030009095d6a0b728b0c85b7eab57e084296b7b849feed29dd5b` |
| 19 | `theorem` | [mem_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mem-inv.md) | 205 | `result-track:3388906e4f3e5144aa72ee5ebf65cd3b4cecdad9f6c2c9fe7d4ef5b72ca25e96` |
| 20 | `theorem` | [inv_le_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/inv-le-inv.md) | 211 | `result-track:63c3663757fa037b3c6d2a7bdbf5e34c1ea8cc8110e90607c81eedc261e44db6` |
| 21 | `theorem` | [inv_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/inv-pure.md) | 217 | `result-track:7d23d51bdd06438e20b16e979255f3a1f47453f98176e4aec40602966a418989` |
| 22 | `theorem` | [inv_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/inv-eq-bot-iff.md) | 223 | `result-track:e25cb8c5590e594575ab65a2164bf3390324bf470e223e943cc7f7164b1c1e21` |
| 23 | `theorem` | [neBot_inv_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-inv-iff.md) | 229 | `result-track:14509d31bdcc3ce4db1a00a1490de9f92bd967023fe6f17f060aca235ae018fc` |
| 24 | `theorem` | [NeBot.inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-inv.md) | 235 | `result-track:f070da9e40cea5772fc717a3f0475df9887456410181688dfd9b4fbe1fc65fb7` |
| 25 | `theorem` | [inv_mem_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/inv-mem-inv.md) | 246 | `result-track:133e6283c88e00f2c68092c433a5d1ba018c2b6a3e41861f860dfdfda7bfa1e7` |
| 26 | `def` | [instInvolutiveInv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instinvolutiveinv.md) | 252 | `declaration-track:0f947271a9f10c6debf566e372c6d3320bd44328c7a7dd95f00bbca229d6d08e` |
| 27 | `theorem` | [inv_le_inv_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/inv-le-inv-iff.md) | 261 | `result-track:6894abfa6cb6557ca3e8641b92288b289432d2447082a1437ddc4fbdda6b0dd2` |
| 28 | `theorem` | [inv_le_iff_le_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/inv-le-iff-le-inv.md) | 267 | `result-track:98313832b7461c8950efb0f522eefc848b50e4c0c72975bfdaa463f1d8df9703` |
| 29 | `theorem` | [inv_le_self](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/inv-le-self.md) | 272 | `result-track:6967e9d78b4591d58d23775de734deb1d7d4ff657901712f3a9be028e533aaaf` |
| 30 | `def` | [instMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instmul.md) | 288 | `declaration-track:aff5a161368e7f9297dff36c6683ca135de77f66ab266e436c91ec83b7d8b5d1` |
| 31 | `theorem` | [map₂_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-mul-source-edition-2.md) | 298 | `result-track:30029d3fcb91f0f9fc9403d5d6ccd78956985b935fbd054517f1cad2508243f6` |
| 32 | `theorem` | [mem_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mem-mul.md) | 304 | `result-track:b68482843f859cdf8de46b6d98f8f9be20ea2b1fa69f51919fefd8110c3c9c6e` |
| 33 | `theorem` | [mul_mem_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mul-mem-mul.md) | 310 | `result-track:3eea322863579e57786c46fb770db5d105460da1082b2890d5508ab9bfca350b` |
| 34 | `theorem` | [bot_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/bot-mul.md) | 316 | `result-track:3633b4b49e8a2557103ea2954b79affd310f3a4ba9aa3e0ba87f6afcb0e00fbb` |
| 35 | `theorem` | [mul_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mul-bot.md) | 322 | `result-track:fb1d8ac7736be01cc78c7d8a500b57e891521f696de14cc0baab29b6d36a02a5` |
| 36 | `theorem` | [mul_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mul-eq-bot-iff.md) | 328 | `result-track:dffe911c63beb2b3f889af156eb4a198ae299bc88d1af5517e9b5148adc011c2` |
| 37 | `lemma` | [mul_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mul-nebot-iff.md) | 334 | `result-track:3ff47b3d601945278b5ad40713b98d86ba8ec369319a7540da0923efa1fa2d80` |
| 38 | `theorem` | [NeBot.mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-mul.md) | 340 | `result-track:617608ede2c100c72d9ac6b4814a4640695d2593f44a3d1845becf5ba1095598` |
| 39 | `theorem` | [NeBot.of_mul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-mul-left.md) | 346 | `result-track:c5a3d3b8c0cb028002d55cc36e4c0005313e8544ea84bbc0f4de566e7342eef0` |
| 40 | `theorem` | [NeBot.of_mul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-mul-right.md) | 352 | `result-track:db0fd5fb85b4358e93e0003e515b2a9127f9f2c72bb7c1ec4d691aa395dfb056` |
| 41 | `theorem` | [pure_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-mul.md) | 358 | `result-track:23331b7b898494615ed2fb112007ee5a1de331812dffa70816eec13c2b67e4ec` |
| 42 | `theorem` | [mul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mul-pure.md) | 364 | `result-track:9db273a8962944d061d9a0048bab7a8fd7a24c3de6136c28e470ddb4d7775e33` |
| 43 | `theorem` | [pure_mul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-mul-pure.md) | 370 | `result-track:7f699c199df76d9e4084fbe1b26930fa71ca1baec38e360040fa831e4dcecae2` |
| 44 | `theorem` | [le_mul_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/le-mul-iff.md) | 376 | `result-track:176d47332ff1f8952d2e20a4bb741b077adcbc0b59f092f25e09947c7f4f75f8` |
| 45 | `instance` | [covariant_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/covariant-mul.md) | 382 | `declaration-track:c4948e6b97d19c0b373ced3cbb90a998c4c6c9ee5951631375cd9b7540ebe1c8` |
| 46 | `instance` | [covariant_swap_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/covariant-swap-mul.md) | 388 | `declaration-track:af0b37cde83323411c3d9e75c01d13f7044240ca8e83936581a75fd76093d888` |
| 47 | `theorem` | [map_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-mul.md) | 394 | `result-track:2eaa332dafb24cd58cf4f48fa79895521b737234c41f4745a03601943931a94f` |
| 48 | `def` | [pureMulHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/puremulhom.md) | 401 | `declaration-track:40ec3d23a9b75832348a7315664cb0d53d0a0dc43ce74869cf8db48ef20e15a0` |
| 49 | `theorem` | [coe_pureMulHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/coe-puremulhom.md) | 407 | `result-track:8339a5bb02dbe139169d41dd26611b37df9ecefbb6c5d8c6f7b66914a57e0e44` |
| 50 | `theorem` | [pureMulHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/puremulhom-apply.md) | 413 | `result-track:4121509e90c5b40b516192330b8038f48b066a47658c3705f71595fe12f1e8e6` |
| 51 | `def` | [instDiv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instdiv.md) | 429 | `declaration-track:0cd8248d079c12359ba3101002be893f0e5d93a5317e01f52e0d42ab21be12b3` |
| 52 | `theorem` | [map₂_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-div.md) | 439 | `result-track:35a182edadcbfbdf9b975b5e9d7f9aa0de7ab59c4ae34b79135cdc3f3dda274a` |
| 53 | `theorem` | [mem_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mem-div.md) | 445 | `result-track:9c67c9004b852b4edda829a220cb2662b30526ae2d72c2e01c6d44e173d86a7a` |
| 54 | `theorem` | [div_mem_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/div-mem-div.md) | 451 | `result-track:93d97665a5fc1a9b5c52203155744a417aa6c7ba24fce80b09e833247d3bfdff` |
| 55 | `theorem` | [bot_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/bot-div.md) | 457 | `result-track:03841bf8147e0f6fd0cd8abe76c57917b660acda718540792b5e22d06975b07c` |
| 56 | `theorem` | [div_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/div-bot.md) | 463 | `result-track:55129d0d83e94642b6d250c96592858b207ee2545ce0760593aad7292ffa50fe` |
| 57 | `theorem` | [div_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/div-eq-bot-iff.md) | 469 | `result-track:a7c3f86c6d393d1b62d0a190959753107bb1f63678f6ddbe41c3783961a0938d` |
| 58 | `theorem` | [div_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/div-nebot-iff.md) | 475 | `result-track:57088928fc5a34502edd6e014c2e026ef968f8148dae4cde8ddc75b9b75b7844` |
| 59 | `theorem` | [NeBot.div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-div.md) | 481 | `result-track:78069c0267444eebbf2b1e7a76fc1ce8a550d9e9ca8fa9b438dbfc08127306f5` |
| 60 | `theorem` | [NeBot.of_div_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-div-left.md) | 487 | `result-track:d4af37698055095b224d44b39544f1f7608d1a9ad770d2879cf36c14e837d9a7` |
| 61 | `theorem` | [NeBot.of_div_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-div-right.md) | 493 | `result-track:6ce0f34273fe96d8e217e41fda7a08e5c93a815c322611fe5aa3cfd4102289ed` |
| 62 | `theorem` | [pure_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-div.md) | 499 | `result-track:e5b8bc1c1f7d81b0f3b97abc935bbf309795c7b077a48456fbb5a5d831da9226` |
| 63 | `theorem` | [div_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/div-pure.md) | 505 | `result-track:fb94a933bc4e2d54a38bcc2ced38eda420b05a4d424df03ebb5d45051dd07fe6` |
| 64 | `theorem` | [pure_div_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-div-pure.md) | 511 | `result-track:aa60c730b131b97f2aa46de41bd2382708c6937d93d28438c8d4f4439128f613` |
| 65 | `theorem` | [div_le_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/div-le-div.md) | 517 | `result-track:a3673c2e857e176524fd194bcd00ff0d3b2905f62a364c49d1510e982ccf2bce` |
| 66 | `theorem` | [div_le_div_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/div-le-div-left.md) | 523 | `result-track:81cd102ad791ceb025bb7ee041ec671fad8d59352d03196f5b7bb2437ca921de` |
| 67 | `theorem` | [div_le_div_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/div-le-div-right.md) | 529 | `result-track:3b513f6f7b294baa9edeb24058197500f8658c50e1b198101a355398f4784bca` |
| 68 | `theorem` | [le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/le-div-iff.md) | 535 | `result-track:ae1ca1f0c55c8ce6bacb4b3c49bef9e009b0435a14868640d89bac027720b626` |
| 69 | `instance` | [covariant_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/covariant-div.md) | 541 | `declaration-track:17f5b86f073d9ccecd69d66cf2e478896aea7fe580e6bcc41af6706b6449f6f1` |
| 70 | `instance` | [covariant_swap_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/covariant-swap-div.md) | 547 | `declaration-track:3a0fd076febf5466886cc8c6951af0255943ae464a678c6f4ac3841e25d25184` |
| 71 | `def` | [instNSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instnsmul.md) | 558 | `declaration-track:3a69ced59a5c283e1e7f8bbe768b866460cb41422354a41af4df23334e77b417` |
| 72 | `def` | [instNPow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instnpow.md) | 565 | `declaration-track:2b5d9369d0f105ac9899e45b29ba9c55c5cee331df1558a60497f179e53219bc` |
| 73 | `def` | [instZSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instzsmul.md) | 571 | `declaration-track:a472f9f7c53e001eede0f535a2a98f8db8c8df70969fe81dc8aa3faa069bf821` |
| 74 | `def` | [instZPow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instzpow.md) | 578 | `declaration-track:3a2ce367fcd44141e86abdf59d308541e41a3396f936515e668e15b15eb773fb` |
| 75 | `def` | [semigroup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/semigroup.md) | 587 | `declaration-track:496ad5dd3fece53ed30f1e51872c19436dc4b8ac9c566380b515f276272e2ba9` |
| 76 | `def` | [commSemigroup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/commsemigroup.md) | 595 | `declaration-track:eb0cde3cfb18ea6c421d4ed718ac19f8a214d186b4f1a65fd96eedf33742ed7a` |
| 77 | `def` | [mulOneClass](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/muloneclass.md) | 606 | `declaration-track:0a7e7408afbe56b7d1154e54daac1d8fed635c612ae90a7c1a308cb7e72df589` |
| 78 | `def` | [mapMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mapmonoidhom.md) | 621 | `declaration-track:e02de2715c06341cf3ef63b094a6ff96e06e9470b35cfa7e57cb12de844388ba` |
| 79 | `theorem` | [comap_mul_comap_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/comap-mul-comap-le.md) | 630 | `result-track:6e772c867116d49716065bfb658d708dfb21bd1ed227cc6295d7c6713827fc8d` |
| 80 | `theorem` | [Tendsto.mul_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/tendsto-mul-mul.md) | 638 | `result-track:b706a2d2b64ab7bbccff61cbd5750419888520eac0919b26b6e6b16b5e2495b2` |
| 81 | `def` | [pureMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/puremonoidhom.md) | 646 | `declaration-track:7f84d218a2ec8106e18d86052a383580e232958cefc0ce4ae0b1fe344c1ac2be` |
| 82 | `theorem` | [coe_pureMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/coe-puremonoidhom.md) | 652 | `result-track:967def2befcba3376475148cea13eb92811fb778f624cbf564bbc5beafb4b1e0` |
| 83 | `theorem` | [pureMonoidHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/puremonoidhom-apply.md) | 658 | `result-track:00b2b0fab305303d09ab62a823ef267ebc1d8b1f25ff48572ca64fe965736300` |
| 84 | `def` | [monoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/monoid.md) | 671 | `declaration-track:1d6a981b5cab5675ae517ba15695923c0b0dee724384a17ae875f003eaf5c8ef` |
| 85 | `theorem` | [pow_mem_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pow-mem-pow.md) | 679 | `result-track:08010d8978204e8833e0da88feb15b3d3972b41b3e23000d22860fa50c994ee6` |
| 86 | `theorem` | [bot_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/bot-pow.md) | 690 | `result-track:20072c00c0d7ecc15188df14649ea7ad5898c5b8d109b81ee453f566b47d4633` |
| 87 | `theorem` | [mul_top_of_one_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mul-top-of-one-le.md) | 696 | `result-track:244c7d8794d61556d7238b28ae6e5bc6d1ba63d91bde3865be8569bf83b24835` |
| 88 | `theorem` | [top_mul_of_one_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/top-mul-of-one-le.md) | 705 | `result-track:a05ea86a2175bf2149ab2204544898350183338b4bdd5f9b57cd0691aded5e87` |
| 89 | `theorem` | [top_mul_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/top-mul-top.md) | 714 | `result-track:0baf5746c1c90d27c5efa34bc3060774f731659217aae0c483d50164cdb43874` |
| 90 | `theorem` | [top_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/top-pow.md) | 720 | `result-track:8a07dad18c6405481d51f1a33d890d05e4a8b623acead410e465595f72033ac2` |
| 91 | `theorem` | [Filter Pointwise Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/filter.md) | 728 | `result-track:7c0469dd6604f26c909bbe728697b128163332321273781f3bcbb5db1811ce88` |
| 92 | `def` | [commMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/commmonoid.md) | 737 | `declaration-track:c97fbefc011025aa0d43019037ad872436a0b4cb7eb28ffd67486d5eeb7b3f19` |
| 93 | `theorem` | [mul_eq_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mul-eq-one-iff.md) | 749 | `result-track:4bc309ad574e08caa80873346e0166dd91eeaee50f90c5f031da01c1edc419c8` |
| 94 | `def` | [divisionMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/divisionmonoid.md) | 767 | `declaration-track:57c9f9cd7bfb50782fca833f05a945ddf1f7f9807bac0877d67746416445f5aa` |
| 95 | `theorem` | [isUnit_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/isunit-iff.md) | 778 | `result-track:5acff9e2c2c7db08e190d28fe1c460ef1931dcfcc0c201cda4cc1b87862c60bf` |
| 96 | `def` | [divisionCommMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/divisioncommmonoid.md) | 795 | `declaration-track:8170040d7ee51343373ebfe0bcb23f754fccbbcbc73058dc82c7b762be67ffee` |
| 97 | `def` | [instDistribNeg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instdistribneg.md) | 801 | `declaration-track:e0f1ebd2f781904370767c497df4393ae7a3a48c85ce0772231a3d86b83428f4` |
| 98 | `theorem` | [mul_add_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mul-add-subset.md) | 820 | `result-track:fa828445a1e8b0fef179b23fb2271985e4dc6c87c137cc49d914501ce9799a5b` |
| 99 | `theorem` | [add_mul_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/add-mul-subset.md) | 824 | `result-track:00f17d644413a3ecb5cdf36cd0bee292f0acad7ac2bc8ec7b8393e7639b216a1` |
| 100 | `theorem` | [NeBot.mul_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-mul-zero-nonneg.md) | 837 | `result-track:17dc0acfce583a36145f83f918ac3f4009e56e2e732e681bd9a4b6e800f38056` |
| 101 | `theorem` | [NeBot.zero_mul_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-zero-mul-nonneg.md) | 843 | `result-track:1c6e28bb09c94351aca73c634b023eabbace39f3b9eba923c1386fc907164274` |
| 102 | `theorem` | [one_le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/one-le-div-iff.md) | 860 | `result-track:a77f446410e8e630dca920753ec8ad3fbbecffea2bf896e1c61f32855cb22360` |
| 103 | `theorem` | [not_one_le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/not-one-le-div-iff.md) | 870 | `result-track:ff841d81887107332805289d8ad56097d614201c1a4aa5b21dbba1b4eda7bc27` |
| 104 | `theorem` | [NeBot.one_le_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-one-le-div.md) | 876 | `result-track:d232eff5eccfd87f3ebcc918c8d1dfa89719aa6aca67338c766e1e2c3bc6c16b` |
| 105 | `theorem` | [isUnit_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/isunit-pure.md) | 885 | `result-track:d88158e4e5afb1ecdf2e31cfca655ec58a80a99328e70eaab7d19a0a7bf10fab` |
| 106 | `theorem` | [isUnit_iff_singleton](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/isunit-iff-singleton.md) | 891 | `result-track:9e914807aac5e0a31b4b0e8d47df515f9a8489765ae3d2a616bfeaa5b565e85d` |
| 107 | `theorem` | [map_inv'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-inv.md) | 896 | `result-track:4c7c62f3f2acad61da2b0517c2cddf26fb8edecd9262e6c205c9c18ac7dc14dd` |
| 108 | `theorem` | [Tendsto.inv_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/tendsto-inv-inv.md) | 902 | `result-track:9dead9cc4632d721b35b9bfaa8dfc807499624a4dc65d52b2866c0d33f65062c` |
| 109 | `theorem` | [map_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-div-source-edition-2.md) | 908 | `result-track:b76abcce8b86647b770b1ae752cdaf7a4ccd5448fa02f65f7e3d1b54612df7bd` |
| 110 | `theorem` | [Tendsto.div_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/tendsto-div-div.md) | 914 | `result-track:82b89c1b98bc1ee8477c37615fc18bbf200a9e62087238dd8ba56918e4a25d8b` |
| 111 | `theorem` | [NeBot.div_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-div-zero-nonneg.md) | 928 | `result-track:7ae2a723606f925e7d4dae820fe899b74b3bd0579b69cbe8e531a0ebf8ca9646` |
| 112 | `theorem` | [NeBot.zero_div_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-zero-div-nonneg.md) | 934 | `result-track:0333fc7c1c795250dfd2f84e1f41d20989beb444b21098c47373b2b69aa596db` |
| 113 | `def` | [instSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instsmul.md) | 953 | `declaration-track:26218c62986b66641bc6e69eadf7c4d922624b6c65b01aba016822806410fd2d` |
| 114 | `theorem` | [map₂_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-smul-source-edition-2.md) | 963 | `result-track:e31f3197ef6cbae71f01d91fc70b62bb24cd61fe91e787d3909fc54e8c2811e4` |
| 115 | `theorem` | [mem_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mem-smul.md) | 969 | `result-track:c27a89719050cd63fa84242a7c844ec0deacb01cc5c7275a6a05417e5da92236` |
| 116 | `theorem` | [smul_mem_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-mem-smul.md) | 975 | `result-track:2eb00337b5d55acdc2f5bb10b68636cb0a1f636b4d31374e652973e0c45d2457` |
| 117 | `theorem` | [bot_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/bot-smul.md) | 981 | `result-track:312864f54650da02cecfb5446ac5330aa16595bf1f7b6cb38a20f53b07866506` |
| 118 | `theorem` | [smul_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-bot.md) | 987 | `result-track:9f40425b4fee7faea4db158d1c1e616c57794aa3579db519a8084fa05cbddab2` |
| 119 | `theorem` | [smul_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-eq-bot-iff.md) | 993 | `result-track:ff398688a0815459d51773da2dda3c3e539d458e7e8b837b03423b6c70757305` |
| 120 | `theorem` | [smul_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-nebot-iff.md) | 999 | `result-track:412a0aa7d6a490454ba173d24248b22456bf7d253989a2f94c60b134ba671d43` |
| 121 | `theorem` | [NeBot.smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-smul.md) | 1005 | `result-track:937c457bc40b44f72ed87d7d921802832b76726f069a3addb292bbe0afb0a9e1` |
| 122 | `theorem` | [NeBot.of_smul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-smul-left.md) | 1011 | `result-track:8ed81752e9827c520b3763e1b4a7d2413dac8711b802b7e3a7cdcfbb21f1108b` |
| 123 | `theorem` | [NeBot.of_smul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-smul-right.md) | 1017 | `result-track:dbaeeb7ff4c09eec87764b5360a2cbfd64f272d6f478aaf6b19eb9bb2135537a` |
| 124 | `theorem` | [pure_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-smul.md) | 1023 | `result-track:8155fc5159f56e8deb111b9799f74cffa4c9bc0f58dce34d2f16beacd4772efe` |
| 125 | `theorem` | [smul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-pure.md) | 1029 | `result-track:7f6a43cb8135959324e6e6bd8740ac1112c6cfd6f4d1315809223b613341b2f5` |
| 126 | `theorem` | [pure_smul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-smul-pure.md) | 1035 | `result-track:4ad01d652a6c23edcf4c8b2ea962ffe9d18fecda846395406a3e0d8afcb9aba0` |
| 127 | `theorem` | [smul_le_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-le-smul.md) | 1041 | `result-track:b9fd8629f8d84347ef84c763cf3b3f9e6410ba58b07e3b71cbdaf0b1a6ae4e3c` |
| 128 | `theorem` | [smul_le_smul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-le-smul-left.md) | 1047 | `result-track:f43b64217696c15f4fc9c308e05648020b9e4f457b640b7a9b2d6a5d3a26b3fb` |
| 129 | `theorem` | [smul_le_smul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-le-smul-right.md) | 1053 | `result-track:13e0b7de469a1b412296a7fddb63791a16cb3a27dc103b3e5617d1db1a21e909` |
| 130 | `theorem` | [le_smul_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/le-smul-iff.md) | 1059 | `result-track:84ad13e5cb4d58ff1e5280b74bc776e7e557cf1443365051971217362db94c2d` |
| 131 | `instance` | [covariant_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/covariant-smul.md) | 1065 | `declaration-track:da95500fd6fe523fe35dca90a82a846e5959720d19435734718878174ccf0c70` |
| 132 | `def` | [instVSub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instvsub.md) | 1080 | `declaration-track:8e4b5d4b471fe0d6839a8dc818a07859c480e0708ad9d09e6f327a0d62a47d9b` |
| 133 | `theorem` | [map₂_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-vsub.md) | 1089 | `result-track:0318eea93965a6a8e0dbf66cbcb22884c0c5f7d973a5bc1c5e9f9dda3b34e79b` |
| 134 | `theorem` | [mem_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mem-vsub.md) | 1093 | `result-track:d0fc98c093bdc63a912a4d7b974aa7c6b6bf64c1387991c2df642e97fde9da00` |
| 135 | `theorem` | [vsub_mem_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/vsub-mem-vsub.md) | 1097 | `result-track:dd15e8df30003f50db9155d62d669ae238c6154ba894d34bd6411d7d8f33a480` |
| 136 | `theorem` | [bot_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/bot-vsub.md) | 1102 | `result-track:926a4b3a46d640c967a3fbe088db2abde7acb7c0aed6c7fd612fefbd53aa312e` |
| 137 | `theorem` | [vsub_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/vsub-bot.md) | 1107 | `result-track:7375741a167bbdeef19efdba0a1efbbd00c0185ddad44731758eb1d500f99522` |
| 138 | `theorem` | [vsub_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/vsub-eq-bot-iff.md) | 1112 | `result-track:000dbf6dfe320e513e7e2cf60eecd0d3dfd5b4437ca42cbcdece0cbe8db15c20` |
| 139 | `theorem` | [vsub_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/vsub-nebot-iff.md) | 1117 | `result-track:326710092867e7133150c6d1ba207a3ee0dbd4c16d18d94b5085be3176d6342a` |
| 140 | `theorem` | [NeBot.vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-vsub.md) | 1121 | `result-track:249e3b0b183dccf121b339f2979b18bf79badb69f40121df0cc74a36ae030b4b` |
| 141 | `theorem` | [NeBot.of_vsub_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-vsub-left.md) | 1125 | `result-track:92afce871079cc00f86c0496f63a268f77e1cecf86545b9118c7a634d3d39782` |
| 142 | `theorem` | [NeBot.of_vsub_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-vsub-right.md) | 1129 | `result-track:79cf59e7150c8f82684d80815c9b425dfd54ca97d74c62a573a4febbcd0e8b87` |
| 143 | `theorem` | [pure_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-vsub.md) | 1134 | `result-track:7b41a466cfe31ae765f89185fb2fa2955cbfebb62d14d810cc7c93c9b66c92fe` |
| 144 | `theorem` | [vsub_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/vsub-pure.md) | 1139 | `result-track:1c7fab63612f9ab298f6cf7dc7fffb3caf7dc096833964be3fa5f374c3c20d9d` |
| 145 | `theorem` | [pure_vsub_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/pure-vsub-pure.md) | 1144 | `result-track:c71f42cb6e83e441601c2a3df2e620391bb62e782a0ed591a9c86b475f48f77f` |
| 146 | `theorem` | [vsub_le_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/vsub-le-vsub.md) | 1148 | `result-track:bad4be5684fc5591a505e02cb6210337b780cf2f35cb8aa38355721e017a5dfe` |
| 147 | `theorem` | [vsub_le_vsub_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/vsub-le-vsub-left.md) | 1152 | `result-track:c58f5bc3d053bd6145fdf48b1da38a56c95c56cbefeaa4023d06cf39ff6e5554` |
| 148 | `theorem` | [vsub_le_vsub_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/vsub-le-vsub-right.md) | 1156 | `result-track:5bf957517834edc10abd59f6def462b4a76966239b7629f672e491a550d0ed80` |
| 149 | `theorem` | [le_vsub_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/le-vsub-iff.md) | 1161 | `result-track:52d17cd55ac272e4d9f0252d37ec52c9a63968583e294a63a4c017329f44d948` |
| 150 | `def` | [instSMulFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/instsmulfilter.md) | 1176 | `declaration-track:79570f631739a4a824ea9e1045c0994913f5916e74920631e8186adc15af12e7` |
| 151 | `theorem` | [map_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/map-smul.md) | 1184 | `result-track:3186c642f959f6dc6e13f041ca74f4fff21ae475392820a9dd5ac009d5ee7213` |
| 152 | `theorem` | [mem_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mem-smul-filter.md) | 1190 | `result-track:2958fe88b5789400e153922b1863d14c8d2237aa75a988728a0719105cd2ed76` |
| 153 | `theorem` | [smul_set_mem_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-set-mem-smul-filter.md) | 1196 | `result-track:c41b2e38d89a2cc4d8cb4049aeff4ec623f05b040e86bffa96560459938c1573` |
| 154 | `theorem` | [smul_filter_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-filter-bot.md) | 1202 | `result-track:2762fd2ee9b217c4df880fb4b79e6c6dfd296e714b0f4901ffc80dc441977da8` |
| 155 | `theorem` | [smul_filter_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-filter-eq-bot-iff.md) | 1208 | `result-track:1a0f12d469649dbd9126aebc9878485ba648048fe4ac8d6b805d76c6e7932c56` |
| 156 | `theorem` | [smul_filter_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-filter-nebot-iff.md) | 1214 | `result-track:402ed346c848e657eae0f7179199ea9c0b9044b6ec56687e7dc68d9a628cd02a` |
| 157 | `theorem` | [NeBot.smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-smul-filter.md) | 1220 | `result-track:bf531b0e4f5fe1fb382ec043a3e4c7a58f594c1aae6a62850242a71f22e1f904` |
| 158 | `theorem` | [NeBot.of_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-of-smul-filter.md) | 1225 | `result-track:51640fd6c5d9beeffdad50f357ffd3829eaaa2eceac2a8a076c1f803d8ea456f` |
| 159 | `theorem` | [smul_filter_le_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smul-filter-le-smul-filter.md) | 1231 | `result-track:904865b82ff68d52920f2a6f59e7c51036321d54470c85f5ef65d2bc5aa51da2` |
| 160 | `instance` | [covariant_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/covariant-smul-filter.md) | 1237 | `declaration-track:a40f69adf7b4873427b0cb9dca4af4687bc610471fcef487e6259659a1dafff5` |
| 161 | `instance` | [smulCommClass_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smulcommclass-filter-source-edition-3.md) | 1247 | `declaration-track:f3d4f0613cf23b23b5dc52aa4c0ed2df6750ab084f4ca249ad495a9b0cd1c602` |
| 162 | `instance` | [smulCommClass_filter'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smulcommclass-filter-source-edition-2.md) | 1254 | `declaration-track:2a0bd0f6199c598d4b2b57201462fefdad6501e2e6e99f3ae26c012264aca1d8` |
| 163 | `instance` | [smulCommClass_filter''](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smulcommclass-filter.md) | 1261 | `declaration-track:0b1279a557b98bad174e184ff039e2cce4ba57f130f87ffbe251a707894e9670` |
| 164 | `instance` | [smulCommClass](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/smulcommclass.md) | 1269 | `declaration-track:c2ed26f7e290516d7e6ae1e4e312668d43db82aa799e64f7078b6fe0122f8184` |
| 165 | `instance` | [isScalarTower](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/isscalartower.md) | 1276 | `declaration-track:150a03df134d6e7c137e0be7b4e07e74007bd96b9623d135247a3fac5decfce8` |
| 166 | `instance` | [isScalarTower'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/isscalartower-source-edition-2.md) | 1283 | `declaration-track:cf9c626b0794fa7a586c7135a835d6ab3a1c708fb96c3a2f63163684981240b9` |
| 167 | `instance` | [isScalarTower''](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/isscalartower-source-edition-3.md) | 1292 | `declaration-track:e901ae5244a4ae8cad3a9ee6cc2235e597758bc13ec90fb15bde9fd83c485b3b` |
| 168 | `instance` | [isCentralScalar](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/iscentralscalar.md) | 1299 | `declaration-track:bd88e6824a01ab47391c950e4afd6b8702a6438536cb5483a4354d03a27b7cda` |
| 169 | `def` | [mulAction](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mulaction.md) | 1309 | `declaration-track:190e161a949606c1a7d8a6b00f6e0b50e50035f2813f982d391090b30852e0b4` |
| 170 | `def` | [mulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/mulactionfilter.md) | 1319 | `declaration-track:09d3a759feac78d75b3e9a43974de4e26cd402928c0d6aff317ccf3581edad70` |
| 171 | `def` | [distribMulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/distribmulactionfilter.md) | 1330 | `declaration-track:71de8a220ac0c407db7e55a04dd8c38024033420155cb4d8ef1858f34fbaed8a` |
| 172 | `def` | [mulDistribMulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/muldistribmulactionfilter.md) | 1337 | `declaration-track:6d68c2d8b868e6f07616450659438fcd09575bf9c5ffba09d2e1b4e5d19cf48f` |
| 173 | `theorem` | [NeBot.smul_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-smul-zero-nonneg.md) | 1356 | `result-track:b79e7a1009d43f0a2881a554c5bc734cf38379c1e44377018ea3eb1594461917` |
| 174 | `theorem` | [NeBot.zero_smul_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/nebot-zero-smul-nonneg.md) | 1362 | `result-track:e3332eac0942438ad4082c8254f08b03d038a234f0543dd95a69a43a28c1ec87` |
| 175 | `theorem` | [zero_smul_filter_nonpos](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/zero-smul-filter-nonpos.md) | 1368 | `result-track:41d0dccef6385ab5a4a479a6566280d7c7310a0ede75d327e495ac9eba6e4ad1` |
| 176 | `theorem` | [zero_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseNamespaced.lean/declarations/zero-smul-filter.md) | 1376 | `result-track:036593f1dacde8ab6c804e8cf108357c4b774d6de10428505c82be71f36fd0fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8252940728861641d3c196f59dc2cb5011e765bb6fd8fd3630eb3962306aaa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Pointwise/Variant60829c244f847067d7416735afd9c6a5fc2d8a230312ddeb6e4acde22ae681b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
