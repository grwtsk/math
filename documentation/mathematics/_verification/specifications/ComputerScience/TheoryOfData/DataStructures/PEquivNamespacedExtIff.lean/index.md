# Verification target: PEquiv Namespaced Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5626d197306255aea4887c963514dc9a80922f13",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantfaa0492c383f54b285c7916246ab8664c5540196f1adeb045a0f48a819dc4acb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5626d197306255aea4887c963514dc9a80922f13`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantfaa0492c383f54b285c7916246ab8664c5540196f1adeb045a0f48a819dc4acb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantfaa0492c383f54b285c7916246ab8664c5540196f1adeb045a0f48a819dc4acb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/pequiv.md) | 56 | `declaration-track:879b8f4d8e9940df5312c54ab835c41449169068c8700740d41fd1125386bbed` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/instance.md) | 76 | `declaration-track:7f9c4bb0b37c032f00fc9773086076b5d3582822bb99de473f82b9b2358af41f` |
| 3 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/coe-mk.md) | 83 | `result-track:9f26ee79f17d58c131562a346aa4987a12531e42a8e8f8fd0fbb6fe6e168a7f5` |
| 4 | `theorem` | [coe_mk_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/coe-mk-apply.md) | 86 | `result-track:75f9d3bd8d262bdbc558d1c51f93a77d907dc4b9de6a5783586d58d5f9223864` |
| 5 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/ext.md) | 91 | `result-track:3c8366fbb2a92a6d66756427f312c17e4192942b1df2e08919306642fd085d11` |
| 6 | `theorem` | [ext_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/ext-iff.md) | 95 | `result-track:115bfe21093727110bf7ecc4f6a0ffb50248fac2cd6e21891930326c321bd51f` |
| 7 | `def` | [refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/refl.md) | 101 | `declaration-track:b8c2da7d7bf742de55920a72dd2fb0f8d796e15c55c332c009d3bc61b1b5b7ec` |
| 8 | `def` | [symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/symm.md) | 109 | `declaration-track:a969733fba4421a50265f7e96972a0c4bd80cc57f44f7673a29f049b3cd678e0` |
| 9 | `theorem` | [mem_iff_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/mem-iff-mem.md) | 115 | `result-track:306c958e09cc61a7fa1aaa1fd62011122c34e996c3fe80096c5831954eb9841d` |
| 10 | `theorem` | [eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/eq-some-iff.md) | 119 | `result-track:d17e80275a6b512ca6632c4a3fd31abab54fe1e5ac2cc3843e8c7cde9b7a487b` |
| 11 | `def` | [trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans.md) | 125 | `declaration-track:a45b80b9f02d2c2e6d21bec0adb8cd55d536f620372201e0e3bed22945cd375d` |
| 12 | `theorem` | [refl_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/refl-apply.md) | 133 | `result-track:b456358cfb716db14693a024d5ac3719d35507ba91f5f0a33296568706e6e58e` |
| 13 | `theorem` | [symm_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/symm-refl.md) | 138 | `result-track:69d2354c0c22ea3218f8dbc1e26c6d2100c50ec20110185d22f263882e5c63b9` |
| 14 | `theorem` | [symm_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/symm-symm.md) | 143 | `result-track:2ebe9a5d5298f18046947d9952ab4f2d8d396576f7bec995c1bb702e682ad992` |
| 15 | `theorem` | [symm_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/symm-injective.md) | 146 | `result-track:e50a1495637021a5ca9ca6ca73dc19291c17c4ce6470609fb5058311caf6762d` |
| 16 | `theorem` | [trans_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans-assoc.md) | 150 | `result-track:235cb4416f472744635ecc3e9e5dfd54e53b3d9ce8101e440a49c21a223a0390` |
| 17 | `theorem` | [mem_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/mem-trans.md) | 155 | `result-track:38eca26e3573216f69bb64dc77b79d928bcca9375cb6b49b896beebf27709cf9` |
| 18 | `theorem` | [trans_eq_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans-eq-some.md) | 160 | `result-track:24fc5c4608d34166c0c5638affd82a39c2cf8b97b94cdb936a9a59b86fc3f005` |
| 19 | `theorem` | [trans_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans-eq-none.md) | 165 | `result-track:2569d6f3ebc7cd21865913d7d6e0461f17d1262ef510b6ea956fb7a2a432fb8d` |
| 20 | `theorem` | [refl_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/refl-trans.md) | 173 | `result-track:2b2064394f7bfec4d35380c374c9de39aed0c678213a9970d60b3f6636201f86` |
| 21 | `theorem` | [trans_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans-refl.md) | 178 | `result-track:3e4033d3da379cc20cd85603f9aa3b09db184045210c9b737ce61d941cb2c570` |
| 22 | `theorem` | [inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/inj.md) | 182 | `result-track:85a1ac3f3f0688148030c70e138808d3dc747e8eefde1a7b7b7e6bfd90c86003` |
| 23 | `theorem` | [injective_of_forall_ne_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/injective-of-forall-ne-issome.md) | 187 | `result-track:ec3638588cb8ba76753248b26fa32ce67d79787adfd00c0d4f2772ecf6e2d78c` |
| 24 | `theorem` | [injective_of_forall_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/injective-of-forall-issome.md) | 201 | `result-track:39bbe611fed602ca9f6f5fdcb63080599b59a538e1755cdf77a6794b03b86be5` |
| 25 | `def` | [ofSet](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/ofset.md) | 212 | `declaration-track:15d46a2f349c5e8534d7e69f94a4ac5e7de12264f022c1b38f96c5012ea9486e` |
| 26 | `theorem` | [mem_ofSet_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/mem-ofset-self-iff.md) | 225 | `result-track:4b6b26096ae7893a2fc1db8d913faa8c5cccf115f6c0b4ad54285b48affd4888` |
| 27 | `theorem` | [mem_ofSet_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/mem-ofset-iff.md) | 229 | `result-track:5afbdb677df02b0d2f1910b762d88dc47d8a5f917571ff0e3bd19c8543894671` |
| 28 | `theorem` | [ofSet_eq_some_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/ofset-eq-some-iff.md) | 242 | `result-track:bb068b69df5d8f5c93e0e32f5ed542bd88102c3b9248c35b39f96f90dca4dae0` |
| 29 | `theorem` | [ofSet_eq_some_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/ofset-eq-some-self-iff.md) | 247 | `result-track:905acd6b32b40c56a34082d4ca47fa1ae914c3436ba620aa65d9df978a33cba1` |
| 30 | `theorem` | [ofSet_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/ofset-symm.md) | 253 | `result-track:978184f0b7fbf26c54914c85c431af16735d1911ba8794ba44dcae88f02dcfaf` |
| 31 | `theorem` | [ofSet_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/ofset-univ.md) | 258 | `result-track:f91dd00043266908b4fb8be241c4003169a37a1882b1e544e3d7b92009ca852a` |
| 32 | `theorem` | [ofSet_eq_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/ofset-eq-refl.md) | 263 | `result-track:03510ce8f3d4d618e989b30581b84d2945d45f46e815a716c3ea381b0a703b75` |
| 33 | `theorem` | [symm_trans_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/symm-trans-rev.md) | 274 | `result-track:f01acb7e04ca3ffde2c41c293d916173cbe312733372bd854c3f602c59785d3e` |
| 34 | `theorem` | [self_trans_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/self-trans-symm.md) | 278 | `result-track:00f001231f7ead89eaddfb4c2fb7ad4abb29e47ab2401dec0a8ff134f35de9e7` |
| 35 | `theorem` | [symm_trans_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/symm-trans-self.md) | 289 | `result-track:4b9274125494919070777efcf8720c623831aeda75a457b3a21fb6f597ce11f5` |
| 36 | `theorem` | [trans_symm_eq_iff_forall_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans-symm-eq-iff-forall-issome.md) | 293 | `result-track:2a46d378a17bf6bc1a32aceca6e401fe7278d1799ad361bef7dece2e21625d9a` |
| 37 | `instance` | [instBotPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/instbotpequiv.md) | 298 | `declaration-track:2fb7a83d1c5938c114c0031e2f9f3999917b880366ece77c49bf5b3e92377978` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/instance-source-edition-3.md) | 303 | `declaration-track:c276fbc2c015cabfa9eed1c2ed0d7513282e35e7d9928233fa240bf752b7e19e` |
| 39 | `theorem` | [bot_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/bot-apply.md) | 307 | `result-track:1dac31a117a133eea63abfc956da66b7edb3764e5d63126dd46011f3c4688014` |
| 40 | `theorem` | [symm_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/symm-bot.md) | 312 | `result-track:1109dc044b0c7ff4d72453244b0c68a28f940955bce4de1156e2b06ac7fb1374` |
| 41 | `theorem` | [trans_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans-bot.md) | 317 | `result-track:c73c19c1384e3782c7a5c04c459009f0e76b1c33195ad5a4c3254e62bb3af4a5` |
| 42 | `theorem` | [bot_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/bot-trans.md) | 322 | `result-track:67ec00ada9d6922b15f00cffb06f2f9acd9f1ffe66da7245132d441df2d1689a` |
| 43 | `theorem` | [isSome_symm_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/issome-symm-get.md) | 326 | `result-track:e6d6b92216e8f806d5f9791739786c4d1a69ccb39537b60261dfb5ca6dd0957f` |
| 44 | `def` | [single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/single.md) | 336 | `declaration-track:0cc9095d5c502582fb5e5580a1ba91a668c622bb76bbb9e663538c0a7021b557` |
| 45 | `theorem` | [mem_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/mem-single.md) | 351 | `result-track:ff0330b0224776ee842004746a710e69f30329ac5902f9d3a7d359841a64b945` |
| 46 | `theorem` | [mem_single_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/mem-single-iff.md) | 355 | `result-track:deab29d3da75c89eda43a7573fef273e939b0f6c12801fb836009c32227d079c` |
| 47 | `theorem` | [symm_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/symm-single.md) | 360 | `result-track:0536b039bf6cd35275ab38940974e915d1bf51992bae605156eaa0ad31afff46` |
| 48 | `theorem` | [single_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/single-apply.md) | 365 | `result-track:e59de8c71672adde6abaed0617ecead474a069368ea2d7c939a2939848ac12d5` |
| 49 | `theorem` | [single_apply_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/single-apply-of-ne.md) | 369 | `result-track:9ffb742cb773723f05d33a2dda2f418ada2494ef411daa826cdc919e819c0249` |
| 50 | `theorem` | [single_trans_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/single-trans-of-mem.md) | 373 | `result-track:4898496a68f8d5ae9cb51f8cf50ecc33fb4878f5dff7897fecfe68312e64ffef` |
| 51 | `theorem` | [trans_single_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans-single-of-mem.md) | 380 | `result-track:577a33f3f6a98175046b0995088ff5178d34068771adf09fe3507aa73c7a15e6` |
| 52 | `theorem` | [single_trans_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/single-trans-single.md) | 386 | `result-track:ffa7b74fb820d5133f9543a5b101dc9d6d83463b00dcdd8c4c2db76f11d49f25` |
| 53 | `theorem` | [single_subsingleton_eq_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/single-subsingleton-eq-refl.md) | 392 | `result-track:eec34c3e487e90e36613b85665b2339c8329be0a169824dca78ed6ee3607b93b` |
| 54 | `theorem` | [trans_single_of_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/trans-single-of-eq-none.md) | 398 | `result-track:066f8fc41d9751caab35cdbad8e979c52af81beb80c25f2128ccd5ae282b4fb0` |
| 55 | `theorem` | [single_trans_of_eq_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/single-trans-of-eq-none.md) | 408 | `result-track:3279a0572cba6c77cd7cc4ffd1a1c04d90774f0993629542950cf09dfe93a880` |
| 56 | `theorem` | [single_trans_single_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/single-trans-single-of-ne.md) | 413 | `result-track:b5fe765ec0a4b2a893779986e7d00cfd9c00b9e7116f8f8ab5a278f15e8365ab` |
| 57 | `instance` | [instPartialOrderPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/instpartialorderpequiv.md) | 422 | `declaration-track:92af1bba7c1baf2f82a26dca2e3c7fc0cc06f6b6a8e427d3362f613b7d9ab83b` |
| 58 | `theorem` | [le_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/le-def.md) | 434 | `result-track:0013bb6191fb08608b779d5e73a1e12aeeea267a4d93d4eed70becde09946ede` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/instance-source-edition-4.md) | 438 | `declaration-track:eace8f41f367129f1604ae8b9e0f14e090e299f38fb1f3354ec1829fe0ce2910` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/instance-source-edition-2.md) | 441 | `declaration-track:86936d583d3d2656758db4dadc2c14be156950eff4e5942a93e83e662669964e` |
| 61 | `def` | [toPEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/topequiv.md) | 479 | `declaration-track:d62f8ea632c1564e09cbcf7abc38c120d010de1277f27929e493dd0dd903afc6` |
| 62 | `theorem` | [toPEquiv_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/topequiv-refl.md) | 486 | `result-track:812ee1f328370a3f130399543548ea0aa6877c133f2a4ceee3e2e576c24191a3` |
| 63 | `theorem` | [toPEquiv_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/topequiv-trans.md) | 490 | `result-track:66ab4c94f90a8df8af1d8eff594a1b3d60cdae23ee77d00a67c355f00206d8c0` |
| 64 | `theorem` | [toPEquiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/topequiv-symm.md) | 495 | `result-track:650de0dde612a1d4b5d181a4c2cd2145c21d962b7aef3c9cfc68b181a3dcdce4` |
| 65 | `theorem` | [toPEquiv_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PEquivNamespacedExtIff.lean/declarations/topequiv-apply.md) | 499 | `result-track:eee2bd278858a90b4c6ff41536f6457d5da08e1b5442eefb207834565e9e183c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbda4a90a7f6198be4d20e9b906731b65e662195d087c180e39a6567ad62f2f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantfaa0492c383f54b285c7916246ab8664c5540196f1adeb045a0f48a819dc4acb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PEquiv/Variantfaa0492c383f54b285c7916246ab8664c5540196f1adeb045a0f48a819dc4acb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
