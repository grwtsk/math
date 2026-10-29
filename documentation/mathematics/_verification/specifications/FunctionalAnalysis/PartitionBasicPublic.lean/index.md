# Verification target: Partition Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "502475e1069d68185b8cbc6864f656017fd924a6",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `502475e1069d68185b8cbc6864f656017fd924a6`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean.json)

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
| 1 | `structure` | [Prepartition](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/prepartition.md) | 54 | `declaration-track:c778821e5c4d44df401e96fd98707bf68540205f5970163c7ead8395d1d35041` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/instance-source-edition-3.md) | 66 | `declaration-track:81ccd96d46b46a167a19339812b5085e3d6110a426a37c01c126d79653353d36` |
| 3 | `theorem` | [mem_boxes](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-boxes.md) | 70 | `result-track:09f5d1ecf10436d57825a2e434daa23cc55f4e4a82b3c9800176a7222150f6aa` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-mk.md) | 73 | `result-track:8b985398ca2d31d7aaa3c36f15b3af8473723dc01bd35a7d7f2ee647ee8fe4a0` |
| 5 | `theorem` | [disjoint_coe_of_mem](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/disjoint-coe-of-mem.md) | 75 | `result-track:862fa4f1dc5babf5969ad516a37fa210b117ceb8c027a1ae7d8597ebc885890a` |
| 6 | `theorem` | [eq_of_mem_of_mem](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/eq-of-mem-of-mem.md) | 79 | `result-track:b12ba0f9406211d482b50841bd9b0aa993aa7a178536df05eb29c9385bc49e07` |
| 7 | `theorem` | [eq_of_le_of_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/eq-of-le-of-le.md) | 82 | `result-track:6cda0f4655acaa7dfe3b226552c7dfb0d877a40dabe9e8dba192ab847ecb37ed` |
| 8 | `theorem` | [eq_of_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/eq-of-le.md) | 85 | `result-track:dc035b5eb48ceb16459ae6b44469594ff84b28346da52f6d176df1b60dc24348` |
| 9 | `theorem` | [le_of_mem](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/le-of-mem.md) | 88 | `result-track:38669c5d45b34ad2599e29fc200cd03a1ce8bc9eddc630e4067a6f0e2d133431` |
| 10 | `theorem` | [lower_le_lower](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/lower-le-lower.md) | 91 | `result-track:4646d5a607c488534694b13d0a1a147eb0b1cc3f66ec875b98f14a511394aee4` |
| 11 | `theorem` | [upper_le_upper](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/upper-le-upper.md) | 94 | `result-track:7b1fc3599011dfeccdfbedfd0a08442dbffc039dc2c7e3c74b1d16b20ec04d6f` |
| 12 | `theorem` | [injective_boxes](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/injective-boxes.md) | 97 | `result-track:74181a4c2f4c181f7d163bf7fd34413cd4e4f1b69cd1cfa0f5f54a768fbf2908` |
| 13 | `theorem` | [ext](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ext.md) | 102 | `result-track:e37ac2b282fd99248d0f24ce6605e357fd45e6dc0973c1f7502d00b5aeaece30` |
| 14 | `def` | [single](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/single.md) | 107 | `declaration-track:548297d9945240847aeb4397d3dd64e0c222367b7fde22589caac19882d652e9` |
| 15 | `theorem` | [mem_single](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-single.md) | 111 | `result-track:946d611bb9a56418cdbffbf08fefcf8b61fd743d49aaf62360eb8f3a5cb55f61` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/instance-source-edition-2.md) | 115 | `declaration-track:4ba530d5a12d7048c7ae5d5dfab96d55495b87ac7a52ebe17c0b0ec3190e44bf` |
| 17 | `instance` | [partialOrder](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/partialorder.md) | 118 | `declaration-track:2e844d7f69184fcbdd1fceaabef395289ac3f65cf95900bb5b61eb223619713e` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/instance-source-edition-6.md) | 133 | `declaration-track:e6bfafc967e1129a495b095345b80009adaa52a4d5d547611c8281825f0c6d5e` |
| 19 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/instance-source-edition-5.md) | 137 | `declaration-track:d415545171ee7bed83598dd6ba2bb22339e0caacda002d9064c21390bec28778` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/instance.md) | 143 | `declaration-track:379fb41cd879f4a60ddcd0af0ec7dc21723f71550902825235461249d659c94f` |
| 21 | `theorem` | [le_def](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/le-def.md) | 145 | `result-track:309ed840f955d1d9c8087ba5347f739feb88d19f30863b886cfc56c5433ad900` |
| 22 | `theorem` | [mem_top](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-top.md) | 148 | `result-track:6626644cac187c72aff05bd93f26cae27e0bc4da200587de863e47e259ed48d2` |
| 23 | `theorem` | [top_boxes](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/top-boxes.md) | 152 | `result-track:6100dd80917ae3ccd6c889200fa8db6480968f6496c0fcf40e2b637a5c4fd943` |
| 24 | `theorem` | [notMem_bot](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/notmem-bot.md) | 155 | `result-track:0900e3b5358136c8d4f419bd383ff391cf9bb092d4adb792b9d1d6ecf5c8ca7e` |
| 25 | `theorem` | [bot_boxes](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/bot-boxes.md) | 159 | `result-track:3f02f69858368d14ec70d5eb5752e36df526fa68d8e9fa0cccd093a12df24d9e` |
| 26 | `theorem` | [injOn_setOfPred_mem_Icc_setOfPred_lower_eq](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/injon-setofpred-mem-icc-setofpred-lower-eq.md) | 163 | `result-track:631e13250ba5d1ca09869fe64ff97609c811b4ae7d2386dbd1763afe5b83f9a8` |
| 27 | `theorem` | [card_filter_mem_Icc_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/card-filter-mem-icc-le.md) | 186 | `result-track:2753e33417cad71cbe4f4275fadd41d18ddb519de3adbeafed7ecafc3545a803` |
| 28 | `def` | [iUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion.md) | 195 | `declaration-track:84d91bbc310d257014d6c0ef8e5c60c8be9201af557beb122c63c058391cbfb0` |
| 29 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-def-source-edition-2.md) | 198 | `result-track:77112f4fa57c657a8dce730bb1c8269cbdf3429a3fdd633e7dc4cba18b7cbfd3` |
| 30 | `theorem` | [iUnion_def'](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-def.md) | 200 | `result-track:302d1a5a8e4ba59af7bd7bcead2e85bc2b37358c0e9363f933f58aa5812544aa` |
| 31 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-iunion.md) | 203 | `result-track:b8c761e3d6b35e97912e82668159b3a0122d2e3e1b7cbae90173f8471574f4db` |
| 32 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-single.md) | 208 | `result-track:863b43c8b20cb63d2c2dd6886f085b47c2fbf8858cd2b6df773b7c0b0253f683` |
| 33 | `theorem` | [iUnion_top](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-top.md) | 211 | `result-track:084747a839c1dab0eff22027e87eff96472090aa43c4f1b74ceca016daa5bc0e` |
| 34 | `theorem` | [iUnion_eq_empty](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-eq-empty.md) | 214 | `result-track:33eed2fea609aaf6beeb14632c2e33db410d8db93386136734138e24e12e93ef` |
| 35 | `theorem` | [iUnion_bot](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-bot.md) | 218 | `result-track:46e5110bb7d1487fee4eb9c878c94ae5ac337bd2c4b455a96b8e3d532bae6f27` |
| 36 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/subset-iunion.md) | 221 | `result-track:d8d4732812392844cab0672477044b9aec9519516b6e2662e2df185e169a3529` |
| 37 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-subset-source-edition-2.md) | 224 | `result-track:7e04ea29b14824ea04b7e1d9b682f4682bedaa9b438582ba1d85dfde6d2e9d5e` |
| 38 | `theorem` | [iUnion_mono](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-mono.md) | 228 | `result-track:678d6a27f90d53eb8b2d9b9bd2feea057b6feb0c629c6be846793c7b2bc6105c` |
| 39 | `theorem` | [disjoint_boxes_of_disjoint_iUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/disjoint-boxes-of-disjoint-iunion.md) | 233 | `result-track:39afccb6ddb997754bbe8bee0e85791fe4ce7462f3fad843071634838dbd10cd` |
| 40 | `theorem` | [le_iff_nonempty_imp_le_and_iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/le-iff-nonempty-imp-le-and-iunion-subset.md) | 238 | `result-track:6bdf27b6b1b6fdf306793a22ee9253f670220522cc9e12f8fe8a4798490def28` |
| 41 | `theorem` | [eq_of_boxes_subset_iUnion_superset](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/eq-of-boxes-subset-iunion-superset.md) | 251 | `result-track:d81af8154674b618304d9632628e8ed1b85471f01eb4ad687dc115d286700869` |
| 42 | `def` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunion.md) | 265 | `declaration-track:d9e807f2ad88c420c0adcf59ed312fce2c8885f4687fbd1f79e5a7bc87298ba7` |
| 43 | `theorem` | [mem_biUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-biunion.md) | 283 | `result-track:090ac21e3b2d4bfa3211a6cf2e585b24596d2948c5eb492f42216cd2186c1df5` |
| 44 | `theorem` | [biUnion_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunion-le.md) | 285 | `result-track:605674e447028a986d163c0c8cbe9778ae0b6d85bfc6016ad988fdb06dd3dc9c` |
| 45 | `theorem` | [biUnion_top](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunion-top.md) | 290 | `result-track:de832998373409a405a08e1c3ce72e2ad3d81c8721bb4a8f7f42b7dd7265f2ab` |
| 46 | `theorem` | [biUnion_congr](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunion-congr.md) | 295 | `result-track:a415e68cff2809dd47c7af5e0cb68530a6f2750d04217581eff4b4a8a187493d` |
| 47 | `theorem` | [biUnion_congr_of_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunion-congr-of-le.md) | 302 | `result-track:0f540e46253d72f1ff20a6e40a02dc54247bb00efbdb1aa8ccc169e6f0dbb6a3` |
| 48 | `theorem` | [iUnion_biUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-biunion.md) | 307 | `result-track:6708ff57fbe8c2cabdccf65e1846dc266845a1be71ef0b774149666ebc006699` |
| 49 | `theorem` | [sum_biUnion_boxes](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/sum-biunion-boxes.md) | 312 | `result-track:b7fc7a3ee725dd35079410c7a782f4a5b326b9afad8435ea9875b677f7d50c70` |
| 50 | `def` | [biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunionindex.md) | 322 | `declaration-track:c433ef398ff3b59ec7a15d9a01005c9d5df97452577dcbc8d36e6a6e66693bc1` |
| 51 | `theorem` | [biUnionIndex_mem](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunionindex-mem.md) | 325 | `result-track:3a3a1ea91cea05795834f689b6ab3c00d6fc1e4e33431fa17dce751caadfab0b` |
| 52 | `theorem` | [biUnionIndex_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunionindex-le.md) | 329 | `result-track:a1b0eaa431c4b29443156a5d3160f58d1c68039db795df10fecc3509e79e0b5b` |
| 53 | `theorem` | [mem_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-biunionindex.md) | 334 | `result-track:879b2d64c2c822cd7fd39f979619525a2cfdb9feb13a0d099a093c88193d1c77` |
| 54 | `theorem` | [le_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/le-biunionindex.md) | 337 | `result-track:cad20cf98ef5eb5abb7affd608a5a39e97c2f25a4b4bc70a5e5eb82a81c48867` |
| 55 | `theorem` | [biUnionIndex_of_mem](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunionindex-of-mem.md) | 341 | `result-track:4349a27aefc03a58f14546520fa8cb0e1d43872a97fc5ffbe6bfba26f3b9d5ae` |
| 56 | `theorem` | [biUnion_assoc](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunion-assoc.md) | 345 | `result-track:6ba9828b83d1821139bc235123fbec236470346aeed1da3ecad400137b4f4fb5` |
| 57 | `def` | [ofWithBot](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ofwithbot.md) | 361 | `declaration-track:9e6dc2ef5f72d56cb9dd9a47992cf70d85223256948fb8ce30b0012c17f28236` |
| 58 | `theorem` | [mem_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-ofwithbot.md) | 374 | `result-track:a0413c656e16f0f6ba9152503c2110cfe92e652c82b33cd9aba673aa1ef60db4` |
| 59 | `theorem` | [iUnion_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-ofwithbot.md) | 380 | `result-track:1cb68952c71dc8961afeecafad4cfe336d33292b60fc74336612eeb751a1c577` |
| 60 | `theorem` | [ofWithBot_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ofwithbot-le.md) | 390 | `result-track:6bc3e3fcffc7acb0648374ff8b691f323877730c12f00c2d3f5c3ab60e9a2edf` |
| 61 | `theorem` | [le_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/le-ofwithbot.md) | 399 | `result-track:35ed3c1374aed14ea61638f79e3da3a2164bead605584ff0d9d182a76cf5c252` |
| 62 | `theorem` | [ofWithBot_mono](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ofwithbot-mono.md) | 408 | `result-track:a2872435c2152b5aff4d323cde872128330f8bd70f7fcd62f40a54845c8c18d5` |
| 63 | `theorem` | [sum_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/sum-ofwithbot.md) | 418 | `result-track:09e7f02819bbae935ac69f1ba259f98d0225cc343e79680a228fc382316ffac7` |
| 64 | `def` | [restrict](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/restrict.md) | 427 | `declaration-track:7fa322788e80444c10448ffe6ba373dcfd53fa6442d99976785ed858d24570f3` |
| 65 | `theorem` | [mem_restrict](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-restrict.md) | 441 | `result-track:7ff9815444682c08313496c4fa62a6b1daeff43e014282ca3d1af83f2db00762` |
| 66 | `theorem` | [mem_restrict'](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-restrict-source-edition-2.md) | 444 | `result-track:ecd5b9d44d0897f7394a2262163539240e41cb874bb802ba513aa13bde126845` |
| 67 | `theorem` | [restrict_mono](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/restrict-mono.md) | 448 | `result-track:cb3ce5c9f6c965ad5f69a0d98d6f09705d8ff492bb241d1cef6e624bae856d9f` |
| 68 | `theorem` | [monotone_restrict](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/monotone-restrict.md) | 455 | `result-track:82ef4ce0a2990a1a8475db348e5ad550d697a03e46e4e97d015918c5d79144d3` |
| 69 | `theorem` | [restrict_boxes_of_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/restrict-boxes-of-le.md) | 461 | `result-track:5270fd6619ac30da4c4572747901cbbed5c5824ca875abcc77829b096450ba92` |
| 70 | `theorem` | [restrict_self](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/restrict-self.md) | 471 | `result-track:07c3ccaa48b822b87e2808aefb05bad756175678db67f765d0f79b7437c07962` |
| 71 | `theorem` | [iUnion_restrict](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-restrict.md) | 475 | `result-track:bd7123981b14aea2d2f9720a81958955172a8745b7ecae9132bffbcfc850af48` |
| 72 | `theorem` | [restrict_biUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/restrict-biunion.md) | 479 | `result-track:f671e42e100f2d72bddafdc0587579afbc4441e0910e0daa1b942681c1a47234` |
| 73 | `theorem` | [biUnion_le_iff](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunion-le-iff.md) | 489 | `result-track:b47d87e96590876831909bb0e6acdf57d600144e577b3a19b2983a24aafe9df7` |
| 74 | `theorem` | [le_biUnion_iff](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/le-biunion-iff.md) | 500 | `result-track:663031e4a932094f836e78debeb732c22c52b8ba90b9abc19e74c67c31e71d00` |
| 75 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/instance-source-edition-4.md) | 512 | `declaration-track:8b74e9ba0abe322946bccf14d0c8aab389ceb8ba72ad1bf595fed344f7d75df3` |
| 76 | `theorem` | [inf_def](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/inf-def.md) | 518 | `result-track:63d5919a543e275be85af16c8cf2f36347274a62f098aa10e91f495e3f5b8c1a` |
| 77 | `theorem` | [mem_inf](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-inf.md) | 521 | `result-track:03d6b62fa45f4170a84b96707db9afbf307edf6e67dfb856de770e1791dd6d09` |
| 78 | `theorem` | [iUnion_inf](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-inf.md) | 526 | `result-track:28e97ee84a706579ea042fc7dd6792ee8319f46625f1c16f79a3bb0650a1ab69` |
| 79 | `def` | [filter](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/filter.md) | 532 | `declaration-track:dd7ed366c8aab261e47c0a4d5632ab262971094333a13a61427fed1646579221` |
| 80 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-filter.md) | 538 | `result-track:5ab201a117e420131dd583c51fc13ad90ed6af425da9d7c9721326cd2112752e` |
| 81 | `theorem` | [filter_le](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/filter-le.md) | 542 | `result-track:f8619b2cf054f61e144ac0653c3c8495344468dc0c2672897af347a1a10d80dd` |
| 82 | `theorem` | [filter_of_true](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/filter-of-true.md) | 546 | `result-track:630f74927b8687c5918dd5cfe61378b6c89bcf2fbca8a4f0952a56019006bf07` |
| 83 | `theorem` | [filter_true](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/filter-true.md) | 551 | `result-track:0b4af4126db11ead86daff8e6f352b6e53766c2a2630445110519ca930411dcf` |
| 84 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-filter-not.md) | 555 | `result-track:eec5016f2fe52bef0d3da583f99eef422a2a32706e1c84b04bbd7844a60b7641` |
| 85 | `theorem` | [sum_fiberwise](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/sum-fiberwise.md) | 567 | `result-track:712cdeea725e9eb406ca1eb2485d8c8d978fe11ca6ae4a21abca39bafd895c0c` |
| 86 | `def` | [disjUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/disjunion.md) | 575 | `declaration-track:5cdf413a05605c6ac3f89e3a6ea90f727f950a3f92a82b9e9d07a18ae899aea9` |
| 87 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/mem-disjunion.md) | 584 | `result-track:08f57a20329c054bc1ee552eb68a5db16edc1c26bb0eba87ce8cf326ee78c218` |
| 88 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-disjunion.md) | 589 | `result-track:d2419d79161a7a36a15b2c6b8efb7aabe56d5fe821493f7a1d878dd4afd85394` |
| 89 | `theorem` | [sum_disj_union_boxes](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/sum-disj-union-boxes.md) | 595 | `result-track:0f208510cc552afc8aaf27e0c8bd110d37849c178c6143abae9e365e86b80faf` |
| 90 | `def` | [distortion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/distortion.md) | 606 | `declaration-track:5186094912cd6b58ef842da6577e400865c32ff8e172d755479615612ad4e183` |
| 91 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/distortion-le-of-mem.md) | 609 | `result-track:9f2adda520229fc3afee7842704a42f02818157bf271cab6bd18ba4f1deb8b9a` |
| 92 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/distortion-le-iff.md) | 612 | `result-track:cd280069b6fb7dbceeecf9bbc743e8d417df95452ab5acd86610652d84a8727c` |
| 93 | `theorem` | [distortion_biUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/distortion-biunion.md) | 615 | `result-track:129cda3785c9d61a373c99835ed3bf375673db11ab5af469ebbe99063a792206` |
| 94 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/distortion-disjunion.md) | 620 | `result-track:fe76d086cd2f618c79b570a3b3eec42966bd9479a338c6f3c9c8ca3f7ed2ff41` |
| 95 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/distortion-of-const.md) | 624 | `result-track:b8d923973c9baeb1e6598e71211c558db14edfa5b44057042fc915cb54e083ef` |
| 96 | `theorem` | [distortion_top](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/distortion-top.md) | 629 | `result-track:a84117a8737d4c5cdd0a61b57754f579da7f9895d8d2f6a2e52223a383a7aa44` |
| 97 | `theorem` | [distortion_bot](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/distortion-bot.md) | 633 | `result-track:be88f482830144b847249205e83823a962b169a592f598ea3f8cd9a7c079d07a` |
| 98 | `def` | [IsPartition](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ispartition.md) | 639 | `declaration-track:aac83a682e6c5fa88df4a210cfb7e45b727dd88bd3af0eea485964d50c93caa1` |
| 99 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ispartition-iff-iunion-eq.md) | 642 | `result-track:b14432a02da9180dd31d7b31347c447dd45e50f52d8df988f62198a0456fa1ae` |
| 100 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ispartition-single-iff.md) | 647 | `result-track:834709828995f1dcf447a2b1abbaadd099cf849e035f55f05819a781367f9252` |
| 101 | `theorem` | [isPartitionTop](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ispartitiontop.md) | 650 | `result-track:ea5a6f316a6d64b3650a89b2224321ab021a37eb6e7988b3a4c9f36fda0e4186` |
| 102 | `theorem` | [iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-eq.md) | 657 | `result-track:19769a8a1ee324c2686a204921403ec2134be5dd877152811265f3fdf5da7f39` |
| 103 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-subset.md) | 660 | `result-track:77a1a50b5e306c1817534b0800d344c176821688f9af97ac080eb4967038ded8` |
| 104 | `theorem` | [existsUnique](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/existsunique.md) | 663 | `result-track:2fc8e47359eeaf9aa6b85170694fdb0437a012ff4aa18068e7e8dfb0b724b364` |
| 105 | `theorem` | [nonempty_boxes](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/nonempty-boxes.md) | 668 | `result-track:b4a35c488903ecddc0b571e7192cd377c58c3bb23708196ed7f153e77c1aa885` |
| 106 | `theorem` | [eq_of_boxes_subset](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/eq-of-boxes-subset.md) | 672 | `result-track:d005ce6edd16347bb82e5d1363757e926fcca3eead13e05e5d7ded3222ce46ae` |
| 107 | `theorem` | [le_iff](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/le-iff.md) | 675 | `result-track:d2452bbf951b6cd260564b01f8772d95a7b368d33c9e1706fc561246708b58ab` |
| 108 | `theorem` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/biunion-source-edition-2.md) | 679 | `result-track:df3e070a0965b6396f5949fc72799c123ad02f2d2e4f2165c6bc0780d6cd2e5f` |
| 109 | `theorem` | [restrict](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/restrict-source-edition-2.md) | 685 | `result-track:8691061c5f2b5ddb5924ad9fd757b3c40c9cb1a66b3f7673630962eae12245a5` |
| 110 | `theorem` | [inf](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/inf.md) | 688 | `result-track:461f642d33357b91ea58cf34cc52bdd37ecea3527c2717d63aeabf27c7dbe2ec` |
| 111 | `theorem` | [iUnion_biUnion_partition](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/iunion-biunion-partition.md) | 693 | `result-track:9f7161cd5136bce4cfe3f7a58dc35c3c9bae7f9e1a568690e021df1b2e293c85` |
| 112 | `theorem` | [isPartitionDisjUnionOfEqDiff](../../../../FunctionalAnalysis/PartitionBasicPublic.lean/declarations/ispartitiondisjunionofeqdiff.md) | 699 | `result-track:f4396f62eb0a13f290f1b19d2932e90bef6f86298ead9e464c7ef7e27d8adc77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00b4912cd74e4098a92371c32f20fc011184a082fc7fbb2add594af6f9c0ac7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant3ca2168da65ff9409f99f1159f1db8af250c169a7912fb0225996898a8852738.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
