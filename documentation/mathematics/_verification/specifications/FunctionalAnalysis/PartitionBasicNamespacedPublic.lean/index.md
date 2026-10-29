# Verification target: Partition Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61b1912b18fe576f2d4fa513ec6b0e85187d0247",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61b1912b18fe576f2d4fa513ec6b0e85187d0247`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean.json)

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
| 1 | `structure` | [Prepartition](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/prepartition.md) | 62 | `declaration-track:14beffe3f718e8bb5ab184bee70e7129c5c09aac6c744b456981e9122664e23c` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 74 | `declaration-track:de42ff5ef730e87cb10fea777d56f3abc5f97ba8a58b6d44be34213f96fbfd81` |
| 3 | `theorem` | [mem_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-boxes.md) | 78 | `result-track:0d99dc7a5058fcb7031085c95633d013cddb68cc8ded3725f2cc908ed05fe235` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-mk.md) | 81 | `result-track:9a53e64d0a82770ecf3af98ea2c29d8bec62bc701ec9b57f1a09cb4b4b403267` |
| 5 | `theorem` | [disjoint_coe_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/disjoint-coe-of-mem.md) | 83 | `result-track:5ab1daf321a44178ae3b03c209a447b04e070dbd995a045130b67c8cf86da481` |
| 6 | `theorem` | [eq_of_mem_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/eq-of-mem-of-mem.md) | 87 | `result-track:d7aaf5463f6f2a5f265fbea5048cc10d2448155bf920550925476f9dd1fd7b21` |
| 7 | `theorem` | [eq_of_le_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/eq-of-le-of-le.md) | 90 | `result-track:78992df384a8120a20665c300c040aff1a6716d1c63687a971eae78b2577eec4` |
| 8 | `theorem` | [eq_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/eq-of-le.md) | 93 | `result-track:d8ed79433b65497be848348cc902a0a5d76d52cf68d9c3e2d5a17435171ecce5` |
| 9 | `theorem` | [le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/le-of-mem.md) | 96 | `result-track:cbd78d7c92b0d0224465fb05bf9b3feb6fbc6d4a0df391b78a799f069b555065` |
| 10 | `theorem` | [lower_le_lower](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/lower-le-lower.md) | 99 | `result-track:4bf4d71341ddf804d19b0626d3c444db6e0ca016a66659f110250ae55527d122` |
| 11 | `theorem` | [upper_le_upper](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/upper-le-upper.md) | 102 | `result-track:2edab2d7f00cc26351053a51899c587b27a30fcc4fa4b7d52684bf9c5864899d` |
| 12 | `theorem` | [injective_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/injective-boxes.md) | 105 | `result-track:49052106fa6f3e311106c741ad8cc595dd93faf49e34cc31a27b3e1abe5e2543` |
| 13 | `theorem` | [ext](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ext.md) | 110 | `result-track:c531b2727e6b19f2925367c05bd4ba84ab4dcc3604e1a408a7f4084fb6772269` |
| 14 | `def` | [single](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/single.md) | 115 | `declaration-track:dfc85072b1ad4acefadcd1f1bab73ec7f241530b04ebb1c150f7ea45ea44744e` |
| 15 | `theorem` | [mem_single](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-single.md) | 119 | `result-track:44a1b521f4fd901c847450f5b93a06412dcdb0d87c7aa3a97dc7e68fcc37c00d` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 123 | `declaration-track:ec59e89ca9c07a2fc38cd0e090ac9dd5dc06407a4a2af70fb79a02ebb407be0a` |
| 17 | `instance` | [partialOrder](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/partialorder.md) | 126 | `declaration-track:3ded5a91af448c29c533d293351519c6affaf3ee1a485a52c0f4d94a4fc9b908` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 141 | `declaration-track:a56491245528472c93ea3e856109b18063eebc9ab3f5b2507df181b797545559` |
| 19 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 145 | `declaration-track:cebd3b53fce564c7ee7c2508c977eea4226439b180c531aa6acfcade40619d51` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 151 | `declaration-track:8c136caaf72b9faa92908a98da057929193199bc3596081659fd3f951f189ac5` |
| 21 | `theorem` | [le_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/le-def.md) | 153 | `result-track:dca0fbf8ee32629f514af6e14b2818abd339078b39c16df15a65d9521dfc78b4` |
| 22 | `theorem` | [mem_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-top.md) | 156 | `result-track:db57aafa0eb4973179b5b9d970cd42945e9b26dc80287d3818c64e3679035c2a` |
| 23 | `theorem` | [top_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/top-boxes.md) | 160 | `result-track:19e9e8b00f66d88de47349a9c4bbbb791bf575add6ade127e1fcae504fc8e164` |
| 24 | `theorem` | [notMem_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/notmem-bot.md) | 163 | `result-track:ed314352cb54805a0f21f53bec0a049773775281d61bff9c06148550545f7522` |
| 25 | `theorem` | [bot_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/bot-boxes.md) | 167 | `result-track:1f83cde40ce9a6d946b36160d6d43e4226f3c5f1c6da8d604a3285f19714a84a` |
| 26 | `theorem` | [injOn_setOfPred_mem_Icc_setOfPred_lower_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/injon-setofpred-mem-icc-setofpred-lower-eq.md) | 171 | `result-track:c7360e923d9cfc66d6a1eb6512bb2e43f58e732e8814870b50eb72715f9aebfd` |
| 27 | `theorem` | [card_filter_mem_Icc_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/card-filter-mem-icc-le.md) | 194 | `result-track:0be787bb25a83073e823e1815c08e386b48007b259a3a220442a19ca53647661` |
| 28 | `def` | [iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion.md) | 203 | `declaration-track:772d25bae685776ad0bc800db6c3e583f6f91093f1e5863cef3a015950412205` |
| 29 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-def-source-edition-2.md) | 206 | `result-track:c4e0efa802a25ed750c576a6842d0d1010e9c44c904997f1360c5c61a742cee3` |
| 30 | `theorem` | [iUnion_def'](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-def.md) | 208 | `result-track:4189f926b05dad32050ef2441d035df2f3af2dfbcf332df201d09dd918251469` |
| 31 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-iunion.md) | 211 | `result-track:54cac632a5a38823d23f7cbd05dfdcf104cd0f93433f91b8988026cd929da8e3` |
| 32 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-single.md) | 216 | `result-track:e0896385058a2b278af00b6190dd96e9f8a62bbe044b42f93fc13de697b75fb6` |
| 33 | `theorem` | [iUnion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-top.md) | 219 | `result-track:758064d9e5d88d45437213134e4549cb4c9a7f0b7fc71221f463c9b4d92dbaa7` |
| 34 | `theorem` | [iUnion_eq_empty](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-eq-empty.md) | 222 | `result-track:fb06e23f9b622a7f494187a594b1ea0bb46205de7be81e816da9c45cd7949d07` |
| 35 | `theorem` | [iUnion_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-bot.md) | 226 | `result-track:52add0ae54633c34f7052d60f475fc7ce908297c0ea3210309342f1fe2d2551c` |
| 36 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/subset-iunion.md) | 229 | `result-track:2d2b64d3725cb1e4f6d9798fb55d9de7da490230339f4967ef5011c9612a27c4` |
| 37 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-subset.md) | 232 | `result-track:85749483aa052ee7d7ecc14d3f7ab2c319808845ca8cbb92c424cd57fd009e66` |
| 38 | `theorem` | [iUnion_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-mono.md) | 236 | `result-track:6cb19220951a86ad7f41601fe29c9f997ce7990f2bb0d7778ef52aa71e65b012` |
| 39 | `theorem` | [disjoint_boxes_of_disjoint_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/disjoint-boxes-of-disjoint-iunion.md) | 241 | `result-track:61f3b1a46c7a7d3a634c8cb67c775d51fabf76e2cf9acb9939df5bf955128a0a` |
| 40 | `theorem` | [le_iff_nonempty_imp_le_and_iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/le-iff-nonempty-imp-le-and-iunion-subset.md) | 246 | `result-track:9ba5666c8f5708daae7f23d5cbb420a938ff9f3fa0f9bba6edd99839e47a84e0` |
| 41 | `theorem` | [eq_of_boxes_subset_iUnion_superset](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/eq-of-boxes-subset-iunion-superset.md) | 259 | `result-track:d2cc20c12383e87b57dbf7a895fa165a31e7ccf8ebc0c307d472212662e737d6` |
| 42 | `def` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunion.md) | 273 | `declaration-track:176766e15ff12acf602724298bbd1d93b8626e6c674350be7618ab700a9958fc` |
| 43 | `theorem` | [mem_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-biunion.md) | 291 | `result-track:4da5558c8130863fbee33850e008a2562d2b173c8c5378cae8843fcf7cbc35ed` |
| 44 | `theorem` | [biUnion_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunion-le.md) | 293 | `result-track:802fd01b07829254581db4310056e511cd8cbacaa751c1a06c379252b27a4eef` |
| 45 | `theorem` | [biUnion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunion-top.md) | 298 | `result-track:dc9fe507cc41767f009d5ff71b5ba41952163061ec1cdb668c78c83b9e8c148e` |
| 46 | `theorem` | [biUnion_congr](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunion-congr.md) | 303 | `result-track:40ee1d813714044c609b3564be5451d680b6f0d48274739b8af6cd2e0018e7d7` |
| 47 | `theorem` | [biUnion_congr_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunion-congr-of-le.md) | 310 | `result-track:0d9ff3e8010eb2c518989325c51235b25b3ef3d011853ebd6acc756e0071e5c5` |
| 48 | `theorem` | [iUnion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-biunion.md) | 315 | `result-track:259a1400965c2aec0a0554bbdcafdd31599a019f2517b59f4881212fbe84aed4` |
| 49 | `theorem` | [sum_biUnion_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/sum-biunion-boxes.md) | 320 | `result-track:059b724dcb92ae3fc2e9575b68127b1af1655ec084ff95e2da2d330c72ea22bc` |
| 50 | `def` | [biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunionindex.md) | 330 | `declaration-track:7470fb26be38ddb184d855b15d3e97e07fb0eee6c327d9616b57310f6c434b87` |
| 51 | `theorem` | [biUnionIndex_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunionindex-mem.md) | 333 | `result-track:31f3beaf49f2ae83c317738211423b392d4b10dbcba4d47697fc3719d280a757` |
| 52 | `theorem` | [biUnionIndex_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunionindex-le.md) | 337 | `result-track:1347e74aef9c49124af0db46cf489a106516daec0527136414e2801f3bc43be2` |
| 53 | `theorem` | [mem_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-biunionindex.md) | 342 | `result-track:f20cc8b4a08ae53f78ebba516c88589417ac9016649338c4aaca05202395496f` |
| 54 | `theorem` | [le_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/le-biunionindex.md) | 345 | `result-track:0a6e00aeca1934f7b2348b7f2f79b81ccd7617b7dda1f25b4f0c8442640432eb` |
| 55 | `theorem` | [biUnionIndex_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunionindex-of-mem.md) | 349 | `result-track:c9c00f987a0c9a9e215f70260616a2aecc3b69ef673d1eff1951e9addbc72c38` |
| 56 | `theorem` | [biUnion_assoc](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunion-assoc.md) | 353 | `result-track:c93b8e6126d0acd8eebc78f60795a984d2fcefabb5519cc6c9c08fefc8976d56` |
| 57 | `def` | [ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ofwithbot.md) | 369 | `declaration-track:1e8fc2550d43b694f2c5d450f7aa283c330d5008d3a05ff117a6ee9e41fcea14` |
| 58 | `theorem` | [mem_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-ofwithbot.md) | 382 | `result-track:682929008e72d79177e54c77877897458dbdd9ad3d0d84c4e8298f5e7399347d` |
| 59 | `theorem` | [iUnion_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-ofwithbot.md) | 388 | `result-track:5fcf288ac4118d2e9ffd7dcddb4522155d6ea786e245dd0eef50990296c2c719` |
| 60 | `theorem` | [ofWithBot_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ofwithbot-le.md) | 398 | `result-track:8f835fc8203eb82951356fbdb84c9f66ef565acb0b437021ebeea471789e6cec` |
| 61 | `theorem` | [le_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/le-ofwithbot.md) | 407 | `result-track:350f8a221fe0168b30e47d47eca5710aa28a6eaff0449f8417c9af7de5f44da2` |
| 62 | `theorem` | [ofWithBot_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ofwithbot-mono.md) | 416 | `result-track:3a984e61779d46f4914673c74012dd242fd6c1aaa09fdd4dcdf087fa89b06c8d` |
| 63 | `theorem` | [sum_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/sum-ofwithbot.md) | 426 | `result-track:8c8bf68824e4e2262a7e2f2c3942e57d80b6c936fcb279d4357f35ab443eb28f` |
| 64 | `def` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/restrict.md) | 435 | `declaration-track:70c97ed5b7ddfd6707e7309d09f85f8826fd8f334fb85eb95168dbe085e9c192` |
| 65 | `theorem` | [mem_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-restrict-source-edition-2.md) | 449 | `result-track:fd172ca03d903ab853a18a0a3babcca71db7b834dd32e14d4802290f318a8272` |
| 66 | `theorem` | [mem_restrict'](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-restrict.md) | 452 | `result-track:4a38a00569cf4622e10d2a9eb98c6517a9483b2aa6db7aec12c62c8b699c4da5` |
| 67 | `theorem` | [restrict_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/restrict-mono.md) | 456 | `result-track:895d5816283bae204e2ad0c1bd42903d4016a4876d6d93394f278917eef0bc17` |
| 68 | `theorem` | [monotone_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/monotone-restrict.md) | 463 | `result-track:7d493846cf8e9570e0cde08dc60920fd297c0d0068bf37ce5c0baaa3553253f2` |
| 69 | `theorem` | [restrict_boxes_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/restrict-boxes-of-le.md) | 469 | `result-track:e1c7b9e17687b71bdb1e53b103bc315c54a2785c029dbdcf9f0e951f479b56f9` |
| 70 | `theorem` | [restrict_self](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/restrict-self.md) | 479 | `result-track:61dcbfaade4e5146f5a961bfefbea428723d8b6db2f574047c7912cda84b3c8c` |
| 71 | `theorem` | [iUnion_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-restrict.md) | 483 | `result-track:6f3af1a0b3b9690343c812e13780584c02e6c11f2e7a717ecdee4a625e810219` |
| 72 | `theorem` | [restrict_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/restrict-biunion.md) | 487 | `result-track:ad9f29abf54fe54c251b23a6a5ff85becab96ddcbb4d90a7757e1fbc591ceae3` |
| 73 | `theorem` | [biUnion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunion-le-iff.md) | 497 | `result-track:6c0f00702a576b18f9e377bd056ffc098c9bb15a0d551e38c6b1a824f38ea3cf` |
| 74 | `theorem` | [le_biUnion_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/le-biunion-iff.md) | 508 | `result-track:747609458c0e77ec78d1b1f2afe99e4fcc2a4a1ab368aed6974bfad92920348c` |
| 75 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/instance.md) | 520 | `declaration-track:63bfd4c72609bed980d61305a15779ad664e670aa414ae53cfb2cb105966da1c` |
| 76 | `theorem` | [inf_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/inf-def.md) | 526 | `result-track:7892220b15fc24b430f475e6d674f06c6e5a2def0d40d6e9d1a4f3e28dc310af` |
| 77 | `theorem` | [mem_inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-inf.md) | 529 | `result-track:4b9d8bd1fb3192f8ffb8ff3cd6f2a7e7d86263d367e444357fc961c39ddd4837` |
| 78 | `theorem` | [iUnion_inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-inf.md) | 534 | `result-track:a4e6ec38fbb27578c12834148ef56d0342338cad45e5cb259c41b48ca4697f41` |
| 79 | `def` | [filter](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/filter.md) | 540 | `declaration-track:545c17de84a33c212030e24112c89a088f6122e2749080642a8e611311d6f43a` |
| 80 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-filter.md) | 546 | `result-track:946b120c63b3d6a8ba3ea41157a6e1958947c0dc756f3220531c60db4ad19e77` |
| 81 | `theorem` | [filter_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/filter-le.md) | 550 | `result-track:c2b586fac41f1ff306816c31066ab15bc934099759495c2effcb899c8938287b` |
| 82 | `theorem` | [filter_of_true](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/filter-of-true.md) | 554 | `result-track:fac8a83cb0c86b33501f6816031e142091c4a760d32ac417cfd7025e42a4adab` |
| 83 | `theorem` | [filter_true](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/filter-true.md) | 559 | `result-track:615719dc5b36466078f4157ceb4f47f1b68ba17cf91ff1885fc521eed96a5323` |
| 84 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-filter-not.md) | 563 | `result-track:be0cabea946e49de4d26e86b6e68d356644659bfb3ce9e7742b7f3ff595abdea` |
| 85 | `theorem` | [sum_fiberwise](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/sum-fiberwise.md) | 575 | `result-track:b6334dbd44607b10a1a481fa4ddcd91d0e535af9313d602e13ea34b1c8277877` |
| 86 | `def` | [disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/disjunion.md) | 583 | `declaration-track:6274861626f2dba0c880b7ee48a459e6ab7efaa1a14c4f6ac1f610e320609318` |
| 87 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/mem-disjunion.md) | 592 | `result-track:7e3f6550e2c7cc46c554369a86e1bee8ae4156f232a0e0522a7831ea41a2d7e3` |
| 88 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-disjunion.md) | 597 | `result-track:3bb28586a25e65374586ae374dff95e09394fffb900f680d45b4e00afe51bd1c` |
| 89 | `theorem` | [sum_disj_union_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/sum-disj-union-boxes.md) | 603 | `result-track:7cba180254055673ea887348fed49298a1eca0ec771ee8df89b8d3b517b26cf1` |
| 90 | `def` | [distortion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/distortion.md) | 614 | `declaration-track:b1a2e09dfaf1feb6378d18e07fea606a17891dc830efa01a5e14afef12120f76` |
| 91 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/distortion-le-of-mem.md) | 617 | `result-track:76930942b5fc78b94ba6a3cf52620dfd1e83786d4619d1bba345c1fe352e986e` |
| 92 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/distortion-le-iff.md) | 620 | `result-track:8d0eaee25865b180ad98e4b5753978ec75da5187282f9248fa8d3748370e135a` |
| 93 | `theorem` | [distortion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/distortion-biunion.md) | 623 | `result-track:77eb301a288f991b0e679d7e5d160ff7d0e2c8ef3c23e19bcd0c7594d26df994` |
| 94 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/distortion-disjunion.md) | 628 | `result-track:dae58461e990cfaf30fb871b69311459b67363b55e8fc4c13fc7971e599d181c` |
| 95 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/distortion-of-const.md) | 632 | `result-track:613b96e45da0409df1425336ee4e4a8bbc6d094cd2f7e1c03e7c7291769c46a7` |
| 96 | `theorem` | [distortion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/distortion-top.md) | 637 | `result-track:f75dfa435fd72b07aaab3ef6904cd289be40f4c43bc05e472a182ad49d88d561` |
| 97 | `theorem` | [distortion_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/distortion-bot.md) | 641 | `result-track:300d3f6f17867d08487ecab37ac7763809d1069383643d64f8436af76fcfb04d` |
| 98 | `def` | [IsPartition](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ispartition.md) | 647 | `declaration-track:b71ce7c56d9b8b5c97fb0add8708c4836cc26a8e3439b39daa9841c8d5d1804d` |
| 99 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ispartition-iff-iunion-eq.md) | 650 | `result-track:61d65b466c84e3e4d64497a36f8246a8c2740fc3c5f10662fd3ebcd33dbe4963` |
| 100 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ispartition-single-iff.md) | 655 | `result-track:e7f71c42ad6d4a69a7f097e1d0b1f6e9a651a6450d38a77c73a8756fa477164b` |
| 101 | `theorem` | [isPartitionTop](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ispartitiontop.md) | 658 | `result-track:8be3496937398f4448139366de48ac4c6141d2d74067262c1d19c4aed502b6c5` |
| 102 | `theorem` | [iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-eq.md) | 665 | `result-track:a66e179985538308b78efbeadb232cedc9b3dd6b6195ec86e153217c3a71d78f` |
| 103 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-subset-source-edition-2.md) | 668 | `result-track:ff12d553058e69a6ed9e95f697effec44c80ce1ced88c599f36689d800715ba1` |
| 104 | `theorem` | [existsUnique](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/existsunique.md) | 671 | `result-track:89303cd20d350682097f2ee20c9c7c25de4a12c97b3c7c88b8600e1799653d0c` |
| 105 | `theorem` | [nonempty_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/nonempty-boxes.md) | 676 | `result-track:15a108a8cb2a10274359702e4d8ab4a5f5ccaf6577bdbcbbb593a3e3a2a8cd48` |
| 106 | `theorem` | [eq_of_boxes_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/eq-of-boxes-subset.md) | 680 | `result-track:268e33e740317ccf9e14b33ffb2ed2a49ef154aa3f8efa802586d864c94e4583` |
| 107 | `theorem` | [le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/le-iff.md) | 683 | `result-track:ee23d40bc2d7a82e0ea5f34bc7e3d7e5ca7fc381813dcce25d670bdd118b6e2d` |
| 108 | `theorem` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/biunion-source-edition-2.md) | 687 | `result-track:90fc91e1504ebce78d6541487dfdfc68c2ea81b70a1b7b4d42a06ad397110465` |
| 109 | `theorem` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/restrict-source-edition-2.md) | 693 | `result-track:cdc83fd0e78a24b1bc541399dcf0092bb8feb2bf375002537703df4efaefb4d2` |
| 110 | `theorem` | [inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/inf.md) | 696 | `result-track:d835ded7557012ce6d6f9fa08684c69d29bc21783474f2a34f8b829701f4ac3d` |
| 111 | `theorem` | [iUnion_biUnion_partition](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/iunion-biunion-partition.md) | 701 | `result-track:5d4d93f93d403e5f8262a6e65bab3fa4ab2a27f1ef58dafa7fff531dcf441271` |
| 112 | `theorem` | [isPartitionDisjUnionOfEqDiff](../../../../FunctionalAnalysis/PartitionBasicNamespacedPublic.lean/declarations/ispartitiondisjunionofeqdiff.md) | 707 | `result-track:124d1e48b7420978b2f2db1b1e7b10ba744b6fca430a79f28fc4f855e3581f09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc6abcf7db9a447e012e2e2fa998fb52819de43bb3bb3314380ef887d2f5d348 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantb38f0c9d014f2c69908d3de86a3384b65d8f0ec49b323455cb0e2949dab97051.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
