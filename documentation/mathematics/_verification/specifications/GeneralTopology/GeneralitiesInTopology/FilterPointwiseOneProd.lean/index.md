# Verification target: Filter Pointwise One Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63014fb466cb6b48331eecaedf7d9840b6b427fa",
  "lexical_observation_count": 186,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63014fb466cb6b48331eecaedf7d9840b6b427fa`.

Source path: `GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.OrderIso` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Map` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.NAry` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [instOne](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instone.md) | 78 | `declaration-track:f4c4216597c15ec2c382becd5c21caaad443021aaecdfa7d7d3800098da5645d` |
| 2 | `theorem` | [mem_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mem-one.md) | 84 | `result-track:2788de87c2087c01176619c6e83a90ee09c0b2ab508b09e1b50ca7262137242b` |
| 3 | `theorem` | [one_mem_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/one-mem-one.md) | 88 | `result-track:bed4dbcfd5af7e1a9402a41751f3078105a911ed669e158f787c8f8e9b056c54` |
| 4 | `theorem` | [pure_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-one.md) | 92 | `result-track:4064272da09cc7451da8681f0ebde0e8ee0b263e172c0275e6eb60482975f7f3` |
| 5 | `theorem` | [one_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/one-prod.md) | 96 | `result-track:f5f356d5bddc7238134fa0bca1a98ab9f1485ab9ec540e3c346d95db2e489d12` |
| 6 | `theorem` | [prod_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/prod-one.md) | 99 | `result-track:781359d7961c3b5d76c7fc43193f8331c6010579d598e6bb509c0a5710d8b486` |
| 7 | `theorem` | [principal_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/principal-one.md) | 102 | `result-track:f10250f61857e5df54d322f77054e79344988c14f1217f505ae47c47ec498af1` |
| 8 | `theorem` | [one_neBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/one-nebot.md) | 106 | `result-track:c02bb478c95a8049eae096255c85519e8f3544459f9d362776e53cc9aed12cb3` |
| 9 | `theorem` | [map_one'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-one.md) | 112 | `result-track:8a705462ba42872a10c7e2ee8f7e76b5075070a250db19c5231bd5ed2e04b7c0` |
| 10 | `theorem` | [le_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/le-one-iff.md) | 116 | `result-track:07449d01f773f612893247de826710e8261d1f2dbb408f7ac6c9f113e89e5ab9` |
| 11 | `theorem` | [NeBot.le_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-le-one-iff.md) | 120 | `result-track:8275bf2b2d16b7b2607971033595d4848b3dbcffc8514156f44c0b024cb9a47f` |
| 12 | `theorem` | [eventually_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/eventually-one.md) | 124 | `result-track:14c0dd5e6256640594530f9f45019499bf4e8e1af976c52bbdcf58db0e281319` |
| 13 | `theorem` | [tendsto_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/tendsto-one.md) | 128 | `result-track:31511ac3ac18c2a27cdfe6e60dc7a605b8594bc29ba1436f42eb6b329453796f` |
| 14 | `theorem` | [one_prod_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/one-prod-one.md) | 132 | `result-track:c7e9d5e142cad3e6a4ebb0d3e4e297bad56e22fb4636ef85f19b9d3d0cadcc4d` |
| 15 | `def` | [pureOneHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pureonehom.md) | 137 | `declaration-track:8da7a38f8b3ba5fccb5eb6fc7dab574fd4331f607c5371287551f63457fb848c` |
| 16 | `theorem` | [coe_pureOneHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/coe-pureonehom.md) | 141 | `result-track:6c57b00108f8adddd071583bcd28a373e4adb85095e8fd964a74f718d48948bc` |
| 17 | `theorem` | [pureOneHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pureonehom-apply.md) | 145 | `result-track:3c974f219dfedcd4311c1146650f9ad0fb61343e57d8f7cdb6b2429d9f9afafc` |
| 18 | `theorem` | [map_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-one-source-edition-2.md) | 151 | `result-track:f3fd4869c2dd1dbc51ca7879e5033730c5096c3aaae75b0a76a59383145dd175` |
| 19 | `instance` | [instInv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instinv.md) | 165 | `declaration-track:2383f4abd5d9afe777a43184380ff511544b204bc26aa4acf7a62370b26af38c` |
| 20 | `theorem` | [map_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-inv.md) | 169 | `result-track:55a8b26bfa2dff8bbb58d3bdbbe7717c9252b43bedd98fc4fb3d774da4227f0e` |
| 21 | `theorem` | [mem_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mem-inv.md) | 173 | `result-track:14d32c3dd4c90297e7fd89917b104be069ad18bd319305aefa7b382131a90e1b` |
| 22 | `theorem` | [inv_le_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-le-inv.md) | 177 | `result-track:a67434e26ff9b6bbd8cf10b062e1f795b71a442c100e78c7f9d4eb46a94e10c2` |
| 23 | `theorem` | [inv_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-pure.md) | 181 | `result-track:664e40097093ebbe94a2da028fd861d795b16e4c3ef40144e989b06869eb31eb` |
| 24 | `theorem` | [inv_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-eq-bot-iff.md) | 185 | `result-track:659dc0dbdd7a9c3db1c0178bed336ca675844755dc385d505f22c988375b374a` |
| 25 | `theorem` | [neBot_inv_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-inv-iff.md) | 189 | `result-track:0d0e999076f339404a760d59739d645f726ef6368299d26420f6165bba335792` |
| 26 | `theorem` | [NeBot.inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-inv.md) | 193 | `result-track:68249abece2b2a5d37fd5775ff1d871f776289e6c54d92155b68a980a3f4b783` |
| 27 | `lemma` | [inv.instNeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-instnebot.md) | 196 | `result-track:a83e1b079e645f8ae214768bcf1206bea9af2c7e19ea1927c76f74d71c997ab3` |
| 28 | `lemma` | [comap_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/comap-inv.md) | 207 | `result-track:d39e6db7acba18eb519de2f1349faed0c9e00e6d0c56e244159b7ddb1f3a0181` |
| 29 | `theorem` | [inv_mem_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-mem-inv.md) | 211 | `result-track:3c6ae8b64cf726324fb91c3ec9fb5e7e0193d8bf9852b621f541604381855ad5` |
| 30 | `def` | [instInvolutiveInv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instinvolutiveinv.md) | 215 | `declaration-track:1c41ae641bd6f142e49d3a39dfc51abec7e14d02fad777c528793004c6354b48` |
| 31 | `theorem` | [inv_le_inv_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-le-inv-iff.md) | 222 | `result-track:3281b33184c170c369b1935860bd23f4f66675bdbbe5936186d86c0a221d7c9a` |
| 32 | `theorem` | [inv_le_iff_le_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-le-iff-le-inv.md) | 226 | `result-track:a55398814906e20003f6b05b48825aa486bb9fe420a9124621dcc3e2df435a36` |
| 33 | `theorem` | [inv_le_self](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-le-self.md) | 229 | `result-track:71a140cf38c5efffbfa72ccc1708433e6e3e270e52c6045002874c88fab6f662` |
| 34 | `lemma` | [inv_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/inv-attop.md) | 235 | `result-track:63559bb00be652266dd46b81cff6294ace1184039861ec277b13bb3d5b07d234` |
| 35 | `def` | [instMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instmul.md) | 247 | `declaration-track:c9f25b14ba5df2b97bc8e73fdcf7abfcf396e895f305894a4a99e9fcac2551bf` |
| 36 | `theorem` | [map₂_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-mul.md) | 255 | `result-track:0dc356b97e55112e4808ac150ff42ff749939f8e3bd5ee4ce722a19d1809559d` |
| 37 | `theorem` | [mem_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mem-mul.md) | 259 | `result-track:c8b7a59e5e0ba9a89c9783ab5dffdfc562326b0cbea251ad539475e716eaa09c` |
| 38 | `theorem` | [mul_mem_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-mem-mul.md) | 263 | `result-track:af3aaffcedbc10cdfa86f69cf16939d2379612bab302005e1df83c3d8461eca0` |
| 39 | `theorem` | [bot_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/bot-mul.md) | 267 | `result-track:9c29b2265b14085a63fed64557a1bdc3a0ba25c363235b8998f17191185dce1b` |
| 40 | `theorem` | [mul_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-bot.md) | 271 | `result-track:7a3570ee696e1dc99a61c0680e9085f620019ab63ff1c532c1c4dc7a6283fd15` |
| 41 | `theorem` | [mul_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-eq-bot-iff.md) | 275 | `result-track:c3c594b04297e5ce3ca095614ed08e9a0701104c5b7b26c1323300ee1f627eb7` |
| 42 | `lemma` | [mul_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-nebot-iff.md) | 279 | `result-track:a3ebf2b8cab70dcb21880923d22df24b9bb5e96754c157cc4f803730426c3be3` |
| 43 | `theorem` | [NeBot.mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-mul.md) | 283 | `result-track:9ce77970a3a462304c592306c99368e6e903dbb520ecbc9903fb92da276e8059` |
| 44 | `theorem` | [NeBot.of_mul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-mul-left.md) | 287 | `result-track:edb0adcd2eaeaf5a9782b04d589051de9abbf6d8d9e0be9e1b955b742909f73e` |
| 45 | `theorem` | [NeBot.of_mul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-mul-right.md) | 291 | `result-track:dfc43ce4383ae1dab5671b141b757db26b99810f3094b230827d6469a5823cc6` |
| 46 | `lemma` | [mul.instNeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-instnebot.md) | 295 | `result-track:b703f0d7092098793a576f24dff0d1eac5870ad333cda176b172097b9106942b` |
| 47 | `theorem` | [pure_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-mul.md) | 300 | `result-track:900785c8173cd1dfaae6aacce22d8a7485ce869cd4439f33c678592a7ed7fb64` |
| 48 | `theorem` | [mul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-pure.md) | 304 | `result-track:05ab63628973d2a294bca5f8cdce1dd937ee3aa2c3be837b603f5cadc1003d8d` |
| 49 | `theorem` | [pure_mul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-mul-pure.md) | 308 | `result-track:41c59192582e6481c5370bc959d810279cf3d2d1cec4dfbda3930cb6fb66e751` |
| 50 | `theorem` | [le_mul_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/le-mul-iff.md) | 311 | `result-track:e5032a799e416360bb9395a8813825c4d24803fbf0fd210e493acbfcdd8510d5` |
| 51 | `instance` | [mulLeftMono](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mulleftmono.md) | 315 | `declaration-track:b6d10044b3c02c23b63ae34bc22dc111aa54222c23d794114084e0c0ff03d13a` |
| 52 | `instance` | [mulRightMono](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mulrightmono.md) | 319 | `declaration-track:7fe344b157ccb24740c8f318eb660047fba5997e1c5ff86bdac3c25294238a15` |
| 53 | `theorem` | [map_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-mul-source-edition-2.md) | 323 | `result-track:31990a455f1dda52183dafbe35aab58d44c5003c65619775395567b5046eb9dd` |
| 54 | `def` | [pureMulHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/puremulhom.md) | 329 | `declaration-track:5881c049eb8ef441bea6da3685cde7ea5b779ec3d4953359a6c81512ab0b51ac` |
| 55 | `theorem` | [coe_pureMulHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/coe-puremulhom.md) | 333 | `result-track:9707f0aac28f900253570ebf54c42885028c73bd997d907ac8d3ef51717be720` |
| 56 | `theorem` | [pureMulHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/puremulhom-apply.md) | 337 | `result-track:de83c1dc5d967d275383d39a28acee004c1e4aadc8649ea523d64a2cab227333` |
| 57 | `def` | [instDiv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instdiv.md) | 350 | `declaration-track:9d3c1080f1003a0a1a5f2b29476cac1691f3f6b424b1234a35b3f2977ed257e8` |
| 58 | `theorem` | [map₂_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-div-source-edition-2.md) | 358 | `result-track:1eef8a16e1e218b1d9dcc48d1ed7a98f04a85a27a1dd3e32ecea3dc0bcb2c526` |
| 59 | `theorem` | [mem_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mem-div.md) | 362 | `result-track:6b4ace25879482693be27b15ef53915cf6a7e60ef49ba422b0aa92bde9381e7f` |
| 60 | `theorem` | [div_mem_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-mem-div.md) | 366 | `result-track:6b65559179980760cd6d015d3c8021338842beade8213b0a4cd14ce45b5ae748` |
| 61 | `theorem` | [bot_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/bot-div.md) | 370 | `result-track:290b0e03bbe848633f4a44dd3054d86010115f30e61d7e09f5ca5d398f795a84` |
| 62 | `theorem` | [div_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-bot.md) | 374 | `result-track:feb244492df5d1d76427aef65d8bf615895176bec06713e9c458214b06bd9627` |
| 63 | `theorem` | [div_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-eq-bot-iff.md) | 378 | `result-track:08eec01abfe6c0b119a97bb7484259124a5116c0bfc8024ec0e40959dbb60f26` |
| 64 | `theorem` | [div_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-nebot-iff.md) | 382 | `result-track:07a75fd87c0adfb4f8dcafa4d9ad6e7db918ebc0671b8522892861348234eaff` |
| 65 | `theorem` | [NeBot.div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-div.md) | 386 | `result-track:d0715d0f7b02d2b512c30836726bdb291dfc1b0306fa5eb649debfec12b56541` |
| 66 | `theorem` | [NeBot.of_div_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-div-left.md) | 390 | `result-track:fdd31fec661658f875ee98fcbce64cb9a0b1cd1daac80274354ce89028b83d15` |
| 67 | `theorem` | [NeBot.of_div_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-div-right.md) | 394 | `result-track:3358109fbf6b904dffb017795b01cfe7dca5d0e9fbc6b274e7221dd88cb2c73f` |
| 68 | `lemma` | [div.instNeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-instnebot.md) | 398 | `result-track:f314ef4ce181eb33bd505caf15e5749248ae74cadabd17eaf02704efdfe3b578` |
| 69 | `theorem` | [pure_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-div.md) | 403 | `result-track:30b7bb1e409115c9bff0a73c51e45bb5af98f0c4eef2d37327e6846cc65c4304` |
| 70 | `theorem` | [div_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-pure.md) | 407 | `result-track:4918ec32f0880037d1a4c6545aead9baa653c87b0c370ea7c59cc4edc5761c26` |
| 71 | `theorem` | [pure_div_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-div-pure.md) | 411 | `result-track:0f57ded73c676bd53bf72daad1fbd2f8ce4e941ac133863d7c6c8fa878dcf23b` |
| 72 | `theorem` | [div_le_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-le-div.md) | 414 | `result-track:0328ae06eb4f6cdab69ac670ec8457bc5915f3ea6410a125cac5c6fb06a87741` |
| 73 | `theorem` | [div_le_div_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-le-div-left.md) | 418 | `result-track:67f70a0b95455fa82973532d442e089ef182054e8286fe7ee66f708aec98f13f` |
| 74 | `theorem` | [div_le_div_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/div-le-div-right.md) | 422 | `result-track:34e7f628949214f32b275721ed5eebb75a6e55d3810de8dd9ec4c85fccf86603` |
| 75 | `theorem` | [le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/le-div-iff.md) | 426 | `result-track:0a6dd132daa344990b87c4c868c7cc05a19a140ab254b1284ded7ee51454fe6f` |
| 76 | `instance` | [covariant_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/covariant-div.md) | 430 | `declaration-track:1f8794172127f3489ea39ec1ada0a2ac4d89c60458a16777e69f5a66404a44b1` |
| 77 | `instance` | [covariant_swap_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/covariant-swap-div.md) | 434 | `declaration-track:2f17170e7171fb68f331aeee1c97dde2b6cd5886ba9516d51a4ee4ff8d24938a` |
| 78 | `def` | [instNSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instnsmul.md) | 443 | `declaration-track:5bc8f3fe59b28eaa4e20cabeabfccd0a58c9d6d7eaadb57f16f3cd007e6fb1d1` |
| 79 | `def` | [instNPow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instnpow.md) | 449 | `declaration-track:5037de9ae87aa6a1f4a5780d2e1d397d6bed3a319de6e0d9ac1d18438cf1068e` |
| 80 | `def` | [instZSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instzsmul.md) | 454 | `declaration-track:4de614ede719205e06a63b50e49e7df0a8c81bd2d9052d6b2f99769b12c466fa` |
| 81 | `def` | [instZPow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instzpow.md) | 460 | `declaration-track:2fb86e9ad5e74c2c1aeb9b53276ca922c7898bede5caaf424a33a53230853859` |
| 82 | `def` | [semigroup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/semigroup.md) | 468 | `declaration-track:c5def02a5ca7a6b2ce499dae1fa033744e6fe39be05e6287e4d26dbbf1b3a86d` |
| 83 | `def` | [commSemigroup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/commsemigroup.md) | 474 | `declaration-track:1f4603beae165c86eaf0347b05a52d2799232840f200b071e92715c73d29963c` |
| 84 | `def` | [mulOneClass](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/muloneclass.md) | 483 | `declaration-track:e9d94bb70eac5affcf99fbc56bfa8321a45779b84326e7ab86283c8a88855dd5` |
| 85 | `def` | [mapMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mapmonoidhom.md) | 498 | `declaration-track:f865bf87566cc9f0a28152d3f04183bbf7567e6983d1c18656dcd32609dc2e42` |
| 86 | `theorem` | [comap_mul_comap_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/comap-mul-comap-le.md) | 505 | `result-track:798eea76a19b4e9c5f70547a9cfc151888a1854014dc5bdd48f16494617d94b0` |
| 87 | `theorem` | [Tendsto.mul_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/tendsto-mul-mul.md) | 511 | `result-track:05b752418a18be893a43fa63684433f84cd5a4da7085caf47c1bb32069150d66` |
| 88 | `def` | [pureMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/puremonoidhom.md) | 517 | `declaration-track:fc95ffae040f763f56ffeb01631490b6c639c8a7813deab2447c2e6c9daf55c8` |
| 89 | `theorem` | [coe_pureMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/coe-puremonoidhom.md) | 521 | `result-track:63220cda17019a37cccbf62461b37af9a073c36c28a3018f1f787df2ecd694e1` |
| 90 | `theorem` | [pureMonoidHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/puremonoidhom-apply.md) | 525 | `result-track:758d97ab8e00be47df03e1135ba87f545a6a9b2bda21324af1a2774c4d0b99ff` |
| 91 | `def` | [monoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/monoid.md) | 536 | `declaration-track:ded8e2327bd819081587dfe9e33b3be6e9cce475ccbf23fd0deeb5a42b310921` |
| 92 | `theorem` | [pow_mem_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pow-mem-pow.md) | 542 | `result-track:368e58742102d821752f97b395ca69edf34674e332b0e22687bb9e48e263f93c` |
| 93 | `theorem` | [bot_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/bot-pow.md) | 551 | `result-track:8fe6b1e3b136c5a433045605290d39773ee9ff90b43598dac751b3817c3e7176` |
| 94 | `theorem` | [mul_top_of_one_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-top-of-one-le.md) | 555 | `result-track:ac5dfecba40eadaf496e3a525dd30e30421c387899b4e12899ca8075ecdaedc4` |
| 95 | `theorem` | [top_mul_of_one_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/top-mul-of-one-le.md) | 562 | `result-track:adaf0e3e73cd253f729496a6ba58e5efd04d93ab0438cf0da066bf1174c6d04e` |
| 96 | `theorem` | [top_mul_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/top-mul-top.md) | 569 | `result-track:85b31996b7dd230c8bc3da60f46dd49d35ba6f4413299d3617d81d491351e21f` |
| 97 | `theorem` | [top_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/top-pow.md) | 573 | `result-track:ec9c66543b9d4a1ee342da0ef5e0f3ac68e28ae9d94a5334d7c3c1740d9a822b` |
| 98 | `theorem` | [_root_.IsUnit.filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/root-isunit-filter.md) | 579 | `result-track:b9aa48ac5447fbcc018780697be756eed25c808dcff2dbab3650889645f02d7f` |
| 99 | `def` | [commMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/commmonoid.md) | 586 | `declaration-track:334cc60e682b2d4da35d88de4afb1f40de20a0030061995cf4d762d668d4fef2` |
| 100 | `theorem` | [mul_eq_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-eq-one-iff.md) | 596 | `result-track:32cff97bb4ecb20d294497860076b28377c45162daabd2fa572bf42c5e72d111` |
| 101 | `def` | [divisionMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/divisionmonoid.md) | 610 | `declaration-track:1b0615c77c17aebe0d2e41cac90bd3f942cd71673dd2e2b024afa585c515c155` |
| 102 | `theorem` | [isUnit_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/isunit-iff.md) | 619 | `result-track:9ad0f041b4337428d7ed3a69b79648066cbdb97bc0e40730e65b6bf4a2f27694` |
| 103 | `def` | [divisionCommMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/divisioncommmonoid.md) | 634 | `declaration-track:fa8dea32d5b0efd16427740f4f8c080a1d93949f11e15109452c4950da253405` |
| 104 | `def` | [instDistribNeg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instdistribneg.md) | 638 | `declaration-track:28dc1257f098d2f9323e95d285ed5e49c18efc1663e6847a20d96ad48fa7eb30` |
| 105 | `theorem` | [mul_add_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mul-add-subset.md) | 656 | `result-track:613f567fdca655173f204613306a1c04c6afe90a95537ac3d64cb79e19ba34ac` |
| 106 | `theorem` | [add_mul_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/add-mul-subset.md) | 659 | `result-track:4e91e6f5698572489d8ea8d959910e81d60fa63b90f6da0cd647d81f400baf28` |
| 107 | `theorem` | [NeBot.mul_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-mul-zero-nonneg.md) | 670 | `result-track:f473dab946352cc4da61aca1625583bc105fbeb6053fc465848b88a879ffbc8a` |
| 108 | `theorem` | [NeBot.zero_mul_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-zero-mul-nonneg.md) | 675 | `result-track:d393c1a10680bb5ae341518ce6ae023e017465b242e68c20067a83ce4c8ae882` |
| 109 | `theorem` | [one_le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/one-le-div-iff.md) | 691 | `result-track:765afdc939a206cd141654ad404baf5e993cdbffed4b04b5dbb315fb99726078` |
| 110 | `theorem` | [not_one_le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/not-one-le-div-iff.md) | 699 | `result-track:668678f7ccefde20b14db339cb038f96928738b8b32b3e39efc7d2c62dc64531` |
| 111 | `theorem` | [NeBot.one_le_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-one-le-div.md) | 703 | `result-track:e3c82f18d11418d5f974742951a8a638b897a47847c17219a0db8636be82f5f2` |
| 112 | `theorem` | [isUnit_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/isunit-pure.md) | 710 | `result-track:cd8511df467e99b85d29586f010611c6e210746d4d99ffc3520a30cd635ebd60` |
| 113 | `theorem` | [isUnit_iff_singleton](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/isunit-iff-singleton.md) | 714 | `result-track:9d3cd132c3764fc2deea9ed0c3d6589f55d2df6b11437dc186f9621bec715601` |
| 114 | `theorem` | [map_inv'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-inv-source-edition-2.md) | 718 | `result-track:b6554530961fa4afe5e5d3339ef94b78c392f4c14f0fc744ad31e3a62be227df` |
| 115 | `theorem` | [Tendsto.inv_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/tendsto-inv-inv.md) | 722 | `result-track:0e1b5a8bdb18ad0ff887ee188be0ae0775f7494d9283e001bdbb4643497b34e8` |
| 116 | `theorem` | [map_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-div.md) | 726 | `result-track:0a232d4ae063be3b1a65ff69d878aa1d6dbefe367db834cceb5297fce2464298` |
| 117 | `theorem` | [Tendsto.div_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/tendsto-div-div.md) | 730 | `result-track:948ff39594936282d787a9b514c8116850a2ada525e5f544a9bdeae186fd0d43` |
| 118 | `theorem` | [NeBot.div_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-div-zero-nonneg.md) | 742 | `result-track:4775319fe983a97ba2dfd32705d548c5752069323d8659af9bffbcdc3636df44` |
| 119 | `theorem` | [NeBot.zero_div_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-zero-div-nonneg.md) | 747 | `result-track:485c378d117c621c296e1583d3cf7d3a9c732e2099ad61bbb69cb14112561eb0` |
| 120 | `def` | [instSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instsmul.md) | 765 | `declaration-track:3b33ca22797ef9565289a4ffcdad8dbe82fc612f92675be532acfe85c81c9277` |
| 121 | `theorem` | [map₂_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-smul.md) | 773 | `result-track:73cf65225b4bf2ba8b6b734d2cf341930aa37be110a8fdd1b8c27bab5c66e5ac` |
| 122 | `theorem` | [mem_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mem-smul.md) | 777 | `result-track:247967ba4b53ab4f6f179ab7df678262ad942480593888754c9475ca861484ba` |
| 123 | `theorem` | [smul_mem_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-mem-smul.md) | 781 | `result-track:7b833c9fe9bc085f961ad90de9a887fe898f2d61f8c248fc6775f04e081d89a2` |
| 124 | `theorem` | [bot_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/bot-smul.md) | 785 | `result-track:70dfc2cd6a755979818427ddc22278499fbd1f4f9a3646256b0ae73b3697f6b3` |
| 125 | `theorem` | [smul_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-bot.md) | 789 | `result-track:ee1908f33cfc806465f622aac003e181338a5f63aa2a975f17d84e1fd50abd73` |
| 126 | `theorem` | [smul_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-eq-bot-iff.md) | 793 | `result-track:66fdf248d2542904a6b343067350becb1732379dc9c79183dca3e955a7a83328` |
| 127 | `theorem` | [smul_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-nebot-iff.md) | 797 | `result-track:3f0af6e2e15ab6292c15bbda21d207bb78950ee639a7c794916a912480e71f82` |
| 128 | `theorem` | [NeBot.smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-smul.md) | 801 | `result-track:165f0eed02f2416ea1b36bc765bb3279423959da0d80d2508b4e6240662cb3b3` |
| 129 | `theorem` | [NeBot.of_smul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-smul-left.md) | 805 | `result-track:f87c216f3f0b08f6f31d067164ab5e9a5584b59c4e71be2bf999b7c28a89d1b3` |
| 130 | `theorem` | [NeBot.of_smul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-smul-right.md) | 809 | `result-track:ebb0003334655b42fb5166159e2c88df907d1d33449f1a30762e13493713cbae` |
| 131 | `lemma` | [smul.instNeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-instnebot.md) | 813 | `result-track:28c67dc601af3f4034487dca0a9dd5e7fcac010718c8d61c1a63ad46d7025a8f` |
| 132 | `theorem` | [pure_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-smul.md) | 818 | `result-track:cdc328f5711719c3c1f41c596ff1bee57fd9ccbff5156a9f911f99e9cf04108f` |
| 133 | `theorem` | [smul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-pure.md) | 822 | `result-track:70d300d5bb7c4e1d2e330a1a4d4bd8ac2a2d96f6a797833c511363d1147c8e8c` |
| 134 | `theorem` | [pure_smul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-smul-pure.md) | 826 | `result-track:885a5ea82689c528787b9b3b94ab75a341e47faa367abbb5b4bec2aeefc2e7b1` |
| 135 | `theorem` | [smul_le_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-le-smul.md) | 829 | `result-track:96227848eff90ab217f182cac5ae37b6af4db5cd22f40c7378770f30bac1050e` |
| 136 | `theorem` | [smul_le_smul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-le-smul-left.md) | 833 | `result-track:bcc8bb6e853a10abe1e62f6002065a511228d86e4afc11cc3866afe0d6e6dc02` |
| 137 | `theorem` | [smul_le_smul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-le-smul-right.md) | 837 | `result-track:535b1abbce3ad7290e45401b44fb36cb4b2eda8066d2425227265ea5dc1c579f` |
| 138 | `theorem` | [le_smul_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/le-smul-iff.md) | 841 | `result-track:910aaad16a905073452e1e65ec812287b122209fa2a5fadcf6d6601d2263a59a` |
| 139 | `instance` | [covariant_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/covariant-smul.md) | 845 | `declaration-track:5ffcd7c1e66c28cf0d492a4e6f77adec9ff4d3ce2c163d20111ecc411ac43e15` |
| 140 | `def` | [instVSub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instvsub.md) | 858 | `declaration-track:70ed519769f215248ceb24a01cbf8965a41bd8f828978e1f77fa133b26e93f0b` |
| 141 | `theorem` | [map₂_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-vsub.md) | 866 | `result-track:9e5249fe0b347cdfca9583c59d07e8e71920faf4ab9aff9a6e7b5d3f42dab243` |
| 142 | `theorem` | [mem_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mem-vsub.md) | 869 | `result-track:641418076a43077574f8e30ea2fb30324b7369e481a67ad44f76356b77af7438` |
| 143 | `theorem` | [vsub_mem_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-mem-vsub.md) | 872 | `result-track:25cf204288445a2f4c112d48eb254a05ca68b873a1919cf784b2b2ccfbb87ca9` |
| 144 | `theorem` | [bot_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/bot-vsub.md) | 876 | `result-track:1a57dba4171f3808ce2f032b2a645bb102d9b1ec7d9f2f23f4f081b7b9c3357f` |
| 145 | `theorem` | [vsub_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-bot.md) | 880 | `result-track:b9ef6866da54830eaa581e3fb2460b7d61a11cf6182735d9e29fec9e485fe895` |
| 146 | `theorem` | [vsub_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-eq-bot-iff.md) | 884 | `result-track:8ed7843d8fbca5d8b6f46b61244602415678f6e9662ecc02efb862c45b54ee54` |
| 147 | `theorem` | [vsub_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-nebot-iff.md) | 888 | `result-track:feadc8eaee539c54d063041808a91e698032a139a6a84bcd72edd8681d4b2172` |
| 148 | `theorem` | [NeBot.vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-vsub.md) | 891 | `result-track:6da82758147569d9627ea35ab51ce03120981b18b3e26db6ffb65df31c0454c5` |
| 149 | `theorem` | [NeBot.of_vsub_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-vsub-left.md) | 894 | `result-track:82654731ea926c0440c739201e45c69f60c21c1cdfeaa5d29739fc46a1db81ba` |
| 150 | `theorem` | [NeBot.of_vsub_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-vsub-right.md) | 897 | `result-track:34b973ae0cd6f0c811fb8f072e3a73f1a4dcc8c324aacc9ae056b104d7143b0f` |
| 151 | `lemma` | [vsub.instNeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-instnebot.md) | 900 | `result-track:8c62657d113b7e590a45ea5e7be395d1f20f8e61ef064e3142f9432cc5b99921` |
| 152 | `theorem` | [pure_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-vsub.md) | 905 | `result-track:4ef1a14d2dfd889eebc82bcef4b4fad3193324274f546715eb757253c0fc899f` |
| 153 | `theorem` | [vsub_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-pure.md) | 909 | `result-track:7e555be6764af5d224d6295bff80a8727da92cd3b3b3dcfe482bb4b55e4ed0a0` |
| 154 | `theorem` | [pure_vsub_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/pure-vsub-pure.md) | 912 | `result-track:d2283d62ba005312d279cd4ced87c9c83a24df6e2cc53a122a7f0787fe93c16c` |
| 155 | `theorem` | [vsub_le_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-le-vsub.md) | 914 | `result-track:c8a045d6bd8c61481039f77d564a7f8e559906fc8d3df7e4f39b85d49816f934` |
| 156 | `theorem` | [vsub_le_vsub_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-le-vsub-left.md) | 917 | `result-track:d5e13c9381f92647e9c5fb9a6b914f56ccf5b186a3e2f93ae4f9d7ac11b80848` |
| 157 | `theorem` | [vsub_le_vsub_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/vsub-le-vsub-right.md) | 920 | `result-track:2980a68a08a3907ce452904bfab8b64fae200711341e67a969b2aa2cd6b3b5b0` |
| 158 | `theorem` | [le_vsub_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/le-vsub-iff.md) | 924 | `result-track:3c997e3902011ab2e36a9acf90347ba7e5e33c58b1a81a08f09b97260109063c` |
| 159 | `def` | [instSMulFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/instsmulfilter.md) | 938 | `declaration-track:0ab59d7b0278e261f90be75817a2a6ebf5ed8fb6d234e603e3c3dca37deed791` |
| 160 | `theorem` | [map_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/map-smul-source-edition-2.md) | 944 | `result-track:c2fd984e19dfcc0cd6c3d436516f2e8ba9ff202c814c29326b2760a13f94b5ad` |
| 161 | `theorem` | [mem_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mem-smul-filter.md) | 948 | `result-track:14e897b94294c3efb26d135da55ae4b206284888487d40180f528e35fbf65eaf` |
| 162 | `theorem` | [smul_set_mem_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-set-mem-smul-filter.md) | 951 | `result-track:99d6a6b652822442504af13284acf15002d1584524313ec73ec1229c1756f146` |
| 163 | `theorem` | [smul_filter_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-filter-bot.md) | 955 | `result-track:77d2c3319a9100331d346502777de55d00672bb8fc780cb84f0a10ca585b8d53` |
| 164 | `theorem` | [smul_filter_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-filter-eq-bot-iff.md) | 959 | `result-track:62c5de48de83739a4ad882d554f009729ba548f01e359bd91bac2a53efe2bfd7` |
| 165 | `theorem` | [smul_filter_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-filter-nebot-iff.md) | 963 | `result-track:772afbaa07e8b75e5a5b411de35a76309423797b6089924b4a6c7e0da74f64ae` |
| 166 | `theorem` | [NeBot.smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-smul-filter.md) | 967 | `result-track:4594b7b499721f38a979ac4817cc587b50469dbb7916526c88aec4d90e9fb3ec` |
| 167 | `theorem` | [NeBot.of_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-of-smul-filter.md) | 970 | `result-track:e1d7d8c448abda5e1d8be6361fa21242f07bba2178c376db8b8e221ec477ad8f` |
| 168 | `lemma` | [smul_filter.instNeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-filter-instnebot.md) | 974 | `result-track:8435a7a058c5e0cc81c87232653687b6d191f81409ad75ce4f22e623451584d3` |
| 169 | `theorem` | [smul_filter_le_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smul-filter-le-smul-filter.md) | 979 | `result-track:f18488ab8f99ffa206d30e8bcf134ada2637f91f4866500b1e2166a42bd1e40a` |
| 170 | `instance` | [covariant_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/covariant-smul-filter.md) | 983 | `declaration-track:59d63281d2742418061d441d54f5f6732f0ebb480bf0e8524d2f43d34bbefe49` |
| 171 | `instance` | [smulCommClass_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smulcommclass-filter.md) | 991 | `declaration-track:181783bfe62976b0e1fc4ff70c6d7873a9eda00aec722c00c40729e9dfb30e1b` |
| 172 | `instance` | [smulCommClass_filter'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smulcommclass-filter-source-edition-3.md) | 996 | `declaration-track:a7a9379c2bae7cf142c70b7898f1294ca1c1218016a45bbe781751636b99884c` |
| 173 | `instance` | [smulCommClass_filter''](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smulcommclass-filter-source-edition-2.md) | 1001 | `declaration-track:6fe96744f0bbcadde56cea0f618a9b61f102f15008de8dc9d19b16c163fc3f19` |
| 174 | `instance` | [smulCommClass](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/smulcommclass.md) | 1007 | `declaration-track:bb8d62c57ae28f533b20ce8b14a03851b9cec397b8d5baf66006205170fedccd` |
| 175 | `instance` | [isScalarTower](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/isscalartower-source-edition-3.md) | 1012 | `declaration-track:70ce38e2ec8b5ae0d1656aaa1a0d5e34878f0e150698c99d336e9f517c643946` |
| 176 | `instance` | [isScalarTower'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/isscalartower-source-edition-2.md) | 1017 | `declaration-track:3b36d18e4af87d0b96012b65b6b6409d1bba182441c93e550175eaa146d85c02` |
| 177 | `instance` | [isScalarTower''](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/isscalartower.md) | 1024 | `declaration-track:39d208ce6271edd4228dcb32ddf85348cbcb49a40506987f80d914e4b2c17424` |
| 178 | `instance` | [isCentralScalar](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/iscentralscalar.md) | 1029 | `declaration-track:5acdd76f80c7a9b2769c5c86f060efe7eb12cd9a386ac0ea1e633c45d2bdc15d` |
| 179 | `def` | [mulAction](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mulaction.md) | 1037 | `declaration-track:2c87de11f8842543259e21ccfd9a7c1f46fdc90cb6ae91dc9fe197e964b8d23b` |
| 180 | `def` | [mulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/mulactionfilter.md) | 1045 | `declaration-track:c56e6db26f2f415b40b8b3751a9fa0ce2a9e53a964a7e530913ee0978a2212a3` |
| 181 | `def` | [distribMulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/distribmulactionfilter.md) | 1054 | `declaration-track:0f6cf3277e2e0973c0bf426031b5f70dbe18b2334aeab2b4a51912c5cca5139b` |
| 182 | `def` | [mulDistribMulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/muldistribmulactionfilter.md) | 1060 | `declaration-track:edb7b6b063a45ebb8739f45232ac782278ecd5748e1afe82f2bfe042c9017ec5` |
| 183 | `theorem` | [NeBot.smul_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-smul-zero-nonneg.md) | 1077 | `result-track:81c36ba409fd22eeae20e5f13e140e4e8662ec07125acc1ba2814f37a46506dd` |
| 184 | `theorem` | [NeBot.zero_smul_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/nebot-zero-smul-nonneg.md) | 1082 | `result-track:7df58a748b0e346e610e99f164c00e00300a3a705be7a6ff1a04cc099ee655cb` |
| 185 | `theorem` | [zero_smul_filter_nonpos](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/zero-smul-filter-nonpos.md) | 1087 | `result-track:2eedd44c31726f6f549ac721b55fec0cd8a5f27c9c92427f91b500b5b739fbae` |
| 186 | `theorem` | [zero_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwiseOneProd.lean/declarations/zero-smul-filter.md) | 1093 | `result-track:3830b68b8747c07eee53397776c89af23e91bce121bb76c7a05a4d41e879ebaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22e2b6d11081749618aa7064cebb3acb72b5139410b833fc55dd1aac941ebb80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
