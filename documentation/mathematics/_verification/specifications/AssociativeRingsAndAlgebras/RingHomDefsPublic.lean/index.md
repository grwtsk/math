# Verification target: Ring Hom Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b38c45fadeb936f1af53bea9faa78b58878a7efa",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant6be3688d1e9972f8b170ad9fd8696806a68d98eef8d3fcf342a6ba3b9bd68adc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b38c45fadeb936f1af53bea9faa78b58878a7efa`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant6be3688d1e9972f8b170ad9fd8696806a68d98eef8d3fcf342a6ba3b9bd68adc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant6be3688d1e9972f8b170ad9fd8696806a68d98eef8d3fcf342a6ba3b9bd68adc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/nonunitalringhom.md) | 61 | `declaration-track:415e102e401fb156a21e48ac2ab59e6769ca9fd0fc75ef78c79cd119a1c39b2d` |
| 2 | `class` | [NonUnitalRingHomClass](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/nonunitalringhomclass.md) | 79 | `declaration-track:b21ced75954c3966cda9e9a39d5aaff626da9aaea3602a277cec01974ff2a07b` |
| 3 | `def` | [NonUnitalRingHomClass.toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/nonunitalringhomclass-tononunitalringhom.md) | 89 | `declaration-track:120ca04a7f3af50067bc5771658bdf83a023ea9571e3ac063e447cad6005033b` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance-source-edition-4.md) | 94 | `declaration-track:4d53ac72f703aad67d494b827d3e0137e902a25cb643e396b46426386ca2cd7a` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance-source-edition-5.md) | 106 | `declaration-track:638a926e267dc4d4c0fd9abe8c40ffc9749d28bb0b8931fd8f5b90cd5e3045fa` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance-source-edition-9.md) | 115 | `declaration-track:f5e09f830ddb5e9550c1efd77a517bed54fbec72418e70c3def710c43748713c` |
| 7 | `theorem` | [coe_toMulHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-tomulhom.md) | 123 | `result-track:ac075ab5f16d3493cf59593499e69a21cc1b3b4cccc248be2df43f047808aa80` |
| 8 | `theorem` | [coe_mulHom_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-mulhom-mk.md) | 127 | `result-track:03745ab721da14b4bb7b419bcbe0bc4d45656470a30206df633428c8f495f667` |
| 9 | `theorem` | [coe_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-toaddmonoidhom.md) | 131 | `result-track:c228ef79ebb1ec5606d40c6eebaf627910cd13e90a24ea623609e11edc72ad17` |
| 10 | `theorem` | [coe_addMonoidHom_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-addmonoidhom-mk.md) | 134 | `result-track:000082ad2a35acfe10bac44b29cdc2bdd7b4149b4021a57d9d9f043f6c328be5` |
| 11 | `def` | [copy](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/copy.md) | 140 | `declaration-track:1c532fcbf4328dcc21a1102fb9d40daf55ea4de67b3a3c273563f25831efd879` |
| 12 | `theorem` | [coe_copy](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-copy-source-edition-2.md) | 144 | `result-track:2eecb8c32565978a0d56bf8db6fb0a29d1e054fb2ac4829e318fc9603cd90a0e` |
| 13 | `theorem` | [copy_eq](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/copy-eq.md) | 147 | `result-track:8441009fdeabde6d45a1f43eec9b384f54bbc5b37fcebbd40a3a39475099b0e7` |
| 14 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/ext.md) | 157 | `result-track:1c040e89c9fa94cb8902c3a0a1709255b289e4ff3bb8ef5e892d3bbd89ccaad9` |
| 15 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/mk-coe.md) | 161 | `result-track:043593a7ed050d5771fa1eec3443009c1c3fb36df9e380af0ec8adf8f47d8abe` |
| 16 | `theorem` | [coe_addMonoidHom_injective](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-addmonoidhom-injective-source-edition-2.md) | 164 | `result-track:78ff92b0e2639853e745a71db956b186dc7a8fd33bb967b363e6c31df88bdd48` |
| 17 | `theorem` | [coe_mulHom_injective](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-mulhom-injective.md) | 167 | `result-track:2e7eef6f363df01beadc2a3d541d013fde92b03bd38b3c04b1a3f6117b634c92` |
| 18 | `def` | [id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/id.md) | 176 | `declaration-track:3f38d5dcb191c64261239d156d7b885ed1943a632855abd187b02198a0fd6cbe` |
| 19 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance-source-edition-6.md) | 182 | `declaration-track:6756218f1ca079132c909106eebde1079807174b3054247dcc66580a44cb3dd6` |
| 20 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance-source-edition-2.md) | 186 | `declaration-track:2231039b98e687974df33b1c9569636c61452035d36511e861fb5cdd8e7da2da` |
| 21 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-zero.md) | 190 | `result-track:bb95c075d84822ea89f78001be75c4cc254983763a2c84927b7f7256a1941abd` |
| 22 | `theorem` | [zero_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/zero-apply.md) | 194 | `result-track:cd7ec5bd2bd35669fa3738c324989750c0dd59b8c913dd34a3d531216e8667d4` |
| 23 | `theorem` | [id_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/id-apply.md) | 198 | `result-track:37b8efc45b20b6e726cde04ccf32b72b30ecd4d6e8cbd9a16f5534abf1136494` |
| 24 | `theorem` | [coe_addMonoidHom_id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-addmonoidhom-id.md) | 202 | `result-track:08fe84d246fd338ff94f4c434fcb68080690a5247cccefd248eeac0bcc2f58e1` |
| 25 | `theorem` | [coe_mulHom_id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-mulhom-id.md) | 206 | `result-track:f32535e2d95ce96141afa6174facf99f76e0fa0787390e19b120ed910946ab57` |
| 26 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp-source-edition-2.md) | 213 | `declaration-track:d447f8e86a3464e6c2f72b19ae68d84d5025938ea0f7c52cf517130f62047335` |
| 27 | `theorem` | [comp_assoc](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp-assoc-source-edition-2.md) | 217 | `result-track:a0b04122ab11fbc74685139016537707113cd91904bca576bd8354123feb449d` |
| 28 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-comp.md) | 222 | `result-track:b9bfead8f6ab82683ba1c5a907da5414d31166fd159831426826b982e7581dd0` |
| 29 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp-apply.md) | 226 | `result-track:52bace30d5f7ad7c7a0157794c6a1947cd335dff5d4719eace9398b63bdbf093` |
| 30 | `theorem` | [coe_comp_addMonoidHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-comp-addmonoidhom.md) | 230 | `result-track:ad0a97588432043d7da2464316456f4fc81a8ea2cd0bb14dd766195f80d68c00` |
| 31 | `theorem` | [coe_comp_mulHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-comp-mulhom.md) | 235 | `result-track:58b9faf7548dd9ac3ed4c42a9fbd614801a695aeb1119e64fb1a6ab2c1db0369` |
| 32 | `theorem` | [comp_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp-zero.md) | 240 | `result-track:8ffeba01e790ab1542f577fdb6a640c021c761ebd2013370ea382d7acfe95b44` |
| 33 | `theorem` | [zero_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/zero-comp.md) | 245 | `result-track:bdefaf272ef6e5207d16a6ec904510021a1a131e9ce160c6d7a1ef558b0e55f2` |
| 34 | `theorem` | [comp_id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp-id-source-edition-2.md) | 250 | `result-track:d9c1b911f0bb4612e13d636b39ef8f83868c0388d316707daf7efa28f483854b` |
| 35 | `theorem` | [id_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/id-comp-source-edition-2.md) | 254 | `result-track:bbf252c41ca706ad6fe0efb33ff7b091fb2011a78dc3738a0786c142c983ad13` |
| 36 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance-source-edition-8.md) | 257 | `declaration-track:e214457b0f5b01d2642f2f39834f54ed925f1faf821c1362ca302961954ec9df` |
| 37 | `theorem` | [one_def](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/one-def.md) | 266 | `result-track:0f49aac3ff8eda73a8d60f99492c75638d8b924067585b66fa8f0f3f983bfafa` |
| 38 | `theorem` | [coe_one](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-one.md) | 270 | `result-track:9b131042e86ac9631569653ad4feac30bec868a724239e55e6147256ea9b7174` |
| 39 | `theorem` | [mul_def](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/mul-def.md) | 273 | `result-track:11b5a6fb6d35d2df6203a862280b47f07623a339a23aeab3d8ec97707fb85177` |
| 40 | `theorem` | [coe_mul](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-mul.md) | 277 | `result-track:3a98d54bd1a06c4da796cda93cae84209a1233437d691112ceac468523e31137` |
| 41 | `theorem` | [cancel_right](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/cancel-right.md) | 281 | `result-track:28e02766c8c737ab3c3b51279b6d38fa1a473521a3dca9f12a37dcf816fae543` |
| 42 | `theorem` | [cancel_left](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/cancel-left-source-edition-2.md) | 286 | `result-track:2ce8950296fe93f51ca2e41deabda19947010e3f7979be351727925d092fb76f` |
| 43 | `structure` | [RingHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/ringhom.md) | 297 | `declaration-track:83af7b7d1a62adad90ba79a426fab0afcd0dbe2615369bd9d5b026c2b69dcf9c` |
| 44 | `class` | [RingHomClass](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/ringhomclass.md) | 327 | `declaration-track:f9f66b4cc3df4377ad6cd695e815f8fcdc89034c30191465e428cec4241df479` |
| 45 | `def` | [RingHomClass.toRingHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/ringhomclass-toringhom.md) | 339 | `declaration-track:72a341d48b57c631afd5dcc6a4e6c315a4ed0b642bc8da07501c7f33e0d64ae2` |
| 46 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance-source-edition-3.md) | 343 | `declaration-track:3ebddbd5eef0fd97aad2e7545a07a3ab4b5014c47cb4d08d3bc30c69ed3c9c6a` |
| 47 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance-source-edition-7.md) | 346 | `declaration-track:b52b4ca8c1a9f1fa5873135558d0109207fb3dc92fa5d0f6ec93cc11c95eeb2a` |
| 48 | `instance` | [instFunLike](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instfunlike.md) | 363 | `declaration-track:7f67e86f732ce6ef7c5de0ee9de7f8e3692d3bc301460e191374681e660c3d4c` |
| 49 | `instance` | [instRingHomClass](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instringhomclass.md) | 372 | `declaration-track:038053b3efdcbddec5077ebcea46b2f36d1790616216a1aeb9a7677cb7a62ab1` |
| 50 | `theorem` | [toFun_eq_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/tofun-eq-coe.md) | 380 | `result-track:43332d21d11553289c5b2ac72ef0fe18904a9728b7f985aa81014dc353c3bba5` |
| 51 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-mk.md) | 384 | `result-track:42ea5a49a57898de4777f0410839b859595ca70074c16fe9cd00619f9cd90de4` |
| 52 | `theorem` | [coe_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-coe.md) | 388 | `result-track:48d937fd663fa8519c1796a10b6b60d5dd5349f9056e36624b291e26307c4114` |
| 53 | `instance` | [coeToMonoidHom](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coetomonoidhom.md) | 394 | `declaration-track:8d1e4dea35e93d97ae3ef67102880afb8c03cbd5af55f58c396c60c9a33e3e2d` |
| 54 | `theorem` | [toMonoidHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/tomonoidhom-eq-coe.md) | 398 | `result-track:5567eee42cafc9bb57583f6639ce50305629ab5946ce99019084d78c95373fb0` |
| 55 | `theorem` | [toMonoidWithZeroHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/tomonoidwithzerohom-eq-coe.md) | 401 | `result-track:1aeaa8495faff5567deebbf8977dce172fc4488df3e1408a0ca9a175538541ca` |
| 56 | `theorem` | [coe_monoidHom_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-monoidhom-mk.md) | 405 | `result-track:bfc4e5781db0f11cc360ec3f8b2e38db5f3a9f791a593d2950f002c925f3c16a` |
| 57 | `theorem` | [toAddMonoidHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/toaddmonoidhom-eq-coe.md) | 409 | `result-track:6cea84f8b3b22eaea38707f7f9ca8b7e74ccdcca6de2bac8f77e3c58e42217e3` |
| 58 | `theorem` | [coe_addMonoidHom_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-addmonoidhom-mk-source-edition-2.md) | 413 | `result-track:a7c07d1fd673fca7bac56866bb9f8d92f2aa7f7a67fbe7ccd7b5b3fd6568b1ed` |
| 59 | `def` | [copy](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/copy-source-edition-2.md) | 419 | `declaration-track:d9917a33ffff66caf72cd2b28e79a72df60912d00f1e81a40f9572b6cfb418f0` |
| 60 | `theorem` | [coe_copy](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-copy.md) | 423 | `result-track:287b5ffdb49a2b659fbf529e93c1c3695c7000cb817682aee03d8f12286a7d04` |
| 61 | `theorem` | [copy_eq](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/copy-eq-source-edition-2.md) | 426 | `result-track:e08540e73291ae69f8b5d5ca55f43f4212e1c7bd951cd45fd7597ba0fa8b9dca` |
| 62 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/congr-fun.md) | 435 | `result-track:590acbc22769962e5447895df922dd73ecfeb84ec2e58f9bd5996dba8e8ae163` |
| 63 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/congr-arg.md) | 438 | `result-track:ae51b129b7b0bdcc0d4836a41d832421481478ddc4210c608b7ea732ba6180bb` |
| 64 | `theorem` | [coe_inj](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-inj.md) | 441 | `result-track:b95d02ed2efe6afcde0fe74bc984007c1d930eb35d728c4d8b0f07134d87bdb1` |
| 65 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/ext-source-edition-2.md) | 445 | `result-track:f8c95ba225fa0ba4e9a53f04eedfb63d021bb92c9bf24a3d0df06a178183714f` |
| 66 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/mk-coe-source-edition-2.md) | 449 | `result-track:0d1162778a4b3f6b51eab043273b3609b48513756617587f5185b31558979830` |
| 67 | `theorem` | [coe_addMonoidHom_injective](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-addmonoidhom-injective.md) | 452 | `result-track:4ccb6218184feb728dda35cc6b7bf30e41ca95ebc42858ecf9e36a96a0d921d4` |
| 68 | `theorem` | [coe_monoidHom_injective](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-monoidhom-injective.md) | 455 | `result-track:ab7cf7fd1131e3c6ca60de58990ebed559e0c53ce3cc02e7ca424760e05cfe08` |
| 69 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/map-zero.md) | 459 | `result-track:1dc4c947cdde30608c0c950fa4beea56b6e2b3c1b14e623c9b77c037fa0af64e` |
| 70 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/map-one.md) | 463 | `result-track:4adc01ef24ad6b3c4bf4f6aca3fe8c723e4ae74238be2cb400237d0414bb5528` |
| 71 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/map-add.md) | 467 | `result-track:df1413969c020c00420a88011a984b0c24428b206e6b38f32aca237e2419f679` |
| 72 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/map-mul.md) | 471 | `result-track:e48cd0c4e0a2688094f8066fa201567c601aadfc509d83663e7fedc155fffa70` |
| 73 | `theorem` | [codomain_trivial_iff_map_one_eq_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/codomain-trivial-iff-map-one-eq-zero.md) | 475 | `result-track:b277a948c3ae1fed9746884de86f64572206226db29d6d4d81fa5290c7e8c727` |
| 74 | `theorem` | [codomain_trivial_iff_range_trivial](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/codomain-trivial-iff-range-trivial.md) | 478 | `result-track:8ac04971c377cd5d931183649ed1ad7d605a746f73013b2eea646a198a1b0a7b` |
| 75 | `theorem` | [map_one_ne_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/map-one-ne-zero.md) | 483 | `result-track:e29bafaea23b1d92872dc7f9a18577d0dde95dc34aa27075849af55d0b2cfeec` |
| 76 | `theorem` | [domain_nontrivial](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/domain-nontrivial.md) | 488 | `result-track:0c5c2df26075cfeefbee19a782e6c6a38bc807adea95e1885c52661c5ec51705` |
| 77 | `theorem` | [codomain_trivial](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/codomain-trivial.md) | 491 | `result-track:866c3a53b5de7a80fffae7a176618afe78df2eae4fd91efde905c8aeb0e39abf` |
| 78 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/map-neg.md) | 498 | `result-track:907d0f7a2b94f8f3648a821fc9c788b7423ecf330178d94de3aa68c59b33cf7f` |
| 79 | `theorem` | [map_sub](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/map-sub.md) | 502 | `result-track:9decf5eb9d1aa1adecbd11e21efb806cc05846113e9b3a06f0fd7396b0d7c56a` |
| 80 | `def` | [mk'](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/mk.md) | 507 | `declaration-track:460221a45596947112193a146d9781de59cd6bbd72037cef79ff6ebe293b8c6e` |
| 81 | `def` | [id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/id-source-edition-2.md) | 515 | `declaration-track:49211dcf533796b8e702c61847e480284a071a330b86b7ad49d774c0103e9b22` |
| 82 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instance.md) | 522 | `declaration-track:1e5904680bee94f3757569a31fc304bd4b1495d2fdfa5838f1830ebf76bfbe1b` |
| 83 | `theorem` | [coe_id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-id.md) | 526 | `result-track:bc37fc342d5173c3821255dd946ef5478a89ee689c015a79c7963d8769e308af` |
| 84 | `theorem` | [id_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/id-apply-source-edition-2.md) | 529 | `result-track:61f9dfe7aa50b2c3c4cd71fa727b27344e5174fdf80f4a9df0ff10f53e8b5bda` |
| 85 | `theorem` | [coe_addMonoidHom_id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-addmonoidhom-id-source-edition-2.md) | 533 | `result-track:2fa627997e0ff7c417aaacbee1f3d531494eea14f8cb8f890717417e541d62ea` |
| 86 | `theorem` | [coe_monoidHom_id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-monoidhom-id.md) | 537 | `result-track:7acd47479fe9f1771925cbcf89a1c6600896837f76a30dd4d0b2efb7a66a9e64` |
| 87 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp.md) | 544 | `declaration-track:0b1299539cdf46eedd41d34c4eb1cc656da4b3c3c3dc81c951816eba8345a455` |
| 88 | `theorem` | [comp_assoc](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp-assoc.md) | 548 | `result-track:5a8162ff3bbb74c9aebe72a33c07de18d7ee332e1f9e6678efeda6220bc48b3c` |
| 89 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-comp-source-edition-2.md) | 553 | `result-track:e27206fdc033827b584af85b36469b3f2f6c668f2ec3af599c583f9ec8ac2989` |
| 90 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp-apply-source-edition-2.md) | 556 | `result-track:a8adac9b06dd10340c712304595a6d0febf16e00e32b070bfacd7f851de4b67f` |
| 91 | `theorem` | [comp_id](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/comp-id.md) | 561 | `result-track:bc8c785889211929b37ff933dae67d5bf63d912184706ce94e3a3015b5854b9d` |
| 92 | `theorem` | [id_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/id-comp.md) | 565 | `result-track:274cdbae896a99478eeee00ad8db1c1dd80ff38e2af6329b1311a3957148ec56` |
| 93 | `instance` | [instOne](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instone.md) | 568 | `declaration-track:d47f24e406b55adae165b9d223f45e9129ceb77328fe8dfa1ea8698af0781c98` |
| 94 | `instance` | [instMul](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instmul.md) | 569 | `declaration-track:ab7e64ba45ee0686450bfd811a1ad4d1ecd758a8f60d522c5f3f03a120384107` |
| 95 | `lemma` | [one_def](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/one-def-source-edition-2.md) | 571 | `result-track:eacca90a9a466e19053d6a5684ed5eaf73e0c3744972519b9ad190ee5b0a13f1` |
| 96 | `lemma` | [mul_def](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/mul-def-source-edition-2.md) | 573 | `result-track:e15ae96c643b4c36a86d31dbdf8bfccc0cfbdaea87d9f256d44ce07d32068778` |
| 97 | `lemma` | [coe_one](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-one-source-edition-2.md) | 575 | `result-track:cdb688553a2534ad8b1a40631cea773f24ebf8937c6543cc6c8e15504364c37a` |
| 98 | `lemma` | [coe_mul](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-mul-source-edition-2.md) | 577 | `result-track:b31396d1d51b5f3c571080bf1b04667d4d15a48a24d7d60d307a8002e781aa00` |
| 99 | `instance` | [instMonoid](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/instmonoid.md) | 579 | `declaration-track:22ef2560fcfbdd49f2692fc939a2591104a36c9f8312bf3a552bd8dfd8d50b64` |
| 100 | `lemma` | [coe_pow](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-pow.md) | 586 | `result-track:e73d3816552d8d62eeb7991d1b11a96481570585e7288606b70821c9a1ef0da0` |
| 101 | `theorem` | [cancel_right](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/cancel-right-source-edition-2.md) | 589 | `result-track:77224563207f065418d09db66226ea440bf612dfd7c7bea9ced8493dea5d6b19` |
| 102 | `theorem` | [cancel_left](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/cancel-left.md) | 594 | `result-track:260798e0b2069c044f6931f14167b19adf7d4fa9e291a02f5f36c1fa95e00837` |
| 103 | `lemma` | [RingHom.map_pow](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/ringhom-map-pow.md) | 603 | `result-track:0d069b5013d4d324d8a88e42a943598035605b6b7867ab627138cca2d016f43e` |
| 104 | `def` | [mkRingHomOfMulSelfOfTwoNeZero](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/mkringhomofmulselfoftwonezero.md) | 614 | `declaration-track:8ca8a3b964f4211f7b2d531cacf905ffee9f7b71583c735dfa25eb1b1d4d77c0` |
| 105 | `theorem` | [coe_fn_mkRingHomOfMulSelfOfTwoNeZero](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-fn-mkringhomofmulselfoftwonezero.md) | 629 | `result-track:91762159cd42b7940513512de2eca97e3299c14b0c7a0692e06ad4b787f54a23` |
| 106 | `theorem` | [coe_addMonoidHom_mkRingHomOfMulSelfOfTwoNeZero](../../../../AssociativeRingsAndAlgebras/RingHomDefsPublic.lean/declarations/coe-addmonoidhom-mkringhomofmulselfoftwonezero.md) | 634 | `result-track:8d9101ee3589e862cd939ed954ff169f7c7fc58dec75c25984370aad42bf6934` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea69d329a6e84e63c2a03999d7ad7265b04d5fc1abafb273a834188cb0f48012 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant6be3688d1e9972f8b170ad9fd8696806a68d98eef8d3fcf342a6ba3b9bd68adc.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant6be3688d1e9972f8b170ad9fd8696806a68d98eef8d3fcf342a6ba3b9bd68adc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
