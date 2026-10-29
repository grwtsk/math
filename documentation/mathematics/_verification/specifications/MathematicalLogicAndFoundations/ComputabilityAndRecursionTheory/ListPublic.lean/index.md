# Verification target: List Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c155221615d1381cf2a3dc9bfc9ab4ccd1e78fe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean.json)

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
| 1 | `def` | [prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/prim.md) | 39 | `declaration-track:c6e1e2aa8facde1534dbfedf6967fa7c1b05dcaa0da2aa3cbbeb33784eecbcec` |
| 2 | `theorem` | [list_casesOn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-caseson.md) | 41 | `result-track:249663c6011004ea66a6d1cb160465512db9630213dd31d89dfc15f616891c24` |
| 3 | `theorem` | [list_foldl'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-foldl-source-edition-2.md) | 55 | `result-track:a067c5f3e187bd3803e87e22feed02c64e91513c43d88bcf6fe9aaa9b8a164bd` |
| 4 | `theorem` | [list_cons'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-cons.md) | 83 | `result-track:c8088c6ae9ff2d25bf82f14dbe3984f80211ce71985378281922b5e737c9f0eb` |
| 5 | `theorem` | [list_reverse'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-reverse.md) | 88 | `result-track:74ca6653bfb3ae9740f0a44b3893ebfec20c87d273509ea9cc8937f623d9b6a8` |
| 6 | `instance` | [list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list.md) | 108 | `declaration-track:08147cdcd4a9f9564a1a7de0f40da9fbc8049f05b17ab8f7c7f51820bbe71420` |
| 7 | `theorem` | [list_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-cons-source-edition-2.md) | 142 | `result-track:edd75e28846deb0453b7bcc6e63a90a1c7c940713448ae1933a5ec5aa3adfbae` |
| 8 | `theorem` | [list_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-caseson-source-edition-2.md) | 145 | `result-track:c68caca745c39230dd2664883105e8468176d2c288d713e8ef5dd6596ffe465c` |
| 9 | `theorem` | [list_foldl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-foldl.md) | 151 | `result-track:8acc9f49837c9e77cc2c3e6b7ba55e10b6375d4f8e83db4e8ec68d230c418b94` |
| 10 | `theorem` | [list_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-reverse-source-edition-2.md) | 156 | `result-track:adc8bfcf61ad185e5f40e70b0f05bfda2c2d590540b78629f6da98dd0f7b0c58` |
| 11 | `theorem` | [list_foldr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-foldr.md) | 159 | `result-track:a5c92db5a91bc6cd5f8ffe98e375fc3fc1ba1f35ff6d29d4b970966379350c0f` |
| 12 | `theorem` | [list_head?](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-head.md) | 165 | `result-track:bf981eba7e8947e0a633d7c8d0f7eb6d060c086a64b8b99a1ad30718cee72cc9` |
| 13 | `theorem` | [list_headI](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-headi.md) | 169 | `result-track:ed4444007ca22b762a0ce31c6250ed1c99c78d6de7ebc9c7bcadadd519eaa31d` |
| 14 | `theorem` | [list_tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-tail.md) | 172 | `result-track:0ceec27d3e482217131bbdc23d6305a4ef34a8200db710e6d16e4cf73d6e3ec6` |
| 15 | `theorem` | [list_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-rec.md) | 175 | `result-track:65fd175a235e5134721fe6f4ea6cec759f4f560dbee82500dfb4a5e36ee7d417` |
| 16 | `theorem` | [list_getElem?](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-getelem.md) | 187 | `result-track:b89345461a8bbcdb26ed817bcfa11114b3cef6fa261eb16608ee7ce31007df37` |
| 17 | `theorem` | [list_getD](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-getd.md) | 212 | `result-track:f17a9397c67a82620780b7d8d8d9f2b096e09053a23696ec7ecf1aeabcca8e80` |
| 18 | `theorem` | [list_getI](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-geti.md) | 216 | `result-track:17e6824749a91ba10252a5c60bb093ff0de8dda805f092f47ee7028d4a47ec8c` |
| 19 | `theorem` | [list_append](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-append.md) | 219 | `result-track:0c86de0b869a91a16c88deeb913aa15f4e4e2213716aba6b0e1fc3fb9464620d` |
| 20 | `theorem` | [list_concat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-concat.md) | 223 | `result-track:b0a793a95a535ec15dc0d364eb5dacdb36c2a8af70581540acb147056954c111` |
| 21 | `theorem` | [list_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-map.md) | 226 | `result-track:3aa08598c9cc4c2c0fde6df35feb5facaf1ae280df1deb79a66f7a0b9e4e5782` |
| 22 | `theorem` | [list_range](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-range.md) | 232 | `result-track:b3536a75016a00bf571130fceed688142d546a9316a3335246e153ce9f9a84b1` |
| 23 | `theorem` | [list_flatten](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-flatten.md) | 236 | `result-track:70e3f8c4911c9cff9611d494322205a7057d1031e130159ee738fa4d1bf40f16` |
| 24 | `theorem` | [list_flatMap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-flatmap.md) | 240 | `result-track:248d70b68219d802fb0f469cbbc2c64415a080538c268ccd1a6bf5fd04d4f430` |
| 25 | `theorem` | [optionToList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/optiontolist.md) | 243 | `result-track:c0a360873e1640ea17cf2eaeba1040e68e20650f44c91e8ee34cacd5cf021a4b` |
| 26 | `theorem` | [listFilterMap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/listfiltermap.md) | 248 | `result-track:a39bf91e7e85bff1ea3726630b71c7b61195594e642a3375381bd0b16a945f97` |
| 27 | `theorem` | [list_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-length.md) | 255 | `result-track:ddd9567ea859e6e999f38c0cc5bddd766ec9f7789936a59ba02e8270c764176a` |
| 28 | `theorem` | [listFilter](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/listfilter-source-edition-2.md) | 260 | `result-track:7155b902cc833f2484acc8107c1213a14cf994e949fba56318e094345e58f97c` |
| 29 | `theorem` | [list_findIdx](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-findidx.md) | 266 | `result-track:451715d288746d90088492bc3e77ba1839264b3e95b6f8ee7374bb8760b4a484` |
| 30 | `theorem` | [list_idxOf](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-idxof.md) | 272 | `result-track:c889269907983d94610bab5fbfe1385cbbce650ef731933c9e9b062e0f69ecea` |
| 31 | `theorem` | [nat_strong_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/nat-strong-rec.md) | 275 | `result-track:cb8747a6f3cb01d34c0c1614154fcb808b1f5de7cf1ca78f21bba79df9fbd3e7` |
| 32 | `theorem` | [listLookup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/listlookup.md) | 293 | `result-track:c23e2186a82719281677e453c1d2e90a025f5d1b882b7fafe099e3e851772f95` |
| 33 | `theorem` | [nat_omega_rec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/nat-omega-rec-source-edition-2.md) | 306 | `result-track:e0dd322e8d8a9da1cfb598706f817a7dd5dc7bc699236e837cc3ae87f0366d4f` |
| 34 | `theorem` | [nat_omega_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/nat-omega-rec.md) | 367 | `result-track:d1c1b4a1c1f2d308624701a9cc5561e12b55cd1681af6db171165f703f8a6603` |
| 35 | `theorem` | [list_drop](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-drop.md) | 380 | `result-track:7789b40a98dba577779011c2964a9c33b7ce842df7fab98ad6d6e3ea8f8cbd5a` |
| 36 | `theorem` | [list_take](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-take.md) | 384 | `result-track:538c0b80a03f321c582b994d4f2f016c1027eedc6f9a88c2d0201ec3e67515b8` |
| 37 | `theorem` | [list_takeWhile](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-takewhile.md) | 390 | `result-track:cb079b9f5ccee939a3d884908633fc76e249e46a016fd00c1890113342bf556e` |
| 38 | `theorem` | [list_dropWhile](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-dropwhile.md) | 395 | `result-track:a5f772b1cf9923a22ea72ddef08818a13bdc5a12a51d1fbf443486eef356b431` |
| 39 | `theorem` | [list_modifyHead'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-modifyhead-source-edition-2.md) | 400 | `result-track:ae6fa0ac648173a4b0bffe2a18d67a2e68df3922b9086836171688ae286c4978` |
| 40 | `theorem` | [list_modifyHead](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-modifyhead.md) | 407 | `result-track:844ddb8b4a85765532962d8837e4f1649b386e0a4d4ad40fc68f9b22306da227` |
| 41 | `theorem` | [list_modify'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-modify-source-edition-2.md) | 411 | `result-track:721abadb3292387ddd0d149ab599c316b425c70b08c5e03f2c8d36414be02452` |
| 42 | `theorem` | [list_modify](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-modify.md) | 420 | `result-track:55ca0fb6d9dc6a31d523f1527f6d364bcfff2c7687b26c749d2a5fbf71f27da0` |
| 43 | `theorem` | [list_set](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-set.md) | 425 | `result-track:48c11fc99efa7f82febaf4bb26d796daa3cf4e4322dcbbdbed5f6c25af292a6c` |
| 44 | `theorem` | [exists_mem_list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/exists-mem-list-source-edition-2.md) | 439 | `result-track:6cc275efea0bd23c6d0264e3fa692c31e2a7d03e39469a05527fa75b9004fe40` |
| 45 | `theorem` | [forall_mem_list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/forall-mem-list-source-edition-2.md) | 444 | `result-track:e997b040cd1ff4f38fd2a7228b4cc70b9076fe5d4452256aa7c8839f1717b978` |
| 46 | `theorem` | [exists_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/exists-lt.md) | 451 | `result-track:ea9a1dbce0206b5abb3d94d9b2ae040bd8d57fa1cbf3533b29e946093b1d53d0` |
| 47 | `theorem` | [forall_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/forall-lt-source-edition-2.md) | 455 | `result-track:b0a6028bee6e8349b79cadde998cb8e0df3b6009217e0da7ffa04cada4fee2db` |
| 48 | `theorem` | [listFilter_listRange](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/listfilter-listrange.md) | 459 | `result-track:ac7c641acd4e4953b35dd96476a79895e170b1d33fc9f404033898f3e35e966f` |
| 49 | `theorem` | [listFilter](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/listfilter.md) | 478 | `result-track:04e84e7dbaad61cfc2d9868e65069a9eb62887f5bd0b5439b839c930dff7f25c` |
| 50 | `theorem` | [exists_mem_list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/exists-mem-list.md) | 487 | `result-track:228426740ab44df58f0276c0c192cdcf3113b9128590fe6f451fb995a33c990e` |
| 51 | `theorem` | [forall_mem_list](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/forall-mem-list.md) | 495 | `result-track:328ed1c3b04ae3fdce9a691d89804f07b28c35a76f54267c364472313df1235b` |
| 52 | `theorem` | [exists_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/exists-lt-source-edition-2.md) | 505 | `result-track:f38dd2fab325bca0eedfe22bc9f7adefc7449287bcb0f3d43f7a97d57de87357` |
| 53 | `theorem` | [forall_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/forall-lt.md) | 510 | `result-track:19d9916d99655a6c9c21c6e59703d685de6674d25c900a897628125c858aed43` |
| 54 | `instance` | [vector](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector.md) | 521 | `declaration-track:aa8ba9075c1683ccf19ddd0a4167ce092dafd8472056065abe470f26a2f1df4f` |
| 55 | `instance` | [finArrow](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/finarrow.md) | 524 | `declaration-track:0671417969bec8e21f82aae90d7c9550cd290f633dd9dbc89a80589c26889bd6` |
| 56 | `theorem` | [vector_toList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-tolist.md) | 534 | `result-track:c886360b0e6b18af505e297ec2fee6d1956e14798d8db8774eb17393149bd7db` |
| 57 | `theorem` | [vector_toList_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-tolist-iff.md) | 537 | `result-track:5c9d5fb5058c34ccfa0adfde591275ccd3de0e8137d3b8854626f7766e555975` |
| 58 | `theorem` | [vector_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-cons.md) | 541 | `result-track:50bbb7ad264f033ecd96eceafd337d94a4430906e005510a3a9f0a6b6977502b` |
| 59 | `theorem` | [vector_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-length.md) | 544 | `result-track:d42a4b664d11d3170b88cbb92b729aace5f8acc10b35ca7e160e3b8d74052493` |
| 60 | `theorem` | [vector_head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-head.md) | 547 | `result-track:5012966031a1488ee66723791752b34125f62f715cef548329738d8f3cc6b451` |
| 61 | `theorem` | [vector_tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-tail.md) | 550 | `result-track:0244dca504c1acf096f397c3b9210c0a8a9bf1af972a029bbc8e4571b80109d7` |
| 62 | `theorem` | [vector_get](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-get-source-edition-2.md) | 553 | `result-track:c72b78b2938fe8bf10e9a8e2b2f565ef55ccefb048526b745b2f4a7586ce666a` |
| 63 | `theorem` | [list_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/list-offn.md) | 558 | `result-track:6d2b5a7bf179e9e488ba60a21909a3770d640c453302f5a62ac91aeca71e3f98` |
| 64 | `theorem` | [vector_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-offn-source-edition-2.md) | 564 | `result-track:da397ca7fae0671a54e65df683b771aee8165dd3226042eb757cb46639f3b386` |
| 65 | `theorem` | [vector_get'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-get.md) | 568 | `result-track:ba7bbcc4020f77cf705e82704706ac7655c2a40e6849ec791276b3cf1749c9c9` |
| 66 | `theorem` | [vector_ofFn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vector-offn.md) | 571 | `result-track:2d51e0ab9ee47755e4f1081903fceaf83c1b099f0bce0c6b189d4bb1ea5a23c2` |
| 67 | `theorem` | [fin_app](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/fin-app.md) | 574 | `result-track:bbd788966bf1c07f1034c7d8c873925866523836853f54807d4a688974861b47` |
| 68 | `theorem` | [fin_curry₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/fin-curry-source-edition-2.md) | 577 | `result-track:b96758abb077312d35264c23e0fc9f861fcda71660eb7bafa693bdda84c717d9` |
| 69 | `theorem` | [fin_curry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/fin-curry.md) | 581 | `result-track:741b9299e73d04000464cae0162f891dc50d446d16f84b52f45948928915574b` |
| 70 | `inductive` | [Primrec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/primrec.md) | 598 | `declaration-track:67a9fc2bac9681b3efaa8566ea19fb4d6f6f964aa71712589b29832532d82bf7` |
| 71 | `theorem` | [to_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/to-prim.md) | 616 | `result-track:f62d6b0cba9e10231dd798be073b29a548c8823eeacfacdeba2422b331dc8124` |
| 72 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/of-eq.md) | 630 | `result-track:c9253b915d53121f2e51b0f15cd1be92da8b4a275df551d95e3072e5919c06c8` |
| 73 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/const.md) | 634 | `result-track:64f62bf5ceed34248e37f28010288228c7acc5ea47d7ee929d003265435b3080` |
| 74 | `theorem` | [head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/head.md) | 638 | `result-track:765ad7ecd1ad3c968cd28c335c22a57d8df392be500fb96a18b845949216d7e8` |
| 75 | `theorem` | [tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/tail.md) | 641 | `result-track:f2dde7a15f8f85d6a0fe0532d756c74a4bdc466e3efb157a92ee79e76c1c6467` |
| 76 | `def` | [Vec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vec.md) | 646 | `declaration-track:4bdc07069c3e06e6a17260003df1f24cd7187b529777024b7e9ea68927cd5fee` |
| 77 | `theorem` | [nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/nil.md) | 649 | `result-track:1fa750ecb1c846121d37471ee96ef2523357aa572142caba9ab1c77aef9bdb05` |
| 78 | `theorem` | [cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/cons.md) | 651 | `result-track:b2b451ce6e0178fa9f133f4fd3043c1bea3afa44ae02f586566dc6e2669dfdea` |
| 79 | `theorem` | [idv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/idv.md) | 654 | `result-track:d7146384b3ed566b0c24a08c6dfe995b7a29fc161bf24cac250bda4bf0b73f72` |
| 80 | `theorem` | [comp'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/comp.md) | 657 | `result-track:0c7c6eef4f81bcf7e05dd6457450224d19fa8730b278cc8fd2fac87836677f8a` |
| 81 | `theorem` | [comp₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/comp-source-edition-3.md) | 660 | `result-track:a9925f88f090167399c2bcbcd04480e9c9bc4127c1f9a4e9d50c6aec314d9782` |
| 82 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/comp-source-edition-2.md) | 664 | `result-track:147c291dfbeb1a2cb0929e5572596d56c9f4136420348f51f8e6949caa5bb172` |
| 83 | `theorem` | [prec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/prec.md) | 668 | `result-track:a74ce54d26aadfb1d65fc3d2127620b9a09bb032046822b2a385977be1821fb3` |
| 84 | `theorem` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/pred.md) | 672 | `result-track:92d9e663b45b1e1606c58b3bd230537ef1826354010f3c92cadc5fec9f73c6ce` |
| 85 | `theorem` | [add](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/add.md) | 675 | `result-track:7bf804588f85da0495ef2f2f6a23295a7399c9948375088510c62647b462694e` |
| 86 | `theorem` | [sub](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/sub.md) | 679 | `result-track:7a4932ed95698b09fead9e149eabb5c33f17a4c61cb0b2c6d49e918995eef33f` |
| 87 | `theorem` | [mul](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/mul.md) | 685 | `result-track:2ccb0cfb4d8e730034189c96dc4c74435013e293ec8f5dea3b00db61049d22f1` |
| 88 | `theorem` | [if_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/if-lt.md) | 692 | `result-track:c52b1e79ae962bddf9d12ce412dabcdccdc0c311b45df236f4269cd765031d4a` |
| 89 | `theorem` | [natPair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/natpair.md) | 699 | `result-track:ccc334922bc608a995b3459047ad272a574082719bddb4e2bdb88708789c0bff` |
| 90 | `theorem` | [encode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/encode.md) | 703 | `result-track:fe463521b279337a3cf70fb0267b6c4e2c4550dc2f5c48224864a19b5680d035` |
| 91 | `theorem` | [sqrt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/sqrt.md) | 708 | `result-track:6a85edb33bf0dd49bee8fb4329807436a55ba617185898daccc8be9a27eb7873` |
| 92 | `theorem` | [unpair₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/unpair-source-edition-2.md) | 731 | `result-track:b5a180fcea6a691d6edfa901714fe8381b55454f0af1a9ed252d3131e151f58c` |
| 93 | `theorem` | [unpair₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/unpair.md) | 737 | `result-track:8764efbc1d49842e09d749bf88f45b572ca1b414ed601ae8cab7472664d7c7f4` |
| 94 | `theorem` | [of_prim](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/of-prim.md) | 743 | `result-track:5390d21a7dc78971c10ed988e0d1b3f521a0044aeb7b64206bb0497df100dd5d` |
| 95 | `theorem` | [prim_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/prim-iff-source-edition-3.md) | 763 | `result-track:e6ca17603de6f86896059a73ae38626224939d740db43eca9f2f930b30f2b439` |
| 96 | `theorem` | [prim_iff₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/prim-iff-source-edition-2.md) | 766 | `result-track:8769eb69995a03fede754ffa8304bdd791fe10ec0c14ce3baaf6867e8fb43e3e` |
| 97 | `theorem` | [prim_iff₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/prim-iff.md) | 771 | `result-track:2d731c550233ab46270fb7dd50f70b8b7d8de4d238b0cd840d32f3506d3a6943` |
| 98 | `theorem` | [vec_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/vec-iff.md) | 777 | `result-track:db3255ba22e0ac1d9dede9b596e50c86ce7d896b3e7185cb1042e0d9ae18f202` |
| 99 | `theorem` | [Primrec.nat_sqrt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ListPublic.lean/declarations/primrec-nat-sqrt.md) | 783 | `result-track:447b054163d02b97c53a2dc288c7e74cdc4746b3651f87b00e3853d42190f9f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4d3df6f7a786a785da97771fb34fb3d210ae02478720de8b24313dedfc6f31e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/List/Variant9f8a507084600396bc35779540ab9a634a45db1ca825177c10590e63fc241425.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
