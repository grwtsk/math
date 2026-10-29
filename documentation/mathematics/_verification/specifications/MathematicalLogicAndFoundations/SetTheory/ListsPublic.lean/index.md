# Verification target: Lists Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14758f1ff276b38974f4974f3c19c5fe426581a0",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14758f1ff276b38974f4974f3c19c5fe426581a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean.json)

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
| 1 | `inductive` | [Lists'.](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/lists.md) | 58 | `declaration-track:305798477fd2c62b35b224c733f96f64f11e336ef15326c23a2fe32e4f401943` |
| 2 | `def` | [Lists](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/lists-source-edition-2.md) | 68 | `declaration-track:e05f37b006200a7b1385b1e645c919313fd2f3660a7e958f5cd5e61035883a68` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-6.md) | 73 | `declaration-track:928973cdaf01d525b4e0de4d85275a4823c77dc2f3abb148e9dcd61dce321c0f` |
| 4 | `def` | [cons](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/cons.md) | 78 | `declaration-track:38a6ab9bb7fa3ef98efa76dff8abe6f8b5134194ef751fc8563cfa271bfe27a2` |
| 5 | `def` | [toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/tolist.md) | 83 | `declaration-track:5be1216221d33a4627e93c1c1c8ee16a8ee2cdb256a20a890aa71d9d56cd058a` |
| 6 | `theorem` | [toList_cons](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/tolist-cons.md) | 89 | `result-track:77a45d900ea77df330fd22336438f611fd6633fd468433fb342d60912533610c` |
| 7 | `def` | [ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/oflist-source-edition-2.md) | 93 | `declaration-track:651b829f0d8bf4fac1a8a9af12ef2ad07a18c64871fa25b54c2a8c517a8453cd` |
| 8 | `theorem` | [to_ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/to-oflist-source-edition-2.md) | 98 | `result-track:ba7336f9f9c44c013d789d9e65be7cab364d6eb84548378cccd31370492d813b` |
| 9 | `theorem` | [of_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/of-tolist-source-edition-2.md) | 101 | `result-track:26576e886aced7472f9021073025b4c8a0917aaa86fa6fd98bdd3cc1bdeecf4c` |
| 10 | `def` | [recOfList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/recoflist.md) | 114 | `declaration-track:fde398e718a64bbf0792d43282d59b6ec5b91c089923fa2777580ed675e5e6e9` |
| 11 | `inductive` | [Lists.Equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/lists-equiv.md) | 121 | `declaration-track:f91206b83197d80ca85054991a6735e918fecf717039f399a2986b8ea7e9fc94` |
| 12 | `inductive` | [Lists'.Subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/lists-subset.md) | 127 | `declaration-track:ce937d38e540df2b4a720f0bc866ee76f96e5c39ed0e9743530128b1764b2bf4` |
| 13 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-3.md) | 138 | `declaration-track:65024af9b25709d4c3327b8410907abd9b089a87267e2cfbde7852e7e4279e00` |
| 14 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-7.md) | 143 | `declaration-track:96cdd1bc7461114a93e1758846406348cef05dc73b22372280dfa46ada83deaa` |
| 15 | `theorem` | [mem_def](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/mem-def.md) | 146 | `result-track:4f4008b447043146e1b34487201261122a3874152fc61beedc8d23541e5151a4` |
| 16 | `theorem` | [mem_cons](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/mem-cons.md) | 150 | `result-track:9d12378831fd409689e3a8e52beda60db188c8b7e1615b57d6f5b98aeac5ee38` |
| 17 | `theorem` | [cons_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/cons-subset.md) | 153 | `result-track:6e67905798afffaec0ac8804d4ec5121bf4bf21b98ff1439be143592d8f888df` |
| 18 | `theorem` | [ofList_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/oflist-subset.md) | 161 | `result-track:e260a2425a5a8449561374f12c686b486e532374226bfc386ebfb8e46da7924f` |
| 19 | `theorem` | [Subset.refl](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/subset-refl.md) | 170 | `result-track:4de4e223e93c7b1ffad400bf5d1607545aff54c259a6f87580eaa859e801dddb` |
| 20 | `theorem` | [subset_nil](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/subset-nil.md) | 173 | `result-track:238cd74d34cebab4bbd3722e9825a45fa54d5bb52de670de2fc6db1bbe6cf3d0` |
| 21 | `theorem` | [mem_of_subset'](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/mem-of-subset-source-edition-2.md) | 180 | `result-track:d280fdc6b52a554c495942de42524270a0ad47dbfc9f1e5a4023b457be5c6492` |
| 22 | `theorem` | [subset_def](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/subset-def.md) | 189 | `result-track:de029390807f6a1980d2706287e3284a4d820453511f7ed7fb904064debb686a` |
| 23 | `def` | [atom](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/atom.md) | 204 | `declaration-track:ea661ab75b0cbf7faa9f3f66de7ae6367c38609ff71dc6dea64e06694ad1b5fe` |
| 24 | `def` | [of'](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/of.md) | 209 | `declaration-track:11ae0c1e1ab6e14d178e306c1327600e49555dd20dd0a4da76e6ae20dd8ed8a5` |
| 25 | `def` | [toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/tolist-source-edition-2.md) | 214 | `declaration-track:fa6c92183e3ab0be7b70cfa1ca651012c3110e87bb9b1759237b4789e4aa2149` |
| 26 | `def` | [IsList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/islist.md) | 218 | `declaration-track:d9776222a3b17213b785970e880ea4ddbfccaac41e7493e505d98a8e8a62a6dc` |
| 27 | `def` | [ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/oflist.md) | 222 | `declaration-track:54e94a3ba5e66c091fc24ae16b66a858bfe0495ffca22da07b71da755c94ef6c` |
| 28 | `theorem` | [isList_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/islist-tolist.md) | 225 | `result-track:76db02e6f889624aa791550dd3681dcae2a47e9fe1b3f4294b3be8b20be73995` |
| 29 | `theorem` | [to_ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/to-oflist.md) | 228 | `result-track:a2c86c1666e69288f5ef51cc7c007edd60ac9d0be977bfeb5e08311760783ffe` |
| 30 | `theorem` | [of_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/of-tolist.md) | 231 | `result-track:1ef1158a8303b7f3f5daec50ee0a45d8787b7248d2e71b5328548d3e82716652` |
| 31 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-8.md) | 234 | `declaration-track:be8ba064b1cf7b8119947b5126fb8faffcdfa1895e0dcab45232df2195b2701c` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-10.md) | 237 | `declaration-track:d0099c759d61916eeb7953b308429894516047d1bc0bc9fb9a05e64ed4b95ab3` |
| 33 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-4.md) | 239 | `declaration-track:7ce4f2988abea7e35dae6877a0422ff532007bd104163a7d16aac67528178c93` |
| 34 | `def` | [inductionMut](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/inductionmut.md) | 242 | `declaration-track:5bb72a47841ad0f05a33c35738cd677c8fa628adccf805fc5ddd450a23510a77` |
| 35 | `def` | [mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/mem.md) | 262 | `declaration-track:67057a83ef136ebc140060e5937d30d5efa9cb9320325ce56e41be842a810ab5` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-9.md) | 266 | `declaration-track:cd163e99264bc910c04ec8f56a853beafd83fad984bbe6e0a0bd53e8dde98634` |
| 37 | `theorem` | [isList_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/islist-of-mem.md) | 269 | `result-track:00a64011369ea499f679693bad31505f2a2bb12b8d4f0667c67b2aa03abae05b` |
| 38 | `theorem` | [Equiv.antisymm_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/equiv-antisymm-iff.md) | 273 | `result-track:1fd4506729ce6f7d23ea0dd50c54b3a07499f9ba1e3ef725b40f8f661e8d98e5` |
| 39 | `theorem` | [equiv_atom](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/equiv-atom.md) | 281 | `result-track:406590388965e9641c0394970867759de99ce6cb3a52e1df5b5bbb8f3d686524` |
| 40 | `theorem` | [Equiv.symm](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/equiv-symm.md) | 285 | `result-track:5718b2dc2632e52f73bd7909dd617b0ee89ee6ebde56b4e35d966311cf1f1806` |
| 41 | `theorem` | [Equiv.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/equiv-trans.md) | 288 | `result-track:25d48e54ac161e2eac5e61b2d48b1d93e53333b5eb1a88a0306063343e58843c` |
| 42 | `instance` | [instSetoidLists](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instsetoidlists.md) | 314 | `declaration-track:eb7b5bb6260d33c86ab7af55a8c966fa8c58963b4006ee94f3993ac59541da3a` |
| 43 | `theorem` | [sizeof_pos](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/sizeof-pos.md) | 319 | `result-track:30076a311b4a52f450c3f4c9dd598a7d6eae01d34611742dcba97e2822b38045` |
| 44 | `theorem` | [lt_sizeof_cons'](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/lt-sizeof-cons.md) | 323 | `result-track:d82f1c80b77638358c2d90d178ca046502cf586b9010a5accfd05666d0304125` |
| 45 | `def` | [Equiv.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/equiv-decidable.md) | 333 | `declaration-track:83fed9bb1c68a65df3ae814271dd18f23abf465e63b3a39212136b36e9b3ca21` |
| 46 | `def` | [Subset.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/subset-decidable.md) | 356 | `declaration-track:8976874244cf7659a90d1a6718190c9e5cd489473d604b361f1e57e71f88be78` |
| 47 | `def` | [mem.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/mem-decidable.md) | 370 | `declaration-track:a9bddb78e03093d771dbcdcb458f64388ca9207a4e302b63dd6cfb4c9de9ba59` |
| 48 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance.md) | 390 | `declaration-track:39e77352f5b23c06c22051a1cdb6b338d923e0d248049bcaa7ed5c258fae8bfb` |
| 49 | `theorem` | [mem_equiv_left](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/mem-equiv-left.md) | 399 | `result-track:54480ae0147e0cc5a441f451760080d1ebc32ffcc0298fa0830f9c1aaf0c4986` |
| 50 | `theorem` | [mem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/mem-of-subset.md) | 403 | `result-track:40559baf79cb3bd4fc9800410b8ef39c9699f6a45c89e8634c23732ba7cbde02` |
| 51 | `theorem` | [Subset.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/subset-trans.md) | 406 | `result-track:f59911eebb9978fc95e4bf69e5cd03f2363b503f2c511a1a2955da2cc647f6c3` |
| 52 | `def` | [Finsets](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/finsets.md) | 412 | `declaration-track:7e0439688ca11f4222d75cee76e529ae698285682a142c296bac91d2c2d9bf27` |
| 53 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-5.md) | 417 | `declaration-track:7f870763be1cba8053d05b173576c95d2e9b1d10943ded10ad3f40b6f02b33cc` |
| 54 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-2.md) | 420 | `declaration-track:3bed638372eff66e40181e56add7cb604fc7640aba77f3222aeb9309d3ecc563` |
| 55 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsPublic.lean/declarations/instance-source-edition-11.md) | 423 | `declaration-track:fe318b37f2456b01a8366eba0ce6ef454f650453fa144d2f58a87e57e97c86e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2545f0c33201094a2020391b6cf60fc2532d3c2f72d506416b51a04823ad869 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
