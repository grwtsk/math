# Verification target: Partition Basic Not Mem Bot Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e7e73e5f2b1241bea304697b6c235f34e9b9309",
  "lexical_observation_count": 113,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e7e73e5f2b1241bea304697b6c235f34e9b9309`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Option` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Box.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Prepartition](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/prepartition.md) | 53 | `declaration-track:3d2cf47e4f38a1b71b7730684f444ddd22fc66936b018ac8199880718ad761ad` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/instance-source-edition-2.md) | 63 | `declaration-track:45466e25dfbef0c2ae7335cb88b29467a1e12516359742463039c514a7cb23e3` |
| 3 | `theorem` | [mem_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-boxes.md) | 67 | `result-track:99d0f56d254a08e0719b02018fac2a355f05bc1d4b5b52776b3955be328f4286` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-mk.md) | 71 | `result-track:431661ed598fca328d8141e28c0480333897ec8bba2b59c8434cd0b6ca3a4338` |
| 5 | `theorem` | [disjoint_coe_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/disjoint-coe-of-mem.md) | 74 | `result-track:03510ded77cc4bb85e1a798ab53a3a336b4842ff9baebdc072003d8b37f9011a` |
| 6 | `theorem` | [eq_of_mem_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/eq-of-mem-of-mem.md) | 79 | `result-track:08aa3ad29fbd5febcd63d9418eca3dbc3e4f262eeebcf978432f478525fa7b84` |
| 7 | `theorem` | [eq_of_le_of_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/eq-of-le-of-le.md) | 83 | `result-track:1c4a09cf94fa069207eea8fa1d2e5ac5d44048a1582ede36cebb3c37bbb74956` |
| 8 | `theorem` | [eq_of_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/eq-of-le.md) | 87 | `result-track:7307819e608eb9b78947d5430da90b5ad19ecec287845f856d98cb4ee7fc6909` |
| 9 | `theorem` | [le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/le-of-mem.md) | 91 | `result-track:a927817c4dedd86feb1dd6f0b653f150c85e3ad648c76b53584f69804bcbd284` |
| 10 | `theorem` | [lower_le_lower](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/lower-le-lower.md) | 95 | `result-track:a696cda5f152ffd53ae443b2b4b689ebe3f81de713e23104b03b2f74735ddb05` |
| 11 | `theorem` | [upper_le_upper](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/upper-le-upper.md) | 99 | `result-track:83914eaa2e7cd2fe32302cd86d370eb7b014db86923f7760de88eaf604f44009` |
| 12 | `theorem` | [injective_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/injective-boxes.md) | 103 | `result-track:f71656d65f7a70d4d387713ca646f5304921b6a149fecc40ab25a683fb235b79` |
| 13 | `theorem` | [ext](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ext.md) | 109 | `result-track:f6c0a10b43060872cd85aa15e9967afa8a2f13fc1aa8ee8aeada0080f2c97121` |
| 14 | `def` | [single](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/single.md) | 115 | `declaration-track:aaea1c1a584cf9c67ead9d12e780292c09fbf4ec734639793853945f5fbe3bf5` |
| 15 | `theorem` | [mem_single](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-single.md) | 120 | `result-track:9ff10413ed7e1894fa19937f258b49173a67f9d69fb454eccdfa2c7bed78041a` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/instance-source-edition-6.md) | 125 | `declaration-track:c1b2de04a55aef293a886c981fcd093004485bd66e056939c17246e382daec0d` |
| 17 | `instance` | [partialOrder](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/partialorder.md) | 128 | `declaration-track:0105418aabce2428a317d8a7d97a5fbec0a4473f4a3b182483b89ab22242c036` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/instance-source-edition-3.md) | 144 | `declaration-track:461033ff432f7cc99316b19d4107372f878fe62012ddbdd17fbc0c8df44f36e2` |
| 19 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/instance-source-edition-4.md) | 148 | `declaration-track:883b2a8510b99a8f448c394e1058bce2d9536ea4c590a779d673eda3488f846f` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/instance-source-edition-5.md) | 154 | `declaration-track:8dd9c386f151c2191b6f5564e7367df3dfbe9aa51a3203c1e615c13b386bdf00` |
| 21 | `theorem` | [le_def](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/le-def.md) | 156 | `result-track:3805aac7a44facdff0cd2529d908ae8fe60d227d8db58ec514927af810f3a115` |
| 22 | `theorem` | [mem_top](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-top.md) | 160 | `result-track:6013e3b5387a44ab513937ed7f5ff4f53e53ee94982cc0f46691bca365beae2f` |
| 23 | `theorem` | [top_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/top-boxes.md) | 165 | `result-track:ff15fa821a5938dd75e2b00effafaa91233ba6f8b9f01c2fb96767ac10c5233c` |
| 24 | `theorem` | [not_mem_bot](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/not-mem-bot.md) | 169 | `result-track:a0421fbbc2809b7d689f3174a2caba8e16cb45510f4ddf67506601d9b9bc3766` |
| 25 | `theorem` | [bot_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/bot-boxes.md) | 174 | `result-track:d815aeadf50688d6bd0d8dae4c80371efc58c3872b597868180feb1ce8ea0671` |
| 26 | `theorem` | [injOn_setOf_mem_Icc_setOf_lower_eq](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/injon-setof-mem-icc-setof-lower-eq.md) | 179 | `result-track:d5a6fadb31059d7954b4c2cca865a1d5f69dc9ba8469aec384f50ea147ad0ce2` |
| 27 | `theorem` | [card_filter_mem_Icc_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/card-filter-mem-icc-le.md) | 199 | `result-track:c514ddc9cb80e9b6c82368784794ab5ba0bc676c24e116d909eba3942b078a9d` |
| 28 | `def` | [iUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion.md) | 209 | `declaration-track:ca10d18bb82a9dbf588dffeaa15b9f2dc1f209e759ee3796a3c600d12ce31fdd` |
| 29 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-def-source-edition-2.md) | 213 | `result-track:f579198c1fd0cacee87327509b80bf4c9e11ffa513d757b2ad88c4906220583a` |
| 30 | `theorem` | [iUnion_def'](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-def.md) | 216 | `result-track:3504d9175e68ed18e91f29467413e1a8df2860b1fccfd0450401a896ad2b1b88` |
| 31 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-iunion.md) | 221 | `result-track:07b6d6b46208618361354f69ea9bd55ca53d70a74eaec87e262a5b81e9df45a3` |
| 32 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-single.md) | 227 | `result-track:2b69fdc78c2e78e3dabab6ea00b4b798ceb73511e2adc13290a08c2e2a5a7360` |
| 33 | `theorem` | [iUnion_top](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-top.md) | 231 | `result-track:2e35a76084128956fdf1d81f2f15fd2f0fe0a709386ca161e5742612de53039f` |
| 34 | `theorem` | [iUnion_eq_empty](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-eq-empty.md) | 235 | `result-track:a51bc156a40be94773b973d58982feaf401fdc0e08892c11db73ead59dadcf25` |
| 35 | `theorem` | [iUnion_bot](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-bot.md) | 240 | `result-track:c92f45558afc04c409292748f4a70ebeab6a4e890b15e69ea14a10bff6a17a12` |
| 36 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/subset-iunion.md) | 244 | `result-track:551b4474ff70c66d5587551c36818e4f9b10cf9fc4870d8d13494cbe5d735b33` |
| 37 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-subset-source-edition-2.md) | 248 | `result-track:ea48b503be0daf42873b5b95e54b972bafeed1a4972fc30adaeb3dea7ae06d21` |
| 38 | `theorem` | [iUnion_mono](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-mono.md) | 253 | `result-track:fe8db5a21d8b0dd8e6a2de5b38e4ed6a88eae4b615d88c0700971def20da0e0f` |
| 39 | `theorem` | [disjoint_boxes_of_disjoint_iUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/disjoint-boxes-of-disjoint-iunion.md) | 259 | `result-track:1b28f612d2ff430f2c6ef0ca625f43485de402d5fa98a64f39472d5019a2ee47` |
| 40 | `theorem` | [le_iff_nonempty_imp_le_and_iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/le-iff-nonempty-imp-le-and-iunion-subset.md) | 265 | `result-track:cc9efb4fd64487fc46f1e3d7b7be9bbe607b754cf5534192abda4ffee1b0a3a1` |
| 41 | `theorem` | [eq_of_boxes_subset_iUnion_superset](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/eq-of-boxes-subset-iunion-superset.md) | 279 | `result-track:d49243f2c24c2232cd7d4abd83fbb12639119a0ed9741f357354192d5a3af0eb` |
| 42 | `def` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunion.md) | 293 | `declaration-track:785a548616abe6e4ba62a78b919d5a18525224fe6493f8727fc9ec2f1a0680aa` |
| 43 | `theorem` | [mem_biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-biunion.md) | 312 | `result-track:29395dfbf7b23c34416aa2db2658230abbf6d88026e5ebae413cef8184fb084d` |
| 44 | `theorem` | [biUnion_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunion-le.md) | 315 | `result-track:ca47f315a6b30d9963548487a4a1730293d4dd8162f94e3c491f6ddfbdee4649` |
| 45 | `theorem` | [biUnion_top](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunion-top.md) | 321 | `result-track:6b0247d81e4ef372e26a0c065420665e41075439f969974c447049cfcdb9921d` |
| 46 | `theorem` | [biUnion_congr](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunion-congr.md) | 327 | `result-track:fc18203dfc1ad5c4424fc83b9dcb4d35ef42f9b6f5b820de90aa4d0215070775` |
| 47 | `theorem` | [biUnion_congr_of_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunion-congr-of-le.md) | 335 | `result-track:70eba1376292ea3a89739ec7ebbe59e8abb034a676d412469fc9cd3355060481` |
| 48 | `theorem` | [iUnion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-biunion.md) | 341 | `result-track:c76e842eef176addfd91c24af836404e703afbfd03844cb5f242571caa3d20ef` |
| 49 | `theorem` | [sum_biUnion_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/sum-biunion-boxes.md) | 346 | `result-track:4667939b7591430e71a6cf29b255663e5bcbe7e98c0dafeac3c13d9241731117` |
| 50 | `def` | [biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunionindex.md) | 356 | `declaration-track:bcc5e1601db946565433d631c4184279eb1172702b3193c895703c403485ff93` |
| 51 | `theorem` | [biUnionIndex_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunionindex-mem.md) | 360 | `result-track:339cf3cb19f5a861ea6ac1c283db3e67956846c239eb6ce2dc6c1d5d39e8b908` |
| 52 | `theorem` | [biUnionIndex_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunionindex-le.md) | 365 | `result-track:348f7932c0551eae5d7103c44be20cafe0fa79d59c0b044c9524f353adfcc40a` |
| 53 | `theorem` | [mem_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-biunionindex.md) | 371 | `result-track:ddcf130dd996e2c1382db954ce916c14927f2398eae4c4817bcb05bb313efc6e` |
| 54 | `theorem` | [le_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/le-biunionindex.md) | 375 | `result-track:2420c8ed5db79c894af029fba3d5ff777500450ed67e5d376d0e75abae0c65c6` |
| 55 | `theorem` | [biUnionIndex_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunionindex-of-mem.md) | 380 | `result-track:3110b2112facee47bb6d2ea64a0122211c3d8dd0c2734a9e8706de3b1877a340` |
| 56 | `theorem` | [biUnion_assoc](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunion-assoc.md) | 385 | `result-track:6ab7b1117258ac5de851584693961e7a6373aa8739691d1efc4cca9247d370ea` |
| 57 | `def` | [ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ofwithbot.md) | 401 | `declaration-track:ae29fd031f414173796f4417015e665cba5d817dc1e37887adbb1c806666c1bf` |
| 58 | `theorem` | [mem_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-ofwithbot.md) | 415 | `result-track:90c143f5a9021cbd25528eec096a27b31020d65f82949137d97163e11b390439` |
| 59 | `theorem` | [iUnion_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-ofwithbot.md) | 421 | `result-track:7feeb5de8dd6ecfb147ac02379d96454414829ac5aefefd32f008bd3ec91724d` |
| 60 | `theorem` | [ofWithBot_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ofwithbot-le.md) | 431 | `result-track:d9b734e73e4b18c697efd4458067d94655ed039a1f469a8cdcfb71a56f7bcf63` |
| 61 | `theorem` | [le_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/le-ofwithbot.md) | 441 | `result-track:c408c035aa08cd0bd8c5a7d7bb8016233bd7c60a9276aa2a0a1eae0b3b4fcd2c` |
| 62 | `theorem` | [ofWithBot_mono](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ofwithbot-mono.md) | 451 | `result-track:b06911c9ed9ee61343f1099c0a06316b45a8fc7cfea0aac19747d1921dedfaa3` |
| 63 | `theorem` | [sum_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/sum-ofwithbot.md) | 462 | `result-track:00d34df618197523ac379d3bc3de71e0704c40ff30ecfcb7e7d8e64bcab8c299` |
| 64 | `def` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/restrict.md) | 471 | `declaration-track:97e16a57a0242994b4fc76fa4ad527b5d93d041666144f4501bea5cffb41bc69` |
| 65 | `theorem` | [mem_restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-restrict.md) | 486 | `result-track:17aca22493dd2981ca6817950bfd1a67c6b871d31d6d71ef889ff8526bcc0dac` |
| 66 | `theorem` | [mem_restrict'](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-restrict-source-edition-2.md) | 490 | `result-track:aa9d41cf14d64c232f14da6758e176cc788b4932ab891dbd49ab4843e93edd62` |
| 67 | `theorem` | [restrict_mono](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/restrict-mono.md) | 495 | `result-track:99ac72a88938c19efb426d4f5faadcd653b6588c0cafdd2b3e3045123d4d7269` |
| 68 | `theorem` | [monotone_restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/monotone-restrict.md) | 502 | `result-track:74653bc415932d4a09afc931a9d411477a25b13c6f7ea4752bc6ce5504b280db` |
| 69 | `theorem` | [restrict_boxes_of_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/restrict-boxes-of-le.md) | 508 | `result-track:2c7bd64132c80f3ae748ba6e7032e5a9487b9d06adeeb3348a87ba436c73710e` |
| 70 | `theorem` | [restrict_self](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/restrict-self.md) | 518 | `result-track:e9e51af97675af32d639fcc7fb74a70e509f432b11c78c933647be55d5c4d37e` |
| 71 | `theorem` | [iUnion_restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-restrict.md) | 523 | `result-track:c92fc873f53b843db0bee2564e86b0d36881230ef883e8ac9248f2313202ac4e` |
| 72 | `theorem` | [restrict_biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/restrict-biunion.md) | 528 | `result-track:55c5477d03f7f5e4dfede5adddce86cce765a2b7ecbdc19e5f48c7b28155614a` |
| 73 | `theorem` | [biUnion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunion-le-iff.md) | 540 | `result-track:87872073b95734a8a514fdd9cac9fba87772751ec2f4b68e38e3e53fa4706c59` |
| 74 | `theorem` | [le_biUnion_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/le-biunion-iff.md) | 552 | `result-track:73373e6b1c5c0985fb25abe725dcd02b7983f4b989da88d0ad6812be0037f2ca` |
| 75 | `instance` | [inf](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/inf-source-edition-2.md) | 565 | `declaration-track:ed30a55060f6dcd85f3691ff8953e0832f7f20a7224616cadc17ce4192e0514f` |
| 76 | `theorem` | [inf_def](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/inf-def.md) | 568 | `result-track:52f8e39e1b401f9cf6a9f3c0d2a5f172cdf9834031cf0ed7fbad296a130db670` |
| 77 | `theorem` | [mem_inf](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-inf.md) | 572 | `result-track:c41b7b171f49088b078ea6efb6fedbea6b4f3990485adc3332db4480d2efc01e` |
| 78 | `theorem` | [iUnion_inf](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-inf.md) | 578 | `result-track:bd7aed8923db1750756c6d05c7ed53b498a6077ab07cb0c75bafd93ecbe97dfe` |
| 79 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/instance.md) | 582 | `declaration-track:184aec16f45da173a4de8aa09204f28ad46858822fa978591294528ccbe8c8e6` |
| 80 | `def` | [filter](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/filter.md) | 591 | `declaration-track:53b158d88024067a9b0c16182a436e503599173c2de43bcdfbf6f66872d7e90e` |
| 81 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-filter.md) | 598 | `result-track:47f714b8c7051817e50c420d8aad38e96c0c6b8b6c1d246686e1ada234f352cd` |
| 82 | `theorem` | [filter_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/filter-le.md) | 602 | `result-track:da5e0553ef358c6f0f605ff2cfc7c93ada1f87b364ad2d2ae39872fca1733473` |
| 83 | `theorem` | [filter_of_true](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/filter-of-true.md) | 607 | `result-track:92632de6a334ad206f01b059d739a5c3150db39c982d30618e1a309f49413703` |
| 84 | `theorem` | [filter_true](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/filter-true.md) | 613 | `result-track:e0677d1e0491bbac522a334dc90c6ddc461d715042f14455c60fe09679204da0` |
| 85 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-filter-not.md) | 618 | `result-track:7fb6c043194ac88ec2b71e19e3148faf0d64cb044774e5e03c971130cd0290b8` |
| 86 | `theorem` | [sum_fiberwise](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/sum-fiberwise.md) | 629 | `result-track:934299cac372c7863eb23346e04c425bd023287c348ec48cdbdae2ab21b5d0bb` |
| 87 | `def` | [disjUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/disjunion.md) | 637 | `declaration-track:97d4f0233b229914e1647552000acab605316a03f2fae2d3216542800d11bc10` |
| 88 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/mem-disjunion.md) | 647 | `result-track:94f2b0148dd7dc094d13e478a9ce7afe8a8151d1895110ba92980c2e42efd4d3` |
| 89 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-disjunion.md) | 653 | `result-track:93c554dafb36926b08ffbc48aa84bfc63247bf85c1ad9830fefe5c4942b113c6` |
| 90 | `theorem` | [sum_disj_union_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/sum-disj-union-boxes.md) | 659 | `result-track:20155a20d3d4c06e40773b443e561b7fc4649a404b8dc3655fba50714ed6606d` |
| 91 | `def` | [distortion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/distortion.md) | 671 | `declaration-track:74ed61f990375e5668f16b5946bee25c55ac2c0e61f98331f3ed3b06a48943b0` |
| 92 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/distortion-le-of-mem.md) | 675 | `result-track:99646e1d3b670eca0fa4a5c0a40298f509b211aed49a827b8d3b9dbdf2bcd112` |
| 93 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/distortion-le-iff.md) | 679 | `result-track:5fe8d35c1197f8489a92e592b2591573abe99db178698c645d3f1b8f4f64c39b` |
| 94 | `theorem` | [distortion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/distortion-biunion.md) | 683 | `result-track:220dbea26e546232a93646380e28b6ebdf087cd6fb257260b7cc4052011f0b7c` |
| 95 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/distortion-disjunion.md) | 689 | `result-track:3f95ec48bc87a9c7f6170242c55c720cac33c81504fdd399887ad69ed30a33c9` |
| 96 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/distortion-of-const.md) | 694 | `result-track:f1c1a05b70b1ce1c758edf8251f6f3771e0cf98728246287f5dba0625e7ddb87` |
| 97 | `theorem` | [distortion_top](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/distortion-top.md) | 700 | `result-track:12e73f0992521a8aa9cf1e573ed56e57e4ef65441f8ce430c8a7867cf0cf7994` |
| 98 | `theorem` | [distortion_bot](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/distortion-bot.md) | 705 | `result-track:c67f0674073b4d8a743d9261b31a6a6702cc9e4f3739e102245418cf710d38ca` |
| 99 | `def` | [IsPartition](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ispartition.md) | 712 | `declaration-track:7c53e8791c9a5edfa46a9df8cfd7aaa3a93c6b4151e8f738432b04e828fd5e7f` |
| 100 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ispartition-iff-iunion-eq.md) | 716 | `result-track:8ad1808033d28ce23ee63bded2e4d2e68b96e7c12fa71ee35634a3de64893b5e` |
| 101 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ispartition-single-iff.md) | 722 | `result-track:ea0875e54fd0684dbb67199a1edb12c80044d7366f899f8c16da5701877614ec` |
| 102 | `theorem` | [isPartitionTop](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ispartitiontop.md) | 726 | `result-track:c3471201c6774e41780c77f5190e43c27fd0add79da0e1c1bcb386926fb1e2f7` |
| 103 | `theorem` | [iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-eq.md) | 734 | `result-track:affe14be86460886dccd0528eef4e4d54d14c59a103da9c40eb0467ba8f4c487` |
| 104 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-subset.md) | 738 | `result-track:463a8402a15d6310d3e2df4ff50ce8fc75ac7363e6459dd1a3c2d20c08354b38` |
| 105 | `theorem` | [existsUnique](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/existsunique.md) | 742 | `result-track:cb31b55110e458ed7d2ce2cab25b805b2c85bd2ab1c5d30b51b71f7bce3aec6a` |
| 106 | `theorem` | [nonempty_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/nonempty-boxes.md) | 748 | `result-track:b2796523cb51e4c897cd92c83c4da98e774ddd5987e40cde4408eb278cda3369` |
| 107 | `theorem` | [eq_of_boxes_subset](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/eq-of-boxes-subset.md) | 753 | `result-track:23aeba0787db50e122685da89190ef5eea34418d507b52ec693ee3f44edceac4` |
| 108 | `theorem` | [le_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/le-iff.md) | 757 | `result-track:ac3bd3312adbdca4a77bcef69889947d25e74890a410dd2f0f4114acbf9ee8f2` |
| 109 | `theorem` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/biunion-source-edition-2.md) | 762 | `result-track:dd63fe32fba88021f8223cf9af640cb877e3e76c67d2204c2e6d1fc04214a430` |
| 110 | `theorem` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/restrict-source-edition-2.md) | 769 | `result-track:c813e96b97abd0c748ae81662e9428d34920ebfd38baeeb0d8ce056346501169` |
| 111 | `theorem` | [inf](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/inf.md) | 773 | `result-track:3d82aa29a73afed90045aac79daf67efe9dd6b6b70cf8abb34af709433c2c78a` |
| 112 | `theorem` | [iUnion_biUnion_partition](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/iunion-biunion-partition.md) | 779 | `result-track:0b9c1b129522ddd72a2de6aa92ad5f4cb646029d81ae71ee5028d01f4306b954` |
| 113 | `theorem` | [isPartitionDisjUnionOfEqDiff](../../../../FunctionalAnalysis/PartitionBasicNotMemBotAligned.lean/declarations/ispartitiondisjunionofeqdiff.md) | 786 | `result-track:ad1ad7df5ede4bb89e1ce5c9d6ae65c0d9b6e4ce55d97d674e55e8a50abbcf36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e6105ce02dac326006e6910d84ec344c0f1e0410728540894d398db0764712e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Varianta3a3c53d815e959bce45aaa1131964ea1bbd6647d06aa85f11d22a9552851789.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
