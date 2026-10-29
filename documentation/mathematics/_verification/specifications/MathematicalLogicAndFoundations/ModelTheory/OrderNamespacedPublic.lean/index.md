# Verification target: Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53ed432b63cfb2f301ff0b3411f7c47ed2e05292",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53ed432b63cfb2f301ff0b3411f7c47ed2e05292`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean.json)

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
| 1 | `inductive` | [orderRel](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/orderrel.md) | 78 | `declaration-track:ee736179c3d83dc650fb8ead66de63a107a678c1ee7cd8c5fed1fc31c9785f42` |
| 2 | `def` | [order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/order.md) | 83 | `declaration-track:57fc92548f12cafb83f8de2b5394a3579712259337677f4f0d30ca09cb31201a` |
| 3 | `lemma` | [forall_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/forall-relations.md) | 89 | `result-track:4c793e67041687093f47ea6a3183a6fcd09e920d5e37c3e692275ae6cbac39db` |
| 4 | `instance` | [instSubsingleton](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instsubsingleton.md) | 94 | `declaration-track:1851c1113f9430c711c0b9917c930ab85801a9abcb4094dfc75efb9d36e57764` |
| 5 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 97 | `declaration-track:70352a5526ec9b2a7861037233bdb1473b0632583685ca4822e9804de0a03acc` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance.md) | 99 | `declaration-track:128ed97da5c937a28b9673380ee61cae46d46ec524c1f7844e42c7f6ee9121ac` |
| 7 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 104 | `declaration-track:9112500c7be5f5d8635b8a323fb16591fa51fd08b273c16d4e61d52fac3bf4cb` |
| 8 | `lemma` | [card_eq_one](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/card-eq-one.md) | 109 | `result-track:9be9252433262185c8f6a438b4c75a8c2eb815c3c333c76102e35b8ea231ce16` |
| 9 | `class` | [IsOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/isordered.md) | 114 | `declaration-track:9b883e16fd6dc6540b4173d8d6a04ff08cbcfad77accace4b8856089a07e6085` |
| 10 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 120 | `declaration-track:4793dc89e642607f0013f5c2ca2a601ebb8f23b1bd2408f28dde6e85c0d65b74` |
| 11 | `lemma` | [order.relation_eq_leSymb](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/order-relation-eq-lesymb.md) | 123 | `result-track:8efcef270330db0ff5396d1cd7d1f9fd24ce9fda6fe7dd9655a4aa7c77f3f01c` |
| 12 | `def` | [Term.le](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/term-le.md) | 131 | `declaration-track:3c0a28496fcbb693d0fa028b67961cf7fb54b1be0cb3d667c96504dc9050d6d6` |
| 13 | `def` | [Term.lt](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/term-lt.md) | 135 | `declaration-track:3e66a625c59d8598dc6b4cdeb2df1717c87005964442f7b63cbb4e31003f8dc0` |
| 14 | `def` | [orderLHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/orderlhom.md) | 142 | `declaration-track:ecb599fbadfa3c91e19a64606f082d0c688c2e7ef5bd62278fd5f4b1c83b7d81` |
| 15 | `theorem` | [orderLHom_leSymb](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/orderlhom-lesymb.md) | 146 | `result-track:624c9a852544feee9f3a28948ea088b6672aae6a0fc5eac15a64fdaed94086df` |
| 16 | `theorem` | [orderLHom_order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/orderlhom-order.md) | 151 | `result-track:293fd40cf24e657d20ff264026e8b04c03fcf9bd50798201be89bfb73f30e71f` |
| 17 | `def` | [preorderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/preordertheory.md) | 155 | `declaration-track:1cde8152a18ecacbc93d7bf6ab112b787324ba3be3866f7c10324d82ce50f475` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 158 | `declaration-track:488e5d42cb22d972550fd20241eec289425829ace4b9f8ce8a93ae88a7d027c4` |
| 19 | `def` | [partialOrderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/partialordertheory.md) | 163 | `declaration-track:1cf0e856ddc35a758737bbe7cb5b6afd2fce754620c3edec82ae9e4a59c27a15` |
| 20 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 166 | `declaration-track:42426651839a8cf311494377973d9a0bfaf6975238f7bfa1faa9ff05cf759f6d` |
| 21 | `def` | [linearOrderTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/linearordertheory.md) | 170 | `declaration-track:5cd66d17fbf5de9321a3d52d16e16df76cd0b6d4b8f81642b18ca43d19ad0a5b` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 173 | `declaration-track:7108f3bfd73fbe39f1ac18274bcd507338ecfe9b8b8d1fc7479430c8f7a3ad48` |
| 23 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/example.md) | 176 | `declaration-track:b51cdc94ce1f6e7d018cb597819ea9dcfa8e8c0b4f65ff6b428374b57e6b1450` |
| 24 | `def` | [noTopOrderSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/notopordersentence.md) | 181 | `declaration-track:bb64d17c7ccaa66121804e371401848ab764dc8b3015eb9fff03bfe63f4592a0` |
| 25 | `def` | [noBotOrderSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/nobotordersentence.md) | 186 | `declaration-track:f8f0235a640c4a305279375537d82a783d32200f6f3e6ff5a28c5a2faf80c8a0` |
| 26 | `def` | [denselyOrderedSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/denselyorderedsentence.md) | 191 | `declaration-track:7fd0761b67eceb09085bb00c6b62821cc31bca2674def2cf9cf9d8364a8a8cc1` |
| 27 | `def` | [dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/dlo.md) | 195 | `declaration-track:5433c734e291340380d901e08d17d8842da891c42b529a4760fc92bfa3588507` |
| 28 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 200 | `declaration-track:2fc748dba292e02600e50fd413583189000c99a4bf16e36dacf0260ae0018340` |
| 29 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 202 | `declaration-track:cc65bbf3971a9d9273f0e5006f00fcfb913a22748896dc5d93131c4eb575b1e0` |
| 30 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 204 | `declaration-track:dae3003d01cf6dfd95e90c957447b803954434a42507691e1939efef450f3daf` |
| 31 | `instance` | [sum.instIsOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/sum-instisordered.md) | 208 | `declaration-track:18b24f8bffcf66224dd80fe989a52d8ec8141a247a7bd9d0be73d854d122460b` |
| 32 | `def` | [orderStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/orderstructure.md) | 216 | `declaration-track:7fcd2b36722e6658bf823b2a8cd0745806dbdf042df8edad53558365e20270bf` |
| 33 | `class` | [OrderedStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/orderedstructure.md) | 220 | `declaration-track:48bc60a88a9857bf7769ba8fd9ceedfa420430e21e1d5b401caec06de021c531` |
| 34 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 237 | `declaration-track:1ad91de9acff499f4c9e58282fb1a93efc20a90a3f36cb6f7ffe21305655d735` |
| 35 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 245 | `declaration-track:a4424a326d5f4484d9b9ea8fc50ee83bc0c4ca61737a958dd0cb2b13f822c462` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 249 | `declaration-track:63a3749a1cda78263b184a93589cc61ae61867bc7fc80c1d74fcee6e3b549d0e` |
| 37 | `theorem` | [Term.realize_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/term-realize-le.md) | 252 | `result-track:ae784a2d36d7cba4fff66c55ad3ef4b0b530db776f8e9c5f4f2dfce3eb1149f4` |
| 38 | `theorem` | [realize_noTopOrder_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/realize-notoporder-iff.md) | 257 | `result-track:e375b6dcfe47faabe260b47b2599fe2591368e4ced8e3dbecaedb4cb1de74d6d` |
| 39 | `theorem` | [realize_noBotOrder_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/realize-nobotorder-iff.md) | 264 | `result-track:bc83aef96340722fb2942632524bc94ac5045b6eae34d20f17a6aa841b92bb32` |
| 40 | `theorem` | [realize_noTopOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/realize-notoporder.md) | 274 | `result-track:d69e01bd14430d7d8892994a8ae14e6df0408e8789855ce7f0c10ed2a3e98ae6` |
| 41 | `theorem` | [realize_noBotOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/realize-nobotorder.md) | 278 | `result-track:7681aa114070e95a40b38daf2f390d18e5706107ccf26a369d552dfe465a14e3` |
| 42 | `theorem` | [noTopOrder_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/notoporder-of-dlo.md) | 281 | `result-track:1817543fe2dc3cafef1bab25d2a7b66ec6104569c08a7ff9245b48111d0359fb` |
| 43 | `theorem` | [noBotOrder_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/nobotorder-of-dlo.md) | 285 | `result-track:a817323a341f9f8f7ce606b0dd05bd9774052aff30bdb8a6fb105b70dd21a432` |
| 44 | `theorem` | [orderedStructure_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/orderedstructure-iff.md) | 292 | `result-track:b0a9ddb8d2fa344232394e794704e2d98e01b5e1eecd22120119149606da0000` |
| 45 | `instance` | [model_preorder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/model-preorder.md) | 301 | `declaration-track:4638fd6dc9c1d4bd0456615398b98a52eb3dd5e0969bc4053a65bf426be5b542` |
| 46 | `theorem` | [Term.realize_lt](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/term-realize-lt.md) | 308 | `result-track:455e20df570e1dba402eb452f7b7cc5ce25affb894b798a4c2bbae655cbb880d` |
| 47 | `theorem` | [realize_denselyOrdered_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/realize-denselyordered-iff.md) | 313 | `result-track:f8cc65ca22174fc9e133dfbd253bf25c276eda9777d4fc5daebb74a91ed2635b` |
| 48 | `theorem` | [realize_denselyOrdered](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/realize-denselyordered.md) | 323 | `result-track:cda439ad6bd1f10b36ca33abbfe9912ca24efadbff1e023699014846e8f0531a` |
| 49 | `theorem` | [denselyOrdered_of_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/denselyordered-of-dlo.md) | 329 | `result-track:c4d8cc1c3bc525429318b78f33d6ce5da1b2370dd6ef0204f89c8cdaa36e84a4` |
| 50 | `instance` | [model_partialOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/model-partialorder.md) | 335 | `declaration-track:16bac0273762cdf25844479aaa9d20c20a1c5fbfa5f881b98c9379be7ad4e691` |
| 51 | `instance` | [model_linearOrder](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/model-linearorder.md) | 346 | `declaration-track:5a0406879892a52d8e341a7162cc3c59baf1a6f87a97f5f4cc3799023041da3d` |
| 52 | `instance` | [model_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/model-dlo.md) | 352 | `declaration-track:9d65c6c4c690abe62524813887b18ba4004a6724ef0b3b7fafd4cfc1bd46041f` |
| 53 | `def` | [leOfStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/leofstructure.md) | 366 | `declaration-track:a6b8981f6ff4f056613ef50d10e23238398502562aed7ccea6a5d00323177eb4` |
| 54 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 369 | `declaration-track:3afd0d2fc772326e58bc008eb7e4cc75d00798f8a15837c2187db8ec6e45ce6b` |
| 55 | `def` | [decidableLEOfStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/decidableleofstructure.md) | 380 | `declaration-track:f93d0f1d98af3c47e1cf73949ad508a177d6b5d73b13d0a0bda7bf1bfe530c1f` |
| 56 | `def` | [preorderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/preorderofmodels.md) | 387 | `declaration-track:385b625acc0b4e29c88e391078e53a745e50587de51311616a14784e48e62045` |
| 57 | `def` | [partialOrderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/partialorderofmodels.md) | 396 | `declaration-track:34b61a00391751ea383438f20d45d206462d0814904c2789d75474f8e68cd6cc` |
| 58 | `def` | [linearOrderOfModels](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/linearorderofmodels.md) | 403 | `declaration-track:bfde3138cab02d3073e348e89aaee99ba9eabc78a8b0dd50a9cb86267ed8457e` |
| 59 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 420 | `declaration-track:9a2e0af164bf3f9b73bde68a5c95dc597ee999eb49d9525fa5b9466ea9ecee3a` |
| 60 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 428 | `declaration-track:2c52a45d34de103c9ef2efb79dd3a99c47dbbc66c705cf10737977e1483d1aec` |
| 61 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 434 | `declaration-track:b2cf2a0fff78e7b83254ebb0bc5d08630ca9e6d516dd426ebfcedab37e347773` |
| 62 | `lemma` | [monotone](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/monotone.md) | 446 | `result-track:61decea799045429a67aac984e42a522c6b018e3f8fd4ab70c7dcbc62b188c50` |
| 63 | `lemma` | [strictMono](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/strictmono.md) | 453 | `result-track:6ae25cc724321a6ca94141877e3a8e926530c8fc15fe6453c9c5e46beaa28239` |
| 64 | `lemma` | [StrongHomClass.toOrderIsoClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/stronghomclass-toorderisoclass.md) | 463 | `result-track:39888ec3dfdcf899b5f87e01a5bc4f83a983e9b56163502d27067c831f5b3fe9` |
| 65 | `lemma` | [dlo_isExtensionPair](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/dlo-isextensionpair.md) | 478 | `result-track:c613c3df8e6633b6eed874d414bfa2a7c4d54bc484b448677a5547ba0c848eaf` |
| 66 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 511 | `declaration-track:5f4d34d1cf42f2f94f725485124c3b1d63b3b8876066248873b7649f38b61f42` |
| 67 | `lemma` | [dlo_age](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/dlo-age.md) | 517 | `result-track:85f152e9882628abeb3965568684139b4e5a89de81ac7b30fdada0f7c6922144` |
| 68 | `theorem` | [isFraisseLimit_of_countable_nonempty_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/isfraisselimit-of-countable-nonempty-dlo.md) | 531 | `result-track:fb03c2d1698da610e4fa22d011b69eb102887c490c58f22bbccaae79dca27431` |
| 69 | `theorem` | [isFraisse_finite_linear_order](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/isfraisse-finite-linear-order.md) | 539 | `result-track:64de393b8c7c96966f9d47899a1351b1fbf991358435e7c0e07915b3ee31a69a` |
| 70 | `theorem` | [aleph0_categorical_dlo](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/aleph0-categorical-dlo.md) | 548 | `result-track:b5a5e00cb27ba42ad192f2fcd9453602fbb91a45ebad2067bd6c0c11c88b661c` |
| 71 | `theorem` | [dlo_isComplete](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/dlo-iscomplete.md) | 556 | `result-track:ef6f48448685444912417ea322b88bb6af01bbef6d33f598445a91ae7589de4a` |
| 72 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/OrderNamespacedPublic.lean/declarations/example-source-edition-2.md) | 576 | `declaration-track:ea2b9a411ad29eeff8407f079b128c52dc2f384b7dbffe27f475e05c195bd7c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f5685f8e4c1d3fb6eed1e80307b352199b60ffcde4e0dc55e7c05feb8bbac84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Order/Variante5be4b8b9ac34db7abecfe808fa6874e59a97a2c8a360e0fdd68609f1d37f87b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
