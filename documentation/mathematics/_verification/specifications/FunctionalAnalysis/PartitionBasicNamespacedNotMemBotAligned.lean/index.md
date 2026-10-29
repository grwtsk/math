# Verification target: Partition Basic Namespaced Not Mem Bot Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3265dc8b7b54a898d34d1e8a181c402e3663767c",
  "lexical_observation_count": 113,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3265dc8b7b54a898d34d1e8a181c402e3663767c`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Box.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Prepartition](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/prepartition.md) | 61 | `declaration-track:a3076ac1988ef2e5153a60f19313eadd3258e2b6a534274e79aefddf43de4ab0` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:76cc62db42974410b190fe2b43411dd0fa7468d6ff2d2a1dd0a85ccd3064f653` |
| 3 | `theorem` | [mem_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-boxes.md) | 75 | `result-track:0404137fabe6904c16341b3f5d02575403136c48df5765abda64a298d6f427b5` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-mk.md) | 79 | `result-track:13fb69d0b8b97c59f6479d99efef7c3d8ab9d3feb5562842745e4fe5679b9259` |
| 5 | `theorem` | [disjoint_coe_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/disjoint-coe-of-mem.md) | 82 | `result-track:8cabedae071407c20e7062c3fc0ed7ba560253be05cda7aaf412b7f0e9b67de5` |
| 6 | `theorem` | [eq_of_mem_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/eq-of-mem-of-mem.md) | 87 | `result-track:1a4b7f13a42f1f509d070dc0e5eb66d2746f9e6964d5dfdf16d5641201b56b5c` |
| 7 | `theorem` | [eq_of_le_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/eq-of-le-of-le.md) | 91 | `result-track:f15e0ef4fd07af7cbce1e1df1cb36037d9f18adcd945e1d41872e09322b3d973` |
| 8 | `theorem` | [eq_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/eq-of-le.md) | 95 | `result-track:d87da000bebf9d244392697dd47281f28a939e64e6aea5f79c1ba8ec05c3f553` |
| 9 | `theorem` | [le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/le-of-mem.md) | 99 | `result-track:99782094629e45f1f6b592de39104fc102092fc42752f5abdd6be377d3df096b` |
| 10 | `theorem` | [lower_le_lower](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/lower-le-lower.md) | 103 | `result-track:8872ce6c7b0df215f121badd557bea60356679cdab60d04c58a093e8f533a97e` |
| 11 | `theorem` | [upper_le_upper](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/upper-le-upper.md) | 107 | `result-track:77dd0cfc688ed449e279b804a8925c617e2b81eb3dfad73a9b1c6b03d5f2990e` |
| 12 | `theorem` | [injective_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/injective-boxes.md) | 111 | `result-track:c3cf3b8963d3e58c38363e8e511f6aed1a431d95ba1098afd2a2104e748e8934` |
| 13 | `theorem` | [ext](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ext.md) | 117 | `result-track:5110a8fb0eabf453336df4f11d1bcb6f5cb44ed9da6d790b196010369617975a` |
| 14 | `def` | [single](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/single.md) | 123 | `declaration-track:d48f739d6178ba1d2c2f0d17e2af96db84ff298390c29e8c473dd5459c7a3d2f` |
| 15 | `theorem` | [mem_single](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-single.md) | 128 | `result-track:6975ddde8f93820534d3426d84f7e8e6972bf2168588404b528b1ffa6527c5df` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/instance-source-edition-5.md) | 133 | `declaration-track:b0ce07d2ec1b18de7dd48f5586f69d2f4a105047f573519304078630fea86e04` |
| 17 | `instance` | [partialOrder](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/partialorder.md) | 136 | `declaration-track:b6f186331f0681cddd4f9d1aa778221eb0db64c81cc1a7e827686a148a0fc9dc` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/instance-source-edition-6.md) | 152 | `declaration-track:b95eb6f027fd68f9a1c207954309c6bb44e1355980124eccda29d764bceccf8c` |
| 19 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/instance-source-edition-2.md) | 156 | `declaration-track:6eac7c583fe9edf087a3156edf04f47d0641a2f8facb8ba67183204c3e3d28ff` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/instance-source-edition-4.md) | 162 | `declaration-track:98adaf66a1b4643d594a50c831bdc9db8419614a964855ea291edd564ae1f251` |
| 21 | `theorem` | [le_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/le-def.md) | 164 | `result-track:3e7913a93da607b69b6e24239c7e223019f7b03f51612e92086c3c8d90c9c701` |
| 22 | `theorem` | [mem_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-top.md) | 168 | `result-track:b40cdb4cb7b5446b6d25b42e74d7ff527d3cf3901f4f6c7a631dfbb23cec09d3` |
| 23 | `theorem` | [top_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/top-boxes.md) | 173 | `result-track:c7835acc9a069c6549ed6875a0cf34fd71893f8272a13fe0e6373f45ee3cda18` |
| 24 | `theorem` | [not_mem_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/not-mem-bot.md) | 177 | `result-track:18720c5298fb6e0fcb92d37dd32e8d070a936cbe5d0f3eb2c55211a063ef4785` |
| 25 | `theorem` | [bot_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/bot-boxes.md) | 182 | `result-track:36148807bafd2e9a779eacdb28b439ddd386101cb3ad5109a56cba1e375b2092` |
| 26 | `theorem` | [injOn_setOf_mem_Icc_setOf_lower_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/injon-setof-mem-icc-setof-lower-eq.md) | 187 | `result-track:e7a24acd6fb60aab17bbfcab9e9084fa34d8e082489c8610cfd7ede9673b5818` |
| 27 | `theorem` | [card_filter_mem_Icc_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/card-filter-mem-icc-le.md) | 207 | `result-track:cac2add166cdd0b7b6057926e91f677216bd4991364b16ac0650fb1741fb3cbb` |
| 28 | `def` | [iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion.md) | 217 | `declaration-track:e1e9777d252c776dc6ac386e1be736f530041979a26e3c4670cda49f01725e57` |
| 29 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-def-source-edition-2.md) | 221 | `result-track:b71ca8ff374edb17c2bb237ede1b1b74ef161fafda82d083cf33b5a8d65dcd49` |
| 30 | `theorem` | [iUnion_def'](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-def.md) | 224 | `result-track:1fdc62ddf35a10994be9271c71061f9010cf9c976ffd662386f2f9004f904e22` |
| 31 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-iunion.md) | 229 | `result-track:6c0a1d904e467ce1baa2c0f9384523d6c844fe53f024bbee016e7c763bea638b` |
| 32 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-single.md) | 235 | `result-track:81a21426ed3b86f4d4cf923fc48af5ce9c3377cbbb643bf4755e9bc349c793a7` |
| 33 | `theorem` | [iUnion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-top.md) | 239 | `result-track:87d1699a3b4ef02bf904cd138d69fa08dc6b6127c4b1ec580cd375adba4ade0c` |
| 34 | `theorem` | [iUnion_eq_empty](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-eq-empty.md) | 243 | `result-track:059285b2310c7f881d74bb7cb135552e53ab156acf5a8e30a152fdcf9f1dab9c` |
| 35 | `theorem` | [iUnion_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-bot.md) | 248 | `result-track:c83003b0fadd82ab58c5137a9b0408c33f44506b36f7b57413f6e4c5953ef809` |
| 36 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/subset-iunion.md) | 252 | `result-track:e688b0bbf0554e705b7939c659f7eabdaec5628f04e9918df4a813ca6d818500` |
| 37 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-subset.md) | 256 | `result-track:5b1a197bf486dec9f5edec57639e40873ebc9a9f2fb0aa6c8b0772403fa028ce` |
| 38 | `theorem` | [iUnion_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-mono.md) | 261 | `result-track:9f4335cf7c4ceaab53dfce29c16ce6343cde423463a108b68e87d86c9eb99f31` |
| 39 | `theorem` | [disjoint_boxes_of_disjoint_iUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/disjoint-boxes-of-disjoint-iunion.md) | 267 | `result-track:aba3fd3e9c56e347b781f5210b75550d4e1445d57e7a2d7dca57af5b144fcf02` |
| 40 | `theorem` | [le_iff_nonempty_imp_le_and_iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/le-iff-nonempty-imp-le-and-iunion-subset.md) | 273 | `result-track:7edbdb104904926cdde8a84a8ca1e39fb6a8184ef3ed5fd336300ae3da9829c6` |
| 41 | `theorem` | [eq_of_boxes_subset_iUnion_superset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/eq-of-boxes-subset-iunion-superset.md) | 287 | `result-track:fb346272b60d62129eb6fa1d90291f4e37bfd64b40f18e63ca24e3d65d9b7079` |
| 42 | `def` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunion-source-edition-2.md) | 301 | `declaration-track:37e3944ad1e78ef79487cf4e92272acc7dd2daeb4c82acb77b73a50afde35d8f` |
| 43 | `theorem` | [mem_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-biunion.md) | 320 | `result-track:86d3d924dc5dbb574de566d91e53a1aee2675eeb8216f888fc257206a47010be` |
| 44 | `theorem` | [biUnion_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunion-le.md) | 323 | `result-track:40ab1f902484021823012d93a101005f85dc02c9a2118cf9f7984e6ff6516bec` |
| 45 | `theorem` | [biUnion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunion-top.md) | 329 | `result-track:6649d094d93e9f16fdc7d359a2fce0d4c49e74416bacfaaac7bbf054b06c07df` |
| 46 | `theorem` | [biUnion_congr](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunion-congr.md) | 335 | `result-track:d4586c9e401b2be570e164fcb296d36c858e255cbca4aa464972dfc3fac9e8d3` |
| 47 | `theorem` | [biUnion_congr_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunion-congr-of-le.md) | 343 | `result-track:e3eb8067a809c5e36cb2be13f97a8936c4a0ff12e1076cdf5f061cfcf7917ef2` |
| 48 | `theorem` | [iUnion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-biunion.md) | 349 | `result-track:6a6e05b07ecdef40a91cdf9a9507e822b25bcc0e9a29f27090bc92d2a36af46b` |
| 49 | `theorem` | [sum_biUnion_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/sum-biunion-boxes.md) | 354 | `result-track:3fb1cd42e113819258fabba3d1b6ae39617342bf598da043ff027b54fff96c7c` |
| 50 | `def` | [biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunionindex.md) | 364 | `declaration-track:9fc02763f6d5fce8e7d937c2aae4143ceb9ff373b464b2eaaf3049c3ae258447` |
| 51 | `theorem` | [biUnionIndex_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunionindex-mem.md) | 368 | `result-track:a12a77f3ee8db45d8b61f676e58051bdd2bd1e342afbe987ff0a7c642df4116e` |
| 52 | `theorem` | [biUnionIndex_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunionindex-le.md) | 373 | `result-track:de78aaa859233938ca9c3ec69ca3d8f9c2c13c09a4fa1dd1641f72aa9e7936e0` |
| 53 | `theorem` | [mem_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-biunionindex.md) | 379 | `result-track:f575bbc34c0d60bd5762b463efafe07ddf65fe177da08e8a9bc750c841431906` |
| 54 | `theorem` | [le_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/le-biunionindex.md) | 383 | `result-track:980e3665b53e722989c169a4feb0f97fd7e771988ef0f6095a3ea11d206fa46c` |
| 55 | `theorem` | [biUnionIndex_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunionindex-of-mem.md) | 388 | `result-track:a34118f745fed1f4a3f4ef3383886234d127a12a88c809b9d28a25e483d285cc` |
| 56 | `theorem` | [biUnion_assoc](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunion-assoc.md) | 393 | `result-track:7896c5d49535912ab68916044d322429aba141f38a2127d9a1cb1c260b845ac8` |
| 57 | `def` | [ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ofwithbot.md) | 409 | `declaration-track:b8f406fb64786080ffc5ed2e04e5c1bff55f58ba4a5e239ffb73735dc47d94a8` |
| 58 | `theorem` | [mem_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-ofwithbot.md) | 423 | `result-track:43e672629ef338d62befb5a98ac91caa07c3bd22200b73124288f8620179ab03` |
| 59 | `theorem` | [iUnion_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-ofwithbot.md) | 429 | `result-track:986eb6ba8c6cba3b6cd62248eae00a73993976bd47a8673f25906eac44c2ad00` |
| 60 | `theorem` | [ofWithBot_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ofwithbot-le.md) | 439 | `result-track:0ba792c9ff600a7d442636a9f64004a07789ee3985cf93168922787e228681a0` |
| 61 | `theorem` | [le_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/le-ofwithbot.md) | 449 | `result-track:b5c0106aea0a36e8eab81d78c086c480a095e0ed28eb3dffe37d6f489776bb5e` |
| 62 | `theorem` | [ofWithBot_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ofwithbot-mono.md) | 459 | `result-track:45d75df068d806d230229a410549f94149f819a7061449622c7b5ad65cd3e995` |
| 63 | `theorem` | [sum_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/sum-ofwithbot.md) | 470 | `result-track:67c068d11476b69eb092370db0a7b78ff6b8cfb1d81d79fe782c549443b74d12` |
| 64 | `def` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/restrict-source-edition-2.md) | 479 | `declaration-track:ce9af0b38f590cb6147aa5b523b7e89d3353fa6987665dde718ded5732cc5352` |
| 65 | `theorem` | [mem_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-restrict-source-edition-2.md) | 494 | `result-track:a358de71de59f3ea51928dd8fa3fe76ff1c7975207754ca6415794fcc4227a29` |
| 66 | `theorem` | [mem_restrict'](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-restrict.md) | 498 | `result-track:3a08030692a1722b8ee6986de9f072424b6a5db7ccc5425c5a308c1495710dd9` |
| 67 | `theorem` | [restrict_mono](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/restrict-mono.md) | 503 | `result-track:dcb1830c13e85bf02f936ab7baf46ea85bfd01952de069b01f5e8a3ac878e04b` |
| 68 | `theorem` | [monotone_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/monotone-restrict.md) | 510 | `result-track:b31a94cf4673a8cf4534e51652ff31e9a95d9b8984f9559af5f1cf75443288f9` |
| 69 | `theorem` | [restrict_boxes_of_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/restrict-boxes-of-le.md) | 516 | `result-track:c6755384a2161b625af006f7df623ed9a9144d6672504338f50cfb861763cb89` |
| 70 | `theorem` | [restrict_self](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/restrict-self.md) | 526 | `result-track:405d061aabcd874cb792281ffdf2d8d305157d3b2b01743671b5a90fc230a495` |
| 71 | `theorem` | [iUnion_restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-restrict.md) | 531 | `result-track:a2c7f10ed5b7f35fdd6ee069b17c23c85dce2ac41c374dd3680c4f718802228b` |
| 72 | `theorem` | [restrict_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/restrict-biunion.md) | 536 | `result-track:2811bbc0437118be5fe83d289e020a5f2dc11b7f5490f5745bcda03d826b78b4` |
| 73 | `theorem` | [biUnion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunion-le-iff.md) | 548 | `result-track:ebf2fd7272729be61b6a65d0f24164f59c7c69d16a46fb1af1e8fb70398cbbec` |
| 74 | `theorem` | [le_biUnion_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/le-biunion-iff.md) | 560 | `result-track:cd4cc73b35d0527bee8f3748c1061dbcbf1f9348ada755c480cc10782795956f` |
| 75 | `instance` | [inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/inf-source-edition-2.md) | 573 | `declaration-track:bb3a3d2725be1ad3386de4c2ceb907b4b4791bc7f72d5bb0c0e49f5498067d48` |
| 76 | `theorem` | [inf_def](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/inf-def.md) | 576 | `result-track:267350e59ab4058e3ff4593baf60aace81ab28f78bc5158a2a3d22af9f646c7e` |
| 77 | `theorem` | [mem_inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-inf.md) | 580 | `result-track:08a16ab654f6dccfb1c0b5431b7c6a932b9b5a894efdc1551370bfe92b98a538` |
| 78 | `theorem` | [iUnion_inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-inf.md) | 586 | `result-track:9b247094a4c2c3d903ea5a642468f6119b4fb1e5315c25b58af4eba8a6e0273f` |
| 79 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/instance.md) | 590 | `declaration-track:2e41c7b3e29d9d3a8dd5442393a4cb529ef597d98243e94aadaa1bee9eac5faa` |
| 80 | `def` | [filter](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/filter.md) | 599 | `declaration-track:66252aa38113a1a3ba2a0a3b07e13630cc36afe64fed8c896c544be7a671f7d2` |
| 81 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-filter.md) | 606 | `result-track:a315f1e9f9841db07ef2d29622450a83e99de03eb32d40f707566474a3460f94` |
| 82 | `theorem` | [filter_le](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/filter-le.md) | 610 | `result-track:01d92c821bd3f03109c808c569582a0c0f5c0bf8e72a1255eb851908155721f0` |
| 83 | `theorem` | [filter_of_true](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/filter-of-true.md) | 615 | `result-track:ac13c15948b7b18da15fa8935418e1311f8d994ab2f1ae637f65555904b850be` |
| 84 | `theorem` | [filter_true](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/filter-true.md) | 621 | `result-track:8961ed46dd9ee037784bc7733fbff7ae503f3196f1eab03211264c49280833fc` |
| 85 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-filter-not.md) | 626 | `result-track:5192d6f95b38f618b5bbbe821f661ae564e6730500e1a5dda0b134c41753594b` |
| 86 | `theorem` | [sum_fiberwise](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/sum-fiberwise.md) | 637 | `result-track:aefc7da1f918b1ad1de262d18c7df0a3692e10a0409ba0d4a83da7ba517fff88` |
| 87 | `def` | [disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/disjunion.md) | 645 | `declaration-track:daf96ef69de6fbbe2a7606830ba4ccfea5ba2c7333349fd15a57698f15f6a300` |
| 88 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/mem-disjunion.md) | 655 | `result-track:8326a37848f6623d7949a45d9c86b6a4b054f09330e48dc77d6c14fd76fdf04a` |
| 89 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-disjunion.md) | 661 | `result-track:8edaaa39320d3f2a5aefa63e540cdffcccfbd62902d4af96b8bed26413b28ad6` |
| 90 | `theorem` | [sum_disj_union_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/sum-disj-union-boxes.md) | 667 | `result-track:15232fbfcff0dac78219f5e9b2484e2bc808c528cd235e5756674b1f50b6131b` |
| 91 | `def` | [distortion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/distortion.md) | 679 | `declaration-track:1db43983ad517c1fc896b3b3d8d6c7fa96eaca426fa001df86b45455b350bee8` |
| 92 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/distortion-le-of-mem.md) | 683 | `result-track:34252f4fd744bc053f254bdb36d07ec78df9ef2926d473a824e83c3ba6f14ca6` |
| 93 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/distortion-le-iff.md) | 687 | `result-track:5bf352f1e6ee8959c7e1cba475e0014c0c7bff9a4fc450d680a416001e206382` |
| 94 | `theorem` | [distortion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/distortion-biunion.md) | 691 | `result-track:3d4ec60d5a7b31717d9510a28ccfb892c3eeed4d8278631813492c56e7cd10d4` |
| 95 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/distortion-disjunion.md) | 697 | `result-track:07457c0301d4bbb433c03fd31a3697395bac9e8515ddaf7b5772373ea4cbb12a` |
| 96 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/distortion-of-const.md) | 702 | `result-track:d2d3044cbf3fd85f4b9bba4fec44cf5773f3d6d3782a8aa6e487d6f431bf236e` |
| 97 | `theorem` | [distortion_top](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/distortion-top.md) | 708 | `result-track:038788f0bc23626eca2fb1ff4be8e92497d99525ffc3cd51fb61ac72f6b071c8` |
| 98 | `theorem` | [distortion_bot](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/distortion-bot.md) | 713 | `result-track:856758375fad5e21ae17a43142155040ab454bdea7edca98c50969ec884ab056` |
| 99 | `def` | [IsPartition](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ispartition.md) | 720 | `declaration-track:72bc1ef5dc25e3cda55238100c7f664e073ebd15c9296e946cba985b9ae6f807` |
| 100 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ispartition-iff-iunion-eq.md) | 724 | `result-track:69a5a111efe5ac729be8f8dcdeb3653666efe35b4f507a9bf8bddcd93ed8c107` |
| 101 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ispartition-single-iff.md) | 730 | `result-track:6a566c1ff5ff194c95f44538a7d913f186b1117f3f40320d7a19aa6cd7cbf0d1` |
| 102 | `theorem` | [isPartitionTop](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ispartitiontop.md) | 734 | `result-track:ef74766e097fd148cc665fc0d453fe064cbdcc89cec6f4fabe6c1d037e06ffa6` |
| 103 | `theorem` | [iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-eq.md) | 742 | `result-track:6291cc1c9f0258df2a8932de040a5f57c91654ed0d4ea8af34d8933e8550beef` |
| 104 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-subset-source-edition-2.md) | 746 | `result-track:976b877e3b8a503c2affbdb361804c3249416f58af347343d1ff9bbcac1ab1b4` |
| 105 | `theorem` | [existsUnique](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/existsunique.md) | 750 | `result-track:b0a55786f0c40cd0cd0bb82c8cc52fde0b5f05542b9469cd863c50af9bf50ceb` |
| 106 | `theorem` | [nonempty_boxes](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/nonempty-boxes.md) | 756 | `result-track:cbc5b6564cf0a79f1da3f5127c0b6970ac20ed97440bb81ce28fbd96a687bc60` |
| 107 | `theorem` | [eq_of_boxes_subset](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/eq-of-boxes-subset.md) | 761 | `result-track:c7fde0742783a26923fa9edb0d1872108d7b631ad83c6093655ab5cc18b4d385` |
| 108 | `theorem` | [le_iff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/le-iff.md) | 765 | `result-track:8865f537e37351fb8005050a3c782d16751e7fbce3ff1a2c1dc65d8efbdb56b5` |
| 109 | `theorem` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/biunion.md) | 770 | `result-track:25992b1d8b434ece8ea4db394de9ebcfe95a120d0fcb69cf907e6a56e14dbe93` |
| 110 | `theorem` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/restrict.md) | 777 | `result-track:9df8da831b73cedf0297a681effdd4aa5c9fb0d6b15d993617d4567210a8ce5c` |
| 111 | `theorem` | [inf](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/inf.md) | 781 | `result-track:767d4d8affa35df8054e9e71df11c4fb49c1322cc333b5abc1d3b6578deded30` |
| 112 | `theorem` | [iUnion_biUnion_partition](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/iunion-biunion-partition.md) | 787 | `result-track:d9694c6e722b4d7ab1bd92b4b39c4c9787f47b50caf0fb209db3a18655cb46a4` |
| 113 | `theorem` | [isPartitionDisjUnionOfEqDiff](../../../../FunctionalAnalysis/PartitionBasicNamespacedNotMemBotAligned.lean/declarations/ispartitiondisjunionofeqdiff.md) | 794 | `result-track:b1b223a5a460ce8990cd2c8d62ca1e116e4896fd88011316c70a3895ef9d3134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55d4b8ef6eaa126cf1c1595e50bbf2e7975a3fdd731711682b43c744f37ebaae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant2682fb9ada36fc0b67663d13632f21877c18db1c308dda18d65abaf516290e93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
