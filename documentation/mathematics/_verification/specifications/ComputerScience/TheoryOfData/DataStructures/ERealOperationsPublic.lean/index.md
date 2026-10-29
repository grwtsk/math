# Verification target: EReal Operations Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39e54edd8eb5601aaf601074fb40b80bc29e434b",
  "lexical_observation_count": 158,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39e54edd8eb5601aaf601074fb40b80bc29e434b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-bot.md) | 46 | `result-track:1d178aee0233e25a321b1e5bcb99af2e9d5835f75c221f49abf0854d685d1c62` |
| 2 | `theorem` | [bot_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-add.md) | 50 | `result-track:525f8198d4c90c9021c332d7338ea637b324feaf3d1bae296669ed796c7ecf17` |
| 3 | `theorem` | [add_eq_bot_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-eq-bot-iff.md) | 54 | `result-track:d0d68beb7687077e2175f312ca41cf6586d8235393f2dc78dccf0169043fb258` |
| 4 | `lemma` | [add_ne_bot_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-ne-bot-iff.md) | 57 | `result-track:b4ee9b4b38a9d0373da9f45cfdec799e453705207038529c7c3b3a4e8dcca406` |
| 5 | `theorem` | [bot_lt_add_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-lt-add-iff.md) | 60 | `result-track:564cec826e8aff36705f55d8dd5163ac6e9a90c6c2993e3683495a1979ba7ae8` |
| 6 | `theorem` | [top_add_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-add-top.md) | 64 | `result-track:d283a52020ecb2c6fe0792d24916791f4e9e09117d0c1a7921f600f50a02c354` |
| 7 | `theorem` | [top_add_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-add-coe.md) | 68 | `result-track:223b874d668ccd967461f0fd7b316f4fe0b7e80b1f28c1e78556f92c5c89cff8` |
| 8 | `theorem` | [top_add_of_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-add-of-ne-bot.md) | 73 | `result-track:87858ead9f9efa1f70f02e8465a4cea404403bfe58879bc9256961cde7a8dd40` |
| 9 | `theorem` | [add_top_of_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-top-of-ne-bot.md) | 81 | `result-track:cbd15271171d481d6b8ba1c1fd8836a67436082fa936696d98664fb6e86f40d7` |
| 10 | `theorem` | [add_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-eq-top-iff.md) | 85 | `result-track:891a6212ea21b7d7e6d4c5c56d222db522d5c56ec9bd3a0e6fceadaee922209b` |
| 11 | `theorem` | [top_add_iff_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-add-iff-ne-bot.md) | 92 | `result-track:68eecea2b1bb76adea34622f687c78874dae2015d71bbe4f5316be99eb07aeb5` |
| 12 | `theorem` | [add_top_iff_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-top-iff-ne-bot.md) | 97 | `result-track:c885484b576edf6d6acac5497af8277a282ac1fe761d7416db156a384c60c006` |
| 13 | `theorem` | [add_pos_of_pos_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-pos-of-pos-of-nonneg.md) | 99 | `result-track:dbd783004f61dc69dfa3db1fb4f110fb8ac3783c019c873a466fbe89dd720402` |
| 14 | `theorem` | [add_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-pos.md) | 104 | `result-track:23beeaefa912dd62c9f40d5bcfeb6c81258288ed9bf87cb5c46b0fe4faea90fb` |
| 15 | `theorem` | [coe_add_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-add-top.md) | 108 | `result-track:5fe9fe8bc06dbdbd5632e046f279c9c4a89fec65a14e2cfda57a3093facb19e0` |
| 16 | `theorem` | [toReal_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toreal-add.md) | 111 | `result-track:f3cf03d429d1c98eb10195ecf5f1413639f23a47c88bf773ea7797fd5a722de0` |
| 17 | `lemma` | [toENNReal_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toennreal-add.md) | 117 | `result-track:8a0009fa89aa47cf6c9d1a082b8fc010b6f77fbd98d3d9e075f92450cb9bb0ef` |
| 18 | `lemma` | [toENNReal_add_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toennreal-add-le.md) | 124 | `result-track:4e950dcdd99d6419e8691801c323b403de6dfd9bf7a02d51d8bd2d3ba8ed1ec2` |
| 19 | `theorem` | [addLECancellable_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/addlecancellable-coe.md) | 128 | `result-track:ad7bb1259ca9196748a1b8a9b6060d678ad7b4946076e63166e224718c50d1cb` |
| 20 | `theorem` | [add_lt_add_right_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-lt-add-right-coe.md) | 137 | `result-track:ed29b88c206c011247d0311726055fa7e1acd72c4337f89403e2d44fb9e6ec21` |
| 21 | `theorem` | [add_lt_add_left_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-lt-add-left-coe.md) | 140 | `result-track:12384c0485c19f9d3837df1b334657a5ea3700d441c1f64cdffde60db13e6d08` |
| 22 | `theorem` | [add_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-lt-add.md) | 143 | `result-track:c4fb798de5a31dd4039a602c24a7e041fdf9d28b54a0ff43fdfca829fd1c8474` |
| 23 | `theorem` | [add_lt_add_of_lt_of_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-lt-add-of-lt-of-le.md) | 150 | `result-track:10464ce016f831374954eb9aaa98e08f80eb42c42f5b809a450ccf79b3889920` |
| 24 | `theorem` | [add_lt_add_of_lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-lt-add-of-lt-of-le-source-edition-2.md) | 162 | `result-track:66cf1490521ff638540b80dff32924ccf22e4fe133269e41e417395c836f6a02` |
| 25 | `theorem` | [add_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-lt-top.md) | 166 | `result-track:a98d36c43d5eb5e664dcd234a314a8429aa44bef970df267138805dbf5a09fce` |
| 26 | `lemma` | [add_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-ne-top.md) | 169 | `result-track:5948f618a8cafbfaf710867fd87160c9fa63b8c6a8b72c8aedecb1d07904f643` |
| 27 | `lemma` | [add_ne_top_iff_ne_top₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-ne-top-iff-ne-top.md) | 172 | `result-track:b211a1e9f71597161ee7ebc4c9a45ee6ac6c231953c5390ef832f012327030e7` |
| 28 | `lemma` | [add_eq_top_iff_eq_top_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-eq-top-iff-eq-top-left.md) | 176 | `result-track:dd290c95565c6c2f7241688932d4dea620c7e5a26f7d7d963d07a94e849ceb9a` |
| 29 | `lemma` | [add_ne_top_iff_ne_top_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-ne-top-iff-ne-top-left.md) | 180 | `result-track:ec6a1386c58bdacd40e389f289f20e7d40e66ade4af097629ab22107737d81ce` |
| 30 | `lemma` | [add_eq_top_iff_eq_top_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-eq-top-iff-eq-top-right.md) | 183 | `result-track:088ee612d6d2d2a8b1a1ff938b0d9c85cbb6f3689f230caa8e2e771a2837eaa7` |
| 31 | `lemma` | [add_ne_top_iff_ne_top_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-ne-top-iff-ne-top-right.md) | 186 | `result-track:575b189f377fbf109b55283ecddae6f4748c3bce625fdef663274733037d3a80` |
| 32 | `lemma` | [add_coe_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-coe-eq-top-iff.md) | 192 | `result-track:c55e0a6081fa32e0020db6da1780ead3f290901d28137db526c4e7cf8c70e706` |
| 33 | `lemma` | [coe_add_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-add-eq-top-iff.md) | 195 | `result-track:818ca4b655a88102d89edaea8a39b077971675c95565c2aa56c75d5e82ecdd10` |
| 34 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg.md) | 201 | `declaration-track:135f0c91229e2e6014e8cd012191a99e600dd7335bbbbb1ad91256a6b24c3dc1` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/instance-source-edition-4.md) | 206 | `declaration-track:f169779313a262f0cc93ccc274480146336a33cd8651b13eac514691a70d9655` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/instance-source-edition-5.md) | 208 | `declaration-track:fd338dc249d2971085d86e186bfd8d5c939bf85cf0478e2c699493a98efaa6fc` |
| 37 | `theorem` | [neg_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-top.md) | 213 | `result-track:796127e5185439148422580fbb23f8cb6c313f53c8a65b0c4573c04584cd49c2` |
| 38 | `theorem` | [neg_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-bot.md) | 217 | `result-track:0ff7f9a005c8edb46622d4b5c50d65afefdec7887d5b208c2a68a22bda06f2f4` |
| 39 | `theorem` | [coe_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-neg.md) | 220 | `result-track:9194628d5da81d5edf1c9bd6b8c33959d5c38a0bee549fdef4f370c7e77b5d23` |
| 40 | `theorem` | [coe_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-sub.md) | 222 | `result-track:5f1357df810145cef9b5d3a60c2c39a773dc1546d3674931c88e1156a4e2528f` |
| 41 | `theorem` | [coe_zsmul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-zsmul.md) | 225 | `result-track:7f639b0471b43ba871a77175a84e93c9ddabd74151bc69d9d9f5609aa001b237` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/instance-source-edition-2.md) | 228 | `declaration-track:7f1f29c56fc93ac137742dff9db756e7f3f0b3560bf3212db8fbd2b77899c6ac` |
| 43 | `theorem` | [toReal_neg_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toreal-neg-eq.md) | 236 | `result-track:bf9f3c3c6389714b50657e7154cbad0cfeec6653403e987e0dcd4245af4b98a6` |
| 44 | `theorem` | [neg_eq_top_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-eq-top-iff.md) | 242 | `result-track:fbc74bab071544f8a26b82feaa7971faca94d7d5cddb23cdc6cf81d81994df8a` |
| 45 | `theorem` | [neg_eq_bot_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-eq-bot-iff.md) | 246 | `result-track:84178da49b6a6bb4ac305ccabf1540dab56504e9ffc89c8199efd8bd439a6331` |
| 46 | `theorem` | [neg_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-eq-zero-iff.md) | 250 | `result-track:2cc5c95e9821edbdac84a066df278869884be2bb6d54945fdf64be501ad901e9` |
| 47 | `theorem` | [neg_strictAnti](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-strictanti.md) | 253 | `result-track:2c9477c5f3f5183ed3f7552692b7ebf3041d89e6d8d44d8ae52cc6570abe729f` |
| 48 | `theorem` | [neg_le_neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-le-neg-iff.md) | 258 | `result-track:b374e667dbcfc5a076c7c160ca786ae39066d31bf31656fc241e0f5d423d6e96` |
| 49 | `theorem` | [neg_lt_neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-lt-neg-iff.md) | 260 | `result-track:ab0fc130d931881d500b825f59ce9816ecdbbd62e0c3401cce80c94df36866fe` |
| 50 | `theorem` | [neg_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-le.md) | 263 | `result-track:28870e9e8edce468a9fa8ae01180d1d4783dd42ec9fdbff051dd06f26de10c5a` |
| 51 | `theorem` | [neg_le_of_neg_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-le-of-neg-le.md) | 267 | `result-track:6a33ede9cc4f1cd42316e232ed634154f745af0d51064220d9028d349a13a48e` |
| 52 | `theorem` | [le_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/le-neg.md) | 270 | `result-track:7decc98b5dd98cd604add43dd91568ecf25bbd4098129f5c9923d7d1134ea48b` |
| 53 | `theorem` | [le_neg_of_le_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/le-neg-of-le-neg.md) | 274 | `result-track:89b8baf02c0ba3d4bf0e5a6fc28bf692f86049b74a84c3f5fa5a83235f0d4c6a` |
| 54 | `theorem` | [neg_lt_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-lt-comm.md) | 277 | `result-track:50ac7025efb97081c05dadf34cc3d285993cf88f3c357e27fe57886e5df1097c` |
| 55 | `theorem` | [neg_lt_of_neg_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-lt-of-neg-lt.md) | 280 | `result-track:19cfa19046b42e5af39dfea9c33edfdb332961eeb128c02a404c8179e4b14b2b` |
| 56 | `theorem` | [lt_neg_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/lt-neg-comm.md) | 283 | `result-track:bbf264a514b3c33a2d0d051e153cb3f47a6b921181f6ea82a98cb2503e98c484` |
| 57 | `theorem` | [neg_lt_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-lt-zero.md) | 286 | `result-track:ef7aac4158c5800405b6eb12a3d38e22c1e241b74da1b5d773f041690a1d2129` |
| 58 | `theorem` | [neg_le_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-le-zero.md) | 287 | `result-track:6025aec23fd172bbd378cf86a04386047c9ddd63a4d2b0133764ef27574d3961` |
| 59 | `theorem` | [neg_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-pos.md) | 288 | `result-track:82e20e521e607203cea1fd8614f8ff56fd8846912c570707b78d1fd6c2894849` |
| 60 | `theorem` | [neg_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-nonneg.md) | 289 | `result-track:b793341e70714cfbba2af3180b9c7514dd1257cf5d872d436d4fecc2704e691b` |
| 61 | `theorem` | [lt_neg_of_lt_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/lt-neg-of-lt-neg.md) | 292 | `result-track:55c921f0b614b79e866b7509e5ccda72131ed411cb84657c0a9a3cc877d20c8b` |
| 62 | `def` | [negOrderIso](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/negorderiso.md) | 295 | `declaration-track:62bd5713186a8ee2168d035196e9bf4fcb4601570089907a8ab960a79e0b9cbf` |
| 63 | `lemma` | [neg_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-add.md) | 301 | `result-track:28f01977d9448a33db12b9869ab70650b1e2a67be091117ce23c139816786de1` |
| 64 | `lemma` | [neg_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-sub.md) | 306 | `result-track:b0161b04f7740012e25b23ab6ffcdd7cff405b8200fe215aa0dff63cb06a99dc` |
| 65 | `def` | [recENNReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/recennreal.md) | 313 | `declaration-track:96adc01f22a1bbcc693aed9977ee93da4efeae2ddd6aec01dd8df8eb82058e04` |
| 66 | `theorem` | [recENNReal_coe_ennreal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/recennreal-coe-ennreal.md) | 322 | `result-track:a9b31c80d346c9a769ce1778219d40041cb3fcbdc24dcd014bd14c5afbaf3cc6` |
| 67 | `theorem` | [bot_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-sub.md) | 340 | `result-track:dfe4d15528cf34fc334c76d64dacb5425e1f0c6f7dc83ced1ffc482d878f5d60` |
| 68 | `theorem` | [sub_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-top.md) | 344 | `result-track:6b010ecc5e889aca9858cced17558349466869aa94e562785a68ff5c64e5f770` |
| 69 | `theorem` | [top_sub_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-sub-bot.md) | 348 | `result-track:7c4fb6638fc546e3afde770557c8acca13c7fc96a360c1a849feda7dc44c69d9` |
| 70 | `theorem` | [top_sub_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-sub-coe.md) | 352 | `result-track:8eb8d1e9ed8ef2c086ffcc181bae80737997af68212c48b6d25b4f405d2492c0` |
| 71 | `theorem` | [coe_sub_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-sub-bot.md) | 356 | `result-track:46fcfcef803a939944a66fe8a5e11528b84e8308bc21ceec329523dff0c89f5a` |
| 72 | `lemma` | [sub_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-bot.md) | 360 | `result-track:c6cf65456f89422d275769df9e7543125da4dfed45733f0bfd4ddf53aca2e2c5` |
| 73 | `lemma` | [top_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-sub.md) | 364 | `result-track:6ebbb475b2f3bdbeed1516c639a89a3b6a4f4fd7c6721e452ec9fb31ea83ae71` |
| 74 | `lemma` | [sub_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-self.md) | 368 | `result-track:42a011b4eee3e7fa0aa6e38947b01eabd3aa7cff8f8712216c534cf35da51e16` |
| 75 | `lemma` | [sub_self_le_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-self-le-zero.md) | 371 | `result-track:e3039167e73c3ec8422ce8af74539f1cba12628bfc0bba642cd06fe90def7818` |
| 76 | `lemma` | [sub_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-nonneg.md) | 374 | `result-track:25db3d5044c19731db06aa2931c34ca6495a721da75074775f0ab6bf27afeb11` |
| 77 | `lemma` | [sub_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-nonpos.md) | 378 | `result-track:812822ebfb8a3a05f398674c4729638fb5cdc8c643672b996e51f3821bbef874` |
| 78 | `lemma` | [sub_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-pos.md) | 381 | `result-track:fd87caa1191458b205c4cad88489e1f7216129f2f06494d1bc75de6566e99ce0` |
| 79 | `lemma` | [sub_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-neg.md) | 384 | `result-track:2347c0eebf58152852a924a5e38d3ce0fd32ff64a76c1b8af16869fee00390be` |
| 80 | `theorem` | [sub_le_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-le-sub.md) | 388 | `result-track:5154c997b056e740bf8b048ea9fc76f6a00ce27862986b4465d2c078d14a34c9` |
| 81 | `theorem` | [sub_lt_sub_of_lt_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-lt-sub-of-lt-of-le.md) | 391 | `result-track:e409a5380064583cf324220d9fee570bca31535a306e90a84b2b4a56446eb325` |
| 82 | `theorem` | [coe_real_ereal_eq_coe_toNNReal_sub_coe_toNNReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-real-ereal-eq-coe-tonnreal-sub-coe-tonnreal.md) | 395 | `result-track:76c4ed48e4c30e57bb925d002ea538e405e3369cbb1446d71a48ceace4f74d23` |
| 83 | `theorem` | [toReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toreal-sub.md) | 406 | `result-track:42746c192b76fc810a0d5234333500c5024ccbec2f2c79e8a9d985a070979c9e` |
| 84 | `lemma` | [toENNReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toennreal-sub.md) | 412 | `result-track:137057fa12d6ccc99786da741d8164cd5935da0ec96e124c068c0d66cf40095d` |
| 85 | `lemma` | [add_sub_add_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-sub-add-comm.md) | 423 | `result-track:8cb96b339816f1ed6d5bed98542eff31ea09a3b8a00906830459f4e150e095fb` |
| 86 | `lemma` | [add_sub_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-sub-cancel-right.md) | 428 | `result-track:5d7279aeb7b3812b9ef6ec580d2165c828afaa13889df29dc8415fe6f54ef4c3` |
| 87 | `lemma` | [add_sub_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-sub-cancel-left.md) | 432 | `result-track:7d62a3ff6be010f8028aaddc5f8cb69df05d720204141c7e934308bc21dc127a` |
| 88 | `lemma` | [sub_add_cancel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-add-cancel.md) | 435 | `result-track:ac597d0d4c0f60efa443a8744dd7b6c4dc87d25b1ee02baaf2cccae7780852c2` |
| 89 | `lemma` | [sub_add_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-add-cancel-right.md) | 438 | `result-track:97994d4478bf82d36ff5ebe408f0e693ae7eb02ba90ad4bcd339e629b4221d68` |
| 90 | `lemma` | [sub_add_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-add-cancel-left.md) | 442 | `result-track:a6115c5d0b7f31ee42f137a0f876c0e707700a03c151243b65a9c00092c459f0` |
| 91 | `lemma` | [le_sub_iff_add_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/le-sub-iff-add-le.md) | 445 | `result-track:c9ed7d6438085d28ae1223259988e41e7c906350aed423ba7e0ab71467921046` |
| 92 | `lemma` | [sub_le_iff_le_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-le-iff-le-add.md) | 459 | `result-track:ebe810ac72f74d019f3ea1065e1a541777213d29d2cc2af6ba77a71cc05debac` |
| 93 | `theorem` | [lt_sub_iff_add_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/lt-sub-iff-add-lt.md) | 464 | `result-track:5873e9b2c2a902d3baab67dab0640f42fcb8c9122b24755a18ebb5b7c0f06c0e` |
| 94 | `theorem` | [sub_le_of_le_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-le-of-le-add-source-edition-2.md) | 468 | `result-track:cdc32b1556e7e8152eeea11315555354e6662ebae60a2549f7af03b0b18c9d0e` |
| 95 | `theorem` | [sub_le_of_le_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-le-of-le-add.md) | 475 | `result-track:4f2c17a3dd4cb437f88c8e49690eda86250071229bb0b0404f713cdfc7cefbab` |
| 96 | `lemma` | [add_le_of_le_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-le-of-le-sub.md) | 478 | `result-track:6f622d3359e08dafb6dfb0289dc6245d17424e47b16aacc77309a2644f7af402` |
| 97 | `lemma` | [sub_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-lt-iff.md) | 482 | `result-track:adf5af5d7e9a1243df89d25cdeeb4be052e9c70231065433a057f53ec1c65932` |
| 98 | `lemma` | [add_lt_of_lt_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-lt-of-lt-sub.md) | 486 | `result-track:5995853ad4afef2e8f3fc46d5a890e1ff7aea203ada7e6e29db7c9e9a0f63cf4` |
| 99 | `lemma` | [sub_lt_of_lt_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-lt-of-lt-add.md) | 490 | `result-track:67775eb0b204523eba5d4a0ea82004be5f0b954c1fe81f673210948606b1ae41` |
| 100 | `lemma` | [sub_lt_of_lt_add'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-lt-of-lt-add-source-edition-2.md) | 494 | `result-track:fcdb774d0d64a4f295fc16128ba9e09e26a507d81fdd72d8ebdf7fcc3d65ea69` |
| 101 | `lemma` | [sub_lt_sub_of_le_of_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-lt-sub-of-le-of-gt.md) | 497 | `result-track:920f2dcc4b2c44f6cc0de9c97cbf389c36dc63f83a3f3aaf237b69f452b6772d` |
| 102 | `lemma` | [le_of_forall_lt_iff_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/le-of-forall-lt-iff-le.md) | 521 | `result-track:97e16e4c798a3eba1389f30f77d2f9b6f67aaffde0dde98034d3dd57a3908749` |
| 103 | `lemma` | [ge_of_forall_gt_iff_ge](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/ge-of-forall-gt-iff-ge.md) | 527 | `result-track:ac60b3df303c79537a87626cca650b0c4a74b19a9940945277c7e2fc82125e9b` |
| 104 | `lemma` | [exists_lt_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/exists-lt-add-left.md) | 532 | `result-track:aa4cc3373c30dab7c046b52291aa0f55a44a68ab679ae9044598651326cb5e05` |
| 105 | `lemma` | [exists_lt_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/exists-lt-add-right.md) | 538 | `result-track:d1769d83e235b8639541669a69752bf082e861a973e5d02fb34e6297f1d28edd` |
| 106 | `lemma` | [add_le_of_forall_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/add-le-of-forall-lt.md) | 541 | `result-track:36bbe617c72a7c8744e5b3eea37e2ac21b242a07842ee2059a08b585e0fb0e5a` |
| 107 | `lemma` | [le_add_of_forall_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/le-add-of-forall-gt.md) | 547 | `result-track:4715fe06c4bb864737cd2369e4dc732030ec2c6248ef4c845122cd64dc141d1f` |
| 108 | `lemma` | [_root_.ENNReal.toEReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/root-ennreal-toereal-sub.md) | 554 | `result-track:29837ce2629897e0efef30a5915eafc07e9a16ad64d531694612643ed60f0df2` |
| 109 | `lemma` | [top_mul_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-mul-top.md) | 564 | `result-track:3f98acc6123b09a5022fb17e73d7fe2c8bec08cf5274483464f1f6319b98ed98` |
| 110 | `lemma` | [top_mul_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-mul-bot.md) | 566 | `result-track:224e5de312582b4a43a9299ce3da6f48b53c3f69d592130a7b0c0ee1a442fb9f` |
| 111 | `lemma` | [bot_mul_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-mul-top.md) | 568 | `result-track:d167699976c4f09446592c79f4ded787bce6693533ae53a1f1a3c77cdebb11eb` |
| 112 | `lemma` | [bot_mul_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-mul-bot.md) | 570 | `result-track:f84c47ba7500b02aedb1cd25394ffbe2efcaf8d5a687abf83f6ab8f79b44bd7a` |
| 113 | `lemma` | [coe_mul_top_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-mul-top-of-pos.md) | 572 | `result-track:d5fa7c4f4ea19b6a66c883f649ba7fc149aee1825b998aea7dd0860e54f42bee` |
| 114 | `lemma` | [coe_mul_top_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-mul-top-of-neg.md) | 575 | `result-track:beb270aae488b9591bedfe5961448441fb3ca38299fbc2be7b627826e1845724` |
| 115 | `lemma` | [top_mul_coe_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-mul-coe-of-pos.md) | 578 | `result-track:405e740116ae8b99e1b59688c7e9819ba76af3c020a9967c5ed7c4593a845481` |
| 116 | `lemma` | [top_mul_coe_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-mul-coe-of-neg.md) | 581 | `result-track:cde8c17c11a4643733609d0ef1b8075398ed54ce1e28b27461013e3f07b881b1` |
| 117 | `lemma` | [mul_top_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-top-of-pos.md) | 584 | `result-track:3bcdfb272f4a7c54c4df3c33519dd0ef64fa1a7f5b68f028c055649afc4e4b57` |
| 118 | `lemma` | [mul_top_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-top-of-neg.md) | 589 | `result-track:99cd900b4498a9ca91bc053d709488825dfb1b499e2bf876fdb6a3b97e4c5232` |
| 119 | `lemma` | [top_mul_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-mul-of-pos.md) | 594 | `result-track:970d756c169cdf33d36709a532d249624734141414759c8efe333f8993d15a42` |
| 120 | `lemma` | [top_mul_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-mul-of-neg.md) | 598 | `result-track:bf1fc69c59520a42ba6fd5c70efb1be9f29bd560a0b2aa9ed69839532ab016ca` |
| 121 | `lemma` | [top_mul_coe_ennreal](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/top-mul-coe-ennreal.md) | 602 | `result-track:caadd8245a1291a0a60f6b4d312ffc641ab5412b577d51ec5d4f2ba74fad57f8` |
| 122 | `lemma` | [coe_ennreal_mul_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-ennreal-mul-top.md) | 605 | `result-track:3cb4bc36627b3fefe750242655df80ec639010a36b20da0c4a1d8b8141f9e265` |
| 123 | `lemma` | [coe_mul_bot_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-mul-bot-of-pos.md) | 608 | `result-track:e0cf7ea5a7aeb33b543e9930788c784f72fb684864fa619ee84733ab0c34c950` |
| 124 | `lemma` | [coe_mul_bot_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/coe-mul-bot-of-neg.md) | 611 | `result-track:62bd025ae8dbafde7760cfe2d398270832e358bcd65a6d90040743887867fab9` |
| 125 | `lemma` | [bot_mul_coe_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-mul-coe-of-pos.md) | 614 | `result-track:07b28113ac0b0a9a789bc8fdf19f8c95d4e45c88443e891f6915d0d697129833` |
| 126 | `lemma` | [bot_mul_coe_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-mul-coe-of-neg.md) | 617 | `result-track:fa790b19d458665f1080c7e3fc3104589c3256fb24264f2444376c9909300079` |
| 127 | `lemma` | [mul_bot_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-bot-of-pos.md) | 620 | `result-track:894572c72561239343222cb17b1dc4605b7863b72b92406af0da47155a7bbef8` |
| 128 | `lemma` | [mul_bot_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-bot-of-neg.md) | 625 | `result-track:615ad72758f978e3d3d34de4cc4ea3d9a88e360bb1fb7886c1b103ea1ab28324` |
| 129 | `lemma` | [bot_mul_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-mul-of-pos.md) | 630 | `result-track:34eca0d930fc1b7d15a98f69306ff35cd34df7cd2c7c090b58e796b2576168a4` |
| 130 | `lemma` | [bot_mul_of_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/bot-mul-of-neg.md) | 634 | `result-track:447be20c96a56ac1db0066346292227f767641f7be0cd4278554c38ead022d55` |
| 131 | `lemma` | [toReal_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toreal-mul.md) | 638 | `result-track:2a0c72c569742b6cbf7d2dd0fe99bf1fe7e6d7a4beea133bf31b1b0dcc8c1a23` |
| 132 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/instance-source-edition-3.md) | 648 | `declaration-track:e7b8a270bca83cc0c6f8f773add49e1e294f4a10211cd2eb447a7f367ee651d2` |
| 133 | `lemma` | [mul_pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-pos-iff.md) | 662 | `result-track:3d2354b8cf370aeeb524649a17c3b49770721765a89b7e76cc720fd2d78960c2` |
| 134 | `lemma` | [mul_nonneg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-nonneg-iff.md) | 676 | `result-track:20b97174b1435fdbebd30e513f0be7fa73f92ef78518485fec0674e0aa5c6bf2` |
| 135 | `lemma` | [mul_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-nonneg.md) | 681 | `result-track:61ab9b29ef642b24bbe58a7effbe35cd30a23414bc6c52a1229c307cb96c8e6d` |
| 136 | `lemma` | [mul_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-pos.md) | 685 | `result-track:075bca13690f5679d621ee791d416bad0c3fb29045160177c8e76da4e6b0ee52` |
| 137 | `lemma` | [induction₂_neg_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/induction-neg-left.md) | 692 | `result-track:36cdf797ce16cc453bc12ebe59be21c1fadc43d8a8d9dbd56ce953032d5352ce` |
| 138 | `lemma` | [induction₂_symm_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/induction-symm-neg.md) | 709 | `result-track:747d286b52065241ec83c0f3da32d3322bef5af01598387699a09b7718083f9a` |
| 139 | `lemma` | [neg_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/neg-mul.md) | 721 | `result-track:a618b512d1020f6e8ff455a9a516128adfb88efe970b70a5d3fdab0c195f06c8` |
| 140 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/instance.md) | 734 | `declaration-track:61ae3f1233262674fe2dcef18d61dc73bbaaedb7b1557307754b9f95d7480fa3` |
| 141 | `lemma` | [mul_neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-neg-iff.md) | 740 | `result-track:5f2447b8972512500177e7e61c9cda23ac598f365e633bc1367c5ee4482e8cf7` |
| 142 | `lemma` | [mul_nonpos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-nonpos-iff.md) | 744 | `result-track:d5bc65e68c93347b3e3d99d69575566c69c2d8b39e306179b9378fb1df4308c8` |
| 143 | `lemma` | [mul_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-eq-top.md) | 748 | `result-track:88b9152aab554df45c98cf82d47750b8d9ead9699a8073d1f2b456c9a747a7ff` |
| 144 | `lemma` | [mul_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-ne-top.md) | 765 | `result-track:81a1745b4dfb92a08d6a95ef9ce188dff035887d8bb42e9ba589776f72fd9b98` |
| 145 | `lemma` | [mul_eq_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-eq-bot.md) | 773 | `result-track:59eb8cd134ac7b43a41910c53ccfa078104b99ca35c078c942612830ad7d4c0f` |
| 146 | `lemma` | [mul_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-ne-bot.md) | 779 | `result-track:ea6455541d387ad6065e51d2b98471ee469de7c45daf0cfacac061cbcdcb798b` |
| 147 | `lemma` | [toENNReal_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toennreal-mul.md) | 787 | `result-track:06644e2eb8cd8d4e2564e69cf06d73ac140430a2a4254b238b225f06db7406cb` |
| 148 | `lemma` | [toENNReal_mul'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/toennreal-mul-source-edition-2.md) | 802 | `result-track:45990200bf41ecbfb3cdf221078128674aa776e7f32b5e989ba22759d0e5db0d` |
| 149 | `lemma` | [right_distrib_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/right-distrib-of-nonneg.md) | 806 | `result-track:04e36f10ceb200415a9aa17816dfd4aa93de36ed50aca8b94a5b60667e8cc65a` |
| 150 | `lemma` | [left_distrib_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/left-distrib-of-nonneg.md) | 817 | `result-track:2dbaeac75ca59672587e35f36e01a81fddeff74ecfa72974f545870c320ad8f4` |
| 151 | `lemma` | [mul_sub_of_nonneg_of_nonpos](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-sub-of-nonneg-of-nonpos.md) | 822 | `result-track:e4ac185ed4ca91fef0070555f65cf91046834e88351be55cc4777697d6409617` |
| 152 | `lemma` | [left_distrib_of_nonneg_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/left-distrib-of-nonneg-of-ne-top.md) | 827 | `result-track:ce04cae3d7af86c6c8d49465eae5712fbd425aef6cf6ca7a0ef0ae9d7748f236` |
| 153 | `lemma` | [right_distrib_of_nonneg_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/right-distrib-of-nonneg-of-ne-top.md) | 837 | `result-track:b6cfc2af28d065742f1f8aaf914982b7a8edfbea72b4c9417751025a24af3771` |
| 154 | `lemma` | [mul_sub_of_nonneg_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/mul-sub-of-nonneg-of-ne-top.md) | 842 | `result-track:5669e278f739dea1996397d3126b50033d86bb0f58116f76bc1f5b43be1a431a` |
| 155 | `lemma` | [sub_mul_of_nonneg_of_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/sub-mul-of-nonneg-of-ne-top.md) | 847 | `result-track:79edaf8559aced5bfabcde4f03ad713ff58e3461e41533b9c03a6e2fac4e745a` |
| 156 | `lemma` | [nsmul_eq_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/nsmul-eq-mul.md) | 853 | `result-track:447c55c22583ea07c4e91cbfe9273007c9f77502875efa9d0d8cc1947ff46f0b` |
| 157 | `def` | [evalERealAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/evalerealadd.md) | 868 | `declaration-track:2c22415e0911bbdc9c6458ebe0206c7a19f12332a1a36ce2bfdb16cf1a00f49a` |
| 158 | `def` | [evalERealMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/ERealOperationsPublic.lean/declarations/evalerealmul.md) | 888 | `declaration-track:47aa1d924d57020b26276a6ebbad91a9a8c8d5f398fb1f0afbd024dddc120398` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aba453d9f9c36a72a2582d1e36146c847379d3d17e95986cc4a8942712e6f61c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant11dbb4656169d74e44262abd9aa897655dfde503157d6d529d017ffc9c010cc2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
