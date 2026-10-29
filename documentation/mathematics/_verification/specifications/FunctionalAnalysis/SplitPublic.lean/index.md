# Verification target: Split Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab34d58413b4867ce8c6c0c78f1a014571b2dd2c",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/SplitPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/SplitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab34d58413b4867ce8c6c0c78f1a014571b2dd2c`.

Source path: `GRWTSK/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean.json)

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
| 1 | `def` | [splitLower](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitlower.md) | 59 | `declaration-track:e6405308e85596fbf13549a184dd1a91392cbbe7f830ccb58a1d14d0d2e31d6a` |
| 2 | `theorem` | [coe_splitLower](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/coe-splitlower.md) | 63 | `result-track:46b2ad45da6ee90b01acf758ff3d3a6e05d83eaca18a54cf6e29aac56a2367ff` |
| 3 | `theorem` | [splitLower_le](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitlower-le.md) | 70 | `result-track:92de25c5538a11304de32ca027e105b2d207d97798cc1485954ad2361ba7d9b4` |
| 4 | `theorem` | [splitLower_eq_bot](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitlower-eq-bot.md) | 74 | `result-track:239c629374764960f98013ecc5141740449878a0247c8b7646a081952a6756fd` |
| 5 | `theorem` | [splitLower_eq_self](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitlower-eq-self.md) | 80 | `result-track:5347b6bcbb9e519954aaffe6d069426102d492ec03a9bcf3303452cbae313d62` |
| 6 | `theorem` | [splitLower_def](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitlower-def.md) | 83 | `result-track:3598e7eed1b3af79504e444d54f2f39959b486adadbad5f34fc108254d7bcafe` |
| 7 | `def` | [splitUpper](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitupper.md) | 96 | `declaration-track:a7d99d43d957ce9c3bcc4aeee4eed67c9d73b85e37d1656f2b4c58729eb74792` |
| 8 | `theorem` | [coe_splitUpper](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/coe-splitupper.md) | 100 | `result-track:7c4b878b53ca2035373d5c8aeea791e18c12356fe0da1f15568d4213d7eb4a5a` |
| 9 | `theorem` | [splitUpper_le](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitupper-le.md) | 109 | `result-track:b84bd38f55b080780ad02feb811fac444119adcfc081cc61d5e7f7971af136d1` |
| 10 | `theorem` | [splitUpper_eq_bot](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitupper-eq-bot.md) | 113 | `result-track:7e9f240015d90ff6a192ec27cf9eac9b2cdaad074ec511d5ee9c1da29670bca4` |
| 11 | `theorem` | [splitUpper_eq_self](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitupper-eq-self.md) | 119 | `result-track:b1aa7af22b8613c429fe7632236a5d18f9e84927b2f789c2285cab59b56d1453` |
| 12 | `theorem` | [splitUpper_def](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitupper-def.md) | 122 | `result-track:a930b425a59e0e6d68da605f3237d1465c0f9a931527ae82088e0425bb8c1481` |
| 13 | `theorem` | [disjoint_splitLower_splitUpper](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/disjoint-splitlower-splitupper.md) | 130 | `result-track:ac13fa8b9b435e91d3d6f0d5c34e356442901827d7817bfbbff195f5b2895bae` |
| 14 | `theorem` | [splitLower_ne_splitUpper](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitlower-ne-splitupper.md) | 137 | `result-track:04c7701b002dca02ca3b092936ca770b03fadf5091acc33cfc8ac735e4bcd6f0` |
| 15 | `def` | [split](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/split.md) | 154 | `declaration-track:6edf4e40341c81f36214e864226710b2cdb4697560915c3e0929f575112ed18f` |
| 16 | `theorem` | [mem_split_iff](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/mem-split-iff.md) | 167 | `result-track:3b48f7129fd2260e36fcc6ffb9f484f96c0a8a18ee08b7764f01f59738dd63d1` |
| 17 | `theorem` | [mem_split_iff'](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/mem-split-iff-source-edition-2.md) | 170 | `result-track:87d2db54a8a73f2c6c4670c0743d421eec3b6867e6dc43ecea109a48908f1aed` |
| 18 | `theorem` | [iUnion_split](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/iunion-split.md) | 175 | `result-track:0dc49ec9339156fd5466f08277c26c89749199ecd137f536056990b9917c1079` |
| 19 | `theorem` | [isPartitionSplit](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/ispartitionsplit.md) | 178 | `result-track:da1abc633497951f42eca10f2dceb09d810067ad1951301001bfceee2b085ce6` |
| 20 | `theorem` | [sum_split_boxes](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/sum-split-boxes.md) | 182 | `result-track:3389baf84c8bcd501fc2006fa7510c12378c3bdc1fab051eb18f213f54e26f4c` |
| 21 | `theorem` | [split_of_notMem_Ioo](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/split-of-notmem-ioo.md) | 189 | `result-track:dc36a1e5a38f1ecea357c54df0b6f7fb2c9feb52916f6363f979cea900dd0143` |
| 22 | `theorem` | [coe_eq_of_mem_split_of_mem_le](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/coe-eq-of-mem-split-of-mem-le.md) | 198 | `result-track:6ce92a2d5cc0dc9eef31b4bf20962c3dc9b5d5c7aed6a0b57ca1d95f5f704133` |
| 23 | `theorem` | [coe_eq_of_mem_split_of_lt_mem](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/coe-eq-of-mem-split-of-lt-mem.md) | 204 | `result-track:743abbd712deab311921fb806d3ff29a10e64faa08e171c9abaae2845d37140b` |
| 24 | `theorem` | [restrict_split](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/restrict-split.md) | 211 | `result-track:f7f6ebbf82e951559231a75276d4bab052be9781a999d37eaeff2141ced07f73` |
| 25 | `theorem` | [inf_split](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/inf-split.md) | 218 | `result-track:d8996a2df56769ec5f8bdc7e3ef587827bfa9b8f4ad6fb8f2f2105609aef35c7` |
| 26 | `def` | [splitMany](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitmany.md) | 224 | `declaration-track:2eabd84cdbc80d5b7a211042743f512101d2fc1ecf332700aabea21132700316` |
| 27 | `theorem` | [splitMany_empty](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitmany-empty.md) | 228 | `result-track:1234b736014be28106fdb8de89150e979cd61ad7eb32582a5711a8512f026c43` |
| 28 | `theorem` | [splitMany_insert](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitmany-insert.md) | 233 | `result-track:589186401e3a1818cc314e919320bcce6310d6d5b382c5b4501b3e9787bb603e` |
| 29 | `theorem` | [splitMany_le_split](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/splitmany-le-split.md) | 237 | `result-track:30f59014deeadfc9f598e5d24baf8c2877e12e4be3a4c8ae160f4510c3f1e8b5` |
| 30 | `theorem` | [isPartition_splitMany](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/ispartition-splitmany.md) | 241 | `result-track:9cf6a479677da9f185da578c8fa6b9b2be95a6de41de0d50941f34761d45bd8e` |
| 31 | `theorem` | [iUnion_splitMany](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/iunion-splitmany.md) | 247 | `result-track:e1d72a7084209cf1266f4498995d1931fa7ae566dc827bf28358ec298df48d12` |
| 32 | `theorem` | [inf_splitMany](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/inf-splitmany.md) | 250 | `result-track:b110c5f9eb31d9b969fc6fd953ed7d1995f22a7ce4fe8b47ada246f8c69b9840` |
| 33 | `theorem` | [not_disjoint_imp_le_of_subset_of_mem_splitMany](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/not-disjoint-imp-le-of-subset-of-mem-splitmany.md) | 262 | `result-track:bd9beb73e0a94e911fd3b00b2b3fc069a31b53496feb013de7b484f629f8e370` |
| 34 | `theorem` | [eventually_not_disjoint_imp_le_of_mem_splitMany](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/eventually-not-disjoint-imp-le-of-mem-splitmany.md) | 286 | `result-track:24062f66de5d29e82c0c0a986b78638c0c0654d2750863f3aa53da262d1838fa` |
| 35 | `theorem` | [eventually_splitMany_inf_eq_filter](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/eventually-splitmany-inf-eq-filter.md) | 297 | `result-track:442c3a604970a85c1459bacff9cee73d9a978a867200d46fe57d92e8f65690f4` |
| 36 | `theorem` | [exists_splitMany_inf_eq_filter_of_finite](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/exists-splitmany-inf-eq-filter-of-finite.md) | 312 | `result-track:310c74cfaa3a3a10d36f0ab83d0f11ff6e6d2fce34d60bf8e63ac876e9364060` |
| 37 | `theorem` | [IsPartition.exists_splitMany_le](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/ispartition-exists-splitmany-le.md) | 320 | `result-track:b65a17d6a952c1e7348e081576c622f29999f569d4065ad808e7fd8495c5c5b3` |
| 38 | `theorem` | [exists_iUnion_eq_sdiff](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/exists-iunion-eq-sdiff.md) | 328 | `result-track:3e523e7c8250bebe16c19c36d372404af1ef9380594096449ea58aeb39a17810` |
| 39 | `def` | [compl](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/compl.md) | 338 | `declaration-track:c5e28ff45b226c3cb140ce626156c033ebe0195b85ba2ef3863a3bfc13834a71` |
| 40 | `theorem` | [iUnion_compl](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/iunion-compl.md) | 342 | `result-track:da3fa59389b6847990bb8577e08087e0811c18d01a98c640aaaa5fa639f0a82f` |
| 41 | `theorem` | [compl_congr](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/compl-congr.md) | 347 | `result-track:fd80c5aecb56c986b25e209c1b48f2a1a7ea721e6c9d4f5977e5e3b0a7c6e8e9` |
| 42 | `theorem` | [IsPartition.compl_eq_bot](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/ispartition-compl-eq-bot.md) | 352 | `result-track:4a2fb8898d64f15c3b21b0a9181f42742844bfae16aed314d5c488169f18fe86` |
| 43 | `theorem` | [compl_top](../../../../FunctionalAnalysis/SplitPublic.lean/declarations/compl-top.md) | 356 | `result-track:4e6af6c4281aa37ea76e746d91935ede9a2293e88271eb39792c9f1007ac7aac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a71dce188e4bb4453b53564a90af9ea36489966820da8b2226364d26bcfa56b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Split/Variant963db96c9027711801001b1c65894c8a4c1305fffe509a2b0ff9d1a9d5f61704.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
