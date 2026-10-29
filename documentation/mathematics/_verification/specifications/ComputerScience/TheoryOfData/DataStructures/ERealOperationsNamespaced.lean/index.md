# Verification target: EReal Operations Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de8f6d4ac43a66f5e5b4e0aaf583da465b90c2aa",
  "lexical_observation_count": 152,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant6c3bbf7860a04abd3c5cad7e5b5d301d2fe350746ceff23a6901d79adce00c35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de8f6d4ac43a66f5e5b4e0aaf583da465b90c2aa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant6c3bbf7860a04abd3c5cad7e5b5d301d2fe350746ceff23a6901d79adce00c35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant6c3bbf7860a04abd3c5cad7e5b5d301d2fe350746ceff23a6901d79adce00c35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.EReal.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-bot.md) | 50 | `result-track:3c9d6f374f1ff12f4531d1eac42fa8ef0370f249e709d5e1e3eb98718410bde3` |
| 2 | `theorem` | [bot_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-add.md) | 54 | `result-track:2b53bc7b220aca9732be8f93068063046dd78a0520ed1556e09207d4ea49991a` |
| 3 | `theorem` | [add_eq_bot_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-eq-bot-iff.md) | 58 | `result-track:5cde9cee20dfc5e31c2eb7d7369be8e5b7a0692ae01f8907e13d636682370847` |
| 4 | `lemma` | [add_ne_bot_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-ne-bot-iff.md) | 61 | `result-track:9a878272fd0f8c48455b2ab44b2295ca1430b557746ffa6ef8e251f70aa8ee7f` |
| 5 | `theorem` | [bot_lt_add_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-lt-add-iff.md) | 64 | `result-track:986640083604cadf259158a7bc5707aa62d7ea2c45e9b987d3876f027f8ce9cf` |
| 6 | `theorem` | [top_add_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-add-top.md) | 68 | `result-track:97f07e47d83ffe3521b5b848cad5ceb1f2034100b69acb5126659d501a61e299` |
| 7 | `theorem` | [top_add_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-add-coe.md) | 72 | `result-track:49cb7900f0bad2916a513e095cf51855b14f704b4f453b97e02f742525dca4f6` |
| 8 | `theorem` | [top_add_of_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-add-of-ne-bot.md) | 77 | `result-track:bb9c84e167e8931337482cd19f89df94d7d159655bdb7ac0fee92e914d517961` |
| 9 | `theorem` | [top_add_iff_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-add-iff-ne-bot.md) | 85 | `result-track:edcee9a7996ed8aff710d9e5f36feae7bcaf9a88326188c30c33ce12098a66da` |
| 10 | `theorem` | [add_top_of_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-top-of-ne-bot.md) | 97 | `result-track:876c2996adb3430e237b5f5324613648b190bb14a4da88fe3830bcc6465ab4c0` |
| 11 | `theorem` | [add_top_iff_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-top-iff-ne-bot.md) | 102 | `result-track:8ed2b2ac81c5e4df856ede234f5b1c30b12fde6fde09a37e0d1bb264d1f20531` |
| 12 | `theorem` | [add_pos_of_nonneg_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-pos-of-nonneg-of-pos.md) | 104 | `result-track:4407b29a5b52c264f76ad281f9c037d7370344a5c8e065a3ad123872746aa2c3` |
| 13 | `theorem` | [add_pos_of_pos_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-pos-of-pos-of-nonneg.md) | 110 | `result-track:0de9f9b4469f023e6d640a84f88b009bd07c739fe9a55c9276ba53d47843166a` |
| 14 | `theorem` | [add_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-pos.md) | 115 | `result-track:dd967cd2fb8970ffc7fd03e4e2c145a41fca57cc20512e87d87ba24b421dcbf0` |
| 15 | `theorem` | [coe_add_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-add-top.md) | 119 | `result-track:f0e9f9ff0b64bd905bd29c4cfe4e28ff362351da43e8372a9123510dc6cb3ba5` |
| 16 | `theorem` | [toReal_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toreal-add.md) | 122 | `result-track:d6413d73706e79fd0460b709f28c3fdacdf19f6dbc6df9739f78c837d6ed4248` |
| 17 | `lemma` | [toENNReal_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toennreal-add.md) | 128 | `result-track:3d1cb4a693d3a87fa7ec1034e059f3f0def7065ad6a015b26b12843bb43e73bd` |
| 18 | `lemma` | [toENNReal_add_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toennreal-add-le.md) | 135 | `result-track:76d1f9f5e58f1737a8c42ea1d0f9055047fd6968d02c94147229d40c89806972` |
| 19 | `theorem` | [addLECancellable_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/addlecancellable-coe.md) | 139 | `result-track:3fdff47c02e70c3a6329cc9877b9f91ed8b2e7b287ab57158a4b6b5699fb0521` |
| 20 | `theorem` | [add_lt_add_right_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-lt-add-right-coe.md) | 148 | `result-track:5f9d8a73e0af4b1e0f33649ca9e89e963d633500e5f3df31b7cb542db28ec7d3` |
| 21 | `theorem` | [add_lt_add_left_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-lt-add-left-coe.md) | 151 | `result-track:958f212ad09f2b78c305970d0f572803e145ab83e910f2f8d72c677a22afa400` |
| 22 | `theorem` | [add_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-lt-add.md) | 154 | `result-track:be2687735a0d0b036c29431a9799a42dd9cf82ea77c69af03e697cecbf1cd736` |
| 23 | `theorem` | [add_lt_add_of_lt_of_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-lt-add-of-lt-of-le-source-edition-2.md) | 161 | `result-track:e2c05a4220880244df68d228ffbbf3fb408a4622f082afff530a58f6db91ff09` |
| 24 | `theorem` | [add_lt_add_of_lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-lt-add-of-lt-of-le.md) | 173 | `result-track:38e76b5858ac3a10cf1d083fa1e9e13949e0b5e6a19b1e75befb43f1141342de` |
| 25 | `theorem` | [add_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-lt-top.md) | 177 | `result-track:6e5962fa7e3d56196d457544f2dbbf518561dcb31a493e77f623a63aa19e0b8a` |
| 26 | `lemma` | [add_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-ne-top.md) | 180 | `result-track:f6454d11c0d6d3a1cf16c9022c14f4d3430896a10cb0ca4691c77c7381adb180` |
| 27 | `lemma` | [add_ne_top_iff_ne_top₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-ne-top-iff-ne-top.md) | 183 | `result-track:87cc448fa099784483c75293f9b42466d3a496c090988c56aa36ab5edb128daa` |
| 28 | `lemma` | [add_ne_top_iff_ne_top_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-ne-top-iff-ne-top-left.md) | 191 | `result-track:a5d90598b98abac8eba7ab8b8b014c5a3c9306c0a86a6cbe37d782e0149efbbf` |
| 29 | `lemma` | [add_ne_top_iff_ne_top_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-ne-top-iff-ne-top-right.md) | 195 | `result-track:f8fd18c839837989e799d068931416ecf5b05e2b43598330ccee9ed65aafbc38` |
| 30 | `lemma` | [add_ne_top_iff_of_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-ne-top-iff-of-ne-bot.md) | 198 | `result-track:b96377861126b14d9bfc581e4c662b1db2bc8b4fb551ffa325d9c2d04df4235a` |
| 31 | `lemma` | [add_ne_top_iff_of_ne_bot_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-ne-top-iff-of-ne-bot-of-ne-top.md) | 204 | `result-track:09880c1ebb9d61dfa8246fe4bcb37007bd8d341041735b28586056d501c5613a` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/instance.md) | 210 | `declaration-track:2eebfadd0fab241309bd9121ac9b3f8e2c4f491ee8092b35b95187a6cc6a4ec9` |
| 33 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg.md) | 220 | `declaration-track:009b6025554c70504bfd456439a8e23302ac6554a548f1b664ded5ec122974ef` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/instance-source-edition-4.md) | 225 | `declaration-track:ae6b7dfd2e28b1f169e577c190dbe74d3ec2932835b9b15d6312c0adf71599d0` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/instance-source-edition-6.md) | 227 | `declaration-track:e9d8c746a6253a679d94559f249c9adfaaf72442368d31d3906d65a7f739a2be` |
| 36 | `theorem` | [neg_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-top.md) | 232 | `result-track:3ffe7ca12cc85c5c9ffe6600fd5d39bedc226b2b6a892de68e23556e9f8d7fe4` |
| 37 | `theorem` | [neg_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-bot.md) | 236 | `result-track:81f6520adf3cb2a27d42cf278a59b904363d04d377498239bbfa1b1c9cf0f291` |
| 38 | `theorem` | [coe_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-neg.md) | 239 | `result-track:151fc3458337abab1eb59ec3191801372367e3037e710073199ad1a0e43ffc30` |
| 39 | `theorem` | [coe_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-sub.md) | 241 | `result-track:5cc8ccc48bd418b8e7073c134595254bb987f46c2d0567e889c5deb6fe7f234a` |
| 40 | `theorem` | [coe_zsmul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-zsmul.md) | 244 | `result-track:fc4ebd81feec7c6c74545f9ed7cceaac8338d784c48844cc97f0943c615cd8f6` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/instance-source-edition-5.md) | 247 | `declaration-track:d6280a19b7accd3b934c62c3b9c8c39638f34440017de7c663c66b24d6d1eede` |
| 42 | `theorem` | [toReal_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toreal-neg.md) | 255 | `result-track:8d90178704c972ea1fb83a2bc4ca739998385638f8d8880983fc31462266519f` |
| 43 | `theorem` | [neg_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-eq-top-iff.md) | 261 | `result-track:45b14bec3326fcfbd49271f5f618f0605816aca85f9cc49ab7be514c7207c11b` |
| 44 | `theorem` | [neg_eq_bot_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-eq-bot-iff.md) | 265 | `result-track:b27162f09454719901cc772be4ed33d144ed93cbf93cffc44cd70b0f0c2476ab` |
| 45 | `theorem` | [neg_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-eq-zero-iff.md) | 269 | `result-track:72e879a8b8c3d966dbd791e0656455ae3d380b22d989ff07eee0bb25a750396b` |
| 46 | `theorem` | [neg_strictAnti](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-strictanti.md) | 272 | `result-track:7856911a27deef1c75ac68a21bde3e31db06f0032de422552f7822f106925ea6` |
| 47 | `theorem` | [neg_le_neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-le-neg-iff.md) | 277 | `result-track:fe7499197b2b4c93ad794f38b5be5a169712bc741250c862c32b650b9b976934` |
| 48 | `theorem` | [neg_lt_neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-lt-neg-iff.md) | 279 | `result-track:5bb4d4fedcb54f5421ad19178c16b31d26b8445737983eb2aa372f3ba406dac9` |
| 49 | `theorem` | [neg_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-le.md) | 282 | `result-track:3ff88f1e2710c4918456429e708dc1800212f6a477d5f2fd99e3854a813013df` |
| 50 | `theorem` | [neg_le_of_neg_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-le-of-neg-le.md) | 286 | `result-track:ab89ec28b5de0c8b48228c24396509a060488849444b0cbec395eea9e1511530` |
| 51 | `theorem` | [le_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/le-neg.md) | 289 | `result-track:31546b1fc4949f9a46ae58dbc4994100f7e17b0443f3f3539942c36f25a7b6ea` |
| 52 | `theorem` | [le_neg_of_le_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/le-neg-of-le-neg.md) | 293 | `result-track:3af48755fa52bd5534ec93e8b5218abc1b247614baf2b66d0c4055229141f259` |
| 53 | `theorem` | [neg_lt_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-lt-comm.md) | 296 | `result-track:4c73c35d195eda4e834547da6cd4df7a8c215d76ca057c92b7255ea71203a62c` |
| 54 | `theorem` | [neg_lt_of_neg_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-lt-of-neg-lt.md) | 301 | `result-track:9c6706806e7bb530e0563a93a7c97e5ae7d11219577e5d2287299f775b2b5163` |
| 55 | `theorem` | [lt_neg_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/lt-neg-comm.md) | 304 | `result-track:f4c6a26ef7466423aa758bb7de6af14ca9b470ee96bbd83490c6387359004fb9` |
| 56 | `theorem` | [neg_lt_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-lt-zero.md) | 307 | `result-track:302438c29e3640fe5641983b79ec36fbcecd79f83704560c4e41177f724b7cb1` |
| 57 | `theorem` | [neg_le_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-le-zero.md) | 308 | `result-track:af2e805a12fbedaaaa4caa4dc7449f0bf09902cd060414a76e3a9d9545376d9e` |
| 58 | `theorem` | [neg_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-pos.md) | 309 | `result-track:873eac435d5ca9f45620dc47195fcfc6105247fbd6f32eb807e931106daa1512` |
| 59 | `theorem` | [neg_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-nonneg.md) | 310 | `result-track:2a3c459953e73ef2beb2d5d8c023cab8181d302ece4a53c6d413d079c075035c` |
| 60 | `theorem` | [lt_neg_of_lt_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/lt-neg-of-lt-neg.md) | 313 | `result-track:8e52bb7ddbde0b25d46fb3e4176e6212451bfe3b5200cc830360744f3723c37d` |
| 61 | `def` | [negOrderIso](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/negorderiso.md) | 316 | `declaration-track:bb046a5cb1e20337547b39876cfbab0443b19d081a0a613f99916e6a5871a807` |
| 62 | `lemma` | [neg_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-add.md) | 322 | `result-track:9ae350fa50c8b014df668c0cad863ad239d1faf9953c9739a0f8652cd04044a9` |
| 63 | `lemma` | [neg_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-sub.md) | 327 | `result-track:5d904c8abee621808562e24658aabd8516a664fe6c229c5cdfe88b64500e0844` |
| 64 | `def` | [recENNReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/recennreal.md) | 334 | `declaration-track:ee0fde484cee4fdc6cb70c957e21281c36fcf4333055d8d7c21a2eca7809fa2b` |
| 65 | `theorem` | [recENNReal_coe_ennreal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/recennreal-coe-ennreal.md) | 343 | `result-track:9c233a23a52a70682b0fca8867bf49e2ab5ce48e9416c568d4eb17ea7fd095b0` |
| 66 | `theorem` | [bot_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-sub.md) | 365 | `result-track:3c8f61d906a13b881e735caa8eba9083b2b757a02d26ec775faea70aaf733f55` |
| 67 | `theorem` | [sub_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-top.md) | 369 | `result-track:0a367b5b2aae423639ba37b4538d732f08e05d67fc43953b2257dddad9dd5ac1` |
| 68 | `theorem` | [top_sub_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-sub-bot.md) | 373 | `result-track:d0791c627f046e7f65dc4b1b89d4913f7ef8d5e9d7e0149d7894e3097ae41f06` |
| 69 | `theorem` | [top_sub_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-sub-coe.md) | 377 | `result-track:6297f8cd9f6a48785a98f56c7634a705d499f27be91609e74bab7e27bfa188fd` |
| 70 | `theorem` | [coe_sub_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-sub-bot.md) | 381 | `result-track:8e5f4461f729d5e3e02d4177a1c56cf2bf5b43ca108b9dd58d7272df8ebb35be` |
| 71 | `lemma` | [sub_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-bot.md) | 385 | `result-track:78388c63ac93cfd4af478ece91a6d66e94af9a1f892b278a4811d3b57c7c9a20` |
| 72 | `lemma` | [top_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-sub.md) | 389 | `result-track:31684b5ef15eaa0ad94cdf2c69b0554094d7e10cd74b7d07059299e8e6d023ca` |
| 73 | `lemma` | [sub_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-self.md) | 393 | `result-track:93b6adf0fcfca29b3b28b193e407673ef08f768435241273e051ee8ae9921479` |
| 74 | `lemma` | [sub_self_le_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-self-le-zero.md) | 396 | `result-track:e1e5163cbabc9ac8475d81749a598f00542e59e5a6e1b36876c6f3403775516e` |
| 75 | `lemma` | [sub_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-nonneg.md) | 399 | `result-track:e9e72e53131d96c1d53275274e4a82bd366e26e4169b1f71d35c594e8563e6f4` |
| 76 | `lemma` | [sub_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-nonpos.md) | 403 | `result-track:152356e18b8eae9975bcfcaf4a42a9a741d32814097603981bc938ae1fe9f11f` |
| 77 | `lemma` | [sub_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-pos.md) | 406 | `result-track:06f0a2a3554ec7240d28290c2576d3b9a0cffffdcd3697297b627ba7cb3768ab` |
| 78 | `lemma` | [sub_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-neg.md) | 409 | `result-track:7247eb7ef3e72817657311f7817240b4b9f815c85ed395186ed54728883b879e` |
| 79 | `theorem` | [sub_le_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-le-sub.md) | 413 | `result-track:ec0b3d93023cd84c1f6a21df02c08d0063d94ff3ec25963b40c6200c8fb0f350` |
| 80 | `theorem` | [sub_lt_sub_of_lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-lt-sub-of-lt-of-le.md) | 416 | `result-track:4f7a2436271bacbe5622ef04b0cd740f9e29f5a82122b155b7b20dd19f13a032` |
| 81 | `theorem` | [coe_real_ereal_eq_coe_toNNReal_sub_coe_toNNReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-real-ereal-eq-coe-tonnreal-sub-coe-tonnreal.md) | 420 | `result-track:db95086928c7d7f8d944a685c98a6b338a511292380c1c2ba2e6c78bfa712f30` |
| 82 | `theorem` | [toReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toreal-sub.md) | 431 | `result-track:c831e88c315c2a0024c37f21e47bbb4c9a3f3240309f2e09ada39dc576b005d6` |
| 83 | `lemma` | [toENNReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toennreal-sub.md) | 437 | `result-track:755296839dfe1aae451c7dad19760c114101795262d60426455103065f0f4664` |
| 84 | `lemma` | [add_sub_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-sub-cancel-right.md) | 448 | `result-track:8881d9b08ab211416b7e224a9863e42785a889dde32e3149bda496fd36bdc1a7` |
| 85 | `lemma` | [add_sub_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-sub-cancel-left.md) | 452 | `result-track:ad79a51afb5cb478ac0b10c08f9460e21954d262e4826893c6de5df4aac0a094` |
| 86 | `lemma` | [sub_add_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-add-cancel.md) | 455 | `result-track:4c213cc9f61ef5ed5aa9a52915848f87a56ee3044edac528d89fcd71a976da3d` |
| 87 | `lemma` | [sub_add_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-add-cancel-right.md) | 458 | `result-track:b438716c5a0b826db43cb3602bd0a6f6d5eb2a64cf34ab4d4d7ca142882de880` |
| 88 | `lemma` | [sub_add_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-add-cancel-left.md) | 462 | `result-track:9ed9fd3adcec9c0770e5596f54f83c07f381c897f21babd32a2d23cd26c8b1f8` |
| 89 | `lemma` | [le_sub_iff_add_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/le-sub-iff-add-le.md) | 465 | `result-track:9eda79e49f6203b21df326ae901f2bade20675b877444abade0e4fa33008728d` |
| 90 | `lemma` | [sub_le_iff_le_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-le-iff-le-add.md) | 479 | `result-track:89453b632e3fa47c9568d1a698be064165f294181a23b1851fe3ac3965a532d4` |
| 91 | `theorem` | [lt_sub_iff_add_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/lt-sub-iff-add-lt.md) | 484 | `result-track:d9e9782dde7ac2a0e792c2b7e0344406b1df02b988faee643f1990da3cd5f6d6` |
| 92 | `theorem` | [sub_le_of_le_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-le-of-le-add-source-edition-2.md) | 488 | `result-track:db942bebf045826656aed0380d9e89448babac361953bb50bd990941d515a0e5` |
| 93 | `theorem` | [sub_le_of_le_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-le-of-le-add.md) | 495 | `result-track:c8ff7ff223d43fd53c136708f59cb8b7be4fa1550764d37efd348cc2eb8767e0` |
| 94 | `lemma` | [add_le_of_le_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-le-of-le-sub.md) | 498 | `result-track:0570fcd81c37458fe2395995a4c3801ca2981e3d45c46c59d066aab0ccaa575d` |
| 95 | `lemma` | [sub_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-lt-iff.md) | 502 | `result-track:ccfd99ecad0a44b61a827e5cec58edf65c6bef1bff829fee82247bca42f88226` |
| 96 | `lemma` | [add_lt_of_lt_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-lt-of-lt-sub.md) | 506 | `result-track:00f413220c8646ec79f4b5e481d44155e5d26406e552abd127d57ab709cdfb1d` |
| 97 | `lemma` | [sub_lt_of_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-lt-of-lt-add-source-edition-2.md) | 510 | `result-track:c990407ed644481c1a8cb8609d1456efbb7a6487e35c04ef9e743a316c04c579` |
| 98 | `lemma` | [sub_lt_of_lt_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/sub-lt-of-lt-add.md) | 514 | `result-track:13b98103f55c328da38822f64b923f544a0d087fda71890496e0e3c6a7af1902` |
| 99 | `lemma` | [le_of_forall_lt_iff_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/le-of-forall-lt-iff-le.md) | 519 | `result-track:a1f45be600d26a5d14e87f0d2596e8fa0b0056148e57a3930cc69570956ed214` |
| 100 | `lemma` | [ge_of_forall_gt_iff_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/ge-of-forall-gt-iff-ge.md) | 524 | `result-track:56d811659e4140613c9b0095a0f092c46f5c94e208ca704c0bb0743c2c702c9a` |
| 101 | `lemma` | [exists_lt_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/exists-lt-add-left.md) | 529 | `result-track:644b111afefa2e982e2d9c6c745a1c438bc8e7451213d5c94b22d8d5d5061f83` |
| 102 | `lemma` | [exists_lt_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/exists-lt-add-right.md) | 535 | `result-track:75da04b011345157eaa852ea58f39e3adb29d00578c9a1a7f8f2ceb112b171f8` |
| 103 | `lemma` | [add_le_of_forall_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/add-le-of-forall-lt.md) | 538 | `result-track:0d818efa628bb2e29f59a5f0b95e56ade30c09c958889fcce9382b307c052bd7` |
| 104 | `lemma` | [le_add_of_forall_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/le-add-of-forall-gt.md) | 544 | `result-track:25dd6c219c30797bb5c48bac328e875e50a08c8e551079af6f13f6cd206fc608` |
| 105 | `lemma` | [EReal Operations Namespaced](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-addbot-varia.md) | 555 | `result-track:72737bf08424f450b56da13ef17c5d62306b2f24aa32f4dc9a8522e1a3989a5e` |
| 106 | `lemma` | [top_mul_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-mul-top.md) | 565 | `result-track:a8873001450a538158230cce179681756b4a00622e2ccce15db1fc616151b9b0` |
| 107 | `lemma` | [top_mul_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-mul-bot.md) | 567 | `result-track:8e3d52223289c74dbe64d5147589df65fe6d7c087f9a4d403091882e7d38fffc` |
| 108 | `lemma` | [bot_mul_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-mul-top.md) | 569 | `result-track:7a7f884c9116b46f3d78b3bb70a95beff630105f26dc1549918635bae3288c87` |
| 109 | `lemma` | [bot_mul_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-mul-bot.md) | 571 | `result-track:34a44382e488c5ba6a369d1edc692f35ee0b873cc4d2a5e233579ec1d2b43591` |
| 110 | `lemma` | [coe_mul_top_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-mul-top-of-pos.md) | 573 | `result-track:5bd38bf7a81b061b426a002f7e25b8959dbc584b76d5acfb9b3092b06484c498` |
| 111 | `lemma` | [coe_mul_top_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-mul-top-of-neg.md) | 576 | `result-track:52e22f25569c429bf459ba3487f4283c0274228ed1e9c0ce6fc57a1eb4afa210` |
| 112 | `lemma` | [top_mul_coe_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-mul-coe-of-pos.md) | 579 | `result-track:14e8fa23c4d4c64ffc8a62b8b5c4ee381f3a01121dcd74c398ab3c77c5c5f9eb` |
| 113 | `lemma` | [top_mul_coe_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-mul-coe-of-neg.md) | 582 | `result-track:5f17643b84ec99dc754b0e5f2d5d336ac9404954249d07d3cfa6774668175f41` |
| 114 | `lemma` | [mul_top_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-top-of-pos.md) | 585 | `result-track:c0c27cbe5cfd979c9b93ae19fa49e9e403f3cd34256b2f01c11db38cd0f23419` |
| 115 | `lemma` | [mul_top_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-top-of-neg.md) | 590 | `result-track:d130460c346cab5f61acf0c05335d3b96ac6f96126760d6a6c3327c016a5c8ad` |
| 116 | `lemma` | [top_mul_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-mul-of-pos.md) | 595 | `result-track:d405b52d501f21ae9ac4fdc9de96e8fae7651ff32104f6a14c1b28cf9261ea09` |
| 117 | `lemma` | [top_mul_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-mul-of-neg.md) | 599 | `result-track:05ed1d4786e68f21ad00677db238578cd3a6abdbc857a083a2def5dbbecccb08` |
| 118 | `lemma` | [top_mul_coe_ennreal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/top-mul-coe-ennreal.md) | 603 | `result-track:f1c5cd51720aa3634da3835a6b6ae0f6076f3a447f109a635f2869f3bbfde232` |
| 119 | `lemma` | [coe_ennreal_mul_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-ennreal-mul-top.md) | 606 | `result-track:dbc6e943cf41f41bc3adf8c531c4b51c8ad6e4a15a82c77b3518de8f64076b3f` |
| 120 | `lemma` | [coe_mul_bot_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-mul-bot-of-pos.md) | 609 | `result-track:2df5d96a00bbc7dad4bb0798ab8fc9d9c9f87fa5326278e2c093b37b23161e1c` |
| 121 | `lemma` | [coe_mul_bot_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/coe-mul-bot-of-neg.md) | 612 | `result-track:c874e64647db3aa2bb93c776103bccb8cdb1d308f8bf1f71e77fa0dbd832de61` |
| 122 | `lemma` | [bot_mul_coe_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-mul-coe-of-pos.md) | 615 | `result-track:244f37b164ca17a35cb9752f163daaed8b0aa3ce615e4a562d2a47b05586a066` |
| 123 | `lemma` | [bot_mul_coe_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-mul-coe-of-neg.md) | 618 | `result-track:c144fe78ca0bfe15b7d48a4c51fe2aa4febb424d9389c1dd41583464a19c42c9` |
| 124 | `lemma` | [mul_bot_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-bot-of-pos.md) | 621 | `result-track:387231b3eea380cb09977b9a37a6cfdee7ffbbc126c17c48ed77f1c2e1f48c1d` |
| 125 | `lemma` | [mul_bot_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-bot-of-neg.md) | 626 | `result-track:35000a6c521464df82e2495736bf50ba32079b14d7bb7e3d085689c97b7be5c7` |
| 126 | `lemma` | [bot_mul_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-mul-of-pos.md) | 631 | `result-track:f635aa3cbd978798c8702c986da1beecbc381f35faf439105165a4982b4b4d30` |
| 127 | `lemma` | [bot_mul_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/bot-mul-of-neg.md) | 635 | `result-track:da6d1c47415f23d1129b9380bc9e9d8f20bf44e0b501fde993fae324868fb29a` |
| 128 | `lemma` | [toReal_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toreal-mul.md) | 639 | `result-track:dde82941c99cba057e64ceb5cf0294bd0389586ab421203f9756b25c3eabe973` |
| 129 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/instance-source-edition-3.md) | 649 | `declaration-track:946c7a38aafd9699d06d0748b76a18d1a8221372aef058975fe52800f15c25a3` |
| 130 | `lemma` | [mul_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-pos-iff.md) | 663 | `result-track:a9c24f2c5fde260e06de1480d89c6396225e4fe66c68ef28158bdbe195824bc8` |
| 131 | `lemma` | [mul_nonneg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-nonneg-iff.md) | 677 | `result-track:7095a1f0013d0c47dbaa67bffee3eb2065d84dfe996a4704098145f61fb0addf` |
| 132 | `lemma` | [mul_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-nonneg.md) | 682 | `result-track:d9be0063ed02f9abed872c972ea247225fb1365dd81d5c039eeab57369787a9d` |
| 133 | `lemma` | [mul_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-pos.md) | 686 | `result-track:af69102c5966a72957c53f972d8dfb6f80bb648c6a8c4afe53dc67dc304eadfc` |
| 134 | `lemma` | [induction₂_neg_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/induction-neg-left.md) | 693 | `result-track:095a27f1bdcf5af2f13ba60954c2ff7998d69776298c3ef36421c3aa296f8af5` |
| 135 | `lemma` | [induction₂_symm_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/induction-symm-neg.md) | 710 | `result-track:7afcba8fa710340be29197b7a124f46af767b0b64cc282fbd84c1f3c7c033d94` |
| 136 | `lemma` | [neg_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/neg-mul.md) | 722 | `result-track:377620283ca1aa3de4b731bfca27c7069267bf042df43a5f59fda92b2f236b57` |
| 137 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/instance-source-edition-2.md) | 735 | `declaration-track:47757d313a737f0888638162ef53c302770387c34159126512c7216ddf5e89cd` |
| 138 | `lemma` | [mul_neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-neg-iff.md) | 741 | `result-track:dd5a08b65e126b3abc2d1598b6827a6ca894a2416566ca8781be56b35315dda6` |
| 139 | `lemma` | [mul_nonpos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-nonpos-iff.md) | 745 | `result-track:8cf6d83e356e1c36fa7f7fa3be06662f88658452072eaf2ca8092f36ad4006db` |
| 140 | `lemma` | [mul_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-eq-top.md) | 749 | `result-track:9b61ea4f7ffd9dddd27fa882dfd2dbee3e566067daf0767928363f5fcf2b18e9` |
| 141 | `lemma` | [mul_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-ne-top.md) | 775 | `result-track:cc5163e47c61f4e5c28e63b40181fe4032a65a637d6f479c349ab1f7cac555ec` |
| 142 | `lemma` | [mul_eq_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-eq-bot.md) | 783 | `result-track:b6f2febe6557649756b07310ce885d628b2ca6697260ea5d8b59a7fb01f82075` |
| 143 | `lemma` | [mul_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/mul-ne-bot.md) | 789 | `result-track:d9e57452d374be0f81c8a81437a8f53c920c64c0051ef25304b91517e6c8ef87` |
| 144 | `lemma` | [toENNReal_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toennreal-mul-source-edition-2.md) | 797 | `result-track:7729398ecb529c442755b639d6e2406721fc8511f3b3edd64615e61ed0100631` |
| 145 | `lemma` | [toENNReal_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/toennreal-mul.md) | 812 | `result-track:76be1623ed943a04403ca6c3ac051cae01e4c9bac6f1fdda44910a2e3c348794` |
| 146 | `lemma` | [right_distrib_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/right-distrib-of-nonneg.md) | 816 | `result-track:85a77731cd64c86a96f1fc1a816d0fb5f48ec6eae3fb2b34c20d61934ed55ac2` |
| 147 | `lemma` | [left_distrib_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/left-distrib-of-nonneg.md) | 827 | `result-track:72c6a827eef590ca61ad56f4cf50e38a8113e707d5edc541034054b4eef0da86` |
| 148 | `lemma` | [left_distrib_of_nonneg_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/left-distrib-of-nonneg-of-ne-top.md) | 832 | `result-track:032fd5a9e78da31b188d1e4b987a2393187626f60f5142d334c7830f769686f7` |
| 149 | `lemma` | [right_distrib_of_nonneg_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/right-distrib-of-nonneg-of-ne-top.md) | 843 | `result-track:6ff75ac40c8c5c6b40c68b6200a5d614cf3e626088e6d10512e541f671e27a4b` |
| 150 | `lemma` | [nsmul_eq_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/nsmul-eq-mul.md) | 849 | `result-track:336d22fe15a471ea20ca08c345b5be32e80a72dbe8eca5060296be394c7687d5` |
| 151 | `def` | [evalERealAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/evalerealadd.md) | 864 | `declaration-track:e1cccc56ee0b430002712aa733452eaf3c6a50db73b48f514c435672e8dfed11` |
| 152 | `def` | [evalERealMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsNamespaced.lean/declarations/evalerealmul.md) | 883 | `declaration-track:1f5276240b0e68cb048e80d20d79edaa8365eeea01596c647cb219746c6998e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=505022e01360f8afe82d46aeb8730d2fd1824147f514c45062ae4f4e26339e9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant6c3bbf7860a04abd3c5cad7e5b5d301d2fe350746ceff23a6901d79adce00c35.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant6c3bbf7860a04abd3c5cad7e5b5d301d2fe350746ceff23a6901d79adce00c35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
