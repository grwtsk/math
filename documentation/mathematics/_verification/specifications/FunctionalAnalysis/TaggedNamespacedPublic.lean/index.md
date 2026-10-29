# Verification target: Tagged Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "925af7aacea1cb41fd825517f397accf86164f6e",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `925af7aacea1cb41fd825517f397accf86164f6e`.

Source path: `GRWTSK/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean.json)

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
| 1 | `structure` | [TaggedPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/taggedprepartition.md) | 49 | `declaration-track:44714d56ef0a18f95f9e7be5c8f1da4bb6a701dc96536ff79fe7635ea8cc442c` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:c210bb828b61feedfd4179a06c5d036832ab51d2c4f7e5d9b1db3fcd68952d42` |
| 3 | `theorem` | [mem_toPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/mem-toprepartition.md) | 64 | `result-track:3371536a2e8721a603edb9c12a89133a42690e8a2fd806c795c2ebbc10e1564b` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/mem-mk.md) | 67 | `result-track:6245f460e65bf84ee78b4334d5e8d6dbc34c8dc1082b55220daa6288035c01f8` |
| 5 | `def` | [iUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion.md) | 70 | `declaration-track:5946ad5534e6396057c9f6a8da7623ea553f5f3170b3cf8ba0a9d92a3259cc60` |
| 6 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion-def.md) | 73 | `result-track:e944b95d592df1bf7d4c4b813a1ce84ba3a59d2d4e63746cf742df4ad1b02a23` |
| 7 | `theorem` | [iUnion_mk](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion-mk.md) | 76 | `result-track:28ee8eb8adb0e15fef386465b2c5bf2d196524f184a9894a0d6a454a82a8a004` |
| 8 | `theorem` | [iUnion_toPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion-toprepartition.md) | 79 | `result-track:48ba7a94e23544c25db2b890a9cdc58adf29b2689bd9b6fd9246ab1da0dd6c99` |
| 9 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/mem-iunion.md) | 82 | `result-track:e959d0e02f5fcac6e358fc1825198600f1267b4c30a8044cc5ceb1e15fae6dcc` |
| 10 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/subset-iunion.md) | 86 | `result-track:3148c37ab8f5eff975f30abba0083d8c1dc9797d8e379b788645e81fcd87b346` |
| 11 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion-subset.md) | 89 | `result-track:97f5378ee75184c606031f149d1043c4bacb4632e2e26632c045ca525fbd8f69` |
| 12 | `def` | [IsPartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ispartition.md) | 93 | `declaration-track:f09f5c74a1683d8289cc7491fbd4a5cf80f21bfc17e5acc138bad7488c0b91c2` |
| 13 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ispartition-iff-iunion-eq.md) | 96 | `result-track:7c6f5f8aa22a5f1c212e425d66289d6c3abd04d6204a0683160d5dbb3f00a50c` |
| 14 | `def` | [filter](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/filter.md) | 101 | `declaration-track:f5cf32cbd04c4ab4b3c9bf2df38f7742bc191248d23252b92fc267b1aa00486e` |
| 15 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/mem-filter.md) | 105 | `result-track:8d74d3f476a1870982a2ab34eaf220880993b79681f2a2ba4727e0c3f213db6c` |
| 16 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion-filter-not.md) | 109 | `result-track:230db304619d704393b12ece8b4aa3ea9fe6dee6d5b84b746279270016e45651` |
| 17 | `def` | [biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/biuniontagged.md) | 122 | `declaration-track:cc968a5d372fa840ee5bfa29dbddd8107e79a1a5c6fe0995d6c60380790fd93b` |
| 18 | `theorem` | [mem_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/mem-biuniontagged.md) | 129 | `result-track:4570bbcf122258787ebc1ab199cc43081bbda1171255ea32e91bd90912000b55` |
| 19 | `theorem` | [tag_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/tag-biuniontagged.md) | 133 | `result-track:b36c05098dcb55d055ddb46b7dc768e38c103c731fe7c8cb9fc591e644d4f39e` |
| 20 | `theorem` | [iUnion_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion-biuniontagged.md) | 139 | `result-track:007a6c1bf0355c146d96ff9af88a93391a6cad7c868561efbb871b84b6fb05f6` |
| 21 | `theorem` | [forall_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/forall-biuniontagged.md) | 143 | `result-track:1cf0bf6a19314a71213af419034f7660f8ba085fe7f209d8b24387898aa27a2c` |
| 22 | `theorem` | [IsPartition.biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ispartition-biuniontagged.md) | 154 | `result-track:b17b821a13b1b05ac84b25ac2f3eca05b4d60f2be0aa6de4e1ff51999b8c38c9` |
| 23 | `def` | [biUnionPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/biunionprepartition.md) | 171 | `declaration-track:d885433f233dcaa334e7460dcf196228928dbc9adaa5c6da324bb047284a5511` |
| 24 | `theorem` | [IsPartition.biUnionPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ispartition-biunionprepartition.md) | 177 | `result-track:c67d7e4e5e3b9a15e754b7e251c86b028a37dc46957b7494f07bd6aa03e13d33` |
| 25 | `def` | [infPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/infprepartition.md) | 186 | `declaration-track:a0e1774430e9d88c1e930c01a2b25d0b4980575cce84849314a28138b2112e7b` |
| 26 | `theorem` | [infPrepartition_toPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/infprepartition-toprepartition.md) | 190 | `result-track:7ede33ee4e2ead9a7e89a04e90680588b2d7204b073f4e4f0594d155f4a96b04` |
| 27 | `theorem` | [mem_infPrepartition_comm](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/mem-infprepartition-comm.md) | 193 | `result-track:855daa3a9d85592c9c728bf8ffc0a80e1f41cf390eecef1afa044ecec9fe1d86` |
| 28 | `theorem` | [IsPartition.infPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ispartition-infprepartition.md) | 197 | `result-track:87fc7f2c847a04ad6bd2138d9aa272963dbc42d1947f4472f624af8bb8956d3c` |
| 29 | `def` | [IsHenstock](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ishenstock.md) | 205 | `declaration-track:31113e5b3fd1b8e375ebd75f99e1db5ed8e054ba071d0a0771d1e6fc54609a61` |
| 30 | `theorem` | [isHenstock_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ishenstock-biuniontagged.md) | 209 | `result-track:781b65be51a7921078f9d4aca583b93b4fdf10d0bbda800e07af7e99ec3b5e33` |
| 31 | `theorem` | [IsHenstock.card_filter_tag_eq_le](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ishenstock-card-filter-tag-eq-le.md) | 214 | `result-track:076926351ca96a6af25442814e1dfdc39d30b7ac0b9610620f5feb8c7b5934f5` |
| 32 | `def` | [IsSubordinate](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate.md) | 226 | `declaration-track:1eb73b313c857c46baf2232d818d60689d231a88c9224b7df4a4742b0fa81b79` |
| 33 | `theorem` | [isSubordinate_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate-biuniontagged.md) | 232 | `result-track:9d7dd4c5d2216d8396f7982ad41e5542971d3c8c9eae7915b3263ae5d13dfb5d` |
| 34 | `theorem` | [IsSubordinate.biUnionPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate-biunionprepartition.md) | 237 | `result-track:1fd279c55ec242e5bb43df030a0859fda0cf90cc29a03b718290f9e87ae9200b` |
| 35 | `theorem` | [IsSubordinate.infPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate-infprepartition.md) | 242 | `result-track:b228ef85dc023ff1c4063484fc9b0945fc8680b345017b993138bea3f01b4853` |
| 36 | `theorem` | [IsSubordinate.mono'](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate-mono.md) | 246 | `result-track:3bde92932949f20d598b0ba1335c47233c0babad52e23976a690423367a1be83` |
| 37 | `theorem` | [IsSubordinate.mono](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate-mono-source-edition-2.md) | 250 | `result-track:ec1352bcaed76b288f4fb6dab09860106e9634ad89dac8ed08bd88d875b71805` |
| 38 | `theorem` | [IsSubordinate.diam_le](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate-diam-le.md) | 254 | `result-track:909959bc099fb0549a5fe209205538a715212575a952e4ac847d5e809d11c3bf` |
| 39 | `def` | [single](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/single.md) | 263 | `declaration-track:802a3c2a44251f7bb9a81264c2f6c55a660c647064d1ac370dc61984eaaf51c5` |
| 40 | `theorem` | [mem_single](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/mem-single.md) | 267 | `result-track:6149f606b322e3e89d018424cc1c6af3349f175bee5d62189404d85bd98e7c94` |
| 41 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/instance.md) | 270 | `declaration-track:3d4aa5f5787eb29a05de7bb86206907a0a6d76fc362621da9830b1a957b8b0a1` |
| 42 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ispartition-single-iff.md) | 273 | `result-track:5164831f9581fac33f304f29b314435bb5f28e166befc0171ccc367e572d8eba` |
| 43 | `theorem` | [isPartition_single](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ispartition-single.md) | 277 | `result-track:72c3e599a97149c696390723c673c444983662d036b5e1918882ef821fbec9d1` |
| 44 | `theorem` | [forall_mem_single](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/forall-mem-single.md) | 280 | `result-track:e348e0fb5ce392c958f8bb2cd6a769771c2f66e49ff69a1b96e0753180bd3614` |
| 45 | `theorem` | [isHenstock_single_iff](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ishenstock-single-iff.md) | 284 | `result-track:7a5bbe1cd6e183844ccded22862407539d540fd640ad72abf6723b30c15b53a0` |
| 46 | `theorem` | [isHenstock_single](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ishenstock-single.md) | 288 | `result-track:0c771addf183445e8ce497b61c6557bb69b455017d006aa66a06b266e883999f` |
| 47 | `theorem` | [isSubordinate_single](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate-single.md) | 292 | `result-track:76e4baf15023bcd27e9b50d06786e73301bc9e5f8ac5633843ea6d26eda8e418` |
| 48 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion-single.md) | 297 | `result-track:45e89369fd5aa429721f6f5f47a262c397b3035ab5923479c07a13abbdd06220` |
| 49 | `def` | [disjUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/disjunion.md) | 302 | `declaration-track:54d0ab4343fb10a8014c994512bb2539ea416aa24041cd6cc8f65c6972f837ea` |
| 50 | `theorem` | [disjUnion_boxes](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/disjunion-boxes.md) | 313 | `result-track:2a5fcd6aae5dbdbbc7de33dcc2bc65c18cdcbce8056b2a22787f53f1c3b76bd4` |
| 51 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/mem-disjunion.md) | 317 | `result-track:fe4fe352700f0fc7fcc727aa8095b50f8edc3f4c6138bfb49a3abb6043e6b95d` |
| 52 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/iunion-disjunion.md) | 322 | `result-track:16e17d5bbca65287be544f13134b0352e3120c6efb84bd45778dfa6009743afe` |
| 53 | `theorem` | [disjUnion_tag_of_mem_left](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/disjunion-tag-of-mem-left.md) | 326 | `result-track:b9fc3744e7500dd9c9f4b3221f73d5abf3f91261a2e98ee54aa76993378c5f2f` |
| 54 | `theorem` | [disjUnion_tag_of_mem_right](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/disjunion-tag-of-mem-right.md) | 330 | `result-track:bd5973cded24b596d7b2631b927eb597f4539cb0723143d39f23c1e139607b7b` |
| 55 | `theorem` | [IsSubordinate.disjUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/issubordinate-disjunion.md) | 335 | `result-track:005d080c97bc236764e5d0275e3dd9b79051d39bbe4dfeb60281913ac405e8fa` |
| 56 | `theorem` | [IsHenstock.disjUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/ishenstock-disjunion.md) | 344 | `result-track:61324caddcc800dc05cee12f89220d96874d04958123cd9dad3b0ae297516071` |
| 57 | `def` | [embedBox](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/embedbox.md) | 354 | `declaration-track:ae492ce52d8cc261f92c55273548a646e5742cb1b8e96a61428778b794aed16c` |
| 58 | `def` | [distortion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion.md) | 370 | `declaration-track:ea04e1337d76cb69bf3333c34486fd5e1f28294a69b030ee573cddb421d6774a` |
| 59 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion-le-of-mem.md) | 373 | `result-track:ebfcbbde6517528ff174755d3f78df0f50222a9f2901be05c2ba0c300081ebed` |
| 60 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion-le-iff.md) | 376 | `result-track:139f8a3de4ce7ba2324b10d432a2236f85e839c663d4e63a0b563f5a04963a21` |
| 61 | `theorem` | [Tagged Namespaced Public](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion-biuniontagged.md) | 380 | `result-track:490afbe77bda20f8a038d13bce0d216bbe716e6ae52d8cb2b9e37e9c1a27fd4b` |
| 62 | `theorem` | [distortion_biUnionPrepartition](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion-biunionprepartition.md) | 386 | `result-track:ae362964229d3f880ef8eba772f4dab329d577af3ac8cdae2391ac0ff8ef388f` |
| 63 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion-disjunion.md) | 391 | `result-track:ce7f61772116ac077fbd0942bb358341fd78838f3d39f45b2051a5ef60a02bc1` |
| 64 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion-of-const.md) | 395 | `result-track:b7e6d4e920c873712ec592fbee94efc797e1c4d4aa07c67ee43e3d995518660b` |
| 65 | `theorem` | [distortion_single](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion-single.md) | 400 | `result-track:81b0d3244f5c50ed16937c7c0ebccd9dc3ba37f338587d41d23a376dde1e7c83` |
| 66 | `theorem` | [distortion_filter_le](../../../../FunctionalAnalysis/TaggedNamespacedPublic.lean/declarations/distortion-filter-le.md) | 404 | `result-track:41b8350875fa83f40ab25bfb1fddcb9d1f6eabc363273a0c90303f9ab95a1cfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4dc17850be20f2b87ab6eb833fbf830b32ab9178f9a0ebbee90bb823fdcac5cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Tagged/Variant031a539db5639632313d70f6828994dbdb540515e85a7db30eec69bdb0428d30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
