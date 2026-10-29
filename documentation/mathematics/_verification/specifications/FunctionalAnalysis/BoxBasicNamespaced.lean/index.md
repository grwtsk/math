# Verification target: Box Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d0401c8feeee1aec4f49e22c2ffde8a8520e9ac",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d0401c8feeee1aec4f49e22c2ffde8a8520e9ac`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.Monotone` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneConvergence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Box](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/box.md) | 81 | `declaration-track:593ff5c2c39595c52c42dd4990808908d8821a1b80a6e9c261753e537a23e6f7` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/instance.md) | 92 | `declaration-track:06ad203edc5866d6b2012e024c6020cb41bebda6579207fdf304f89dbaf9a693` |
| 3 | `theorem` | [lower_le_upper](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/lower-le-upper.md) | 95 | `result-track:e47c9adfa803db890d492049e0c18e115364f13aeab421ecb031a0965c153818` |
| 4 | `theorem` | [lower_ne_upper](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/lower-ne-upper.md) | 99 | `result-track:186685c57ad1aeb98c32283b55ad76051da63e5fc8dc268101b05a0fc9815db4` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 103 | `declaration-track:2d71965613fba97aebf3722b19b7cf59cd3a49fdd8f39634f1eb0252081e89af` |
| 6 | `def` | [toSet](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/toset.md) | 108 | `declaration-track:014164ac76f376472ef995b38e7350f31831bd291a5dc1cb556b5e9992e9cb71` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 110 | `declaration-track:be0560b1af25e1e5af446b617edbe80092030d32a0b284675067f5ae81b70bc5` |
| 8 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mem-mk.md) | 114 | `result-track:b078d76327f1dc2ce874eb69cfbd8a8baeea594a8fd46b46b7978780147ecf06` |
| 9 | `theorem` | [mem_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mem-coe.md) | 118 | `result-track:b837cc15d8378d863abe5a1703ab7a63fb689f1e70d38027c29ffd18e7ccaace` |
| 10 | `theorem` | [mem_def](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mem-def.md) | 121 | `result-track:a1afb602aa1fa5fb5ab9e7948bc206628733396aa823bd2c73a3540f0f0e46f0` |
| 11 | `theorem` | [mem_univ_Ioc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mem-univ-ioc.md) | 124 | `result-track:54317650ed8e970257cdd9bbb8ce946cb75bfb3e8e35c7c43aa7b7c7ef374cff` |
| 12 | `theorem` | [coe_eq_pi](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-eq-pi.md) | 128 | `result-track:9ef0b7cfb05cb9cefa638a8bb2eb2f23859519fd183281dd4c7caf381fe042ac` |
| 13 | `theorem` | [upper_mem](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/upper-mem.md) | 133 | `result-track:dd74ed5c4cf7c7b51932fd848d328d243a746252e6faa9c188e06336fee257cf` |
| 14 | `theorem` | [exists_mem](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/exists-mem.md) | 137 | `result-track:7707a93dcccd0c54d56d835d521fabe8aee674ab3a2e4b5142e83286be992b70` |
| 15 | `theorem` | [nonempty_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/nonempty-coe.md) | 141 | `result-track:f330ca988ce14d4a6ebf8f617012fd477914871a23579771a9b66f1e4c03f31d` |
| 16 | `theorem` | [coe_ne_empty](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-ne-empty.md) | 146 | `result-track:bf760973d56e2622ace989ded219709b49d39394fafe68d8ec035201f46bedd6` |
| 17 | `theorem` | [empty_ne_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/empty-ne-coe.md) | 151 | `result-track:68b926f45c69250f282c7bddf2bd76bafab3e7e362951a4c4155e4d8d2de9048` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 155 | `declaration-track:e6e24d6c7c12d5c43bf77a0200a04c33dd17f7788346bdf9edb3c30f4626f6bd` |
| 19 | `theorem` | [le_def](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/le-def.md) | 158 | `result-track:e6ab1a5ea6e7eb5e115eb536f075938631601d4a91b49db15344dad16d63c8dc` |
| 20 | `theorem` | [le_TFAE](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/le-tfae.md) | 161 | `result-track:2935af7a851bd5631719234dd8c6501be6b0ab50077dfef838c9faa915328152` |
| 21 | `theorem` | [coe_subset_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-subset-coe.md) | 175 | `result-track:5228d77f66600e75abe7ee2df516763aade841c094d5255f957afe07aab73abc` |
| 22 | `theorem` | [le_iff_bounds](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/le-iff-bounds.md) | 178 | `result-track:71d22e4f4f3f4a0685a5cb0067409c90ff6b68a5cb47334f3c43d0d1edf05d78` |
| 23 | `theorem` | [injective_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/injective-coe.md) | 182 | `result-track:ff0821079514bd4bf396e0b2084d2548d1501c6f9ac7e6d4d2bace983a3e3f7c` |
| 24 | `theorem` | [coe_inj](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-inj.md) | 190 | `result-track:2efdd2c7de674797034379ca5c1060f8f0e7580dfe793437e3eae27d368777e1` |
| 25 | `theorem` | [ext](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/ext.md) | 195 | `result-track:d44821a3f0c40e32ab887f48a8c5e8eda9bae512424f207aa840ce2fa6bc99fb` |
| 26 | `theorem` | [ne_of_disjoint_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/ne-of-disjoint-coe.md) | 199 | `result-track:3a33d1621c449bb843437319dc27f79a53b0b667bb613961563c0e452ddca2b8` |
| 27 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 203 | `declaration-track:61e97e25fa7456f9d0b3717f17bec4b15f4e819de82797c608be84e1f8e210c2` |
| 28 | `def` | [Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/icc.md) | 207 | `declaration-track:16ce4e25e407f6befd3cd77175b587dad2038f50d5889f09d94e1579bd8f0352` |
| 29 | `theorem` | [Icc_def](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/icc-def.md) | 211 | `result-track:e3611ee87d508a6473545b305384866fd51530838bd3530be27f9252ac893a27` |
| 30 | `theorem` | [upper_mem_Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/upper-mem-icc.md) | 215 | `result-track:e8f4463ec5d1405a769ca41bbdf0129997339e3094103e8b61fa1b8171e48334` |
| 31 | `theorem` | [lower_mem_Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/lower-mem-icc.md) | 220 | `result-track:d19acaa6d2d49b914a294b60ac353601de030fa6ab88c3b51d00aa6c7d58722d` |
| 32 | `theorem` | [isCompact_Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/iscompact-icc.md) | 224 | `result-track:41421d62826dad493b428177530f6f6ac54498da09c31eec473a36280b2e1bfe` |
| 33 | `theorem` | [Icc_eq_pi](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/icc-eq-pi.md) | 228 | `result-track:3bcf09fa6cbf9adb49cbe23e418f467d8a5a15656165d0e3fdca33fa3a0c05cf` |
| 34 | `theorem` | [le_iff_Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/le-iff-icc.md) | 232 | `result-track:4244339114dc1bb9490cb1b8f9c67db46ab79fb20ef1feade12aed8e8b462969` |
| 35 | `theorem` | [antitone_lower](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/antitone-lower.md) | 236 | `result-track:64d1275d56a04d56d6c653fd7f386406a3cbe2663556272dce89238a98ace919` |
| 36 | `theorem` | [monotone_upper](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/monotone-upper.md) | 240 | `result-track:5b599a0928d248ba190e2ccdb98ae67169484e78b45388804ba4683838df53b1` |
| 37 | `theorem` | [coe_subset_Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-subset-icc.md) | 244 | `result-track:481104de311a125cf10f459ff77f3f4f4e718a31a4ba4398478eb741c29fc1c4` |
| 38 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 255 | `declaration-track:71a07ef65d8fdd95822a2eb291d410129252db40752f5c71fda3642928f44bd8` |
| 39 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 259 | `declaration-track:1fcf8fb540d205a307d9d1ded10cb2940e359c5e182433b033beebd92c41dacf` |
| 40 | `def` | [withBotToSet](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/withbottoset.md) | 276 | `declaration-track:65f720b2511daf9417ae0681eae6b1c4e07e7a85925d63053888174a5fe3b961` |
| 41 | `instance` | [withBotCoe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/withbotcoe.md) | 278 | `declaration-track:8e35c552a8b866cddbb103eab9509ca696dd1652fee06c7d8956ddc4eb27861e` |
| 42 | `theorem` | [coe_bot](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-bot.md) | 283 | `result-track:cfde1d0bf802f48c6041090337782422661e5b0cb05f9fc73db707f25d7f7302` |
| 43 | `theorem` | [coe_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-coe.md) | 287 | `result-track:209f6e7c99e454466657fa47002734ad7ee771a07fd4d2f37a5e1165ad9ddc4f` |
| 44 | `theorem` | [isSome_iff](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/issome-iff.md) | 290 | `result-track:0c6335e273f54daa43d74f2019cf9bf380401fca1e200fbc9f8c932617b5716a` |
| 45 | `theorem` | [biUnion_coe_eq_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/biunion-coe-eq-coe.md) | 299 | `result-track:1703e95bc25090e6e80cfa0ea344201b1be78985b3052c593a3cb759653b1cdc` |
| 46 | `theorem` | [withBotCoe_subset_iff](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/withbotcoe-subset-iff.md) | 305 | `result-track:72137a0a1f83a04e966db12ccecb4e5fc9dc968137e9dbd6d254d6f25e6eede9` |
| 47 | `theorem` | [withBotCoe_inj](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/withbotcoe-inj.md) | 312 | `result-track:2c4908fb6b67bc788c4d4462ffb7e19aaa3bf9914eba696ea3def2b995a9cc6b` |
| 48 | `def` | [mk'](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mk.md) | 319 | `declaration-track:63c36b45e998c0f512747764c30fadfbef2d3883d7500272ede703869a48013d` |
| 49 | `theorem` | [mk'_eq_bot](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mk-eq-bot.md) | 324 | `result-track:b07f2cd99bfaf288d0b16ed03221b766c2b07c13efc36c0c3f42690155d87415` |
| 50 | `theorem` | [mk'_eq_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mk-eq-coe.md) | 330 | `result-track:642faed2aeaa11e529035dc4adb216c91c55580ba787b821275a308a1a484274` |
| 51 | `theorem` | [coe_mk'](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-mk.md) | 339 | `result-track:c84fb78a04ee4a3a93dfc779baaac7d556f45ce804528168a9fa41fb2bba51b4` |
| 52 | `instance` | [WithBot.inf](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/withbot-inf.md) | 347 | `declaration-track:b307950114cc54c6c8feda632d617ebf9d62ba0ffcc707ab34cc61fa773037b2` |
| 53 | `theorem` | [coe_inf](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/coe-inf.md) | 353 | `result-track:390ccf4ff53676666e97995c8eb1a9dd3c82571aa9c6eda2cfd0a166d5d46c8a` |
| 54 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 365 | `declaration-track:e5c283ff07dfe87348515cbb629beef35a85920a6eba4cc13f0a853186d99217` |
| 55 | `theorem` | [disjoint_withBotCoe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/disjoint-withbotcoe.md) | 379 | `result-track:b21ab6f84d6a5e30b340c854e3cbf09eb02a8f30047ab815e2b72e9a9582bbc2` |
| 56 | `theorem` | [disjoint_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/disjoint-coe.md) | 385 | `result-track:d26fb7cbee9de8d6aa4299e0c22b85816eba45d84937af2db33a0644c7d5c8ed` |
| 57 | `theorem` | [not_disjoint_coe_iff_nonempty_inter](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/not-disjoint-coe-iff-nonempty-inter.md) | 389 | `result-track:a11ff910a6bf67b5b816819166b39730ba05d74a7b3bab346e66551dc9afb565` |
| 58 | `def` | [face](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/face.md) | 402 | `declaration-track:9c4fa93537e9fcf8eada64c180484ba203b23df441342c73785093db379837a0` |
| 59 | `theorem` | [face_mk](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/face-mk.md) | 407 | `result-track:abc332e60c183a7cc71b5f5da5b9ea787b69ce9904f9d620b368054e15ca6e22` |
| 60 | `theorem` | [face_mono](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/face-mono.md) | 412 | `result-track:867a5899a2422a145f9ca027daef36b694675982548bac7e678c0a897816ff6d` |
| 61 | `theorem` | [monotone_face](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/monotone-face.md) | 417 | `result-track:8402d02b13708fc822fab64b74a71c60b8b03add06723b120f07e74b9df00155` |
| 62 | `theorem` | [mapsTo_insertNth_face_Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mapsto-insertnth-face-icc.md) | 421 | `result-track:7e3f931b1be82b795d8069848914a839ec494e7240f48aa2cda6c1d78030e8d9` |
| 63 | `theorem` | [mapsTo_insertNth_face](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/mapsto-insertnth-face.md) | 427 | `result-track:122f9d7d10d144f18d852537bf95e76b783174b72515fa4449f2f991e410774b` |
| 64 | `theorem` | [continuousOn_face_Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/continuouson-face-icc.md) | 436 | `result-track:f097c096cfd0bd4564cda6f11d2a10bb3c0b07395e6724aa0c0b9a6c2d85a78f` |
| 65 | `def` | [Ioo](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/ioo.md) | 449 | `declaration-track:8d5524b19c9158e0de159348feed8f42a03b9873e2dcce70b75ed3f107c87356` |
| 66 | `theorem` | [Ioo_subset_coe](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/ioo-subset-coe.md) | 455 | `result-track:d2093ac4bdeaec757bbabcb553d39fde73ce909ea0e91659d502ddaaf68552da` |
| 67 | `theorem` | [Ioo_subset_Icc](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/ioo-subset-icc.md) | 459 | `result-track:7649fb6e9ff39708418cd6336e7409d133334441aa9df4498b5f39c88f048d2a` |
| 68 | `theorem` | [iUnion_Ioo_of_tendsto](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/iunion-ioo-of-tendsto.md) | 463 | `result-track:49b5004ee227a0199baa07ea281d0380f8984dfd4b30dd6c616e113a8fe37654` |
| 69 | `theorem` | [exists_seq_mono_tendsto](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/exists-seq-mono-tendsto.md) | 480 | `result-track:bdefe69f506e6b72b71be891bfc163b8b0fe46fe206b5d4355f2d7cacd9d71ad` |
| 70 | `def` | [distortion](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/distortion.md) | 500 | `declaration-track:3860e3297a060584e79629ae9401bec6fd336e9e28e8d8241511b624ae1e5e4b` |
| 71 | `theorem` | [distortion_eq_of_sub_eq_div](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/distortion-eq-of-sub-eq-div.md) | 504 | `result-track:f9a9313e1f0e0f792a774d47ea529d330124617e2d06cd00862967cec2bf57be` |
| 72 | `theorem` | [nndist_le_distortion_mul](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/nndist-le-distortion-mul.md) | 518 | `result-track:09c045398b8fbe0475db3d8bf9d0fe3fb51b36c32f90324d40d12be5f3327609` |
| 73 | `theorem` | [dist_le_distortion_mul](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/dist-le-distortion-mul.md) | 529 | `result-track:e3dc5233565cfd69239d12382edfd41ebe60829c6f0d1114528f3b0e9a31b535` |
| 74 | `theorem` | [diam_Icc_le_of_distortion_le](../../../../FunctionalAnalysis/BoxBasicNamespaced.lean/declarations/diam-icc-le-of-distortion-le.md) | 536 | `result-track:928f1f35786b7fbbdb87ce31aa6f769c9f2e956b51159ba5592eacc6de5277cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5548d3819ec792f090e7998c168028d3816d3a9d9185ea446c6d357e4d0dec22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
