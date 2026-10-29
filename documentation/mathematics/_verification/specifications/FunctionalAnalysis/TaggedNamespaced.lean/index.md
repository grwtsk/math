# Verification target: Tagged Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1f2768a4c6159d874b0c3c898fc924239ed5bc8",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TaggedNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TaggedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1f2768a4c6159d874b0c3c898fc924239ed5bc8`.

Source path: `GRWTSK/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TaggedPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/taggedprepartition.md) | 45 | `declaration-track:86f6f3fb41353fe253ad2e0f590fb07dc180d8219d1721038b70c1875b8e82fa` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:ec3fc856f0d39e35147d4400153a5f612bc397446fa7077ec9e7779ee8888084` |
| 3 | `theorem` | [mem_toPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/mem-toprepartition.md) | 60 | `result-track:b0d8573913a1a1e5df9f6ea66cc463b24c69a02bbfe38cdcd50ffacb6b04edef` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/mem-mk.md) | 63 | `result-track:848d5c45c2067f70e96af784d0b1508f9d7ae26fd6c9681803302aa0f16f6ddf` |
| 5 | `def` | [iUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion.md) | 66 | `declaration-track:975dbab8389a1796225e318520383e0eb497d67491fb4ce47a90e5118f744e90` |
| 6 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion-def.md) | 69 | `result-track:8c2b31bc212de4606cede6739e6f9d429b2d112c6e11955f33ec27061c053e1f` |
| 7 | `theorem` | [iUnion_mk](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion-mk.md) | 72 | `result-track:1b5712c5e6c23dd934af7d9299605c09d74e5970e9daed3b94bbc87aca77b272` |
| 8 | `theorem` | [iUnion_toPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion-toprepartition.md) | 75 | `result-track:ea16d3aefc6949b20aa9f4564a3759b1146466927aea296087f3fb47075af1e0` |
| 9 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/mem-iunion.md) | 79 | `result-track:0b45f8b61e2a47922f4da27b8087cdd9c08434523eab080e7e2403bb9ab70809` |
| 10 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/subset-iunion.md) | 83 | `result-track:4d83db4d10e41c22f989eeb091e6d3a95855942bb01fb1ca70fae66764fba44e` |
| 11 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion-subset.md) | 86 | `result-track:7d5476d447cc17357decf3d8fed75a27e8003b9f8fbe06227ed7c7e8ea33a626` |
| 12 | `def` | [IsPartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ispartition.md) | 90 | `declaration-track:01100cd6f4299d5981e45e1b1fdce3cc6b5979e5a204af8f92a668cbdf6b400a` |
| 13 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ispartition-iff-iunion-eq.md) | 93 | `result-track:2e5205ea57568478a938090ad19d9ffb9c8c2db320212ea62f0a6b8bf8acd4d8` |
| 14 | `def` | [filter](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/filter.md) | 98 | `declaration-track:99fdd8834d30ab00cd9caf1ba11c679f5b800800a55d5be175d48f41407c96ea` |
| 15 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/mem-filter.md) | 102 | `result-track:76849cb075b82465daf69ebab01c3b4efa1c4bc8ecc76b5cd33efd9b279c101a` |
| 16 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion-filter-not.md) | 106 | `result-track:977eee9a6015fbae9bbf7aa69fc4f2849b1b055d146b446cb0616056d65ed9bd` |
| 17 | `def` | [biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/biuniontagged.md) | 119 | `declaration-track:2287db178a5044122d95f9b64cd3d640a4704d1731d087b075f16cb27a7bdd33` |
| 18 | `theorem` | [mem_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/mem-biuniontagged.md) | 126 | `result-track:6f67a7a2343a5c17b329f7d58f2755a9533f342ba1f90af908eab8e5623128a4` |
| 19 | `theorem` | [tag_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/tag-biuniontagged.md) | 130 | `result-track:a27c1ca4be393cfa8570dad22f429c8502fbb182df14098f7b3d7c49505351ba` |
| 20 | `theorem` | [iUnion_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion-biuniontagged.md) | 136 | `result-track:b97e4de8bd099c21837ee035d5b413db129df2f53930541d4db3540a2da5e77b` |
| 21 | `theorem` | [forall_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/forall-biuniontagged.md) | 140 | `result-track:0b8a8e9054d3d824ff754fd96e8877ac5f53e2ff38a90c5c7182df3f6eba766d` |
| 22 | `theorem` | [IsPartition.biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ispartition-biuniontagged.md) | 151 | `result-track:74cf360696cbedcd551ca3b8f4bcbf8eb60ba3168884980168aa8ed859f54330` |
| 23 | `def` | [biUnionPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/biunionprepartition.md) | 168 | `declaration-track:c371103313572ba4e575697c1329781d38f2ffd1c28a168a5bc794fbd5208f90` |
| 24 | `theorem` | [IsPartition.biUnionPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ispartition-biunionprepartition.md) | 174 | `result-track:f027b3237d055f7f4ce1405ea4b01c50678460ccb4a7fd584a8ebaac75ecb893` |
| 25 | `def` | [infPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/infprepartition.md) | 183 | `declaration-track:409f3045fa57a247e76b1de9ccc7d9a979ca897bfb3e9430d1b00868f86a2f68` |
| 26 | `theorem` | [infPrepartition_toPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/infprepartition-toprepartition.md) | 187 | `result-track:2220d3100b8fc0cad756d0126a8bab8d8da33a7a66a2b7eca48072cc5a0e91ea` |
| 27 | `theorem` | [mem_infPrepartition_comm](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/mem-infprepartition-comm.md) | 190 | `result-track:ffb8ea30646c3fd062026ddaaca8ec875c48499bba0d9fa89f038ed738b4722f` |
| 28 | `theorem` | [IsPartition.infPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ispartition-infprepartition.md) | 194 | `result-track:9d7db8126bb1c8fd9cee8659dccc7dfa16fc0a419368bc075b3ea65a24cdf440` |
| 29 | `def` | [IsHenstock](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ishenstock.md) | 202 | `declaration-track:daad8afdcdb8f409f9954d6b05eed09a807baa59b4adcd16d6351965ee9b578b` |
| 30 | `theorem` | [isHenstock_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ishenstock-biuniontagged.md) | 206 | `result-track:dae9cdd6a417a120e5e53e8f3fe90c828bb545d287891e67bad7156c690870df` |
| 31 | `theorem` | [IsHenstock.card_filter_tag_eq_le](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ishenstock-card-filter-tag-eq-le.md) | 211 | `result-track:667e7ecddfd2f3e10e34302cd63e90d657f2069509b019fbd9d92a1b2ad7021b` |
| 32 | `def` | [IsSubordinate](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate.md) | 223 | `declaration-track:43bf09d7403c07159cb4e8e51c80058bc2e1f43c6275f9f011caf8b350419810` |
| 33 | `theorem` | [isSubordinate_biUnionTagged](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate-biuniontagged.md) | 229 | `result-track:8c51fb511fbd8057f9115acf73c835ea2cb41d60a0266a5f114555f40ac5487a` |
| 34 | `theorem` | [IsSubordinate.biUnionPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate-biunionprepartition.md) | 234 | `result-track:7072362a57c65555093d79f07365f279d97486d7c4caf6930b044c1f8dedbcc6` |
| 35 | `theorem` | [IsSubordinate.infPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate-infprepartition.md) | 239 | `result-track:5b294b2fa87cd2a9d3d08e2ec8e7ea1b997a6ac486a02f015bbc65fde2a56ff4` |
| 36 | `theorem` | [IsSubordinate.mono'](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate-mono-source-edition-2.md) | 243 | `result-track:e30284ee3fa63fd3dd655ef87e1cd55a90592e1b6662d5930c6070af0b0b7faf` |
| 37 | `theorem` | [IsSubordinate.mono](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate-mono.md) | 247 | `result-track:232002b4134f616381a03a0483f0cbc702dc636513f151f4ad436997d0134d18` |
| 38 | `theorem` | [IsSubordinate.diam_le](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate-diam-le.md) | 251 | `result-track:3fb564c2199d935217657b42200e1916cb99767cea52e480ba0ebbbc03fd3350` |
| 39 | `def` | [single](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/single.md) | 260 | `declaration-track:4e71e0bb94c39c580b19d0efd1a6d8f1679985752704458320d3bebd98e08d30` |
| 40 | `theorem` | [mem_single](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/mem-single.md) | 264 | `result-track:c5b522887bb2c2611c98bc4433a588486f658030c6e9a42fecde644ddae537b1` |
| 41 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/instance.md) | 267 | `declaration-track:0ea91f9f10c995b69c8818a6e9926c2e9d107b0a39479c623f969fc606c58ec5` |
| 42 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ispartition-single-iff.md) | 270 | `result-track:06668178b56ec6b43adcc7b2c556f7370a69d3ed662175dcd2d299afdc9d1449` |
| 43 | `theorem` | [isPartition_single](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ispartition-single.md) | 274 | `result-track:f0d86693e61366f6c4f81f3302c52ac52d8d6e58e42617e9890e4025b43dcc83` |
| 44 | `theorem` | [forall_mem_single](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/forall-mem-single.md) | 277 | `result-track:7316f0ffa878b629ee62a0292f922541feeb571e5e9cec2ebdc0482f77f95163` |
| 45 | `theorem` | [isHenstock_single_iff](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ishenstock-single-iff.md) | 281 | `result-track:6811c35a5bd77ce7f5f79ef19508111456718f4b0d4dd649ba609f1fe4214684` |
| 46 | `theorem` | [isHenstock_single](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ishenstock-single.md) | 285 | `result-track:6f2e281ac952fd3fb0671217bcaf0cd9ad9cf3779c4b90feea95b7689c5a4bd1` |
| 47 | `theorem` | [isSubordinate_single](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate-single.md) | 289 | `result-track:e628d4b1f2e851e8547f777b43eb5de34ac776fdd56cce63d95195d92c3b3882` |
| 48 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion-single.md) | 294 | `result-track:b43dc17975a29b37e89d2e5dc31e13812a41fb6e8d06d8c5728ef0055dc2f325` |
| 49 | `def` | [disjUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/disjunion.md) | 299 | `declaration-track:4bf16b98a8e78b958b9e2dd0710ff7815b38a863d51ed12b27f22b1ec675e134` |
| 50 | `theorem` | [disjUnion_boxes](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/disjunion-boxes.md) | 310 | `result-track:7d4a27df6259a3e0cd46d7c8d79c9f4514767b2e884e7c909c8de204af8ea9c4` |
| 51 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/mem-disjunion.md) | 314 | `result-track:704288f20d71230ae26323c5266e6bf165ffb20544f3c0e723710a031223aaec` |
| 52 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/iunion-disjunion.md) | 319 | `result-track:f37fc3930442b74d45e962d262cd86f08034d4d9b46c8c6d469a5623e0090fcd` |
| 53 | `theorem` | [disjUnion_tag_of_mem_left](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/disjunion-tag-of-mem-left.md) | 323 | `result-track:e08390fd4edee05df98586528e8ac1686fb9a456c789f2787d5601dc22139e16` |
| 54 | `theorem` | [disjUnion_tag_of_mem_right](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/disjunion-tag-of-mem-right.md) | 327 | `result-track:839f4b9975b0e946b1bced8a30f9ff150e1b03f2f257e42b9b66196a55af614c` |
| 55 | `theorem` | [IsSubordinate.disjUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/issubordinate-disjunion.md) | 331 | `result-track:23ba4aafd45a0bd3c7b223eee5b94e20a622e4b5cfb33c19965486b2aaf033ff` |
| 56 | `theorem` | [IsHenstock.disjUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/ishenstock-disjunion.md) | 340 | `result-track:c30a04af37c36b70a3b0a7f64a59ec1ac23f869b70fd696b3a57590570d663db` |
| 57 | `def` | [embedBox](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/embedbox.md) | 350 | `declaration-track:40b486ec5b9f4e9d2129ff132bc0c31bc4f957c72e58fe9cdada48231280b7e0` |
| 58 | `def` | [distortion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion.md) | 366 | `declaration-track:5d7929cc71a2b080db0905f6889403f3ad3cbde95caa4a4864329fa622d7fc5b` |
| 59 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion-le-of-mem.md) | 369 | `result-track:23b47ae07bee01cdb475c593e2ffeae857ae6eb4372491a6f418aafa9d4b3560` |
| 60 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion-le-iff.md) | 372 | `result-track:f31627c73bd001646c3d4bc729172e0f93d264fc7f4c2ae469982d7c1c79d7b4` |
| 61 | `theorem` | [Tagged Namespaced](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion-biuniontagged.md) | 376 | `result-track:4e6386244facd48eb32b4b6cce04355b99cb76ba1c26a78ed4f17578b2335b0d` |
| 62 | `theorem` | [distortion_biUnionPrepartition](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion-biunionprepartition.md) | 382 | `result-track:9e86fd289ebf848ebde4bdd013ff8324b4ce397b986687ceb7280a944e4be559` |
| 63 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion-disjunion.md) | 387 | `result-track:1832547815606753a130ef970ee2bcbba25be7b377de30243e70f89d0ce4d86f` |
| 64 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion-of-const.md) | 391 | `result-track:f13f9fbd6a1034b60fb50d1e60795e80d0f1cdaf3145e156110dab390c153180` |
| 65 | `theorem` | [distortion_single](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion-single.md) | 396 | `result-track:493c2c73acfcf300ae9305f5ccdb704b146972757f1715371ce0984981962752` |
| 66 | `theorem` | [distortion_filter_le](../../../../FunctionalAnalysis/TaggedNamespaced.lean/declarations/distortion-filter-le.md) | 400 | `result-track:c0e50fc3a7d78fe64fc4d62838fd699f27705fc2cec8dd4dde5e7e11882d9893` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9cb219c02b2faa9425ff24e35cefe9d12167e61cdb52c30d69e001ee6cbde2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Tagged/Variant5bd9635004ed1217a7ecba1dc467872587adeef80dd0bb573b121b969f842c3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
