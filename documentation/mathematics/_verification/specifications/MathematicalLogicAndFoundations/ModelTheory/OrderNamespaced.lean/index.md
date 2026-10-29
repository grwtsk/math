# Verification target: Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1eb205699b71ab18ddedcf0abc38c48b6cc05c8",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1eb205699b71ab18ddedcf0abc38c48b6cc05c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharZero.Infinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Encodable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Complexity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Fraisse` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CountableDenseLinearOrder` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [orderRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/orderrel.md) | 74 | `declaration-track:66aeb4737dbab1aea6f9e81e9aede2892c05023845b086573ddff42dcf19b5a8` |
| 2 | `def` | [order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/order.md) | 79 | `declaration-track:13b2284082a0ae5afc211e7d3037870d8b26a15e87011b068f3289fd4c8a91c7` |
| 3 | `lemma` | [forall_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/forall-relations.md) | 85 | `result-track:14ccf34873eea5c92b0a7ce5099c1e3934a5e634277b46085421081cbc8eade9` |
| 4 | `instance` | [instSubsingleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instsubsingleton.md) | 90 | `declaration-track:5975d5b77e0816e86b832aa55062819d32601bbd5681227a7503febba5c48c7f` |
| 5 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-8.md) | 93 | `declaration-track:5b516d88a7b6f4cd6ad83a65aa0524c235e6538485cfaf7e25d16ea3b359f247` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-4.md) | 95 | `declaration-track:4a206384ffa5e335e7c517242ccffd78998aab9ced9efe712c31f256d3fc7cf6` |
| 7 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-6.md) | 100 | `declaration-track:510a47381ad589cdba827f0d05a027e8ba94918ddcf08b4077277e0d340911e0` |
| 8 | `lemma` | [card_eq_one](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/card-eq-one.md) | 106 | `result-track:26b53f723f8fb671dbdf15f9c9c29d8f1d3734dddb292455eca7059064d21dbf` |
| 9 | `class` | [IsOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/isordered.md) | 111 | `declaration-track:671f0dec196e1a4935e1442c2422b0a50b1a28f9f5a1967e7c4ca8231bbe5fb8` |
| 10 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance.md) | 117 | `declaration-track:156f2118ec6040438d56b87b598752124703828a6d078684a1100293ce0ac92f` |
| 11 | `lemma` | [order.relation_eq_leSymb](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/order-relation-eq-lesymb.md) | 120 | `result-track:350132d75bd643bbb457d78829c8e4c2d9fdc1962decf6dd0b4eaeb4840a1b46` |
| 12 | `def` | [Term.le](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/term-le.md) | 128 | `declaration-track:30c0a1798e0ab280a888ea691e8cac4d0088094a29c7e7250ee22a084b3946f6` |
| 13 | `def` | [Term.lt](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/term-lt.md) | 132 | `declaration-track:35452b11759c31f59089bd7b5105ca2e8eec72d541760c183832af84d819b5a7` |
| 14 | `def` | [orderLHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/orderlhom.md) | 139 | `declaration-track:d5e95fd3b456f8698d31844a9392a185248ed9113efd56576fd516b0d1043122` |
| 15 | `theorem` | [orderLHom_leSymb](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/orderlhom-lesymb.md) | 143 | `result-track:579ec6b613b3567232ed436d9822fe1ef8dd09700a565cba8898cdd19c1dcd29` |
| 16 | `theorem` | [orderLHom_order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/orderlhom-order.md) | 148 | `result-track:3ca05cf0fa54ab8d49e89a28ba70d2d572828a5860a8dd8246809b6d841e2c63` |
| 17 | `def` | [preorderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/preordertheory.md) | 152 | `declaration-track:d8d1554c44f1a43c4f275cc22e3ed710e82748a3f1de0cdc32a6812a6314f803` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-10.md) | 155 | `declaration-track:61418a43c1e9c37c6884b8f1713c267fb8bb83f0faf76755673a2780ca8f112f` |
| 19 | `def` | [partialOrderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/partialordertheory.md) | 160 | `declaration-track:19328a8d89f15cf907e6f52493cb6a25394d295fd6aea084ace46b6ed0070a5e` |
| 20 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-17.md) | 163 | `declaration-track:f7f647180e2b0d9eaa0b00ab10aed269018f2623150f170b0fae1711b7d8dcdc` |
| 21 | `def` | [linearOrderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/linearordertheory.md) | 167 | `declaration-track:470fa7d97cad91525cd412ac73696616a4acdb6e06542f59047837e23fdbf1be` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-16.md) | 170 | `declaration-track:e625d892583969e81ba9ad640610700023276ae990006a8ea2b96e4cfd1a81d7` |
| 23 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/example.md) | 173 | `declaration-track:01d563632165446979a7127565ffcd5c1a05705cea38baf4c66fe9adc56f967d` |
| 24 | `def` | [noTopOrderSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/notopordersentence.md) | 178 | `declaration-track:0102713d7b5205714f5e8ce75fd82a7a3b754538848551b620a21d58ea7d16f9` |
| 25 | `def` | [noBotOrderSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/nobotordersentence.md) | 183 | `declaration-track:bbc01e91a4210ed1355090154e706a61542781172d2709987126590dbcc5eb6b` |
| 26 | `def` | [denselyOrderedSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/denselyorderedsentence.md) | 188 | `declaration-track:59d93fa3c34f365f16327d0a9b57aa9daf03919ab04f18620f8e83c92ea0f098` |
| 27 | `def` | [dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/dlo.md) | 192 | `declaration-track:a0e25dbef77eda9024bae09411e02bfe5f775e884372e985e467df5c44b3d4bf` |
| 28 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-12.md) | 197 | `declaration-track:8516c56a413332eaaffee41f7fc8939f7ccbd293e8332c008aaef0733b32f71a` |
| 29 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-3.md) | 199 | `declaration-track:3c110961adad65e79b84b4381d76d1ee3a417964184ff241c67a6470e225dafd` |
| 30 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-13.md) | 201 | `declaration-track:b2792d7917f70126fd07ac0419b70086ca510f748a23207957552d29e0954c5d` |
| 31 | `instance` | [sum.instIsOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/sum-instisordered.md) | 205 | `declaration-track:3d2358da7ca89db5f9f39303c1346e404751256694c4661353969504ccade901` |
| 32 | `def` | [orderStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/orderstructure.md) | 212 | `declaration-track:3d7dee473bb7f0603846d4c4ee7a3b4c63d846a5caf3938e3bb374c86e10844d` |
| 33 | `class` | [OrderedStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/orderedstructure.md) | 216 | `declaration-track:5c631d47fbd63fc6fe037de7053144c731f190e2d54dfbd6787039b15c93c155` |
| 34 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-11.md) | 233 | `declaration-track:6b208c59faf14741173be576717d3584ea5fa4bb29b6a4d9c3ae2757968dedd8` |
| 35 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-2.md) | 240 | `declaration-track:18e63dcc8c326b4005750ce75c0ac3b13e9c202b2eb475c9251fd3190f0c89c8` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-14.md) | 244 | `declaration-track:b31dad3c516fc8c235f198b665cf2963d4183fea67762b55b5734ccfa3fd3b6b` |
| 37 | `theorem` | [Term.realize_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/term-realize-le.md) | 247 | `result-track:2bfa63c4b545af27fd0f0abf82165cc5e12137f79afbf7aa31ce246a7688e4a9` |
| 38 | `theorem` | [realize_noTopOrder_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/realize-notoporder-iff.md) | 252 | `result-track:b4cdd3d491aa993a219354bd66fec1fbbd52b5e6cc650444d0404dbbcb5f5c9d` |
| 39 | `theorem` | [realize_noBotOrder_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/realize-nobotorder-iff.md) | 260 | `result-track:a71c8805ee39aab64a8480c02401ba8c98d7e0c9674908a750c57c6a6f9111dd` |
| 40 | `theorem` | [realize_noTopOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/realize-notoporder.md) | 271 | `result-track:788868b4f44e95e1816f898fe4e27128db06499ff65bbb04e5e952f2736e4c19` |
| 41 | `theorem` | [realize_noBotOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/realize-nobotorder.md) | 275 | `result-track:0311aa7e0950e8482f218ff49cac3eb3e8e6dcb8ff866483a8b37358e3376485` |
| 42 | `theorem` | [noTopOrder_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/notoporder-of-dlo.md) | 278 | `result-track:80ca9703c42e9ecede6215e3207d773148f706a87e1b0bfec62ac52ee78fdbd3` |
| 43 | `theorem` | [noBotOrder_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/nobotorder-of-dlo.md) | 282 | `result-track:86764273c3ee3dfcaa10a0ea7d6fc87dbbcef59aab99b583e0d5e1438d581097` |
| 44 | `theorem` | [orderedStructure_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/orderedstructure-iff.md) | 289 | `result-track:96741ca14bfed2371c34ba81c4741148717f99ddbbe335d7489bddb00a60f091` |
| 45 | `instance` | [model_preorder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/model-preorder.md) | 298 | `declaration-track:fdf543424ecdf5d2079d1be9a800ddb33ac2a2eea0552c31d7fad3d1357522ea` |
| 46 | `theorem` | [Term.realize_lt](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/term-realize-lt.md) | 304 | `result-track:ad78e7a83ceda8b12f26833781f947ef24c17c88be5889744ed6da510b554a39` |
| 47 | `theorem` | [realize_denselyOrdered_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/realize-denselyordered-iff.md) | 309 | `result-track:5405d788c0033029303591d9e4aa02d720800b6cfa4cb5e7f2a5b9bd6845016b` |
| 48 | `theorem` | [realize_denselyOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/realize-denselyordered.md) | 319 | `result-track:3ff55a782c367b221321fd2e3e1440c9020a3ad082d96b6b568c406407a89718` |
| 49 | `theorem` | [denselyOrdered_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/denselyordered-of-dlo.md) | 325 | `result-track:0faed51e3921b31d12b1935e09988577b44d2cd93e9b48082d3a5b791fafffda` |
| 50 | `instance` | [model_partialOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/model-partialorder.md) | 331 | `declaration-track:02208e9e2da0e924693900c0a5f3d36d7c816aafc8095a640b1c3e5159139b6c` |
| 51 | `instance` | [model_linearOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/model-linearorder.md) | 342 | `declaration-track:c52e9798aa643a04c528bb7f0452e254866040a5f9682afb54f720ca1a216d46` |
| 52 | `instance` | [model_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/model-dlo.md) | 348 | `declaration-track:bea2197c41267eb675b1890719d17b2d4debf8f2781943ff0fc5beece6eadf4e` |
| 53 | `def` | [leOfStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/leofstructure.md) | 361 | `declaration-track:31883683ba8ac6f8ca1a82bcf770b84ccb763c423226eade82fe4ab1bccf0d8e` |
| 54 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-18.md) | 364 | `declaration-track:ffce28be1aa3badd8a80659a0ece26afee216347d9eb401efb0d5437b761dccf` |
| 55 | `def` | [decidableLEOfStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/decidableleofstructure.md) | 375 | `declaration-track:537b0a90bfcf62ca0ed45738d1338896ed7c16b3b9597ae575730439ea795679` |
| 56 | `def` | [preorderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/preorderofmodels.md) | 381 | `declaration-track:fbce0291081f81d359438b8292945b5a5d2f1a06916592c6280e39f3b9d10857` |
| 57 | `def` | [partialOrderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/partialorderofmodels.md) | 389 | `declaration-track:837b422cb64f38b439cf838d28e5a32fbfd226941800e154c66672e00d4cb311` |
| 58 | `def` | [linearOrderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/linearorderofmodels.md) | 395 | `declaration-track:c810d14da39472d1358436bc267889c40e29bd2bbab417a90f7d59fc5d4722a8` |
| 59 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-9.md) | 411 | `declaration-track:6116bd08b1719e4b3914ed981a291ba07c89b206ca33844e52624d1017e54f40` |
| 60 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-15.md) | 418 | `declaration-track:b7b152fe5612f39631fa797c6e879a6ca88dca46b654dc7cbafcc8501223f16f` |
| 61 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-7.md) | 423 | `declaration-track:55c3999b5cb1e2fc82ca7a7822bb35422e5cf33a985af5f6dd53233cfe461a63` |
| 62 | `lemma` | [monotone](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/monotone.md) | 435 | `result-track:2e6190eb8e3b50126b51f9815a5ba395c10419496fd66baf7cac2ca3e9320167` |
| 63 | `lemma` | [strictMono](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/strictmono.md) | 442 | `result-track:9f37c25ec48868050fdbcc74a8dcfe717c2326551c360ada1854b75d1092c9f0` |
| 64 | `lemma` | [StrongHomClass.toOrderIsoClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/stronghomclass-toorderisoclass.md) | 452 | `result-track:d6c2b76456bfee3f856471794844207cd89020957a022ec166f3295605174403` |
| 65 | `lemma` | [dlo_isExtensionPair](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/dlo-isextensionpair.md) | 467 | `result-track:e7aeae5372fba4aff5020bea0ab72d646bc0abcf6087675c2aff2164d2cb7573` |
| 66 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/instance-source-edition-5.md) | 498 | `declaration-track:4a25758db422177b04d1352a077b03234a2f01588bbfcc7ebea1a143063a8554` |
| 67 | `lemma` | [dlo_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/dlo-age.md) | 504 | `result-track:7c11ca58f43d397c91e5941418acb83323596bf000973f1304f0578d18e400e9` |
| 68 | `theorem` | [isFraisseLimit_of_countable_nonempty_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/isfraisselimit-of-countable-nonempty-dlo.md) | 518 | `result-track:3221a7175fb8a8d01418855b5602cd914522dc2e7f78846bfdea7ffd48cf3f2e` |
| 69 | `theorem` | [isFraisse_finite_linear_order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/isfraisse-finite-linear-order.md) | 525 | `result-track:8b76ced696938d5491ae5868a0798da8e1771591cea1c11ea4f01847fffc2ea7` |
| 70 | `theorem` | [aleph0_categorical_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/aleph0-categorical-dlo.md) | 534 | `result-track:5483f3e2ea75409895c4d8354e558e9fe3ee020682ba461b6cb2325e351a814d` |
| 71 | `theorem` | [dlo_isComplete](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/dlo-iscomplete.md) | 541 | `result-track:b2b19dd1ec55c6a726faefe9044766ef8a9d0f0a150f929fe6af1b38f2e7b774` |
| 72 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespaced.lean/declarations/example-source-edition-2.md) | 560 | `declaration-track:b43377801514b811c0ad5d14fc4efc6851d1a90bd17c5c242a7572366cc37f4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a3855c2d5338bb660c5f823441fc54a3312df7953fbfa86281b53274d4c25a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variant1b1ad6e1c2249d14afec28bce33829522fda20d22a65905827a9e14aeea27d9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
