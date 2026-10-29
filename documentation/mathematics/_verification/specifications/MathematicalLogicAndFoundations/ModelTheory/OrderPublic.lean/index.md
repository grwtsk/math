# Verification target: Order Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "671960d567863f94416e0a17225c3f92e38df548",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variantc21cb4bafa95b17361ced97eb4eaa48baac0caad94db463811d65580c34f3058.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `671960d567863f94416e0a17225c3f92e38df548`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variantc21cb4bafa95b17361ced97eb4eaa48baac0caad94db463811d65580c34f3058.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variantc21cb4bafa95b17361ced97eb4eaa48baac0caad94db463811d65580c34f3058.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [orderRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/orderrel.md) | 70 | `declaration-track:87d51ccfa7693cc424a94a44e570759c0c5eadbf28e9b33d71624d311ae22ce5` |
| 2 | `def` | [order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/order.md) | 75 | `declaration-track:c115c5e9d8941614e72598ddade991a557babf301191ec508d1365f55cba50f4` |
| 3 | `lemma` | [forall_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/forall-relations.md) | 81 | `result-track:13735048a3e904c80bb3c0f5eb546af2949a3d9eb610052d1f682f1fb1183959` |
| 4 | `instance` | [instSubsingleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instsubsingleton.md) | 86 | `declaration-track:87865a3793dd9a753cb5766974a212bbeb881395d121ac8f32bd5e45ed40d81a` |
| 5 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-17.md) | 89 | `declaration-track:f3cee4b777d7fc63584cd800b8c1e062f714248c2ee1c6f8fb8e6d230c131b5c` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-4.md) | 91 | `declaration-track:266644c6703b9a484a71d814d6ddb854b7aac4fe8bac76f58b329c0b3e976fb1` |
| 7 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-10.md) | 96 | `declaration-track:6dd0fe29d72a15092c69dd08ed6456ede658200863bcd4bd002e28402d2b8ef0` |
| 8 | `lemma` | [card_eq_one](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/card-eq-one.md) | 101 | `result-track:0f5d63f9f0a5e64d11ba81ef59536620f51b0aee17337750e851c70c5068cfdf` |
| 9 | `class` | [IsOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/isordered.md) | 106 | `declaration-track:a2499a1687dbc32ba957d2970612de5bc386aa9024268e504e6fb856cd335b8b` |
| 10 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-3.md) | 112 | `declaration-track:2287f7707ece6f0ab1edb35d296809e98c9ad3dcd8029a2cd9b77f337477094d` |
| 11 | `lemma` | [order.relation_eq_leSymb](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/order-relation-eq-lesymb.md) | 115 | `result-track:6f99e51495a839236b7a676681a913e91bab0737970cd9164073c945f2366853` |
| 12 | `def` | [Term.le](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/term-le.md) | 123 | `declaration-track:51c45d58a621dd35959d95d809e97fc2ac2ae91a3f1a627c2dec58aeb0ef80dc` |
| 13 | `def` | [Term.lt](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/term-lt.md) | 127 | `declaration-track:46e9516e303f146c29558074dd8592b0a466ecd4ad5162a9a86a557399c7ef10` |
| 14 | `def` | [orderLHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/orderlhom.md) | 134 | `declaration-track:c2c0e90c4b633861d29d3231e1cd50a9383718ccc46bb0a7232bfcd6f97ca9fa` |
| 15 | `theorem` | [orderLHom_leSymb](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/orderlhom-lesymb.md) | 138 | `result-track:f21263ff6a27190559b89d0177bd9e851343dcaf5db3cef52866e87486f4c889` |
| 16 | `theorem` | [orderLHom_order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/orderlhom-order.md) | 143 | `result-track:af1639d48022471ba4101d919b68c31612d724cc8dc75c9ba1f5e3b5f05f5110` |
| 17 | `def` | [preorderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/preordertheory.md) | 147 | `declaration-track:8a66a027d670dd0f631b86652da57eb7470f1d022d77a21e3ea57bc5492cace3` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-8.md) | 150 | `declaration-track:4ae5adf844285596e861ac25bfcb1cb2c7ab2d8e425d58762edb8ffa5623987f` |
| 19 | `def` | [partialOrderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/partialordertheory.md) | 155 | `declaration-track:54bbd9c2428b23200a2a6472d839102460e585e6e7cf272eaf931ddbc89c9b47` |
| 20 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance.md) | 158 | `declaration-track:1e5e190b55c7dad85f354f30680e0bd6bfd6e049a80237adfe9752d9c084ef77` |
| 21 | `def` | [linearOrderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/linearordertheory.md) | 162 | `declaration-track:223fc9751bec62c609845a5b9af18420a988be979d58d16190be7d7664831673` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-15.md) | 165 | `declaration-track:eb2ec2a9077111418605109b019e69fd0642bb42487fb832f59232d809a35aca` |
| 23 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/example-source-edition-2.md) | 168 | `declaration-track:77e0263e90455849b8b06aba6517c949652c39500a464af5d942567e50852754` |
| 24 | `def` | [noTopOrderSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/notopordersentence.md) | 173 | `declaration-track:31934a1aad600b358e9dde97d260cb64dd587c14a50fe850e5454795eb5c3161` |
| 25 | `def` | [noBotOrderSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/nobotordersentence.md) | 178 | `declaration-track:5dc27b3163220ee9ea1296f51f1c13d55757d0404b7d867e853fe6a1094d82bb` |
| 26 | `def` | [denselyOrderedSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/denselyorderedsentence.md) | 183 | `declaration-track:1b05ff7b7816badae38f5a5a883165c3788c6fcc3dbebc2bd4f9a740a00543d4` |
| 27 | `def` | [dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/dlo.md) | 187 | `declaration-track:0d20cd2a0082e89560247550f07fcae40fafb6376d47aecf96c76d8f904acc5b` |
| 28 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-6.md) | 192 | `declaration-track:36fb2f5bf3e85fe34e3dfcd7c0280798877ddd5d2ddcd2ddda466ba5691fd063` |
| 29 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-18.md) | 194 | `declaration-track:fe7f2431c82946b50abdfd1e95cd1f4657f016978ae747aa6824ce090096aa50` |
| 30 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-16.md) | 196 | `declaration-track:f180749ce496e7400b77714083628f4f7eeea0383fb800e528dcd642d5cd949b` |
| 31 | `instance` | [sum.instIsOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/sum-instisordered.md) | 200 | `declaration-track:b03a91b072f07f9c4a3531ac4f53ba893736ea139c393c07448259c0f0623be5` |
| 32 | `def` | [orderStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/orderstructure.md) | 208 | `declaration-track:f5060c84b59e55386df591d7275e9cf3b5781618ee64be62963f092d66e11f28` |
| 33 | `class` | [OrderedStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/orderedstructure.md) | 212 | `declaration-track:234d96a91ef8c8b340c6e9516e883f208690c24b4f002a19ad86d051fbfa7f67` |
| 34 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-13.md) | 229 | `declaration-track:a234deb51a15d287423b9f906fbc241ef04a42cd1b001db8002103f02c9ec6e6` |
| 35 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-7.md) | 237 | `declaration-track:4077b27c30e6c90c4aff01bc263f3ed39dad599d8710f97c7e84e2dc95b713b0` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-14.md) | 241 | `declaration-track:de22ed27687de3c22753674bef90f5e82a366757858dce343621f6412272191c` |
| 37 | `theorem` | [Term.realize_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/term-realize-le.md) | 244 | `result-track:ea0a29ad3d493f643dda8b313132f2ee8369cea2ecbb98f7eb2518f166f6c2cb` |
| 38 | `theorem` | [realize_noTopOrder_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/realize-notoporder-iff.md) | 249 | `result-track:107d50f7e7db9f94dbf7df363972b31b62486b1ccd0bccf5fa52eff28e124f13` |
| 39 | `theorem` | [realize_noBotOrder_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/realize-nobotorder-iff.md) | 256 | `result-track:aeafcec072e53d9d7e53ffd21c5e4b8be3629f521343dc383b94dc1b2ff60a9a` |
| 40 | `theorem` | [realize_noTopOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/realize-notoporder.md) | 266 | `result-track:adaabfbd79dd5a2c2e69060c2e6a382bbdf97b0f23224fb65c71840eab7617d5` |
| 41 | `theorem` | [realize_noBotOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/realize-nobotorder.md) | 270 | `result-track:be18fdcd6a7b852981278628a3eea092e23eef309e676cc53ae3e30a5a9403ff` |
| 42 | `theorem` | [noTopOrder_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/notoporder-of-dlo.md) | 273 | `result-track:5f49f417bb56080c2e1665beaac10c70cd97a5f5a5ed6c4c145227d85c8d4841` |
| 43 | `theorem` | [noBotOrder_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/nobotorder-of-dlo.md) | 277 | `result-track:fa48d1f5a9607bcc8c41b6e21b9d025b6b69e53dde5b9bc92b7dd69428a68d20` |
| 44 | `theorem` | [orderedStructure_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/orderedstructure-iff.md) | 284 | `result-track:33117dc2a536e3b8a57e6b0a1ee15208ad0ff9b409cc091b4bb5ccec95321290` |
| 45 | `instance` | [model_preorder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/model-preorder.md) | 293 | `declaration-track:e57775fc6db3e17452073e2b0f5962ed0f24a4d70217fa47425d3f9df99d8636` |
| 46 | `theorem` | [Term.realize_lt](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/term-realize-lt.md) | 300 | `result-track:bfb9dcc26d3aa2a2600fca5fdd0f8a06667e936f1534853e36384b4bec562c3c` |
| 47 | `theorem` | [realize_denselyOrdered_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/realize-denselyordered-iff.md) | 305 | `result-track:dd73c8dba28372a93137e312b7962178298ee01967ed5f6fd3b70c1f1ea0b855` |
| 48 | `theorem` | [realize_denselyOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/realize-denselyordered.md) | 315 | `result-track:037b161e2c486900272dd4b330f0d609a6766f9f2c9cb9fc89ac80a7f4cf1adb` |
| 49 | `theorem` | [denselyOrdered_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/denselyordered-of-dlo.md) | 321 | `result-track:38b2297868263624cc6da29948a319b50916a0159494e69d837e2f8c4c4d74fc` |
| 50 | `instance` | [model_partialOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/model-partialorder.md) | 327 | `declaration-track:769d205420e4654901aa4385daaa9fe8a774b7cdfb1c3ead105e3134b9b6f586` |
| 51 | `instance` | [model_linearOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/model-linearorder.md) | 338 | `declaration-track:7aa3490db15877efcd5a0181aae360d7bb801cf15f7f21a1b5d5e1b07d4e6a4c` |
| 52 | `instance` | [model_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/model-dlo.md) | 344 | `declaration-track:c807e9f138c8735539d203e7a8003c37ff6a3952c3ee291e031a25764386a1f0` |
| 53 | `def` | [leOfStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/leofstructure.md) | 358 | `declaration-track:39482d66611a9f28dddb35e1b3008af351abfee360a450bd6354f4d3df53ac98` |
| 54 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-5.md) | 361 | `declaration-track:2b15854a51fe05dc41c3fa796d8787188eac73ce697c4cea6134554249190b43` |
| 55 | `def` | [decidableLEOfStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/decidableleofstructure.md) | 372 | `declaration-track:a9c60c5de83a5cdd8ca2352ef8cd2cddcf8150608978f1305cc9667985fa3fbb` |
| 56 | `def` | [preorderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/preorderofmodels.md) | 379 | `declaration-track:6952e21961d73dcdf21677974ceb14a5d0eefdae85a4e89a6b22be6331a9a8fa` |
| 57 | `def` | [partialOrderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/partialorderofmodels.md) | 388 | `declaration-track:ea1031aaf56cee754fb07f5230a612e5bae4f304f0a0dc73bff6963d04081e37` |
| 58 | `def` | [linearOrderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/linearorderofmodels.md) | 395 | `declaration-track:868e3ee0c9f258e453522b4bacdedf730d971a3d102b970a862d2f3af9d7388a` |
| 59 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-9.md) | 412 | `declaration-track:554c8cb46ca72a31fff5512af0d1e7cc75a3d6493d7ad12c20d8e5d3a193455b` |
| 60 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-12.md) | 420 | `declaration-track:9fdc6478d562950d9d65f1e30f8f343a55c8ef95eb887fd2e95127c64f59202a` |
| 61 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-2.md) | 426 | `declaration-track:21b800db6ed1bc06313a2f93aee4fd0aa1a129a0de1268fd8016e3720370d672` |
| 62 | `lemma` | [monotone](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/monotone.md) | 438 | `result-track:5ed3b9350f54d28919d1f6f8ba7f9e3d3e213d09271b168f0301f90110517560` |
| 63 | `lemma` | [strictMono](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/strictmono.md) | 445 | `result-track:43e6ecb8d5a2c28a6fae7c6cfbd95bd71fd96f7f6ff7169acec85d20d510197f` |
| 64 | `lemma` | [StrongHomClass.toOrderIsoClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/stronghomclass-toorderisoclass.md) | 455 | `result-track:830a3363726dc61d4430d4397f7160a992eeb7690fccec18c6e94aecac565adb` |
| 65 | `lemma` | [dlo_isExtensionPair](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/dlo-isextensionpair.md) | 470 | `result-track:56193bf724b698d41856b4d563152d4e10f494529891ec76503093d71b7ae96e` |
| 66 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/instance-source-edition-11.md) | 503 | `declaration-track:9a0389e0fb84790fb41827c792f8df1c6c460870fa87be5b23f33861400177a7` |
| 67 | `lemma` | [dlo_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/dlo-age.md) | 509 | `result-track:e2c8e360e91b5a370b449a0a8282287f49a887f74f0c97630dcc31cffa80cf68` |
| 68 | `theorem` | [isFraisseLimit_of_countable_nonempty_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/isfraisselimit-of-countable-nonempty-dlo.md) | 523 | `result-track:94fe5277e9aa7904171920ad2e249e905c650483e7e79ec4534bd6430d2d1b76` |
| 69 | `theorem` | [isFraisse_finite_linear_order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/isfraisse-finite-linear-order.md) | 531 | `result-track:324890f95b211020151230df699469ee8275a1e1eaf5ed754526174b5f8416f8` |
| 70 | `theorem` | [aleph0_categorical_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/aleph0-categorical-dlo.md) | 540 | `result-track:5e86f1018911e010e9fe2ef6506a177f39cdd8e3a0957defeca8b64ea7935818` |
| 71 | `theorem` | [dlo_isComplete](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/dlo-iscomplete.md) | 548 | `result-track:b8c79cc85a7971e757fce8f045bbd992a213d58fad3b43725bcdc4df6c78ec28` |
| 72 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderPublic.lean/declarations/example.md) | 568 | `declaration-track:66badb72f5a396616a6b152fa8e8a718e5c12664ec81297c201cd26946da57df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e92ea6d70f2f5cd49c68c53d80bdd9ad48ce9f4647658a4b0249b2c4fc50d4ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variantc21cb4bafa95b17361ced97eb4eaa48baac0caad94db463811d65580c34f3058.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variantc21cb4bafa95b17361ced97eb4eaa48baac0caad94db463811d65580c34f3058.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
