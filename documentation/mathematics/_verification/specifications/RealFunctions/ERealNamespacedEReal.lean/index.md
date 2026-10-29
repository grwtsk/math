# Verification target: EReal Namespaced EReal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22162629622a034cab326979ca4012e9d717b37f",
  "lexical_observation_count": 200,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ERealNamespacedEReal.lean/index.md) · [Full source](../../../../RealFunctions/ERealNamespacedEReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22162629622a034cab326979ca4012e9d717b37f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.ENNReal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sign` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/ereal.md) | 65 | `declaration-track:0c4a9398c6035c028e6af1d4411b4e44d900799876fce55d7cf64cd5eaa5a8d2` |
| 2 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-16.md) | 69 | `declaration-track:d40426dfaa5f285bb98c9807e85e08fe8323eb0504004e2552246ea5a55cf2cf` |
| 3 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-21.md) | 70 | `declaration-track:fe9790386abf561794c51dd3440058553eb90fdd1dfaef8235d9fa4c248bdd3b` |
| 4 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:28ac7e2e38e7b267a6d2bdb7e9cfc9a1979d661af3b5458a825224d401ba1d41` |
| 5 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-6.md) | 73 | `declaration-track:4fd92218d642564e5d000fd0e68f92a4e51997e137aff03adc08af9fb53379ea` |
| 6 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-14.md) | 76 | `declaration-track:b7c143d6647a157db25e91821a811e6eeadfee7baa9923dd3748a651d0e2c425` |
| 7 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-5.md) | 79 | `declaration-track:3583fd38e5ab198471d8ce9807236135995de44036974d436ddc8a639b99771f` |
| 8 | `def` | [Real.toEReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/real-toereal.md) | 83 | `declaration-track:0356576d529b169bc022a100dd584d3e8198064befc3b99a3678ea2e7bb0b369` |
| 9 | `instance` | [decidableLT](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/decidablelt.md) | 89 | `declaration-track:f5ee16e1f784cecc5cf05fabd93de34c0671b092a2f159eb6b041205e6e681a7` |
| 10 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-7.md) | 94 | `declaration-track:59357f7a9424099f0545ddab4bb8aaab87828c43e41837c6cce72fc4a470f546` |
| 11 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-20.md) | 96 | `declaration-track:f94fd103fb239a192f2fdb3f7d76ae82d0fdcba5ed74ec861d2544e5d41654f2` |
| 12 | `theorem` | [coe_strictMono](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-strictmono.md) | 98 | `result-track:6ab73fc6dca71487803ad71d3d634fd4fd85f6ccb25b7341e90bc7f21cbf5174` |
| 13 | `theorem` | [coe_injective](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-injective.md) | 102 | `result-track:374782446a02c1f3a31cc31ef1fbcbfac7f800a751627bd1d4d15dcc7b2f8307` |
| 14 | `theorem` | [coe_le_coe_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-le-coe-iff.md) | 107 | `result-track:97170448592ad1be3e6ef5781078649da1be97d24e9bc617eeb0a979ff2f3614` |
| 15 | `theorem` | [coe_lt_coe_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-lt-coe-iff.md) | 112 | `result-track:1b9e87091ea0e30f0f83d0640a32bba57a4be856efce5a296bcb70bbaef19262` |
| 16 | `theorem` | [coe_eq_coe_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-eq-coe-iff.md) | 117 | `result-track:b219548b176496a6ce30ca9afeffc4ef0f9787f9a46c843350d1585e909bb71f` |
| 17 | `theorem` | [coe_ne_coe_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ne-coe-iff.md) | 121 | `result-track:aa99a4fb56e3c42f8632b7790c0b0cea522ea0b8b15159e2009d003fc008fbd6` |
| 18 | `def` | [EReal Namespaced EReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toereal.md) | 126 | `declaration-track:beaccc701f138523951c3541840d086e18c6b46a73cc46309ed8f45ff60436eb` |
| 19 | `instance` | [hasCoeENNReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/hascoeennreal.md) | 131 | `declaration-track:8570f8ed3e8a3b3f188292ce4a1dcfbc71a29e6d5bda96da66c5c9df4a4bb9bc` |
| 20 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-12.md) | 135 | `declaration-track:807ec7eab3f6763ae549dd5446ce712e85773902ef557a78de09adc6e20a87cd` |
| 21 | `theorem` | [coe_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-zero.md) | 138 | `result-track:bb89eb32c291a7c68e819e6076c47e58bfdd83f29608486f2cea9505f49482b8` |
| 22 | `theorem` | [coe_one](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-one.md) | 142 | `result-track:92398d5e9cf0ee330007a162dba8e55208820bcf7de73b9253f3f1726c2da1b0` |
| 23 | `def` | [rec](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/rec.md) | 152 | `declaration-track:8362b235411c0aed4040bb98ca08242ff2f92e844e41e8bc8611932bb0145603` |
| 24 | `def` | [mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/mul.md) | 161 | `declaration-track:584c2254caea09c1c9e3011557753fdce82fc21d5eddb7c68d6d2d54153b3c51` |
| 25 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-4.md) | 173 | `declaration-track:350d0358433a1d2dee45700a19b5147b55d4e18ed4e82e14aa2676bdeb0ca25f` |
| 26 | `theorem` | [coe_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-mul.md) | 176 | `result-track:33d48fd74f19954c9c513b08ef857bd86ffaea21df3f445884a85f2712e487f7` |
| 27 | `theorem` | [induction₂](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/induction.md) | 183 | `result-track:d001b123f48751d76b51d857d6940393aa7168718d3b195041e0abc312113f44` |
| 28 | `theorem` | [induction₂_symm](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/induction-symm.md) | 211 | `result-track:d782bb04aada17baf0d89ea24431dfd601d09d359d789cbb17e21dd7d9481c12` |
| 29 | `theorem` | [mul_comm](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/mul-comm.md) | 226 | `result-track:ddbfeebfd69b892275d4e79f3fe6e554ef9bbfda4f52cd6251986848f07b18e4` |
| 30 | `theorem` | [one_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/one-mul.md) | 232 | `result-track:3c6092e55f277521c3e0c70e320f0b1e2dccce8d46441b1b82a2adbb1552f271` |
| 31 | `theorem` | [zero_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/zero-mul.md) | 237 | `result-track:6296639165022ffc22cf0aed9b84e3482d60c27269017d1b7aeafbb14e58ca52` |
| 32 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-18.md) | 242 | `declaration-track:e4b1142a55142d496d4a2e46e1f6d820323b796a373db6e8fa620ec2bbbab80d` |
| 33 | `instance` | [canLift](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/canlift.md) | 250 | `declaration-track:38f045bc2be86afe66aa10e91c37f713724c8687198f08d2dea83c95c8d607b6` |
| 34 | `def` | [toReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal.md) | 259 | `declaration-track:75ab27a55b508816a3b5cad7b3121753fa9f9d33de196ec626cf9b86d75cb2f8` |
| 35 | `theorem` | [toReal_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-top.md) | 266 | `result-track:51cde66bb19e4774a71efd84780958500976762e39ad3034e1ab74add130850b` |
| 36 | `theorem` | [toReal_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-bot.md) | 271 | `result-track:20b0ea7655de569fb9c0c5596b6498945c90d8ec32c73c2c1c8c0ad9f9790dc8` |
| 37 | `theorem` | [toReal_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-zero.md) | 276 | `result-track:5f2738a67f30020d1e182f902727048e33081bb2fa816f47d974a9ec99578269` |
| 38 | `theorem` | [toReal_one](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-one.md) | 281 | `result-track:22ca044ac1463f9535cd286ebbb3eaacdb4386930e87b34e95666750c838be77` |
| 39 | `theorem` | [toReal_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-coe.md) | 286 | `result-track:452f2aedf8c35c3358fc4cb4263f88cc3689f45a81c76698bf44c6f8c45ac353` |
| 40 | `theorem` | [bot_lt_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-lt-coe.md) | 291 | `result-track:1b418da31a1d3dd29e7131c4a557f98841f07bb641e579b5b07f30ea013ce07f` |
| 41 | `theorem` | [coe_ne_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ne-bot.md) | 296 | `result-track:839e9600f29a542d99bbbdedc748a9e029aa30489bd1c72881c244be556bf50f` |
| 42 | `theorem` | [bot_ne_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-ne-coe.md) | 301 | `result-track:de9d51b08e04b7a1957599854003885f9b82da88ad5917aac7f3adc4869cc016` |
| 43 | `theorem` | [coe_lt_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-lt-top.md) | 306 | `result-track:651055967e69e66ff4614463c348a3053a61951e7eaf0653ec715b111c1739e1` |
| 44 | `theorem` | [coe_ne_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ne-top.md) | 311 | `result-track:0a6b9e8360f030f432646861893f802355edc293288b88f6b76cc8e1ddd847ad` |
| 45 | `theorem` | [top_ne_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-ne-coe.md) | 316 | `result-track:3d6e94d47ec25a4a222d136d7204ae464c9fe6c8e863baf3d5fd6169ff5869e4` |
| 46 | `theorem` | [bot_lt_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-lt-zero.md) | 321 | `result-track:26f722f57ee52bbbf60d3eacd83ce56f70e74da028efba5ea74cb71f2b78d305` |
| 47 | `theorem` | [bot_ne_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-ne-zero.md) | 326 | `result-track:24b42b4464bd4c94754c99208500ec4d62ea1f7709ff00ab0af373d623ebead3` |
| 48 | `theorem` | [zero_ne_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/zero-ne-bot.md) | 331 | `result-track:78c7b313bd0f5a05d143abf66fc6e3740711449000dc6cf11c9ccaf5cb1470fb` |
| 49 | `theorem` | [zero_lt_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/zero-lt-top.md) | 336 | `result-track:d38773d9a2d1d8f780ce7683e318d40cc3cd4442ddd79e07120ca965539c884e` |
| 50 | `theorem` | [zero_ne_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/zero-ne-top.md) | 341 | `result-track:315a4daba44cfeda7c31d3797669e85e81c020070c7d9585f5312954e298b54f` |
| 51 | `theorem` | [top_ne_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-ne-zero.md) | 346 | `result-track:cab5f593c00145c465768868efada3a45c5247c8b35f25625d9bfc7f4696982e` |
| 52 | `theorem` | [range_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/range-coe.md) | 350 | `result-track:9f42eed19e19dc2eb7267bed30a7ac1b7bb399d95b5c31377a7699a22bd3c9e9` |
| 53 | `theorem` | [range_coe_eq_Ioo](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/range-coe-eq-ioo.md) | 354 | `result-track:5232348f2627f96815ac48aa96ecca3b87d9e022c9e7172e7b2b7c9c882574ce` |
| 54 | `theorem` | [coe_add](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-add.md) | 359 | `result-track:0e2ed5cf778ef68ab8c9f8d5210ff7ca8b4c72685b6e4c1c6a55dc7501ac8bd5` |
| 55 | `theorem` | [coe_nsmul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-nsmul.md) | 366 | `result-track:95ff00ab96885cfa3aaf3c58fbe3dcd3e2696ea68062f7784dfe25237ec6f395` |
| 56 | `theorem` | [coe_eq_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-eq-zero.md) | 374 | `result-track:4146e73ffe9bb5e001c515747b4ba01ad06166b98bb759a37a6e947cce131f47` |
| 57 | `theorem` | [coe_eq_one](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-eq-one.md) | 379 | `result-track:d265bb340bf10673a21e980f6c9c17d9211ac8ed66590aaabb9df6674dfabacd` |
| 58 | `theorem` | [coe_ne_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ne-zero.md) | 383 | `result-track:c6218700e1b345b1de002cd988bef2322ea9484dc0d870ead1224ad971a7faa8` |
| 59 | `theorem` | [coe_ne_one](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ne-one.md) | 387 | `result-track:8abce66584876cb4d62183449611e11e8611ed1a71ecb5597d1e396d4486c51e` |
| 60 | `theorem` | [coe_nonneg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-nonneg.md) | 392 | `result-track:853f81c52affdef201f36a305a18f0d4dd19edac53290dc3cd344d510c2913a3` |
| 61 | `theorem` | [coe_nonpos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-nonpos.md) | 397 | `result-track:80cbbed24734d518081144bfb4b5ce22b4b55e6e1cbd53a0fa6f9fd67d55cf22` |
| 62 | `theorem` | [coe_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-pos.md) | 402 | `result-track:321bdf66cc75fc85ad0bde06934b69239ec6c9e3cd8783013a71779ef3f033c7` |
| 63 | `theorem` | [coe_neg'](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-neg-source-edition-2.md) | 407 | `result-track:70a390a8ef81e5be1d25bf766f737d6c222514365786728f821a2915376347d6` |
| 64 | `theorem` | [toReal_le_toReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-le-toreal.md) | 411 | `result-track:541ee09da82abd9b0d1b720d4e7156587d4898a32a889076a5634fb312ccd9ed` |
| 65 | `theorem` | [coe_toReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-toreal.md) | 418 | `result-track:6dd13c1d9076896f08e3c9e7dc1d85f05980bbf51bf689e3360e8b0b585465fb` |
| 66 | `theorem` | [le_coe_toReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/le-coe-toreal.md) | 423 | `result-track:3470b73a8704af5f4dc02708449ed2d1f1a4a93ec4b2bb76883374f8638c6f42` |
| 67 | `theorem` | [coe_toReal_le](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-toreal-le.md) | 429 | `result-track:f4c9dd4daf4391bd183f47cb61244ff9f1f9d288eff4a37be7e3d15aa1de2de5` |
| 68 | `theorem` | [eq_top_iff_forall_lt](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/eq-top-iff-forall-lt.md) | 435 | `result-track:4f0ddcdfd4f0473e715b695886cd9c08e71c46da084fd2d855cad2b3f473322b` |
| 69 | `theorem` | [eq_bot_iff_forall_lt](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/eq-bot-iff-forall-lt.md) | 444 | `result-track:08b1c7d15bad25a8acd7262ca5cd05516640ebc855795a040d11d5c840ac7e04` |
| 70 | `theorem` | [toReal_coe_ennreal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-coe-ennreal.md) | 456 | `result-track:eef64600100fc1951bbb3a4b68337f25d485767b2dda3c294e6221fec3fca20d` |
| 71 | `theorem` | [coe_ennreal_ofReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-ofreal.md) | 462 | `result-track:c5495d0f5fcc97a11666bdb1f7ad7945dcb7a16ebbd36e6ea2628ae2116f91a2` |
| 72 | `theorem` | [coe_nnreal_eq_coe_real](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-nnreal-eq-coe-real.md) | 466 | `result-track:b566a44a48366de4d4151338d0479d31e843b33d98530ef016b1fc6bfade2b26` |
| 73 | `theorem` | [coe_ennreal_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-zero.md) | 471 | `result-track:2ed7011efc0a3ce4487fdcfb1aa6cc3e1fc2157ad1b2d08f84ad771f21effff6` |
| 74 | `theorem` | [coe_ennreal_one](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-one.md) | 476 | `result-track:21449daf089980d28b3f209da338a192690b18e9283a7de6c680d8bfbc2ece72` |
| 75 | `theorem` | [coe_ennreal_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-top.md) | 481 | `result-track:074ff1e64b6299dd58e7a7f36fcda6f686d7011b0b0502c59b507bd70c233587` |
| 76 | `theorem` | [coe_ennreal_strictMono](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-strictmono.md) | 485 | `result-track:3881cd880d98205b4f1e7c2d3c12b20ada5cdb6abef75aed19f66e97c2ed5555` |
| 77 | `theorem` | [coe_ennreal_injective](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-injective.md) | 489 | `result-track:28045db840fc364354c70d0bb57570130f6de6431b948f0c8c1206afb1692eb9` |
| 78 | `theorem` | [coe_ennreal_eq_top_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-eq-top-iff.md) | 494 | `result-track:c49fd84a6622aa3b7fa07b4c74c0434ed9727831b9e22e8ad7ca44407fb36bc6` |
| 79 | `theorem` | [coe_nnreal_ne_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-nnreal-ne-top.md) | 498 | `result-track:0d06d29a535e359685c69d6e909eb9b9090cd0591a4470b731ef33788e5a5d63` |
| 80 | `theorem` | [coe_nnreal_lt_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-nnreal-lt-top.md) | 502 | `result-track:3f547ff7f72e8516ca582b1afde7267d08514089966baf55daa13ac5de6eb2fb` |
| 81 | `theorem` | [coe_ennreal_le_coe_ennreal_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-le-coe-ennreal-iff.md) | 506 | `result-track:b4e625ad99d7af5a5cd20027ee156744b15e59b3bc8ae47aa3d6c40442048ce9` |
| 82 | `theorem` | [coe_ennreal_lt_coe_ennreal_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-lt-coe-ennreal-iff.md) | 511 | `result-track:a0208855cd8b4ba32cee69cd4e9c45dbcb8bc2f08a1e0818a256ce61d9f6876a` |
| 83 | `theorem` | [coe_ennreal_eq_coe_ennreal_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-eq-coe-ennreal-iff.md) | 516 | `result-track:1963617fc65711e18e8dc4eaf44c35437794a7c1a3103d0ee24690eb8028859a` |
| 84 | `theorem` | [coe_ennreal_ne_coe_ennreal_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-ne-coe-ennreal-iff.md) | 520 | `result-track:814d667cfb10365eb0d48e5923ac5a0890375e143473950ac1696b81674cb2e7` |
| 85 | `theorem` | [coe_ennreal_eq_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-eq-zero.md) | 525 | `result-track:577913d6ff6949cc776d6466d927b97e0457d2c79c3a28506a1e71f907b92e99` |
| 86 | `theorem` | [coe_ennreal_eq_one](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-eq-one.md) | 530 | `result-track:88d936c449f31657d62b65f41418e1457e1eba397d0e8612e46f4082092475ef` |
| 87 | `theorem` | [coe_ennreal_ne_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-ne-zero.md) | 535 | `result-track:6fa31cc0635f41d1a597be377c36f96aa1c8fb8c9f2e1bed3f10a2e3a66ba3ab` |
| 88 | `theorem` | [coe_ennreal_ne_one](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-ne-one.md) | 540 | `result-track:2d68703c9cd258ddc3cd83e6d8cbc6f25223f107e0753c3045750fb64faa19f0` |
| 89 | `theorem` | [coe_ennreal_nonneg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-nonneg.md) | 544 | `result-track:fdc98b7090a58b35b3fc8f1fb0cc774415c46ea7f1cf3483527837db2d1cd981` |
| 90 | `theorem` | [range_coe_ennreal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/range-coe-ennreal.md) | 548 | `result-track:68126336082bac5f7976904281e81c69ba8d27a68b4527c699740a86d11393a5` |
| 91 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-13.md) | 554 | `declaration-track:9737c2df0e4acb48ec1f9313e68875a3a4c94c2edce02c6dba9078f6116ff748` |
| 92 | `theorem` | [coe_ennreal_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-pos.md) | 557 | `result-track:7e0093558a12993d11e80d3c0b3a9a96665d2ea692a841a689d5c6c764b733f6` |
| 93 | `theorem` | [bot_lt_coe_ennreal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-lt-coe-ennreal.md) | 562 | `result-track:3f542424a61651a17ec77096631a8bd92c2255652dc5e72168253c73660f8266` |
| 94 | `theorem` | [coe_ennreal_ne_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-ne-bot.md) | 567 | `result-track:ecd5d2e2292d1b9501db14575e85e02dbcb999551a4f987e21d4b04cac06d2fd` |
| 95 | `theorem` | [coe_ennreal_add](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-add.md) | 572 | `result-track:dbe4c595759fe42fbdb1ea3f8f4dd979ca306ce0ba3c5b7c36aedc8d13c4d231` |
| 96 | `theorem` | [coe_ennreal_top_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-top-mul.md) | 576 | `result-track:d2a641e433094ddf6e2ced2752dcc128b1670ff461134d7c8620fd060687b68e` |
| 97 | `theorem` | [coe_ennreal_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-mul.md) | 583 | `result-track:a77616d408f959e60bd2f85258a3fb12fe442be13b37b4c20846470087ff1542` |
| 98 | `theorem` | [coe_ennreal_nsmul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-nsmul.md) | 593 | `result-track:e2b97e2fc89000d46a787b253f0b9b13dfec2a108fd7bbc373d66b484268783d` |
| 99 | `theorem` | [exists_rat_btwn_of_lt](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/exists-rat-btwn-of-lt.md) | 602 | `result-track:56656439c4576f848d3d6c58095fa2ef39a1131db1877cede1490c93ea0d5f2d` |
| 100 | `theorem` | [lt_iff_exists_rat_btwn](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/lt-iff-exists-rat-btwn.md) | 617 | `result-track:67ab35e74b60085e1930e65a165c80ae12de834ed89ace451394ff6272235fef` |
| 101 | `theorem` | [lt_iff_exists_real_btwn](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/lt-iff-exists-real-btwn.md) | 622 | `result-track:da2deead00cd2aabeb7706135bea068fb8784a43275308f12e3626d2ff439a03` |
| 102 | `def` | [neTopBotEquivReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/netopbotequivreal.md) | 630 | `declaration-track:517961e6def52b1ac7a26b71b72459bf589eb8d8592df46011b2332f52be3bfe` |
| 103 | `theorem` | [add_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/add-bot.md) | 643 | `result-track:ac6ce7a0345efa41af938ca57d3463ec00d9d5865b10e40de090cb854ee8d5b0` |
| 104 | `theorem` | [bot_add](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-add.md) | 648 | `result-track:493358fcd6629e134b5fb999349d2ccb87d430b6b43e6125ca7ae8dfe6807f01` |
| 105 | `theorem` | [add_eq_bot_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/add-eq-bot-iff.md) | 653 | `result-track:f9d85ddc0fece0087bdecb8bacd203395b84898068d62dc3bd872030e94f65ac` |
| 106 | `theorem` | [bot_lt_add_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-lt-add-iff.md) | 658 | `result-track:d8af75dac7ca2748e40712cba6964374028c3cf07de74a33e0ed3460cda7f8c5` |
| 107 | `theorem` | [top_add_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-add-top.md) | 663 | `result-track:f6920a3151bd026e36b56e66db758c5673d94bee645f7cc6a6851df3bd536908` |
| 108 | `theorem` | [top_add_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-add-coe.md) | 668 | `result-track:f537ec1cf4fce8384e1c004ff8013a7de24808b600895a956ee42a6f200186ca` |
| 109 | `theorem` | [coe_add_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-add-top.md) | 673 | `result-track:ebc3eefbc6dc630bf39b7088fa02ae7d745388e55219782bb8f6c34c01e237da` |
| 110 | `theorem` | [toReal_add](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-add.md) | 677 | `result-track:5750a020143bdfd3c8ac36128d022d6bb8ffed3bf9d8e2420bc87bbae6768def` |
| 111 | `theorem` | [addLECancellable_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/addlecancellable-coe.md) | 684 | `result-track:d1ccd6d45dcfb45bd66b7aedb7e0c495967d051ee08dbbb90b09fec73788ec3a` |
| 112 | `theorem` | [add_lt_add_right_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/add-lt-add-right-coe.md) | 693 | `result-track:1c75a3ce61a1f4d90e28c3ad71cabe0da0e407e514decde44726fa75aa052648` |
| 113 | `theorem` | [add_lt_add_left_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/add-lt-add-left-coe.md) | 697 | `result-track:17dfbfff6f8677b377d8568f0294ae6beb05295a14890111ba9ef2c1f719925c` |
| 114 | `theorem` | [add_lt_add](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/add-lt-add.md) | 701 | `result-track:1587eaf2966cde7597f5f3e3152874abbde4b1eab6a3639b89382c2df5dc9b30` |
| 115 | `theorem` | [add_lt_add_of_lt_of_le'](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/add-lt-add-of-lt-of-le-source-edition-2.md) | 709 | `result-track:49a603435176ee9477961d96df024e8388c5f77d662a89f5decc3e098d347e3f` |
| 116 | `theorem` | [add_lt_add_of_lt_of_le](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/add-lt-add-of-lt-of-le.md) | 721 | `result-track:3e385b64df92c798dfa755f84cf03dbbb1af464402dbbfeea56f16aca337de1c` |
| 117 | `theorem` | [add_lt_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/add-lt-top.md) | 726 | `result-track:50bd824df12f4cfec1553a356e2d865b5a46e45b2cea4555a03e9c357de78d17` |
| 118 | `def` | [neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg.md) | 734 | `declaration-track:c4f674d7c782095540deb3bf4a84a93467caf94f64db6cfeb54c47b213a4848d` |
| 119 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-9.md) | 740 | `declaration-track:607b0b56f6989d0f3ac9b795162bf26f5c72b8ae0531fcc8b057be8c1aa7312e` |
| 120 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-19.md) | 742 | `declaration-track:f706d19eedb092e703bfec4b45109c11d94c5b4fb9a6ef611c55228dbe09cfff` |
| 121 | `theorem` | [neg_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-top.md) | 746 | `result-track:217ec72f11e0ecd50a7557e05cb01a429bcc7876c66f960089d8e0eb24f17f20` |
| 122 | `theorem` | [neg_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-bot.md) | 751 | `result-track:1783d37a914f388251c841de9dcdf1a0b310ad04da334a1ce371ec1c6dd30a8d` |
| 123 | `theorem` | [coe_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-neg.md) | 755 | `result-track:5f6d74a27f0bb92bf41257f2c4feca476b098b7badb1b553fc931290b1678d7f` |
| 124 | `theorem` | [coe_sub](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-sub.md) | 759 | `result-track:a7fd4e0620d50525df4ccbf46041e7965c44849c7cbe1c3096446195e9aed5b7` |
| 125 | `theorem` | [coe_zsmul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-zsmul.md) | 763 | `result-track:44739d0f87e74a605daf7938a7d0a9571b1a6710e646cac2d39bcc79e28ba5bd` |
| 126 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-2.md) | 767 | `declaration-track:1b5f47069e6719b56f8235d8d0142d94dd8def7954f421d2665df255e6db8d11` |
| 127 | `theorem` | [toReal_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-neg.md) | 775 | `result-track:a6a04a704a78e3f6622feee63a19be54dc84ee03ffc87f4b193ab9b3971c17ce` |
| 128 | `theorem` | [neg_eq_top_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-eq-top-iff.md) | 782 | `result-track:565e6a1fb498ce34cd5c5b7aa1ea9efda0a0ca101c8ace7bb73f7c9edc27cbf9` |
| 129 | `theorem` | [neg_eq_bot_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-eq-bot-iff.md) | 787 | `result-track:b1e7860389b565f53710ec9c7dc01c12e39cc2e39256f2f84fdcb52756647ac3` |
| 130 | `theorem` | [neg_eq_zero_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-eq-zero-iff.md) | 792 | `result-track:bad0d2b73d74ddc8c345d4eee13f82c8360046e1d32551e2835610aa72e0efb9` |
| 131 | `theorem` | [neg_strictAnti](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-strictanti.md) | 796 | `result-track:e562adcd5ae2fc2d2c5e9198e55df1dfbecec90d8cf8292620928496d0774c47` |
| 132 | `theorem` | [neg_le_neg_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-le-neg-iff.md) | 801 | `result-track:55c13ba533af7f70095ea25ab95c0de821b6c71f5782d71c0808c5045bd8782c` |
| 133 | `theorem` | [neg_lt_neg_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-lt-neg-iff.md) | 805 | `result-track:c1cbfb4c7fc9276dca768f4d82c5c791c5c42803320202f503dff106d9c73f8c` |
| 134 | `theorem` | [neg_le](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-le.md) | 808 | `result-track:258c6bdf71180c2756ceb883ce0faf5a846d4affb0fc8e0ece9a0d8dc516d8c4` |
| 135 | `theorem` | [neg_le_of_neg_le](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-le-of-neg-le.md) | 813 | `result-track:b0b936acbca112a0eac1d602d00e9e36089a80e260f2023b1b7b01a5ec80a558` |
| 136 | `theorem` | [le_neg_of_le_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/le-neg-of-le-neg.md) | 817 | `result-track:2247313a66daad4c0e74324c4df80d62552ec311c2daa1fd92e78ba06280582c` |
| 137 | `def` | [negOrderIso](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/negorderiso.md) | 822 | `declaration-track:2d7e482621f6dcde94d848eb7ec68b8b33521e1d1353bad97696d232d142f08a` |
| 138 | `theorem` | [neg_lt_iff_neg_lt](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-lt-iff-neg-lt.md) | 829 | `result-track:fb1c4e1b8a9566167bdec7232922c4d9766ad2fe198628f9ed5b3b3947c397d2` |
| 139 | `theorem` | [neg_lt_of_neg_lt](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-lt-of-neg-lt.md) | 833 | `result-track:9cd3c7ee6f955ec0c1056588ffb300d2642262e431e33bc3a7e93fccab222e51` |
| 140 | `theorem` | [bot_sub](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-sub.md) | 845 | `result-track:e18a08f1b66ccdd8d8719615f5cca812facd9bbc7222c1acf367076cde0c58e9` |
| 141 | `theorem` | [sub_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sub-top.md) | 850 | `result-track:178d222cd1161674174696863eb4f37847ebf5971de79fec5ff03fa706ac1fc8` |
| 142 | `theorem` | [top_sub_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-sub-bot.md) | 855 | `result-track:75c1e95f8a2b2941b65b1d5c34329298cb08e82b554ad2c2a6c556ce895f128f` |
| 143 | `theorem` | [top_sub_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-sub-coe.md) | 860 | `result-track:d73e47dc78b33f0d78dcdb6d001201f4cc489f9464e414615f29369863ef0083` |
| 144 | `theorem` | [coe_sub_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-sub-bot.md) | 865 | `result-track:e15c8e4c05f1314c8463b4f45fe8c4477eaea5693c87b07f03d91cc23cd5077d` |
| 145 | `theorem` | [sub_le_sub](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sub-le-sub.md) | 869 | `result-track:80b80b310de2ee8e5701a4548b2ff236d2bc6a950f7beb7facae8a2caa3b1c51` |
| 146 | `theorem` | [sub_lt_sub_of_lt_of_le](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sub-lt-sub-of-lt-of-le.md) | 873 | `result-track:16d280c0906b58fdf9683889eb16e550a9378984f42aa6dd2292a52f15c8e399` |
| 147 | `theorem` | [coe_real_ereal_eq_coe_toNNReal_sub_coe_toNNReal](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-real-ereal-eq-coe-tonnreal-sub-coe-tonnreal.md) | 878 | `result-track:2472db863f8f5a305167c74f9a5c8ae9d541737f0a1e94b35828574a43eae981` |
| 148 | `theorem` | [toReal_sub](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-sub.md) | 890 | `result-track:6f85607fa108cd1b5c0c3af6ff0f9d62b6bd78f8d951af5f7cb78716b1a556a1` |
| 149 | `theorem` | [top_mul_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-mul-top.md) | 899 | `result-track:8c1c643bb661d5aa27e63b56ea27585d86b78231d08911376c20108154a0037a` |
| 150 | `theorem` | [top_mul_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-mul-bot.md) | 902 | `result-track:04bc677974ef34e43234335bcacc52f7a0e57f7f22b8663bcb1640fa3ec81dd9` |
| 151 | `theorem` | [bot_mul_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-mul-top.md) | 905 | `result-track:91d26c91358f92e2abe055aab81b462b0226db61e984f50b93c99f7a17739329` |
| 152 | `theorem` | [bot_mul_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-mul-bot.md) | 908 | `result-track:c3a55264bdd2c8cf236df72036ffcba48280fc019d377bb38ddd76565533a46e` |
| 153 | `theorem` | [coe_mul_top_of_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-mul-top-of-pos.md) | 911 | `result-track:a990f6074808f4b3baecd68e43830e52dc63a1109de73f8356897c201b53ecf9` |
| 154 | `theorem` | [coe_mul_top_of_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-mul-top-of-neg.md) | 915 | `result-track:d37222b41c903614dd22b8ead74d1297f584c87772923441d132b00d587bd2c1` |
| 155 | `theorem` | [top_mul_coe_of_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-mul-coe-of-pos.md) | 919 | `result-track:8bcbd2b48d2c317630d9654307eb63934d27fbaa8376b36a96c2bb6ea5cd02a0` |
| 156 | `theorem` | [top_mul_coe_of_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-mul-coe-of-neg.md) | 923 | `result-track:a1163c5dba766d47c5b4f256287f2412b8872ab7bf6f4bfb2e532bd46c94a14e` |
| 157 | `theorem` | [mul_top_of_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/mul-top-of-pos.md) | 927 | `result-track:650534c82282ebbf031d145884285ec01f542335dc0f416b1f766436a14008b1` |
| 158 | `theorem` | [mul_top_of_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/mul-top-of-neg.md) | 933 | `result-track:ef27a2f05c630d154d600dc3641e9c5671e6865d867154cecc11f3bc76a2e62e` |
| 159 | `theorem` | [top_mul_of_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-mul-of-pos.md) | 939 | `result-track:18fe2f83b2c0fdd63bdf7e33150342f2988687b710c5397e8ad4f71ee77f4a32` |
| 160 | `theorem` | [top_mul_of_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/top-mul-of-neg.md) | 944 | `result-track:7fe760f20d40313eb2e2e7a774436b324c2915bca4a990445b09cd16477c5563` |
| 161 | `theorem` | [coe_mul_bot_of_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-mul-bot-of-pos.md) | 949 | `result-track:4d3bda33824fa02249311ecbc6dc7e2775c7cb3dd1cc53353769b8f7a76d71e3` |
| 162 | `theorem` | [coe_mul_bot_of_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-mul-bot-of-neg.md) | 953 | `result-track:109703fa645736161132c815b19e41cba9de186715e791c5ebe0c12362bcfd1a` |
| 163 | `theorem` | [bot_mul_coe_of_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-mul-coe-of-pos.md) | 957 | `result-track:e475384be6bea3bc707ec3d8730183516b0bcef378f19a0666fa8d9ab15f1b25` |
| 164 | `theorem` | [bot_mul_coe_of_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-mul-coe-of-neg.md) | 961 | `result-track:502e5c7e8b60b22da4e16cc59313a76903648fe7d330142fdd6bc4155bdb5452` |
| 165 | `theorem` | [mul_bot_of_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/mul-bot-of-pos.md) | 965 | `result-track:3b251c35fe6dcc3d33c090bc529f0d3e5e2082707c9177e7cd7fb41889cee9c6` |
| 166 | `theorem` | [mul_bot_of_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/mul-bot-of-neg.md) | 971 | `result-track:dff157cecc3caba023ab8814cd854127211ddee2db471160a3b9aa952b9873e5` |
| 167 | `theorem` | [bot_mul_of_pos](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-mul-of-pos.md) | 977 | `result-track:9f75ab1796d67aca665c8feda5ee007c66e772d6ef563c49e687ea485eac1e4d` |
| 168 | `theorem` | [bot_mul_of_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/bot-mul-of-neg.md) | 982 | `result-track:ce33403fd8801325d60de0318d6e5353157fefe1c0d0b5a48ee72193928ea0a8` |
| 169 | `theorem` | [toReal_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/toreal-mul.md) | 987 | `result-track:0b27d48eea97d113339bc2a1d9cad401a0344677cddd3d9dd00c00245228992f` |
| 170 | `theorem` | [induction₂_neg_left](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/induction-neg-left.md) | 1002 | `result-track:0953fc28fc5f10ae774e44aa0dafbf415db524cca7d66daba83bb3404fdc5daa` |
| 171 | `theorem` | [induction₂_symm_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/induction-symm-neg.md) | 1019 | `result-track:abdc1882d8dfc5e08a78211f25cd78b7def2ca7338f4afd48a6d0bb67797c1c5` |
| 172 | `theorem` | [neg_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/neg-mul.md) | 1030 | `result-track:f0a4fd02be6ec01818429de385825017966e0dd8ae4607e5eff594dc51f71170` |
| 173 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-17.md) | 1044 | `declaration-track:e151f7f2522e3c7884e183621dec04a7e75adf57c4e9e28bb930d731234b0eb7` |
| 174 | `def` | [abs](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs.md) | 1055 | `declaration-track:4fc580af8f2e583c604d8928f60399619a6db80df1448a2e0743fad36829200f` |
| 175 | `theorem` | [abs_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-top.md) | 1061 | `result-track:8f742290ad5f8109c8a2dca0294084d99995c3a52ad16ec28b14558070c8ed1e` |
| 176 | `theorem` | [abs_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-bot.md) | 1064 | `result-track:7f758269474aa66fe25e2a0f92c5a70d4a62188b4417152932858b90fca2e6dd` |
| 177 | `theorem` | [abs_def](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-def.md) | 1067 | `result-track:18e64a9572d28b84cde2a3ce2f891d18f27c5035687c1805d32dca480f126861` |
| 178 | `theorem` | [abs_coe_lt_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-coe-lt-top.md) | 1070 | `result-track:93bd654484c48d18d3c265a67c3484705443a3680a3fb67384bbd134ba4ca0e6` |
| 179 | `theorem` | [abs_eq_zero_iff](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-eq-zero-iff.md) | 1075 | `result-track:53045eafe5525e0441d369bd4cb2c619bfb3ecbd2886af7242196d0d1d94038f` |
| 180 | `theorem` | [abs_zero](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-zero.md) | 1083 | `result-track:35e8ce048e43b125f139d696b1b19f3a7f178197c733a3b5fd5505b21bf9fae0` |
| 181 | `theorem` | [coe_abs](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-abs.md) | 1087 | `result-track:e76b7f26cf40d2c98c0262feecf0897d092eebdefdc82c2c85bc82378b144edd` |
| 182 | `theorem` | [abs_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-neg.md) | 1092 | `result-track:7aec9311e09b2165c54784b6aac10d9a9684d021a06db4001ab1e4a0eabd3a92` |
| 183 | `theorem` | [abs_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-mul.md) | 1098 | `result-track:41628e4e824e074c15423bc17d0280f04357e26fbe05902aec065b707aa3ac1f` |
| 184 | `theorem` | [sign_top](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sign-top.md) | 1115 | `result-track:9fc3a89987eabd767aee022ac19677024c175d9e80c9a0fd6e390034038e693b` |
| 185 | `theorem` | [sign_bot](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sign-bot.md) | 1118 | `result-track:f04045e08ac096432e02a1ce3f50faf73d6aefe9b86a4d22df4b303b432d786e` |
| 186 | `theorem` | [sign_coe](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sign-coe.md) | 1122 | `result-track:98031b3b145ab07209dd357b0f29efb255d4cf5b47b36a68d8445c7ff1d9fe77` |
| 187 | `theorem` | [coe_coe_sign](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-coe-sign.md) | 1127 | `result-track:d0975f393c2a9cd7d953601a5a940fb3566adb030b71934f1d1aa1c8fc8b04d3` |
| 188 | `theorem` | [sign_neg](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sign-neg.md) | 1129 | `result-track:52d7c76f869acc88ff21971d595521ddef7b46ce12d8cb310c5ad1f1c31c0157` |
| 189 | `theorem` | [sign_mul](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sign-mul.md) | 1135 | `result-track:4a1a2ad01aae600f3f08444041045d6ede53c38063352db0946740859746923d` |
| 190 | `theorem` | [sign_mul_abs](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sign-mul-abs.md) | 1146 | `result-track:c77a5c28d6c600a4c4d8f6ddea416afcccc018d7a22d2053ed9e9f6ed3b22a5c` |
| 191 | `theorem` | [abs_mul_sign](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/abs-mul-sign.md) | 1152 | `result-track:3d5f1db157b4094750f6d995f6ff706189052ea766086885bc2dd2266e4ba2b4` |
| 192 | `theorem` | [sign_eq_and_abs_eq_iff_eq](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/sign-eq-and-abs-eq-iff-eq.md) | 1155 | `result-track:1e8f6c6a1bc6a1f3ccdc4b2393c92e399100327b6fb35885d622f13362294b25` |
| 193 | `theorem` | [le_iff_sign](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/le-iff-sign.md) | 1164 | `result-track:7d3198997ad700db090f4ed4170c7d0ec012fdd58fd25b0731acee531de0c28b` |
| 194 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-8.md) | 1182 | `declaration-track:5ab2fe18246014ab5a9cfb156e1dc4e21a40bef88624c87227b56178929ef32d` |
| 195 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-11.md) | 1189 | `declaration-track:70126fb3f033ae74dda37d0ebc98402030105000bad8b52ee7fed343277c0bfb` |
| 196 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance.md) | 1195 | `declaration-track:09b6526f375c3479658070ce0d1703791bea5c7aff19e3f2a81c4a25d6bd2411` |
| 197 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-10.md) | 1197 | `declaration-track:65d42c1012b981acab10845f8d1d68fba4c6ca0160537aa433921fbf983c40ed` |
| 198 | `instance` | [(anonymous)](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/instance-source-edition-15.md) | 1199 | `declaration-track:c7cc96e0adc73c0db68fc73c7b8ec516d2afbf938c528650890c0b5cfeba27aa` |
| 199 | `theorem` | [coe_pow](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-pow.md) | 1203 | `result-track:839317048e7f5abbca83efe3243715a1c5963b039f01919507157de7e4365844` |
| 200 | `theorem` | [coe_ennreal_pow](../../../../RealFunctions/ERealNamespacedEReal.lean/declarations/coe-ennreal-pow.md) | 1208 | `result-track:9e66debf997e3ce32337700c700ad5664bf24a7014f3f5b1c8fb001861281f14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4ba15d4aecc91bb2ad067833310b90eacbcc35291e2f9395d9dc8c574480d51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/EReal/Variantdb0f6a26ed1aca7de6cff7fbda0426729e878746d9120e7362394445d95126a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
